---
layout: default
hero_title: "スポンサー"
hero_subtitle: "COOLEST PARTNERS"
---

<!-- コンテンツエリア -->
<div class="bg-white py-16 px-4">
  <div class="max-w-6xl mx-auto">
      <div class="text-center mb-16">
        <p class="text-xl mb-4" style="color: #444444;">Coolest Projects Japanはスポンサーのご協力により開催されています。協賛くださいました、皆様ありがとうございます。</p>
        <p class="text-xl mb-12" style="color: #444444;">現在はブロンズ枠や個人枠など、一部の枠のみ募集をしております。詳細は下記スライドからご確認いただけます。</p>

        <div class="mb-12 max-w-4xl mx-auto">
          <!-- PDF Viewer -->
          <div id="pdf-viewer" class="bg-white rounded-2xl shadow-lg overflow-hidden">
            <div id="pdf-canvas-container" class="flex justify-center bg-gray-50 p-4">
              <canvas id="pdf-canvas" class="max-w-full h-auto shadow-md"></canvas>
            </div>
            <div id="pdf-controls" class="bg-gray-100 p-3 flex items-center justify-center gap-3 border-t">
              <button id="prev-page" class="w-10 h-10 flex items-center justify-center rounded-full hover:bg-gray-200 disabled:opacity-30 disabled:cursor-not-allowed transition">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
                </svg>
              </button>
              <span id="page-info" class="text-sm font-medium px-2">
                <span id="page-num">1</span>
              </span>
              <button id="next-page" class="w-10 h-10 flex items-center justify-center rounded-full hover:bg-gray-200 disabled:opacity-30 disabled:cursor-not-allowed transition">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                </svg>
              </button>
            </div>
          </div>
        </div>

	<div class="mb-36" style="display: flex; gap: 16px; justify-content: center; flex-wrap: wrap;">
	  <a class="button-push" href="https://docs.google.com/forms/d/e/1FAIpQLSeFFPTWsQeBajyiKeSOFZrGgQlDy2CijsQ6qg07uEK25dLttw/viewform?usp=preview">申込ページを見る</a>
	  <a class="button-push" href="/img/contests/sponsor.pdf">PDF をダウンロードする </a>
	</div>


        <!-- PDF.js Script -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
        <script>
          // PDF.js worker の設定
          pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';

          const url = '/img/contests/sponsor.pdf';
          let pdfDoc = null;
          let pageNum = 1;
          let pageRendering = false;
          let pageNumPending = null;
          const scale = 1.5;
          const canvas = document.getElementById('pdf-canvas');
          const ctx = canvas.getContext('2d');

          // PDF ページをレンダリング
          function renderPage(num) {
            pageRendering = true;
            pdfDoc.getPage(num).then(function(page) {
              const viewport = page.getViewport({scale: scale});
              canvas.height = viewport.height;
              canvas.width = viewport.width;

              const renderContext = {
                canvasContext: ctx,
                viewport: viewport
              };

              const renderTask = page.render(renderContext);
              renderTask.promise.then(function() {
                pageRendering = false;
                if (pageNumPending !== null) {
                  renderPage(pageNumPending);
                  pageNumPending = null;
                }
              });
            });

            // ページ番号を更新
            document.getElementById('page-num').textContent = num;

            // ボタンの状態を更新（ページ番号のみ表示）
            document.getElementById('prev-page').disabled = (num <= 1);
            document.getElementById('next-page').disabled = (num >= pdfDoc.numPages);
          }

          // ページ変更をキューに追加
          function queueRenderPage(num) {
            if (pageRendering) {
              pageNumPending = num;
            } else {
              renderPage(num);
            }
          }

          // 前のページ
          function onPrevPage() {
            if (pageNum <= 1) return;
            pageNum--;
            queueRenderPage(pageNum);
          }
          document.getElementById('prev-page').addEventListener('click', onPrevPage);

          // 次のページ
          function onNextPage() {
            if (pageNum >= pdfDoc.numPages) return;
            pageNum++;
            queueRenderPage(pageNum);
          }
          document.getElementById('next-page').addEventListener('click', onNextPage);

          // PDF を読み込み
          pdfjsLib.getDocument(url).promise.then(function(pdfDoc_) {
            pdfDoc = pdfDoc_;

            // 最初のページをレンダリング
            renderPage(pageNum);
          }).catch(function(error) {
            console.error('PDFの読み込みに失敗しました:', error);
            document.getElementById('pdf-viewer').innerHTML = '<div class="bg-red-100 border-2 border-red-300 rounded-2xl px-8 py-12 text-center"><p class="text-lg text-red-700">PDFの読み込みに失敗しました。</p></div>';
          });
        </script>
      </div>

      {% include sponsors.html %}

    </div>
