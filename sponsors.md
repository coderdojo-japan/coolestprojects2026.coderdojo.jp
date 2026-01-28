---
layout: default
hero_title: "スポンサー"
hero_subtitle: "COOLEST PARTNERS"
---

<!-- TODO: 最適化する -->

<!-- コンテンツエリア -->
<div class="bg-white py-16 px-4">
  <div class="max-w-6xl mx-auto">
      <div class="text-center mb-16">
        <p class="text-xl mb-4" style="color: #444444;">Coolest Projects Japanはスポンサーのご協力により開催されています。協賛くださいました、皆様ありがとうございます。</p>
        <p class="text-xl mb-12" style="color: #444444;">また、現在スポンサーを募集しております。下記のスライドにて詳細をご確認いただけます。</p>
        <a class="button-push" href="https://docs.google.com/forms/d/e/1FAIpQLSeFFPTWsQeBajyiKeSOFZrGgQlDy2CijsQ6qg07uEK25dLttw/viewform?usp=preview"> スポンサーに申し込む(Google Form) </a>
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
      </div>
    </div>
