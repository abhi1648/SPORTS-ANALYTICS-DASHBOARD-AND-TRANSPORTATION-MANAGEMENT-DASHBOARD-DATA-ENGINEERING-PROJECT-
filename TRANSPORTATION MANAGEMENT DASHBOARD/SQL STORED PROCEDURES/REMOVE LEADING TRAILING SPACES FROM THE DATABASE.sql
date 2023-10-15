USE TransportationDatabase;
GO

CREATE PROCEDURE RemoveTrailingSpacesFromTables
AS
BEGIN
    
    UPDATE [stg].[datetoyear3]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        Shipment_Date = RTRIM(Shipment_Date),
        Shipment_Month = RTRIM(Shipment_Month),
        Shipment_Year = RTRIM(Shipment_Year);

    
    UPDATE [stg].[distancetoending6]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        Distance_Covered_Km = RTRIM(Distance_Covered_Km),
        Fuel_Consumptio_L = RTRIM(Fuel_Consumptio_L),
        Transport_Material_Type = RTRIM(Transport_Material_Type),
        No_of_1_way_Trips = RTRIM(No_of_1_way_Trips),
        No_of_Return_Trips = RTRIM(No_of_Return_Trips),
        Far = RTRIM(Far),
        Regular = RTRIM(Regular),
        Close = RTRIM(Close),
        Starting_Country = RTRIM(Starting_Country),
        Ending_Point = RTRIM(Ending_Point);

   
    UPDATE [stg].[drivernametoproductivity5]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        Driver_Name = RTRIM(Driver_Name),
        Driver_Income = RTRIM(Driver_Income),
        Driver_Productivity_Score = RTRIM(Driver_Productivity_Score);

    UPDATE [stg].[idtodelivery1]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        Shipment_Volume_Units = RTRIM(Shipment_Volume_Units),
        Total_Weight = RTRIM(Total_Weight),
        Delivery_Time_Days = RTRIM(Delivery_Time_Days);

    UPDATE [stg].[ontimetofleet4]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        OnTime_Delivery_Rate = RTRIM(OnTime_Delivery_Rate),
        Order_Accuracy = RTRIM(Order_Accuracy),
        Route_Optimization_Score = RTRIM(Route_Optimization_Score),
        Fleet_Performance_Score = RTRIM(Fleet_Performance_Score);

    UPDATE [stg].[transporttoroutes2]
    SET
        Shipment_ID = RTRIM(Shipment_ID),
        Transportation_Cost = RTRIM(Transportation_Cost),
        Routes = RTRIM(Routes);
END;
