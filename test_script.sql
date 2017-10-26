/**
This script is for testing the database EW



by Pei Li

9/20/2017
*/

USE ew;

-- Show the itemID, species, color, pattern, genus, material, country of origin, MSRP, quantity and size
--  which the brand is American Vintage, genre is Jazz/Classic and for boys

Select i.ItemID, sp.Species, col.Color, pat.Pattern, ge.Genus, m.Material, c.CountOrig, i.MSRP, s.Size, i.quantity
FROM item_tbl AS i
JOIN size_tbl AS s
ON i.SizeID = s.SizeID
JOIN brand_tbl AS b
ON i.BrandID = b.BrandID
JOIN item_genre_tbl AS ig
ON i.ItemID = ig.ItemID
JOIN species_tbl AS sp
ON i.SpeciesID = sp.SpeciesID
JOIN color_tbl AS col
ON i.ColorID = col.ColorID
JOIN Pattern_tbl AS pat
ON i.PatternID = pat.PatternID
JOIN genus_tbl AS ge
ON i.GenusID = ge.GenusID
JOIN Material_tbl AS m
ON i.MaterialID = m.MaterialID
JOIN Country_Origin_tbl AS c
ON i.CountOrigID = c.CountOrigID
JOIN genre_tbl AS gr
ON ig.GenreID = gr.GenreID
JOIN gender_tbl AS g
ON i.GenderID = g.GenderID
WHERE b.BrandName = 'American Vintage' AND gr.Genre = 'Jazz/Classic' AND g.Gender = 'B';

/** 

create a stored procedure to let user search the 
itemID, species, genus, material, country of origin, MSRP, quantity and size
when the user pass the parameters:  the brand name(American Vintage), genre(Jazz/Classic) and the gender(boys)

*/


DELIMITER //
DROP PROCEDURE IF EXISTS brand_genre_gender;
CREATE PROCEDURE brand_genre_gender(IN brandName VARCHAR(50),IN genre VARCHAR(50),IN gender CHAR(1))
BEGIN
	SET @sql = CONCAT(
		'Select i.ItemID, sp.Species, col.Color, pat.Pattern, ge.Genus, m.Material, c.CountOrig, i.MSRP, s.Size, i.quantity
		FROM item_tbl AS i
		JOIN size_tbl AS s
		ON i.SizeID = s.SizeID
		JOIN brand_tbl AS b
		ON i.BrandID = b.BrandID
		JOIN item_genre_tbl AS ig
		ON i.ItemID = ig.ItemID
		JOIN species_tbl AS sp
		ON i.SpeciesID = sp.SpeciesID
		JOIN color_tbl AS col
		ON i.ColorID = col.ColorID
		JOIN Pattern_tbl AS pat
		ON i.PatternID = pat.PatternID
		JOIN genus_tbl AS ge
		ON i.GenusID = ge.GenusID
		JOIN Material_tbl AS m
		ON i.MaterialID = m.MaterialID
		JOIN Country_Origin_tbl AS c
		ON i.CountOrigID = c.CountOrigID
		JOIN genre_tbl AS gr
		ON ig.GenreID = gr.GenreID
		JOIN gender_tbl AS g
		ON i.GenderID = g.GenderID
		WHERE b.BrandName = \'', brandName, '\' AND gr.Genre = \'', genre, '\' AND g.Gender = \'', gender, '\'');
	
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
END //
DELIMITER ;

SELECT 'procedure brand_genre_gender created' AS MESSAGE;

-- call the procedure with given the parameters

CALL brand_genre_gender('American Vintage', 'Jazz/Classic', 'B');

CALL brand_genre_gender('Baby Cz', 'Pop/Trendy', 'B');

 
 
-- Show the quantity and brand name which the genre is Hip Hop/Streetwear, size is 4T and gender is girl.


-- Show the quantity and size which genre is Pop/Trendy, gender is boy and mateiral is 100% cotton