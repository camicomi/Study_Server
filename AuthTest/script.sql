-- AuthTest > script.sql

drop table tblUser cascade constraints;

create table tblUser (
    id varchar2(30) primary key, -- ���̵�
    pw varchar2(30) not null,  -- ��ȣ
    name varchar2(30) not null,  -- �̸�
    lv number(1) not null     -- ��� > �Ϲ�(1), ������(2)
);

insert into tblUser values ('hong', '1111', 'ȫ�浿', 1);
insert into tblUser values ('dog', '1111', '������', 1);
insert into tblUser values ('cat', '1111', '�����', 2);

select * from tblUser;

commit;