import time
import urllib2
import re
from urllib2 import urlopen
from cookielib import CookieJar

cj = CookieJar()
opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
opener.addheaders = [('User-agent','Mozilla/5.0 (X11;Linux i686) AppleWebKit/537.17 (KHTML, Like Gecko) Chrome/24.0.1312.27 Safari/537.17')]

def imageLookup():

        imagepath = 'https://www.abc.es/media/play/2018/08/22/homer-simpson-kO2--620x349@abc.JPG'
        #posteriomente pasaremos la imagen por parámetro
        
        googlepath= 'http://images.google.com/searchbyimage?image_url='+imagepath

        sourceCode = opener.open(googlepath).read()

        #findLinks = re.findall(r'<>')



        print(sourceCode)

imageLookup()
