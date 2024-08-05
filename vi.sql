create schema esha_project;
SELECT * FROM esha_project.`virtal internship`;
use esha_project;
select ('Prospect ID', 'Lead Number') from virtal internship;

describe virtal internship;

select distinct company from virtal internship; select count(company) from virtal internship

 where company <> "";

select count('Lead Source') from virtal internship

where 'Lead Source' = "";

select 'What matters most to you in choosing a course', count('What matters most to you in choosing a course')
from virtal internship
group by 'What matters most to you in choosing a course';
create table lead_data

select ('Prospect ID', 'Lead Number', 'Lead Origin', 'Lead Source', 'Do Not Email', 'Do Not Call', 
'TotalVisits', 'Total Time Spent on website', 'Page Views Per Visit', 'Last Activity', 'Country', 
'Specialization', 'How did you hear about X Education', 'What is your current occupation',
'What matters most to you in choosing a course', 'Search', 'Magazine', 'Newspaper Article',
 'X Education Forums', 'Newspaper', 'Digital Advertisement', 'Through Recommendations', 'Lead Quality',
 'Update me on Supply Chain Content', 'Get updates on DM Content', 'Lead Profile', 'City', 
 'Asymmetrique Activity Index', 'Asymmetrique Profile', 'Asymetrique Profile Score', 
 'I agree to pay the amount through cheque', 'A free copy of Mastering The Interview',
 'Last Notable Activity')
from
virtal internship;

select * from lead_data;

#version control

create table lead_data_v1 as select *from lead_data;

set sql_safe_updates= 0;

update lead_data_vl set 'Lead Source' = 'Others'

where lead_data_v1. Lead Source = '';

select distinct 'Lead Source' from lead_data_v1;
update lead_data_v1
set lead_data_v1. 'What matters most to you in choosing a course' =
case
    when lead_data_v1. 'What matters most to you in choosing a course' = ''
	then 'Others'

else lead_data_v1. 'What matters most to you in choosing a course'

end;