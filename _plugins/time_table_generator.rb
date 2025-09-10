# frozen_string_literal: true

require 'active_support/core_ext/integer/time'
require 'active_support/core_ext/numeric/time'

module Jekyll
  module TimeTableGenerator
    # タイムテーブル表を事前に計算してグリッド形式に変換
    # これにより、Liquid テンプレートは単純な表示のみを担当
    class Generator < Jekyll::Generator
      safe true
      priority :high

      # デフォルト設定値
      DEFAULT_SLOT_MINUTES   = 15
      DEFAULT_DAY_START_HOUR = 10  # 10:00
      DEFAULT_DAY_END_HOUR   = 16  # 16:00

      def generate(site)
        return unless site.data['time_table']

        tt = site.data['time_table']

        # 設定値（Active Support の Duration を使用）
        slot_duration  = tt.fetch('slot_minutes',   DEFAULT_SLOT_MINUTES).minutes
        day_start      = tt.fetch('day_start_hour', DEFAULT_DAY_START_HOUR).hours
        day_end        = tt.fetch('day_end_hour',   DEFAULT_DAY_END_HOUR).hours
        total_duration = day_end - day_start
        total_slots = (total_duration / slot_duration).to_i

        rooms  = tt.fetch('rooms',  [])
        events = tt.fetch('events', [])

        # イベントグリッドを作成（行 = 時間スロット、列 = 部屋）
        event_grid = Array.new(total_slots) { Array.new(rooms.size) }

        # イベントグリッドに各イベントを配置
        events.each do |event|
          place_event_on_grid(event, event_grid, rooms, day_start, day_end, slot_duration, total_slots)
        end

        # 各スロットの時刻を事前計算
        time_labels = (0...total_slots).map do |slot_index|
          slot_time = day_start + (slot_index * slot_duration)
          format_time_label(slot_time)
        end

        # 計算済みデータをsite.dataに追加（分単位に戻して保存）
        site.data['time_table_grid'] = {
          'time_slots'    => event_grid,  # より明確な名前：時間スロットの配列
          'rooms'         => rooms,
          'room_styles'   => tt.fetch('room_styles', {}),
          'time_labels'   => time_labels,
          'slot_minutes'  => slot_duration.in_minutes.to_i,
          'day_start_min' => day_start.in_minutes.to_i,
          'day_end_min'   => day_end.in_minutes.to_i,
          'total_slots'   => total_slots
        }
      end

      private

      def place_event_on_grid(event, event_grid, rooms, day_start, day_end, slot_duration, total_slots)
        room_index = rooms.index(event['room'])
        return unless room_index

        # 開始・終了時間を Duration に変換
        start_time = parse_time_to_duration(event['start'])
        end_time   = parse_time_to_duration(event['end'])

        # 表示範囲内に収める（クリッピング）
        display_start = [start_time, day_start].max
        display_end   = [end_time,   day_end].min

        # スロットインデックスを計算
        start_slot, end_slot, span = calculate_slot_indices(display_start, display_end, day_start, slot_duration)

        # クリッピング済みなので start_slot は必ず有効範囲内
        # display_start は day_start 以上、day_end 以下に制限されている
        return if start_slot >= total_slots  # 念のためのチェック（通常はテストで検知）

        # イベント開始セルを配置
        event_grid[start_slot][room_index] = create_event_cell(event, span, start_slot, end_slot)

        # 継続スロットにマーカーを配置
        mark_continued_slots(event_grid, room_index, start_slot, end_slot, total_slots)
      end

      def calculate_slot_indices(display_start, display_end, day_start, slot_duration)
        start_slot = ((display_start - day_start) / slot_duration).to_i
        # 終了時刻が正確にスロット境界上の場合、そのスロットを含めない
        # 例: 10:30終了で15分スロットの場合、10:30-10:45のスロットは含めない
        end_slot = ((display_end - day_start) / slot_duration).ceil
        span = end_slot - start_slot
        [start_slot, end_slot, span]
      end

      def create_event_cell(event, span, start_slot, end_slot)
        {
          'event' => event,
          'span' => span,
          'start_slot' => start_slot,
          'end_slot' => end_slot
        }
      end

      def mark_continued_slots(event_grid, room_index, start_slot, end_slot, total_slots)
        # end_slot を有効範囲内に制限してから反復処理
        actual_end = [end_slot, total_slots].min
        (start_slot + 1...actual_end).each do |slot|
          event_grid[slot][room_index] = { 'continued' => true }
        end
      end

      def parse_time_to_duration(time_str)
        return 0.hours unless time_str
        time = Time.parse(time_str)
        time.hour.hours + time.min.minutes
      end

      def format_time_label(duration)
        total_minutes = duration.in_minutes.to_i
        hours = total_minutes / 60
        minutes = total_minutes % 60
        format('%d:%02d', hours, minutes)
      end
    end
  end
end
