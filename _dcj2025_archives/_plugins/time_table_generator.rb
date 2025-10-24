module Jekyll
  module TimeTableGenerator
    # タイムテーブル表を事前に計算してイベント表形式に変換
    # これにより、Liquid テンプレートは単純な表示のみを担当
    class Generator < Jekyll::Generator
      safe true
      priority :high

      # デフォルト設定値
      DEFAULT_SLOT_MINUTES   = 15
      DEFAULT_DAY_START_HOUR = 10  # 10:00
      DEFAULT_DAY_END_HOUR   = 16  # 16:00

      def generate(site)
        tt = site.data['time_table']
        return unless tt

        # 設定値を取得
        slot_minutes = tt.fetch('slot_minutes',   DEFAULT_SLOT_MINUTES)
        day_start    = tt.fetch('day_start_hour', DEFAULT_DAY_START_HOUR)
        day_end      = tt.fetch('day_end_hour',   DEFAULT_DAY_END_HOUR)
        rooms        = tt.fetch('rooms',          [])
        events       = tt.fetch('events',         [])
        room_styles  = tt.fetch('room_styles',    {})

        # イベント情報を表形式で生成
        time_table_events = create_event_table(events, rooms, room_styles, slot_minutes, day_start, day_end)

        # 生成したイベント表データを Liquid に提供
        site.data['time_table_events'] = time_table_events
      end

      private

      def create_event_table(events, rooms, room_styles, slot_minutes, day_start, day_end)
        total_slots = ((day_end - day_start) * 60 / slot_minutes).to_i

        # 時間ラベルを生成
        time_labels = (0...total_slots).map do |slot|
          minutes = day_start * 60 + slot * slot_minutes
          "#{minutes / 60}:%02d" % (minutes % 60)
        end

        # ルーム情報を生成（room.style でアクセス可能）
        rooms_data = rooms.map do |room_name|
          {
            'name'  => room_name,
            'style' => room_styles[room_name] || {}
          }
        end

        # イベント表を生成（2次元配列）
        table = Array.new(total_slots) { Array.new(rooms.size) }

        events.each do |event|
          place_event(event, table, rooms, slot_minutes, day_start, total_slots)
        end

        {
          'events'      => table,
          'rooms'       => rooms_data,
          'time_labels' => time_labels,
          'total_slots' => total_slots - 1,  # Liquidの (0..n) は inclusive なので -1
          'total_rooms' => rooms.size  - 1,  # Liquidの (0..n) は inclusive なので -1
        }
      end

      def place_event(event, table, rooms, slot_minutes, day_start, total_slots)
        room_index = rooms.index(event['room'])
        return unless room_index

        # 時間を分に変換して揃える
        event_start = time_to_minutes(event['start'])
        event_end   = time_to_minutes(event['end'])

        # スロット計算（分に揃える）
        slot_start = [(event_start - day_start * 60) / slot_minutes, 0].max.to_i
        slot_end   = [(event_end   - day_start * 60) / slot_minutes, total_slots].min.to_i
        duration   = slot_end - slot_start

        return if slot_start >= total_slots || duration <= 0

        # イベントの長さ情報 (duration) を追加
        table[slot_start][room_index] = event.merge('duration' => duration)

        # 継続スロットをマーク
        (slot_start + 1...slot_end).each do |slot|
          break if slot >= total_slots
          table[slot][room_index] = 'continued'
        end
      end

      def time_to_minutes(time_str)
        return 0 unless time_str
        hours, minutes = time_str.split(':').map(&:to_i)
        hours * 60 + minutes
      end
    end
  end
end
