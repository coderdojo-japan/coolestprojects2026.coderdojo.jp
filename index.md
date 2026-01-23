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
  }

  .cursor::after {
    content: "_";
    animation: blink 1s infinite;
  }

  @keyframes blink {

    0%,
    50% {
      opacity: 0
    }

    51%,
    100% {
      opacity: 1
    }
  }
</style>

<div class='min-h-screen flex flex-col justify-center  px-4 relative' style="background-image: url('/img/contests/img/IMG_7235.JPG'); background-size: cover; background-position: center;">
  <div class='absolute inset-0 bg-black opacity-40'></div>
  <div class='max-w-5xl mx-auto relative z-10'>
    <!-- ロゴ -->
    <div class='flex text-center justify-center mb-8'>
      <!-- <h1 class='text-8xl sm:text-9xl font-bold uppercase tracking-wider' style="font-family: 'League Gothic', sans-serif;">
        Coolest<br>Projects<br>Japan<br>2026
      </h1> -->
      <img src="/img/cpj.svg" loading="lazy" class='h-70 sm:h-100' alt="CoderDojo Logo"
        title="CoderDojo Logo" />
    </div>
    <div class="text-center font-bold text-xl text-white">
      <p>日本中の子供たちが集う、クリエイティブな祭典。君のアイデアで未来をハックしよう。</p>
    </div>
    <div class="flex gap-4 justify-center mt-10">
      <div class="flex border p-3 rounded-2xl border-2 items-center border-white">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
          class="size-6 text-white">
          <path stroke-linecap="round" stroke-linejoin="round"
            d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5" />
        </svg>
        <span class="ml-2 font-bold text-sm text-white">2026年3月29日 (日)</span>
      </div>
      <div class="flex border p-3 rounded-2xl border-2 items-center border-white">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
          class="size-6 text-white">
          <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
          <path stroke-linecap="round" stroke-linejoin="round"
            d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1 1 15 0Z" />
        </svg>
        <span class="ml-2 font-bold text-sm text-white">なごのキャンパス</span>
      </div>
    </div>
    <div class="text-center mb-8">
      <h3 class="text-3xl font-bold mb-8" style="color: #221C35;">応募する</h3>
      <div class="flex flex-col sm:flex-row gap-4 sm:gap-6 justify-center items-center sm:items-stretch max-w-sm sm:max-w-4xl mx-auto px-4">
        <a class="button-push sm:flex-1" href="/apply" style="background-color: #E5A800; margin: 0;">
          <span class="text-lg">作品応募</span><br>
          <span class="text-sm opacity-90">作品を展示する</span>
        </a>
        <a class="button-push sm:flex-1" href="/register" style="background-color: #00AFAA; margin: 0;">
          <span class="text-lg">来場応募</span><br>
          <span class="text-sm opacity-90">イベントに参加する</span>
        </a>
        <a class="button-push sm:flex-1" href="/staff" style="background-color: #E5A800; margin: 0;">
          <span class="text-lg">運営応募</span><br>
          <span class="text-sm opacity-90">スタッフとして参加する</span>
        </a>
      </div>
    </div>
  </div>
</div>

<div class='bg-white py-12 px-4'>
  <div class='max-w-7xl mx-auto'>
    <div class="mt-12">
      <!-- グリッドレイアウトで横並び -->
      <div class="grid md:grid-cols-2 gap-12 sm:gap-24 items-stretch">
        <!-- 左側：画像（スマホでは下に表示） -->
        <div class="order-2 md:order-1">
          <img src="/img/contests/img/IMG_7269.JPG" alt="Coolest Projects イベントの様子"
            class="w-full aspect-square rounded-2xl shadow-lg object-cover" loading="lazy" />
        </div>
        <!-- 右側：テキストコンテンツ（スマホでは上に表示） -->
        <div class="order-1 md:order-2">
          <div class="mb-8 sm:mb-14">
            <h1 class='text-5xl sm:text-6xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block' style="font-family: 'League Gothic', sans-serif; color: #221C35;">ABOUT</h1>
            <p class="text-xl mt-2" style="color: #444444;">イベント紹介</p>
          </div>
          <h2 class="text-2xl sm:text-5xl font-bold">君の「作りたい」を世界へ。</h2>
          <p class="mt-5 text-xl sm:text-2xl">Coolest Projectsは、18歳以下の子どもたちのための世界的な作品展示イベントです。プログラミングやテクノロジーを使って作った独自のアイデアや作品を、コミュニティ全体で称賛し合います。順位を競うコンテストではありません。あなたの情熱、創造性、そして技術的な挑戦を世界中の仲間と共有する場所です。</p>
        </div>
      </div>
    </div>
    <div class="mt-24">
      <div class="text-center mb-8">
        <h1 class='text-5xl sm:text-6xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block'
          style="font-family: 'League Gothic', sans-serif; color: #221C35;">CATEGORIES</h1>
        <p class="text-xl mt-2" style="color: #444444;">カテゴリー</p>
      </div>
      <!-- カテゴリーカード -->
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8">
        <!-- Visual Programming -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-orange-400 to-red-500 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Visual Programming</h4>
          <p class="text-gray-600 leading-relaxed">Scratch、Kodu、MakeCodeなどのブロック型言語を使った創造的なプロジェクト。micro:bitやArduinoと組み合わせたハードウェア制御も歓迎です。</p>
        </div>
        <!-- Web -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-blue-400 to-cyan-500 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Web</h4>
          <p class="text-gray-600 leading-relaxed">HTML、CSS、JavaScriptを使って作るウェブサイトやウェブアプリケーション。インタラクティブなデザインや便利なツールで、あなたのアイデアを表現しよう。</p>
        </div>
        <!-- Games -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-purple-400 to-pink-500 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
              <path stroke-linecap="round" stroke-linejoin="round" d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Games</h4>
          <p class="text-gray-600 leading-relaxed">Python、Unity、Unreal Engine、Godotなど、あらゆる言語やエンジンで作られたゲーム作品。2Dアクション、3D冒険、パズルゲームまで、君のゲームをみんなに遊んでもらおう！</p>
        </div>
        <!-- Mobile Apps -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-indigo-400 to-purple-600 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Mobile Apps</h4>
          <p class="text-gray-600 leading-relaxed">スマホやタブレットで動く便利なアプリ、楽しいエンタメアプリ、役立つ情報アプリなど。実機またはエミュレータでのデモでOKです。</p>
        </div>
        <!-- Hardware -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-green-400 to-emerald-600 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Hardware</h4>
          <p class="text-gray-600 leading-relaxed">Raspberry Pi、Arduino、micro:bitを使ったロボットや電子工作。センサーやモーターを組み合わせて、動く作品を作ろう。</p>
        </div>
        <!-- Creative -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-yellow-400 to-orange-500 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">Creative</h4>
          <p class="text-gray-600 leading-relaxed">音楽制作、デジタルアート、映像編集、3Dモデリングなど、クリエイティブな表現を形にしたプロジェクト。あなたの感性を作品にしよう。</p>
        </div>
        <!-- AI -->
        <div class="bg-white rounded-2xl p-8 shadow-lg">
          <div class="p-4 rounded-xl bg-gradient-to-br from-teal-400 to-blue-600 mb-6 shadow-lg inline-block">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
          </div>
          <h4 class="text-2xl font-bold text-gray-900 mb-3">AI</h4>
          <p class="text-gray-600 leading-relaxed">機械学習、画像認識、自然言語処理、データ分析など、AIを活用したプロジェクト。最新のAI技術で未来を創造しよう。</p>
        </div>
      </div>
    </div>
    <!-- NEWS セクション -->
    <div class="mt-24">
      <div class="text-center mb-16">
        <h1 class='text-5xl sm:text-6xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block'
          style="font-family: 'League Gothic', sans-serif; color: #221C35;">NEWS</h1>
        <p class="text-xl mt-2" style="color: #444444;">お知らせ</p>
      </div>
      <!-- ローディング表示 -->
      <div id="news-loading" class="text-center py-12">
      </div>
      <!-- お知らせ一覧 -->
      <div id="news-list" class="grid grid-cols-1 md:grid-cols-3 gap-6" style="display: none;"></div>
      <!-- もっと見るボタン -->
      <div class="text-center mt-8">
        <a class="button-push" href="/news"> もっと見る </a>
      </div>
    </div>
    <div class="mt-24">
      <div class="text-center mb-16">
        <h1 class='text-5xl sm:text-6xl font-bold uppercase tracking-wider border-b-10 border-teal-500 inline-block'
          style="font-family: 'League Gothic', sans-serif; color: #221C35;">SPONSORS</h1>
        <p class="text-xl mt-2" style="color: #444444;">スポンサー</p>
      </div>
      <div class="text-center mb-16">
        <p class="text-xl mb-12" style="color: #444444;">Coolest Projects Japanはスポンサーのご協力により開催されています。協賛くださいました、皆様ありがとうございます。</p>
        <!-- スポンサー一覧 -->
        <div class="mb-16">
          <!-- Diamond Sponsor
          <div class="mb-24">
            <div class="flex items-center mb-12">
              <div class="flex-1 border-t-2" style="border-color: #00AFAA;"></div>
              <h3 class="px-4 sm:px-6 text-xl sm:text-2xl font-bold text-center" style="color: #00AFAA;">ダイアモンドスポンサー（締切済）</h3>
              <div class="flex-1 border-t-2" style="border-color: #00AFAA;"></div>
            </div>
          </div>
          -->
          <!-- Platinum Sponsor --->
          <div class="mb-24">
            <section class="sponsors">
              <h3> プラチナスポンサー </h3>
            </section>
            <div class="flex justify-center mb-6 px-4">
              <a href="https://www.kurusugawa.jp/" target="_blank" rel="noopener noreferrer" class="inline-block">
                <img src="/img/contests/sponsor-logos/kurusugawa-computer-inc.svg" alt="有限会社来栖川電算_ロゴ" class="w-100 sm:w-120 h-auto max-h-32 object-contain">
              </a>
            </div>
          </div>
          <!-- Gold Sponsor -->
          <div class="mb-24">
            <section class="sponsors">
              <h3> ゴールドスポンサー </h3>
            </section>
            <div class="flex justify-center mb-6 px-4">
              <a href="https://smartone-robot.com/" target="_blank" rel="noopener noreferrer" class="inline-block">
                <img src="/img/contests/sponsor-logos/smartone.svg" alt="株式会社SmartOne" class="w-full max-w-md sm:max-w-lg max-h-48 object-contain">
              </a>
            </div>
          </div>
          <!-- Silver Sponsors -->
          <div class="mb-24 px-4">
            <section class="sponsors mb-12">
              <h3> シルバースポンサー </h3>
            </section>
            <div class="flex flex-wrap justify-center items-center gap-8 sm:gap-4">
              <a href="https://www.seeed.co.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/seeed.webp" alt="Seeed株式会社_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://it-a-net.co.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/it-adviser.webp" alt="株式会社ITアドバイザー_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a data-proofer-ignore target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/pike.webp" alt="株式会社パイク_ロゴ" class="w-28 sm:w-40 h-auto max-h-32 object-contain">
              </a>
              <a href="https://lifeskill.or.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/life-skill-support-association.webp" alt="一般社団法人ライフスキルサポート協会_ロゴ" class="w-52 sm:w-70 h-auto max-h-32 object-contain">
              </a>
            </div>
          </div>
        </div>
          <!-- Bronze Sponsor
          <div class="mb-24">
            <section class="sponsors">
              <h3> ブロンズスポンサー </h3>
            </section>
          </div>
          -->
          <!-- In-Kind Sponsors -->
          <div class="mb-24 px-4">
            <section class="sponsors mb-12">
              <h3> 機材・物品提供 </h3>
            </section>
            <div class="flex flex-wrap justify-center items-center gap-12 sm:gap-8">
              <a href="https://yasslab.jp/ja/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/yasslab.svg" alt="YassLab株式会社_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://www.grips.co.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/grips.webp" alt="株式会社GRIPS_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://kata-studio.hr-sano.net" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/lab-sbsb.svg" alt="lab-sbsb_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://dmcouncil.or.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/digital-monozukuri-council.webp" alt="NPO法人デジタルものづくり協議会_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://protopedia.net/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/ptoropedia_beside.webp" alt="ProtoPedia_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
              <a href="https://www.stellalink.co.jp/" target="_blank" rel="noopener" class="block transition-transform hover:scale-105">
                <img src="/img/contests/sponsor-logos/stellalink.svg" alt="stellalink_ロゴ" class="w-40 sm:w-56 h-auto max-h-32 object-contain">
              </a>
            </div>
          </div>
          <!-- Individual Sponsors
          <div class="mb-24">
            <section class="sponsors">
              <h3> 個人スポンサー </h3>
            </section>
          </div>
          -->
          <a href="/sponsors" class="button-push"> スポンサーページを見る </a>
      </div>
    </div>
    {% include faq.html %}
  </div>
</div>

<style>
  /* テキストを2行で切り取る */
  .line-clamp-2 {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
</style>

<script>
  // microCMS設定
  const SERVICE_ID = 'coolestprojectsjapan';
  const API_KEY = 'DzUDluMiFTTHxAT2AJEJzFTzX4GdHVpXG9Il';
  const ENDPOINT = 'news';

  // カテゴリーごとの色設定
  const categoryColors = {
    'お知らせ': { bg: '#FFE8B0', text: '#221C35' },
    '重要なお知らせ': { bg: '#E5A800', text: '#FFFFFF' },
    '募集情報': { bg: '#00AFAA', text: '#FFFFFF' }
  };

  // 日付フォーマット関数
  function formatDate(dateString) {
    const date = new Date(dateString);
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${year}.${month}.${day}`;
  }

  // お知らせカードHTML生成
  function createNewsCard(news) {
    const colors = categoryColors[news.category] || categoryColors['お知らせ'];
    const date = news.publishedAt || news.createdAt;

    // サムネイル画像部分
    const thumbnailHTML = news.thumbnail
      ? `<img src="${news.thumbnail.url}" alt="${news.title}" class="w-full h-full object-cover">`
      : `<div class="w-full h-full flex items-center justify-center">
           <span class="text-2xl font-bold text-gray-400">NO IMAGE</span>
         </div>`;

    // 本文からHTMLタグを除去してプレーンテキストに変換
    const tempDiv = document.createElement('div');
    tempDiv.innerHTML = news.content;
    const plainText = tempDiv.textContent || tempDiv.innerText || '';

    return `
      <a href="/news#${news.id}" class="block h-full">
        <article class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition-shadow duration-300 h-full flex flex-col">
          <div class="h-48 bg-gray-200 overflow-hidden">
            ${thumbnailHTML}
          </div>
          <div class="p-6 flex-1 flex flex-col">
            <div class="flex items-center gap-2 mb-3">
              <span class="px-3 py-1 text-xs font-bold rounded-full" style="background-color: ${colors.bg}; color: ${colors.text};">${news.category}</span>
            </div>
            <h2 class="text-xl font-bold mb-3 line-clamp-2" style="color: #221C35;">
              ${news.title}
            </h2>
            <p class="text-gray-600 mb-4 flex-1 line-clamp-2">
              ${plainText}
            </p>
            <div class="flex items-center justify-between mt-auto">
              <span class="text-sm text-gray-700">${formatDate(date)}</span>
            </div>
          </div>
        </article>
      </a>
    `;
  }

  // microCMSからお知らせを取得（最新3件）
  async function fetchLatestNews() {
    try {
      const response = await fetch(
        `https://${SERVICE_ID}.microcms.io/api/v1/${ENDPOINT}?orders=-publishedAt,-createdAt&limit=3`,
        {
          headers: {
            'X-MICROCMS-API-KEY': API_KEY
          }
        }
      );

      if (!response.ok) {
        throw new Error('データの取得に失敗しました');
      }

      const data = await response.json();

      // ローディング非表示
      document.getElementById('news-loading').style.display = 'none';

      if (data.contents && data.contents.length > 0) {
        // お知らせを表示
        const newsListElement = document.getElementById('news-list');
        newsListElement.innerHTML = data.contents.map(news => createNewsCard(news)).join('');
        newsListElement.style.display = 'grid';
      }
    } catch (error) {
      console.error('Error fetching news:', error);
      document.getElementById('news-loading').style.display = 'none';
    }
  }

  // ページ読み込み時に実行
  fetchLatestNews();
</script>