# Intro Python [Cheat Sheet]

Manual básico para Python

### Salida de texto
Lorem Ipsum
```
print("Hola Mundo!")
cadena = "En un lugar de la Mancha "
print (cadena)
print (len(cadena))
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
Lorem Ipsum
```
print ("BIENBENID@")
nombre=input("Dime tu nombre> ")
edad=int (input("Dime tu edad> "))
print ("Hola ",nombre," tienes ",edad)
```
