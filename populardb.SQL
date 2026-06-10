INSERT INTO usuario (nombre, correo, rol_sistema, ubicacion, disponibilidad) VALUES
('Juan','juan@gmail.com','Usuario','Medellín',true),
('María','maria@gmail.com','Usuario','Bogotá',true),
('Pedro','pedro@gmail.com','Usuario','Cali',true),
('Ana','ana@gmail.com','Usuario','Medellín',false),
('Luis','luis@gmail.com','Usuario','Pereira',true),
('Sofía','sofia@gmail.com','Usuario','Cali',true),
('Laura','laura@gmail.com','Usuario','Bogotá',true),
('Andrés','andres@gmail.com','Usuario','Medellín',true),
('Camila','camila@gmail.com','Usuario','Barranquilla',false),
('Daniel','daniel@gmail.com','Usuario','Cartagena',true);

INSERT INTO carpeta (nombre_carpeta, fecha_creacion, ruta) VALUES
('Tareas',NOW(),'/Tareas'),
('Fotos',NOW(),'/Fotos'),
('Videos',NOW(),'/Videos'),
('Musica',NOW(),'/Musica'),
('Documentos',NOW(),'/Documentos'),
('Proyectos',NOW(),'/Proyectos'),
('Descargas',NOW(),'/Descargas'),
('Personal',NOW(),'/Personal'),
('Trabajo',NOW(),'/Trabajo'),
('Otros',NOW(),'/Otros');

INSERT INTO archivo (nombre, extension, ruta_actual, fecha_organizacion) VALUES
('archivo1','pdf','/Documentos',NOW()),
('archivo2','jpg','/Fotos',NOW()),
('archivo3','mp4','/Videos',NOW()),
('archivo4','mp3','/Musica',NOW()),
('archivo5','docx','/Tareas',NOW()),
('archivo6','xlsx','/Trabajo',NOW()),
('archivo7','png','/Fotos',NOW()),
('archivo8','zip','/Descargas',NOW()),
('archivo9','pptx','/Proyectos',NOW()),
('archivo10','txt','/Otros',NOW());

INSERT INTO detalle_archivo (tipo_archivo, categoria, extension, carpeta_destino, descripcion) VALUES
('Documento','Estudio','pdf','Documentos','Archivo PDF'),
('Imagen','Fotos','jpg','Fotos','Imagen JPG'),
('Video','Multimedia','mp4','Videos','Video MP4'),
('Audio','Musica','mp3','Musica','Cancion MP3'),
('Documento','Tareas','docx','Tareas','Documento Word'),
('Hoja de calculo','Trabajo','xlsx','Trabajo','Archivo Excel'),
('Imagen','Fotos','png','Fotos','Imagen PNG'),
('Comprimido','Sistema','zip','Descargas','Archivo ZIP'),
('Presentacion','Proyecto','pptx','Proyectos','Presentacion PowerPoint'),
('Texto','Otros','txt','Otros','Archivo de texto');

-- DELETE
DELETE FROM usuario
WHERE nombre = 'Daniel';
-- UPDATE
UPDATE usuario
SET ubicacion = 'Envigado'
WHERE nombre = 'Juan';
-- SELECT
SELECT * FROM usuario;

-- DELETE
DELETE FROM carpeta
WHERE nombre_carpeta = 'Otros';
-- UPDATE
UPDATE carpeta
SET ruta = '/MisDocumentos'
WHERE nombre_carpeta = 'Documentos';
-- SELECT
SELECT * FROM carpeta;

-- DELETE
DELETE FROM archivo
WHERE nombre = 'archivo10';
-- UPDATE
UPDATE archivo
SET extension = 'doc'
WHERE nombre = 'archivo1';
-- SELECT
SELECT * FROM archivo;

-- DELETE
DELETE FROM detalle_archivo
WHERE extension = 'txt';
-- UPDATE
UPDATE detalle_archivo
SET categoria = 'Académico'
WHERE extension = 'pdf';
-- SELECT
SELECT * FROM detalle_archivo;
