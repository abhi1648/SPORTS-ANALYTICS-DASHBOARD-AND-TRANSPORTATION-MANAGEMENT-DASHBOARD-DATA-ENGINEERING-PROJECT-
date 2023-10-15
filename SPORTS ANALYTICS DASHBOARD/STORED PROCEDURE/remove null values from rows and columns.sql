USE SoftwizSQLDatabase;
GO

CREATE OR ALTER PROCEDURE DeleteNullValuesFromTables
AS
BEGIN
    DELETE FROM [stg].[Country3]
    WHERE [Player_id] IS NULL
       OR [Country] IS NULL
       OR [Country_url] IS NULL;

    DELETE FROM [stg].[Experienceweight4]
    WHERE [Player_id] IS NULL
       OR [Experience_years] IS NULL
       OR [Player_rating] IS NULL
       OR [Height_cm] IS NULL
       OR [Weight_kg] IS NULL;

    DELETE FROM [stg].[minute5]
    WHERE [Player_id] IS NULL
       OR [Minutes_played] IS NULL
       OR [Games_Played] IS NULL
       OR [Points_Scored] IS NULL
       OR [Assists] IS NULL
       OR [Rebounds] IS NULL
       OR [Shot_Accuracy] IS NULL
       OR [Efficiency_Rating] IS NULL;

    DELETE FROM [stg].[Player1]
    WHERE [Player_id] IS NULL
       OR [Player_Name] IS NULL
       OR [Gender] IS NULL
       OR [AGE] IS NULL
       OR [Image_Url] IS NULL;

    DELETE FROM [stg].[Team2]
    WHERE [Player_id] IS NULL
       OR [Team] IS NULL
       OR [Team_rank] IS NULL
       OR [Team_Url] IS NULL;

    DELETE FROM [stg].[Winloss6]
    WHERE [Player_id] IS NULL
       OR [Win] IS NULL
       OR [Loss] IS NULL;

    DELETE FROM [stg].[Country3]
    WHERE [Player_id] IS NULL
       AND [Country] IS NULL
       AND [Country_url] IS NULL;

    DELETE FROM [stg].[Experienceweight4]
    WHERE [Player_id] IS NULL
       AND [Experience_years] IS NULL
       AND [Player_rating] IS NULL
       AND [Height_cm] IS NULL
       AND [Weight_kg] IS NULL;

    DELETE FROM [stg].[minute5]
    WHERE [Player_id] IS NULL
       AND [Minutes_played] IS NULL
       AND [Games_Played] IS NULL
       AND [Points_Scored] IS NULL
       AND [Assists] IS NULL
       AND [Rebounds] IS NULL
       AND [Shot_Accuracy] IS NULL
       AND [Efficiency_Rating] IS NULL;

    DELETE FROM [stg].[Player1]
    WHERE [Player_id] IS NULL
       AND [Player_Name] IS NULL
       AND [Gender] IS NULL
       AND [AGE] IS NULL
       AND [Image_Url] IS NULL;

    DELETE FROM [stg].[Team2]
    WHERE [Player_id] IS NULL
       AND [Team] IS NULL
       AND [Team_rank] IS NULL
       AND [Team_Url] IS NULL;

    DELETE FROM [stg].[Winloss6]
    WHERE [Player_id] IS NULL
       AND [Win] IS NULL
       AND [Loss] IS NULL;

    ALTER TABLE [stg].[Country3] DROP COLUMN IF EXISTS [Player_id], [Country], [Country_url];
    ALTER TABLE [stg].[Experienceweight4] DROP COLUMN IF EXISTS [Player_id], [Experience_years], [Player_rating], [Height_cm], [Weight_kg];
    ALTER TABLE [stg].[minute5] DROP COLUMN IF EXISTS [Player_id], [Minutes_played], [Games_Played], [Points_Scored], [Assists], [Rebounds], [Shot_Accuracy], [Efficiency_Rating];
    ALTER TABLE [stg].[Player1] DROP COLUMN IF EXISTS [Player_id], [Player_Name], [Gender], [AGE], [Image_Url];
    ALTER TABLE [stg].[Team2] DROP COLUMN IF EXISTS [Player_id], [Team], [Team_rank], [Team_Url];
    ALTER TABLE [stg].[Winloss6] DROP COLUMN IF EXISTS [Player_id], [Win], [Loss];
END;
