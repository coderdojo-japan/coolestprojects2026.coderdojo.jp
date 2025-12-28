---
layout: plain
---

<style type="text/css">
  @import"https://fonts.googleapis.com/css2?family=Space+Mono&display=swap";
  @import"https://fonts.googleapis.com/css2?family=League+Gothic&display=swap";

  html {
    scroll-behavior: smooth
  }

  body {
    font-family: "Roboto", "Noto Sans JP", sans-serif;
    margin: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }
</style>

<header class="bg-white w-full shadow-sm">
  <div class="mx-auto px-6">
    <div class="flex h-30 items-center justify-between">
      <a class="block flex items-center gap-3" href="/">
        <img src="/img/cpj.svg" loading="lazy" class="h-20" alt="CoderDojo Logo" title="CoderDojo Logo" />
        <h1 class='text-2xl md:text-4xl font-bold uppercase tracking-wider' style="font-family: 'League Gothic', sans-serif;">
          Coolest Projects Japan 2026
        </h1>
      </a>

      <nav aria-label="Global" class="hidden md:block">
        <ul class="flex items-center gap-6 text-xl">
          <li>
            <a class="text-gray-500 transition hover:text-gray-500/75" href="/about"> 開催概要 </a>
          </li>

          <li>
            <a class="text-gray-500 transition hover:text-gray-500/75" href="/events"> イベント </a>
          </li>

          <li>
            <a class="text-gray-500 transition hover:text-gray-500/75" href="/sponsors"> スポンサー </a>
          </li>

          <li>
            <a class="text-gray-500 transition hover:text-gray-500/75" href="/contact"> お問い合わせ </a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</header>

<main class="flex-grow">
  <!-- ヒーローセクション -->
  <div class="py-24 text-center" style="background-color: #E5A800;">
    <h1 class="text-5xl md:text-7xl font-bold text-white mb-4">開催概要</h1>
    <p class="text-2xl md:text-4xl font-bold text-white uppercase tracking-wider" style="font-family: 'League Gothic', sans-serif;">ABOUT</p>
  </div>

  <!-- コンテンツエリア -->
  <div class="bg-white py-16 px-4">
    <div class="max-w-4xl mx-auto">

      <!-- 開催概要 -->
      <div class="mb-16">

        <!-- YouTube動画 -->
        <div class="mb-16 max-w-4xl mx-auto">
          <div class='relative w-full' style='padding-top: 56.25%;'>
            <iframe class='absolute top-0 left-0 w-full h-full rounded-2xl' title="3分でわかるCoolest Projects Japan"
              src="https://www.youtube.com/embed/l8udUqCLXY8?list=PL94GDfaSQTmIifXDGOaEoEgviPSv36OEo" frameborder="0"
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

        <!-- Google Map -->
        <div class="mb-12">
          <div class="text-center mb-6">
            <h3 class='text-4xl sm:text-5xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block' style="font-family: 'League Gothic', sans-serif; color: #221C35;">ACCESS</h3>
            <p class="text-xl mt-2" style="color: #444444;">アクセス</p>
          </div>
          <div class="rounded-2xl overflow-hidden shadow-lg">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83881.69282584515!2d136.76410603446325!3d35.15418320107424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x600377509b30ad27%3A0x7135c8b1be3ed740!2z44Gq44GU44Gu44Kt44Oj44Oz44OR44K5!5e0!3m2!1sja!2sjp!4v1766923169286!5m2!1sja!2sjp" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>

      </div>

    </div>
  </div>
</main>

<!-- フッター -->
<footer class="bg-gray-50 border-t border-gray-200 py-12">
  <div class="max-w-5xl mx-auto px-6">

    <!-- ロゴ -->
    <div class="flex justify-center mb-8">
      <img src="/img/cpj.svg" loading="lazy" class="h-24" alt="Coolest Projects Japan Logo" title="Coolest Projects Japan" />
    </div>

    <!-- ソーシャルメディアアイコン -->
    <div class="flex justify-center gap-6 mb-8">
      <!-- X (Twitter) -->
      <a href="https://x.com/cprojectsjapan" target="_blank" rel="noopener noreferrer" class="text-gray-700">
        <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 24 24">
          <path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/>
        </svg>
      </a>

      <!-- Facebook -->
      <a href="https://www.facebook.com/profile.php?id=61584750750420" target="_blank" rel="noopener noreferrer" class="text-gray-700">
        <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 24 24">
          <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
        </svg>
      </a>

      <!-- Instagram -->
      <a href="https://www.instagram.com/coolestprojectsjp/" target="_blank" rel="noopener noreferrer" class="text-gray-700">
        <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 24 24">
          <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
        </svg>
      </a>
    </div>

    <!-- ナビゲーションリンク -->
    <div class="flex flex-wrap justify-center gap-6 mb-8 text-gray-700">
      <a href="/" class="hover:text-gray-900 transition-colors font-medium">ホーム</a>
      <a href="https://coderdojo.jp/code-of-conduct" target="_blank" class="hover:text-gray-900 transition-colors font-medium">行動規範</a>
      <a href="https://coderdojo.jp/privacy" target="_blank" class="hover:text-gray-900 transition-colors font-medium">プライバシーポリシー</a>
      <a href="mailto:info@coderdojo.jp" class="hover:text-gray-900 transition-colors font-medium">お問い合わせ</a>
    </div>

    <!-- コピーライト -->
    <div class="text-center text-gray-600 text-sm">
      <p>© Coolest Projects Japan 2026 実行委員会</p>
    </div>

  </div>
</footer>
