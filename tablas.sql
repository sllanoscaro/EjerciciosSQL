CREATE TABLE Facultad (
    id_facultad INT PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,
    link_web VARCHAR(50)
);

CREATE TABLE Carrera (
    id_carrera INT PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,

    id_facultad INT,
    FOREIGN KEY (id_facultad) REFERENCES Facultad(id_facultad)
);

CREATE TABLE Estudiante (
    matricula INT PRIMARY KEY,
    nombre_1 VARCHAR(50) NOT NULL,
    apellido_1 VARCHAR(50) NOT NULL,
    apellido_2 VARCHAR(50),
    sexo CHAR(1) NOT NULL,
    telefono INT,
    correo VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,

    id_carrera INT, 
    FOREIGN KEY (id_carrera) REFERENCES Carrera(id_carrera)
);

CREATE TABLE Asignatura (
    id_asignatura INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    codigo VARCHAR(20) NOT NULL,
    creditos INT,

    id_facultad INT,
    FOREIGN KEY (id_facultad) REFERENCES Facultad(id_facultad)
);

CREATE TABLE Pago (
    id_pago INT PRIMARY KEY,
    fecha_pago DATE NOT NULL,
    monto_total INT NOT NULL,

    matricula_tutor INT,
    FOREIGN KEY (matricula_tutor) REFERENCES Estudiante(matricula)
);

CREATE TABLE Tutoria (
    id_tutoria INT PRIMARY KEY,
    periodo INT NOT NULL,
    sala VARCHAR(50),

    matricula_tutor INT,
    id_asignatura INT,
    FOREIGN KEY (matricula_tutor) REFERENCES Estudiante(matricula),
    FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura)
);

CREATE TABLE alumnos_inscritos_tutoria (
    matricula_alumno INT,
    id_tutoria INT,
    FOREIGN KEY (matricula_alumno) REFERENCES Estudiante(matricula),
    FOREIGN KEY (id_tutoria) REFERENCES Tutoria(id_tutoria)
);
