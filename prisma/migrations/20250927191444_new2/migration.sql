-- CreateTable
CREATE TABLE `NewModel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` ENUM('Mohammad', 'Ahasan') NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
