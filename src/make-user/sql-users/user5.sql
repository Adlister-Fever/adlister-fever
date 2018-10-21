CREATE TABLE IF NOT EXISTS user5 (
    `results_gender` VARCHAR(6) CHARACTER SET utf8,
    `results_name_title` VARCHAR(6) CHARACTER SET utf8,
    `results_name_first` VARCHAR(8) CHARACTER SET utf8,
    `results_name_last` VARCHAR(7) CHARACTER SET utf8,
    `results_location_street` VARCHAR(18) CHARACTER SET utf8,
    `results_location_city` VARCHAR(9) CHARACTER SET utf8,
    `results_location_state` VARCHAR(9) CHARACTER SET utf8,
    `results_location_postcode` INT,
    `results_location_coordinates_latitude` NUMERIC(6, 4),
    `results_location_coordinates_longitude` NUMERIC(7, 4),
    `results_location_timezone_offset` VARCHAR(5) CHARACTER SET utf8,
    `results_location_timezone_description` VARCHAR(25) CHARACTER SET utf8,
    `results_email` VARCHAR(28) CHARACTER SET utf8,
    `results_login_uuid` VARCHAR(36) CHARACTER SET utf8,
    `results_login_username` VARCHAR(12) CHARACTER SET utf8,
    `results_login_password` VARCHAR(5) CHARACTER SET utf8,
    `results_login_salt` VARCHAR(8) CHARACTER SET utf8,
    `results_login_md5` VARCHAR(32) CHARACTER SET utf8,
    `results_login_sha1` VARCHAR(40) CHARACTER SET utf8,
    `results_login_sha256` VARCHAR(64) CHARACTER SET utf8,
    `results_dob_date` VARCHAR(20) CHARACTER SET utf8,
    `results_dob_age` INT,
    `results_registered_date` VARCHAR(20) CHARACTER SET utf8,
    `results_registered_age` INT,
    `results_phone` VARCHAR(14) CHARACTER SET utf8,
    `results_cell` VARCHAR(14) CHARACTER SET utf8,
    `results_id_name` VARCHAR(3) CHARACTER SET utf8,
    `results_id_value` VARCHAR(16) CHARACTER SET utf8,
    `results_picture_large` VARCHAR(48) CHARACTER SET utf8,
    `results_picture_medium` VARCHAR(52) CHARACTER SET utf8,
    `results_picture_thumbnail` VARCHAR(54) CHARACTER SET utf8,
    `results_nat` VARCHAR(2) CHARACTER SET utf8,
    `info_seed` VARCHAR(16) CHARACTER SET utf8,
    `info_results` INT,
    `info_page` INT,
    `info_version` NUMERIC(2, 1)
);
INSERT INTO user5 VALUES
    ('female','madame','michelle','clement','2390 rue paul bert','ferreyres','nidwalden',5493,-54.9375,166.6335,'+2:00','Kaliningrad, South Africa','michelle.clement@example.com','b2a83f48-2dfc-49ae-9812-4e6abb72ea7a','blackfish922','aztnm','29XMP4gG','a888e7e9af385e14342921f9cef30ccc','9dcdd1df534d9c98548724756fecf682b361737d','42abe4dd7fb4f0795bfb8def0579d618065ee7a0c6464b2bc19399017599653c','1966-04-13T08:06:05Z',52,'2013-04-04T22:35:32Z',5,'(196)-464-4170','(287)-131-4559','AVS','756.8593.1304.18','https://randomuser.me/api/portraits/women/71.jpg','https://randomuser.me/api/portraits/med/women/71.jpg','https://randomuser.me/api/portraits/thumb/women/71.jpg','CH','0dea58e7285e6feb',1,1,1.2);