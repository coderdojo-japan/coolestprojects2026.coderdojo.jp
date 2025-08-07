---
layout: default
permalink: /news
published: false
---

<div class="container" style="margin-top: 140px; margin-bottom: 140px">
    <div class="text-center mb-4">
        <p class="my-0"><strong>NEWS</strong></p>
        <h2 class="my-1">お知らせ</h2>
      </div>
      <div class="row mx-2 mx-md-0">
        {% for post in site.posts %}
        {% include articles.html %}
        {% endfor %}
      </div>
</div>
