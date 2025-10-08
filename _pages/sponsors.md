---
layout: default
permalink: /sponsorship/list/
title: スポンサーのご紹介
---
{% include navbar.html %}

{% assign gold_sponsors       = site.data.sponsors | where: "type", "gold"       %}
{% assign silver_sponsors     = site.data.sponsors | where: "type", "silver"     %}
{% assign bronze_sponsors     = site.data.sponsors | where: "type", "bronze"     %}
{% assign inkind_sponsors     = site.data.sponsors | where: "type", "inkind"     %}
{% assign individual_sponsors = site.data.sponsors | where: "type", "individual" %}

<h2 class="text-4xl text-center mb-8 mt-30 xl:mt-15">
  スポンサーのご紹介
  <span class="block mt-5 text-2xl">SPONSORS</span>
</h2>

<p class="text-center mb-10 text-sm sm:text-base px-4 sm:px-8">
  DojoCon Japan 2025は、スポンサーのご協力により開催されています。<br>協賛くださいました皆様ありがとうございます。
</p>

<h3 class="text-2xl mt-15 mx-8 text-center mb-4">ゴールドスポンサー
  <span class="block text-base mt-1">GOLD SPONSOR</span>
</h3>
<div class="flex justify-center flex-wrap gap-x-8 px-8 max-w-3xl w-full mx-auto">
  {% for sponsor in gold_sponsors %}
    <div class="w-full flex flex-col mb-5">
      {% if sponsor.link %}
        <a
          class="flex-grow w-full flex items-center justify-center transition-all duration-200 hover:scale-105 cursor-pointer"
          style="transform-style: preserve-3d;"
          href="{{ sponsor.link }}"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img class="w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </a>
      {% else %}
        <div class="flex-grow w-full flex items-center justify-center">
          <img class="w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </div>
      {% endif %}
      <p class="w-full mb-3 text-center break-keep">{{ sponsor.name }}</p>
      <p class="w-full text-gray-600">{{ sponsor.message }}</p>
    </div>
  {% endfor %}
</div>

<h3 class="text-2xl mt-15 mx-8 text-center mb-4">シルバースポンサー
  <span class="block text-base mt-1">SILVER SPONSOR</span>
</h3>

<div class="flex justify-center flex-wrap gap-x-8 px-8 max-w-3xl w-full mx-auto">
  {% for sponsor in silver_sponsors %}
    <div class="flex flex-col mb-5">
      {% if sponsor.link %}
        <a
          class="flex-grow w-full flex items-center justify-center transition-all duration-200 hover:scale-105 cursor-pointer"
          style="transform-style: preserve-3d;"
          href="{{ sponsor.link }}"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img class="max-w-[{{500 | times:sponsor.logo_scale | round}}px] w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </a>
      {% else %}
        <div class="flex-grow w-full flex items-center justify-center">
          <img class="w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </div>
      {% endif %}
      <p class="w-full mb-3 text-center break-keep">{{ sponsor.name }}</p>
      <p class="w-full text-gray-600">{{ sponsor.message }}</p>
    </div>
  {% endfor %}
</div>

<h3 class="text-2xl mt-15 mx-8 text-center mb-4">ブロンズスポンサー
  <span class="block text-base mt-1">BRONZE SPONSOR</span>
</h3>

<div class="grid grid-cols-1 lg:grid-cols-2 gap-x-8 gap-y-10 px-8 sm:px-8 max-w-3xl w-full mx-auto">
  {% for sponsor in bronze_sponsors %}
    <div class="flex flex-col mb-5">
      {% if sponsor.link %}
        <a
          class="w-full h-auto lg:h-96 flex-grow-0 flex items-center justify-center transition-all duration-200 hover:scale-105 cursor-pointer"
          style="transform-style: preserve-3d;"
          href="{{ sponsor.link }}"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img class="max-w-[{{300 | times:sponsor.logo_scale | round}}px] w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </a>
      {% else %}
        <div class="w-full h-auto lg:h-96 flex-grow-0 flex items-center justify-center">
          <img class="w-full mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | strip_html }}のロゴ">
        </div>
      {% endif %}
      <p class="w-full mb-3 text-center break-keep">{{ sponsor.name }}</p>
      <p class="w-full text-gray-600">{{ sponsor.message }}</p>
    </div>
  {% endfor %}
</div>

<h3 class="text-2xl mt-15 mx-8 text-center mb-4">インカインドスポンサー
  <span class="block text-base mt-1">IN-KIND SPONSOR</span>
</h3>

<div class="flex justify-center flex-wrap gap-x-8 gap-y-10 px-8 max-w-3xl mx-auto mb-20">
  {% for sponsor in inkind_sponsors %}
    <div class="flex flex-col">
      {% if sponsor.link %}
        <a
          class="flex-grow w-full flex items-center justify-center transition-all duration-200 hover:scale-105 cursor-pointer"
          style="transform-style: preserve-3d;"
          href="{{ sponsor.link }}"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img class="w-[270px] mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | append: "(" | append: sponsor.tool | append:")" | strip_html }}のロゴ">
        </a>
      {% else %}
        <div class="flex-grow w-full flex items-center justify-center">
          <img class="w-[270px] mx-auto mb-3" src="{{ sponsor.logo }}" alt="{{ sponsor.name | append: "(" | append: sponsor.tool | append:")" | strip_html }}のロゴ">
        </div>
      {% endif %}
      <p class="w-full text-center break-keep">{{ sponsor.name }}</p>
      <p class="w-full text-center break-keep">{{ sponsor.tool }}<wbr>のご提供</p>
    </div>
  {% endfor %}
</div>

<h3 id="individual_sponsors" class="text-2xl mt-15 mb-8 text-center">個人スポンサー
  <span class="block text-base mt-1">INDIVIDUAL SPONSOR</span>
</h3>
<div class="grid grid-cols-1 sm:grid-cols-2 gap-6 max-w-xl mx-auto mb-16">
  {% for sponsor in individual_sponsors %}
    <div class="flex items-center justify-center">
      {% if sponsor.link %}
        <a href="{{ sponsor.link }}" target="_blank" rel="noopener noreferrer"
          class="block text-2xl font-bold text-center transition-transform duration-200 hover:scale-110 cursor-pointer">
          {{ sponsor.name }}
        </a>
      {% else %}
        <span class="block text-2xl font-bold text-center">{{ sponsor.name }}</span>
      {% endif %}
    </div>
  {% endfor %}
</div>
