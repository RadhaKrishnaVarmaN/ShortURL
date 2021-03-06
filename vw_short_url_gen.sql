CREATE VIEW [dbo].[vw_short_url_gen]
AS
SELECT
	short_url_code = STRING_AGG(c1, '')
FROM
	(SELECT c1
		, bucket = NTILE (18) OVER (ORDER BY NEWID())
	FROM	(VALUES
			('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
			('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'),
			('U'), ('V'), ('W'), ('X'), ('Y'), ('Z'), 

			('0'), ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9'),

			('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
			('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'),
			('U'), ('V'), ('W'), ('X'), ('Y'), ('Z'), 

			('0'), ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9'),

			('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
			('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'),
			('U'), ('V'), ('W'), ('X'), ('Y'), ('Z'), 

			('0'), ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9'),

			('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
			('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'),
			('U'), ('V'), ('W'), ('X'), ('Y'), ('Z'), 

			('0'), ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9')
			) AS t1(c1)
	) AS t2	
GROUP BY bucket
GO
