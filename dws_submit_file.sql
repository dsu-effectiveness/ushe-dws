SELECT 3671 AS d_inst,
       spbpers_ssn AS d_ssn,
       spriden_id AS d_banner_id,
       to_char(shrdgmr_grad_date, 'yyyymmdd') AS d_start_dt,
       '20200930' AS d_end_dt, -- update this to match WHERE clause
       shrdgmr_program AS description
  FROM saturn.shrdgmr,
       spriden,
       spbpers
 WHERE shrdgmr_pidm = spriden_pidm
   AND shrdgmr_pidm = spbpers_pidm
   AND shrdgmr_degs_code = 'AW'
   AND spriden_change_ind IS NULL
   AND spbpers_ssn IS NOT NULL
   AND shrdgmr_grad_date BETWEEN to_date('2012', 'yyyy') AND to_date('09/30/2020', 'mm/dd/yyyy')
 ORDER BY 4 ASC;
