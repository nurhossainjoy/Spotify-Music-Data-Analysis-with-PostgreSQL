/*
=========================================================================
Project : Spotify SQL Data Analysis
Database: PostgreSQL
Dataset : Spotify Dataset (20,594 Tracks)
Author  : MD Nur Hossain Joy
GitHub  : https://github.com/nurhossainjoy

Description:
This project demonstrates SQL querying skills by solving
real-world business questions using PostgreSQL.

Topics Covered:
• Filtering
• Aggregations
• GROUP BY
• CASE Expressions
• Common Table Expressions (CTEs)
• Window Functions
• Ranking
• Business Insights
=========================================================================
*/


/*=======================================================================
                           EASY LEVEL QUESTIONS
========================================================================*/

/*-----------------------------------------------------------------------
QUESTION 1:Retrieve the names of all tracks that have more than 1 billion
streams.
------------------------------------------------------------------------*/

SELECT * FROM spotify
WHERE stream >= 1000000000;
--List all albums along with their respective artists.
SELECT DISTINCT
	album,
	artist
FROM spotify
ORDER BY artist, album;
/*-----------------------------------------------------------------------
QUESTION 2: Get the total number of comments for tracks where licensed is
-----------------------------------------------------------------------*/
TRUE.
SELECT 
SUM (COMMENTS) AS total_comments
FROM spotify
WHERE licensed = 'TRUE';
/*-----------------------------------------------------------------------
QUESTION 3: Find all tracks that belong to the album type single.
-----------------------------------------------------------------------*/
SELECT 
track
FROM spotify
WHERE album_type ILIKE 'Single';
/*-----------------------------------------------------------------------
QUESTION 4: Count the total number of tracks by each artist.
-----------------------------------------------------------------------*/
SELECT
artist,
COUNT (track) AS no_of_track
FROM spotify
GROUP BY artist
ORDER BY no_of_track DESC;

/*=======================================================================
                         MEDIUM LEVEL QUESTIONS
========================================================================*/
/*-----------------------------------------------------------------------
QUESTION 5: Calculate the average danceability of tracks in each album.
-----------------------------------------------------------------------*/
SELECT
album,
ROUND (AVG(danceability::numeric),2) AS avg_danceability
FROM spotify
GROUP BY album
ORDER by avg_danceability DESC;
/*-----------------------------------------------------------------------
QUESTION 6: Find the top 5 tracks with the highest energy values.
-----------------------------------------------------------------------*/
SELECT * FROM
	(SELECT
		track,
		SUM(energy_liveness:: numeric) AS enargy_values
	FROM spotify
		GROUP BY track
		ORDER BY enargy_values DESC)
WHERE enargy_values IS NOT NULL
LIMIT 5;
/*-----------------------------------------------------------------------
QUESTION 7: List all tracks along with their views and likes where 
official_video is TRUE.
-----------------------------------------------------------------------*/
SELECT 
	track,
	views,
	likes,
	official_video
FROM spotify
WHERE official_video = 'true';
/*-----------------------------------------------------------------------
QUESTION 8: For each album, calculate the total views of all associated 
tracks.
-----------------------------------------------------------------------*/
SELECT
album,
track,
SUM(views::numeric) AS total_views
FROM spotify
GROUP BY album, track
ORDER BY total_views DESC;
/*-----------------------------------------------------------------------
QUESTION 9: Retrieve the track names that have been streamed on Spotify
more than YouTube.
-----------------------------------------------------------------------*/
SELECT
track,
most_played_on
FROM spotify
WHERE most_played_on='Spotify';
/*=======================================================================
                           ADVANCED LEVEL QUESTIONS
========================================================================*/
/*-----------------------------------------------------------------------
QUESTION 10: Find the top 3 most-viewed tracks for each artist using 
window functions.
-----------------------------------------------------------------------*/
WITH view_table AS
	(
			SELECT
			artist,
			track,
			SUM (views::numeric) AS total_view
		FROM spotify
		GROUP BY artist, track
		ORDER BY total_view DESC
	), 
rank_table AS
	(
		SELECT
			DENSE_RANK() OVER (ORDER BY total_view DESC) AS rank,
			artist,
			track,
			total_view
		FROM view_table
	)
SELECT 
* 
FROM rank_table
WHERE rank <=3;
/*-----------------------------------------------------------------------
QUESTION 10: Write a query to find tracks where the liveness score is 
above the average.
-----------------------------------------------------------------------*/
WITH liveness_table AS
(
SELECT
track,
liveness:: numeric,
(
SELECT
ROUND (AVG (liveness:: numeric),2) AS avg_liveness
FROM spotify
)
FROM spotify)
SELECT *
FROM liveness_table
WHERE 
liveness > avg_liveness;
/*-----------------------------------------------------------------------
QUESTION 11: Use a WITH clause to calculate the difference between the 
highest and lowest energy values for tracks in each album.
-----------------------------------------------------------------------*/
WITH album_energy AS 
(
	SELECT
	album,
		MAX(energy) AS highest_energy,
		MIN(energy) AS lowest_energy
	FROM spotify
	GROUP BY album
)

SELECT
	album,
	highest_energy,
	lowest_energy,
	ROUND ((highest_energy - lowest_energy)::numeric,2) 
	AS energy_difference
FROM album_energy
ORDER BY energy_difference DESC;
/*=======================================================================
                              END OF PROJECT
========================================================================*/










