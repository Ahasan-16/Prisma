/*
  Warnings:

  - You are about to alter the column `number3` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Decimal(65,30)`.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `name` VARCHAR(191) NULL DEFAULT 'Ahasan',
    MODIFY `number3` DECIMAL(65, 30) NOT NULL DEFAULT 16;
