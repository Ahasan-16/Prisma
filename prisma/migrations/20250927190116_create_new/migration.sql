/*
  Warnings:

  - The primary key for the `user` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `email` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `user` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email1]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `email1` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id1` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name1` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `User_email_key` ON `user`;

-- AlterTable
ALTER TABLE `user` DROP PRIMARY KEY,
    DROP COLUMN `email`,
    DROP COLUMN `id`,
    DROP COLUMN `name`,
    ADD COLUMN `email1` VARCHAR(191) NOT NULL,
    ADD COLUMN `id1` INTEGER NOT NULL AUTO_INCREMENT,
    ADD COLUMN `name1` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id1`);

-- CreateIndex
CREATE UNIQUE INDEX `User_email1_key` ON `User`(`email1`);
