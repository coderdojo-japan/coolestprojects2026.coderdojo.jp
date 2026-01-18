---
layout: default
hero_title: "お知らせ"
hero_subtitle: "NEWS"
---

<!-- コンテンツエリア -->
<div class="bg-white py-16 px-4">
  <div class="max-w-4xl mx-auto">
      <!-- ローディング表示 -->
      <div id="loading" class="text-center py-12">
      </div>
      <!-- エラー表示 -->
      <div id="error" class="text-center py-12" style="display: none;">
        <p class="text-xl" style="color: #444444;">お知らせの読み込みに失敗しました。</p>
      </div>
      <!-- お知らせ一覧 -->
      <div id="news-list" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6" style="display: none;"></div>
      <!-- お知らせがない場合 -->
      <div id="no-news" class="text-center py-12" style="display: none;">
        <p class="text-xl" style="color: #444444;">現在お知らせはありません。</p>
      </div>
      <!-- お知らせ詳細 -->
      <div id="news-detail" style="display: none;">
        <!-- 戻るボタン -->
        <div class="mb-8">
          <a href="/news" class="inline-flex items-center text-black hover:text-gray-700 font-bold">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
            一覧に戻る
          </a>
        </div>
        <!-- 詳細コンテンツ -->
        <article>
          <!-- カテゴリー -->
          <div class="mb-4">
            <span id="detail-category" class="px-4 py-2 text-sm font-bold rounded-full"></span>
          </div>
          <!-- タイトル -->
          <h1 id="detail-title" class="text-3xl md:text-4xl font-bold mb-4" style="color: #221C35;"></h1>
          <!-- 日付 -->
          <div class="mb-8">
            <span id="detail-date" class="text-sm text-gray-700"></span>
          </div>
          <!-- サムネイル画像 -->
          <div id="detail-thumbnail" class="mb-8"></div>
          <!-- 本文 -->
          <div id="detail-content" class="prose prose-lg max-w-none" style="color: #444444;">
          </div>
        </article>
      </div>
    </div>
  </div>

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

    // URLを自動リンク化する関数
    function linkifyUrls(text) {
      const urlPattern = /(\b(https?|ftp):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gim;
      return text.replace(urlPattern, '<a href="$1" target="_blank" rel="noopener noreferrer" style="color: #00AFAA; text-decoration: underline;">$1</a>');
    }

    // 日付フォーマット関数
    function formatDate(dateString) {
      const date = new Date(dateString);
      const year = date.getFullYear();
      const month = String(date.getMonth() + 1).padStart(2, '0');
      const day = String(date.getDate()).padStart(2, '0');
      return `${year}.${month}.${day}`;
    }

    // お知らせHTML生成
    function createNewsHTML(news) {
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

    // 詳細ページを表示
    async function displayNewsDetail(newsId) {
      try {
        const response = await fetch(
          `https://${SERVICE_ID}.microcms.io/api/v1/${ENDPOINT}/${newsId}`,
          {
            headers: {
              'X-MICROCMS-API-KEY': API_KEY
            }
          }
        );

        if (!response.ok) {
          throw new Error('データの取得に失敗しました');
        }

        const news = await response.json();
        const colors = categoryColors[news.category] || categoryColors['お知らせ'];
        const date = news.publishedAt || news.createdAt;

        // 一覧を非表示、詳細を表示
        document.getElementById('loading').style.display = 'none';
        document.getElementById('news-list').style.display = 'none';
        document.getElementById('news-detail').style.display = 'block';

        // 詳細データを設定
        document.getElementById('detail-category').textContent = news.category;
        document.getElementById('detail-category').style.backgroundColor = colors.bg;
        document.getElementById('detail-category').style.color = colors.text;

        document.getElementById('detail-title').textContent = news.title;
        document.getElementById('detail-date').textContent = formatDate(date);

        // サムネイル画像
        if (news.thumbnail) {
          document.getElementById('detail-thumbnail').innerHTML = `
            <img src="${news.thumbnail.url}" alt="${news.title}" class="w-full rounded-lg shadow-lg">
          `;
        } else {
          document.getElementById('detail-thumbnail').innerHTML = '';
        }

        // 本文（URLを自動リンク化）
        document.getElementById('detail-content').innerHTML = linkifyUrls(news.content);

      } catch (error) {
        console.error('Error fetching news detail:', error);
        document.getElementById('loading').style.display = 'none';
        document.getElementById('error').style.display = 'block';
      }
    }

    // microCMSからデータ取得
    async function fetchNews() {
      try {
        const response = await fetch(
          `https://${SERVICE_ID}.microcms.io/api/v1/${ENDPOINT}?orders=-publishedAt,-createdAt`,
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
        document.getElementById('loading').style.display = 'none';

        if (data.contents && data.contents.length > 0) {
          // お知らせを表示
          const newsListElement = document.getElementById('news-list');
          newsListElement.innerHTML = data.contents.map(news => createNewsHTML(news)).join('');
          newsListElement.style.display = 'grid';
        } else {
          // お知らせがない場合
          document.getElementById('no-news').style.display = 'block';
        }
      } catch (error) {
        console.error('Error fetching news:', error);
        document.getElementById('loading').style.display = 'none';
        document.getElementById('error').style.display = 'block';
      }
    }

    // URLハッシュをチェックして表示を切り替え
    function checkHash() {
      const hash = window.location.hash.substring(1); // #を除去
      if (hash) {
        // ハッシュがある場合は詳細ページを表示
        displayNewsDetail(hash);
      } else {
        // ハッシュがない場合は一覧を表示
        fetchNews();
      }
    }

    // ページ読み込み時とハッシュ変更時に実行
    window.addEventListener('load', checkHash);
    window.addEventListener('hashchange', checkHash);
  </script>