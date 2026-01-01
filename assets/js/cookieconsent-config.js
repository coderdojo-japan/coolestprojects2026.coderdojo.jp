import 'https://cdn.jsdelivr.net/gh/orestbida/cookieconsent@3.1.0/dist/cookieconsent.umd.js';

function updateCategoryContent() {
  const functional = CookieConsent.acceptedCategory('functional');

  document.querySelectorAll('[data-category="functional"]').forEach(el => {
    if (functional) {
      const iframe = el.querySelector('iframe[data-src]');
      if (iframe && !iframe.src) {
        iframe.src = iframe.getAttribute('data-src');
      }
      el.style.display = 'block';
    } else {
      const iframe = el.querySelector('iframe');
      if (iframe && iframe.src) {
        iframe.removeAttribute('src');
      }
      el.style.display = 'none';
    }
  });

  document.querySelectorAll('[data-category="!functional"]').forEach(el => {
    el.style.display = functional ? 'none' : 'block';
  });
}

CookieConsent.run({
  categories: {
    necessary: {
      enabled: true,
      readOnly: true
    },
    functional: {
      enabled: false,
      readOnly: false
    }
  },

  mode: 'opt-in',
  revision: 0,

  onFirstConsent: function() {
    updateCategoryContent();
  },

  onConsent: function() {
    updateCategoryContent();
  },

  onChange: function() {
    updateCategoryContent();
  },

  language: {
    default: 'ja',
    translations: {
      ja: {
        consentModal: {
          title: 'このサイトではCookieを使用しています',
          description: '当サイトでは、Google フォームなどの埋め込みコンテンツを表示するためにCookieを使用しています。詳細については<a href="/privacy">プライバシーポリシー</a>をご覧ください。',
          acceptAllBtn: '同意する',
          acceptNecessaryBtn: '拒否する',
          showPreferencesBtn: '詳細を見る'
        },
        preferencesModal: {
          title: 'Cookie設定',
          acceptAllBtn: '同意して閉じる',
          acceptNecessaryBtn: '拒否して閉じる',
          savePreferencesBtn: '設定を保存',
          closeIconLabel: '閉じる',
          sections: [
            {
              title: 'Cookieの使用について',
              description: '当サイトでは、Cookie同意の管理と、Google フォームやGoogle ドキュメントなどの埋め込みコンテンツを表示するためにCookieを使用しています。'
            },
            {
              title: '必須Cookie',
              description: 'Cookie同意ステータスを管理するために使用されます。このCookieは、サイトの基本機能に必要なため、無効にすることはできません。',
              linkedCategory: 'necessary'
            },
            {
              title: '機能Cookie',
              description: 'Google フォーム、Google ドキュメント、YouTube動画などの埋め込みコンテンツを表示するために使用されます。これらを拒否すると、埋め込みコンテンツの代わりに外部リンクが表示されます。',
              linkedCategory: 'functional'
            }
          ]
        }
      }
    }
  }
});

document.addEventListener('DOMContentLoaded', function() {
  updateCategoryContent();
});

window.addEventListener('load', function() {
  updateCategoryContent();
});
