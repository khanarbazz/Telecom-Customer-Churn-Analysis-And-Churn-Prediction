SELECT 
    Customer_ID,
    Gender,
    Age,
    CASE 
        WHEN ISNULL(Married, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    ISNULL(Value_Deal, 'None') AS Value_Deal,
    CASE 
        WHEN ISNULL(Phone_Service, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Phone_Service,
    CASE 
        WHEN ISNULL(Multiple_Lines, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Multiple_Lines,
    CASE 
        WHEN ISNULL(Internet_Service, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Internet_Service,
    ISNULL(Internet_Type, 'None') AS Internet_Type,
    CASE 
        WHEN ISNULL(Online_Security, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Online_Security,
    CASE 
        WHEN ISNULL(Online_Backup, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Online_Backup,
    CASE 
        WHEN ISNULL(Device_Protection_Plan, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Device_Protection_Plan,
    CASE 
        WHEN ISNULL(Premium_Support, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Premium_Support,
    CASE 
        WHEN ISNULL(Streaming_TV, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Streaming_TV,
    CASE 
        WHEN ISNULL(Streaming_Movies, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Streaming_Movies,
    CASE 
        WHEN ISNULL(Streaming_Music, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Streaming_Music,
    CASE 
        WHEN ISNULL(Unlimited_Data, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Unlimited_Data,
    Contract,
    CASE 
        WHEN ISNULL(Paperless_Billing, 0) = 1 THEN 'Yes'
        ELSE 'No'
    END AS Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    ISNULL(Churn_Category, 'Others') AS Churn_Category,
    ISNULL(Churn_Reason, 'Others') AS Churn_Reason
INTO Customer
FROM Customer_raw;
