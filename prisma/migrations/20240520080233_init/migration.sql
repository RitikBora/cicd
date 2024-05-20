-- CreateEnum
CREATE TYPE "type" AS ENUM ('ADD', 'SUM');

-- CreateTable
CREATE TABLE "request" (
    "id" SERIAL NOT NULL,
    "a" INTEGER NOT NULL,
    "b" INTEGER NOT NULL,
    "answer" INTEGER NOT NULL,
    "type" "type" NOT NULL,

    CONSTRAINT "request_pkey" PRIMARY KEY ("id")
);
