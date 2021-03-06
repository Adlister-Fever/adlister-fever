CREATE TABLE IF NOT EXISTS user8 (
    `results_gender` VARCHAR(4) CHARACTER SET utf8,
    `results_name_title` VARCHAR(2) CHARACTER SET utf8,
    `results_name_first` VARCHAR(6) CHARACTER SET utf8,
    `results_name_last` VARCHAR(6) CHARACTER SET utf8,
    `results_location_street` VARCHAR(18) CHARACTER SET utf8,
    `results_location_city` VARCHAR(6) CHARACTER SET utf8,
    `results_location_state` VARCHAR(5) CHARACTER SET utf8,
    `results_location_postcode` INT,
    `results_location_coordinates_latitude` NUMERIC(6, 4),
    `results_location_coordinates_longitude` NUMERIC(6, 4),
    `results_location_timezone_offset` VARCHAR(5) CHARACTER SET utf8,
    `results_location_timezone_description` VARCHAR(12) CHARACTER SET utf8,
    `results_email` VARCHAR(25) CHARACTER SET utf8,
    `results_login_uuid` VARCHAR(36) CHARACTER SET utf8,
    `results_login_username` VARCHAR(11) CHARACTER SET utf8,
    `results_login_password` VARCHAR(8) CHARACTER SET utf8,
    `results_login_salt` VARCHAR(8) CHARACTER SET utf8,
    `results_login_md5` VARCHAR(32) CHARACTER SET utf8,
    `results_login_sha1` VARCHAR(40) CHARACTER SET utf8,
    `results_login_sha256` VARCHAR(64) CHARACTER SET utf8,
    `results_dob_date` VARCHAR(20) CHARACTER SET utf8,
    `results_dob_age` INT,
    `results_registered_date` VARCHAR(20) CHARACTER SET utf8,
    `results_registered_age` INT,
    `results_phone` VARCHAR(12) CHARACTER SET utf8,
    `results_cell` VARCHAR(12) CHARACTER SET utf8,
    `results_id_name` VARCHAR(3) CHARACTER SET utf8,
    `results_id_value` VARCHAR(8) CHARACTER SET utf8,
    `results_picture_large` VARCHAR(46) CHARACTER SET utf8,
    `results_picture_medium` VARCHAR(50) CHARACTER SET utf8,
    `results_picture_thumbnail` VARCHAR(52) CHARACTER SET utf8,
    `results_nat` VARCHAR(2) CHARACTER SET utf8,
    `info_seed` VARCHAR(16) CHARACTER SET utf8,
    `info_results` INT,
    `info_page` INT,
    `info_version` NUMERIC(2, 1)
);
INSERT INTO user8 VALUES
    ('male','mr','thomas','bowman','5184 george street','carlow','kerry',43549,18.8027,-82.5921,'-3:30','Newfoundland','thomas.bowman@example.com','e1483265-8351-446f-86e4-9a8652ab25a0','tinyfish625','hahahaha','Gpuhtx9b','92fe3edf559d6d2714317c13b76d3507','9c4f74cc3d99d64d7852f8a98b44e5a0402bceb7','d0093af48796675ce1ca875fce69824a64ff4aba37645410c69675a87e7c0e8c','1979-11-06T12:54:38Z',38,'2011-01-11T19:30:03Z',7,'031-167-1360','081-591-6920','PPS','9427189T','https://randomuser.me/api/portraits/men/41.jpg','https://randomuser.me/api/portraits/med/men/41.jpg','https://randomuser.me/api/portraits/thumb/men/41.jpg','IE','64f110dafceb233d',1,1,1.2);
