---
layout: default
permalink: /news/
---
<h2 class="text-4xl text-center mb-8 mt-30 xl:mt-15">
  お知らせ
  <span class="block mt-5 text-2xl">NEWS</span>
</h2>

<ul class="max-w-248 mx-auto px-8 flex flex-wrap *:w-full justify-between divide-y divide-[#ccc]">
  {% assign news = site.posts | where: "categories", "news" %}
  {% for post in news %}
    <li class="py-4">
      <a href="{{ post.url }}">
        <div class="flex items-center gap-x-2">
          <time class="text-sm text-gray-600">{{ post.date | date:"%Y.%-m.%-d" }}</time>
          <span class="block min-w-24 text-center px-4 py-px rounded-xs bg-[#cc8f2e] text-white">{{ post.tags }}</span>
        </div>
        <p>
          {% if post.title-in-news-list %}
            {{ post.title-in-news-list }}
          {% else %}
            {{ post.title }}
          {% endif %}
        </p>
      </a>
    </li>
  {% endfor %}
</ul>
