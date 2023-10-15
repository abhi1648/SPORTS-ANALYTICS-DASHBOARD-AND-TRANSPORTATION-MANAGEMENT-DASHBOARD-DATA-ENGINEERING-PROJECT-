USE SoftwizSQLDatabase;
GO

CREATE PROCEDURE RemoveTrailingSpacesFromTables
AS
BEGIN
    UPDATE [stg].[Country3]
    SET 
        Country_id = RTRIM(Country_id),
        Country = RTRIM(Country),
        Country_url = RTRIM(Country_url);

    UPDATE [stg].[Experienceweight4]
    SET 
        Player_id = RTRIM(Player_id),
        Experience_years = RTRIM(Experience_years),
        Player_rating = RTRIM(Player_rating),
        Height_cm = RTRIM(Height_cm),
        Weight_kg = RTRIM(Weight_kg);

    UPDATE [stg].[minute5]
    SET 
        Player_id = RTRIM(Player_id),
        Minutes_played = RTRIM(Minutes_played),
        Games_Played = RTRIM(Games_Played),
        Points_Scored = RTRIM(Points_Scored),
        Assists = RTRIM(Assists),
        Rebounds = RTRIM(Rebounds),
        Shot_Accuracy = RTRIM(Shot_Accuracy),
        Efficiency_Rating = RTRIM(Efficiency_Rating);

    UPDATE [stg].[Player1]
    SET 
        Player_id = RTRIM(Player_id),
        Player_Name = RTRIM(Player_Name),
        Gender = RTRIM(Gender),
        AGE = RTRIM(AGE),
        Image_Url = RTRIM(Image_Url);

    UPDATE [stg].[Team2]
    SET 
        Player_id = RTRIM(Player_id),
        Team = RTRIM(Team),
        Team_rank = RTRIM(Team_rank),
        Team_Url = RTRIM(Team_Url);

    UPDATE [stg].[Winloss6]
    SET 
        Player_id = RTRIM(Player_id),
        Win = RTRIM(Win),
        Loss = RTRIM(Loss);
END;
