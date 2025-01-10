USE windowfunc_practice;

SELECT 
    Name,
    Department,
    Annual_Salary,
    RANK() OVER (PARTITION BY Department ORDER BY Annual_Salary DESC) AS Rank_in_Department,
    LAG(Annual_Salary) OVER (PARTITION BY Department ORDER BY Annual_Salary DESC) AS Previous_Salary,
    Annual_Salary - LAG(Annual_Salary) OVER (PARTITION BY Department ORDER BY Annual_Salary DESC) AS Salary_Change,
    AVG(Annual_Salary) OVER (PARTITION BY Department) AS Average_Salary_in_Department
FROM employees_datagov;

