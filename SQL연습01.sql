DROP DATABASE `electronics`;
CREATE DATABASE `electronics`;

CREATE TABLE `customer1`(
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`gender` TINYINT ,
	`age` INT ,
	`phone` CHAR(15)
);
# 테이블 구조만 복사하기 

CREATE TABLE `customer2` LIKE `customer1`;


INSERT INTO `customer1`(`name`,`gender`,`age`,`phone`)
VALUES('류현진',1,23,'010-1234-1111');
INSERT INTO `customer1`(`name`,`gender`,`age`,`phone`)
VALUES('김광현',2,44,'010-1234-2222');
INSERT INTO `customer1`(`name`,`gender`,`age`,`phone`)
VALUES('최지만',1,37,'010-1234-3333');
INSERT INTO `customer1`(`name`,`gender`,`age`,`phone`)
VALUES('양현종',1,22,'010-1234-4444');
INSERT INTO `customer1`(`name`,`gender`,`age`,`phone`)
VALUES('김하성',2,39,'010-1234-5555');

INSERT INTO `customer2` SELECT * FROM `customer1`;
CREATE TABLE `cusomer3` AS #데이터와 같이 복사 
SELECT * FROM `customer1`;


#테이블명을 잘못입력했을 경우 ALTER TABLE OLD RENAME NEW  
ALTER TABLE `cusomer3` RENAME `customer3`;
#데이터 타입을 변경하고자할 경우 테이블을 건드려야한다 
ALTER TABLE `customer1` MODIFY `name` VARCHAR(30);
DESC `customer1`;
DESC `customer3`; #테이블 구조를 보고 싶을 때 
SELECT * FROM `customer1`; # 데이터 전체를 보고싶을 경우 

#데이터를 변경하는 것은 UPDATE 테이블을 변경하는 것은 ALTER
UPDATE `customer3` SET
			`name` = '이순신'
			WHERE `name` = '양현종'; #특정한 조건의 데이터 변경 
UPDATE `customer2` SET
			`name` = '왕창바꾸자'; # 모든 데이터 변경
			
 
UPDATE `customer1` SET
				`phone` = '010-4561-3155',
				`gender` = 1
				WHERE `name` = '김광현';
CREATE TABLE `product1`(
	`productID` INT PRIMARY KEY ,
	`productNAME` VARCHAR(30) NOT NULL,
	`makeDate` DATE,
	`company` VARCHAR(20) ,
	`price` INT,
	`amount` INT 
);
CREATE TABLE `product2` LIKE `product1`;
INSERT INTO `product1` VALUES(1,'냉장고','2019-08-05','삼성',2500000,305);
INSERT INTO `product1` VALUES(2,'TV','2018-02-28','LG',1230000,45);
INSERT INTO `product1` VALUES(3, '컴퓨터','2013-06-13','한성',1540000,277);
INSERT INTO `product1` VALUES(4,'전자레인지','2014-07-20','SK매직',69900,1054);
INSERT INTO `product2` VALUES(5,'세탁기','2009-09-22','파로스',700000,450);
#데이터를 잘못 넣었을 경우 삭제하고싶다
DELETE FROM `product2` WHERE `productNAME` = '세탁기';
#데이터를 통째로 들이 부음 
INSERT INTO `product2` SELECT * FROM `product1`;








