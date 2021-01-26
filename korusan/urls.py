"""korusan URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin, sitemaps
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from korsanapp import views
from django.contrib.sitemaps.views import sitemap
from django.contrib.sitemaps import GenericSitemap
from korsanapp.models import product, altProduct, blogs
from korsanapp.sitemaps import StaticViewSitemap
from django.views.generic.base import TemplateView

info_dict = {
    'queryset': product.objects.all(),
    'date_field': 'date',
}

info_dictalt = {
    'queryset': altProduct.objects.all(),
    'date_field': 'date',
}

info_dictblog = {
    'queryset': blogs.objects.all(),
    'date_field': 'date',
}

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.mainView,name='mainView'),
    path('urunler/<slug:slug>/',views.productDetail,name='productDetail'),
    path('urun/<slug:slug>/',views.productAltDetail,name='productAltDetail'),
    path('korsan-blog/<slug:slug>/',views.blogDetail,name='blogDetail'),
    path('tum-fabrikalar/',views.allContact,name='allContact'),
    path('yapilanlar/',views.projectView,name='projectView'),
    path('servisler/',views.services,name='services'),
    path('tum-urunler/',views.productList,name='productList'),
    path('korusan-blog/',views.blogAll,name='blogAll'),
    path('urungiris/add/',views.productAdd,name='productAdd'),
    path('post/<int:pk>/edit/', views.product_edit, name='product_edit'),
    path('iletisim/', views.allContactUs, name='allContactUs'),
    path('thankyou', views.mainViewThanks, name='mainViewThanks'),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('sitemap.xml', sitemap,
                       {'sitemaps': {'urunler': GenericSitemap(info_dict, priority=0.6),
                                    'urun': GenericSitemap(info_dictalt, priority=0.6),
                                    'blog': GenericSitemap(info_dictblog, priority=0.6),
                                     'static':StaticViewSitemap}},
                       name='django.contrib.sitemaps.views.sitemap'),
    path(
        "robots.txt",
        TemplateView.as_view(template_name="robots.txt", content_type="text/plain"),
    ),

] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)\
              + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
