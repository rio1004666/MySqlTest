
ALTER TABLE `customer_tb` MODIFY	`phone` CHAR(15);

INSERT INTO `customer_tb`
(`name`,`age`,`gender`,`phone`) 
VALUES('류현진',23,1,'010-1234-1111');

INSERT INTO `customer_tb`
(`name`,`age`,`gender`,`phone`)
 VALUES('김광현',30,1,'010-1234-2222');

INSERT INTO `customer_tb`
(`name`,`age`,`gender`,`phone`)
VALUES('양현종',36,1,'010-1234-3333');

INSERT INTO `customer_tb`
(`name`,`age`,`gender`,`phone`)
VALUES('김하성',28,2,'010-1234-4444');

INSERT INTO `customer_tb`
(`name`,`age`,`gender`,`phone`)
VALUES('최지만',36,2,'010-1234-5555');

DELETE FROM `customer_tb` WHERE name='최지만';
DROP TABLE `customer_tb`;
CREATE TABLE `customer_tb`(
     `seq` INT AUTO_INCREMENT PRIMARY KEY,
     `name` VARCHAR(10) NOT NULL,
     `gender` TINYINT NOT NULL,
     `age` INT ,
     `phone` CHAR(15) UNIQUE
);


UPDATE `customer_tb` SET
		`name` = '순신이'
		WHERE `name` = '최지만';
		

ALTER TABLE `customer_tb` RENAME `customer`;

SELECT * FROM `customer` WHERE `age` > 30;

CREATE TABLE `customer_tb` AS # AS는 필드명은 별명 테이블을 복사 
SELECT * FROM `customer`; # 어떤 데이터이동과 복사들은 전부 SELECT한 후에 한다 복합쿼리문 

CREATE TABLE `customer_tb2` AS 
SELECT * FROM `customer_tb` WHERE 1=2; # 테이블 구조만 복사하기는 거짓조건을 넣어준다 

CREATE TABLE `customer_tb3` LIKE customer; # 테이블 스키마만 복사하기 2 


INSERT INTO `customer_tb` SELECT * FROM `customer`;
 









