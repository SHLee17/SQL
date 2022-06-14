#날짜 : 2022/06/14

CREATE TABLE `user2`(
`uid`VARCHAR(10) PRIMARY key,
`name`VARCHAR(10),
`hp`CHAR(13) UNIQUe,
`age`tinyInt
);

INSERT INTO `user2` VALUE('A101','김유신','010-1234-1111',25);
INSERT INTO `user2` VALUE('A102','김춘추','010-1234-2222',23);
INSERT INTO `user2` VALUE('A103','장보고','010-1234-3333',35);
INSERT INTO `user2` VALUE('A104','강감찬','010-1234-4444',45);
INSERT INTO `user2` VALUE('A105','이순신','010-1234-5555',51);
INSERT INTO `user2` VALUE('A106','정약용','010-1234-3333',42);


CREATE TABLE `user3`(
`uid`VARCHAR(10) PRIMARY key,
`name`VARCHAR(10),
`hp`CHAR(13) UNIQUe,
`age`tinyInt
);

INSERT INTO `user3` VALUE('A101','김유신','010-1234-1111',25);
INSERT INTO `user3` VALUE('A102','김춘추','010-1234-2222',23);
INSERT INTO `user3` VALUE('A103','장보고','010-1234-3333',35);
INSERT INTO `user3` VALUE('A104','강감찬','010-1234-4444',45);
INSERT INTO `user3` VALUE('A105','이순신','010-1234-5555',51);
INSERT INTO `user3` VALUE('A106','정약용','010-1234-6666',42);

CREATE TABLE `parent`(
`uid`VARCHAR(10) PRIMARY key,
`name`VARCHAR(10),
`hp`CHAR(13) UNIQUe
); 

INSERT INTO `parent` VALUE('A101','김유신','010-1234-1001');
INSERT INTO `parent` VALUE('A102','김춘추','010-1234-2002');
INSERT INTO `parent` VALUE('A103','장보고','010-1234-3003');


CREATE TABLE `user4`(
`uid`VARCHAR(10) PRIMARY key,
`name`VARCHAR(10),
`hp`CHAR(13) UNIQUe,
`pid`VARCHAR(10),
FOREIGN KEY (`pid`) REFERENCES `parent`(`uid`)
); 

INSERT INTO `user4` VALUE('C101','김철수','010-1234-1111', 'A101');
INSERT INTO `user4` VALUE('C102','장철수','010-1234-2222', 'A102');
INSERT INTO `user4` VALUE('C103','이철수','010-1234-3333', 'A103');
INSERT INTO `user4` VALUE('C104','김영희','010-1234-4444', 'A101');

CREATE TABLE `user5` (
`seq` INT auto_increment PRIMARY KEY,
`name`VARCHAR(10),
`gender`TINYINT,
`age`INT,
`addr`VARCHAR(255)
);

INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('김유신', 1, 25,'김해시');
INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('김춘추', 2, 21,'경주시');
INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('선덕여왕', 2, 35,'경주시');
INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('장보고', 1, 31,'완도시');
INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('신사임당', 2, 42,'강릉시');
INSERT INTO `user5`(`name`, `gender`,`age`,`addr`) VALUES('허난설헌', 2, 27,'광주시');
INSERT INTO `user5`( `gender`,`addr`) VALUES(1, '서울시');
INSERT INTO `user5`( `gender`,`addr`) VALUES(1, '부산시');

CREATE TABLE `user6` (
`seq` INT auto_increment PRIMARY KEY,
`name`VARCHAR(10) NOT null,
`gender`TINYINT,
`age`INT DEFAULT 1,
`addr`VARCHAR(255)
);

INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('김유신', 1, 25,'김해시');
INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('김춘추', 2, 21,'경주시');
INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('선덕여왕', 2, 35,'경주시');
INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('장보고', 1, 31,'완도시');
INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('신사임당', 2, 42,'강릉시');
INSERT INTO `user6`(`name`, `gender`,`age`,`addr`) VALUES('허난설헌', 2, 27,'광주시');
INSERT INTO `user6`(`name`, `gender`,`addr`) VALUES('이순신',1, '부산시');

ALTER TABLE `user6` AUTO_INCREMENT = 1;

SET @cnt = 0;
UPDATE `user6` SET `seq` = @cnt:=@cnt+1;
 
CREATE TABLE `user7` LIKE `user6`;
INSERT INTO `user7` SELECT * FROM `user6`;
 
 
 

