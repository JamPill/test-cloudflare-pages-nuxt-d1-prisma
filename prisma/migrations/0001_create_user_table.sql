-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "isVerified" BOOLEAN NOT NULL DEFAULT false,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL DEFAULT '',
    "surname" TEXT NOT NULL DEFAULT '',
    "role" TEXT NOT NULL DEFAULT 'USER',
    "category" TEXT NOT NULL DEFAULT 'USER',
    "password" TEXT NOT NULL DEFAULT '',
    "passwordExpiration" DATETIME,
    "avatar" TEXT NOT NULL DEFAULT '',
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "deletedAt" DATETIME,
    "status" TEXT NOT NULL DEFAULT 'ACTIVE',
    "slug" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_slug_key" ON "User"("slug");

