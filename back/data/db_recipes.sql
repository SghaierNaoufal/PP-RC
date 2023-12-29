BEGIN;

INSERT INTO "recipe" ("name", "description", "difficulty", "preparation_time", "cooking_time", "serving_number") VALUES 
    ('Pâtes à la Carbonara', 'Des pâtes crémeuses à la carbonara avec une sauce riche à base de pancetta, d''œufs et de parmesan', 'Facile', 'trente minutes', 'quinze minutes', 2),
    ('Tarte aux Pommes', 'Une tarte classique aux pommes avec une croûte croustillante, une garniture de compote de pommes et une touche de cannelle.', 'Moyen', 'quarante-cinq minutes', 'quarante minutes', 8),
    ('Salade César', 'Une salade fraîche et croquante avec des morceaux de poulet grillé, des croûtons croustillants et une délicieuse vinaigrette césar.', 'Facile', 'vingt minutes', 'dix minutes', 2),
    ('Poulet Rôti aux Herbes', 'Un délicieux poulet rôti, mariné dans un mélange d''herbes fraîches et d''épices, cuit à la perfection.', 'Moyen', 'une heure', 'une heure trente minutes', 4),
    ('Lasagnes au Boeuf', 'Des lasagnes gratinées avec une sauce bolognaise savoureuse, des couches de pâtes et une béchamel onctueuse.', 'Difficile', 'une heure trente minutes', 'quarante-cinq minutes', 6),
    ('Sushi Rolls', 'Des rouleaux de sushi frais et colorés avec du poisson cru, des légumes croquants et du riz vinaigré.', 'Moyen', 'une heure', 'vingt minutes', 4),
    ('Poulet au Curry Indien', 'Des morceaux de poulet tendres cuits dans une sauce au curry indien parfumée, servi avec du riz basmati.', 'Moyen', 'quarante minutes', 'vingt-cinq minutes', 3);

INSERT INTO "ingredient" ("recipe_id", "name", "quantity", "unity_type") VALUES
    (1, 'Pâtes', 200, 'g'),
    (1, 'Pancetta', 150, 'g'),
    (1, 'Œufs', 2, 'unité'),
    (1, 'Parmesan râpé', 50, 'g'),
    (1, 'Poivre noir', 1, 'pincée'),
    (2, 'Pâte feuilletée', 1, 'unité'),
    (2, 'Pommes', 4, 'unité'),
    (2, 'Sucre', 100, 'g'),
    (2, 'Cannelle en poudre', 1, 'c. à café'),
    (2, 'Beurre', 50, 'g'),
    (3, 'Poulet grillé', 250, 'g'),
    (3, 'Laitue romaine', 1, 'unité'),
    (3, 'Croûtons à l''ail', 100, 'g'),
    (3, 'Parmesan râpé', 50, 'g'),
    (3, 'Vinaigrette crémeuse', 3, 'c. à soupe');

INSERT INTO "preparation" ("recipe_id", "description", "position") VALUES
    (1, 'Faire cuire les pâtes dans de l''eau salée selon les indications sur l''emballage. Égoutter.', 1),
    (1, 'Dans une poêle, faire revenir la pancetta jusqu''à ce qu''elle soit croustillante.', 2),
    (1, 'Dans un bol, mélanger les œufs et le parmesan.', 3),
    (1, 'Ajouter les pâtes cuites à la poêle avec la pancetta, puis verser le mélange d''œufs et de parmesan.', 4),
    (1, 'Remuer rapidement pour enrober les pâtes de la sauce. Assaisonner avec du poivre noir.', 5),
    (1, 'Servir chaud avec plus de parmesan si désiré.', 6),
    (2, 'Faire cuire les pâtes dans une casserole d''au bouillante salée selon les indications sur l''emballage.', 1),
    (2, 'Pendant ce temps, faire revenir la pancetta dans une poêle jusqu''à ce qu''elle soit croustillante.', 2),
    (2, 'Dans un bol, battre les œufs et ajouter le parmesan râpé. Bien mélanger.', 3),
    (2, 'Égoutter les pâtes cuites et les ajouter à la poêle avec la pancetta.', 4),
    (2, 'Retirer la poêle du feu et ajouter le mélange d''oeufs et de parmesan, en remuant rapidement pour enrober les pâtes de la sauce.', 5),
    (2, 'Servir immédiatement avec une pincée supplémentaire de parmesan.', 6),
    (3, 'Laver et couper les feuilles de laitue en morceaux.', 1),
    (3, 'Dans un grand bol, mélanger la laitue, les croûtons et le parmesan râpé.', 2),
    (3, 'Dans un petit bol, préparer la vinaigrette en mélangeant l''huile d''olive, le jus de citron, la moutarde, l''ail écrasé, le sel et le poivre.', 3),
    (3, 'Verser la vinaigrette sur la salade et mélanger pour bien enrober les ingrédients.', 4),
    (3, 'Ajouter les morceaux de poulet grillé sur le dessus de la salade.', 5),
    (3, 'Servir immédiatement, éventuellement saupoudré de fromage parmesan supplémentaire.', 6);

INSERT INTO "category" ("name") VALUES
    ('Entrée'),
    ('Apéro'),
    ('Plat principal'),
    ('Dessert');

INSERT INTO "review" ("recipe_id", "description", "grade") VALUES
    (1, 'Délicieuses pâtes à la carbonara, la sauce est parfaite !', 5),
    (1, 'Simple à faire et tellement savoureux. Un classique !', 4),
    (2, 'La tarte aux pommes était incroyablement délicieuse.', 5),
    (2, 'Recette facile à suivre, le résultat est délicieux.', 4),
    (3, 'Recette facile à suivre, le résultat est délicieux.', 4);

INSERT INTO "image" ("recipe_id", "source") VALUES
    (1, 'https://gourmandiz.dhnet.be/wp-content/uploads/vingt18/03/carbonara-e1521461363147-690x388.jpg'),
    (2, 'https://i1.wp.com/www.la-gourmandise-avant-tout.com/wp-content/uploads/vingtvingt/11/tarte-aux-pomems-Cedric-Grolet-scaled.jpg?zoom=2&resize=10vingt%2C600&ssl=1'),
    (3, 'https://i0.wp.com/petits-plats-faciles.com/wp-content/uploads/vingt23/03/Salade-cesar-allegee-scaled.jpg?fit=2560%2C19vingt&ssl=1');

COMMIT;