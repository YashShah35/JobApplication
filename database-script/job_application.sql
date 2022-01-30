-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 05:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(767) NOT NULL,
  `ClaimType` text DEFAULT NULL,
  `ClaimValue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(767) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `ClaimType` text DEFAULT NULL,
  `ClaimValue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(767) NOT NULL,
  `ProviderKey` varchar(767) NOT NULL,
  `ProviderDisplayName` text DEFAULT NULL,
  `UserId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(50) NOT NULL,
  `RoleId` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(50) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` text DEFAULT NULL,
  `SecurityStamp` text DEFAULT NULL,
  `ConcurrencyStamp` text DEFAULT NULL,
  `PhoneNumber` text DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` timestamp NULL DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `FirstName` text DEFAULT NULL,
  `LastName` text DEFAULT NULL,
  `Gender` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`, `FirstName`, `LastName`, `Gender`) VALUES
('7ae84f1d-59ea-487c-b15d-86e9c1823625', 'admin@myorg.com', 'ADMIN@MYORG.COM', 'admin@myorg.com', 'ADMIN@MYORG.COM', 0, 'AQAAAAEAACcQAAAAEBYFr/LWZTiWkm2dhZLqgVOGjL2eiEOkQASxiEa/tgBO2WZ3mVOhaYujgr/NMPZUzA==', 'NWLWQWMBLYETVCJBS2PPVDFWBPUUBZEQ', '6f9e2da9-7db7-4b0d-9b2a-b0929f0f311e', NULL, 0, 0, NULL, 0, 0, 'Admin', 'Org', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(50) NOT NULL,
  `LoginProvider` varchar(767) NOT NULL,
  `Name` varchar(767) NOT NULL,
  `Value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `id` varchar(50) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `edu_type` varchar(15) DEFAULT NULL,
  `board_name` varchar(100) DEFAULT NULL,
  `cource_name` varchar(50) DEFAULT NULL,
  `passing_year` int(4) DEFAULT NULL,
  `percentage` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `job_id` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` int(50) DEFAULT NULL,
  `designation` int(50) DEFAULT NULL,
  `email` int(50) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `address_1` int(255) DEFAULT NULL,
  `address_2` int(255) DEFAULT NULL,
  `city` int(50) DEFAULT NULL,
  `zipcode` int(10) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `relationship_status` int(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `preferred_location` varchar(100) DEFAULT NULL,
  `notice_period` int(11) DEFAULT NULL,
  `current_ctc` int(11) DEFAULT NULL,
  `expected_ctc` int(11) DEFAULT NULL,
  `preffered_department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language_know`
--

CREATE TABLE `language_know` (
  `id` varchar(50) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_write` tinyint(1) DEFAULT NULL,
  `is_speak` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refral`
--

CREATE TABLE `refral` (
  `id` varchar(50) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology_known`
--

CREATE TABLE `technology_known` (
  `id` varchar(50) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `technology` varchar(50) DEFAULT NULL,
  `level` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiance`
--

CREATE TABLE `work_experiance` (
  `id` varchar(50) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20220129060018_InitialCreate', '3.1.18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_aspnetuserroles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_job_id` (`job_id`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `language_know`
--
ALTER TABLE `language_know`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_job_id` (`job_id`);

--
-- Indexes for table `refral`
--
ALTER TABLE `refral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reffral_job_id` (`job_id`);

--
-- Indexes for table `technology_known`
--
ALTER TABLE `technology_known`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tech_job_id` (`job_id`);

--
-- Indexes for table `work_experiance`
--
ALTER TABLE `work_experiance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_job_id` (`job_id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_aspnetroles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_aspnetusers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_aspnetusers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_aspnetuserroles_aspnetroles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_aspnetuserroles_aspnetusers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_aspnetusers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `education_details`
--
ALTER TABLE `education_details`
  ADD CONSTRAINT `edu_job_id` FOREIGN KEY (`job_id`) REFERENCES `job_details` (`job_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `language_know`
--
ALTER TABLE `language_know`
  ADD CONSTRAINT `language_job_id` FOREIGN KEY (`job_id`) REFERENCES `job_details` (`job_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `refral`
--
ALTER TABLE `refral`
  ADD CONSTRAINT `reffral_job_id` FOREIGN KEY (`job_id`) REFERENCES `job_details` (`job_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `technology_known`
--
ALTER TABLE `technology_known`
  ADD CONSTRAINT `tech_job_id` FOREIGN KEY (`job_id`) REFERENCES `job_details` (`job_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `work_experiance`
--
ALTER TABLE `work_experiance`
  ADD CONSTRAINT `work_job_id` FOREIGN KEY (`job_id`) REFERENCES `job_details` (`job_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
