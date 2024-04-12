-- Place > script.sql

create table tblCategory (
    seq number primary key,         -- PK
    name varchar2(100) not null,        -- ī�װ���
    marker varchar2(50) not null        -- ��Ŀ�̹���
);


drop table tblPlace;

create table tblPlace (
    seq number primary key,             -- PK
    name varchar2(100) not null,        -- ��Ҹ�
    lat number not null,                -- ����
    lng number not null,                -- �浵
    description varchar2(1000) null,    -- ����
    address varchar2(1000) not null,    -- �ּ�
    category number not null references tblCategory(seq)    -- �з�
); 

create sequence seqCategory;
create sequence seqPlace;

-- ī�װ�
insert into tblCategory values (seqCategory.nextVal, '�Ĵ�', 'restaurant.png');
insert into tblCategory values (seqCategory.nextVal, 'ī��', 'bakery.png');
insert into tblCategory values (seqCategory.nextVal, '����', 'bar.png');
insert into tblCategory values (seqCategory.nextVal, '�౹', 'pharmacy.png');
insert into tblCategory values (seqCategory.nextVal, '����', 'forest.png');
insert into tblCategory values (seqCategory.nextVal, '��Ʈ', 'shopping.png');
insert into tblCategory values (seqCategory.nextVal, '������', 'parking.png');

select * from tblCategory;
select * from tblPlace;

select a.*, (select marker from tblCategory where seq = a.category) as marker from tblPlace a where

commit;

create user hr identified by java1234;
alter user hr account unlock;
alter user hr identified by java1234;