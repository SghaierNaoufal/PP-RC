BEGIN;

-- On supprime les tables si elles existent déjà 
DROP TABLE IF EXISTS "recipe", "ingredient", "preparation", "category", "review", "image";


-- Création des tables

CREATE TABLE "recipes" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "difficulty" TEXT NOT NULL,
    "preparation_time" INTERVAL, 
    "cooking_time" INTERVAL,
    "serving_number" INTEGER,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ,
);

CREATE TABLE "ingredients" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "quantity" INTEGER,
    "unity_type" TEXT NOT NULL,
);

CREATE TABLE "preparation"(
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "description" TEXT NOT NULL,
    "position" TEXT NOT NULL,
    "recipe_id" INT NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE,
);

CREATE TABLE "category"(
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
);

CREATE TABLE "reviews"(
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "description" TEXT NOT NULL,
    "grade" INTEGER CHECK ("grade" >= 1 AND "grade" <= 5)
    "recipe_id" INT NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ,
);

CREATE TABLE "image"(
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "source" TEXT NOT NULL,
    "recipe_id" INT NOT NULL REFERENCES "recipe"("id") ON DELETE CASCADE,
)

COMMIT;
