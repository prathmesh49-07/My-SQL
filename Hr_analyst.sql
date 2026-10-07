use hr_analyst;
select *from hr;
#Basic Queries
select * from hr where Attrition="yes";
select avg(Age),Department from hr group by Department;
select * from hr where JobSatisfaction in ("4",">4");
select * from hr where Department= "Research & Development";
select JobRole,sum(MonthlyIncome)as total_monthlyincome from hr group by JobRole;
#Aggregation;
select count(ï»¿EmpID)as emloyee_count ,AgeGroup from hr group by AgeGroup;
select ï»¿EmpID,Age,Gender,avg(PercentSalaryHike)as avg_PercentSalaryHike from hr where OverTime="yes" group by ï»¿EmpID,Age,Gender;
select ï»¿EmpID,Age,Gender,max(TotalWorkingYears)as max_TotalWorkingYears from hr group by ï»¿EmpID,Age,Gender;
select Department from hr 
where EnvironmentSatisfaction>(select avg(EnvironmentSatisfaction)as highst_avgEnvironmentSatisfaction from hr);
select EducationField ,avg(YearsAtCompany) as avg_YearsAtCompany from hr group by EducationField;
# filyering & sorting;
select ï»¿EmpID,Age,Department,Gender,sum(MonthlyIncome)as _MonthlyIncome from hr group by ï»¿EmpID,Age,Department,Gender order by _MonthlyIncome desc limit 10;
select * from hr where NumCompaniesWorked>"3";
select ï»¿EmpID,Age,Department,Gender,max(JobLevel)as highest_JobLevel from hr where Department="sales"
 group by ï»¿EmpID,Age,Department,Gender order by highest_JobLevel desc;
 select ï»¿EmpID,Age,Department,Gender from hr where PercentSalaryHike>(select avg(PercentSalaryHike) from hr);
 select ï»¿EmpID,min(DistanceFromHome)as min_dist,MaritalStatus from hr group by ï»¿EmpID,MaritalStatus order by min_dist asc limit 10;
 #Data-based Analysis;
select sum(TrainingTimesLastYear)as total_TrainingTimesLastYear,AgeGroup from hr group by AgeGroup;
 select avg(YearsInCurrentRole)as avg_YearsInCurrentRole ,JobRole from hr group by JobRole;
select *from hr where YearsSinceLastPromotion=0;
select ï»¿EmpID,Age,Department,Gender,YearsWithCurrManager from hr where YearsWithCurrManager>10;
select * from hr where YearsAtCompany>(select avg(YearsAtCompany)from hr);
#joins and Subqueries;
select JobRole,MonthlyIncome from hr where MonthlyIncome>(select avg(MonthlyIncome)as highest_avg_MonthlyIncome from hr);
select JobSatisfaction,RelationshipSatisfaction,EnvironmentSatisfaction from hr
 where EnvironmentSatisfaction<(select avg(EnvironmentSatisfaction) from hr);
 select Department,max(PerformanceRating) as highest_PerformanceRating from hr group by Department;
 select EducationField,JobInvolvement from hr where JobInvolvement=3 or JobInvolvement>3;
 select ï»¿EmpID,MonthlyIncome,OverTime from hr where OverTime="yes" order by MonthlyIncome desc limit 71;
 #Advanced Analysis;
select Department,round(count(case when Attrition="Yes" then 1 end )*100/count(*),2)as attrition_rate from hr group by Department;
select OverTime,avg(JobSatisfaction)as avg_jobsatisfy from hr group by OverTime;
select ï»¿EmpID,StockOptionLevel,SalarySlab from hr where StockOptionLevel >"1" or SalarySlab="High";


 
