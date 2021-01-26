from django.contrib.sitemaps import Sitemap
from django.urls import reverse

from korsanapp.models import product, altProduct

class productSitemap(Sitemap):
    changefreq = "never"
    priority = 0.5

    def items(self):
        return product.objects.all()

    def lastmod(self, obj):
        return obj.date


class productaltSitemap(Sitemap):
    changefreq = "never"
    priority = 0.5

    def items(self):
        return altProduct.objects.all()

    def lastmod(self, obj):
        return obj.date

class StaticViewSitemap(Sitemap):
    priority = 0.5
    changefreq = 'daily'

    def items(self):
        return ['mainView']

    def location(self, item):
        return reverse(item)
