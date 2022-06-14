DROP DATABASE `testdb`;

CREATE DATABASE `testDB`;

CREATE USER 'tester'@'%'IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON testdb.* TO 'tester'@'%';
FLUSH PRIVILEGES; 

SET PASSWORD FOR 'tester'@'%' = PASSWORD('123123');

DROP DATABASE `mydb`;
CREATE DATABASE `mydb`;

CREATE TABLE `test1` (
`memberID` VARCHAR(10) PRIMARY KEY,
`memberName` VARCHAR(10)NOT null,
`memberHP` CHAR(13) DEFAULT NULL UNIQUE,
`memberAge` INT DEFAULT null,
`memberAddr` VARCHAR(20) DEFAULT null
);

CREATE TABLE `test2` (
`productCode`INT AUTO_INCREMENT PRIMARY KEY,
`productName` VARCHAR(10) NOT NULL,
`price` INT NOT NULL,
`amount` INT  DEFAULT 0,
`company` VARCHAR(10) DEFAULT NULL,
`makedate` DATE DEFAULT null
);

INSERT INTO `test1` VALUES ('p101','김유신' ,'010-1234-1001', 25 ,'신라');
INSERT INTO `test1` VALUES ('p102','김춘추' ,'010-1234-1002', 23 ,'신라');
INSERT INTO `test1` VALUES ('p103','장보고' ,NULL, 31 ,'통일신라');
INSERT INTO `test1` VALUES ('p104','강감찬' ,NULL, null ,'고려');
INSERT INTO `test1` VALUES ('p105','이순신' ,'010-1234-1005', 50 , NULL);

INSERT INTO `test2`  (`productName`,`price`,`amount`,`company`,`makedate`)VALUES ('냉장고',800,10,'LG','2022-01-06');
INSERT INTO `test2`  (`productName`,`price`,`amount`,`company`,`makedate`)VALUES ('노트북',1200,20,'삼성','2022-01-06');
INSERT INTO `test2`  (`productName`,`price`,`amount`,`company`,`makedate`)VALUES ('TV',1400,6,'LG','2022-01-06');
INSERT INTO `test2`  (`productName`,`price`,`amount`,`company`,`makedate`)VALUES ('세탁기',1000,8,'LG','2022-01-06');
INSERT INTO `test2`  (`productName`,`price`,`amount`,`makedate`)VALUES ('컴퓨터',1100,0,'2022-01-06');
INSERT INTO `test2`  (`productName`,`price`,`amount`,`company`,`makedate`)VALUES ('휴대대폰',900,102,'삼성','2022-01-06');

SELECT `memberName` FROM `test1`;
SELECT `memberName`, `memberHP` FROM `test1`;
SELECT * FROM `test1` WHERE `memberID` = 'p102';
SELECT * FROM `test1` WHERE `memberID` = 'p104' OR `memberID` = 'p105';
SELECT * FROM `test1` WHERE `memberAddr` = '신라';
SELECT * FROM `test1` WHERE `memberAge` > 30;
SELECT * FROM `test1` WHERE `memberHP` IS NULL;

UPDATE `test1` SET `memberAge` = 42 WHERE `memberID` = 'p104';
UPDATE `test1` SET `memberAddr` = '조선' WHERE `memberID` = 'p105';
DELETE FROM `test1` where `memberID` = 'p103';
SELECT * FROM `test1`;

SELECT `productName` FROM `test2`;
SELECT `productName`,`price` FROM `test2`;
SELECT * FROM `test2` WHERE `company` = 'LG';
SELECT * FROM `test2` WHERE `company` = '삼성';
UPDATE `test2` SET `company` = '삼성' , `makeDate` = '2021-01-01' WHERE `productCode` = 5; 
SELECT * FROM `test2`;
