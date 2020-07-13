-- import data into the USHE_DWS table from the submission file by using datagrip gui or sql developer gui
-- remember to change the 1st rows to column headers

-- update submission and return dates
-- change the dates below to reflect the appropriate submission date and received date (date the file was received)
update ushe_dws
set submission_dt = to_date('04/14/2020', 'mm/dd/yyyy'),  --change date
    received_dt = to_date('04/30/2020', 'mm/dd/yyyy')  --change date
where submission_dt is null;

commit;

select *
from ushe_dws;
