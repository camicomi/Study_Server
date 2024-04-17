show user; -- system


alter session set "_oracle_script" = true;
create user toy identified by java1234;
grant connect, resource, dba to toy;

show user; -- toy

create table tblUser (
    id varchar2(50) primary key,                    --���̵�
    pw varchar2(50) not null,                       --��ȣ
    name varchar2(50) not null,                     --�̸�
    email varchar2(100) not null,                   --�̸���
    lv number(1) not null,                          --���(1-�Ϲ�,2-������)
    pic varchar2(100) default 'pic.png' not null,   --����
    intro varchar2(500) null,                       --�ڱ�Ұ�
    regdate date default sysdate not null,          --���Գ�¥    
    ing number(1) default 1 not null                --Ż��(1-Ȱ��,0-Ż��)
);

alter table tblUser
    add (ing number(1) default 1 not null);

insert into tblUser (id, pw, name, email, lv, pic, intro, regdate)
    values ('hong', '1111', 'ȫ�浿', 'hong@gmail.com', 1, default,
            '�ݰ����ϴ�.', default);

insert into tblUser (id, pw, name, email, lv, pic, intro, regdate)
    values ('tiger', '1111', 'ȣ����', 'tiger@gmail.com', 2, default,
            '�������Դϴ�.', default);


select * from tblUser;

commit;


-- �Խ���
create table tblBoard (
    seq number primary key,                         --��ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    regdate date default sysdate not null,          --�ۼ���¥
    readcount number default 0 not null             --��ȸ��
);

create sequence seqBoard;

select * from tblBoard;





create or replace view vwBoard
as
select 
    seq, subject, id, readcount,
    (select name from tblUser where id = tblBoard.id) as name,
    case
        when to_char(sysdate, 'yyyy-mm-dd') = to_char(regdate, 'yyyy-mm-dd')
            then to_char(regdate, 'hh24:mi:ss')
        else
            to_char(regdate, 'yyyy-mm-dd')
    end regdate,
    (sysdate - regdate) as isnew,
    content,
    (select count(*) from tblComment where bseq = tblBoard.seq) as commentCount,
    depth
from tblBoard
    order by thread desc;


select * from vwBoard;

update tblBoard set
    regdate = regdate - 1
        where seq = 3;

commit;

select * from tblBoard order by seq desc;
delete from tblBoard where seq = 15;





select * from (select a.*, rownum as rnum from vwBoard a)
    where rnum between 1 and 10;








-- ��� ���̺�
create table tblComment (
    seq number primary key,                         --��ȣ(PK)
    content varchar2(2000) not null,                --���
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    regdate date default sysdate not null,          --�ۼ���¥
    bseq number not null references tblBoard(seq)   --�θ��(FK)
);

create sequence seqComment;

-- 2	�ȳ��ϼ���. �������Դϴ�.	dog	24/04/16	268
select * from tblComment;

select a.*, (select name from tblUser where id = a.id) as name from tblComment a;



drop table tblComment;
drop table tblBoard;

-- �Խ���(+�亯)
create table tblBoard (
    seq number primary key,                         --��ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    regdate date default sysdate not null,          --�ۼ���¥
    readcount number default 0 not null,            --��ȸ��
    thread number not null,                         --�亯��(����)
    depth number not null                           --�亯��(���)
);

commit;

select * from tblBoard;
select * from tblComment;

select * from
    (select b.*, rownum as rnum from
        (select a.*, (select name from tblUser where id = a.id) as name
            from tblComment a where bseq = 323 order by seq desc) b)
                where rnum between 1 and 10;







delete from tblComment;
delete from tblBoard;

commit;



drop table tblComment;
drop table tblBoard;

-- �Խ���(+�亯)
create table tblBoard (
    seq number primary key,                         --��ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    regdate date default sysdate not null,          --�ۼ���¥
    readcount number default 0 not null,            --��ȸ��
    thread number not null,                         --�亯��(����)
    depth number not null,                           --�亯��(���)
    attach varchar2(100) null                       -- ÷������
);

commit;


-- �Խù� 1�� <- N : N -> �ؽ��±� 1��

-- �ؽ��±�
create table tblHashtag (
    seq number primary key,     -- ��ȣ(PK)
    tag varchar2(100) unique not null -- �ؽ��±�(UQ)
);

create sequence seqHashtag;

-- ����
create table tblTagging (
    seq number primary key,         -- ��ȣ(PK)
    bseq number not null references tblBoard(seq), -- �۹�ȣ(FK)
    hseq number not null references tblHashtag(seq) -- �±׹�ȣ(FK)
);
create sequence seqTagging;

commit;

select * from tblHashtag;
select * from tblTagging;