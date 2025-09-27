/*
  Warnings:

  - Added the required column `number1` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `number2` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `number1` DOUBLE NOT NULL,
    ADD COLUMN `number2` FLOAT NOT NULL,
    ADD COLUMN `number3` INTEGER NOT NULL DEFAULT 10;
