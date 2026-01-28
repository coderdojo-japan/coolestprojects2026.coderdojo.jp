---
layout: default
hero_title: "開催概要"
hero_subtitle: "ABOUT"
---

<!-- コンテンツエリア -->
<div class="bg-white py-16 px-4">
  <div class="max-w-4xl mx-auto">
      <!-- 開催概要 -->
      <div class="mb-16">
        <div class="mb-16 max-w-4xl mx-auto">
          <div class='relative w-full rounded-2xl overflow-hidden shadow-lg' style='padding-top: 56.25%;'>
            <iframe class='absolute top-0 left-0 w-full h-full' title="3分でわかるCoolest Projects Japan"
              src="https://www.youtube-nocookie.com/embed/l8udUqCLXY8?list=PL94GDfaSQTmIifXDGOaEoEgviPSv36OEo" frameborder="0"
              allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            </iframe>
          </div>
        </div>
        <!-- 開催概要見出し -->
        <div class="text-center mb-12">
          <h2 class='text-4xl sm:text-5xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block' style="font-family: 'League Gothic', sans-serif; color: #221C35;">DETAIL</h2>
          <p class="text-xl mt-2" style="color: #444444;">詳細</p>
        </div>
        <!-- 開催情報テーブル -->
        <div class="overflow-x-auto mb-12">
          <table class="w-full border-collapse">
            <tbody>
              <tr class="border-b border-gray-200">
                <td class="py-6 px-4 font-bold text-lg" style="color: #221C35; width: 30%;">
                  <div class="flex items-center gap-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                    </svg>
                    開催日時
                  </div>
                </td>
                <td class="py-6 px-4 text-lg" style="color: #444444;">
                  2026年3月29日（日）
                </td>
              </tr>
              <tr class="border-b border-gray-200">
                <td class="py-6 px-4 font-bold text-lg" style="color: #221C35;">
                  <div class="flex items-center gap-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                      <path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                    </svg>
                    会場
                  </div>
                </td>
                <td class="py-6 px-4 text-lg" style="color: #444444;">
                  なごのキャンパス
                </td>
              </tr>
              <tr class="border-b border-gray-200">
                <td class="py-6 px-4 font-bold text-lg" style="color: #221C35;">
                  <div class="flex items-center gap-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                    対象
                  </div>
                </td>
                <td class="py-6 px-4 text-lg" style="color: #444444;">
                  18歳以下の子どもたち
                </td>
              </tr>
              <tr class="border-b border-gray-200">
                <td class="py-6 px-4 font-bold text-lg" style="color: #221C35;">
                  <div class="flex items-center gap-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    参加費
                  </div>
                </td>
                <td class="py-6 px-4 text-lg" style="color: #444444;">
                  無料
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- Map (Leaflet.js) -->
        <div class="mb-12">
          <div class="text-center mb-6">
            <h3 class='text-4xl sm:text-5xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block' style="font-family: 'League Gothic', sans-serif; color: #221C35;">ACCESS</h3>
            <p class="text-xl mt-2" style="color: #444444;">アクセス</p>
          </div>
          <div class="rounded-2xl overflow-hidden shadow-lg">
            <div id="map" style="height: 450px; width: 100%;"></div>
          </div>
          <div class="text-center mt-8">
            <a class="group relative inline-block" href="https://www.google.com/maps/place/%E3%81%AA%E3%81%94%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%91%E3%82%B9/@35.1760897,136.8862981,15z" target="_blank">
              <span class="absolute inset-0 translate-x-1.5 translate-y-1.5 bg-teal-500 transition-transform group-hover:translate-x-0 group-hover:translate-y-0"></span>
              <span class="relative inline-block border-2 border-current px-8 py-3 text-sm font-bold tracking-widest text-black uppercase">
                Google Mapで開く
              </span>
            </a>
          </div>
        </div>

        <!-- Leaflet.js CSS & JS -->
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
          integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
          crossorigin=""/>
        <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
          integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
          crossorigin=""></script>

        <script>
          // なごのキャンパスの座標
          const lat = 35.1760897;
          const lon = 136.8862981;

          // 地図を初期化
          const map = L.map('map').setView([lat, lon], 15);

          // OpenStreetMapのタイルレイヤーを追加
          L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
            maxZoom: 19
          }).addTo(map);

          // マーカーを追加
          const marker = L.marker([lat, lon]).addTo(map);

          // 左上に固定表示される情報パネルを追加
          const info = L.control({position: 'topleft'});

          info.onAdd = function (map) {
            this._div = L.DomUtil.create('div', 'info-panel');
            this._div.innerHTML = '<div style="background: white; padding: 12px 16px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.15); font-family: sans-serif;"><div style="font-weight: bold; font-size: 16px; margin-bottom: 4px;">なごのキャンパス</div><div style="color: #666; font-size: 14px;">〒451-0042<br>愛知県名古屋市西区那古野2丁目14-1</div></div>';
            return this._div;
          };

          info.addTo(map);
        </script>
      </div>
    </div>
  </div>
