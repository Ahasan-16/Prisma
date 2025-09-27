-- CreateTable
CREATE TABLE `AnotherModel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `birthday` DATE NOT NULL,
    `isBirth` BOOLEAN NOT NULL DEFAULT true,
    `picture` LONGBLOB NOT NULL,
    `binary` BINARY(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
