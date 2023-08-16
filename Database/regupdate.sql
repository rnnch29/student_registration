-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2023 at 01:16 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `regupdate`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `fac_id`) VALUES
('100011', 'วิทยาการคอมพิวเตอร์', '100010'),
('100012', 'เทคโนโลยีสารสนเทศ', '100010'),
('100013', 'คณิตศาสตร์', '100010'),
('200021', 'ภาษาไทย', '200020'),
('200022', 'ภาษาอังกฤษ', '200020'),
('200023', 'ภาษาจีน', '200020'),
('200024', 'IP', '100010');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_credit` int(1) NOT NULL,
  `cou_num_of_group` int(20) NOT NULL,
  `cou_num_of_student` int(10) NOT NULL,
  `cou_building` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sche_Emp_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cou_id`, `cou_name`, `cou_credit`, `cou_num_of_group`, `cou_num_of_student`, `cou_building`, `sche_Emp_id`) VALUES
('100002', 'ภาษาอังกฤษพื้นฐาน', 3, 2, 10, 'sc1', '8'),
('110001', 'แคลคูลัส', 3, 1, 10, 'sc1', '1'),
('110002', 'สถิติวิเคราะห์', 3, 1, 10, 'sc2', '2'),
('110003', 'พื้นฐาน Coding', 3, 1, 10, 'sc3', '3'),
('111001', 'ทักษะภาษาไทย', 3, 2, 10, 'sc3', '7'),
('221001', 'การอ่านเชิงวิจารณ์', 3, 1, 5, 'sc3', '4'),
('221002', 'ศิลปะการเขียน', 3, 1, 5, 'sc2', '4'),
('222001', 'การแปลอังกฤษ', 3, 1, 5, 'sc1', '5'),
('222002', 'การเขียนรายงานอังกฤษ', 3, 1, 5, 'sc1', '5'),
('223001', 'การเขียนภาษาจีน', 3, 1, 5, 'sc3', '6'),
('223002', 'ไวยากรณ์จีน', 3, 1, 5, 'sc2', '6');

-- --------------------------------------------------------

--
-- Table structure for table `cou_date_time`
--

CREATE TABLE `cou_date_time` (
  `cdt_id` int(30) NOT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cdt_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cdt_startTime` time NOT NULL,
  `cdt_endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cou_date_time`
--

INSERT INTO `cou_date_time` (`cdt_id`, `cou_id`, `cdt_date`, `cdt_startTime`, `cdt_endTime`) VALUES
(2, '111001', 'Mon', '10:00:00', '12:00:00'),
(4, '110002', 'Tue', '09:00:00', '11:00:00'),
(5, '110003', 'Wed', '13:00:00', '15:00:00'),
(6, '221001', 'Fri', '14:00:00', '15:00:00'),
(7, '100002', 'Thu', '13:00:00', '15:00:00'),
(23, '110001', 'fri', '08:00:00', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_fname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_lname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ra_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_enroll` date NOT NULL,
  `emp_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_birth` date DEFAULT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_gender` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`user_id`, `emp_fname`, `emp_lname`, `ra_id`, `emp_phone`, `emp_enroll`, `emp_email`, `emp_address`, `emp_birth`, `fac_id`, `emp_gender`) VALUES
('22000001', 'วสันต์', 'ปราการทอง', '2', '0631159085', '2022-01-01', 'wasant@reg.ac.th', '123 บ้านคุณหลวงบุญธรรม', '1985-01-01', '100010', 'ชาย'),
('22000003', 'อิทธิกร', 'โปร่งหลวง', '2', '0631159085', '2022-01-01', 'Ithikon@reg.ac.th', '123 ประจวบการค้า', '1995-03-01', '100010', 'ชาย'),
('27100001', 'เพ็ญศรี', 'จันทร์เพ็ญ', '1', '630000007', '0000-00-00', 'pensri@reg.ac.th', '17 ต.ท่าเงิน', '0000-00-00', '200020', 'หญิง'),
('27100002', 'ดารา', 'ดาวเด่น', '1', '630000008', '0000-00-00', 'dara@reg.ac.th', '18 ต.ท่าเงิน', '0000-00-00', '200020', 'หญิง'),
('27110001', 'ใจดี', 'มาดี', '1', '630000001', '0000-00-00', 'jaidee@reg.ac.th', '11 ต.ท่าเงิน', '0000-00-00', '100010', 'หญิง'),
('27110002', 'อาทิตย์', 'สวยงาม', '1', '630000002', '0000-00-00', 'athid@reg.ac.th', '12 ต.ท่าเงิน', '0000-00-00', '100010', 'ชาย'),
('27110003', 'อังคาร', 'สดใส', '1', '630000003', '0000-00-00', 'angkan@reg.ac.th', '13 ต.ท่าเงิน', '0000-00-00', '100010', 'ชาย'),
('27110004', 'คนเดิม', 'คนใหม่', '1', '0631159085', '2022-01-01', 'boontham@reg.ac.th', '123 บ้านคุณหลวงบุญธรรม', '2000-01-01', '100010', 'ชาย'),
('27221001', 'แคทลียา', 'พาที', '1', '630000004', '0000-00-00', 'katreeya@reg.ac.th', '14 ต.ท่าเงิน', '0000-00-00', '200020', 'หญิง'),
('27222001', 'อัยยา', 'อิงฤทธิ์', '1', '630000005', '0000-00-00', 'aiya@reg.ac.th', '15 ต.ท่าเงิน', '0000-00-00', '200020', 'หญิง'),
('27223001', 'มาลี', 'แซ่หนิง', '1', '630000006', '0000-00-00', 'malee@reg.ac.th', '16 ต.ท่าเงิน', '0000-00-00', '200020', 'หญิง'),
('35000001', 'เอริยา', 'อัศนี', '3', '0555555550', '2022-01-01', 'raiden@reg.ac.th', '33', '1990-01-01', '100010', 'หญิง');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_tel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `fac_tel`) VALUES
('100010', 'วิทยาศาสตร์', '980100010'),
('200020', 'มนุษย์ศาสตร์', '980200020');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `ra_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ra_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ra_salary` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`ra_id`, `ra_name`, `ra_salary`) VALUES
('1', 'อาจารย์', 38000),
('2', 'ฝ่ายทะเบียน', 45000),
('3', 'อธิการ', 50000),
('4', 'นิสิต', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registra`
--

CREATE TABLE `registra` (
  `reg_id` int(10) NOT NULL,
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reg_score` int(11) NOT NULL,
  `grade` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registra`
--

INSERT INTO `registra` (`reg_id`, `user_id`, `cou_id`, `reg_score`, `grade`) VALUES
(1, '63112001', '111001', 100, 4),
(2, '63112001', '100002', 80, 4),
(4, '63111001', '110002', 77, 3.5),
(6, '63111001', '221001', 50, 1),
(20, '63111002', '111001', 76, 3.5),
(28, '00000004', '111001', 73, 3),
(30, '63111002', '110002', 85, 4),
(31, '63111002', '110003', 66, 2.5),
(33, '63111002', '110001', 63, 3),
(34, '63111002', '100002', 69, 2.5),
(35, '00000004', '110003', 75, 3.5),
(36, '00000004', '110001', 69, 2.5),
(37, '63111003', '221001', 76, 3.5),
(38, '63111003', '110003', 69, 2.5),
(39, '63112002', '111001', 80, 4),
(40, '63112002', '110002', 69, 2.5),
(41, '63112002', '110003', 57, 1.5),
(42, '63112002', '221001', 80, 4),
(43, '63112002', '100002', 77, 3.5),
(44, '63112002', '110001', 72, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_val`
--

CREATE TABLE `reg_val` (
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_val`
--

INSERT INTO `reg_val` (`user_id`, `cou_id`) VALUES
('63111001', '110002'),
('63111001', '110002'),
('63111001', '110002'),
('63111001', '110002'),
('63111001', '110002'),
('63111001', '110002');

-- --------------------------------------------------------

--
-- Table structure for table `sche_employee`
--

CREATE TABLE `sche_employee` (
  `sche_Emp_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sche_employee`
--

INSERT INTO `sche_employee` (`sche_Emp_id`, `user_id`) VALUES
('7', '27100001'),
('8', '27100002'),
('1', '27110001'),
('2', '27110002'),
('3', '27110003'),
('4', '27221001'),
('5', '27222001'),
('6', '27223001');

-- --------------------------------------------------------

--
-- Table structure for table `sche_student`
--

CREATE TABLE `sche_student` (
  `sche_stu_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `semester` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aca_years` year(4) NOT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cou_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_no_group` int(8) NOT NULL,
  `cou_time` date NOT NULL,
  `cou_building` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_fname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_lname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_gender` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_gpa` double NOT NULL,
  `stu_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_birth` date NOT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ra_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `stu_fname`, `stu_lname`, `stu_gender`, `stu_phone`, `stu_gpa`, `stu_address`, `stu_email`, `stu_birth`, `fac_id`, `branch_id`, `ra_id`) VALUES
('00000004', 'นักศึกษา', 'นิสิต', 'ชาย', '0555555550', 3, '33', 'nakzuza@reg.ac.th', '2001-01-01', '100010', '100011', '4'),
('63111001', 'สมมติ', 'นามแฝง', 'ชาย', '0899998999', 0, '21 ต.ท่าพระจันทร์', 'sommud63@reg.ac.th', '0000-00-00', '100010', '100011', '4'),
('63111002', 'มานี', 'มานะ', 'หญิง', '0899999000', 3.1, '22 ต.ท่าพระจันทร์', 'manee63@reg.ac.th', '0000-00-00', '100010', '100011', '4'),
('63111003', 'ยานี', 'มีดี', 'ชาย', '0899999001', 3, '23 ต.ท่าพระจันทร์', 'yanee63@reg.ac.th', '0000-00-00', '100010', '100011', '4'),
('63112001', 'มานาว', 'ใจดี', 'หญิง', '0899999002', 4, '24 ต.ท่าพระจันทร์', 'manaw63@reg.ac.th', '0000-00-00', '100010', '100012', '4'),
('63112002', 'สาระ', 'เทคโน', 'ชาย', '0899999003', 3.0833333333333, '25 ต.ท่าพระจันทร์', 'sara63@reg.ac.th', '0000-00-00', '100010', '100012', '4'),
('63112003', 'วิทยา', 'ซาฟารี', 'หญิง', '0899999004', 0, '26 ต.ท่าพระจันทร์', 'witthaya63@reg.ac.th', '0000-00-00', '100010', '100012', '4'),
('63113001', 'คณิต', 'คำนวณ', 'ชาย', '0899999005', 0, '27 ต.ท่าพระจันทร์', 'kanit63@reg.ac.th', '0000-00-00', '100010', '100013', '4'),
('63113002', 'ดอกคูณ', 'แสนหาร', 'หญิง', '0899999006', 0, '28 ต.ท่าพระจันทร์', 'dokkun63@reg.ac.th', '0000-00-00', '100010', '100013', '4'),
('63113003', 'ตรีโกณ', 'มิติ', 'ชาย', '0899999007', 0, '29 ต.ท่าพระจันทร์', 'trikon63@reg.ac.th', '0000-00-00', '100010', '100013', '4'),
('63221001', 'แข', 'เดือนเพ็ญ', 'หญิง', '0899999008', 0, '30 ต.ท่าพระจันทร์', 'kae63@reg.ac.th', '0000-00-00', '200020', '200021', '4'),
('63221002', 'ชาติชาย', 'เผ่าไทย', 'ชาย', '0899999009', 0, '31 ต.ท่าพระจันทร์', 'chadchai63@reg.ac.th', '0000-00-00', '200020', '200021', '4'),
('63221003', 'สมหญิง', 'รักเรียน', 'หญิง', '0899999010', 0, '32 ต.ท่าพระจันทร์', 'somying@reg.ac.th', '0000-00-00', '200020', '200021', '4'),
('63222001', 'แมทธิว', 'ไผ่ทอง', 'ชาย', '0899999011', 0, '33 ต.ท่าพระจันทร์', 'matthew63@reg.ac.th', '0000-00-00', '200020', '200022', '4'),
('63222002', 'มาเรีย', 'แอนเดรีย', 'หญิง', '0899999012', 0, '34 ต.ท่าพระจันทร์', 'maria63@reg.ac.th', '0000-00-00', '200020', '200022', '4'),
('63222003', 'คาร์ล', 'ชาร์ลี', 'ชาย', '0899999013', 0, '35 ต.ท่าพระจันทร์', 'carl63@reg.ac.th', '0000-00-00', '200020', '200022', '4'),
('63223001', 'อวิ๋นจิ่น', 'อวิ๋นฮั่น', 'หญิง', '0899999014', 0, '36 ต.ท่าพระจันทร์', 'yunjin63@reg.ac.th', '0000-00-00', '200020', '200023', '4'),
('63223002', 'หยาง', 'แซ่หนิง', 'ชาย', '0899999015', 0, '37 ต.ท่าพระจันทร์', 'yang63@reg.ac.th', '0000-00-00', '200020', '200023', '4'),
('63223003', 'เหยาเหยา', 'แซ่ลี', 'หญิง', '0899999016', 0, '38 ต.ท่าพระจันทร์', 'yaoyao63@reg.ac.th', '0000-00-00', '200020', '200023', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student_gpa`
--

CREATE TABLE `student_gpa` (
  `gpa_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_grade_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cou_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_credit` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gpa` decimal(10,0) NOT NULL,
  `aca_year` year(4) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_table_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_fname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_lname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sche_stu_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `semester` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aca_year` year(4) NOT NULL,
  `cou_no_group` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_time` date NOT NULL,
  `cou_building` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cou_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_edit`
--

CREATE TABLE `stu_score_edit` (
  `cou_grade_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cou_no_group` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `aca_years` year(4) NOT NULL,
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_fname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_lname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_scores` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stu_grade` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ra_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `ra_id`) VALUES
('00000004', '00000004', '4'),
('22000001', '22000001', '2'),
('22000003', '22000003', '2'),
('27100001', '27100001', '1'),
('27100002', '27100002', '1'),
('27110001', '27110001', '1'),
('27110002', '27110002', '1'),
('27110003', '27110003', '1'),
('27110004', '27110004', '1'),
('27221001', '27221001', '1'),
('27222001', '27222001', '1'),
('27223001', '27223001', '1'),
('35000001', '35000001', '3'),
('63111001', '63111001', '4'),
('63111002', '63111002', '4'),
('63111003', '63111003', '4'),
('63112001', '63112001', '4'),
('63112002', '63112002', '4'),
('63112003', '63112003', '4'),
('63113001', '63113001', '4'),
('63113002', '63113002', '4'),
('63113003', '63113003', '4'),
('63221001', '63221001', '4'),
('63221002', '63221002', '4'),
('63221003', '63221003', '4'),
('63222001', '63222001', '4'),
('63222002', '63222002', '4'),
('63222003', '63222003', '4'),
('63223001', '63223001', '4'),
('63223002', '63223002', '4'),
('63223003', '63223003', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cou_id`),
  ADD KEY `sche_Emp_id` (`sche_Emp_id`);

--
-- Indexes for table `cou_date_time`
--
ALTER TABLE `cou_date_time`
  ADD PRIMARY KEY (`cdt_id`),
  ADD KEY `cou_date_time_ibfk_1` (`cou_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `ra_id` (`ra_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`ra_id`);

--
-- Indexes for table `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `cou_id` (`cou_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sche_employee`
--
ALTER TABLE `sche_employee`
  ADD PRIMARY KEY (`sche_Emp_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sche_student`
--
ALTER TABLE `sche_student`
  ADD PRIMARY KEY (`sche_stu_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `cou_id` (`cou_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `ra_id` (`ra_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `student_gpa`
--
ALTER TABLE `student_gpa`
  ADD PRIMARY KEY (`gpa_id`),
  ADD KEY `cou_id` (`cou_id`),
  ADD KEY `cou_grade_id` (`cou_grade_id`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`student_table_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `sche_stu_id` (`sche_stu_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cou_id` (`cou_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `stu_score_edit`
--
ALTER TABLE `stu_score_edit`
  ADD PRIMARY KEY (`cou_grade_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `cou_id` (`cou_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `ra_id` (`ra_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cou_date_time`
--
ALTER TABLE `cou_date_time`
  MODIFY `cdt_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `registra`
--
ALTER TABLE `registra`
  MODIFY `reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`sche_Emp_id`) REFERENCES `sche_employee` (`sche_Emp_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cou_date_time`
--
ALTER TABLE `cou_date_time`
  ADD CONSTRAINT `cou_date_time_ibfk_1` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ra_id`) REFERENCES `rank` (`ra_id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `registra`
--
ALTER TABLE `registra`
  ADD CONSTRAINT `registra_ibfk_1` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `registra_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sche_employee`
--
ALTER TABLE `sche_employee`
  ADD CONSTRAINT `sche_employee_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `employee` (`user_id`);

--
-- Constraints for table `sche_student`
--
ALTER TABLE `sche_student`
  ADD CONSTRAINT `sche_student_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `sche_student_ibfk_3` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `sche_student_ibfk_4` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`ra_id`) REFERENCES `rank` (`ra_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `student_gpa`
--
ALTER TABLE `student_gpa`
  ADD CONSTRAINT `student_gpa_ibfk_2` FOREIGN KEY (`cou_grade_id`) REFERENCES `stu_score_edit` (`cou_grade_id`),
  ADD CONSTRAINT `student_gpa_ibfk_3` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`);

--
-- Constraints for table `student_table`
--
ALTER TABLE `student_table`
  ADD CONSTRAINT `student_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `student_table_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `student_table_ibfk_3` FOREIGN KEY (`sche_stu_id`) REFERENCES `sche_student` (`sche_stu_id`),
  ADD CONSTRAINT `student_table_ibfk_6` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `student_table_ibfk_7` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `stu_score_edit`
--
ALTER TABLE `stu_score_edit`
  ADD CONSTRAINT `stu_score_edit_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `stu_score_edit_ibfk_2` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`),
  ADD CONSTRAINT `stu_score_edit_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `stu_score_edit_ibfk_4` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ra_id`) REFERENCES `rank` (`ra_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
