-- Memo > script.sql

drop table tblMemo;
drop sequence seqMemo;

create table tblMemo (
    seq number primary key, --�޸��ȣ
    name varchar2(30) not null, -- �ۼ���
    pw varchar2(30) not null, -- ��ȣ
    memo varchar2(2000) not null, -- �޸�
    regdate date default sysdate not null -- �ۼ���
);

create sequence seqMemo;

-- �޸𾲱�
insert into tblMemo (seq, name, pw, memo, regdate)
    values (seqMemo.nextVal, 'ȫ�浿', '1111', '�޸��Դϴ�.', default);
    
-- �޸� ��� ����
select * from tblMemo order by seq desc;

-- �ۼ��� Ȯ���ϱ� / count(*) > ��ȣ�� ���߸� 1�̰�, Ʋ���� 0
select count(*) from tblMemo where seq = 1 and pw = '1111';

-- �޸� �����ϱ�
update tblMemo set memo = '�����մϴ�.' where seq = 1;

-- �޸� �����ϱ�
delete from tblMemo where seq = 1;

commit;