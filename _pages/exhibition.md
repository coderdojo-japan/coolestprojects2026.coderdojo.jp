---
layout: default
title:  ニンジャ作品展示
permalink: /exhibition/
published: false
---
<div class="container mt-5 mb-5">
  <div class="row">
  <div class="row justify-content-center">
      <div class="col-md-6 col-12 text-center" style="margin: 70px auto 30px;padding-top: 20px;">
          <h1 style="font-weight: bold;">ニンジャ作品展示</h1>
          <p>各地のニンジャによる作品の展示です</p>
      </div>
  </div>

  <div class="air"></div>
  <div class="row text-left">
    {% for project in site.data.projects %}
    <div class="col-md-6 col-12 p-3 mb-5" id={{ project.id }}>
      <h4 class="ws-title">{{ project.title }}</h4>
      <p>
        {% if project.tag   %}<span class="badge badge-ws">{{ project.tag   }}</span>{% endif %}
        {% if project.local %}<span class="badge badge-ws">{{ project.local }}</span>{% endif %}
      </p>
      <div class="my-3">
        <a href="/exhibition/{{ project.id }}">
          <img class="w-100 px-5" alt="サムネイル"
	       {% if project.thumbnail %}
	       src="/img/exhibition/{{ project.thumbnail }}" {% else  %}
	       src="/img/ogp.jpg"
               {% endif %}
	  >
        </a>
      </div>
      <p class="exhibition-speaker-name">
	{{ project.creator }}
	{% if project.coderdojo_at %}<small>（CoderDojo {{ project.coderdojo_at }}）</small>{% endif %}
      </p>

      <p>
	<a href='/exhibition/{{ project.id }}' class='btn btn-danger btn-sm'>
	  <i class='fas fa-scroll'></i> 詳細を見る
	</a>
      </p>
    </div>
    {% endfor %}
  </div>
</div>
