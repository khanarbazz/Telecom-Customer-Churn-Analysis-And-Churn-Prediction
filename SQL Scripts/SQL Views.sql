
Create View stayed_and_churn_view  as
	select * 
	from customer 
	where Customer_Status In ('Churned', 'Stayed') ;

Go

Create view joined_view as
	select *
	from customer where customer_status = 'Joined' ;