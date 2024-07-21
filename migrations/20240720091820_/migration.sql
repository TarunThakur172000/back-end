/*
  Warnings:

  - The primary key for the `referral` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `message` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `referral` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `referral` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - Added the required column `Email` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Message` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Name` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Phone` to the `Referral` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referral` DROP PRIMARY KEY,
    DROP COLUMN `createdAt`,
    DROP COLUMN `email`,
    DROP COLUMN `message`,
    DROP COLUMN `name`,
    DROP COLUMN `phone`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `Email` VARCHAR(191) NOT NULL,
    ADD COLUMN `Message` VARCHAR(191) NOT NULL,
    ADD COLUMN `Name` VARCHAR(191) NOT NULL,
    ADD COLUMN `Phone` INTEGER NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);
