SELECT *
FROM
(SELECT value->>'layout' AS layout,
	value->>'name' AS name,
	value->'names' AS names,
	value->>'manaCost' AS mana_cost,
	value->>'cmc' AS cmc,
	value->'colors' AS colors,
	value->>'type' AS type,
	value->'supertypes' AS supertypes,
	value->'types' AS types,
	value->'subtypes' AS subtypes,
	value->>'text' AS text,
	value->>'power' AS power,
	value->>'toughness' AS toughness,
	value->>'imageName' AS image_name,
	value->>'colorIdentity' AS color_identity
FROM json_each((SELECT * FROM mtg.json_import)::json)) AS a