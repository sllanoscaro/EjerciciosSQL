
# Preparación Taller N°1 Base de Datos

¡Buenas tardes!, en esta clase pondremos a prueba lo aprendido hasta la fecha y realizaremos ejercicios de acorde al caso presentado.


## Caso: Área de acompañamiento académico del PAAU

En el contexto de la universidad de la Frontera, el área de acompañamiento académico es una parte fundamental para el desarrollo integral de los estudiantes. Dicha área es impulsada por el Programa de Apoyo Académico al estudiante UFRO (PAAU), la cuál tiene como principal objetivo ayudar a los estudiantes a mejorar su rendimiento en asignaturas críticas, es decir, con mayor tasa de reprobación. Esto se realiza mediante diversas tutorías a lo largo del semestre donde los estudiantes pueden inscribirse de manera voluntaria y asistir en un lugar y horario determinado.

Cada estudiante pertenece a una carrera, la cuál a su vez pertenece a una facultad de la universidad.
Además, existen asignaturas pertenecientes a dichas facultades que son apoyadas por una tutoría.
Por último, a los estudiantes que imparten las tutorías se les realiza un pago por su trabajo

A continuación se presenta el diagrama ER del caso.

## Diagrama ER

![Screenshot](https://github.com/sllanoscaro/EjerciciosSQL/blob/master/Modelo%20ER.jpeg?raw=true)

## Actividades
A continuación realicen los siguientes ejercicios teniendo en mente el caso anterior.

### Actividad 1
Crea la base de datos 'PAAU' y selecciónala para ejecutar queries SQL.

### Actividad 2
Crea las tablas según el diagrama ER respetando la syntaxis de los nombres y los atributos con su respectivo tipo.

### Actividad 3
Copia y ejecuta el script 'Query' del repositorio para insertar los datos en las tablas.
Una vez terminado, verifique que todos los datos se agregaron de forma correcta.

### Actividad 4
Modifica la tabla 'Estudiante' para agregar el atributo 'fecha_nac'.

### Actividad 5
Actualiza los datos de la tabla 'Estudiante' para el nuevo atributo que acabas de añadir.

### Actividad 6 
Crea una consulta para mostrar todos los datos de la tabla 'Asignatura'.

### Actividad 7
Crea una consulta para mostrar a todos los estudiantes pertenecientes a la 'Facultad de Ingeniería y Ciencias' usando INNER JOIN.

### Actividad 8
Crea una consulta para mostrar todas las carreras pertenecientes a la 'Facultad de Ciencias Agropecuarias y Medioambiente' usando INNER JOIN.

### Actividad 9
Crea una consulta para mostrar el nombre de los estudiantes que ejercen como tutor en alguna tutoría usando INNER JOIN.

### Actividad 10
Crea una consulta para mostrar a todos los estudiantes inscritos a la tutoría de la asignatura de 'Física III' usando INNER JOIN.

### Actividad 11
Crea una consulta para mostrar todos los pagos realizados en los últimos 7 meses.

### Actividad 12
Crea una consulta utilizando GROUP BY que muestre la cantidad de tutorías a la que están escritos los estudiantes.

### Actividad 13
Crea una consulta que devuelva las asignaturas que se imparten el primer y tercer bimestre utilizando IN.

## Entrega
Una vez terminada las actividades, crea un archivo pdf y adjunta las capturas de pantalla para cada ítem.
Finalmente, cambia el nombre del archivo con el formato apellido-nombre.pdf (Ej: llanos-sebastian.pdf)

¡Éxito en el taller!

