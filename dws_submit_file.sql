         SELECT 3671 AS d_inst,
                spbpers_ssn AS d_ssn,
                spriden_id AS d_banner_id,
                to_char(shrdgmr_grad_date, 'yyyymmdd') AS d_start_dt,
                '20210331' AS d_end_dt, -- update this to match WHERE clause
                shrdgmr_program AS description
           FROM saturn.shrdgmr a
      INNER JOIN spriden b ON b.spriden_pidm = a.shrdgmr_pidm
      INNER JOIN spbpers c ON c.spbpers_pidm = a.shrdgmr_pidm
          WHERE shrdgmr_degs_code = 'AW'
            AND spriden_change_ind IS NULL
            AND spbpers_ssn IS NOT NULL
            AND shrdgmr_grad_date BETWEEN to_date('2012', 'yyyy') AND to_date('03/31/2021', 'mm/dd/yyyy')
            /* This gets the first degree received (lowest seq_no) in shrdgmr.  USHE is requesting distinct students */
            AND shrdgmr_seq_no = (SELECT MIN(shrdgmr_seq_no) FROM shrdgmr a1 WHERE a1.shrdgmr_pidm = shrdgmr_pidm)
          ORDER BY 4 ASC;