--run to recreate table if needed
drop table ushe_dws;

create table ushe_dws (
    D_Inst varchar2(4),
    D_SSN varchar2(15),
    D_Banner_ID varchar2(6),
    D_Start_DT varchar2(8),
    D_End_DT varchar2(8),
    Description varchar2(50),
    YRQTR varchar2(5),
    Wages number,
    NAICS_CD varchar2(50),
    Submission_DT date,
    Return_DT date
);




