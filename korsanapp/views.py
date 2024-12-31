import random

from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect
from korsanapp.models import product, project, altProduct, blogs, contact, mailingModel, mainteance
from django.shortcuts import get_object_or_404
from korsanapp.forms import productForm
from django.core.mail import send_mail

# Create your views here.

def send_Mail(name,email,tel,content):
    sendto = send_mail('Korusan İletişim', 'İletişime Geçtiğiniz İçin Teşekkürler. En Kısa Sürede Korusan Müşteri Hizmetleri '
                            ' Tarafından Geri Dönüş Yapılacaktır. Saygılarımızla. ', 'bilgi@korusan.com.tr',
                      [email], fail_silently=False)


    sendfrom = send_mail('Web Sitesi İletişim Formu',
                         '{0} Kişisi, {1} Telefon Numarası, {2} Email Adresi, {3} İçeriği'.format(name,tel,email,content),
                         'bilgi@korusan.com.tr',
                      ['bilgi@korusan.com.tr'], fail_silently=False)



    return sendto, sendfrom



def mainView(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:3]

    firstNo = random.randint(1, 9)
    lastNo = random.randint(1, 9)
    resultNo = firstNo + lastNo

    if request.method == 'POST':

        if 'mailType' in request.POST:
            mails = request.POST.dict()['mail']
            cs = mailingModel(mail=mails)
            cs.save()

        if 'formType' in request.POST:
            try:
                name = request.POST.dict()['name']
                resultCheck = int(request.POST.dict()['result'])
                resultValue = int(request.POST.dict()['resultvalue'])
                if resultCheck == resultValue:
                    mail = request.POST.dict()['mail']
                    telefon = request.POST.dict()['telefon']
                    message = request.POST.dict()['message']
                    ts = contact(name=name,email=mail,tel=telefon,content=message)
                    ts.save()
                    send_Mail(name=name, email=mail, tel=telefon, content=message)
                    return redirect('mainViewThanks')
                else:
                    return HttpResponse('<h5>İşlem Sorusunu Doğru Cevaplayınız.</h5>')
            except:
                return HttpResponse('<h5>Bir Hata Oluştu..</h5>')

        return render(request, 'index.html',
                      {'mainCat': mainCat, 'altCat': altCat, 'projects': projects, 'contents': contents,
                       })

    if request.method == 'GET':
        obj = mainteance.objects.all().first()

        return render(request,'index.html',{'mainCat': mainCat, 'altCat': altCat, 'projects': projects,
                                            'contents': contents,'firstNo':firstNo,'lastNo':lastNo,
                                             'resultNo':resultNo,'obj':obj
                                            })

def productList(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    return render(request,'productlist.html', {'mainCat':mainCat,'altCat':altCat,'projects': projects,'contents':contents})

@login_required
def productAdd(request):
    if request.method == 'POST':
        addForm = productForm(request.POST)
        return render(request,'product/productAdd.html',{'addForm':addForm})
    if request.method == 'GET':
        addForm = productForm()
        return render(request,'product/productAdd.html',{'addForm':addForm})

@login_required
def product_edit(request, pk):
    post = get_object_or_404(product, pk=pk)
    if request.method == "POST":
        addForm = productForm(request.POST, instance=post)
        if addForm.is_valid():
            post = addForm.save(commit=False)
            post.save()
            return redirect('productList')
    else:
        addForm = productForm(instance=post)
    return render(request, 'product/productEdit.html', {'addForm': addForm})

def allContact(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    firstNo = random.randint(1, 9)
    lastNo = random.randint(1, 9)
    resultNo = firstNo + lastNo
    if request.method == 'POST':
        if 'formType' in request.POST:
            try:
                name = request.POST.dict()['name']
                resultCheck = int(request.POST.dict()['result'])
                resultValue = int(request.POST.dict()['resultvalue'])
                if resultCheck == resultValue:
                    mail = request.POST.dict()['mail']
                    telefon = request.POST.dict()['telefon']
                    message = request.POST.dict()['message']
                    ts = contact(name=name,email=mail,tel=telefon,content=message)
                    ts.save()
                    send_Mail(name=name, email=mail, tel=telefon, content=message)
                    return redirect('mainViewThanks')
                else:
                    return HttpResponse('<h5>İşlem Sorusunu Doğru Cevaplayınız.</h5>')
            except:
                return HttpResponse('<h5>Bir Hata Oluştu..</h5>')
    return render(request,'allContact.html', {'mainCat':mainCat,'altCat':altCat,'projects': projects,'contents':contents,
                                              'firstNo': firstNo, 'lastNo': lastNo,
                                              'resultNo': resultNo
                                              })

def allContactUs(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    firstNo = random.randint(1, 9)
    lastNo = random.randint(1, 9)
    resultNo = firstNo + lastNo
    if request.method == 'POST':
        if 'formType' in request.POST:
            try:
                name = request.POST.dict()['name']
                resultCheck = int(request.POST.dict()['result'])
                resultValue = int(request.POST.dict()['resultvalue'])
                if resultCheck == resultValue:
                    mail = request.POST.dict()['mail']
                    telefon = request.POST.dict()['telefon']
                    message = request.POST.dict()['message']
                    ts = contact(name=name,email=mail,tel=telefon,content=message)
                    ts.save()
                    send_Mail(name=name, email=mail, tel=telefon, content=message)
                    return redirect('mainViewThanks')
                else:
                    return HttpResponse('<h5>İşlem Sorusunu Doğru Cevaplayınız.</h5>')
            except:
                return HttpResponse('<h5>Bir Hata Oluştu..</h5>')
    return render(request,'contactus.html', {'mainCat':mainCat,'altCat':altCat,'projects': projects,
                                             'contents':contents,'firstNo':firstNo,'lastNo':lastNo,
                                             'resultNo':resultNo})



def productDetail(request,slug):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    productModel = get_object_or_404(product, slug=slug)
    return render(request,'indexDetail.html',{'productModel':productModel,
                                              'mainCat':mainCat,'altCat':altCat,'projects': projects,
                                              'contents':contents,'main':'main'})



def productAltDetail(request,slug):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    productModel = get_object_or_404(altProduct, slug=slug)
    return render(request,'indexDetail.html',{'productModel':productModel,'mainCat':mainCat,'deep':'deep',
                                              'altCat':altCat,'projects': projects,'contents':contents})

def projectView(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    return render(request,'project.html',{'mainCat':mainCat,'altCat':altCat,'projects': projects,'contents':contents})

def services(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    return render(request,'services.html',{'mainCat':mainCat,'altCat':altCat,'projects': projects,'contents':contents})


def blogDetail(request,slug):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:6]
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    productModel = get_object_or_404(blogs, slug=slug)
    return render(request,'indexDetail.html',{'productModel':productModel,'mainCat':mainCat,'deep':'deep',
                                              'altCat':altCat,'projects': projects,'contents':contents})

def blogAll(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()
    if request.method == 'POST':
        if 'formType' in request.POST:
            print(request.POST.dict())
            name = request.POST.dict()['name']
            mail = request.POST.dict()['mail']
            telefon = request.POST.dict()['telefon']
            message = request.POST.dict()['message']
            ts = contact(name=name,email=mail,tel=telefon,content=message)
            ts.save()
            send_Mail(name=name, email=mail, tel=telefon, content=message)
            return redirect('mainViewThanks')
    return render(request,'blogall.html',{'mainCat':mainCat,'altCat':altCat,'projects': projects,'contents':contents})



def mainViewThanks(request):
    mainCat = product.objects.all()
    altCat = altProduct.objects.all()
    projects = project.objects.all()
    contents = blogs.objects.all()[0:3]

    firstNo = random.randint(1, 9)
    lastNo = random.randint(1, 9)
    resultNo = firstNo + lastNo

    if request.method == 'POST':

        if 'mailType' in request.POST:
            mails = request.POST.dict()['mail']
            cs = mailingModel(mail=mails)
            cs.save()

        if 'formType' in request.POST:
            try:
                name = request.POST.dict()['name']
                resultCheck = int(request.POST.dict()['result'])
                resultValue = int(request.POST.dict()['resultvalue'])
                if resultCheck == resultValue:
                    mail = request.POST.dict()['mail']
                    telefon = request.POST.dict()['telefon']
                    message = request.POST.dict()['message']
                    ts = contact(name=name,email=mail,tel=telefon,content=message)
                    ts.save()
                    send_Mail(name=name, email=mail, tel=telefon, content=message)

                else:
                    return HttpResponse('<h5>İşlem Sorusunu Doğru Cevaplayınız.</h5>')
            except:
                return HttpResponse('<h5>Bir Hata Oluştu..</h5>')

        return render(request, 'index.html',
                      {'mainCat': mainCat, 'altCat': altCat, 'projects': projects, 'contents': contents,
                       })

    if request.method == 'GET':
        obj = mainteance.objects.all().first()

        return render(request,'index.html',{'mainCat': mainCat, 'altCat': altCat, 'projects': projects,
                                            'contents': contents,'firstNo':firstNo,'lastNo':lastNo,
                                             'resultNo':resultNo,'obj':obj
                                            })
def kvk(request):
    return render(request,'kvk.html',{})


def cert_page(request):
    return render(request,'cert_page.html')

def bgp(request):
    return render(request,  'bgp.html')

