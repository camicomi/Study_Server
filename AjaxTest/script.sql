
-- AjaxTest > script.sql

-- 설문조사

--   임시(테이블 2~3개 합침)  권장 x 
create table tblSurvey (
    seq number primary key,             -- 번호(PK)
    question varchar2(300) not null,    -- 질문 
    item1 varchar2(300) not null,       -- 항목1
    item2 varchar2(300) not null,       -- 항목2
    item3 varchar2(300) not null,       -- 항목3
    item4 varchar2(300) not null,       -- 항목4
    cnt1 number default 0 not null,     -- 선택1
    cnt2 number default 0 not null,     -- 선택2
    cnt3 number default 0 not null,     -- 선택3
    cnt4 number default 0 not null      -- 선택4
);
    
    
insert into tblSurvey values (1, '가장 자신있는 프로그래밍 언어는?', 'JAVA', 'Python', 'C#', 'C++', default, default, default, default);

select * from tblSurvey;

update tblSurvey set
    cnt1 = 5,
    cnt2 = 4,
    cnt3 = 2,
    cnt4 = 1
    where seq = 1;

commit;


select * from tbluser;


create table zipcode  (
   seq                  NUMBER(10)                        not null,
   zipcode              VARCHAR2(50),
   sido                 VARCHAR2(50),
   gugun                VARCHAR2(50),
   dong                 VARCHAR2(50),
   bunji                VARCHAR2(50),
   constraint PK_ZIPCODE primary key (seq)
)

select * from zipcode;
select count(*) from zipcode;

-- 고양이 좌표
create table tblCat (
    catid varchar2(50) primary key,         -- <img id="cat1">
    x number not null,
    y number not null

);

select * from tblCat;

insert into tblCat (catid, x, y) values ('cat15', 0, 0);
rollback;
select max(to_number(substr(catid, 4))) from tblCat;




select * from tblAddress;


create table tblAddress (

    seq number primary key,             --PK
    name varchar2(30) not null,         --name
    age number(3) not null,             --age
    gender char(1) not null,            --gender(m,f)
    address varchar2(300) not null
    

);

create sequence seqAddress;

select * from tblAddress;