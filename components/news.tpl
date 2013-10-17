{% for article in site.latest_1_articles  %}
<div class="colorbox">
            <table class="news">
{% for article in site.latest_1_articles %}
              <tr>
                <td class="first">{{ "latest_news" |lc }}</td>
                <td><span class="date">{{ article.created_at | date:"%d. %B" }}</span> - <a href="{{ article.url }}">{{ article.title }}</a> {{ article.excerpt }}
                </td>
              </tr>
{% endfor %}
            </table>
          </div>
{% endfor %}