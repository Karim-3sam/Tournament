-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 02:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tournament_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `participates`
--

CREATE TABLE `participates` (
  `id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `username` longtext NOT NULL,
  `created_at` date NOT NULL,
  `tournament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `questions_list` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `tournament_id`, `questions_list`) VALUES
(1, 1, '[\r\n  \r\n    {\r\n \r\n      \"question\": \"What does HTML stand for?\",\r\n      \"options\": [\r\n        \"Hyper Text Markup Language\",\r\n        \"High Text Machine Language\",\r\n        \"Hyperlinks and Text Markup Language\",\r\n        \"Home Tool Markup Language\"\r\n      ],\r\n      \"answer\": \"Hyper Text Markup Language\"\r\n    },\r\n    {\r\n      \r\n      \"question\": \"Which language is used for web development?\",\r\n      \"options\": [\r\n        \"Python\",\r\n        \"C++\",\r\n        \"JavaScript\",\r\n        \"Assembly\"\r\n      ],\r\n      \"answer\": \"JavaScript\"\r\n    },\r\n    {\r\n     \r\n      \"question\": \"What is the output of the following code in Python? print(2**3)\",\r\n      \"options\": [\r\n        \"6\",\r\n        \"8\",\r\n        \"9\",\r\n        \"12\"\r\n      ],\r\n      \"answer\": \"8\"\r\n    },\r\n    {\r\n     \r\n      \"question\": \"Which of the following is a Java framework?\",\r\n      \"options\": [\r\n        \"Spring\",\r\n        \"React\",\r\n        \"Django\",\r\n        \"Vue.js\"\r\n      ],\r\n      \"answer\": \"Spring\"\r\n    },\r\n    {\r\n     \r\n      \"question\": \"What does SQL stand for?\",\r\n      \"options\": [\r\n        \"Structured Query Language\",\r\n        \"Simple Query Language\",\r\n        \"Systematic Query Language\",\r\n        \"Sequential Query Language\"\r\n      ],\r\n      \"answer\": \"Structured Query Language\"\r\n    },\r\n    {\r\n      \r\n      \"question\": \"Which programming language is used for iOS development?\",\r\n      \"options\": [\r\n        \"Swift\",\r\n        \"Kotlin\",\r\n        \"JavaScript\",\r\n        \"C#\"\r\n      ],\r\n      \"answer\": \"Swift\"\r\n    },\r\n    {\r\n      \r\n      \"question\": \"Which operator is used to compare two values in JavaScript?\",\r\n      \"options\": [\r\n        \"=\",\r\n        \"==\",\r\n        \"===\",\r\n        \"!=\"\r\n      ],\r\n      \"answer\": \"===\"\r\n    },\r\n    {\r\n      \r\n      \"question\": \"Which of the following is not a programming language?\",\r\n      \"options\": [\r\n        \"Python\",\r\n        \"Java\",\r\n        \"HTML\",\r\n        \"Ruby\"\r\n      ],\r\n      \"answer\": \"HTML\"\r\n    },\r\n    {\r\n      \r\n      \"question\": \"What is the main purpose of Git?\",\r\n      \"options\": [\r\n        \"Version control\",\r\n        \"Hosting websites\",\r\n        \"Compiling code\",\r\n        \"Debugging\"\r\n      ],\r\n      \"answer\": \"Version control\"\r\n    },\r\n    {\r\n     \r\n      \"question\": \"What is an API?\",\r\n      \"options\": [\r\n        \"Application Programming Interface\",\r\n        \"Automated Programming Instance\",\r\n        \"Active Protocol Interface\",\r\n        \"Application Performance Integration\"\r\n      ],\r\n      \"answer\": \"Application Programming Interface\"\r\n    }\r\n  ]\r\n\r\n'),
(2, 2, '[\r\n    {\r\n      \"question\": \"Which country won the FIFA World Cup in 2018?\",\r\n      \"options\": [\"Brazil\", \"Germany\", \"France\", \"Argentina\"],\r\n      \"answer\": \"France\"\r\n    },\r\n    {\r\n      \"question\": \"Who holds the record for the most Olympic gold medals?\",\r\n      \"options\": [\"Michael Phelps\", \"Usain Bolt\", \"Carl Lewis\", \"Mark Spitz\"],\r\n      \"answer\": \"Michael Phelps\"\r\n    },\r\n    {\r\n      \"question\": \"How many players are there in a soccer team on the field?\",\r\n      \"options\": [\"9\", \"10\", \"11\", \"12\"],\r\n      \"answer\": \"11\"\r\n    },\r\n    {\r\n      \"question\": \"Which sport is known as the \'King of Sports\'?\",\r\n      \"options\": [\"Basketball\", \"Soccer\", \"Cricket\", \"Tennis\"],\r\n      \"answer\": \"Soccer\"\r\n    },\r\n    {\r\n      \"question\": \"In which year were the first modern Olympic Games held?\",\r\n      \"options\": [\"1896\", \"1900\", \"1924\", \"1936\"],\r\n      \"answer\": \"1896\"\r\n    },\r\n    {\r\n      \"question\": \"What is the maximum score in a single frame of snooker?\",\r\n      \"options\": [\"147\", \"155\", \"150\", \"149\"],\r\n      \"answer\": \"147\"\r\n    },\r\n    {\r\n      \"question\": \"Which tennis player has won the most Grand Slam titles?\",\r\n      \"options\": [\"Roger Federer\", \"Rafael Nadal\", \"Novak Djokovic\", \"Serena Williams\"],\r\n      \"answer\": \"Novak Djokovic\"\r\n    },\r\n    {\r\n      \"question\": \"What is the length of a marathon race?\",\r\n      \"options\": [\"40 km\", \"42.195 km\", \"45 km\", \"50 km\"],\r\n      \"answer\": \"42.195 km\"\r\n    },\r\n    {\r\n      \"question\": \"Which basketball team has won the most NBA championships?\",\r\n      \"options\": [\"Los Angeles Lakers\", \"Chicago Bulls\", \"Golden State Warriors\", \"Boston Celtics\"],\r\n      \"answer\": \"Boston Celtics\"\r\n    },\r\n    {\r\n      \"question\": \"In cricket, what is the term for a score of zero?\",\r\n      \"options\": [\"Duck\", \"Goose\", \"Egg\", \"Donut\"],\r\n      \"answer\": \"Duck\"\r\n    }\r\n  ]\r\n'),
(3, 3, ' [\r\n    {\r\n      \"question\": \"What does \'IP\' stand for in networking?\",\r\n      \"options\": [\"Internet Protocol\", \"Internal Process\", \"Input Protocol\", \"Integrated Program\"],\r\n      \"answer\": \"Internet Protocol\"\r\n    },\r\n    {\r\n      \"question\": \"Which protocol is used to send emails?\",\r\n      \"options\": [\"HTTP\", \"SMTP\", \"FTP\", \"IMAP\"],\r\n      \"answer\": \"SMTP\"\r\n    },\r\n    {\r\n      \"question\": \"What is the default port number for HTTP?\",\r\n      \"options\": [\"21\", \"53\", \"80\", \"443\"],\r\n      \"answer\": \"80\"\r\n    },\r\n    {\r\n      \"question\": \"Which layer of the OSI model is responsible for routing?\",\r\n      \"options\": [\"Data Link Layer\", \"Network Layer\", \"Transport Layer\", \"Application Layer\"],\r\n      \"answer\": \"Network Layer\"\r\n    },\r\n    {\r\n      \"question\": \"What is the purpose of DNS in networking?\",\r\n      \"options\": [\r\n        \"Translates domain names to IP addresses\",\r\n        \"Encrypts network traffic\",\r\n        \"Manages email servers\",\r\n        \"Provides network security\"\r\n      ],\r\n      \"answer\": \"Translates domain names to IP addresses\"\r\n    },\r\n    {\r\n      \"question\": \"Which protocol is used for secure communication over the internet?\",\r\n      \"options\": [\"HTTP\", \"HTTPS\", \"FTP\", \"Telnet\"],\r\n      \"answer\": \"HTTPS\"\r\n    },\r\n    {\r\n      \"question\": \"What is the maximum length of an IPv4 address?\",\r\n      \"options\": [\"32 bits\", \"64 bits\", \"128 bits\", \"256 bits\"],\r\n      \"answer\": \"32 bits\"\r\n    },\r\n    {\r\n      \"question\": \"Which device is used to connect multiple networks together?\",\r\n      \"options\": [\"Switch\", \"Router\", \"Hub\", \"Repeater\"],\r\n      \"answer\": \"Router\"\r\n    },\r\n    {\r\n      \"question\": \"What is a subnet mask used for?\",\r\n      \"options\": [\r\n        \"To identify the network and host portions of an IP address\",\r\n        \"To encrypt data\",\r\n        \"To manage email traffic\",\r\n        \"To translate domain names\"\r\n      ],\r\n      \"answer\": \"To identify the network and host portions of an IP address\"\r\n    },\r\n    {\r\n      \"question\": \"Which protocol is used to transfer files over the internet?\",\r\n      \"options\": [\"SMTP\", \"HTTP\", \"FTP\", \"SNMP\"],\r\n      \"answer\": \"FTP\"\r\n    }\r\n  ]\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `spaces_left` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`id`, `title`, `spaces_left`) VALUES
(1, 'IT-tournament', 13),
(2, 'sports-tornament', 17),
(3, 'Network-tournament', 8),
(4, 'telecommunication-tournament', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participates`
--
ALTER TABLE `participates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_id` (`tournament_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_id` (`tournament_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participates`
--
ALTER TABLE `participates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participates`
--
ALTER TABLE `participates`
  ADD CONSTRAINT `participates_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
