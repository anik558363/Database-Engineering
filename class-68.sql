/*

Advantages
1. Code Reusability
2. Reduce Duplicate Sql
3. Centralize Business Logic
4. Better Maintainability
5. Security
6. Encapsulation
7. Better Transaction Control
8. Parameter Support
9. Batch Processing
10. Cleaner Applicateion code


Production use Cases
1. Inventory Transfer
2. Order Processing
3. Payroll Processing
4. Bulk Data Import
5. Audit Logging
6. Daily Report Generation
7. Stock Management
8. Database Maintenance
9. Scheduled Tasks



important part stored procedure


--- create or replace procedure
--- parameter
--- DECLARE(variables)
--- BEGIN---  logic ----END
--- $$ LANGUAGE PLPGSQL





--- function vs sp
--- function: value return korey
--- sp: value return koreay na


--- function: select theay call hoi
--- sp: call, excute
--- function: return
--- sp: return x



*/




CREATE OR REPLACE PROCEDURE procedure_name(params1,params2,params3)


AS $$ DECLARE
    -- variables


BEGIN

    -- logic


END;
$$ LANGUAGE PLPGSQL;
