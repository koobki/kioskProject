create table mainDb.sy_user
(
    user_no int primary key,
    user_nm varchar(50),
    user_birth_dt datetime
);


create table mainDb.sy_grade
(
    user_no int ,
    subject_nm varchar(50),
    score int,
    PRIMARY KEY( user_no,subject_nm )
);

create table mainDb.sy_grade
(
    user_no int ,
    subject_nm varchar(50),
    score int,
    PRIMARY KEY( user_no,subject_nm )
);

truncate table mainDb.sy_user;
insert into mainDb.sy_user(user_no, user_nm, user_birth_dt) values ( 1, '홍길동', date_format('1992-10-01','%Y-%m-%d'));
insert into mainDb.sy_user(user_no, user_nm, user_birth_dt) values ( 2, '정국', date_format('1995-09-20','%Y-%m-%d'));
insert into mainDb.sy_user(user_no, user_nm, user_birth_dt) values ( 3, '제이홉', date_format('1993-04-11','%Y-%m-%d'));
insert into mainDb.sy_user(user_no, user_nm, user_birth_dt) values ( 4, '슈가', date_format('1989-02-20','%Y-%m-%d'));
insert into mainDb.sy_user(user_no, user_nm, user_birth_dt) values ( 5, '지민', date_format('1997-11-30','%Y-%m-%d'));

truncate table mainDb.sy_grade;
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 1,'kor', 77);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 1,'eng', 80);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 1,'math', 100);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 2,'kor', 100);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 2,'eng', 97);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 2,'math', 98);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 3,'kor', 68);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 3,'eng', 82);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 3,'math', 95);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 4,'kor', 75);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 4,'eng', 80);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 4,'math', 84);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 5,'kor', 88);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 5,'eng', 90);
insert into mainDb.sy_grade(user_no, subject_nm, score) values ( 5,'math', 92);




commit;


select user_no, user_nm
  from mainDb.sy_user
 where user_no  >= 1
 order by user_no desc


;
select * from mainDb.sy_grade;


select  b.subject_nm
       ,avg(score) avg
       ,max(score) max
       ,min(score) min
       ,count(*) cnt
  from mainDb.sy_user as a
	  ,mainDb.sy_grade as b
where a.user_no = b.user_no
group by b.subject_nm
having avg(score)>90;


select * from mainDb.sy_grade;

update mainDb.sy_grade
   set score = 100
where user_no = 1
  and subject_nm ='eng';


select * from mainDb.sy_user;
insert mainDb.sy_user(user_no, user_nm) 
  values ( 6, '김길동');


delete from mainDb.sy_user 
  where user_no =6;
commit;




DROP TABLE mainDb.TB_MENU;
create table mainDb.TB_MENU
(
     MENU_NO INT primary KEY auto_increment
	,MENU_NM VARCHAR(100) NOT NULL
	,MENU_PC INT NOT NULL
	,MENU_DSC VARCHAR(1000)
	,MENU_STOCK INT NOT NULL DEFAULT 0
	,MENU_DISP_YN VARCHAR(1) NOT NULL
	,MENU_IMG_NM VARCHAR(50)
);


SELECT * FROM mainDb.TB_MENU;



CREATE TABLE MAINDB.TB_ORD(
     ORD_NO INT primary KEY auto_increment
	,ORD_DT DATE NOT NULL
	,MENU_NO INT NOT NULL
	,MENU_NM VARCHAR(100) NOT NULL
	,ORD_QTY INT NOT NULL
	,ORD_AMT INT NOT NULL
	,ORD_STAT VARCHAR(10) NOT NULL
);































  














