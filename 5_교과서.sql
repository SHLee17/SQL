CREATE TABLE `sample21`(
`no` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10),
`birthday` CHAR(10),
`address` VARCHAR(100)
);

INSERT INTO`sample21`(`name`, `birthday`, `address`)VALUES ('박준용', '1976-10-18','대구광역시 수성구');
INSERT INTO`sample21`(`name`, `address`)VALUES ('김재진', '대구광역시 동구');
INSERT INTO`sample21`(`name`, `address`)VALUES ('홍길동', '대구광역시 마포구');


#p53
SELECT * FROM `sample21`;
#p62
DESC `sample21`;
#p66
SELECT `no`, `name` FROM `sample21`;
#p68
SELECT * FROM `sample21` WHERE `no`  =2;
#p70
SELECT * FROM `sample21` WHERE `no` <>2;
#p71
SELECT * FROM `sample21` WHERE `name`  ='박준용';
#p72
SELECT * FROM `sample21` WHERE `birthday`=null;
#p73
SELECT * FROM `sample21` WHERE `birthday`is null;

CREATE TABLE `sample24`(
`no` INT AUTO_INCREMENT PRIMARY key,
`a` INT,
`b` INT,
`c` int
);
#p76
SELECT *FROM `sample24`;

INSERT INTO `sample24`(`a`,`b`,`c`) VALUES (1,0,0);
INSERT INTO `sample24`(`a`,`b`,`c`) VALUES (0,1,0);
INSERT INTO `sample24`(`a`,`b`,`c`) VALUES (0,0,1);
INSERT INTO `sample24`(`a`,`b`,`c`) VALUES (2,2,0);
INSERT INTO `sample24`(`a`,`b`,`c`) VALUES (0,2,2);
#p77
SELECT *FROM `sample24` WHERE a<>0 AND b<>0;
#p78
SELECT *FROM `sample24` WHERE a<>0 OR b<>0;
#p80
SELECT *FROM `sample24` WHERE a = 1 or a= 2 AND b=1 OR b= 2;
#p82
SELECT *FROM `sample24` WHERE NOT(a<>0 OR b<>0);

#p85
CREATE TABLE `sample25`(
`no` INT PRIMARY KEY AUTO_INCREMENT,
`text` VARCHAR(100)
);
INSERT INTO `sample25` (`text`) VALUES('SQL은 RDBMS를 조작하는 언어이다');
INSERT INTO `sample25` (`text`) VALUES('LIKE에서는 메타문자와 %와 _를 사용할 수 있다');
INSERT INTO `sample25` (`text`) VALUES('LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다');

SELECT *FROM `sample25` WHERE `text` LIKE 'SQL%';
#p86
SELECT *FROM `sample25` WHERE `text` LIKE '%SQL%';
#p88
SELECT *FROM `sample25` WHERE `text` LIKE '%\%%';