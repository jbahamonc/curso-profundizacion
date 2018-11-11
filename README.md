# Curso de Profundización
Proyecto web para el apoyo a los procesos de vicerrectoria de investigación de la UFPS

__Importante__: Para la solución de los conflictos entre las ramas es recomendable descargar un software que nos permita visualizar las ramas en conflicto y poder elegir que cambios se guardan o se descartan, para ello se recomienda descargar [Gitkraken](https://www.gitkraken.com/)

Una vez descarguen e instalen Gitkraken deberan iniciar sesión dentro del programa con una cuenta de Github(Si no tienen una deberan crearla) que es donde esta el repositorio.
__Pasos para agregar un proyecto existente a Gitkraken__
- Una vez abierto el programa, seleccionar la opción __Open a project__ luego en la opción __Clone__, lo primero es buscar la ubicacion donde se guardara el proyecto, en este caso se busca la carpeta de NetbeansProject, luego en la __URL__ deberan poner el enlace al proyecto __https://github.com/jbahamonc/curso-profundizacion.git__ y dar en la opción __Clone the repo!__, con esto ya tienen clonado el repositorio y estara guardado en la carpeta que usa Netbeans, por ultimo seleccionar la opción __Open Now__ que aparece al momento de terminar la clonación del proyecto.

### EL proyecto consta de 4 ramas
- Master : Rama que se lleva a producción
- Dev: Rama donde se unen las ramas de cada integrante y se prueban los nuevos cambios
- JB: Rama de trabajo de Jefferson
- DG: Rama de trabajo de Daniel
- FS: Rama de Farid

### 1. Pasos para iniciar trabajar

Para empezar a trabajar deberan abrir la terminal de git y ubicarse en la ruta del proyecto, luego ubicarse en su respectiva rama las cuales ya estaran creadas, para ello:
~~~
git checkout <Nomre_Rama> // Ej: git checkout jb
~~~

Dentro de cada rama realizan la programación correspondiente, una vez deseen guardar los cambios que han realizado, habra que realizar los siguientes pasos:

- Guardar los cambios que han echo en su rama local a su rama remota en el repositorio.
~~~
git add . // Con esto se agregan todos los cambios realizados
git commit -m "Nombre del mensaje" // Para realizar el commit
git push origin <Nombre_Rama_Personal> // Se suben los cambios locales a la rama remota
~~~

- Mezclar los cambios de mi rama con los de la rama dev
~~~
git checkout dev	//movernos a la rama dev
git pull origin dev	//traigo los ultimos cambios subidos a la rama dev
git checkout <nombre_rama_propia>		//Me muevo de nuevo a mi rama	
git rebase dev		//mover la base de donde nació la rama
~~~
__Nota:__ En este punto pueden aparecer conflictos entre ramas, para ello se debe realizar los siguientes pasos antes de continuar:
 - Si existen conflictos debemos resolverlos utilizando Gitkraken, dentro del programa aparecera una alerta, debemos seleccionarla, automaticamente en el panel derecho aparecera una lista de los archivos que estan en conflicto, se debe seleccionar uno por uno, una vez lo seleccione apareceran los codigos que esten en conflicto, luego se debe seleccionar que cambios se guardan para ello selecciona el checkbox que aparece por cada linea de codigo en la parte izquierda de cada panel, luego se debe dar en guardar para conservar los cambios, esto se hace sucesivamente hasta solucionar todos los problemas.
 - Una vez se termine de solucionar los problemas debemos guardar esos cambios en la rama personal, para ello hacemos:
~~~
git add .
~~~
 - Para confirmar de que no hallan mas conflictos debemos hacer:
~~~
git rebase --continue
~~~
 - Por ultimo debemos guardar esos cambios en la rama dev, para ello:
~~~
git checkout dev  // Nos movemos a dev
git merge <Nombre_Rama>  // Rama de donde se van a absorver los cambios
~~~

### 2. Pasos a realizar al abrir el proyecto antes de empezar a codificar

Descargar los ultimos cambios que esten en la rama dev del repositorio de Github, para ello:
- Se mueven a la rama dev, con el comando:
~~~
git checkout dev
~~~
- Estando en la rama dev, se bajan los cambios
~~~
git pull origin dev
~~~
- Una vez baje los cambios, se mueven a la rama personal y se hace la mezcla con la rama dev
~~~
git checkout <rama_personal>
git rebase dev
~~~
__Nota:__ En este punto se pueden presentar conflictos entre las ramas, para solucionar mire la nota puesta al principio.
