BEGIN;

INSERT INTO "recipe" ("name", "description", "difficulty", "preparation_time", "cooking_time", "serving_number") VALUES (
    "Pâtes à la Carbonara", 
    "Des pâtes crémeuses à la carbonara avec une sauce riche à base de pancetta, d'œufs et de parmesan", 
    "Facile",
    "30 minutes"
    "15 minutes"
    "2"
),(
    'Tarte aux Pommes', 
    'Une tarte classique aux pommes avec une croûte croustillante, une garniture de compote de pommes et une touche de cannelle.', 
    'Moyen',
    '45 minutes',
    '40 minutes',
    '8'
),(
    'Salade César', 
    'Une salade fraîche et croquante avec des morceaux de poulet grillé, des croûtons croustillants et une délicieuse vinaigrette césar.', 
    'Facile',
    '20 minutes',
    '10 minutes',
    '2'
),(
    'Poulet Rôti aux Herbes', 
    "Un délicieux poulet rôti, mariné dans un mélange d'herbes fraîches et d'épices, cuit à la perfection.", 
    'Moyen',
    '1 heure',
    '1 heure 30 minutes',
    '4'
),(
    'Lasagnes au Boeuf', 
    'Des lasagnes gratinées avec une sauce bolognaise savoureuse, des couches de pâtes et une béchamel onctueuse.', 
    'Difficile',
    '1 heure 30 minutes',
    '45 minutes',
    '6'
),(
    'Sushi Rolls', 
    'Des rouleaux de sushi frais et colorés avec du poisson cru, des légumes croquants et du riz vinaigré.', 
    'Moyen',
    '1 heure',
    '20 minutes',
    '4'
),(
    'Poulet au Curry Indien', 
    'Des morceaux de poulet tendres cuits dans une sauce au curry indien parfumée, servi avec du riz basmati.', 
    'moyen',
    '40 minutes',
    '25 minutes',
    '3'
);

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
    (2, 'Beurre', 50, 'g');
    (3, 'Poulet grillé', 250, 'g'),
    (3, 'Laitue romaine', 1, 'unité'),
    (3, "Croûtons à l'ail", 100, 'g'),
    (3, 'Parmesan râpé', 50, 'g'),
    (3, 'Vinaigrette crémeuse', 3, 'c. à soupe');
    (4, 'Poulet entier', 1, 'unité'),
    (4, 'Herbes fraîches (thym, romarin, sauge)', 'à volonté', ' - '),
    (4, 'Ail', 3, 'gousses'),
    (4, 'Citron', 1, 'unité'),
    (4, "Huile d'olive", 3, 'c. à soupe');
    (5, 'Feuilles de lasagnes', 12, 'unités'),
    (5, 'Viande de bœuf hachée', 500, 'g'),
    (5, 'Sauce tomate', 500, 'ml'),
    (5, 'Oignon', 1, 'unité'),
    (5, 'Béchamel', 500, 'ml'),
    (5, 'Fromage râpé', 200, 'g');
    (6, "Feuilles d'algue nori", 8, 'unités'),
    (6, 'Riz à sushi', 2, 'tasses'),
    (6, 'Vinaigre de riz', 50, 'ml'),
    (6, 'Saumon frais', 200, 'g'),
    (6, 'Avocat', 2, 'unités'),
    (6, 'Concombre', 1, 'unité');
    (7, 'Blancs de poulet', 500, 'g'),
    (7, 'Oignon', 1, 'unité'),
    (7, 'Ail', 3, 'gousses'),
    (7, 'Tomates concassées', 400, 'g'),
    (7, 'Lait de coco', 200, 'ml'),
    (7, 'Curry en poudre', 2, 'c. à soupe'),
    (7, 'Huile végétale', 2, 'c. à soupe'),
    (7, 'Sel', 'Selon le goût', '-');

INSERT INTO "preparation" ("recipe_id", "description", "position") VALUES
    (1, "Faire cuire les pâtes dans de l'eau salée selon les indications sur l'emballage. Égoutter.", 1),
    (1, "Dans une poêle, faire revenir la pancetta jusqu'à ce qu'elle soit croustillante.", 2),
    (1, "Dans un bol, mélanger les œufs et le parmesan.", 3),
    (1, "Ajouter les pâtes cuites à la poêle avec la pancetta, puis verser le mélange d'œufs et de parmesan.", 4),
    (1, "Remuer rapidement pour enrober les pâtes de la sauce. Assaisonner avec du poivre noir.", 5),
    (1, "Servir chaud avec plus de parmesan si désiré.", 6);
    (2, "Faire cuire les pâtes dans une casserole d'eau bouillante salée selon les indications sur l'emballage.", 1),
    (2, "Pendant ce temps, faire revenir la pancetta dans une poêle jusqu'à ce qu'elle soit croustillante.", 2),
    (2, 'Dans un bol, battre les œufs et ajouter le parmesan râpé. Bien mélanger.', 3),
    (2, 'Égoutter les pâtes cuites et les ajouter à la poêle avec la pancetta.', 4),
    (2, "Retirer la poêle du feu et ajouter le mélange d'oeufs et de parmesan, en remuant rapidement pour enrober les pâtes de la sauce.", 5),
    (2, 'Servir immédiatement avec une pincée supplémentaire de parmesan.', 6);
    (3, "Laver et couper les feuilles de laitue en morceaux.", 1),
    (3, "Dans un grand bol, mélanger la laitue, les croûtons et le parmesan râpé.", 2),
    (3, "Dans un petit bol, préparer la vinaigrette en mélangeant l'huile d'olive, le jus de citron, la moutarde, l'ail écrasé, le sel et le poivre.", 3),
    (3, "Verser la vinaigrette sur la salade et mélanger pour bien enrober les ingrédients.", 4),
    (3, "Ajouter les morceaux de poulet grillé sur le dessus de la salade.", 5),
    (3, "Servir immédiatement, éventuellement saupoudré de fromage parmesan supplémentaire.", 6);
    (4, 'Préchauffer le four à 200°C.', 1),
    (4, 'Laver et sécher le poulet. Le placer dans un plat de cuisson.', 2),
    (4, "Dans un bol, mélanger les herbes hachées, l'ail émincé, l'huile d'olive, le sel et le poivre.", 3),
    (4, 'Badigeonner le poulet avec ce mélange, en veillant à bien enrober toutes les parties.', 4),
    (4, 'Enfourner le poulet au four préchauffé et le rôtir pendant environ 1h30, en le retournant de temps en temps.', 5),
    (4, 'Vérifier la cuisson en insérant un thermomètre dans la partie la plus épaisse de la viande. Il devrait indiquer une température interne de 75°C.', 6);
    (5, 'Préchauffer le four à 180°C.', 1),
    (5, "Dans une poêle, faire revenir la viande hachée jusqu'à ce qu'elle soit bien dorée. Ajouter l'oignon et l'ail hachés.", 2),
    (5, 'Incorporer la tomate concassée, la purée de tomate, les herbes de Provence, le sel et le poivre. Laisser mijoter pendant 15 minutes.', 3),
    (5, 'Dans un plat à gratin, alterner des couches de lasagnes, de sauce bolognaise et de béchamel.', 4),
    (5, "Répéter les couches jusqu'à épuisement des ingrédients, en terminant par une couche de béchamel.", 5),
    (5, 'Saupoudrer de fromage râpé sur le dessus.', 6),
    (5, "Cuire au four préchauffé pendant 30-40 minutes, jusqu'à ce que le dessus soit doré et que les lasagnes soient bien cuites.", 7);
    (6, "Préparer le riz à sushi selon les indications sur l'emballage. Laisser refroidir.", 1),
    (6, 'Sur une natte en bambou recouverte de film alimentaire, disposer une feuille de nori.', 2),
    (6, 'Humidifier légèrement les mains pour éviter que le riz ne colle, puis étaler une fine couche de riz sur le nori.', 3),
    (6, "Disposer des lanières d'avocat, de concombre et de poisson de votre choix sur le riz.", 4),
    (6, "Rouler le tout à l'aide de la natte en bambou, en pressant légèrement pour former un rouleau.", 5),
    (6, "Couper le rouleau en tranches à l'aide d'un couteau humide.", 6),
    (6, 'Répéter le processus avec le reste des ingrédients.', 7),
    (6, 'Servir les sushi rolls avec de la sauce soja et du wasabi.', 8);
    (7, 'Couper les blancs de poulet en cubes.', 1),
    (7, "Dans une poêle, faire chauffer l'huile et faire revenir l'oignon et l'ail.", 2),
    (7, 'Ajouter les morceaux de poulet et les faire dorer de tous les côtés.', 3),
    (7, 'Ajouter les tomates concassées, le curry en poudre, le lait de coco et laisser mijoter.', 4),
    (7, "Laisser cuire à feu doux jusqu'à ce que le poulet soit bien cuit.", 5),
    (7, 'Assaisonner avec du sel selon le goût.', 6);

INSERT INTO "category" ("name") VALUES
    ("Entrée"),
    ("Apéro"),
    ("Plat principal"),
    ("Dessert"),
    ("Digestif"),

INSERT INTO "review" ("recipe_id", "description", "grade") VALUES
    (1, "Délicieuses pâtes à la carbonara, la sauce est parfaite !", 5),
    (1, "Simple à faire et tellement savoureux. Un classique !", 4),
    (2, "La tarte aux pommes était incroyablement délicieuse.", 5),
    (2, "Recette facile à suivre, le résultat est délicieux.", 4),
    (3, "Recette facile à suivre, le résultat est délicieux.", 4,),
    (4, "Le poulet rôti aux herbes était juteux et savoureux.", 5,),
    (4, "Une recette simple mais pleine de saveurs. À refaire !", 4,),
    (5, "Les lasagnes au boeuf étaient un succès à la maison.", 5,),
    (5, "Recette facile à réaliser, les enfants adorent !", 4,),
    (6, "Les sushi rolls étaient frais et délicieux.", 5,),
    (6, "Première fois que je fais des sushis, le résultat était génial !", 4,),
    (7, "Le poulet au curry indien est devenu un incontournable à la maison.", 5,),
    (7, "Recette épicée et délicieuse, parfaite pour les amateurs de curry.", 4,)

INSERT INTO "image" ("recipe_id", "source") VALUES
    (1, "https://gourmandiz.dhnet.be/wp-content/uploads/2018/03/carbonara-e1521461363147-690x388.jpg"),
    (2, "https://i1.wp.com/www.la-gourmandise-avant-tout.com/wp-content/uploads/2020/11/tarte-aux-pomems-Cedric-Grolet-scaled.jpg?zoom=2&resize=1020%2C600&ssl=1"),
    (3, "https://i0.wp.com/petits-plats-faciles.com/wp-content/uploads/2023/03/Salade-cesar-allegee-scaled.jpg?fit=2560%2C1920&ssl=1"),
    (4, "https://sf1.viepratique.fr/wp-content/uploads/sites/2/2014/06/shutterstock_157640480.jpg"),
    (5, "https://cache.marieclaire.fr/data/photo/w1000_c17/cuisine/4k/lasagnes-bolognaise.webp"),
    (6, "https://www.otodoke.fr/wp-content/uploads/2018/05/sushi-2112350_1920.jpg"),
    (7, "https://cdn.chefclub.tools/uploads/recipes/cover-thumbnail/f287b191-dc8e-4c85-bbb6-e26387c354d3.jpg"),

COMMIT;