/*
This script is for importing size_guide_tbl

by Pei Li

10/5/17
*/

-- select brandID from brand_tbl into size_guide_tbl

INSERT INTO size_guide_tbl(BrandID, SizeID, GenderID)
SELECT BrandID, SizeID, GenderID
FROM brand_tbl, size_tbl, gender_tbl
WHERE brandID = 1 and GenderID = 1;

-- function

DELIMITER //
DROP FUNCTION IF EXISTS get_max_brandID;

CREATE FUNCTION get_max_brandID() RETURNS INT
	BEGIN 
		DECLARE maxBrandID INT;
		
		SELECT MAX(BrandID)
		INTO maxBrandID		
		FROM brand_tbl;
		
		RETURN (maxBrandID);
		
	END //
	
DELIMITER ;

select get_max_brandID();


DELIMITER //
DROP PROCEDURE IF EXISTS import_size_guide;
CREATE PROCEDURE import_size_guide()
	BEGIN
		DECLARE i INT;
		DECLARE j INT;
		
		SET i = 1;
		
		
		WHILE i <= 45 DO   -- 45 is the maxBrandID
			SET j = 1;
			WHILE j <= 3 DO   -- 3 is the maxGenderID
		
				SET @sql_2 = CONCAT(
					'INSERT INTO size_guide_tbl(BrandID, SizeID, GenderID)
					SELECT BrandID, SizeID, GenderID
					FROM brand_tbl, size_tbl, gender_tbl
					WHERE brandID = ',i, ' AND GenderID = ',j 
				);
				
				
				PREPARE stmt FROM @sql_2;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
				
				SET j = j + 1;
				
			END WHILE;
			
			SET i = i + 1;
		END WHILE;
	END //
DELIMITER ;
		
	call import_size_guide();	 
	/*	
		
		WHILE i < SELECT MAX(brandID) FROM  DO
			SET tbl_name = CONCAT('user',i,'_statistics_testing');
			
			SET @sql_1 = CONCAT(
			'CREATE TABLE ',tbl_name, '(
			VID INT NOT NULL AUTO_INCREMENT,
			Min          DECIMAL(5,4) NOT NULL DEFAULT 0,
			Max          DECIMAL(5,4) NOT NULL DEFAULT 0,
			Median       DECIMAL(5,4) NOT NULL DEFAULT 0,
			Mean         DECIMAL(5,4) NOT NULL DEFAULT 0,
			Variance     DECIMAL(5,4) NOT NULL DEFAULT 0,
			StdDeviation DECIMAL(5,4) NOT NULL DEFAULT 0,
			PRIMARY KEY(VID))'
			);

			PREPARE stmt FROM @sql_1;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
	
			SET @sql_2 = CONCAT('ALTER TABLE ', tbl_name,' AUTO_INCREMENT = 201');
			
			PREPARE stmt FROM @sql_2;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
			
			SET i = i + 1;
		END WHILE;
	*/
	END //
DELIMITER ;
