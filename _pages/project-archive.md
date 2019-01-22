---
layout:         archive
title:          "Projects"
excerpt:        "An overview of a small selection of projects ... might get more soon."
permalink:      /projects/
author_profile: true
---

{% include base_path %}

<p class="hint">This page needs some cleanup ... WIP</p>

{% for post in site.portfolio %}
  {% include archive-single.html %}
{% endfor %}
