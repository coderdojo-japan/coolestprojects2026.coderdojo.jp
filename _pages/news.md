---
layout: default
permalink: /news
---
<h2 class="text-4xl text-center mb-8 mt-30 xl:mt-15">
  お知らせ
  <span class="block mt-5 text-2xl">NEWS</span>
</h2>

<div class="max-w-248 mx-auto px-8 flex flex-wrap *:w-full gap-y-8 justify-between">
  {% for post in site.posts | where:"categories","news" %}
    <a href="{{ post.url }}">
      <time class="text-sm text-gray-600">{{ post.date | date:"%Y.%-m.%-d" }}</time>
      <p><strong>{{ post.title }}</strong></p>
    </a>
  {% endfor %}
</div>
