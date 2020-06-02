# Intro Python [Cheat Sheet]

Manual básico para Python

### Salida de texto
Cadenas de texto
```
print("Hola Mundo!")
cadena = "En un lugar de la Mancha "
print (cadena)
print (len(cadena))
```
Manipulaicón de cadenas
```
cadena = "En un Lugar de la Mancha"
print (cadena[3])
print (cadena[-1])
print (cadena[3:-1])
print (cadena[:4])
print (cadena[3:])
```

### Comentarios
Los comentarios en el código nos sirven como indicaciones, no son compilados, por lo que no influye en la ejecucuión del programa.
```
#Esto es un comentario
```

### Operaciones Matemáticas
Python se utiliza mucho para operaciones de cálculo, aunque no es imprescindible, se recomienda establecer la preferencia de las operaciones con paréntesis, para que el resultado sea el que buscas.
```
b=2+8+10+11-20
print (b)
```

### Concatenar
Unir diferentes cadenas de texto o variables.
```
b=6
resultado = "El resultado es: "
print (resultado, b)
```
```
first_name = 'albert'
last_name = 'einstein'
full_name = first_name + ' ' + last_name
print(full_name)
```

### Condicional If
Se establece una condición principal cuya respuesta debe ser un booleano (True o False), la primera salida corresponde al True de la condición del If, en caso de no cumplir la condición se entraría en el Else y se imprimiría su condición.
```
b=6
if b<10 :
    print ("es menor")
else:
    print("es mayor")
```
```
name = input("¿Cómo te llamas? ")
if name=="ramon":
    print("Bienvenido señor, " + name + "!")
else:
    print("Hola, que tal estas " + name + "?")
```

### Bucle For
Lorem Ipsum
```
a=0
for i in range (5) :
    a+=1
    print (a)
```

### Bucle While
Lorem Ipsum
```
i=1
while (i<=100):
    print(i)
    i+=1
print("fin")
```

### Listas
Lorem Ipsum
```
#Hacer una Lista
semana = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']

#Obtener el primer elemento
primero = semana[0]

#Obtener el último elemento
ultimo = semana[-1]

#Recorrer la Lista
for semana in semana:
    print(semana)

#Añadir elemento
semana = []
semana.append('lunes')
semana.append('martes')
```

### Funciones
El uso de funciones modulariza el código, y hace que sea más legible. 
```
#Crear Función
def saludo():
    print ("Hola soy Edu Feliz Navidad")
    print ("----------------------------")

#Invocar Función
saludo()
```
```
#Crear Función con parámetros
def suma(n1, n2):
    print (n1+n2)

#Invocar Función pasando parámetros
suma(4,8)
```

### Lectura 
Lectura y escritura por teclado de diferentes variables
```
print ("BIENVENID@")
nombre=input("Dime tu nombre> ")
edad=int (input("Dime tu edad> "))
print ("Hola ",nombre," tienes ",edad)
```
### Clases y Objetos 
```
class Humano(): #Creamos la clase Humano
    def __init__(self, edad, nombre, ocupacion): #INICIALIZADOR, definimos el parámetro edad , nombre y ocupación
        self.edad = edad # Definimos que el atributo edad, sera la edad asignada
        self.nombre = nombre # Definimos que el atributo nombre, sera el nombre asig
        self.ocupacion = ocupacion #DEFINIMOS EL ATRIBUTO DE INSTANCIA OCUPACIÓN
        
        #Creación de un nuevo método
    def presentar(self):
        presentacion = ("Hola soy {}, mi edad es {} y mi ocupación es {}") #Mensaje
        print(presentacion.format(self.nombre, self.edad, self.ocupacion)) #Usamos FORMAT
        
        
        #Creamos un nuevo método para cambiar la ocupación:
        #En caso que esta persona sea contratada 
    def contratar(self, puesto): #añadimos un nuevo parámetro en el método
        self.puesto = puesto
        print ("{} ha sido contratado como {}".format(self.nombre, self.puesto))
        self.ocupacion = puesto #Ahora cambiamos el atributo ocupación

#Instancia del Objeto Persona1
Persona1 = Humano(31, "Pedro", "Desocupado") #Instancia
 
#Llamamos al método
 
Persona1.presentar() 
Persona1.contratar("Obrero")
Persona1.presentar() #Lo volvemos a presentar luego de su contratación
```
