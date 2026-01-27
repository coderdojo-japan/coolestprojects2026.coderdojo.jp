---
layout: default
hero_title: "お知らせ"
hero_subtitle: "NEWS"
permalink: /news/
---

<div class="bg-white py-16 px-4">
  <div class="max-w-6xl mx-auto">
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
