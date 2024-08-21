-- Создание таблицы test_table
CREATE TABLE IF NOT EXISTS test_table (
    name VARCHAR(10) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0 AND age <= 150)
);

-- Вставка данных в таблицу test_table
INSERT INTO test_table (name, surname, city, age) VALUES
('John', 'Doe', 'New York', 25),
('Jane', 'Smith', 'Los Angeles', 30),
('Jesus', 'Maria', 'Houston', 24),
('Abraham', 'William', 'Tulsa', 97),
('Ivan', 'Vasily', 'Taganrog', 89),
('Maria', 'Salavat', 'Ufa', 14),
('Boruh', 'Hwan', 'New-Delhi', 67),
('Apache', 'Cherokee', 'Michigan', 18),
('Ulan', 'Bator', 'Ulan Bator', 78),
('Chandra', 'Ghandi', 'Mubai', 38),
('Goga', 'Gulia', 'Tbilisi', 112),
('Aram', 'Babayan', 'Octemberyan',98),
('Farid', 'Mahmudov', 'Ferghana', 8),
('Xeng', 'Xiang', 'Guangjou',46),
('Peter', 'Schuppel', 'Meiningen', 94),
('Maurice', 'Dubois', 'Marseiles', 57),
('Petro', 'Zagibailo', 'Zhmerinka', 37),
('Lazars', 'Garbauskas', 'Daugavpils', 16),
('Mihai', 'Linguryanu', 'Chisinau', 66),
('Joseph', 'Schweik', 'Praha', 140),
('Anna', 'Taylor', 'Chicago', 22);
