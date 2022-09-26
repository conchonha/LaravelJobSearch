-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 27, 2022 lúc 01:18 AM
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
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `career`
--

INSERT INTO `career` (`id`, `Name`) VALUES
(1, 'Mobile');

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
(2, 10000000, 5, 0, '20-30', 2, '2 year', 'Ios developer: 2year+\r\n', 1, 2);

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
  `Age` int(11) NOT NULL,
  `YearOfBirth` year(4) NOT NULL,
  `Gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_information`
--

INSERT INTO `user_information` (`uuid`, `Name`, `Age`, `YearOfBirth`, `Gender`) VALUES
('1234jh', 'sangtb', 18, 1999, 0);

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
  ADD PRIMARY KEY (`uuid`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `fk_Career` FOREIGN KEY (`CareerId`) REFERENCES `career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
