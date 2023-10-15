USE [SoftwizSQLDatabase]
GO
CREATE PROCEDURE dbo.ConvertStagingToDbo
AS
BEGIN
    SET NOCOUNT ON;
    IF OBJECT_ID('dbo.[Country3]') IS NULL
    BEGIN
        CREATE TABLE dbo.[Country3] (
            Player_id INT,
            Country VARCHAR(100),
            Country_url VARCHAR(200)
        );
    END;
    TRUNCATE TABLE dbo.[Country3];
    INSERT INTO dbo.[Country3] (Player_id, Country, Country_url)
    SELECT Player_id, Country, Country_url
    FROM [stg].[Country3];
    IF OBJECT_ID('dbo.[Experienceweight4]') IS NULL
    BEGIN
        CREATE TABLE dbo.[Experienceweight4] (
            Player_id INT,
            Experience_years INT,
            Player_rating DECIMAL(5, 2),
            Height_cm INT,
            Weight_kg DECIMAL(5, 2)
        );
    END;
    TRUNCATE TABLE dbo.[Experienceweight4];
    INSERT INTO dbo.[Experienceweight4] (Player_id, Experience_years, Player_rating, Height_cm, Weight_kg)
    SELECT Player_id, Experience_years, Player_rating, Height_cm, Weight_kg
    FROM [stg].[Experienceweight4];
    IF OBJECT_ID('dbo.[minute5]') IS NULL
    BEGIN
        CREATE TABLE dbo.[minute5](
            Player_id INT,
            Minutes played INT,
            Games_Played INT,
            Points Scored INT,
            Assists INT,
            Rebounds INT,
            Shot Accuracy DECIMAL(5, 2),
            Efficiency Rating DECIMAL(5, 2));
    END;
    TRUNCATE TABLE dbo.[minute5];
    INSERT INTO dbo.[minute5] (Player_id, Minutes_played, Games_Played, Points_Scored, Assists, Rebounds, Shot_Accuracy, Efficiency_Rating)
    SELECT Player_id, Minutes_played, Games_Played, Points_Scored, Assists, Rebounds, Shot_Accuracy, Efficiency_Rating
    FROM [stg].[minute5];

    IF OBJECT_ID('dbo.[Player1]') IS NULL
    BEGIN
        CREATE TABLE dbo.[Player1] (
            Player_id INT,
            Player_Name VARCHAR(100),
            Gender VARCHAR(10),
            AGE INT,
            Image_Url VARCHAR(200)
        );
    END;
    TRUNCATE TABLE dbo.[Player1];
    INSERT INTO dbo.[Player1] (Player_id, Player_Name, Gender, AGE, Image_Url)
    SELECT Player_id, Player_Name, Gender, AGE, Image_Url
    FROM [stg].[Player1];
    IF OBJECT_ID('dbo.[Team2]') IS NULL
    BEGIN
        CREATE TABLE dbo.[Team2] (
            Player_id INT,
            Team VARCHAR(100),
            Team_rank INT,
            Team_Url VARCHAR(200)
        );
    END;
    TRUNCATE TABLE dbo.[Team2];
    INSERT INTO dbo.[Team2] (Player_id, Team, Team_rank, Team_Url)
    SELECT Player_id, Team, Team_rank, Team_Url
    FROM [stg].[Team2];
    IF OBJECT_ID('dbo.[Winloss6]') IS NULL
    BEGIN
        CREATE TABLE dbo.[Winloss6] (
            Player_id INT,
            Win INT,
            Loss INT
        );
    END;
    TRUNCATE TABLE dbo.[Winloss6];
    INSERT INTO dbo.[Winloss6] (Player_id, Win, Loss)
    SELECT Player_id, Win, Loss
    FROM [stg].[Winloss6];
END
GO