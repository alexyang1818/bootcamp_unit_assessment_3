CREATE TABLE players(
	player_id		INT ,
	first_name	VARCHAR(40),
	last_name		VARCHAR(40),
	hand			VARCHAR(1),
	country_code	VARCHAR(3)
);

SELECT * FROM players;

CREATE TABLE matches(
	loser_age		DEC,
	loser_id		INT,
	loser_name		VARCHAR(80),
	loser_rank		INT,
	winner_age		DEC,
	winner_id		INT,
	winner_name		VARCHAR(80),
	winner_rank		INT
);

SELECT count(*) FROM matches
WHERE winner_name = 'Serena Williams';

SELECT hand, count(*) FROM players
GROUP BY hand;

SELECT p.hand, count(*)
FROM matches AS m
	JOIN players AS p
		ON m.winner_id = p.player_id
GROUP BY p.hand;

