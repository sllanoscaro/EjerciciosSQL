
# Preparación Taller N°1 Base de Datos

¡Buenas tardes!, en esta clase pondremos a prueba lo aprendido hasta la fecha y realizaremos ejercicios de acorde al caso presentado.


## Caso: Área de acompañamiento académico del PAAU

En el contexto de la universidad de la Frontera, el área de acompañamiento académico es una parte fundamental para el desarrollo integral de los estudiantes. Dicha área es impulsada por el Programa de Apoyo Académico al estudiante UFRO (PAAU), la cuál tiene como principal objetivo ayudar a los estudiantes a mejorar su rendimiento en asignaturas críticas, es decir, con mayor tasa de reprobación. Esto se realiza mediante diversas tutorías a lo largo del semestre donde los estudiantes pueden inscribirse de manera voluntaria y asistir en un lugar y horario determinado.

Cada estudiante pertenece a una carrera, la cuál a su vez pertenece a una facultad de la universidad.
Además, existen asignaturas pertenecientes a dichas facultades que son apoyadas por una tutoría.
Por último, a los estudiantes que imparten las tutorías se les realiza un pago por su trabajo.

## Diagrama ER

![Screenshot](https://github.com/sllanoscaro/EjerciciosSQL/blob/master/Modelo%20ER.jpeg?raw=true)

## Actividades
A continuación realiza los siguientes ejercicios considerando el caso anterior.

### Actividad 1
Crea la base de datos 'PAAU' y selecciónala para ejecutar queries SQL.

### Actividad 2
Crea las tablas según el diagrama ER respetando la syntaxis de los nombres y los atributos con su respectivo tipo.

### Actividad 3
Copia y ejecuta el script 'Query' del repositorio para insertar los datos en las tablas.
Una vez terminado, verifica que todos los datos se agregaron de forma correcta.

### Actividad 4
Modifica la tabla 'Pago' para agregar el atributo 'tipo_cuenta'. (Puedes definirla como VARCHAR O ENUM)

### Actividad 5
Actualiza los datos de la tabla 'Pago' para el nuevo atributo que acabas de añadir.

### Actividad 6 
Crea una consulta para mostrar el nombre e id de las asignaturas disponibles.

Resultado esperado:
```bash
+---------------+-------------------------+
| id_asignatura | nombre                  |
+---------------+-------------------------+
|             1 | Matemáticas I           |
|             2 | Física I                |
|             3 | Química General         |
|             4 | Biología General        |
|             5 | Derecho Civil I         |
|             6 | Contabilidad I          |
|             7 | Psicología General      |
|             8 | Pedagogía General       |
|             9 | Anatomía Humana         |
|            10 | Fisiología Humana       |
|            11 | Odontología General     |
|            12 | Ingeniería de Software  |
|            13 | Electrónica Básica      |
|            14 | Termodinámica           |
|            15 | Bioquímica              |
|            16 | Derecho Penal I         |
|            17 | Microeconomía           |
|            18 | Sociología              |
|            19 | Enfermería General      |
|            20 | Farmacología            |
+---------------+-------------------------+
```

### Actividad 7
Crea una consulta para mostrar el nombre, primer apellido y matrícula de todos los estudiantes pertenecientes a la 'Facultad de Ingeniería y Ciencias' usando INNER JOIN.

Resultado esperado:
```bash
+-----------+-----------+------------+
| matricula | nombre_1  | apellido_1 |
+-----------+-----------+------------+
| 188087020 | Alejandro | Lagos      |
| 206532856 | Vicente   | Rojas      |
| 172542718 | Carolina  | Briceño    |
| 204742242 | Paulina   | Aliaga     |
| 208416132 | Matilde   | Guerra     |
| 214999378 | Francisca | Pardo      |
| 175742864 | Exequiel  | Mora       |
| 188806353 | Javiera   | Riquelme   |
| 178616179 | José      | Pérez      |
| 205300210 | Ámbar     | Molina     |
| 222214823 | María     | Zapata     |
| 172119502 | Víctor    | Delgado    |
| 178231518 | Felipe    | González   |
| 187818300 | Scarlette | Ruiz       |
| 201095562 | Noelia    | Rivas      |
+-----------+-----------+------------+
```

### Actividad 8
Crea una consulta para mostrar el nombre e id de todas las carreras pertenecientes a la 'Facultad de Ciencias Agropecuarias y Medioambiente' usando INNER JOIN.

Resultado esperado:
```bash
+------------+----------------+
| id_carrera | nombre         |
+------------+----------------+
|          7 | AGRONOMÍA      |
|          8 | BIOTECNOLOGÍA  |
+------------+----------------+
```

### Actividad 9
Crea una consulta para mostrar el nombre, primer apellido y matrícula de los estudiantes que ejercen como tutor en alguna tutoría usando INNER JOIN.

Resultado esperado:
```bash
+-----------+-----------+------------+
| matricula | nombre_1  | apellido_1 |
+-----------+-----------+------------+
| 172119502 | Víctor    | Delgado    |
| 172542718 | Carolina  | Briceño    |
| 175742864 | Exequiel  | Mora       |
| 183469551 | Vicente   | Figueroa   |
| 186430577 | Johana    | Silva      |
| 201095562 | Noelia    | Rivas      |
| 204742242 | Paulina   | Aliaga     |
| 208894492 | Claudia   | Jiménez    |
| 214999378 | Francisca | Pardo      |
| 220655843 | María     | Silva      |
+-----------+-----------+------------+
```

### Actividad 10
Crea una consulta para mostrar el nombre, primer apellido y matrícula de todos los estudiantes inscritos a la tutoría de la asignatura de 'Física I' usando INNER JOIN.

Resultado esperado:
```bash
+-----------+----------+------------+
| matricula | nombre_1 | apellido_1 |
+-----------+----------+------------+
| 209044873 | Regina   | Riffo      |
| 222214823 | María    | Zapata     |
| 213469077 | Norma    | Gallegos   |
| 194410490 | Isabel   | Rozas      |
| 206532856 | Vicente  | Rojas      |
+-----------+----------+------------+
```

### Actividad 11
Crea una consulta para mostrar todos los pagos realizados en los últimos 4 meses.

Resultado esperado:
```bash
+---------+------------+-------------+-----------------+
| id_pago | fecha_pago | monto_total | matricula_tutor |
+---------+------------+-------------+-----------------+
|       6 | 2024-07-15 |       50000 |       208894492 |
|       7 | 2024-08-15 |       20000 |       204742242 |
|       8 | 2024-09-15 |       10000 |       172542718 |
|       9 | 2024-09-15 |       15000 |       175742864 |
+---------+------------+-------------+-----------------+
```

### Actividad 12
Crea una consulta utilizando GROUP BY e INNER JOIN que muestre la cantidad de tutorías a la que está escrito cada estudiante.

Resultado esperado:
```bash
+-----------+------------+-------------------+
| nombre_1  | apellido_1 | cantidad_tutorias |
+-----------+------------+-------------------+
| Vicente   | Rojas      |                 3 |
| Javier    | Lobos      |                 3 |
| Patricia  | Ahumada    |                 3 |
| Mariana   | Medina     |                 3 |
| Haydée    | Avendaño   |                 3 |
| Jeannette | Soto       |                 3 |
| Isabel    | Rozas      |                 3 |
| Diego     | Ramos      |                 2 |
| Scarlette | Ruiz       |                 2 |
| Ana       | Leyton     |                 2 |
| Damaris   | González   |                 2 |
| Regina    | Riffo      |                 2 |
| José      | Figueroa   |                 2 |
| Cristofer | Silva      |                 1 |
| José      | González   |                 1 |
| Camila    | Cruz       |                 1 |
| Norma     | Gallegos   |                 1 |
| Ángel     | Santander  |                 1 |
| Solange   | Guzmán     |                 1 |
| Antonella | Barraza    |                 1 |
| Judith    | Iturra     |                 1 |
| Alexis    | Cabezas    |                 1 |
| Benjamín  | Carreño    |                 1 |
| Leonel    | Bugueño    |                 1 |
| Carla     | García     |                 1 |
| Carlos    | González   |                 1 |
| María     | Zapata     |                 1 |
| Liam      | Faúndez    |                 1 |
| Ámbar     | Molina     |                 1 |
| Luis      | Farías     |                 1 |
+-----------+------------+-------------------+
```

### Actividad 13
Implementa una consulta que tenga sentido en el contexto del caso utilizando el operador IN.

## Entrega
Una vez terminada las actividades, crea un archivo pdf y adjunta las capturas de pantalla para cada ítem.
Finalmente, cambia el nombre del archivo con el formato apellido-nombre.pdf (Ej: sánchez-alexis.pdf)

¡Éxito en el taller!
