SELECT 
	Title as title, 
	Price as price, 
	extract(YEAR FROM Release_Date) as release_year, 
	extract(MONTH FROM Release_Date) as release_month, 
	Rating as rating, 
	Required_Age as required_age, 
	Is_Multiplayer as is_multiplayer 
FROM steam.app_id_info_old Where steam.app_id_info_old.Type = 'game' and steam.app_id_info_old.Rating > 0 and steam.app_id_info_old.Release_Date > '1980'
UNION ALL
SELECT 
	Title as title, 
	Price as price, 
	extract(YEAR FROM Release_Date) as release_year, 
	extract(MONTH FROM Release_Date) as release_month, 
	Rating as rating, 
	Required_Age as required_age, 
	Is_Multiplayer as is_multiplayer 
FROM steam.app_id_info Where steam.app_id_info.Type = 'game' and steam.app_id_info.Rating > 0 and steam.app_id_info.Release_Date > '1980'


