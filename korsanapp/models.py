from django.db import models
from ckeditor.widgets import CKEditorWidget
from ckeditor.fields import RichTextField
# Create your models here.


class mailingModel(models.Model):
    mail = models.CharField(max_length=100)

    def __str__(self):
        return self.mail

class imageFieldUplad(models.Model):
    imageField = models.ImageField(upload_to='upload')
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class project(models.Model):
    name = models.CharField(max_length=150)
    date = models.DateTimeField(auto_now=True)
    imageField = models.ImageField(upload_to='upload',blank=True)
    imageField1 = models.ImageField(upload_to='upload',blank=True)
    imageField2 = models.ImageField(upload_to='upload',blank=True)
    imageField3 = models.ImageField(upload_to='upload',blank=True)
    description = models.TextField()


    def __str__(self):
        return self.name

class blogs(models.Model):
    name = models.CharField(max_length=150)
    date = models.DateTimeField(auto_now=True)
    imageField = models.ImageField(upload_to='upload')
    imageField1 = models.ImageField(upload_to='upload',blank=True)
    imageField2 = models.ImageField(upload_to='upload',blank=True)
    imageField3 = models.ImageField(upload_to='upload',blank=True)
    description = models.TextField()
    slug = models.SlugField(default='korusan')

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return "/korusan-blog/%s/" % self.slug

class product(models.Model):
    name = models.CharField(max_length=100)
    imageField = models.ImageField(upload_to='upload',blank=True, null=True)
    imageField1 = models.ImageField(upload_to='upload',blank=True, null=True)
    imageField2 = models.ImageField(upload_to='upload',blank=True, null=True)
    imageField3 = models.ImageField(upload_to='upload',blank=True, null=True)
    description = models.TextField()
    slug = models.SlugField(default="korusan")
    altGroup = models.BooleanField(default=False)
    date = models.DateField(auto_now=True)

    def __str__(self):
        return self.name


    def get_absolute_url(self):
        return "/urunler/%s/" % self.slug

class altProduct(models.Model):
    name = models.CharField(max_length=100)
    imageField = models.ImageField(upload_to='upload',blank=True)
    imageField1 = models.ImageField(upload_to='upload',blank=True)
    imageField2 = models.ImageField(upload_to='upload',blank=True)
    imageField3 = models.ImageField(upload_to='upload',blank=True)
    mainProduct = models.ForeignKey(product,on_delete=models.CASCADE)
    description = models.TextField()
    slug = models.SlugField(default="korusan")
    date = models.DateField(auto_now=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return "/urun/%s/" % self.slug

class contact(models.Model):
    name = models.CharField(max_length=120)
    email = models.CharField(max_length=100)
    tel = models.CharField(max_length=100)
    content = models.TextField()

    def __str__(self):
        return self.name


class mainteance(models.Model):
    name = models.CharField(max_length=50, default="mainteance")
    status = models.BooleanField(default=False)

    def __str__(self):
        return self.name