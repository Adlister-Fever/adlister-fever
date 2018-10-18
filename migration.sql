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

INSERT INTO ads (user_id, title, description) VALUES
(1,'New Sandals', 'STEVE MADDEN SIZE 6 BLACK SANDAL'),
(1,'BABY STROLLER','baby trend tandem sit-in-stand double stroller'),
(4, 'Stove for sale', 'Stove electric appliance'),
(5, 'Queen size mattress', 'QUEEN SIZE MATTRESS AND BOX SPRING'),
(4, 'CAR FOR SALE', '2014 ford escape titanium-SUV'),
(5, 'CAR FOR SALE', '2017 Ford crown victoria lx sport'),
(9, ' CAR FOR SALE','2015 DODGE DART SXT');


-- +----------+             +-------------+
-- |  users   |             |    ads      |
-- +----------+             +-------------+
-- | id       |<------,     | id          |
-- | username |       `-----| user_id     | <-- foreign key to users table
-- | email    |             | title       |
-- | password |             | description |
-- +----------+             +-------------+