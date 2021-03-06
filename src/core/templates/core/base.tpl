<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="{{ STATIC_URL }}css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>{% block title %}{% endblock %}</title>
    </head>
    <body>
        {% block navbar %}
            {% include 'core/navbar.tpl' %}
        {% endblock %}
        <div class="content container">
            {% if user.is_authenticated %}
                <ol class="breadcrumb my-4">
                  {% block breadcrumb %}
                  {% endblock %}
                </ol>
            {% endif %}
            <div class="row">
                <div class="col-sm-8 blog-main">
                    {% block content %}
                    {% endblock %}
                </div>
                {% if user.is_authenticated %}
                    <div class="col-sm-3 offset-sm-1 blog-sidebar">
                        {% include "vlog/most_popular_categories.tpl" %}
                        {% include "vlog/most_populated_tags.tpl" %}
                        {% include "vlog/most_commented_articles.tpl" %}
                    </div>
                {% endif %}
            </div>
        </div>
        {% if user.is_authenticated %}
            {% block footer %}
                {% include 'core/footer.tpl' %}
            {% endblock %}
        {% endif %}
    </body>
    <script src="{{ STATIC_URL }}js/bootstrap.min.js"></script>
</html>