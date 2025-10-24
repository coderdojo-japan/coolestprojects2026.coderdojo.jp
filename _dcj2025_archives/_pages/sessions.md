---
layout: default
permalink: /sessions/
title: セッション
---
{% include navbar.html %}

<h2 class="text-4xl text-center mb-8 mt-30 xl:mt-15">
  セッション
  <span class="block mt-5 text-2xl">SESSTIONS</span>
</h2>

<ul class="max-w-7xl mx-auto mb-8 px-4 sm:px-8 flex flex-wrap justify-between gap-y-16">
  {% for session in site.data.sessions %}
    <li class="w-full md:w-[47%] rounded-xl">
      {% if session.url %}
        <a href="{{ session.url }}">
          <h3 class="text-2xl mb-2 hover:text-[#cc8f2e] transition-colors duration-200">{{ session.title }}</h3>
        </a>
      {% else %}
        <h3 class="text-2xl mb-2">{{ session.title }}</h3>
      {% endif %}

      {% if session.tag %}
        <span class="block w-fit mb-4 min-w-24 text-center px-4 py-px rounded-xs bg-[#cc8f2e] text-white">{{ session.tag }}</span>
      {% endif %}

      <div class="text-gray-600">
        {{ session.outline }}
      </div>

      {% if session.url %}
        <a class="block w-fit my-2 border rounded p-2 hover:bg-[#cc8f2e] hover:text-white transition-colors duration-200" href="{{ session.url }}">
          <i class="fas fa-file mx-1"></i> 詳細を見る
        </a>
      {% endif %}

      <div class="flex gap-x-4 mt-8">
        <img src="{{ session.img }}" alt="{{ session.title | escape }}" />
      </div>
    </li>
  {% endfor %}
</ul>
