Select Gender, 
	   Count(Gender) as TotalCount,
	   Count(Gender) * 1.0 / (Select Count(*) from customer_raw)  as Percentage
from customer_raw
	Group by Gender;


Select Contract,
	   Count(Contract) as TotalCount,
	   Count(Contract) * 1.0 / (Select Count(*) from customer_raw)  as Percentage
from customer_raw
	Group by Contract ;


Select Customer_Status,
	   Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
	   Sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_raw) * 100  as RevPercentage
from customer_raw
	Group by Customer_Status ;

Select State, 
	   Count(State) as TotalCount,
	   Count(State) * 1.0 / (Select Count(*) from customer_raw)  as Percentage
from customer_raw
	Group by State
	Order by Percentage desc;