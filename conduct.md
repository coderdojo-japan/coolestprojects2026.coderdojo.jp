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
    <h1 class="text-5xl md:text-7xl font-bold text-white mb-4">行動規範</h1>
    <p class="text-2xl md:text-4xl font-bold text-white uppercase tracking-wider" style="font-family: 'League Gothic', sans-serif;">Code of Conduct</p>
  </div>

  <!-- コンテンツエリア -->
  <div class="bg-white py-16 px-4">
    <div class="max-w-4xl mx-auto">

      <p class="text-xl mb-12" style="color: #444444;">
        この行動規範は、Coolest Projects Japanのすべての活動に関わる全ての人に適用されます。
      </p>

      <ul class="text-lg mb-12 list-disc pl-8" style="color: #444444; line-height: 2;">
        <li>私たちは、すべての若者が安全に、安心して創造性を発揮できる場を提供します。</li>
        <li>誰もが尊重され、差別やハラスメントのない公平な環境づくりに努めます。</li>
        <li>若者の挑戦や成長を温かく見守り、失敗や試行錯誤も価値ある経験として尊重します。</li>
        <li>個別の接触や不適切な言動は避け、すべてのやりとりは透明性と信頼をもって行います。</li>
      </ul>

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
      <a href="/conduct" class="hover:text-gray-900 transition-colors font-medium">行動規範</a>
      <a href="/privacy" class="hover:text-gray-900 transition-colors font-medium">プライバシーポリシー</a>
      <a href="/contact" class="hover:text-gray-900 transition-colors font-medium">お問い合わせ</a>
    </div>

    <!-- コピーライト -->
    <div class="text-center text-gray-600 text-sm">
      <p>© Coolest Projects Japan 2026 実行委員会</p>
    </div>

  </div>
</footer>
