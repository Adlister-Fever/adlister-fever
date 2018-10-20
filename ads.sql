CREATE DATABASE adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    gender VARCHAR(6),
    name_title VARCHAR(10),
    name_first VARCHAR(15),
    name_last VARCHAR(15),
    street VARCHAR(26),
    city VARCHAR(17),
    state VARCHAR(17),
    postcode VARCHAR(17) ,
    coordinates_latitude NUMERIC(10),
    coordinates_longitude NUMERIC(10),
    timezone_offset VARCHAR(15),
    timezone_description VARCHAR(100),
    email VARCHAR(30),
    login_uuid VARCHAR(36),
    login_username VARCHAR(23),
    login_password VARCHAR(27),
    login_salt VARCHAR(8),
    login_md5 VARCHAR(32),
    login_sha1 VARCHAR(40),
    login_sha256 VARCHAR(64),
    dob_date VARCHAR(20),
    dob_age INT,
    registered_date VARCHAR(20),
    registered_age INT,
    phone VARCHAR(20),
    cell VARCHAR(23),
    id_name VARCHAR(4),
    id_value VARCHAR(17),
    picture_large VARCHAR(60),
    picture_medium VARCHAR(60),
    picture_thumbnail VARCHAR(60),
    nat VARCHAR(2),
    info_seed VARCHAR(16),
    info_results INT,
    info_page INT,
    info_version NUMERIC(2, 1),
    PRIMARY KEY (login_username)
);

INSERT INTO users VALUES
('female','ms','caitlin','wood','20 universal drive','christchurch','auckland',19409,61.8778,20.9889,'-9:00','Alaska','caitlin.wood@example.com','2ff10e10-1528-46ae-95a4-fe357e71f0a0','crazywolf905','password2','tjHxO5hv','37869539a913c2207f8391b3dc67d8cd','8847735f4fcac36d91d21f7d542cfd0f605d2c59','0a91c37da796d281ad7526359eba53c82814c317285f1969f1fad4982523e53a','1956-08-02T05:54:13Z',62,'2007-10-29T11:03:57Z',10,'(840)-906-0110','(859)-639-7472',NULL,NULL,'https://randomuser.me/api/portraits/women/44.jpg','https://randomuser.me/api/portraits/med/women/44.jpg','https://randomuser.me/api/portraits/thumb/women/44.jpg','NZ','d6e9e391817afe7c',1,1,1.2),
('male','mr','eino','laitinen','7811 pyynikintie','lemland','uusimaa',56478,-10.5069,-36.6243,'+5:45','Kathmandu','eino.laitinen@example.com','36bc97f8-a4d7-44bf-ae7e-6cffc3aecbb0','heavytiger441','synergy','Nr1DsS8N','3485b660fb0b5bb38d6ce0663dddc423','c4dac915a466339d7954aee5518924467cf99810','60f22da7b8bf9a370e3a7c9c41439289a47e7e5d4e82e121cb238da24692efe4','1987-06-12T04:53:32Z',31,'2017-07-23T14:44:24Z',1,'08-268-777','040-555-14-29','HETU','NaNNA525undefined','https://randomuser.me/api/portraits/men/96.jpg','https://randomuser.me/api/portraits/med/men/96.jpg','https://randomuser.me/api/portraits/thumb/men/96.jpg','FI','e20072e164726f67',1,1,1.2),
('male','mr','sigmund','bechtold','bahnhofstraße 125','recklinghausen','sachsen-anhalt',79386,-42.7150,-52.7708,'-10:00','Hawaii','sigmund.bechtold@example.com','d0151bdc-0a47-46b0-a00d-d5d6f3c47d86','angryswan839',987456,'aQrExTbP','10f5505a44eb13d247d60a32ae9c6356','1d5a098298840cdea7e78e160bd917211804c831','f1cb7c2491a699a52e73ba640aec189a778fc541209b193c05c16ee591fbc193','1962-04-27T14:08:05Z',56,'2015-06-26T06:30:55Z',3,'0918-3485324','0177-6546860',NULL,NULL,'https://randomuser.me/api/portraits/men/38.jpg','https://randomuser.me/api/portraits/med/men/38.jpg','https://randomuser.me/api/portraits/thumb/men/38.jpg','DE','329c7d3a2bc51d74',1,1,1.2),
('male','mr','leon','jones','2699 george street','portmarnock','waterford',38761,20.3184,-5.3689,'+9:00','Tokyo, Seoul, Osaka, Sapporo, Yakutsk','leon.jones@example.com','97e43ce5-36d5-47bb-b958-7225e4722c8c','greenleopard529','mann','pyYxEQRC','846c9434c5383e833ce336a1e01501b8','3b2ed9302f25dca8d27608e65a91ef563d417cf1','5b01ad340791a920aeca1d64244b122fccc868ea7c130551b3c759f511e73a99','1951-12-02T16:09:29Z',66,'2004-11-25T06:27:20Z',13,'071-241-1757','081-425-6275','PPS','2088143T','https://randomuser.me/api/portraits/men/32.jpg','https://randomuser.me/api/portraits/med/men/32.jpg','https://randomuser.me/api/portraits/thumb/men/32.jpg','IE','60450324c36bb484',1,1,1.2),
('female','madame','michelle','clement','2390 rue paul bert','ferreyres','nidwalden',5493,-54.9375,166.6335,'+2:00','Kaliningrad, South Africa','michelle.clement@example.com','b2a83f48-2dfc-49ae-9812-4e6abb72ea7a','blackfish922','aztnm','29XMP4gG','a888e7e9af385e14342921f9cef30ccc','9dcdd1df534d9c98548724756fecf682b361737d','42abe4dd7fb4f0795bfb8def0579d618065ee7a0c6464b2bc19399017599653c','1966-04-13T08:06:05Z',52,'2013-04-04T22:35:32Z',5,'(196)-464-4170','(287)-131-4559','AVS','756.8593.1304.18','https://randomuser.me/api/portraits/women/71.jpg','https://randomuser.me/api/portraits/med/women/71.jpg','https://randomuser.me/api/portraits/thumb/women/71.jpg','CH','0dea58e7285e6feb',1,1,1.2),
('female','miss','ülkü','denkel','3520 bağdat cd','kastamonu','bilecik',60371,75.5599,33.1418,'-11:00','Midway Island, Samoa','ülkü.denkel@example.com','d4505d72-85ac-4b0d-9d08-cf03ac9674a8','orangerabbit958',4321,'uPYSd1K2','c890c43f67004324d4147b71864c661a','9e356cca0094acd16c946ef8e097c831925eb712','2b44722a1d2a015b4f3b7338c3b05a71c33817994f11c5be56cc786d50132e02','1945-04-19T14:38:39Z',73,'2005-10-26T21:36:54Z',12,'(753)-436-5799','(565)-567-6632',NULL,NULL,'https://randomuser.me/api/portraits/women/63.jpg','https://randomuser.me/api/portraits/med/women/63.jpg','https://randomuser.me/api/portraits/thumb/women/63.jpg','TR','5f97d268894bbe21',1,1,1.2),
('female','mrs','lilja','justi','812 fredrikinkatu','nurmijärvi','kainuu',46382,-15.7878,21.4359,'-12:00','Eniwetok, Kwajalein','lilja.justi@example.com','73901193-68cf-4822-becf-240b0338fd00','yellowcat366','ross','IW0Glk84','fe2e550b69ec71bab6622914cdc6c391','2c114569d7a02f52435e4b2ef78f361245d7b7b7','644efab89e6512485e03bbee107ce8933c6463cec6b40c9aafd19ed4882179b7','1945-01-22T03:09:17Z',73,'2014-03-24T02:04:43Z',4,'03-259-800','044-418-22-81','HETU','NaNNA760undefined','https://randomuser.me/api/portraits/women/5.jpg','https://randomuser.me/api/portraits/med/women/5.jpg','https://randomuser.me/api/portraits/thumb/women/5.jpg','FI','e7c39ad1c1fa19bc',1,1,1.2),
('male','mr','thomas','bowman','5184 george street','carlow','kerry',43549,18.8027,-82.5921,'-3:30','Newfoundland','thomas.bowman@example.com','e1483265-8351-446f-86e4-9a8652ab25a0','tinyfish625','hahahaha','Gpuhtx9b','92fe3edf559d6d2714317c13b76d3507','9c4f74cc3d99d64d7852f8a98b44e5a0402bceb7','d0093af48796675ce1ca875fce69824a64ff4aba37645410c69675a87e7c0e8c','1979-11-06T12:54:38Z',38,'2011-01-11T19:30:03Z',7,'031-167-1360','081-591-6920','PPS','9427189T','https://randomuser.me/api/portraits/men/41.jpg','https://randomuser.me/api/portraits/med/men/41.jpg','https://randomuser.me/api/portraits/thumb/men/41.jpg','IE','64f110dafceb233d',1,1,1.2),
('male','mr','sammy','sullivan','583 main street','sunderland','warwickshire','D3C 9NF',15.8327,-13.2066,'+2:00','Kaliningrad, South Africa','sammy.sullivan@example.com','de806dec-b2db-4fa3-8ec1-3eb3cf375aa8','smallbutterfly303','usmc','SlZR8OmI','3b6df1e2599cad595d3bf885bd046488','7d0a54cac2d1fd4bd4cd732b41736eb9e4195358','9a35b2b5de8bd7a6566db8fa33343e203b9d176f3081b2d3ea9aaec2c07f13fd','1993-07-14T12:27:31Z',25,'2013-11-27T19:38:53Z',4,'0115815 799 2507','0742-463-125','NINO','RX 68 02 45 A','https://randomuser.me/api/portraits/men/21.jpg','https://randomuser.me/api/portraits/med/men/21.jpg','https://randomuser.me/api/portraits/thumb/men/21.jpg','GB','5649d9218b8ce822',1,1,1.2),
('male','mr','quin','schetters','7238 gansstraat','hoorn','noord-brabant',66333,41.0695,-63.7719,'-5:00','Eastern Time (US & Canada), Bogota, Lima','quin.schetters@example.com','b93b368a-6665-4a51-80b4-9e1468664b6d','sadfish623','123aaa','yxyuMuga','dc0f78b7c792957ee91401d298749223','ecfb3b3595ac8388e567405117133f732d7478b0','494fd9fce7fb5df37f26c6331af578725a0c896e9f408d0d62b62cb8e734c3e3','1991-01-20T02:20:30Z',27,'2003-07-19T08:38:17Z',15,'(354)-336-4878','(446)-925-1031','BSN',12934612,'https://randomuser.me/api/portraits/men/27.jpg','https://randomuser.me/api/portraits/med/men/27.jpg','https://randomuser.me/api/portraits/thumb/men/27.jpg','NL','ef35b30c8f0130e7',1,1,1.2);


-- this command displays the users
--SELECT * FROM users\G

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(10),
    title VARCHAR(19),
    image VARCHAR(289),
    price INT(10),
    description VARCHAR(20),
    PRIMARY Key (id)
);
INSERT INTO ads (title, image, price, description)VALUES
    ('Country guitar','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/83/Country-guitar.jpg/revision/latest?cb=20160214183428" alt="Country-guitar" class="" data-image-key="Country-guitar.jpg" data-image-name="Country-guitar.jpg" width="75" height="75" >','1700','Basic'),
    ('Electric guitar','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/fd/Electric-guitar.jpg/revision/latest?cb=20160214184045" alt="Electric-guitar" class="" data-image-key="Electric-guitar.jpg" data-image-name="Electric-guitar.jpg" width="75" height="75" >','1900','Trendy/Rock ''n'' Roll'),
    ('Folk guitar','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/4/48/Folk-guitar.jpg/revision/latest?cb=20160214184340" alt="Folk-guitar" class="" data-image-key="Folk-guitar.jpg" data-image-name="Folk-guitar.jpg" width="75" height="75" >','1600','Basic'),
    ('Metal guitar','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/7/77/Metal-guitar.jpg/revision/latest?cb=20160214190309" alt="Metal-guitar" class="" data-image-key="Metal-guitar.jpg" data-image-name="Metal-guitar.jpg" width="75" height="75" >','1800','Trendy/Rock ''n'' Roll'),
    ('Rock guitar','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/2/29/Rock-guitar.jpg/revision/latest?cb=20160214191240" alt="Rock-guitar" class="" data-image-key="Rock-guitar.jpg" data-image-name="Rock-guitar.jpg" width="75" height="75" >','1800','Trendy/Rock ''n'' Roll'),
    ('Sweets Bed','
','20000','Bed'),
    ('Sweets Bookcase','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/3b/Sweets-bookcase.jpg/revision/latest?cb=20130915172116" alt="Sweets-bookcase" class="" data-image-key="Sweets-bookcase.jpg" data-image-name="Sweets-bookcase.jpg" width="75" height="75" >','22500','Bookcase'),
    ('Sweets Chair','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/d/d4/Sweets-chair.jpg/revision/latest?cb=20130915172142" alt="Sweets-chair" class="" data-image-key="Sweets-chair.jpg" data-image-name="Sweets-chair.jpg" width="75" height="75" >','30000','Chair'),
    ('Sweets Closet','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/6/61/Sweets-closet.jpg/revision/latest?cb=20130915172209" alt="Sweets-closet" class="" data-image-key="Sweets-closet.jpg" data-image-name="Sweets-closet.jpg" width="75" height="75" >','17000','Storage'),
    ('Sweets Dresser','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/4/49/Sweets-dresser.jpg/revision/latest?cb=20130915172253" alt="Sweets-dresser" class="" data-image-key="Sweets-dresser.jpg" data-image-name="Sweets-dresser.jpg" width="75" height="75" >','55000','Storage'),
    ('Sweets Lamp','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/c/ce/Sweets-lamp.jpg/revision/latest?cb=20130915172232" alt="Sweets-lamp" class="" data-image-key="Sweets-lamp.jpg" data-image-name="Sweets-lamp.jpg" width="75" height="75" >','24500','Lamp'),
    ('Sweets Minilamp','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/Sweets-minilamp.jpg/revision/latest?cb=20130915172332" alt="Sweets-minilamp" class="" data-image-key="Sweets-minilamp.jpg" data-image-name="Sweets-minilamp.jpg" width="75" height="75" >','27500','Lamp'),
    ('Sweets Minitable','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/Sweets-minitable.jpg/revision/latest?cb=20130915172410" alt="Sweets-minitable" class="" data-image-key="Sweets-minitable.jpg" data-image-name="Sweets-minitable.jpg" width="75" height="75" >','20000','Table'),
    ('Sweets Sofa','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/a/a6/Sweets-sofa.jpg/revision/latest?cb=20130915172424" alt="Sweets-sofa" class="" data-image-key="Sweets-sofa.jpg" data-image-name="Sweets-sofa.jpg" width="75" height="75" >','20000','Chair'),
    ('Sweets Table','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/b/bf/Sweets-table.jpg/revision/latest?cb=20130915172437" alt="Sweets-table" class="" data-image-key="Sweets-table.jpg" data-image-name="Sweets-table.jpg" width="75" height="75" >','60000','Table'),
    ('Sweets Player (DLC)','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/7/75/Sweets-player.jpg/revision/latest?cb=20130915172457" alt="Sweets-player" class="" data-image-key="Sweets-player.jpg" data-image-name="Sweets-player.jpg" width="75" height="75" >','25000','Stereo'),
    ('Yoshi''s egg','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/9/90/Yoshieggnl.png/revision/latest/scale-to-width-down/50?cb=20160710033029" alt="Yoshieggnl" class="" data-image-key="Yoshieggnl.png" data-image-name="Yoshieggnl.png" width="50" height="58" >','210','Cute'),
    ('Triple bananas','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/9/9c/Triplebananasnl.png/revision/latest/scale-to-width-down/50?cb=20160710033301" alt="Triplebananasnl" class="" data-image-key="Triplebananasnl.png" data-image-name="Triplebananasnl.png" width="50" height="24" >','210','Cute'),
    ('Triple red shells','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/32/Tripleshellsnl.png/revision/latest/scale-to-width-down/50?cb=20160710032404" alt="Tripleshellsnl" class="" data-image-key="Tripleshellsnl.png" data-image-name="Tripleshellsnl.png" width="50" height="30" >','210','Cute'),
    ('Kart','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/5/57/Kartnl.png/revision/latest/scale-to-width-down/50?cb=20160710033626" alt="Kartnl" class="" data-image-key="Kartnl.png" data-image-name="Kartnl.png" width="50" height="42" >','210','Cute'),
    ('Master sword','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/5/59/Masterswordnl.png/revision/latest/scale-to-width-down/50?cb=20160710030539" alt="Masterswordnl" class="" data-image-key="Masterswordnl.png" data-image-name="Masterswordnl.png" width="50" height="91" >','210','Historical'),
    ('Arwing','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/7/77/Arwingnl.png/revision/latest/scale-to-width-down/50?cb=20160710030324" alt="Arwingnl" class="" data-image-key="Arwingnl.png" data-image-name="Arwingnl.png" width="50" height="48" >','210','Modern'),
    ('Triforce','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/82/Triforcenl.png/revision/latest?cb=20160710030753" alt="Triforcenl" class="" data-image-key="Triforcenl.png" data-image-name="Triforcenl.png" width="50" height="31" >','210','Historical'),
    ('Metroid','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/3b/Metroidnl.png/revision/latest/scale-to-width-down/50?cb=20160710030610" alt="Metroidnl" class="" data-image-key="Metroidnl.png" data-image-name="Metroidnl.png" width="50" height="97" >','210','Flashy'),
    ('Blue falcon','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/6/68/Bluefalconnl.png/revision/latest/scale-to-width-down/50?cb=20160710044416" alt="Bluefalconnl" class="" data-image-key="Bluefalconnl.png" data-image-name="Bluefalconnl.png" width="50" height="36" >','210','Sporty'),
    ('Pikmin','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/a/a1/Pikminnl.png/revision/latest/scale-to-width-down/50?cb=20160710033800" alt="Pikminnl" class="" data-image-key="Pikminnl.png" data-image-name="Pikminnl.png" width="50" height="36" >','210','Cute'),
    ('S.S. dolphin','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/d/d0/Ssdolphinnl.png/revision/latest?cb=20160710033831" alt="Ssdolphinnl" class="" data-image-key="Ssdolphinnl.png" data-image-name="Ssdolphinnl.png" width="50" height="74" >','210','Sporty'),
    ('Virtual boy','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/7/7a/Virtualboynl.png/revision/latest/scale-to-width-down/50?cb=20160710044200" alt="Virtualboynl" class="" data-image-key="Virtualboynl.png" data-image-name="Virtualboynl.png" width="50" height="61" >','210','Rock ''n'' Roll'),
    ('Wii balance board','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/2/21/Wiibalanceboardnl.png/revision/latest/scale-to-width-down/50?cb=20160710044224" alt="Wiibalanceboardnl" class="" data-image-key="Wiibalanceboardnl.png" data-image-name="Wiibalanceboardnl.png" width="50" height="24" >','210','Sporty'),
    ('Egg Bed','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/6/61/Eggbedcf.png/revision/latest/scale-to-width-down/120?cb=20160711200724" alt="Eggbedcf" class="" data-image-key="Eggbedcf.png" data-image-name="Eggbedcf.png" width="120" height="120" >','9000','Bed'),
    ('Egg Bench','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/0/0f/Eggbenchcf.png/revision/latest/scale-to-width-down/110?cb=20160711200728" alt="Eggbenchcf" class="" data-image-key="Eggbenchcf.png" data-image-name="Eggbenchcf.png" width="110" height="110" >','9000','Chair'),
    ('Egg Chair','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/4/4b/Eggchaircf.png/revision/latest?cb=20160711200731" alt="Eggchaircf" class="" data-image-key="Eggchaircf.png" data-image-name="Eggchaircf.png" width="100" height="100" >','9000','Chair'),
    ('Egg Clock','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/f6/Eggclockcf.png/revision/latest?cb=20160711200735" alt="Eggclockcf" class="" data-image-key="Eggclockcf.png" data-image-name="Eggclockcf.png" width="90" height="90" >','9000','Clock'),
    ('Egg Dresser','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/5/53/Eggdressercf.png/revision/latest/scale-to-width-down/90?cb=20160711200740" alt="Eggdressercf" class="" data-image-key="Eggdressercf.png" data-image-name="Eggdressercf.png" width="90" height="90" >','9000','Storage'),
    ('Egg Lamp','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/d/d2/Egglampcf.png/revision/latest/scale-to-width-down/80?cb=20160711200743" alt="Egglampcf" class="" data-image-key="Egglampcf.png" data-image-name="Egglampcf.png" width="80" height="80" >','9000','Lamp'),
    ('Egg Stereo','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/81/Eggstereocf.png/revision/latest/scale-to-width-down/120?cb=20160711200748" alt="Eggstereocf" class="" data-image-key="Eggstereocf.png" data-image-name="Eggstereocf.png" width="120" height="120" >','9000','Stereo'),
    ('Egg Table','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/8e/Eggtablecf.png/revision/latest?cb=20160711200752" alt="Eggtablecf" class="" data-image-key="Eggtablecf.png" data-image-name="Eggtablecf.png" width="75" height="75" >','9000','Table'),
    ('Egg Toy Set','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/f1/Eggtoysetcf.png/revision/latest/scale-to-width-down/90?cb=20160711200755" alt="Eggtoysetcf" class="" data-image-key="Eggtoysetcf.png" data-image-name="Eggtoysetcf.png" width="90" height="90" >','9000','Usable'),
    ('Egg TV','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/31/Eggtvcf.jpg/revision/latest/scale-to-width-down/70?cb=20161025141735" alt="Eggtvcf" class="" data-image-key="Eggtvcf.jpg" data-image-name="Eggtvcf.jpg" width="70" height="81" >','9000','TV'),
    ('Egg Wardrobe','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/83/Eggwardrobecf.png/revision/latest/scale-to-width-down/80?cb=20160711200759" alt="Eggwardrobecf" class="" data-image-key="Eggwardrobecf.png" data-image-name="Eggwardrobecf.png" width="80" height="80" >','9000','Storage'),
    ('Grapefruit table','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/37/Grapefruittablecf.png/revision/latest/scale-to-width-down/50?cb=20160711201210" alt="Grapefruittablecf" class="" data-image-key="Grapefruittablecf.png" data-image-name="Grapefruittablecf.png" width="50" height="50" >','375','Table'),
    ('Lemon table','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/2/27/Lemontablecf.png/revision/latest/scale-to-width-down/50?cb=20160711201831" alt="Lemontablecf" class="" data-image-key="Lemontablecf.png" data-image-name="Lemontablecf.png" width="50" height="50" >','375','Table'),
    ('Lime chair','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/1/18/Limechaircf.png/revision/latest/scale-to-width-down/50?cb=20160711201842" alt="Limechaircf" class="" data-image-key="Limechaircf.png" data-image-name="Limechaircf.png" width="50" height="50" >','325','Chair'),
    ('Orange chair','<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/1/1a/Orangechaircf.png/revision/latest/scale-to-width-down/50?cb=20160711202429" alt="Orangechaircf" class="" data-image-key="Orangechaircf.png" data-image-name="Orangechaircf.png" width="50" height="50" >','325','Table');
