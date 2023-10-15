USE TransportationDatabase;
GO

CREATE OR ALTER PROCEDURE DeleteRowsWithNullValuesFromTables
AS
BEGIN
    
    DELETE FROM stg.datetoyear3
    WHERE Shipment_ID IS NULL
       OR Shipment_Date IS NULL
       OR Shipment_Month IS NULL
       OR Shipment_Year IS NULL;

    DELETE FROM stg.distancetoending6
    WHERE Shipment_ID IS NULL
       OR Distance_Covered_Km IS NULL
       OR Fuel_Consumptio_L IS NULL
       OR Transport_Material_Type IS NULL
       OR No_of_1_way_Trips IS NULL
       OR No_of_Return_Trips IS NULL
       OR Far IS NULL
       OR Regular IS NULL
       OR Close IS NULL
       OR Starting_Country IS NULL
       OR Ending_Point IS NULL;

    DELETE FROM stg.drivernametoproductivity5
    WHERE Shipment_ID IS NULL
       OR Driver_Name IS NULL
       OR Driver_Income IS NULL
       OR Driver_Productivity_Score IS NULL;

    DELETE FROM stg.idtodelivery1
    WHERE Shipment_ID IS NULL
       OR Shipment_Volume_Units IS NULL
       OR Total_Weight IS NULL
       OR Delivery_Time_Days IS NULL;

    DELETE FROM stg.ontimetofleet4
    WHERE Shipment_ID IS NULL
       OR OnTime_Delivery_Rate IS NULL
       OR Order_Accuracy IS NULL
       OR Route_Optimization_Score IS NULL
       OR Fleet_Performance_Score IS NULL;

    DELETE FROM stg.transporttoroutes2
    WHERE Shipment_ID IS NULL
       OR Transportation_Cost IS NULL
       OR Routes IS NULL;
END;