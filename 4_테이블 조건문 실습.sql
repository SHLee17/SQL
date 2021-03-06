CREATE TABLE `member`(
`uid` VARCHAR(10) NOT NULL PRIMARY KEY,
`name` VARCHAR(10) NOT NULL ,
`hp` CHAR(13) UNIQUE NOT NULL,
`pos` VARCHAR(10) NOT NULL DEFAULT '사원',
`dep` INT DEFAULT NULL,
`rdate` DATETime NOT Null
);

CREATE TABLE `Department`(
`depNo` INT NOT null PRIMARY KEY ,
`name` VARCHAR(10) NOT NULL,
`tel` CHAR(12) NOT null
);

CREATE TABLE `Sales`(
`seq` INT AUTO_INCREMENT PRIMARY KEY ,
`uid` VARCHAR(10) NOT NULL,
`year` YEAR NOT NULL,
`month` INT not NULL,
`sale` INT NOT null
);


INSERT INTO`member` VALUES('a101','박혁거새','010-1234-1001','부장',101,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());

INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
				   VALUES ('a110', '정약용',   '010-1234-1010', 105, NOW());
				   
INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
               VALUES ('a111', '박지원',   '010-1234-1011', 105, NOW());


INSERT INTO `Department` VALUES (101, '영업1부',    '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부',    '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부',    '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부',    '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부',    '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부',     '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);


SELECT * FROM  `member` WHERE `name`= '김유신';
SELECT * FROM  `member` WHERE `pos` = '차장' AND dep = 101;
SELECT * FROM  `member` WHERE `pos` = '차장' OR dep = 101;
SELECT * FROM  `member` WHERE `name` != '김춘추';
SELECT * FROM  `member` WHERE `name` <> '김춘추';
SELECT * FROM  `member` WHERE `pos` IN('사원','대리');
SELECT * FROM  `member` WHERE `dep` IN(101,102,103);
SELECT * FROM  `member` WHERE `name` LIKE '%신'

SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC;
SELECT * FROM `Sales` ORDER BY `sale` DESC;

SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY`year` ,`month` , `sale` DESC;


SELECT * FROM `sales` LIMIT 3;
SELECT * FROM `sales` LIMIT 0,3;
SELECT * FROM `sales` LIMIT 1,3;
SELECT * FROM `sales` LIMIT 4,5;
SELECT * FROM `sales` ORDER BY `sale` DESC LIMIT 3,5;
SELECT * FROM `sales` WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM `sales` WHERE `sale` < 50000 ORDER BY `year`DESC,`month`, `sale` LIMIT 5;

SELECT SUM(`sale`) AS `합계`FROM `sales`;
SELECT avg(`sale`) AS `합계`FROM `sales`;
select COUNT(*) AS `갯수`FROM `sales`;
INSERT INTO `member` VALUES('b101','을지문덕','010-5555-1234','사장', 107, NOW() );

SELECT SUM(`sale`) AS `2018년 1월 총매출` FROM `sales` WHERE `year`= 2018 AND MONTH  = 1;  
SELECT SUM(`sale`), AVG(`sale`) FROM `sales` WHERE `year` = 2019 AND MONTH = 2 AND 50000 < `sale`;
SELECT MIN(`sale`) ,MAX(`sale`) FROM `sales` WHERE `year` = 2020;
