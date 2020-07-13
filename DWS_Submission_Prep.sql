select
3671 as D_INST,
spbpers_ssn as D_SSN,
spriden_id as D_BANNER_ID,
to_char(shrdgmr_grad_date, 'yyyymmdd') as D_START_DT,
'20200331' as D_END_DT,
shrdgmr_program as Description
from saturn.shrdgmr, spriden, spbpers
where shrdgmr_pidm = spriden_pidm
  and shrdgmr_pidm = spbpers_pidm
  and shrdgmr_degs_code = 'AW'
  and spriden_change_ind is null
  and spbpers_ssn is not null
  and shrdgmr_grad_date between to_date('2012', 'yyyy')
  and to_date('03/31/2020', 'mm/dd/yyyy')
order by 4 asc;
