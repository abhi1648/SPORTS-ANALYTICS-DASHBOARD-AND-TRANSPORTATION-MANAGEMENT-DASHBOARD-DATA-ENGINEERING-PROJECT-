USE [TransportationDatabase]
GO
CREATE PROCEDURE dbo.ConvertStagingToDbo
AS
BEGIN
    SET NOCOUNT ON;
    IF OBJECT_ID('dbo.datetoyear3') IS NULL
    BEGIN
        CREATE TABLE dbo.[datetoyear3] (
            Shipment_ID INT,
            Shipment_Date Date (100),
            Shipment_Month VARCHAR(200),
			Shipment_Year INT
        );
    END;
    TRUNCATE TABLE dbo.[datetoyear3];
    INSERT INTO dbo.[datetoyear3] (Shipment_ID,Shipment_Date,Shipment_Month, Shipment_Year)
    SELECT Player_id, Country, Country_url
    FROM [stg].[datetoyear3];

    IF OBJECT_ID('[dbo].[distancetoending6]') IS NULL
    BEGIN
        CREATE TABLE dbo.[distancetoending6] (
            [Shipment_ID] INT,
            [Distance_Covered_Km]INT,
            [Fuel_Consumptio_L] INT,
            [Transport_Material_Type] CHAR  ,
            [No_of_1_way_Trips]INT,
			[No_of_Return_Trips] INT,
			[Far] INT, 
			[Regular]INT, 
			[Close] INT, 
			[Starting_Country]INT, 
			[Ending_Point]INT, 
        );
    END;
    TRUNCATE TABLE dbo.[distancetoending6];
    INSERT INTO dbo.[distancetoending6] (Shipment_ID, Distance_Covered_Km, Fuel_Consumptio_L, Transport_Material_Type, No_of_1_way_Trips,No_of_Return_Trips,Far,Regular,Close,Starting_Country,Ending_Point)
    SELECT Shipment_ID, Distance_Covered_Km, Fuel_Consumptio_L, Transport_Material_Type, No_of_1_way_Trips,No_of_Return_Trips,Far,Regular,Close,Starting_Country,Ending_Point
    FROM [stg].[distancetoending6];

    IF OBJECT_ID('[dbo].[drivernametoproductivity5]') IS NULL
    BEGIN
        CREATE TABLE dbo.[drivernametoproductivity5](
            Shipment_ID INT,
            Driver_Name INT,
            Driver_Income INT,
            Driver_Productivity_Score INT;
    END;
    TRUNCATE TABLE dbo.[drivernametoproductivity5];
    INSERT INTO dbo.[drivernametoproductivity5] (Shipment_ID,Driver_Name, Driver_Income,Driver_Productivity_Score);
    SELECT Shipment_ID,Driver_Name, Driver_Income,Driver_Productivity_Score
    FROM [stg].[drivernametoproductivity5];

    IF OBJECT_ID('dbo.idtodelivery1') IS NULL
    BEGIN
        CREATE TABLE dbo.idtodelivery1 (
            Shipment_ID INT,
            Shipment_Volume_Units VARCHAR(100),
            Total_Weight VARCHAR(10),
            AGE INT,
            Delivery_Time_Days VARCHAR(200)
        );
    END;
    TRUNCATE TABLE dbo.idtodelivery1;
    INSERT INTO dbo.idtodelivery1 (Shipment_ID,Shipment_Volume_Units,Total_Weight,AGE, Delivery_Time_Days);
    SELECT Shipment_ID,Shipment_Volume_Units,Total_Weight,AGE, Delivery_Time_Days
    FROM [stg].[idtodelivery1];

    IF OBJECT_ID('dbo.ontimetofleet4') IS NULL
    BEGIN
        CREATE TABLE dbo.ontimetofleet4 (
            Shipment_ID INT,
            OnTime_Delivery_Rate VARCHAR(100),
            Order_Accuracy INT,
            Route_Optimization_Score VARCHAR(200)
			Fleet_Performance_Score VARCHAR(200)
        );
    END;
    TRUNCATE TABLE dbo.ontimetofleet4;
    INSERT INTO dbo.ontimetofleet4 (Shipment_ID,OnTime_Delivery_Rate,Order_Accuracy,Route_Optimization_Score,Fleet_Performance_Score);
    SELECT Shipment_ID,OnTime_Delivery_Rate,Order_Accuracy,Route_Optimization_Score,Fleet_Performance_Score
    FROM stg.ontimetofleet4;

    IF OBJECT_ID('dbo.transporttoroutes2') IS NULL
    BEGIN
        CREATE TABLE dbo.transporttoroutes2 (
            Shipment_ID INT,
            Transportation_Cost INT,
            Routes INT
        );
    END;
    TRUNCATE TABLE dbo.transporttoroutes2;
    INSERT INTO dbo.transporttoroutes2 (Shipment_ID,Transportation_Cost,Routes);
    SELECT Shipment_ID,Transportation_Cost,Routes
    FROM [stg].[transporttoroutes26];
END
GO