
-- AjaxTest > script.sql

-- ��������

--   �ӽ�(���̺� 2~3�� ��ħ)  ���� x 
create table tblSurvey (
    seq number primary key,             -- ��ȣ(PK)
    question varchar2(300) not null,    -- ���� 
    item1 varchar2(300) not null,       -- �׸�1
    item2 varchar2(300) not null,       -- �׸�2
    item3 varchar2(300) not null,       -- �׸�3
    item4 varchar2(300) not null,       -- �׸�4
    cnt1 number default 0 not null,     -- ����1
    cnt2 number default 0 not null,     -- ����2
    cnt3 number default 0 not null,     -- ����3
    cnt4 number default 0 not null      -- ����4
);
    
    
insert into tblSurvey values (1, '���� �ڽ��ִ� ���α׷��� ����?', 'JAVA', 'Python', 'C#', 'C++', default, default, default, default);

select * from tblSurvey;

update tblSurvey set
    cnt1 = 5,
    cnt2 = 4,
    cnt3 = 2,
    cnt4 = 1
    where seq = 1;

commit;