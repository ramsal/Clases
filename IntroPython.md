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
Lorem Ipsum
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
Lorem Ipsum
```
b=6
if b<10 :
    print ("es menor")
else:
    print("es mayor")
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
Lorem Ipsum
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
