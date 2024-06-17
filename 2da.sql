-- Creacion de la base de datos
CREATE DATABASE empresa_desarrollo_software;
USE empresa_desarrollo_software;

-- Tabla auditoria
DROP TABLE IF EXISTS audit_recursos;
CREATE TABLE audit_recursos (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    id_recurso INT,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    id_seniority INT,
    id_proyecto INT,
    id_rol INT,
    id_gerente INT,
    id_equipo INT,
    id_skill INT,
    id_genero INT,
    id_provincia INT,
    accion VARCHAR(255),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Tabla clientes
DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO clientes VALUES (NULL, 'ICBC'), (NULL, 'Banco Galicia'), (NULL, 'Banco Frances'), (NULL, 'Toyota'), (NULL, 'Chevrolet'), (NULL, 'OSDE'), (NULL, 'Banco Provincia'), (NULL, 'Banco Macro'), (NULL, 'Banco Ciudad'), (NULL, 'Aeropuertos Argentina'), (NULL, 'Banco Comafi'), (NULL, 'OMINT S.A. de Servicios'), (NULL, 'Origenes Seguros S.A.'), (NULL, 'Metlife Servicios S.A.'), (NULL, 'Car One S.A.');

-- Tabla rol
DROP TABLE IF EXISTS rol;
CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO rol VALUES (NULL, 'Desarrollador'),(NULL, 'Analista Funcional'),(NULL, 'Tester'),(NULL, 'Project Manager'),(NULL, 'DevOps Engineer'),(NULL, 'UI/UX Designer'),(NULL, 'Database Administrator'),(NULL, 'Product Owner'),(NULL, 'Scrum Master'),(NULL, 'Business Analyst'),(NULL, 'System Architect'),(NULL, 'QA Engineer'),(NULL, 'Technical Support'),(NULL, 'Network Engineer'),(NULL, 'Security Specialist');

-- Tabla seniority
DROP TABLE IF EXISTS seniority;
CREATE TABLE seniority (
    id_seniority INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO seniority VALUES (NULL, 'Trainee'), (NULL, 'Junior'), (NULL, 'Semi Senior'), (NULL, 'Senior');


-- Tabla provincias
DROP TABLE IF EXISTS provincias;
CREATE TABLE provincias (
    id_provincia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

INSERT INTO provincias VALUES
(NULL, 'Buenos Aires'),(NULL, 'Catamarca'),(NULL, 'Chaco'),(NULL, 'Chubut'),(NULL, 'Córdoba'),(NULL, 'Corrientes'),(NULL, 'Entre Ríos'),(NULL, 'Formosa'),(NULL, 'Jujuy'),(NULL, 'La Pampa'),(NULL, 'La Rioja'),(NULL, 'Mendoza'),(NULL, 'Misiones'),(NULL, 'Neuquén'),(NULL, 'Río Negro'),(NULL, 'Salta'),(NULL, 'San Juan'),(NULL, 'San Luis'),(NULL, 'Santa Cruz'),(NULL, 'Santa Fe'), (NULL, 'Santiago del Estero'), (NULL, 'Tierra del Fuego'), (NULL, 'Tucumán');


-- Tabla skills
DROP TABLE IF EXISTS skills;
CREATE TABLE skills (
    id_skill INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO skills VALUES
(NULL, 'React'),(NULL, 'Angular'),(NULL, 'Vue.js'),(NULL, 'Node.js'),(NULL, 'Python'),(NULL, 'Java'),(NULL, 'C#'),(NULL, 'PHP'),(NULL, 'Ruby on Rails'),(NULL, 'Swift'),(NULL, 'Kotlin'),(NULL, 'SQL'),(NULL, 'NoSQL'),(NULL, 'Docker'),(NULL, 'Kubernetes'),(NULL, 'AWS'),(NULL, 'Azure'),(NULL, 'Google Cloud'),(NULL, 'DevOps'),(NULL, 'Machine Learning'),(NULL, 'Data Analysis'),(NULL, 'Cybersecurity'),(NULL, 'UI/UX Design'),(NULL, 'Manual Testing'),(NULL, 'Automated Testing'),(NULL, 'Quality Assurance'),(NULL, 'Test Planning'),(NULL, 'Test Case Design'),(NULL, 'Bug Tracking'),(NULL, 'Requirement Analysis'),(NULL, 'Process Modelling'),(NULL, 'Functional Specification'),(NULL, 'User Stories'),(NULL, 'Use Case Analysis');


-- Tabla proveedores
DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO proveedores VALUES
(NULL, 'ElectroSuministros S.A.'),
(NULL, 'TechSoluciones Ltda.'),
(NULL, 'InnovaTech Corporation'),
(NULL,'Suministros Globales S.A.'),
(NULL,'MegaEquipos Industriales'),
(NULL,'Innovación y Proveeduría'),
(NULL,'Soluciones Integradas S.A.'),
(NULL,'Sistemas Avanzados Ltda.'),
(NULL,'Equipos y Servicios Globales'),
(NULL,'Mundo Industrial S.A.'),
(NULL,'Innovaciones Tecnológicas Ltda.'),
(NULL,'Equipos Especializados S.A.'),
(NULL,'Proveedores Globales S.A.'),
(NULL,'Suministros y Soluciones Técnicas'),
(NULL,'Tecnología Avanzada S.A.'),
(NULL,'Soluciones Industriales Ltda.'),
(NULL,'Servicios de Equipamiento Global'),
(NULL,'Equipos y Tecnología Moderna'),
(NULL,'Suministros Industriales Integrados'),
(NULL,'Soluciones en Equipos Industriales');


-- Tabla estadoProyecto
DROP TABLE IF EXISTS estadoProyecto;
CREATE TABLE estadoProyecto (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO estadoProyecto VALUES (NULL, 'Pendiente'), (NULL, 'En curso'), (NULL, 'Finalizado');


-- Tabla tipoProyecto
DROP TABLE IF EXISTS tipoProyecto;
CREATE TABLE tipoProyecto (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO tipoProyecto VALUES (NULL, 'Contractor'), (NULL, 'Perfilado'), (NULL, 'Llave en mano'), (NULL, 'Servicios');


-- Tabla genero
DROP TABLE IF EXISTS genero;
CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

INSERT INTO genero VALUES (NULL, 'Femenino'), (NULL, 'Masculino'), (NULL, 'X');


-- Tabla gerentes
DROP TABLE IF EXISTS gerentes;
CREATE TABLE gerentes (
    id_gerente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL
);

INSERT INTO gerentes VALUES
(NULL, 'Juan', 'Gómez'),
(NULL, 'María', 'López'),
(NULL, 'Carlos', 'Martínez'),
(NULL, 'Ana', 'García'),
(NULL, 'Pedro', 'Hernández'),
(NULL, 'Laura', 'Díaz'),
(NULL, 'Jorge', 'Pérez'),
(NULL, 'Sofía', 'Gutiérrez'),
(NULL, 'Luis', 'Torres'),
(NULL, 'Carmen', 'Ruiz'),
(NULL, 'Diego', 'Sánchez'),
(NULL, 'Valentina', 'Ramírez'),
(NULL, 'Andrés', 'Moreno'),
(NULL, 'Gabriela', 'Jiménez'),
(NULL, 'Fernando', 'Álvarez'),
(NULL, 'Isabel', 'Vargas'),
(NULL, 'Miguel', 'Castro'),
(NULL, 'Paula', 'Flores'),
(NULL, 'Ricardo', 'Ortega'),
(NULL, 'Elena', 'Góngora');


-- Tabla equipos
DROP TABLE IF EXISTS equipos;
CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    descripcion VARCHAR(255) NOT NULL,
	FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

INSERT INTO equipos VALUES
(NULL, 3, 'Dell Inspiron 15'),
(NULL, 6, 'HP Pavilion x360'),
(NULL, 6, 'Lenovo ThinkPad X1 Carbon'),
(NULL, 9, 'Apple MacBook Air'),
(NULL, 15, 'Acer Predator Helios 300'),
(NULL, 13, 'Asus ROG Zephyrus G14'),
(NULL, 1, 'Microsoft Surface Laptop 4'),
(NULL, 1, 'Samsung Galaxy Book Pro'),
(NULL, 4, 'Huawei MateBook X Pro'),
(NULL, 10, 'Google Pixelbook Go'),
(NULL, 19, 'MSI GS66 Stealth'),
(NULL, 2, 'Razer Blade 15'),
(NULL, 3, 'Alienware m15 R6'),
(NULL, 10, 'LG Gram 17'),
(NULL, 18, 'Xiaomi Mi Notebook Pro'),
(NULL, 8, 'Sony VAIO S'),
(NULL, 4, 'Toshiba Satellite Pro'),
(NULL, 7, 'Fujitsu Lifebook U7'),
(NULL, 19, 'Panasonic Toughbook CF-33'),
(NULL, 7, 'Gateway Creator Series');


-- Tabla proyectos
DROP TABLE IF EXISTS proyectos;
CREATE TABLE proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_gerente INT,
    id_tipo INT,
    id_estado INT,
    descripcion VARCHAR(255) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_gerente) REFERENCES gerentes(id_gerente),
    FOREIGN KEY (id_tipo) REFERENCES tipoProyecto(id_tipo),
    FOREIGN KEY (id_estado) REFERENCES estadoProyecto(id_estado)
);

INSERT INTO proyectos VALUE
(NULL, 15, 20, 4, 3, 'Desarrollo de sistema de gestión', '2023-02-15', '2023-06-30'),
(NULL, 8, 2, 2, 2, 'Implementación de plataforma de comercio electrónico', '2023-03-10', NULL),
(NULL, 9, 19, 3, 2, 'Rediseño de infraestructura de red', '2023-04-05', NULL),
(NULL, 13, 4, 1, 2, 'Desarrollo de aplicación móvil', '2023-05-20', NULL),
(NULL, 1, 15, 2, 1, 'Migración a la nube', NULL, NULL),
(NULL, 5, 6, 3, 2, 'Implementación de sistema ERP', '2023-07-15', NULL),
(NULL, 3, 17, 1, 1, 'Desarrollo de plataforma educativa online', NULL, NULL),
(NULL, 2, 1, 2, 3, 'Optimización de base de datos', '2023-09-01', '2024-03-15'),
(NULL, 14, 3, 4, 2, 'Diseño y desarrollo de página web corporativa', '2023-10-05', NULL),
(NULL, 1, 10, 4, 2, 'Despliegue de sistema de seguridad informática', '2023-11-15', NULL),
(NULL, 6, 11, 2, 1, 'Actualización de infraestructura de TI', NULL, NULL),
(NULL, 14, 8, 2, 3, 'Desarrollo de aplicación de gestión de proyectos', '2024-01-10', '2024-05-15'),
(NULL, 8, 13, 1, 2, 'Implementación de sistema de CRM', '2024-02-15', NULL),
(NULL, 4, 5, 2, 2, 'Desarrollo de plataforma de marketing digital', '2024-03-01', NULL),
(NULL, 5, 15, 3, 2, 'Rediseño de sitio web de comercio electrónico', '2024-04-05', NULL),
(NULL, 10, 6, 4, 1, 'Migración a nueva infraestructura de servidores', NULL, NULL),
(NULL, 12, 7, 4, 2, 'Desarrollo de aplicación de realidad aumentada', '2024-03-15', NULL),
(NULL, 15, 18, 3, 3, 'Implementación de sistema de control de inventario', '2022-07-01', '2023-10-29'),
(NULL, 9, 9, 1, 1, 'Optimización de rendimiento de aplicaciones', NULL, NULL),
(NULL, 1, 20, 2, 2, 'Desarrollo de plataforma de análisis de datos', '2024-02-05', NULL),
(NULL, 11, 2, 3, 1, 'Proyecto piloto de inteligencia artificial', NULL, NULL),
(NULL, 2, 3, 4, 2, 'Desarrollo inicial de sistema de gestión de contenidos', '2023-04-15', NULL),
(NULL, 13, 12, 2, 2, 'Implementación de sistema de gestión de relaciones con clientes', '2023-05-20', NULL),
(NULL, 4, 5, 2, 1, 'Desarrollo de aplicación de realidad virtual', NULL, NULL),
(NULL, 15, 6, 1, 2, 'Optimización de infraestructura de red', '2023-08-01', NULL),
(NULL, 6, 7, 1, 3, 'Implementación de sistema de gestión de proyectos', '2023-09-10', '2024-02-27'),
(NULL, 8, 8, 3, 1, 'Desarrollo de plataforma de e-learning', NULL, NULL),
(NULL, 6, 9, 1, 1, 'Migración a nueva plataforma de correo electrónico', NULL, NULL),
(NULL, 9, 20, 4, 3, 'Optimización de sistema de almacenamiento de datos', '2024-01-01', '2024-09-10'),
(NULL, 7, 1, 3, 1, 'Desarrollo de aplicación móvil de comercio electrónico', NULL, NULL),
(NULL, 1, 12, 1, 2, 'Implementación de sistema de gestión de eventos', '2024-03-20', NULL),
(NULL, 11, 3, 2, 2, 'Desarrollo de plataforma de gestión financiera', '2024-04-30', NULL),
(NULL, 7, 14, 2, 1, 'Rediseño de interfaz de usuario de aplicación móvil', NULL, NULL),
(NULL, 4, 11, 1, 2, 'Implementación de sistema de análisis de datos en tiempo real', '2024-03-10', NULL),
(NULL, 15, 16, 4, 2, 'Desarrollo de plataforma de gestión logística', '2024-05-15', NULL);


-- Tabla recursos
DROP TABLE IF EXISTS recursos;
CREATE TABLE recursos (
    id_recurso INT AUTO_INCREMENT PRIMARY KEY,
    id_seniority INT,
    id_rol INT,
    id_gerente INT,
    id_proyecto INT,
    id_equipo INT,
    id_provincia INT,
    id_genero INT,
    id_skill INT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_seniority) REFERENCES seniority(id_seniority),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_gerente) REFERENCES gerentes(id_gerente),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
    FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo),
	FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia),
	FOREIGN KEY (id_genero) REFERENCES genero(id_genero),
	FOREIGN KEY (id_skill) REFERENCES skills(id_skill)
);

INSERT INTO recursos VALUES
(NULL, 4, 15, 20, 35, 20, 1, 2, 25, 'Juan', 'González'),
(NULL, 4, 2, 2, 2, 2, 1, 1, 24, 'María', 'López'),
(NULL, 2, 13, 19, 13, 3, 1, 2, 1, 'Carlos', 'Martínez'),
(NULL, 1, 1, 3, 4, 14, 20, 1, 12, 'Ana', 'García'),
(NULL, 3, 1, 5, 5, 5, 21, 2, 2, 'Pedro', 'Hernández'),
(NULL, 4, 15, 16, 19, 6, 16, 1, 1, 'Laura', 'Díaz'),
(NULL, 2, 13, 17, 17, 7, 7, 2, 2, 'Jorge', 'Pérez'),
(NULL, 2, 14, 8, 8, 8, 1, 2, 22, 'Sofía', 'Gutiérrez'),
(NULL, 1, 9, 9, 9, 19, 1, 1, 1, 'Luis', 'Torres'),
(NULL, 2, 10, 20, 10, 10, 10, 2, 1, 'Carmen', 'Ruiz'),
(NULL, 4, 11, 1, 11, 11, 1, 2, 3, 'Diego', 'Sánchez'),
(NULL, 1, 2, 12, 12, 2, 12, 1, 21, 'Valentina', 'Ramírez'),
(NULL, 1, 8, 3, 13, 13, 3, 2, 3, 'Andrés', 'Moreno'),
(NULL, 2, 9, 7, 14, 4, 1, 1, 1, 'Gabriela', 'Jiménez'),
(NULL, 3, 5, 17, 25, 6, 15, 2, 2, 'Fernando', 'Álvarez'),
(NULL, 2, 6, 6, 26, 9, 6, 3, 1, 'Isabel', 'Vargas'),
(NULL, 3, 6, 15, 17, 19, 7, 2, 2, 'Miguel', 'Castro'),
(NULL, 3, 4, 8, 8, 7, 1, 1, 3, 'Paula', 'Flores'),
(NULL, 4, 9, 19, 33, 19, 8, 2, 2, 'Ricardo', 'Ortega'),
(NULL, 1, 15, 12, 20, 2, 20, 1, 1, 'Elena', 'Góngora'),
(NULL, 2, 1, 13, 21, 1, 1, 3, 3, 'Lucas', 'Rodríguez'),
(NULL, 2, 2, 12, 12, 8, 22, 1, 1, 'Ana', 'Martínez'),
(NULL, 3, 1, 3, 23, 13, 4, 2, 2, 'Diego', 'Gómez'),
(NULL, 1, 14, 11, 14, 19, 9, 1, 1, 'Laura', 'Sánchez'),
(NULL, 4, 5, 3, 25, 5, 1, 3, 3, 'Santiago', 'Pérez'),
(NULL, 4, 4, 2, 16, 16, 1, 1, 1, 'Carolina', 'López'),
(NULL, 2, 7, 4, 27, 7, 1, 2, 2, 'Martín', 'Gutiérrez'),
(NULL, 3, 13, 18, 33, 8, 1, 1, 1, 'Valeria', 'Martín'),
(NULL, 1, 9, 9, 9, 9, 6, 2, 2, 'Francisco', 'Hernández'),
(NULL, 1, 10, 20, 35, 10, 4, 1, 1, 'Camila', 'Fernández');


-- VISTAS
-- vistas para obtener todos los datos de los recursos

CREATE OR REPLACE VIEW v_informacion_recursos AS
SELECT r.id_recurso, r.nombre, r.apellido, p.descripcion AS proyecto, s.descripcion AS seniority,
	ro.descripcion AS rol, g.apellido AS gerente, e.descripcion AS equipo, pr.nombre AS provincia, 
    sx.descripcion AS genero, sk.descripcion AS skill
FROM
    recursos r
    LEFT JOIN proyectos p ON r.id_proyecto = p.id_proyecto
    LEFT JOIN seniority s ON r.id_seniority = s.id_seniority
    LEFT JOIN rol ro ON r.id_rol = ro.id_rol
    LEFT JOIN gerentes g ON r.id_gerente = g.id_gerente
    LEFT JOIN equipos e ON r.id_equipo = e.id_equipo
    LEFT JOIN provincias pr ON r.id_provincia = pr.id_provincia
    LEFT JOIN genero sx ON r.id_genero = sx.id_genero
    LEFT JOIN skills sk ON r.id_skill = sk.id_skill;

select * from v_informacion_recursos;



-- vista de proyectos por clientes

CREATE OR REPLACE VIEW v_proyectos_por_cliente AS
SELECT p.id_proyecto, c.descripcion AS cliente, p.descripcion AS proyecto, p.fecha_inicio, 
	p.fecha_fin, ep.descripcion AS estado
FROM proyectos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN estadoProyecto ep ON p.id_estado = ep.id_estado;

select * from  v_proyectos_por_cliente
ORDER BY cliente;

-- vistas de equipos por proovedores

CREATE  OR REPLACE VIEW v_equipos_por_proveedor AS
SELECT e.id_equipo, e.descripcion AS equipo, p.descripcion AS proveedor
FROM equipos e
INNER JOIN proveedores p ON e.id_proveedor = p.id_proveedor;

select * from v_equipos_por_proveedor ;


-- FUNCIONES

-- funcion para calcular duracion de proyectos finalizados

DELIMITER //

CREATE FUNCTION calcular_duracion_proyecto(id_proyecto INT)
RETURNS INT
NO SQL
BEGIN
    DECLARE duracion INT;
    DECLARE estado INT;
    
    SELECT p.id_estado
    INTO estado
    FROM proyectos p
    WHERE p.id_proyecto = id_proyecto
    LIMIT 1;
    IF estado < 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El proyecto aun no finalizó';
    END IF;

    SELECT DATEDIFF(p.fecha_fin, p.fecha_inicio)
    INTO duracion
    FROM proyectos p
    WHERE p.id_proyecto = id_proyecto
    LIMIT 1;

    RETURN duracion;
END;
//

DELIMITER ;

SELECT calcular_duracion_proyecto(2) AS duracion;

-- calculo cantidad de recursos por provincia

DELIMITER //

CREATE FUNCTION recursos_por_provincia(p_id_provincia INT)
RETURNS INT
NO SQL
BEGIN
    DECLARE cantidad_recursos INT;
    SELECT COUNT(*)
    INTO cantidad_recursos
    FROM recursos
    WHERE id_provincia = p_id_provincia;

    RETURN cantidad_recursos;
END;
//
DELIMITER ;

select recursos_por_provincia(1)

-- devuelve cantidad de recursos por proyecto

DELIMITER //

CREATE FUNCTION recursos_por_proyecto(p_id_proyecto INT)
RETURNS INT
NO SQL
BEGIN
    DECLARE recursos INT;
    SELECT COUNT(*)
    INTO recursos
    FROM recursos
    WHERE id_proyecto = p_id_proyecto;

    RETURN recursos;
END;
//
DELIMITER ;

select recursos_por_proyecto(10)


-- STORED PROCEDURES
-- se llama desde un trigger, setea el id_proyecto de un recurso cuando el mismo esta finalizado

DELIMITER //

CREATE PROCEDURE liberar_recursos_desde_proyecto(p_id_proyecto INT)
BEGIN
    UPDATE recursos
    SET id_proyecto = NULL
    WHERE id_proyecto = p_id_proyecto;
END;
//
DELIMITER ;

-- actualizo el id_proyecto de un recurso

DELIMITER //

CREATE PROCEDURE asignar_recurso_a_proyecto (
    IN p_id_recurso INT,
    IN p_id_proyecto INT
)
BEGIN
    DECLARE recurso_asignado INT;
    SELECT id_proyecto INTO recurso_asignado
    FROM recursos
    WHERE id_recurso = p_id_recurso;
    
    IF recurso_asignado IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El recurso ya está asignado a otro proyecto.';
    ELSE
        UPDATE recursos SET id_proyecto = p_id_proyecto WHERE id_recurso = p_id_recurso;
    END IF;
END
//
DELIMITER ;


-- TRIGGERS

-- Guarda el historial de cambios de la tabla recursos

DELIMITER //

CREATE TRIGGER tr_audit_recursos_update
AFTER UPDATE ON recursos
FOR EACH ROW
BEGIN
    INSERT INTO audit_recursos (id_recurso, nombre, apellido, id_seniority, id_proyecto, id_rol, id_gerente, 
    id_equipo, id_skill, id_genero, id_provincia, accion)
    VALUES (OLD.id_recurso, OLD.nombre, OLD.apellido, OLD.id_seniority, OLD.id_proyecto, OLD.id_rol, OLD.id_gerente, OLD.id_equipo, OLD.id_skill, OLD.id_genero, OLD.id_provincia, 'UPDATE ANTES');
    
    INSERT INTO Audit_Recursos (id_recurso, nombre, apellido, id_seniority, id_proyecto, id_rol, id_gerente, 
    id_equipo, id_skill, id_genero, id_provincia, accion)
    VALUES (NEW.id_recurso, NEW.nombre, NEW.apellido, NEW.id_seniority, NEW.id_proyecto, NEW.id_rol, NEW.id_gerente, NEW.id_equipo, NEW.id_skill, NEW.id_genero, NEW.id_provincia, 'UPDATE DESPUES');
END //

DELIMITER ;

-- Actualiza estado del proyecto al agregar la fecha de finalizacion

DELIMITER //

CREATE TRIGGER actualizar_estado_proyecto
BEFORE UPDATE ON proyectos
FOR EACH ROW
BEGIN
    IF NEW.fecha_fin IS NOT NULL AND OLD.fecha_fin IS NULL THEN
        SET NEW.id_estado = 3;
        
    END IF;
END;
//
DELIMITER ;

-- cuando un proyecto cambia a estado 'finalizado' los recursos asignados al mismo quedan con su id_proyecto nulo

DELIMITER //

CREATE TRIGGER liberar_recursos_despues_de_finalizado
AFTER UPDATE ON proyectos
FOR EACH ROW
BEGIN
    IF NEW.id_estado = 3 AND OLD.id_estado != 3 THEN
        CALL liberar_recursos_desde_proyecto(NEW.id_proyecto);
    END IF;
END;
//
DELIMITER ;


