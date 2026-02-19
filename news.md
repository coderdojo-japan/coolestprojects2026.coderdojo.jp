---
layout: default
title: "お知らせ"
subtitle: "NEWS"
---

<div class="bg-white py-16 px-4">
  <div class="max-w-6xl mx-auto">
    <!-- 戻るボタン -->
    <div class="mb-8">
      <a href="/" class="inline-flex items-center text-black hover:text-gray-700 font-bold">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
        </svg>
        トップページに戻る
      </a>
    </div>

    {% assign news_posts = site.posts | where: "categories", "news" | sort: "date" | reverse %}

    {% if news_posts.size > 0 %}
      <!-- お知らせ一覧 -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {% for post in news_posts %}
          {% include news_card.html post=post %}
        {% endfor %}
      </div>
    {% else %}
      <!-- お知らせがない場合 -->
      <div class="text-center py-12">
        <p class="text-xl" style="color: #444444;">現在お知らせはありません。</p>
      </div>
    {% endif %}
  </div>
</div>
