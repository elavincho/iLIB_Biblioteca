CREATE DATABASE IF NOT EXISTS ilib;
USE ilib;

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    last_name_p VARCHAR(50) NOT NULL,
    last_name_m VARCHAR(50),
    domicilio VARCHAR(100) NOT NULL,
    tel VARCHAR(15) NOT NULL,
    sanctions INT(2) NOT NULL DEFAULT 0,
    sanc_money INT(15) NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    edit VARCHAR(50) NOT NULL,
    lang VARCHAR(30) NOT NULL,
    pages INT NOT NULL,
    description TEXT,
    ejemplares INT NOT NULL DEFAULT 1,
    stock INT NOT NULL DEFAULT 1,
    available INT NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS lendings (
    lending_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    date_out DATE NOT NULL,
    date_return DATE DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


INSERT INTO books (title, date, author, category, edit, lang, pages, description, ejemplares, stock, available) VALUES
('Don Quijote de la Mancha', '1605-01-16', 'Miguel de Cervantes', 'Novela clásica', 'Francisco de Robles', 'Español', 1072, 'Las aventuras de un hidalgo que enloquece leyendo libros de caballerías', 120, 120, 120),
('1984', '1949-06-08', 'George Orwell', 'Ciencia ficción', 'Secker & Warburg', 'Inglés', 328, 'Una distopía sobre un régimen totalitario', 80, 80, 80),
('El código Da Vinci', '2003-03-18', 'Dan Brown', 'Suspense', 'Doubleday', 'Inglés', 454, 'Un thriller sobre secretos ocultos en obras de arte', 150, 150, 150),
('El Principito', '1943-04-06', 'Antoine de Saint-Exupéry', 'Literatura infantil', 'Reynal & Hitchcock', 'Francés', 96, 'Un cuento poético sobre un niño que vive en un asteroide', 200, 200, 200),
('La sombra del viento', '2001-04-01', 'Carlos Ruiz Zafón', 'Novela gótica', 'Planeta', 'Español', 487, 'Un misterio literario en la Barcelona de posguerra', 60, 60, 60),
('Harry Potter y la piedra filosofal', '1997-06-26', 'J.K. Rowling', 'Fantasía', 'Bloomsbury', 'Inglés', 223, 'El comienzo de la saga del joven mago Harry Potter', 300, 300, 300),
('El alquimista', '1988-06-01', 'Paulo Coelho', 'Novela filosófica', 'HarperCollins', 'Portugués', 208, 'La historia de un pastor que busca su tesoro personal', 180, 180, 180),
('Orgullo y prejuicio', '1813-01-28', 'Jane Austen', 'Romance', 'T. Egerton', 'Inglés', 279, 'La historia de Elizabeth Bennet y el señor Darcy', 70, 70, 70),
('Los juegos del hambre', '2008-09-14', 'Suzanne Collins', 'Ciencia ficción', 'Scholastic', 'Inglés', 374, 'Una competencia mortal en un futuro distópico', 130, 130, 130),
('El señor de los anillos', '1954-07-29', 'J.R.R. Tolkien', 'Fantasía épica', 'Allen & Unwin', 'Inglés', 1178, 'La épica aventura para destruir el Anillo Único', 250, 250, 250),
('El retrato de Dorian Gray', '1890-06-20', 'Oscar Wilde', 'Novela gótica', 'Lippincott\'s', 'Inglés', 254, 'Un hombre permanece joven mientras su retrato envejece', 40, 40, 40),
('Rayuela', '1963-06-28', 'Julio Cortázar', 'Novela experimental', 'Sudamericana', 'Español', 736, 'Una novela que puede leerse en múltiples órdenes', 350, 350, 350),
('La metamorfosis', '1915-10-15', 'Franz Kafka', 'Literatura absurda', 'Kurt Wolff', 'Alemán', 55, 'Un hombre despierta convertido en un insecto', 60, 60, 60),
('Crónica de una muerte anunciada', '1981-03-01', 'Gabriel García Márquez', 'Novela corta', 'La Oveja Negra', 'Español', 120, 'La reconstrucción de un asesinato que todos sabían que ocurriría', 30, 30, 30);


INSERT INTO users (name, last_name_p, last_name_m, domicilio, tel, sanctions, sanc_money) VALUES
('Juan', 'Gómez', 'Pérez', 'Av. Rivadavia 1234, Buenos Aires', '1145678910', 0, 0),
('María', 'López', 'García', 'Calle San Martín 567, Córdoba Capital', '3519876543', 1, 0),
('Carlos', 'Rodríguez', 'Fernández', 'Av. Independencia 789, Rosario, Santa Fe', '3412345678', 0, 0),
('Ana', 'Martínez', 'Sánchez', 'Belgrano 321, Mendoza Capital', '2615432198', 2, 0),
('Pedro', 'González', 'Díaz', 'Av. Colón 1010, Tucumán', '3817654321', 0, 0),
('Laura', 'Fernández', 'Romero', 'Sarmiento 456, Mar del Plata, Buenos Aires', '2239876543', 1, 0),
('Miguel', 'Sosa', 'Alvarez', 'Av. San Juan 2020, San Miguel de Tucumán', '3812345678', 0, 0),
('Sofía', 'Torres', 'Ruiz', 'Av. Libertador 1500, Salta Capital', '3876543210', 0, 0),
('Jorge', 'Romero', 'Acosta', 'Mitre 333, Resistencia, Chaco', '3629876543', 3, 0),
('Lucía', 'Aguirre', 'Mendoza', 'Av. Roca 789, Neuquén Capital', '2991234567', 0, 0),
('Fernando', 'Pereyra', 'Silva', 'San Luis 505, Corrientes Capital', '3796543210', 1, 0),
('Adriana', 'Vega', 'Suárez', 'Av. Urquiza 707, Paraná, Entre Ríos', '3439876543', 0, 0),
('Ricardo', 'Ríos', 'Castro', 'Av. Kirchner 1200, Río Gallegos, Santa Cruz', '2966543210', 0, 0),
('Gabriela', 'Molina', 'Herrera', 'Av. Rawson 808, Rawson, Chubut', '2801234567', 2, 0),
('Diego', 'Ortiz', 'Paz', 'Av. San Martín 909, Posadas, Misiones', '3769876543', 0, 0);