<h4><a href="{{ url('vlog:popular_articles') }}">{{ _('Most commented articles') }}</a></h4>
{% for article in most_commented_articles %}
    <div class="sidebar-module sidebar-module-inset">
        <h5><a href="{{ url('vlog:article', article.category.slug, article.slug) }}">{{ article.title }}</a></h5>
    </div>
{% endfor %}