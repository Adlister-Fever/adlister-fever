use adlister_db;

drop table users if exists;

create table users (
user_id int(10) unsigned not null auto_increment,
username varchar(50) not null,
email varchar(50) not null,
password varchar(255) not null,
image varchar (255),
primary key (user_id)
);

drop table ads if exists;

create table ads (
  ad_id int (10) unsigned not null auto_increment,
  user_id int(10) unsigned not null,
  name varchar(50) not null,
  type varchar (50) not null,
  value int (10) not null,
  image varchar(255),
  primary key (ad_id, user_id),
  key user_id (user_id),
  key ad_id (ad_id),
  constraint ads_fk_1 foreign key (user_id) references users (user_id)
);