-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 03, 2024 lúc 02:38 PM
-- Phiên bản máy phục vụ: 8.3.0
-- Phiên bản PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `udpt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `grade_level` int DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `locked` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `grade_level`, `email`, `locked`) VALUES
(1, 'John', 'Doe', '2006-01-15', 'Male', 10, 'john.doe@example.com', 0),
(2, 'Jane', 'Smith', '2007-03-22', 'Female', 9, 'jane.smith@example.com', 0),
(3, 'Mike', 'Johnson', '2005-11-05', 'Male', 11, 'mike.johnson@example.com', 0),
(4, 'Emily', 'Davis', '2006-06-12', 'Female', 10, 'emily.davis@example.com', 0),
(5, 'Chris', 'Brown', '2007-09-30', 'Male', 9, 'chris.brown@example.com', 0),
(6, 'Sarah', 'Wilson', '2006-12-25', 'Female', 10, 'sarah.wilson@example.com', 0),
(7, 'David', 'Lee', '2005-04-18', 'Male', 11, 'david.lee@example.com', 0),
(8, 'Laura', 'Taylor', '2007-07-08', 'Female', 9, 'laura.taylor@example.com', 0),
(9, 'James', 'Anderson', '2005-02-14', 'Male', 11, 'james.anderson@example.com', 0),
(10, 'Olivia', 'Thomas', '2006-08-23', 'Female', 10, 'olivia.thomas@example.com', 0),
(11, 'Ethan', 'Martin', '2006-05-02', 'Male', 10, 'ethan.martin@example.com', 0),
(12, 'Sophia', 'Garcia', '2007-10-14', 'Female', 9, 'sophia.garcia@example.com', 0),
(13, 'Daniel', 'Martinez', '2005-12-30', 'Male', 11, 'daniel.martinez@example.com', 0),
(14, 'Mia', 'Hernandez', '2006-03-11', 'Female', 10, 'mia.hernandez@example.com', 0),
(15, 'Noah', 'Lopez', '2007-08-22', 'Male', 9, 'noah.lopez@example.com', 0),
(16, 'Ava', 'Gonzalez', '2006-07-07', 'Female', 10, 'ava.gonzalez@example.com', 0),
(17, 'Liam', 'Wilson', '2005-11-25', 'Male', 11, 'liam.wilson@example.com', 0),
(18, 'Isabella', 'Clark', '2007-04-19', 'Female', 9, 'isabella.clark@example.com', 0),
(19, 'Lucas', 'Rodriguez', '2006-09-30', 'Male', 10, 'lucas.rodriguez@example.com', 0),
(20, 'Mason', 'Lewis', '2005-10-15', 'Male', 11, 'mason.lewis@example.com', 0),
(21, 'Harper', 'Walker', '2007-01-20', 'Female', 9, 'harper.walker@example.com', 0),
(22, 'Logan', 'Hall', '2006-11-22', 'Male', 10, 'logan.hall@example.com', 0),
(23, 'Ella', 'Allen', '2005-03-27', 'Female', 11, 'ella.allen@example.com', 0),
(24, 'Alexander', 'Young', '2007-06-13', 'Male', 9, 'alexander.young@example.com', 0),
(25, 'Madison', 'Hernandez', '2006-02-18', 'Female', 10, 'madison.hernandez@example.com', 0),
(26, 'Sebastian', 'King', '2005-09-08', 'Male', 11, 'sebastian.king@example.com', 0),
(27, 'Avery', 'Wright', '2007-12-07', 'Female', 9, 'avery.wright@example.com', 0),
(28, 'Jack', 'Lopez', '2006-04-25', 'Male', 10, 'jack.lopez@example.com', 0),
(29, 'Scarlett', 'Hill', '2005-08-05', 'Female', 11, 'scarlett.hill@example.com', 0),
(30, 'Samuel', 'Scott', '2007-03-03', 'Male', 9, 'samuel.scott@example.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
