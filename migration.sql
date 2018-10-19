USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE categories(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE post_categories(
  post_id INT UNSIGNED DEFAULT NULL,
  categories_id INT UNSIGNED DEFAULT NULL,
  FOREIGN KEY (ads_id)
  REFERENCES ads(id),
  FOREIGN KEY (post_id)
  REFERENCES categories(id)
);

INSERT INTO ads (user_id, title, description) VALUES
(1,'New Sandals', 'STEVE MADDEN SIZE 6 BLACK SANDAL'),
(1,'BABY STROLLER','baby trend tandem sit-in-stand double stroller'),
(4, 'Stove for sale', 'Stove electric appliance'),
(5, 'Queen size mattress', 'QUEEN SIZE MATTRESS AND BOX SPRING'),
(4, 'CAR FOR SALE', '2014 ford escape titanium-SUV'),
(5, 'CAR FOR SALE', '2017 Ford crown victoria lx sport'),
(9, 'CAR FOR SALE','2015 DODGE DART SXT');

INSERT INTO categories(name) VALUES
('community'),
('services'),
('discussion forums'),
('housing'),
('for sale'),
('jobs'),
('gigs');

INSERT INTO ads_categories (ads_id, categories_id) VALUES
(1, 2),
(1, 3),
(2, 5),
(2, 4),
(2, 3),
(3, 1),
(4, 6),
(5, 3),
(6, 2),
(7, 5),
(7, 4),
(7, 7);

-- +----------+             +-------------+
-- |  users   |             |    ads      |
-- +----------+             +-------------+
-- | id       |<------,     | id          |
-- | username |       `-----| user_id     | <-- foreign key to users table
-- | email    |             | title       |
-- | password |             | description |
-- +----------+             +-------------+