BEGIN;

-- On supprime les tables si elles existent déjà 
DROP TABLE IF EXISTS "recipe", "ingredient","preparation","category", "review", "image";

-- Création des tables

CREATE TABLE "recipe" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "difficulty" TEXT NOT NULL,
    "preparation_time" TEXT NOT NULL, 
    "cooking_time" TEXT NOT NULL,
    "serving_number" INTEGER,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "ingredient" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "quantity" INTEGER,
    "unity_type" TEXT NOT NULL,
    "recipe_id" INTEGER NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE
);

CREATE TABLE "preparation" (
    "id" SERIAL PRIMARY KEY,
    "description" TEXT NOT NULL,
    "position" INTEGER,
    "recipe_id" INTEGER NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE
);

CREATE TABLE "category" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "review" (
    "id" SERIAL PRIMARY KEY,
    "description" TEXT NOT NULL,
    "grade" INTEGER CHECK ("grade" >= 1 AND "grade" <= 5),
    "recipe_id" INTEGER NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "image" (
    "id" SERIAL PRIMARY KEY,
    "source" TEXT NOT NULL,
    "recipe_id" INTEGER NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE
);

COMMIT;
