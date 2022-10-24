-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 24, 2022 lúc 06:22 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `job_search`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `area`
--

INSERT INTO `area` (`id`, `Name`) VALUES
(1, 'Miền Bắc'),
(2, 'Miền Trung'),
(3, 'Miền Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `career`
--

INSERT INTO `career` (`id`, `Name`, `icon`) VALUES
(1, 'Mobile', 'https://www.clipartmax.com/png/middle/178-1788500_mobile-app-development-mobile-phone-round-logo.png'),
(2, 'Java', 'https://w7.pngwing.com/pngs/592/145/png-transparent-java-programming-language-programmer-computer-programming-logo-others-text-computer-program-programming-language.png'),
(3, 'Web', 'https://w7.pngwing.com/pngs/428/279/png-transparent-computer-icons-web-page-identity-angle-text-logo-thumbnail.png'),
(4, 'Python', 'https://www.pngfind.com/pngs/m/62-626208_python-logo-png-transparent-background-python-logo-png.png'),
(5, 'Designed', 'https://www.logodesign.net/logo/letter-d-inside-polygon-4839ld.png'),
(6, 'Test', 'https://w7.pngwing.com/pngs/192/840/png-transparent-beta-tester-software-testing-beta-verzia-computer-programming-computer-software-arc-miscellaneous-text-trademark-thumbnail.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `career_child`
--

CREATE TABLE `career_child` (
  `id` int(11) NOT NULL,
  `CareerDetails` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CareerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `career_child`
--

INSERT INTO `career_child` (`id`, `CareerDetails`, `CareerId`) VALUES
(1, 'Android', 1),
(2, 'Ios', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `EnglishLevel`
--

CREATE TABLE `EnglishLevel` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `EnglishLevel`
--

INSERT INTO `EnglishLevel` (`id`, `Name`) VALUES
(1, 'Not Required'),
(2, 'Basic'),
(3, 'Good');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_job`
--

CREATE TABLE `list_job` (
  `id` int(11) NOT NULL,
  `BaseSalary` double DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Gender` tinyint(1) DEFAULT NULL,
  `Age` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EnglishLevel` int(11) DEFAULT NULL,
  `Experience` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherRequirements` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CareerId` int(11) NOT NULL,
  `areaId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `list_job`
--

INSERT INTO `list_job` (`id`, `BaseSalary`, `Amount`, `Gender`, `Age`, `EnglishLevel`, `Experience`, `OtherRequirements`, `CareerId`, `areaId`) VALUES
(1, 15000000, 3, 0, '18-20', 1, '2 year', 'backend: laravel\r\nexperience: 2year+\r\n', 1, 1),
(2, 10000000, 5, 0, '20-30', 2, '2 year', 'Ios developer: 2year+\r\n', 1, 2),
(3, 15000000, 10, 0, '18-40', 3, '4 year', 'nothing', 2, 3),
(4, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 1, 1),
(5, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 2, 1),
(6, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 3, 1),
(7, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 4, 1),
(8, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 5, 1),
(9, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 6, 1),
(10, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 6, 2),
(11, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 5, 2),
(12, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 4, 2),
(13, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 3, 2),
(14, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 2, 2),
(15, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 1, 3),
(16, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 2, 3),
(17, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 3, 3),
(18, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 4, 3),
(19, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 5, 3),
(20, 15000000, 10, 0, '18-40', 2, '2 year', 'backend : Laravel\r\nenglish: good\r\nopen job location:\r\n- 4 android/ios All Level - Salary upto 2000$\r\n- 5 Java Senior/Team Lead - Salary upto 3500$\r\n- 3 Tester Fresher - Salary 7M\r\n- 3 BlockChain Developer - Salary upto 2500$\r\nSigning bonus/Tech gift with level Senior', 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profile_information`
--

CREATE TABLE `profile_information` (
  `id` int(11) NOT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `Experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchoolsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProofLetter` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Interests` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HomeTown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EducationLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CareerAspirations` int(11) NOT NULL,
  `SpecialConditions` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `JobInformation` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `areaId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `profile_information`
--

INSERT INTO `profile_information` (`id`, `height`, `weight`, `Experience`, `SchoolsName`, `ProofLetter`, `Interests`, `HomeTown`, `EducationLevel`, `CareerAspirations`, `SpecialConditions`, `Salary`, `JobInformation`, `uuid`, `areaId`) VALUES
(10, 123, 123, '2 nam', 'cd cntt', '0366426402', 'yeu duong', 'hung', 'cao dang', 1, 'khong', 20000000, 'khong co', '63500ceba9f0b44b069ed378', 2),
(11, 50, 50, 'gggggggggg', 'hhhhhhh', '222', 'tttt', 'yyyy', 'uuuuu', 5, 'jjjjjjj', 888888, 'hhhh', '63514e8fa9f0b44b069ed3ad', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `JobID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_information`
--

CREATE TABLE `user_information` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(11) NOT NULL,
  `YearOfBirth` year(4) NOT NULL,
  `Gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_information`
--

INSERT INTO `user_information` (`uuid`, `Name`, `Email`, `Age`, `YearOfBirth`, `Gender`) VALUES
('63500ceba9f0b44b069ed378', 'SangTB', 'thaibasang8@gmail.com', 0, 0000, 0),
('63514e8fa9f0b44b069ed3ad', 'admin', 'admin@gmail.com', 0, 0000, 0),
('63514ef8a9f0b44b069ed3b0', 'admin1', 'admin1@gmail.com', 0, 0000, 0),
('63514fdda9f0b44b069ed3b3', 'admin2', 'admin2@gmail.com', 0, 0000, 0),
('6351609ea9f0b44b069ed3bb', 'admin3', 'admin3@gmail.com', 0, 0000, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `career_child`
--
ALTER TABLE `career_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Career` (`CareerId`);

--
-- Chỉ mục cho bảng `EnglishLevel`
--
ALTER TABLE `EnglishLevel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_job`
--
ALTER TABLE `list_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_career_list_job_to_career` (`CareerId`),
  ADD KEY `fk_english_list_job_to_english_level` (`EnglishLevel`),
  ADD KEY `fk_area_list_job_to_area` (`areaId`);

--
-- Chỉ mục cho bảng `profile_information`
--
ALTER TABLE `profile_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_information` (`uuid`),
  ADD KEY `fk_carreer_profile_information_to_career_id` (`CareerAspirations`),
  ADD KEY `fk_area_profile_to_area` (`areaId`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_recruitment_to_user_information` (`JobID`),
  ADD KEY `fk_recruiment_to_user_information` (`uuid`);

--
-- Chỉ mục cho bảng `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `career_child`
--
ALTER TABLE `career_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `EnglishLevel`
--
ALTER TABLE `EnglishLevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `list_job`
--
ALTER TABLE `list_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `career_child`
--
ALTER TABLE `career_child`
  ADD CONSTRAINT `fk_Career` FOREIGN KEY (`CareerId`) REFERENCES `Career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `list_job`
--
ALTER TABLE `list_job`
  ADD CONSTRAINT `fk_area_list_job_to_area` FOREIGN KEY (`areaId`) REFERENCES `area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_career_list_job_to_career` FOREIGN KEY (`CareerId`) REFERENCES `career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_english_list_job_to_english_level` FOREIGN KEY (`EnglishLevel`) REFERENCES `EnglishLevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `profile_information`
--
ALTER TABLE `profile_information`
  ADD CONSTRAINT `fk_area_profile_to_area` FOREIGN KEY (`areaId`) REFERENCES `area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_carreer_profile_information_to_career_id` FOREIGN KEY (`CareerAspirations`) REFERENCES `career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_information` FOREIGN KEY (`uuid`) REFERENCES `user_information` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD CONSTRAINT `fk_recruiment_to_user_information` FOREIGN KEY (`uuid`) REFERENCES `user_information` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_recruitment_to_user_information` FOREIGN KEY (`JobID`) REFERENCES `list_job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
