-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2023 at 09:45 AM
-- Server version: 5.6.51
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msafar_msafar`
--

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_act` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `duree`, `date_act`, `image`, `nbr_etoiles`, `nb_visite`, `prix_min`, `prix_max`, `accepter_regles`, `created_at`, `updated_at`) VALUES
(1, 128, 'Excursion en quad dans le désert avec dîner', 'titre-de-lactivite-1', 'Sortez de la grande ville et explorez le désert d\'Agafay en quad avec un guide expérimenté. Terminez la soirée avec un repas appétissant et en admirant le ciel étoilé. <br>\nAvant de commencer votre aventure, prenez le temps de vous familiariser avec votre quad dans un grand champ. Posez toutes les questions sur la technique de conduite ou sur le trajet à vos sympathiques instructeurs. <br>\nUne fois que vous vous sentez à l\'aise, suivez vos guides lors d\'un voyage à travers les magnifiques dunes marocaines. <br>\nTerminez votre promenade à l\'endroit où vous avez récupéré votre quad. <br>\nEnsuite, entrez dans une tente berbère traditionnelle et dégustez un authentique repas marocain dans un cadre magnifique. Après avoir mangé à votre faim, détendez-vous sous le ciel étoilé avec un verre de thé chaud à la menthe fraîche, au coin d\'un feu de camp. <br>\nTerminez votre visite du désert d\'Agafay par un retour à travers les dunes jusqu\'à Marrakech. <br>', '0651280862', 40, 'Agafay, Marrakech', 'contact@msafar.ma', '450', 'http://msafar.ma/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', 'https://www.tiktok.com/fr/', '0651280862', '2h', '0000-00-00', 'images/activites/Excursion-en-quad-dans-le desert-avec-diner1.jpg', NULL, 0, 100, 600, 0, '2022-05-13 15:11:13', '2022-07-15 12:43:11'),
(2, 127, 'Promenade à dos de chameau', 'titre-de-lactivite-2', 'Assouvissez votre soif d’aventure lors d’une excursion exaltante à dos de chameau à Marrakech. Tout d’abord, montez sur un chameau et explorez les pittoresques palmeraies de Marrakech en compagnie d’un guide expert. \nProfitez de la tranquillité des palmeraies de Marrakech lors d’une promenade relaxante à dos de chameau. \nProfitez du transport aller-retour au départ de votre hôtel de Marrakech', '0651280862', 1, 'Agadir, Maroc', 'contact@msafar.ma', '350', 'http://msafar.ma/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', 'https://www.tiktok.com/fr/', '0651280862', '3h', NULL, 'images/activites/Promenade-a-dos-de-chameau1.jpg', NULL, 0, 100, 600, 1, '2022-05-13 15:11:28', '2023-01-09 07:43:06'),
(3, 256, 'Merzouga activities', 'merzouga-activities', 'We can offer you all activities that are available in the desert zone\nWe are not the best but we are doing our best to be the best ones', '0639253641', 8, 'Merzouga. Hassilbid', 'karimtilou1996@gmail.com', '360', NULL, NULL, NULL, NULL, '0639253641', NULL, NULL, NULL, NULL, 0, 400, 500, 1, '2023-01-20 13:43:58', '2023-03-02 13:30:35'),
(5, 348, 'Marrakech Day Trips', 'marrakech-day-trips', 'Marrakech Day Trips offers a wide choice of activities and leisure activities. excursions in the Moroccan desert and daily excursions from Marrakech.', '0649595299', 40, 'M hamid, Marrakesh, Morocco', 'ilyassissoughaine7@gmail.com', NULL, NULL, 'https://www.facebook.com/travelegency/?mibextid=ZbWKwL', 'https://www.instagram.com/marrakech_day_trips1/?fbclid=IwAR2lMq5lyNA0BZnedOmY-130Z4BjWn4j8yZISqF3wT3qp56V_9LnArUzFf0', NULL, '0649595299', NULL, NULL, NULL, NULL, 0, 150, 800, 1, '2023-06-23 08:32:13', '2023-06-23 09:14:10'),
(7, 350, 'Voyage luxury Maroc', 'voyage-luxury-maroc', 'Des tours départ de Ouarzazate vers les plus belles destinations dans la région de draa Tafilalet.', '0677304706', 53, 'Hay tahda tarmigte Ouarzazate', 'voyageluxurymaroc@gmail.com', NULL, 'www.nimadeculture.com', NULL, NULL, NULL, '0677304706', NULL, NULL, NULL, NULL, 0, 1400, 6000, 1, '2023-06-23 14:58:30', '2023-06-23 15:09:27'),
(8, 352, 'Lowcostourstravel', 'lowcostourstravel', 'Embarquez pour une visite de trois jours du sud du Maroc au départ de Marrakech. Dormez dans le Sahara, voyez Ait Ben Haddou, et visitez la Vallée des Roses. Traversez les paysages des montagnes de l\'Atlas et les dunes de l\'Erg Chebbi', '0622085369', 40, 'M Avenue', 'getyourguideinternational@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1300, 1800, 1, '2023-06-23 19:47:49', '2023-06-23 19:51:58'),
(9, 351, 'Marrakech Leisure', 'marrakech-leisure', 'Pour vos #vacances à Marrakech, Marrakech Leisure vous propose différents activités.\nQuad, Buggy, Camel, Nuit Bivouac...', '0693696973', 40, 'Marrakech', 'marrakechleisure@gmail.com', NULL, 'https://marrakechleisure.com/', 'https://www.facebook.com/profile.php?id=100009655231455', 'https://www.instagram.com/marrakech_leisure/', NULL, '0693696973', NULL, NULL, NULL, NULL, 0, 200, 1400, 1, '2023-06-26 07:58:39', '2023-06-26 08:06:15'),
(10, 349, 'Atelier Lamsaty', 'atelier-lamsaty', 'Atelier Lamsaty est un espace créatifs situé à Marrakech crée par 4 Sœurs Karima, Amal Wafa et Asma en 2019\nL’atelier est bien équipé de tout ce qu’il faut pour réaliser une pièce de poterie et céramique dans son intégralité ou de broder un sac en tissu en tout liberté avec un espace Shop dédiée pour les Collections Lamsaty en céramique (Mug, Tasse,Vase…)', '0649455080', 40, 'Lot Elmassar Imtidad 516, N7, Marrakech 40000', 'contact@lamsatyhandmade.com', NULL, 'https://www.lamsatyhandmade.com/Lamsaty/public/index.php/', 'https://www.facebook.com/elkhiderkarima', 'https://www.instagram.com/lamsatyhandmade/', NULL, '0649455080', NULL, NULL, NULL, NULL, 0, 250, 1800, 1, '2023-06-26 08:19:59', '2023-06-26 10:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `activite_images`
--

CREATE TABLE `activite_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `id_lieux` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activite_images`
--

INSERT INTO `activite_images` (`id`, `image`, `libelle`, `id_activite`, `id_guide`, `id_lieux`, `created_at`, `updated_at`) VALUES
(1, 'images/activites/Excursion-en-quad-dans-le desert-avec-diner2.jpg', 'Photo11.jpg', 1, NULL, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(2, 'images/activites/Excursion-en-quad-dans-le desert-avec-diner3.jpg', 'Photo12.jpg', 1, NULL, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(3, 'images/activites/Promenade-a-dos-de-chameau2.jpg', 'Photo13.jpg', 2, NULL, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(4, 'images/activites/Promenade-a-dos-de-chameau4.jpg', 'Photo14.jpg', 2, NULL, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(5, 'images/guides-touristique/guide2.jpg', 'Photo15.jpg', NULL, 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(6, 'images/guides-touristique/guide3.jpg', 'Photo17.jpg', NULL, 1, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(7, 'images/guides-touristique/guide4.jpg', 'Photo18.jpg', NULL, 1, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(8, 'images/guides-touristique/guide5.jpg', 'Photo19.jpg', NULL, 1, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(9, 'images/guides-touristique/guide6.jpg', 'Photo20.jpg', NULL, 1, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(10, 'images/guides-touristique/guide7.jpg', 'Photo06.jpg', NULL, NULL, NULL, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(11, 'images/guides-touristique/uDwscPp5l4CqOnpYZLyX9OMTPcLZKWioE83xC9eh.jpg', 'Photo07.jpg', NULL, NULL, NULL, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(12, 'images/guides-touristique/grVmtPpCMwTQnDqwIhJ8OcfvGn4espxFBi3cGqwS.jpg', 'Photo08.jpg', NULL, NULL, NULL, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(13, 'images/guides-touristique/nVZ3Up8gakGd1Do9wIVMJqDafsHhdFZF7ewCV2Xk.jpg', 'Photo09.jpg', NULL, NULL, NULL, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(14, 'images/guides-touristique/0FSWEv0JKbNODpFpXnWWxp1kLLlTp0wMnSEMvRlv.jpg', 'Photo10.jpg', NULL, NULL, NULL, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(20, 'images/activites/Excursion-en-quad-dans-le desert-avec-diner1.jpg', 'Photo14.jpg', 2, NULL, NULL, '2022-05-14 09:41:14', '2022-05-17 09:41:14'),
(23, 'images/lieux/Gvn3PDasgBdrEUcQw9VvAJJF6GeXNdYzQvGebG1d.jpg', NULL, NULL, NULL, 82, '2022-10-05 14:28:59', '2022-10-05 14:28:59'),
(24, 'images/lieux/eX7iZiLdoqjfPSvzrDiyNPLGAg4QuuCzLqc8YV1e.jpg', NULL, NULL, NULL, 82, '2022-10-05 14:28:59', '2022-10-05 14:28:59'),
(25, 'images/lieux/ZT2QQYsfb7GTtBIaUr6kUrDCRn32oY2pfyrqbl1K.jpg', NULL, NULL, NULL, 83, '2022-10-05 14:34:02', '2022-10-05 14:34:02'),
(26, 'images/lieux/BjwVvirUan2ABcVuIPoo47aYSsDEKhsXXYYvjP5F.jpg', NULL, NULL, NULL, 83, '2022-10-05 14:34:02', '2022-10-05 14:34:02'),
(27, 'images/lieux/Cn8IvDnSID3u1kVjshrsP4K98YyOiOEqEfIlMwHW.jpg', NULL, NULL, NULL, 83, '2022-10-05 14:34:02', '2022-10-05 14:34:02'),
(31, 'images/guides-touristique/2YUmnhrNWHLKfTyMFWdpCElaakfAhKyAGKr6yWA6.jpg', NULL, NULL, 2, NULL, '2022-10-17 15:57:53', '2022-10-17 15:57:53'),
(32, 'images/guides-touristique/pgDOTzcbWHa6OjXTyqIXXCTwmNbn8TZIjpnhHQti.jpg', NULL, NULL, 2, NULL, '2022-10-17 15:57:53', '2022-10-17 15:57:53'),
(34, 'images/lieux/XvabOniMAwZCuvPaeEHs4jEbhTYoqS2ZShQ8Wb2y.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:49:13', '2022-10-18 12:49:13'),
(35, 'images/lieux/4xQPPQQQv8S6eWVfYyzsmqUqJNVLSiV3mEhLXGnG.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:49:13', '2022-10-18 12:49:13'),
(37, 'images/guides-touristique/fmw5HCw3wnszydVQfhejCn6TuH9zPmoNw30aiSZl.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:52:10', '2022-10-18 12:52:10'),
(38, 'images/guides-touristique/w33TqSZooBcvaOvlEZoSFrmea92LRiScVvSMf7BB.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:52:10', '2022-10-18 12:52:10'),
(40, 'images/guides-touristique/wvMLabC0wqWT5SsHqP551OsR8zuX5REoFeUJAY2z.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:54:48', '2022-10-18 12:54:48'),
(41, 'images/guides-touristique/120ce6rgjXPHb4tQKmV7Z95W31KN20A3mYtiQhep.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:54:48', '2022-10-18 12:54:48'),
(42, 'images/guides-touristique/CjndnXxg7NG8up4DNkkKt0GDBCmTUaIpohcjvLIR.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:54:51', '2022-10-18 12:54:51'),
(43, 'images/guides-touristique/Vs17EWiqKWQ0p74vo3J6W3ViZmDdG58nWNHb7SQy.jpg', NULL, NULL, NULL, 84, '2022-10-18 12:54:51', '2022-10-18 12:54:51'),
(44, 'images/lieux/1C52rOjOLXB2V3V7XG9OaeBFYCBgVkuA7i0wLOaS.jpg', NULL, NULL, NULL, 85, '2022-10-19 14:19:02', '2022-10-19 14:19:02'),
(45, 'images/lieux/NcgBqUZDO8Eaf0TQV1oleMogoibHp2rR7NH9aLUO.jpg', NULL, NULL, NULL, 85, '2022-10-19 14:19:02', '2022-10-19 14:19:02'),
(46, 'images/lieux/64VAD2ioM0mDUNeMAAV6pA7gOGsgxkYvxqZKMqgx.jpg', NULL, NULL, NULL, 85, '2022-10-19 14:19:02', '2022-10-19 14:19:02'),
(47, 'images/lieux/0HoOZDPkkIRqAvXERXrFrXRoLpwTUIORYjzUw8LL.jpg', NULL, NULL, NULL, 86, '2022-10-20 08:37:12', '2022-10-20 08:37:12'),
(48, 'images/lieux/SZAWjqLybQPkY2MymeTVOoPM6dTOuddA1kGUL9lu.jpg', NULL, NULL, NULL, 86, '2022-10-20 08:37:12', '2022-10-20 08:37:12'),
(49, 'images/lieux/Or93C3dsbgHaBU4Gen2AMmZMz8Y2g9CFW53V7KYO.jpg', NULL, NULL, NULL, 86, '2022-10-20 08:37:12', '2022-10-20 08:37:12'),
(54, 'images/lieux/euvwVfy9p7hGQmufVwiDiHgLaZhye1z3TfPiK453.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:15', '2022-10-20 09:09:15'),
(55, 'images/lieux/rHw1i4ZJVkdHNqgHUojZUl4UkK00smNIsQhwxFUx.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:15', '2022-10-20 09:09:15'),
(56, 'images/lieux/WHobXObSIVfI81tCpe9Xl6fDJR6waE1dCVUKaDpa.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:15', '2022-10-20 09:09:15'),
(57, 'images/lieux/M7FHIcpqUyLRFKPXaEbv9Fquimc6uEqPKCAxQdIk.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:15', '2022-10-20 09:09:15'),
(58, 'images/lieux/0uDVgLJTOJ3jFLbX011xMpojj0sJ4s3wuAsaZNMo.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(59, 'images/lieux/eDhpQIGYWgl3f55j1Q5eKP8ghrwPYKbZXNiF2n09.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(60, 'images/lieux/JWMAZt9xUIX2Nc2AFj0kJgw6Jyo5LUSMtXk6uLJQ.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(61, 'images/lieux/etI8fnOx6qF292BPn42N2vBKEwrR4VTFgZ0Efpyt.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(62, 'images/lieux/ez27UsOOhRTTzBi3cxgiE3yCV4Ki0B1FKqKWwqhJ.png', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(63, 'images/lieux/JDVekqkBHgrx1V9xZ9Bdbo9RWKtauwYqfRgTYzLq.jpg', NULL, NULL, NULL, 87, '2022-10-20 09:09:17', '2022-10-20 09:09:17'),
(64, 'images/lieux/Yqp6XYoKf9rmwg3d5xcvZzaxRc3Gf1VfC3LHraOl.jpg', NULL, NULL, NULL, 102, '2022-10-20 09:20:09', '2022-10-20 09:20:09'),
(65, 'images/lieux/VsxSg5AQOB5gC1waRxhx99v1pN1YRoluUt7lB8Jf.jpg', NULL, NULL, NULL, 102, '2022-10-20 09:20:09', '2022-10-20 09:20:09'),
(66, 'images/lieux/mKXqrJ3tMGo59QQwmwzCdIZVkvSdloj8XbgiGMZH.jpg', NULL, NULL, NULL, 102, '2022-10-20 09:20:09', '2022-10-20 09:20:09'),
(67, 'images/lieux/TDkyL7AEEXO6XtZMPKIuexvTB6AJWcxUzgl9CvmB.jpg', NULL, NULL, NULL, 103, '2022-10-20 09:58:27', '2022-10-20 09:58:27'),
(68, 'images/lieux/A2i21bQUE3cIBjNuQsev3ry1NO90kM1u3C6mYyou.jpg', NULL, NULL, NULL, 103, '2022-10-20 09:58:27', '2022-10-20 09:58:27'),
(69, 'images/lieux/JUUgNmwOYYtPYGamrELTOo9DrKZqAej69yzwGFDG.jpg', NULL, NULL, NULL, 103, '2022-10-20 09:58:27', '2022-10-20 09:58:27'),
(70, 'images/lieux/C2q7CRVFZ0GgYfhTIt9572xJVdAJRJDdj5ASXBHt.jpg', NULL, NULL, NULL, 103, '2022-10-20 09:58:27', '2022-10-20 09:58:27'),
(71, 'images/lieux/b1vj7do6ZokFkdD4YEZJ8bvkWuu4SNkREqxkMnSx.jpg', NULL, NULL, NULL, 103, '2022-10-20 09:58:27', '2022-10-20 09:58:27'),
(72, 'images/lieux/INKQnVNKx24X4kb0yoapC1S19Pv4LxYjGtCPN62H.jpg', NULL, NULL, NULL, 104, '2022-10-26 08:50:24', '2022-10-26 08:50:24'),
(73, 'images/lieux/S26OLn6fyDtlA4WNOGGwfPR0MKSPO0P5wA68gfA2.jpg', NULL, NULL, NULL, 104, '2022-10-26 08:50:24', '2022-10-26 08:50:24'),
(74, 'images/lieux/O0ZD7OLxP9NnMtRYfI9WUBptpbhtaAuVO2rzXlii.png', NULL, NULL, NULL, 104, '2022-10-26 08:50:24', '2022-10-26 08:50:24'),
(75, 'images/lieux/hZkSUR79KTqTF1OqRGkonSWtcyKKPkSzF5Vskzjp.png', NULL, NULL, NULL, 104, '2022-10-26 08:50:24', '2022-10-26 08:50:24'),
(76, 'images/lieux/xU2oK9CHLwbcaDhO5P5QOysNM6gpsPgMQ6D9rHcW.jpg', NULL, NULL, NULL, 104, '2022-10-26 08:50:24', '2022-10-26 08:50:24'),
(77, 'images/lieux/De0aoLVT7LSyH7qbz814ijGfhe9E2Y1rSSYcItKv.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:48', '2022-10-27 15:59:48'),
(78, 'images/lieux/HbwjH1c0ze5cYH0sOe7mw9i2tc1APsJk1Qb1LN4r.png', NULL, NULL, NULL, 106, '2022-10-27 15:59:48', '2022-10-27 15:59:48'),
(79, 'images/lieux/DaXAb2UKrSsEMj35phCO5kBSREHxQjJ0doUqzViq.png', NULL, NULL, NULL, 106, '2022-10-27 15:59:51', '2022-10-27 15:59:51'),
(80, 'images/lieux/QSYy4Wj85QEsjtkDfd2jzE6zwQQxPCOkmaeHmUe7.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:51', '2022-10-27 15:59:51'),
(81, 'images/lieux/uYgq3LXq5SIbSR6AlD0PQWEUdACG29GdXD0DXhiP.png', NULL, NULL, NULL, 106, '2022-10-27 15:59:51', '2022-10-27 15:59:51'),
(82, 'images/lieux/KSMAu0HESSOAP2zQEInQJTreMomflHkU03W0vFDR.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:51', '2022-10-27 15:59:51'),
(83, 'images/lieux/UehT7VOsLVmFAluiYxVg9lrnWg1FUKly4cAaxEFh.png', NULL, NULL, NULL, 106, '2022-10-27 15:59:51', '2022-10-27 15:59:51'),
(84, 'images/lieux/j6cA4fCoBlkcR3OML26oSb3MN6hVJmEXHJFAGAIN.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:55', '2022-10-27 15:59:55'),
(85, 'images/lieux/lOCXSjg1BuQHuz2h1UseIAU5iLPST3IIu6lnbgJt.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:55', '2022-10-27 15:59:55'),
(86, 'images/lieux/7AV4egPkhw7gLIXlr3kSnY4j3OuMZNSsxxtyLYdF.jpg', NULL, NULL, NULL, 106, '2022-10-27 15:59:55', '2022-10-27 15:59:55'),
(87, 'images/lieux/9qkDfdv2yMky8r1Jbtiqars1NwlT2ms5Ug8xfbjr.jpg', NULL, NULL, NULL, 107, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(88, 'images/lieux/Ow5SQacuKMvSO8Rd2AvRBjLQy6ZEecurb8xPm56g.jpg', NULL, NULL, NULL, 107, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(89, 'images/lieux/4LWqsC0xmEhyZAQ4HgfPpSizNJewwutqxggnWU1P.png', NULL, NULL, NULL, 107, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(90, 'images/lieux/4B7wQjv2uwGfyhzxxwQ7hcRezhYGAlGGDQLkMWOR.png', NULL, NULL, NULL, 107, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(91, 'images/lieux/spp4momdFJSW8uCeVRKMnBqjYk6M53pA5wrC3okE.jpg', NULL, NULL, NULL, 107, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(92, 'images/lieux/98sm2Amvf1IZI5GeQOMYGq1glwjWKW6WGpl5grGZ.png', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(93, 'images/lieux/wTnax9MpexltyzF0meWZubgbyOAXCcdvoJQxwJAW.jpg', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(94, 'images/lieux/f51c0GuGVpZeU4H1PyT80xdMJr105WBAPY6BvRM5.jpg', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(95, 'images/lieux/oWQvYByfO5b6sDW48PwCBJ7UWjZxfUk7XmNgfDq4.jpg', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(96, 'images/lieux/i8XLQJRxxUgGCN8c7L9svG5v7VQcQ6CWqTMQ3PWH.jpg', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(97, 'images/lieux/sF3g5d1TeDTHzzCH5jKz2wn7AUOsiS9JbeknkiZq.jpg', NULL, NULL, NULL, 108, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(98, 'images/guides-touristique/E7jpiw7cPWMIAy3BSaByOblhaP8OPfaTzdszUGiv.jpg', NULL, 6, NULL, NULL, '2022-10-28 12:57:08', '2022-10-28 12:57:08'),
(101, 'images/lieux/X5Rw8y4x8bmCr3tINf15CP3fuvmCEaTYQmH18uZc.jpg', NULL, NULL, NULL, 109, '2022-11-17 09:19:25', '2022-11-17 09:19:25'),
(102, 'images/guides-touristique/NB2t4QuzJeu6SXWvnD7BeWwjzoBrSnicmP7o6nDY.jpg', NULL, NULL, NULL, 109, '2022-11-17 09:20:54', '2022-11-17 09:20:54'),
(106, 'images/guides-touristique/HsJ8GZayEuyBLo5ckMiy0jFDjLbeCLcZbdeGlKxG.jpg', NULL, NULL, NULL, 111, '2022-11-22 12:33:54', '2022-11-22 12:33:54'),
(108, 'images/guides-touristique/pdSPsolYU3a8ZpS8hY96rmgp6AGLSM7BMW30CcFd.jpg', NULL, NULL, NULL, 111, '2022-11-22 12:37:59', '2022-11-22 12:37:59'),
(109, 'images/guides-touristique/VD31n34DXmH2131mLFiZENCAd41M2kiPD0kdwibD.jpg', NULL, NULL, NULL, 111, '2022-11-22 12:39:07', '2022-11-22 12:39:07'),
(110, 'images/guides-touristique/TBcyDta9o4fblrMmy49khB0QDfupMSt7VeFbqsvY.jpg', NULL, NULL, NULL, 111, '2022-11-22 12:39:56', '2022-11-22 12:39:56'),
(111, 'images/guides-touristique/7G3BRFg0C1W4Tq2O5devyFRYIVMrGwfo5QUZF7cm.jpg', NULL, NULL, NULL, 11, '2022-11-29 08:24:28', '2022-11-29 08:24:28'),
(112, 'images/guides-touristique/GQfakpCQSh48CjsWyAM1PBgDcquaurRwn1vsHjoM.jpg', NULL, NULL, NULL, 66, '2022-11-29 08:28:03', '2022-11-29 08:28:03'),
(113, 'images/guides-touristique/gGKrf2fOtJWGhC2frjnxZ1Coi7xGix3zaaHDPnYN.jpg', NULL, NULL, NULL, 114, '2022-11-29 10:57:28', '2022-11-29 10:57:28'),
(114, 'images/guides-touristique/4FAsrUq7THnRhaDq7XZtDrSbDQ7LmpPOYk0vQUE8.jpg', NULL, NULL, NULL, 114, '2022-11-29 15:07:58', '2022-11-29 15:07:58'),
(117, 'images/lieux/aQn0RKUoOW6JeESIZEJIlOu17GsP39VmcpExosfm.jpg', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(118, 'images/lieux/qyMNL0Isuds6EumwC6KBxHSV7H19TRWmNw4eT0rs.jpg', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(119, 'images/lieux/FW2QOiv98NCVdSQGHnOoOTuGeLK1Mt2oHRDJdFs5.png', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(120, 'images/lieux/ExHqymkUFuMjap61A7EA36M5Up1xitZK3YB1xNeJ.png', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(121, 'images/lieux/CnmIN8bkIS4LVIc0C9AT78wXpsFcd3gGICAlXHRg.png', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(122, 'images/lieux/ZwWxPORczIDAdhqOpIfDvE2rXnvUPFZ4Npk0apGP.png', NULL, NULL, NULL, 115, '2023-01-04 09:56:50', '2023-01-04 09:56:50'),
(123, 'images/guides-touristique/Ec7moAtUvFrxnjn91hfmxReuCWTKUSzgXsnShGR6.jpg', NULL, NULL, NULL, 115, '2023-01-04 09:59:24', '2023-01-04 09:59:24'),
(124, 'images/guides-touristique/y0aWc0tNHI9aMLUlyJ0MJriR1xGpYjmT1WKilndA.png', NULL, NULL, NULL, 119, '2023-01-04 14:01:25', '2023-01-04 14:01:25'),
(125, 'images/guides-touristique/dyAoVOIstLancAxK4YbMsE54Os9dOL94aIceiKA5.jpg', NULL, NULL, NULL, 119, '2023-01-04 14:01:25', '2023-01-04 14:01:25'),
(127, 'images/guides-touristique/7vSM2JkQrKtbOvK3i3Al0vePdkTrciRzb0mDASXx.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:14:13', '2023-01-05 15:14:13'),
(128, 'images/guides-touristique/MJhm26cU0LvEoF0Gy7oxyhq1GhoPkyT9NGkEga7n.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:14:31', '2023-01-05 15:14:31'),
(129, 'images/guides-touristique/i3AR7aGCqEtNP9wyqgLz4rM4lyROUs1lLGxyQrYh.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:14:41', '2023-01-05 15:14:41'),
(131, 'images/guides-touristique/okWx4Wmysr0gO2p7cm9GvPcWpsklmmfrCIBNooh1.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:15:06', '2023-01-05 15:15:06'),
(132, 'images/guides-touristique/sQqtvUsA66tZckThsY5oenLlHY3raFqfam2eceDa.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:15:20', '2023-01-05 15:15:20'),
(134, 'images/guides-touristique/kI3z7jeU7V5rThnMVUMSQAP5vDY0WGGA8iocWv4k.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:15:54', '2023-01-05 15:15:54'),
(135, 'images/guides-touristique/eLGK95mZCCSY3xDvxnpN58UpB5U69AwWKSeCyabi.jpg', NULL, NULL, NULL, 121, '2023-01-05 15:16:03', '2023-01-05 15:16:03'),
(136, 'images/guides-touristique/n3C0po4oYyRC3LRt6jyfqFJibNA5llW01bS3BRT0.png', NULL, NULL, NULL, 121, '2023-01-05 15:16:11', '2023-01-05 15:16:11'),
(138, 'images/guides-touristique/dP5e2vaOsgrwCLZd8cNOjU9fowYBK1tcALo9fweY.jpg', NULL, NULL, NULL, 115, '2023-01-05 15:19:22', '2023-01-05 15:19:22'),
(139, 'images/guides-touristique/67hOOEhSdJUSnZzPEtfFvcrh1UhLwQhr29nWuI3k.jpg', NULL, NULL, NULL, 130, '2023-01-09 08:57:43', '2023-01-09 08:57:43'),
(141, 'images/guides-touristique/WTyfRX9e5fMXREeTIUOOJg2ecNw817DeOvrJuFiV.jpg', NULL, NULL, NULL, 130, '2023-01-09 08:58:52', '2023-01-09 08:58:52'),
(142, 'images/guides-touristique/xL0Z1ShbsIvi4Z7Z2CeL6xeRYwXNqnF6Olha4bcO.jpg', NULL, NULL, NULL, 130, '2023-01-09 09:00:07', '2023-01-09 09:00:07'),
(143, 'images/guides-touristique/FCs3vx3iQfABlf1n2Pj52yKgNzPH31s62IgvR58c.jpg', NULL, NULL, NULL, 130, '2023-01-09 09:00:19', '2023-01-09 09:00:19'),
(145, 'images/guides-touristique/5wS2lRQ3mtAT61C7pn1znzf6ZMNIVOSFDCetY8ye.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:38:48', '2023-01-10 09:38:48'),
(146, 'images/guides-touristique/4Og2K8jEGt9dS3mvtz4jjxweitIOa1AL4zQk2VCN.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:00', '2023-01-10 09:39:00'),
(147, 'images/guides-touristique/e0WvauQfZIsq2HMEwUpt63ETfWOxuxtEtLerj4LT.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:05', '2023-01-10 09:39:05'),
(148, 'images/guides-touristique/dw0RkUqJ0Fdv2A8PJmSrosBOToVhvC1Uw4fI7GtF.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:18', '2023-01-10 09:39:18'),
(149, 'images/guides-touristique/MX3jcjA29oUcYitBsZhSDQRZqlbADVRpeK3AvJJK.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:25', '2023-01-10 09:39:25'),
(150, 'images/guides-touristique/JIMxt6F1EhDTUKNWUsGz3BztNRaP8ICH6FlGwjLX.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:38', '2023-01-10 09:39:38'),
(151, 'images/guides-touristique/37Af4WCWEasZKdLjkXMuBukXKb0V695KBqC4zMKv.jpg', NULL, NULL, NULL, 136, '2023-01-10 09:39:48', '2023-01-10 09:39:48'),
(152, 'images/guides-touristique/GmfX9W4YL3LBgGcExWofMSSFgkyqlbTwbDcSlK1N.png', NULL, NULL, NULL, 137, '2023-01-13 09:53:02', '2023-01-13 09:53:02'),
(153, 'images/guides-touristique/PLgzkT3A3BE8dozfKa68ZeNsLdVwbMTWKD0spH7V.jpg', NULL, NULL, NULL, 137, '2023-01-13 09:53:15', '2023-01-13 09:53:15'),
(155, 'images/guides-touristique/JzFsTZJRvbTMpQgLe2Dwg6ioSmKc06ctg0imb8by.jpg', NULL, NULL, NULL, 137, '2023-01-13 09:55:45', '2023-01-13 09:55:45'),
(156, 'images/guides-touristique/SpDfUpo3fg0UHTd1yNXu8rkpW9Y7WsG0yFbxMEAT.jpg', NULL, NULL, NULL, 137, '2023-01-13 09:56:07', '2023-01-13 09:56:07'),
(157, 'images/guides-touristique/RbAYNtNGfsfO6ihKQsy91zkhVJtRfQIxsOdY2FvS.jpg', NULL, NULL, NULL, 137, '2023-01-13 10:01:38', '2023-01-13 10:01:38'),
(159, 'images/guides-touristique/yxFwi7DEU2ySvEjFUOEZwLdTCDjvPPh2837lzHfN.jpg', NULL, NULL, NULL, 138, '2023-01-16 14:18:27', '2023-01-16 14:18:27'),
(160, 'images/guides-touristique/h4FuMeN00yfk1XDdjsXwxtguxvDN6GtvKG7ksLlj.jpg', NULL, NULL, NULL, 138, '2023-01-16 14:18:33', '2023-01-16 14:18:33'),
(161, 'images/guides-touristique/Fdv84vNXKTkhjyfJbK7WFp44sAAz2Tm6jB7qMvh1.jpg', NULL, NULL, NULL, 138, '2023-01-16 14:18:40', '2023-01-16 14:18:40'),
(162, 'images/guides-touristique/KjJrmPEQY1YBofKBEe3NRvJ4X5uBCaI3wEoTNYga.jpg', NULL, NULL, NULL, 138, '2023-01-16 14:18:47', '2023-01-16 14:18:47'),
(163, 'images/guides-touristique/mUebOF2UVImUunALHKqMZcLzNn5OnaBOSWVgErOC.jpg', NULL, NULL, NULL, 138, '2023-01-16 14:18:54', '2023-01-16 14:18:54'),
(165, 'images/guides-touristique/CPN8SWLG2zodQCEg9010DNXavz7oRmjwEReHMhMU.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:18:23', '2023-01-20 09:18:23'),
(166, 'images/guides-touristique/fSZ6HlQa4t4gYXCY8ThSThzKxWbFso5YMy8KCr31.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:18:40', '2023-01-20 09:18:40'),
(167, 'images/guides-touristique/jdJ5sHeTR3OP30H3kibGI3mX5uRtb5Db9RFKxHqN.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:18:46', '2023-01-20 09:18:46'),
(168, 'images/guides-touristique/YoBt3yJPD9gFm3t8SemgOEksoN5n7i8Sp0cANN3q.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:18:54', '2023-01-20 09:18:54'),
(169, 'images/guides-touristique/NFU4O61VJoq6hTNqL77pevqHBSOihdcKKEjXPZxm.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:19:02', '2023-01-20 09:19:02'),
(170, 'images/guides-touristique/CS4Qfls1KkwnHWp7OP7hofan12pcaJsajNLRM71A.jpg', NULL, NULL, NULL, 139, '2023-01-20 09:19:20', '2023-01-20 09:19:20'),
(171, 'images/guides-touristique/oorDjmKqE8B0zd09dlCgVfxeF3GxnbD0Ze0MJE3F.jpg', NULL, 3, NULL, NULL, '2023-01-20 13:53:01', '2023-01-20 13:53:01'),
(178, 'images/guides-touristique/O9ACqy2YhPEtflfmgePvOvyVchmqq5btd1b2dVMe.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:03:28', '2023-01-30 11:03:28'),
(179, 'images/guides-touristique/orrSbG6ONVQAXm7ewYq62vlUIgClIYAfwZn4vfwZ.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:03:53', '2023-01-30 11:03:53'),
(181, 'images/guides-touristique/kzRSEVQz9URtvchjnsgSENCSyehD4wtK1124We3M.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:06:24', '2023-01-30 11:06:24'),
(182, 'images/guides-touristique/image-casa.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:06:24', '2023-01-30 11:06:24'),
(183, 'images/guides-touristique/image-casa2.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:06:24', '2023-01-30 11:06:24'),
(184, 'images/guides-touristique/habous.jpg', NULL, NULL, NULL, 140, '2023-01-30 11:06:24', '2023-01-30 11:06:24'),
(187, 'images/guides-touristique/3B4ugJRogiOCyKnOLVpCYri7hELWlSq0zvACjDVM.jpg', NULL, NULL, NULL, 141, '2023-02-15 15:34:57', '2023-02-15 15:34:57'),
(188, 'images/guides-touristique/9hAzTR7EVBtieBo51ihf7v0SZgcYWqtNMBOSgGtH.jpg', NULL, NULL, NULL, 141, '2023-02-15 15:35:06', '2023-02-15 15:35:06'),
(189, 'images/guides-touristique/aWDPMR81v9RrI7YeaMrksie3nDAf7LtsOR63bbo8.jpg', NULL, NULL, NULL, 141, '2023-02-15 15:35:14', '2023-02-15 15:35:14'),
(190, 'images/guides-touristique/8P7DqfAEQKwNa9t3M9DRJzUMZxUfCwwgKXGhq0uv.jpg', NULL, NULL, NULL, 141, '2023-02-15 15:39:13', '2023-02-15 15:39:13'),
(191, 'images/lieux/02ijygfPpWdRKUoB5EVVmt2wqih4FNcJq5a9Hh63.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:36:12', '2023-02-20 09:36:12'),
(192, 'images/guides-touristique/1GUnc9Ru2DvGkVtIKqhBZZjMllgpvfp0Ewm4dYeF.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:36:33', '2023-02-20 09:36:33'),
(193, 'images/guides-touristique/4nQfLzJvbWtMlhWY5wzPufO3y1oNWKn1q3K1CS43.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:36:42', '2023-02-20 09:36:42'),
(194, 'images/guides-touristique/kmL9jHWibRvsCzR5qWioCxLkrx91SlfnZQDmn41L.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:36:50', '2023-02-20 09:36:50'),
(195, 'images/guides-touristique/qdFMQKnL03P8zsUnrws645IFI3zjzVJHUUuLoPuw.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:36:57', '2023-02-20 09:36:57'),
(196, 'images/guides-touristique/tnAgTdZSr8gI9vshQ0RK4d39TIEz5QM1a2CDJt3b.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:37:07', '2023-02-20 09:37:07'),
(197, 'images/guides-touristique/MwxcPx4HnP0UMls5xWGZu3oGpKyKheJT3uLDR5pj.jpg', NULL, NULL, NULL, 143, '2023-02-20 09:37:11', '2023-02-20 09:37:11'),
(198, 'images/lieux/XPgsJI1nQZiObnDU0ExOr5UgQCQ0VOCIWKyhveLE.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:14:25', '2023-03-01 10:14:25'),
(199, 'images/guides-touristique/zGwPDaoS9nNcWfuGy8HD79fH3KqfrPhLH1FEqfTa.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:14:44', '2023-03-01 10:14:44'),
(201, 'images/guides-touristique/zvjKyeov522jOYUdaS4ksMlkiwzlburad4Vza1NI.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:14:57', '2023-03-01 10:14:57'),
(202, 'images/guides-touristique/ZbNo8KPOH7RluRX14F0d6jPrw2EK8hkrxWPiLqxB.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:15:02', '2023-03-01 10:15:02'),
(203, 'images/guides-touristique/prGMk8Q22rAMmiAJFxh8YNkG0jSpeBM6ZpaMgh6D.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:15:05', '2023-03-01 10:15:05'),
(204, 'images/guides-touristique/HdkqrdCjUD5aIbkeGeSKwiQRFdCXg3vMqAovG2La.jpg', NULL, NULL, NULL, 144, '2023-03-01 10:17:22', '2023-03-01 10:17:22'),
(206, 'images/guides-touristique/kseFXbwJl9KY1Hq5ufuO8QIO5sZpK6k5PPTSYSxR.jpg', NULL, NULL, NULL, 145, '2023-04-05 10:57:08', '2023-04-05 10:57:08'),
(207, 'images/guides-touristique/QInxL70wFwd5ZnFst6EOL3o5E7HMrmx0V88xFbyH.jpg', NULL, NULL, NULL, 145, '2023-04-05 10:57:49', '2023-04-05 10:57:49'),
(208, 'images/guides-touristique/FbJ6LAHel9jS9BQmHBPKAzDCvfjjSAO3GQNYzqH2.jpg', NULL, NULL, NULL, 145, '2023-04-05 10:58:47', '2023-04-05 10:58:47'),
(209, 'images/guides-touristique/eCDKtptMQjKdi1dZ8EQRxoK7kdfGEkVyOrr59k44.jpg', NULL, NULL, NULL, 145, '2023-04-05 10:59:38', '2023-04-05 10:59:38'),
(214, 'images/guides-touristique/xFxOpoQdzsCJNs5Li4AunOjwnyiaqR3NqCyXmhva.jpg', NULL, NULL, NULL, 147, '2023-04-05 11:27:14', '2023-04-05 11:27:14'),
(215, 'images/guides-touristique/Lq98aDxoXnQsMd2tL2SlyGpNm0cx7E59ELBO3HN4.jpg', NULL, NULL, NULL, 148, '2023-04-05 11:35:57', '2023-04-05 11:35:57'),
(216, 'images/guides-touristique/oxqERQlsrhQnuyrL6pxLsC41XxATxSNp8uYNbPdO.jpg', NULL, NULL, NULL, 148, '2023-04-05 11:36:15', '2023-04-05 11:36:15'),
(217, 'images/guides-touristique/VZahQCVWcat7Dg3ZuWyfP0pKpiNSYsVkAD42ipBb.jpg', NULL, NULL, NULL, 148, '2023-04-05 11:36:31', '2023-04-05 11:36:31'),
(218, 'images/guides-touristique/KuDTkpmAwlYUjQn0PbPUn5JEUH0RZj5lLWIOuFKy.jpg', NULL, NULL, NULL, 148, '2023-04-05 11:36:50', '2023-04-05 11:36:50'),
(220, 'images/guides-touristique/xYDOVPwafGdS3e0fxFrGAbvRIwJnQ8W8pW5ZtmZh.jpg', NULL, NULL, NULL, 147, '2023-04-05 11:46:39', '2023-04-05 11:46:39'),
(221, 'images/guides-touristique/ACJZJ5hJpOcvljYxuoXX1WGDegVAa5VDuJess5mS.jpg', NULL, NULL, NULL, 147, '2023-04-05 12:57:56', '2023-04-05 12:57:56'),
(222, 'images/guides-touristique/jUVZXtdHWUaRZ0WwPT6uDoUz4DLSgQOEjbb1AWxD.jpg', NULL, NULL, NULL, 145, '2023-04-05 13:03:45', '2023-04-05 13:03:45'),
(223, 'images/guides-touristique/zzcvzM6vZY3Ia83wXZd8FqkJqgxBuSSyfQVBTUCH.jpg', NULL, NULL, NULL, 147, '2023-04-05 13:07:13', '2023-04-05 13:07:13'),
(225, 'images/guides-touristique/DTbzPePZHLNGlPJoXO7FegNbRPbvXjXgFu6Z5XuG.jpg', NULL, NULL, NULL, 147, '2023-04-06 12:31:37', '2023-04-06 12:31:37'),
(226, 'images/guides-touristique/5gknfGAOyxJCvUdO1988AoSBHUpmf5sk2QJuBVy4.jpg', NULL, NULL, NULL, 149, '2023-04-07 09:26:00', '2023-04-07 09:26:00'),
(227, 'images/guides-touristique/lX9DPIYvXCypdZoPPKoqGuXBVid5oChatvOgm8Y5.jpg', NULL, NULL, NULL, 149, '2023-04-07 09:26:00', '2023-04-07 09:26:00'),
(229, 'images/guides-touristique/25g0LPN5hDYBJelIz4TPgsToJgQ0mvyQVHWarKit.jpg', NULL, NULL, NULL, 149, '2023-04-07 09:29:38', '2023-04-07 09:29:38'),
(230, 'images/lieux/8TBB3ep7qXPWzxuymAFam5221IHakHouFH4Clzmr.jpg', NULL, NULL, NULL, 152, '2023-04-10 08:56:25', '2023-04-10 08:56:25'),
(231, 'images/guides-touristique/JxL7rEbDjD7ueXbf8WYYnCDQ7U8iY5HvWHc4woSI.jpg', NULL, NULL, NULL, 152, '2023-04-10 08:57:46', '2023-04-10 08:57:46'),
(232, 'images/lieux/vSxcTpI9L9MO63LAtuxJE6YJfnQWRHeddi7l02tQ.jpg', NULL, NULL, NULL, 153, '2023-04-11 10:32:25', '2023-04-11 10:32:25'),
(233, 'images/guides-touristique/kACLRlQgkTD1IFCCotJobgxrxpuTnX0MRVquaD5j.jpg', NULL, NULL, NULL, 153, '2023-04-11 10:37:23', '2023-04-11 10:37:23'),
(234, 'images/guides-touristique/2YyQaiuZLTG2Zm9ofUrghkpF4YvaPwj3TulMe4N4.jpg', NULL, NULL, NULL, 153, '2023-04-11 10:37:48', '2023-04-11 10:37:48'),
(242, 'images/lieux/Nc28sl0segwu3evQBNIJ4lbzs7i0CLQzOACZoH9r.jpg', NULL, NULL, NULL, 161, '2023-05-25 14:47:33', '2023-05-25 14:47:33'),
(244, 'images/lieux/DG1OsU2m71ZnD6Yke0ZkULN2I6HdRlKkVoBAxRKF.jpg', NULL, NULL, NULL, 162, '2023-05-26 09:02:54', '2023-05-26 09:02:54'),
(245, 'images/guides-touristique/I9gB03AgIQvy93l3kvlPSR2bVCAwr9dccva1S8O8.jpg', NULL, NULL, NULL, 160, '2023-05-26 12:27:23', '2023-05-26 12:27:23'),
(246, 'images/guides-touristique/gwk1tkx8fFvjTod3BZW19O4x8AQJNeD2bnb91rlT.jpg', NULL, NULL, NULL, 160, '2023-05-26 12:27:47', '2023-05-26 12:27:47'),
(247, 'images/guides-touristique/dZtje6UIZW90sWh6igdCvtV3rEdC1SyyfXWKh86u.jpg', NULL, NULL, NULL, 160, '2023-05-26 13:04:35', '2023-05-26 13:04:35'),
(248, 'images/guides-touristique/C7okNE4hgzfLT9LOFGyklbrM6JJfB7KWvFw7Mf1P.jpg', NULL, NULL, NULL, 160, '2023-05-26 13:05:17', '2023-05-26 13:05:17'),
(249, 'images/lieux/6tpfi9Lk6B2TvK9iTy1ozyyGPraxknhOHrG80lvI.jpg', NULL, NULL, NULL, 163, '2023-06-14 15:46:28', '2023-06-14 15:46:28'),
(250, 'images/lieux/BGzctEp1e17J4HLSCtbfCRM9Fn1P92x7dhn3ahMS.jpg', NULL, NULL, NULL, 163, '2023-06-14 15:46:28', '2023-06-14 15:46:28'),
(251, 'images/lieux/OBhT7LdDjxC6mTGArqoiBIDHcpnjmvToV2LevJnA.jpg', NULL, NULL, NULL, 163, '2023-06-14 15:46:28', '2023-06-14 15:46:28'),
(252, 'images/lieux/e6Mx4En9FVvUPksFrqWIPcBOMSLFaztmpwbR0hTu.jpg', NULL, NULL, NULL, 164, '2023-06-22 10:50:48', '2023-06-22 10:50:48'),
(253, 'images/lieux/z5bzFbcHQwi4FmAh0h7FZxCFrC6LF9DC7X46hNaw.jpg', NULL, NULL, NULL, 164, '2023-06-22 10:50:48', '2023-06-22 10:50:48'),
(254, 'images/lieux/xi8IH5zCQczK2c16417tuwbtXAvGH51IEVPBErOa.jpg', NULL, NULL, NULL, 164, '2023-06-22 10:50:48', '2023-06-22 10:50:48'),
(255, 'images/lieux/0u3asJTGobZhHFzz76gRBrQzRQGBQb68Mpqb1wo4.jpg', NULL, NULL, NULL, 164, '2023-06-22 10:50:48', '2023-06-22 10:50:48'),
(256, 'images/guides-touristique/EKvf81fuvJpS5mpkDpQBZcwDWD3lwowqx1j2fmOs.jpg', NULL, 5, NULL, NULL, '2023-06-23 08:55:29', '2023-06-23 08:55:29'),
(257, 'images/guides-touristique/pOPlJOLDgoRRztzz95S8YSucIX9MeVd2TE6LhaLS.jpg', NULL, 5, NULL, NULL, '2023-06-23 08:55:29', '2023-06-23 08:55:29'),
(258, 'images/guides-touristique/Xir9rseBuAL3LHoM5O881gSMrOpiKyWV8lzVZpSo.jpg', NULL, 5, NULL, NULL, '2023-06-23 08:55:29', '2023-06-23 08:55:29'),
(259, 'images/guides-touristique/8nDOnjPHQQDwCRa4D0kygUKzvDrI2pT6XTYhO1YC.jpg', NULL, 5, NULL, NULL, '2023-06-23 08:55:29', '2023-06-23 08:55:29'),
(260, 'images/guides-touristique/sx1c9I74u4sBRe8BM16SXWzT442EAGSgICELM9Hu.jpg', NULL, 7, NULL, NULL, '2023-06-23 15:09:28', '2023-06-23 15:09:28'),
(261, 'images/guides-touristique/W9RumBSqpWtiwtSbeCN4A6pMe2fIKLuQ5gPLNOFg.jpg', NULL, 8, NULL, NULL, '2023-06-23 19:52:00', '2023-06-23 19:52:00'),
(262, 'images/guides-touristique/S46hFPbzsAFSmDpCnLCNKlTAAIKpElzmUKn21Rw2.jpg', NULL, 9, NULL, NULL, '2023-06-26 08:06:16', '2023-06-26 08:06:16'),
(263, 'images/guides-touristique/zNEVImF90VHai7gBRYnD0XBLnwHLQyfdPJrhrEBi.jpg', NULL, 9, NULL, NULL, '2023-06-26 08:06:16', '2023-06-26 08:06:16'),
(264, 'images/guides-touristique/oFLeIDAHocRNIad5yPLvl14bFcwHFxf76mfPh1Ea.jpg', NULL, 9, NULL, NULL, '2023-06-26 08:06:16', '2023-06-26 08:06:16'),
(265, 'images/guides-touristique/aHI2JCfNPt1eQHU5fqpbvL1A97ogz8ppgqDT2zlE.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(266, 'images/guides-touristique/ZMhfq7E2inIBGJMRC4dfAzSu1AwSgO2fXBt2yj0i.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(267, 'images/guides-touristique/XbqiTjxOvb1DtNLLGEF5h1Jf3QKbSccaOnoDNfAo.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(268, 'images/guides-touristique/bf4tiKZyWXww3TVEcbZfh6XVw8q8NI8dLsKFxlt3.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(269, 'images/guides-touristique/e1kLPaKvIWznIObKueaxhVhaRmP3LCr3T8LyFinJ.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(270, 'images/guides-touristique/PJcNVusvuBAgWZGmlL5jDsq6EXeoBj0wEB6learJ.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(271, 'images/guides-touristique/8bjLvzanFjdtbmYby3fbxyOypEP4QxeKnhlvz63o.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(272, 'images/guides-touristique/PjvjyjDk21spb8iex0oh6urDIwnsJ7bDCfA9Zaz5.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(273, 'images/guides-touristique/A5d1myfRN9hhyW1eoy9PoyBGiHAouTJk3X8Vsjzk.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(274, 'images/guides-touristique/4skIr9ebMVSgQnJJ9Yy32C93rg13euUdwuGGHr3D.jpg', NULL, 10, NULL, NULL, '2023-06-26 10:06:40', '2023-06-26 10:06:40'),
(275, 'images/lieux/gfyzJwh3eZDURamNtMTnQzz3INnfhuSPHNUkpna9.jpg', NULL, NULL, NULL, 165, '2023-07-05 19:32:34', '2023-07-05 19:32:34'),
(276, 'images/guides-touristique/NS6sJ0SkLjkUKR0JdrJNygHTFsl0rAJ4khpab5Ze.jpg', NULL, NULL, NULL, 165, '2023-07-05 19:39:33', '2023-07-05 19:39:33'),
(278, 'images/guides-touristique/p2svJBWR0Mmg2PAXY8vAZaatoX2Jrshhn3W4nfUB.jpg', NULL, NULL, NULL, 165, '2023-07-05 19:44:55', '2023-07-05 19:44:55'),
(280, 'images/guides-touristique/pjjHqrXIirtvdxiO1uZakUGQhqiNbof60N66bO5r.jpg', NULL, NULL, NULL, 165, '2023-07-05 19:52:17', '2023-07-05 19:52:17'),
(281, 'images/guides-touristique/B6MNl3MFYb0EyCTJjwcBrNz2lpcqA6oCbDi2VTCY.jpg', NULL, NULL, 3, NULL, '2023-07-10 10:45:24', '2023-07-10 10:45:24'),
(282, 'images/guides-touristique/zDdOzZhXHwYSqtjAkeVa8TmavlNhDrQtuOLeQpi2.jpg', NULL, NULL, 4, NULL, '2023-07-10 13:05:08', '2023-07-10 13:05:08'),
(283, 'images/guides-touristique/V5G9MrupLeM2K5UNLHHkWlMtRQx0KDlHMESzwYXd.jpg', NULL, NULL, 9, NULL, '2023-07-11 07:53:49', '2023-07-11 07:53:49'),
(284, 'images/guides-touristique/6szgQKfO8vJAjxg1UCqtX9jfRMbBtYqbTpefPVAO.jpg', NULL, NULL, 10, NULL, '2023-07-11 08:10:42', '2023-07-11 08:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `actualites`
--

CREATE TABLE `actualites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titre` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actualites`
--

INSERT INTO `actualites` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(38, 130, NULL, 'Saint Laurent choisit Marrakech pour son prochain défilé', 'saint-laurent-choisit-marrakech-pour-son-prochain-defile', 'La célèbre maison de luxe française Yves Saint Laurent a choisi Marrakech pour sa prochaine collection masculine.\r\n\r\nMarrakech a toujours été une source d’inspiration pour le célèbre couturier qui avait trouvé dans les couleurs et le styles des habits locaux matière à nourrir sa créativité.\r\n\r\nMarrakech abrite d’ailleurs depuis quelques années un musée dédié à Yves Saint Laurent, situé à deux pas du Jardin Majorelle.\r\n\r\nLe défilé se tiendra le 15 juillet prochain, mais le lieu est encore tenu secret et ne sera dévoilé que peu de temps avant l’événement.\r\n\r\nLe 360, Le 03/06/2022.', 'images/actualites/iflRpxC6T83fKHP6LWxLwVaewjcNoTukAPeZjn2P.jpg', NULL, NULL, NULL, '2022-06-09 12:46:14', '2022-06-09 12:46:14'),
(39, 128, NULL, 'La RAM renforce son programme de vols', 'la-ram-renforce-son-programme-de-vols', 'Après la réouverture des frontières et la fin des restrictions au Maroc, l’opération Marhaba 2022 a officiellement débuté le dimanche 5 juin. \r\n\r\nDans le cadre de cette opération, Royal Air Maroc (RAM) a annoncé le renforcement de son programme de vols.\r\n\r\nLe Directeur général de la RAM, Hamid Addou, a fait savoir que la compagnie nationale propose 6 millions de sièges sur 80 liaisons aériennes à travers les quatre continents pour la saison estivale.\r\n\r\nUn ensemble d’offres et de facilités a été également mis en place portant sur un produit standard et durable avec un prix très convenable aux familles résidentes à l’étranger, permettant une réduction de 20% du prix global.\r\n\r\nL’opinion, le 11/06/2022.', 'images/actualites/cQwSSuPSRZEeG5IWYJOfU0zgFDW9yT3bRY2sfe40.jpg', NULL, NULL, NULL, '2022-06-13 10:44:19', '2022-06-13 10:44:19'),
(40, 127, NULL, 'Marrakech, classée 7ème meilleure ville au monde !', 'marrakech-classee-7eme-meilleure-ville-au-monde', 'Le magazine britannique Time Out, connu pour ses classements annuels des meilleures villes au monde, a classé Marrakech comme la 7ème meilleure ville au monde en 2022.\r\n\r\nFestivals enflammés, ouvertures de boutiques branchées, expositions inédites, nouveaux looks pour les établissements hôteliers...Marrakech a pu sortir de la pandémie avec un nouveau souffle.\r\n\r\nConnue pour son hospitalité et son multiculturalisme, la ville ocre a également obtenu le plus haut score en ce qui concerne l\'aisance à faire connaissance avec son voisinage. \r\n70 % des personnes interrogées ont déclaré qu’il y est facile de se faire de nouveaux amis à Marrakech !\r\n\r\n2M, le 14/07/2022.', 'images/actualites/D5JTARZR0ZKs1SU9zMe3E4t22GgOGo12Ulycl9zS.jpg', NULL, NULL, NULL, '2022-07-14 12:11:24', '2022-07-14 12:15:23'),
(44, NULL, NULL, 'Lancement du premier Téléphérique au Maroc !', 'lancement-du-premier-telepherique-au-maroc', 'Le Maroc possède désormais sa 1ère ligne téléphérique, un projet qui renforcera sans doute l’attractivité touristique de la capitale du Souss. \r\n\r\nSur un trajet de six minutes, reliant le pont Tildi à la Kasbah d’Agadir Oufella sur une distance de 1 700 mètres, le téléphérique livrera des vues panoramiques sur la baie d’Agadir, notamment sur l’océan atlantique. \r\n\r\nCette ligne est dotée de 30 cabines, dont 4 VIP et le prix du ticket aller-retour est fixé à 80 dhs.\r\n\r\nUne seconde ligne sera fonctionnelle en 2024.\r\n\r\nInfomédiaire, le 18/07/2022.', 'images/guides-touristique/W2aqJ05EP0J3WfviXqnJPfSPKiLXDtc9g0kg6irY.jpg', NULL, NULL, NULL, '2022-07-20 13:47:45', '2022-07-20 13:47:45'),
(45, NULL, NULL, 'La Mamounia  élu Meilleur Hôtel d’Afrique du Nord', 'la-mamounia-elu-meilleur-hotel-dafrique-du-nord', 'La Mamounia vient d’être élu Meilleur Hôtel d’Afrique du Nord suite aux votes des lecteurs du prestigieux magazine Conde Nast Traveler design.\r\n\r\nLa Mamounia a connu une magnifique rénovation en 2020 et développe des partenariats en restauration en ligne avec la recherche constante de l’excellence. \r\n\r\nCe nouvel Award vient récompenser également l’engament et l’implication des 650 personnes qui travaillent pour ce fleuron de l’hôtellerie.', 'images/guides-touristique/3xmlcoADdyiEww1sDyyU27ZQ7WnpAv7C1QKWf0AS.jpg', NULL, NULL, NULL, '2022-10-04 15:04:36', '2022-10-04 15:04:36'),
(52, NULL, NULL, 'Marriott Hotel : Un nouvel hôtel luxueux dans la capitale économique.', 'marriott-hotel-un-nouvel-hotel-luxueux-dans-la-capitale-economique', 'Marriott Hotels & Resorts, la chaîne  hôtelière internationale haut de gamme, vient d’ouvrir sa troisième unité au Maroc à la place de Sheraton. \r\n\r\nSitué au centre de la ville, et à environ 40 minutes de l\'aéroport international Mohammed V, l’hôtel est à proximité de toutes les commodités, notamment la gare ferroviaire Casa Port, l’Ancienne Medina, les restaurants, le tramway…\r\n\r\nCasablanca Marriott Hôtel vous propose plusieurs prestations en plus de l’hébergement et la restauration, tel que la possibilité d\'organiser de différents événements: mariages, fêtes,  réunions, séminaires …', 'images/guides-touristique/Dom31q7jwPwcFQDyywlA47ce3WJ9CXfGURkkKyuO.jpg', 'Marriott Hotel : Un nouvel hôtel luxueux dans la capitale économique.', 'Marriott Hotel, hôtel, hôtel luxueux à Casablanca, hôtel luxueux au Maroc, hôtel à Casablanca, hôtel au Maroc, hôtel haut de gamme, Hôtel au centre de Casablanca, hôtel 5 étoiles à Casablanca, hôtel 5 étoiles au Maroc,', 'Marriott Hotels & Resorts, la chaîne  hôtelière internationale haut de gamme, vient d’ouvrir sa troisième unité au Maroc à la place de Sheraton.', '2022-11-01 09:45:11', '2022-11-01 09:45:11'),
(53, NULL, NULL, 'L\'exploit des Lions de l\'Atlas booste le tourisme marocain', 'lexploit-des-lions-de-latlas-booste-le-tourisme-marocain', 'Le ministre délégué auprès du chef du gouvernement chargé des Relations avec le Parlement, Mustapha Baïtas, a confirmé, ce mercredi 21 décembre, que grâce à la performance exceptionnelle de la sélection marocaine au Mondial Qatar 2022, le Maroc est devenu de plus en plus recherché dans les moteurs de recherche et sur les plateformes des réseaux sociaux.\r\n\r\nEn effet, les efforts de promotion du Maroc ne ciblaient pas assez les pays comme les États-Unis, les pays de l’Amérique latine et certains pays asiatiques, mais l’exploit de l\'équipe nationale rend opportun un déploiement promotionnel vers ces destinations.\r\n\r\nMustapha Baïtas a également souligné qu’une nouvelle politique promotionnelle sera mise en place, avec comme objectif de pérenniser ce retour promotionnel des Lions de l’Atlas et attirer un grand nombre de touristes vers la destination Maroc.', 'images/guides-touristique/2co64tP3gkYXjP77Lf761JtE6SahCCWd0F1KyBqE.png', 'exploit-des-lions-de-l-atlas-booste-le-tourisme-marocain', 'tourisme,maroc,voyage,monde', 'lions,atlas,tourisme,marocain', '2022-12-23 08:01:49', '2022-12-23 08:01:49'),
(54, NULL, NULL, 'Le Maroc classé parmi les meilleures destinations touristiques en 2023 selon le Washington Post', 'le-maroc-classe-parmi-les-meilleures-destinations-touristiques-en-2023-selon-le-washington-post', '“Avant même que le pays, situé en Afrique du Nord, n\'attire l\'attention du monde entier lors de la Coupe du monde, le Maroc émergeait déjà comme une destination très prisée pour les voyages”, a écrit le  Washington Post.\r\n\r\nLe PDG de l’agence de voyage Intrepid Travel, James Thornton a précisé : \"nous nous attendons à ce que le Maroc continue d\'être incroyablement populaire en 2023, compte tenu de l\'augmentation des vols vers cette destination et de la possibilité de sortir et de vivre de belles expériences en une semaine, 10 jours ou deux semaines\".\r\n\r\nDe même, Liz Boudreau, vice-présidente de l’agence de voyage Modern Adventure a relevé une hausse de 53% des réservations de 2023 par rapport à 2022.', 'images/guides-touristique/Ym1pQwsJYxUMcRcoqeBYbGy2Uo4j4enCHPvsZGpd.jpg', 'Le Maroc classé parmi les meilleures destinations touristiques', 'maroc,tourisme2,voyage', 'Le Maroc classé parmi les meilleures destinations touristiques', '2023-01-04 14:52:13', '2023-01-06 10:19:41'),
(58, NULL, NULL, 'Le musée national de la parure ouvre ses portes à Rabat', 'le-musee-national-de-la-parure-ouvre-ses-portes-a-rabat', 'Le musée national de la parure Oudayas à rabat, a ouvert ses portes officiellement au public le lundi 9 janvier.\r\n\r\nLes visiteurs peuvent désormais découvrir des composantes essentielles du patrimoine marocain qui remontent à 150 mille ans.\r\n\r\nLe musée, qui présente plus de 800 bijoux, détient différentes salles présentant des œuvres à caractère culturel, ethnographique et esthétique. \r\n\r\nLa première salle est dédiée à l’évolution historique de la parure et à la chaîne de fabrication, tandis que la deuxième met en avant l’histoire du costume traditionnel marocain. La parure masculine et les harnachements ont également droit à une salle spécifique, en plus d’une salle qui abrite une somptueuse collection de bijoux amazighs, issue de la collection personnelle de Sa Majesté le Roi Mohammed VI.', 'images/actualites/c1Kjmc61qPWIyPhwN6sCBGAAnyfRnf5d5vZHdL8h.png', 'rabat-le-musee-national-de-la-parure', 'rabat,musee,tradition,visite', 'Le musée national de la parure Oudayas a ouvert ses portes officiellement au public le lundi 9 janvier.', '2023-01-13 14:25:25', '2023-01-13 14:27:13'),
(59, NULL, NULL, 'Le Maroc reçoit le Prix du « Meilleur pays pittoresque du monde »', 'le-maroc-recoit-le-prix-du-meilleur-pays-pittoresque-du-monde', 'Lors d\'un événement organisé par le magazine de voyage indien \"Travel\" à New Delhi, le Royaume du Maroc a remporté le prix du \"Meilleur pays pittoresque du monde\". Le magazine est spécialisé dans le tourisme et le voyage et sert de pont entre les représentations diplomatiques, les professionnels du secteur du tourisme et les voyageurs. \r\n\r\nL\'ambassade du Maroc à New Delhi a profité de l\'occasion pour mettre en avant les atouts et les célèbres attractions touristiques du pays, ainsi que la riche culture et les paysages époustouflants qui caractérisent les villes et cités marocaines. \r\n\r\nL\'événement a également permis aux opérateurs touristiques de découvrir l\'offre authentique de la destination Maroc et de bénéficier d\'informations sur les avantages en matière d\'offre, d\'hébergement et d\'activités touristiques.\r\n\r\nLe 17/02/2023.', 'images/actualites/V7PpAgMbpWmF062Yexm16iKxPcY4nRjFY6VFOwou.jpg', 'maroc-consacre-meilleur-pays-pittoresque-du-monde', 'activités touristiques maroc, hébergement maroc, lieux à visiter maroc, villes touristiques au maroc', 'Lors d\'un événement organisé par le magazine de voyage indien \"Travel\" à New Delhi, le Royaume du Maroc a remporté le prix du \"Meilleur pays pittoresque du monde\".', '2023-02-21 12:33:27', '2023-02-21 12:33:27'),
(60, NULL, NULL, '4 millions de touristes au Maroc à fin Avril 2023', '4-millions-de-touristes-au-maroc-a-fin-avril-2023', 'Selon la ministre du Tourisme, de l’Artisanat et de l’Économie Sociale et Solidaire, Fatim-Zahra Ammor.\r\n\r\nQuatre millions de touristes ont visité le Maroc au cours des quatre premiers mois de l\'année 2023, en hausse de 13% par rapport à 2019.  \r\n\r\n« Notre pays a pris les bonnes décisions au bon moment. Le secteur a été érigé en priorité nationale et l’ensemble des actions mises en œuvre ont permis non seulement de renforcer la résilience du secteur pendant la crise mais également d’accélérer la reprise, malgré un contexte économique international difficile », relève-t-on de la ministre du tourisme Fatim-Zahra Ammor.\r\n\r\nEt de noter la ville de Marrakech et Agadir sont en tête des destinations préférables des touristes Européens, qui de leur tour font 70% de la totalité des touristes.', 'images/actualites/9vBXGosPXl5Sf5RoejHNzFMnZraE97XqZpUsYULS.jpg', 'Le Maroc a marqué une hausse très remarquable au niveau du tourisme par rapport aux deux dernières années malgré les crises mondiales et sanitaires', 'touristes,maroc,tourisme,crise,hôtel,france,voyage,', 'La ministère du tourisme annonce de bonnes nouvelles concernant le tourisme au Maroc.', '2023-05-23 10:54:10', '2023-05-24 15:14:34'),
(61, NULL, NULL, 'Le groupe Selina ouvre un hôtel à Dakhla fin avril', 'le-groupe-selina-ouvre-un-hotel-a-dakhla-fin-avril', 'L\'établissement qui ouvrira ses portes à Dakhla est le deuxième du groupe Selina au Maroc après le Nomad Camp Hotel à l\'Oasis de Bagafi, au sud de Marrakech.\r\nL’hôtel est localisé entre l\'océan Atlantique et le désert, dans une région réputée pour le surf.\r\nLe groupe Selina a été fondé en 2014 par deux hommes d\'affaires israéliens et compte actuellement plus de 120 unités hôtelières dans le monde. \r\n\r\nVous serez en rendez-vous en plus de leur accueil chaleureux une piscine extérieure, un jardin, un salon commun et un restaurant. Il propose une cuisine commune, un bureau d\'excursions et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Vous bénéficierez gratuitement d\'un parking privé et d\'un service de navette aéroport.', 'images/actualites/KacUm730FaeUYSf9nr2BRQiOxhGTy75sr3sTGc7X.jpg', 'La ville de Dakhla accueille un nouveau hôtel du groupe Selina', 'hôtel,dakhla,été,tourisme,touristes,selina,maroc,booking,desert,surf', 'Un nouvelle entité hôtelière du groupe Selina ouvre ses portes à Dakhla', '2023-05-23 12:14:31', '2023-05-23 12:15:57'),
(62, NULL, NULL, 'Robert de Niro à Marrakech lance Nobu', 'robert-de-niro-a-marrakech-lance-nobu', 'Robert De Niro lance son premier hôtel Nobu à Marrakech, une ville qui l’a séduit. \r\nLa star Hollywoodienne de 79 ans considère que le Maroc est un pays d’accueil et de cinéma mondial. « Plusieurs de mes amis ont tourné leurs films au Maroc. Un grand pays que j’ai découvert au fil des années et que j’aimerais connaître encore plus », une déclaration qui remonte à l’année 2018.\r\nConcernant justement l’ouverture du Nobu Hotel Marrakech, qui associe le chef international japonais Nobu Matsuhisa et le réalisateur américain Meir Tepper, De Niro a fait part de sa fierté d’inaugurer le premier hôtel de la marque au Maroc et en Afrique. De forme circulaire, NOBU hôtel de Marrakech offre une vue splendide sur El Koutoubia et les montagnes de l’Atlas. L’architecture de l’hôtel combine l’identité marocaine et celle du Japon. Le style marocain est très présent dans les salons de l’hôtel avec la couleur ocre typique de Marrakech.', 'images/actualites/E9TNm7Y2jT5xEhWDCE8mVfoEiXaPE2g93ZdOFPd2.jpg', 'Robert De Niro lance un hôtel à Marrakech', 'marrakech,hôtel,Robert De Niro,tourisme,touriste,maroc,', 'Nobu un nouvel hôtel lancé par Robert De Niro à Marrakech.', '2023-06-01 10:22:15', '2023-06-01 10:22:15'),
(63, NULL, NULL, 'Le Musée de l’art culinaire de Marrakech ouvert au grand public', 'le-musee-de-lart-culinaire-de-marrakech-ouvert-au-grand-public', 'Le musée de l\'art culinaire marocain de Marrakech  ouvert ses portes aux visiteurs depuis Mai dernier, pour faire découvrir aux touristes notamment, l\'histoire et les secrets de la gastronomie marocaine.\r\nle Musée de l’art culinaire marocain est situé  dans l’ancienne médina de la ville de Marrakech dans le quartier du Riad Zitoun, à proximité du Palais de la Bahia.\r\nLe Musée d’art culinaire de Marrakech date du 18ème  siècle . Il a été rénové entre 2017 et 2019.\r\nPour plus d’informations : https://www.moroccancam.com/', 'images/actualites/ghonDcaPQkWy3h4hnAKVMU1TS4IyRGROSNvgEdPy.jpg', 'Musée d\'Art culinaire de Marrakech', 'Marrakech,gastronomie,Maroc,cuisine,musée,ancienne medina,', 'Réouverture du musée culinaire de Marrakech', '2023-06-12 09:48:47', '2023-06-12 09:55:50'),
(64, NULL, NULL, 'Le musée d’Azilal ouvre ses portes', 'le-musee-dazilal-ouvre-ses-portes', 'Le musée d\'Azilal, situé au sein du Géoparc du M\'Goun, a ouvert ses portes au public en ce début d’été pour accueillir les touristes nationaux et étrangers.\r\nLe musée expose l\'histoire géologique du territoire à travers différentes périodes. Les visiteurs voyageront à travers le temps dans un monde fascinant de faune et de flore. \r\nD’ailleurs le géoparc de Mgun est appelé à stimuler le développement du tourisme, notamment du géo-tourisme. Il se veut aussi éducatif et vise à fournir des programmes d\'éducation scientifique et environnementale.', 'images/actualites/BqO8lDQy6V3JFPZJfr58IMdOoHK4ek43AxsQrIRM.jpg', 'Le musée d\'Azilal accueille les visiteurs', 'Azilal,musée,géoparc,Mgoun,dinosaures,environnement,ouverture', 'Le musée d\'Azilal, situé au sein du Géoparc du M\'Goun, a ouvert ses portes au public en ce début d’été pour accueillir les touristes nationaux et étrangers.', '2023-06-22 09:38:51', '2023-06-22 09:38:51'),
(65, NULL, NULL, 'Bahlil: Des grottes pour loger des touristes', 'des-grottes-pour-loger-des-touristes', 'Bhalil, est un village berbère dont le nom signifie le « charme de la nuit », situé à seulement cinq kilomètres de Sefrou et est renommé pour ses habitations troglodytiques. Près de 600 grottes, servant jadis d’abris pour les combattants contre l’occupant forment logis pour les villageois et dont certaines ont été transformées en maisons d\'hôtes pour accueillir les touristes.\r\nCes grottes, font partie du patrimoine culturel et architectural de la localité de Bhalil. Elles sont à multiples usages habitation donc, dépôt des récoltes, écuries pour les bêtes. Les grottes d\'habitation sont décorées d\'artefacts locaux rares, rendant ces espaces encore plus attrayants. L’atmosphère y est paisible et authentique.', 'images/actualites/qmVyjxnYf9Cscy0s2aRo7Aw0H0AGzIYsSdQ74MAj.jpg', 'Bahlil: Des grottes pour loger des touristes', 'Bahlil,sefrou,troglodytiques,touristes,maroc,voyages', 'Près de 600 grottes, servant jadis d’abris pour les combattants contre l’occupant forment logis pour les villageois et dont certaines ont été transformées en maisons d\'hôtes pour accueillir les touristes.', '2023-07-06 14:49:34', '2023-07-06 15:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_menu`
--

CREATE TABLE `categorie_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie_menu`
--

INSERT INTO `categorie_menu` (`id`, `nom`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Entrée', 'images/resteumenu/boissons.png', NULL, NULL),
(2, 'Plats', 'images/resteumenu/plats.png', NULL, NULL),
(3, 'Dessert', 'images/resteumenu/dessert.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chambres`
--

CREATE TABLE `chambres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `nbr_personnes` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_type_chambre` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chambres`
--

INSERT INTO `chambres` (`id`, `options`, `prix`, `nbr_personnes`, `type`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_type_chambre`, `created_at`, `updated_at`) VALUES
(7, 'Demi-pension', 1250, 1, 'Chambre individuelle', 2, NULL, NULL, 1, NULL, '2022-07-25 13:46:14'),
(8, 'Demi-pension /pension complete', 1500, 2, 'Chambre double', 2, NULL, NULL, 2, NULL, '2022-07-25 13:46:19'),
(9, 'Demi-pension /pension complete', 1800, 3, 'Suite', 2, NULL, NULL, 3, NULL, '2022-07-25 13:46:23'),
(10, 'Demi-pension', 1300, 1, 'Chambre individuelle', 3, NULL, NULL, 1, NULL, '2022-07-25 13:43:20'),
(11, 'Chambre double', 1500, 2, 'Chambre double', 3, NULL, NULL, 2, NULL, '2022-07-25 13:43:29'),
(12, 'pension complete', 2700, 3, 'Suite', 3, NULL, NULL, 3, NULL, '2022-07-25 13:44:36'),
(13, 'Demi-pension /pension complete', 900, 1, 'Chambre individuelle', 4, NULL, NULL, 1, NULL, '2022-11-14 10:30:54'),
(14, 'Demi-pension /pension complete', 950, 2, 'Chambre double', 4, NULL, NULL, 2, NULL, '2022-10-05 09:04:16'),
(16, 'avec petit-déjeuner', 325, 1, 'Chambre individuelle', NULL, NULL, 1, 1, NULL, '2022-07-25 13:54:22'),
(17, NULL, NULL, 2, NULL, NULL, NULL, 1, 2, NULL, '2022-10-04 14:35:57'),
(18, NULL, NULL, 3, NULL, NULL, NULL, 1, 3, NULL, '2022-10-04 14:34:18'),
(19, 'avec petit-déjeuner', 400, 1, 'Chambre individuelle', NULL, NULL, 2, 1, NULL, '2022-07-25 13:01:48'),
(20, 'avec petit-déjeuner', 700, 2, 'Chambre double', NULL, NULL, 2, 2, NULL, '2022-10-05 09:09:02'),
(22, 'Demi-pension', 620, 1, 'Chambre individuelle', NULL, 1, NULL, 1, NULL, '2022-07-25 13:51:08'),
(23, 'Demi-pension', 850, 2, 'Chambre double', NULL, 1, NULL, 2, NULL, '2022-07-25 13:51:33'),
(24, 'Demi-pension', 1200, 3, 'Suite', NULL, 1, NULL, 3, NULL, '2022-07-25 13:51:46'),
(25, 'Demi-pension', 500, 1, 'Chambre individuelle', NULL, 2, NULL, 1, NULL, '2022-07-25 12:56:37'),
(26, 'Demi-pension', 750, 2, 'Chambre double', NULL, 2, NULL, 2, NULL, '2022-07-25 12:56:44'),
(27, 'Demi-pension', 1050, 3, 'Suite', NULL, 2, NULL, 3, NULL, '2022-10-05 09:07:55'),
(29, 'Option 1/ Option 2', 1500, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-16 08:04:09', '2022-06-16 08:04:09'),
(30, 'Option 3', 1400, 2, NULL, NULL, NULL, NULL, NULL, '2022-06-16 08:04:09', '2022-06-16 08:04:09'),
(31, 'Option 1', 1400, 2, NULL, NULL, NULL, NULL, NULL, '2022-06-16 15:01:36', '2022-06-16 15:01:36'),
(32, 'Option 2 / Option 3', 1200, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-16 15:01:36', '2022-06-16 15:01:36'),
(33, 'Option 33', 1400, 2, NULL, NULL, NULL, NULL, NULL, '2022-06-16 15:06:23', '2022-06-16 15:06:23'),
(34, 'Option 22', 1200, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-16 15:06:23', '2022-06-16 15:06:23'),
(35, 'Option D', 400, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-17 09:06:00', '2022-06-17 09:06:00'),
(36, 'Dickerson2', 400, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-17 09:09:54', '2022-06-17 09:09:54'),
(37, 'Dickerson7', 400, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-17 09:13:13', '2022-06-17 09:13:13'),
(38, 'Dickerson 74', 400, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-17 09:16:14', '2022-06-17 09:16:14'),
(59, 'Demi-pension', 1200, NULL, NULL, NULL, NULL, NULL, 3, '2022-07-08 09:42:18', '2022-07-08 09:42:18'),
(64, 'Demi-pension /pension complete', 1200, NULL, 'Chambre individuelle', 1, NULL, NULL, 2, '2022-07-08 13:36:37', '2022-07-25 13:45:14'),
(67, 'Demi-pension /pension complete', 1200, NULL, 'Suite', 4, NULL, NULL, 3, '2022-07-08 14:08:41', '2022-10-05 09:04:31'),
(71, 'pension complete3', 14003, NULL, 'Chambre double', 1, NULL, NULL, 1, '2022-07-13 15:03:31', '2022-07-25 13:45:18'),
(72, 'Demi-pension /complete', 7000, NULL, 'Suite', 1, NULL, NULL, 3, '2022-07-13 15:04:21', '2022-07-25 13:45:21'),
(81, 'Demi-pension (déjeuner),Demi-pension (dîner)', 250, NULL, 'Chambre individuelle', NULL, NULL, NULL, NULL, '2022-10-04 09:24:30', '2022-10-04 09:24:30'),
(82, 'Pension complète,Demi-pension (déjeuner)', 100, NULL, 'Suite', NULL, NULL, NULL, NULL, '2022-10-04 09:26:49', '2022-10-04 09:26:49'),
(95, 'Eius nulla non deleniti quo corporis qui accusamus consequuntur accusamus. Suscipit molestiae dolor a minus suscipit voluptatem. Ut quia dolorem debitis a.', 392, NULL, 'Et ea non. Praesentium commodi illo corporis et libero molestiae. Quibusdam error voluptas unde officia ut quia unde id.', 33, NULL, NULL, NULL, '2022-10-21 09:26:38', '2022-10-21 09:26:38'),
(96, 'Demi-pension (déjeuner)', 500, NULL, 'Chambre individuelle', 35, NULL, NULL, NULL, '2022-10-28 08:56:18', '2022-10-28 09:02:30'),
(97, 'Tout Inclus', 3000, NULL, 'Suite', 35, NULL, NULL, NULL, '2022-10-28 08:56:36', '2022-10-28 09:02:17'),
(98, 'Pension complète', 1000, NULL, 'Chambre double', 35, NULL, NULL, NULL, '2022-10-28 09:01:28', '2022-10-28 09:02:07'),
(100, 'Demi-pension (déjeuner)', 100, NULL, 'Chambre individuelle', 38, NULL, NULL, NULL, '2022-11-14 08:00:38', '2022-11-14 08:00:38'),
(101, 'Pension complète', 200, NULL, 'Chambre double', 38, NULL, NULL, NULL, '2022-11-14 08:01:12', '2022-11-14 08:01:12'),
(102, 'Demi-pension (déjeuner)', 100, NULL, 'Chambre individuelle', 39, NULL, NULL, NULL, '2022-11-17 08:53:18', '2022-11-17 08:53:18'),
(105, 'Demi-pension (dîner)', 300, NULL, 'Chambre individuelle', 5, NULL, NULL, NULL, '2023-03-15 08:42:27', '2023-03-15 08:42:27'),
(106, 'Tout Inclus', 400, NULL, 'Chambre double', 5, NULL, NULL, NULL, '2023-03-15 08:42:50', '2023-03-15 08:42:50'),
(107, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n2 personnes', 360, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:21:53', '2023-03-16 08:21:53'),
(108, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n3 personnes', 382, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:23:41', '2023-03-16 08:23:41'),
(109, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n4 personnes', 405, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:24:09', '2023-03-16 08:24:09'),
(110, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n4 personnes', 405, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:24:09', '2023-03-16 08:24:09'),
(111, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n5 personnes', 450, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:24:30', '2023-03-16 08:24:30'),
(112, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n2 personnes', 360, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:32:11', '2023-03-16 08:32:11'),
(113, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n3 personnes', 382, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:32:31', '2023-03-16 08:32:31'),
(114, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n4 personnes', 405, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:32:50', '2023-03-16 08:32:50'),
(115, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n5 personnes', 450, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:33:04', '2023-03-16 08:33:04'),
(116, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n2 personnes', 360, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:48:07', '2023-03-16 08:48:07'),
(117, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n2 personnes', 360, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:49:34', '2023-03-16 08:49:34'),
(118, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n3 personnes', 382, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:50:00', '2023-03-16 08:50:00'),
(125, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n4 personnes', 405, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:52:29', '2023-03-16 08:53:54'),
(126, 'Appartement 2 Chambres\r\nChambre 1: 1 lit double \r\nChambre 2: 3 lits simples \r\nSalon : 3 canapés-lits\r\n5 personnes', 450, NULL, 'Suite', 3, NULL, NULL, NULL, '2023-03-16 08:59:33', '2023-03-16 08:59:33'),
(127, '• Petit-déjeuner • Non remboursable • Payez à l\'avance', 654, NULL, 'Chambre Double Supérieure - 2 lits simples - 2 personnes', NULL, NULL, 4, NULL, '2023-03-16 13:14:11', '2023-03-22 14:00:02'),
(128, '• Petit-déjeuner • Non remboursable • Payez à l\'avance', 654, NULL, 'Chambre Lits Jumeaux - Vue sur Montagne • 2 lits simples - 2 personnes', NULL, NULL, 4, NULL, '2023-03-16 13:14:52', '2023-03-22 14:00:11'),
(129, '• Petit-déjeuner • Non remboursable • Payez à l\'avance', 831, NULL, 'Chambre Triple - Vue sur Jardin •	1 lit simple  •1 lit double - 3 personnes', NULL, NULL, 4, NULL, '2023-03-16 13:15:39', '2023-03-22 14:00:15'),
(130, 'Aucun prépaiement nécessaire - Petit-déjeuner inclus', 440, NULL, 'Chambre double Standard 1 Lit double – 2 personnes', 12, NULL, NULL, NULL, '2023-03-16 14:34:36', '2023-03-22 14:23:28'),
(131, 'Aucun prépaiement nécessaire Petit-déjeuner inclus', 440, NULL, 'Chambre Standard avec lits jumeaux  2 lits 1 place - 2 personnes', 12, NULL, NULL, NULL, '2023-03-16 14:34:56', '2023-03-22 14:23:45'),
(132, 'Aucun prépaiement nécessaire Petit-déjeuner inclus', 440, NULL, 'Chambre Triple Standard 1 lit double et 1 lit 1 place – 3 personnes', 12, NULL, NULL, NULL, '2023-03-16 14:35:23', '2023-03-22 14:24:17'),
(133, NULL, 250, NULL, 'Chambre individuelle', NULL, 3, NULL, NULL, '2023-03-16 17:29:52', '2023-03-16 17:29:52'),
(134, NULL, 350, NULL, 'Chambre double', NULL, 3, NULL, NULL, '2023-03-16 17:30:22', '2023-03-16 17:30:22'),
(137, NULL, 500, NULL, 'Chambre triple', NULL, 3, NULL, NULL, '2023-03-16 17:31:37', '2023-03-16 17:31:37'),
(139, NULL, 700, NULL, 'Suite', NULL, 3, NULL, NULL, '2023-03-17 16:27:07', '2023-03-17 16:27:07'),
(140, 'Petit-déjeuner compris - Réduction disponible', 652, NULL, 'Chambre double • 1 très grand lit double', 13, NULL, NULL, NULL, '2023-03-22 10:38:00', '2023-03-22 14:21:24'),
(141, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 629, NULL, 'Chambre double Supérieure - 1 lit double - 2 personnes', 14, NULL, NULL, NULL, '2023-03-22 10:56:16', '2023-03-22 14:27:41'),
(142, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 735, NULL, 'Chambre double avec balcon', 14, NULL, NULL, NULL, '2023-03-22 11:01:02', '2023-03-22 14:28:12'),
(143, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 892, NULL, 'Chambre double avec balcon - 3 adults. 1lit simple, 1 lit double', 14, NULL, NULL, NULL, '2023-03-22 11:01:24', '2023-03-22 14:29:12'),
(144, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 893, NULL, 'Suite Familiale - 2 lits double - 2 personnes', 14, NULL, NULL, NULL, '2023-03-22 11:01:56', '2023-03-22 14:30:15'),
(145, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 1050, NULL, 'Suite Familiale - 2 lits double - 3 personnes', 14, NULL, NULL, NULL, '2023-03-22 11:02:22', '2023-03-22 14:31:16'),
(146, 'Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place - Petit-déjeuner compris - Fabuleux', 1206, NULL, 'Suite Familiale - 2 lits double - 4 personnes', 14, NULL, NULL, NULL, '2023-03-22 11:02:35', '2023-03-22 14:31:09'),
(147, '2 personnes - 2 lits simples - Demi-pension (déjeuner) - non remboursable', 697, NULL, 'Chambre lits Jumeaux supérieure', 15, NULL, NULL, NULL, '2023-03-22 11:42:07', '2023-03-22 11:42:50'),
(148, '2 personnes - 2 lits simple - Demi-pension (déjeuner) - non remboursable', 774, NULL, 'Chambre Lits Jumeaux', 15, NULL, NULL, NULL, '2023-03-22 11:44:03', '2023-03-22 11:44:03'),
(149, '2 personnes - 2 lits simple - Demi-pension (déjeuner) - non remboursable', 774, NULL, 'Chambre Standard avec 2 Lits Queen-Size', 15, NULL, NULL, NULL, '2023-03-22 11:45:07', '2023-03-22 11:45:07'),
(150, '2 personnes - 2 lits simple - Demi-pension (déjeuner) - non remboursable', 774, NULL, 'Chambre Lits Jumeaux', 15, NULL, NULL, NULL, '2023-03-22 11:45:40', '2023-03-22 11:45:40'),
(151, '2 personnes - 2 lits simple - Demi-pension (déjeuner) - non remboursable', 812, NULL, 'Chambre Lits Jumeaux Deluxe', 15, NULL, NULL, NULL, '2023-03-22 11:45:59', '2023-03-22 11:45:59'),
(152, '2 personnes - Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place', 360, NULL, 'Appartement 2 Chambres. Chambre 1: 1 lit double. Chambre 2: 3 lits simples. Salon : 3 canapés-lits', NULL, NULL, 5, NULL, '2023-03-22 11:50:25', '2023-03-22 11:54:58'),
(153, '3 personnes - Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place', 382, NULL, 'Appartement 2 Chambres. Chambre 1: 1 lit double.  Chambre 2: 3 lits simples.  Salon : 3 canapés-lits', NULL, NULL, 5, NULL, '2023-03-22 11:51:52', '2023-03-22 11:55:33'),
(154, '4 personnes - Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place', 405, NULL, 'Appartement 2 Chambres. Chambre 1: 1 lit double.  Chambre 2: 3 lits simples.  Salon : 3 canapés-lits', NULL, NULL, 5, NULL, '2023-03-22 11:52:21', '2023-03-22 11:55:56'),
(155, '5 personnes - Annulation gratuite AUCUN PRÉPAIEMENT REQUIS – Payez sur place', 450, NULL, 'Appartement 2 Chambres. Chambre 1: 1 lit double.  Chambre 2: 3 lits simples.  Salon : 3 canapés-lits', NULL, NULL, 5, NULL, '2023-03-22 11:53:20', '2023-03-22 11:56:16'),
(156, '2 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 449, NULL, 'Chambre double ou lits jumeaux avec salle de bains - 1 lit double', 11, NULL, NULL, NULL, '2023-03-22 14:06:54', '2023-03-22 14:06:54'),
(157, '1 personne - petit déjeuner compris - non remboursable - payez à l\'avance', 399, NULL, 'Chambre double ou lits jumeaux avec salle de bains - 1 lit double', 11, NULL, NULL, NULL, '2023-03-22 14:07:33', '2023-03-22 14:07:33'),
(158, '2 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 449, NULL, 'Chambre lits jumeaux avec salle de bains privative - 2 lits simples- 1 lit double', 11, NULL, NULL, NULL, '2023-03-22 14:08:59', '2023-03-22 14:08:59'),
(159, '1 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 399, NULL, 'Chambre lits jumeaux avec salle de bains privative - 2 lits simples- 1 lit double', 11, NULL, NULL, NULL, '2023-03-22 14:09:20', '2023-03-22 14:09:20'),
(160, '2 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 499, NULL, 'Chambre lits jumeaux supérieure - 2 lits simples', 11, NULL, NULL, NULL, '2023-03-22 14:10:27', '2023-03-22 14:10:27'),
(161, '1 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 449, NULL, 'Chambre lits jumeaux supérieure - 2 lits simples', 11, NULL, NULL, NULL, '2023-03-22 14:10:55', '2023-03-22 14:10:55'),
(162, '3 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 648, NULL, 'Appartement 1 chambre: chambre 1: 1 lit double. salon: 3 canapés-lits', 11, NULL, NULL, NULL, '2023-03-22 14:12:44', '2023-03-22 14:12:44'),
(163, '4 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 698, NULL, 'Appartement 1 chambre: chambre 1: 1 lit double. salon: 3 canapés-lits', 11, NULL, NULL, NULL, '2023-03-22 14:13:30', '2023-03-22 14:13:30'),
(164, '5 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 748, NULL, 'Appartement 1 chambre: chambre 1: 1 lit double. salon: 3 canapés-lits', 11, NULL, NULL, NULL, '2023-03-22 14:13:59', '2023-03-22 14:13:59'),
(165, '4 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 798, NULL, 'Appartement avec balcon: chambre1: 1 lit simple et 1 lit double, chambre 2: 1 lit double, salon: 1 canapé-lit', 11, NULL, NULL, NULL, '2023-03-22 14:16:14', '2023-03-22 14:16:14'),
(166, '5 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 848, NULL, 'Appartement avec balcon: chambre1: 1 lit simple et 1 lit double, chambre 2: 1 lit double, salon: 1 canapé-lit', 11, NULL, NULL, NULL, '2023-03-22 14:16:33', '2023-03-22 14:16:33'),
(167, '6 personnes - petit déjeuner compris - non remboursable - payez à l\'avance', 898, NULL, 'Appartement avec balcon: chambre1: 1 lit simple et 1 lit double, chambre 2: 1 lit double, salon: 1 canapé-lit', 11, NULL, NULL, NULL, '2023-03-22 14:16:59', '2023-03-22 14:16:59'),
(168, 'Aucun prépaiement nécessaire Petit-déjeuner inclus', 1400, NULL, 'Suite Standard 1 lit double et 3 lits 1 place – 5 personnes', 12, NULL, NULL, NULL, '2023-03-22 14:24:36', '2023-03-22 14:24:36'),
(169, '• Petit-déjeuner compris - Exceptionnel • Partiellement remboursable • Payez à l\'avance', 552, NULL, 'Chambre lits Jumeaux économique - 2 lits simples - 2 personnes', 16, NULL, NULL, NULL, '2023-03-22 15:46:57', '2023-03-22 15:48:07'),
(170, '• Petit-déjeuner compris - Exceptionnel • Partiellement remboursable • Payez à l\'avance', 497, NULL, 'Chambre lits jumeaux économique - 2 lits simples - 1 personne', 16, NULL, NULL, NULL, '2023-03-22 15:47:49', '2023-03-22 15:47:49'),
(171, '• Petit-déjeuner compris - Exceptionnel • Partiellement remboursable • Payez à l\'avance', 652, NULL, 'Chambre lits jumeaux économique - 2 lits simples - 2 personnes', 16, NULL, NULL, NULL, '2023-03-22 15:49:37', '2023-03-22 15:49:37'),
(172, '• Petit-déjeuner compris - Exceptionnel • Partiellement remboursable • Payez à l\'avance', 663, NULL, 'Chambre lits jumeaux Standard - 2 lits simples - 2 personnes', 16, NULL, NULL, NULL, '2023-03-22 15:50:14', '2023-03-22 15:52:44'),
(173, '• Petit-déjeuner compris - Exceptionnel • Partiellement remboursable • Payez à l\'avance', 718, NULL, 'Chambre lits jumeaux Standard - vue sur le montagne - 2 lits simples- 2 personnes', 16, NULL, NULL, NULL, '2023-03-22 15:51:08', '2023-03-22 15:52:23'),
(178, NULL, 177, NULL, 'Chambre quadruple avec douche - 2 lits simples - 1 grand lit double - 1 personne', NULL, NULL, 6, NULL, '2023-03-22 16:21:35', '2023-03-28 12:46:20'),
(179, NULL, 222, NULL, 'Chambre quadruple avec douche - 2 lits simples - 1 grand lit double - 2 personne', NULL, NULL, 6, NULL, '2023-03-22 16:21:48', '2023-03-28 12:46:27'),
(180, NULL, 310, NULL, 'Chambre quadruple avec douche - 2 lits simples - 1 grand lit double - 3 personne', NULL, NULL, 6, NULL, '2023-03-22 16:22:04', '2023-03-28 12:46:32'),
(181, NULL, 388, NULL, 'Chambre quadruple avec douche - 2 lits simples - 1 grand lit double - 4 personne', NULL, NULL, 6, NULL, '2023-03-22 16:22:26', '2023-03-28 12:46:38'),
(182, 'Petit-déjeuner compris - Fabuleux • Non remboursable', 652, NULL, 'Chambre Double Standard - 1 lit simple - 1 lit double - 2 personnes', 17, NULL, NULL, NULL, '2023-03-22 16:44:26', '2023-03-22 16:44:26'),
(183, 'Petit-déjeuner compris - Fabuleux • Non remboursable', 923, NULL, 'Chambre Double Deluxe (2 adultes + 1 Enfant) - 1 lit simple - 1 très grand lit double', 17, NULL, NULL, NULL, '2023-03-22 16:45:55', '2023-03-22 16:45:55'),
(184, 'Petit-déjeuner compris - Fabuleux • Non remboursable', 1521, NULL, 'Suite avec Balcon: chambre 1: 2 lits doubles, chambre 2: 1 très grand lit double  - 2 personnes', 17, NULL, NULL, NULL, '2023-03-22 16:47:44', '2023-03-22 16:52:48'),
(185, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 419, NULL, 'Studio - 2 lits simples - 2 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:25:05', '2023-03-23 09:25:05'),
(186, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 419, NULL, 'Suite Triple Moderne - 1 lit simple - 1 très grand lit double - 2 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:28:50', '2023-03-23 09:28:50'),
(187, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 440, NULL, 'Suite Triple Moderne - 1 lit simple - 1 très grand lit double - 3 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:29:20', '2023-03-23 09:29:20'),
(188, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 455, NULL, 'Suite avec Terrasse - 1 lit simple - 1 grand lit double - 2 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:30:18', '2023-03-23 09:30:18'),
(189, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 479, NULL, 'Suite avec Terrasse - 1 lit simple - 1 grand lit double - 3 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:30:36', '2023-03-23 09:30:36'),
(190, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 455, NULL, 'Suite - vue sur montagne - 1 très grand lit double - 1 canapé lit - 2 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:31:47', '2023-03-23 09:31:47'),
(191, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 479, NULL, 'Suite - vue sur montagne - 1 très grand lit double - 1 canapé lit - 3 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:32:07', '2023-03-23 09:32:07'),
(192, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 549, NULL, 'Appartement 2 chambres: chambre 1: 4 lits simples, chambre 2: 1 lit double, salon: 3 canapés lits - 3 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:33:53', '2023-03-23 09:33:53'),
(193, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 599, NULL, 'Appartement 2 chambres: chambre 1: 4 lits simples, chambre 2: 1 lit double, salon: 3 canapés lits - 4 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:34:18', '2023-03-23 09:34:18'),
(194, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 699, NULL, 'Appartement 2 chambres: chambre 1: 4 lits simples, chambre 2: 1 lit double, salon: 3 canapés lits - 5 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:34:40', '2023-03-23 09:34:40'),
(195, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 899, NULL, 'Appartement 2 chambres: chambre 1: 4 lits simples, chambre 2: 1 lit double, salon: 3 canapés lits - 6 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:34:55', '2023-03-23 09:34:55'),
(196, 'Petit-déjeuner à MAD 33 - Exceptionnel - Payez à l\'avance - Annulation gratuite', 527, NULL, 'Appartement Quadruple 2 Chambres: chambre 1: 2 lits simples, chambre 2: 1 lit double - 4 personnes', NULL, NULL, 7, NULL, '2023-03-23 09:47:35', '2023-03-23 09:47:35'),
(197, 'Demi-pension (déjeuner)', 191, NULL, 'Standard Double Room', 18, NULL, NULL, NULL, '2023-03-23 14:26:11', '2023-03-23 14:26:11'),
(198, 'نصف إقامة / إقامة كاملة', 177, NULL, 'غرفة مزدوجة', NULL, NULL, 6, NULL, '2023-03-24 15:43:55', '2023-03-24 15:43:55'),
(201, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '2023-04-06 18:36:38', '2023-04-06 18:36:38'),
(202, 'Pension complète', 450, NULL, 'Chambre familial', NULL, NULL, 9, NULL, '2023-04-30 16:52:13', '2023-04-30 16:54:15'),
(203, 'Demi-pension (déjeuner)', 360, NULL, 'Chambre double', NULL, 4, NULL, NULL, '2023-05-09 10:40:18', '2023-05-09 10:40:18'),
(204, 'Demi-pension (déjeuner)', 360, NULL, 'Chambre individuelle', NULL, 4, NULL, NULL, '2023-05-09 10:40:29', '2023-05-09 10:40:29'),
(205, 'Demi-pension (déjeuner)', 500, NULL, 'Suite', NULL, 4, NULL, NULL, '2023-05-09 10:40:52', '2023-05-09 10:40:52'),
(206, 'Petit-déjeuner compris - Aucun prépaiement requis - Frais annulation : montant total', 530, NULL, 'Chambre Double autentique - 1 lit simple + 1 lits double - 2 personnes', NULL, NULL, 10, NULL, '2023-05-09 14:59:41', '2023-05-09 15:02:38'),
(207, 'Petit-déjeuner compris - Aucun prépaiement requis - Frais annulation : montant total', 568, NULL, 'Chambre Triple Standard - 1 lit simple + 1 lit double - 3 personnes', NULL, NULL, 10, NULL, '2023-05-09 15:02:00', '2023-05-09 15:02:55'),
(208, 'Petit-déjeuner compris - Aucun prépaiement requis - Frais annulation : montant total', 842, NULL, 'Chambre Quardruple - Vues sur Jardin - 3 lits simples + 1 lit double', NULL, NULL, 10, NULL, '2023-05-09 15:03:50', '2023-05-09 15:03:50'),
(209, NULL, 402, NULL, 'Appartement 2 Chambres - 1 lit double + 2 lits doubles + 2 salons avec   2 et 3 canapé-lit - (6 personnes)', NULL, NULL, 11, NULL, '2023-05-09 15:24:58', '2023-05-09 15:25:44'),
(210, 'Demi-pension (déjeuner)', 1190, NULL, 'Chambre double', NULL, NULL, 13, NULL, '2023-05-11 14:59:26', '2023-05-11 14:59:26'),
(211, 'Demi-pension (dîner)', 1190, NULL, 'Chambre double', NULL, NULL, 13, NULL, '2023-05-11 15:07:02', '2023-05-11 15:07:02'),
(212, 'Demi-pension (déjeuner)', 100, NULL, 'Chambre individuelle', 19, NULL, NULL, NULL, '2023-06-08 15:23:14', '2023-06-08 15:23:14'),
(224, 'Paiement à l\'avance, Non remboursable, Sans petit déjeuner', 220, NULL, 'Chambre double', 21, NULL, NULL, NULL, '2023-06-09 12:40:07', '2023-06-09 12:40:07'),
(225, 'Paiement à l\'avance, Non remboursable, Avec petit déjeuner', 320, NULL, 'Chambre double', 21, NULL, NULL, NULL, '2023-06-09 12:40:48', '2023-06-09 12:40:48'),
(226, 'Paiement à l\'avance, Non remboursable', 542, NULL, 'Chambre double de luxe', 21, NULL, NULL, NULL, '2023-06-09 12:42:12', '2023-06-09 12:42:12'),
(227, 'Paiement à l\'avance, Non remboursable', 542, NULL, 'Chambre lits jumeaux', 21, NULL, NULL, NULL, '2023-06-09 12:43:15', '2023-06-09 12:43:15'),
(228, 'Paiement à l\'avance, Non remboursable, Sans petit déjeuner', 350, NULL, 'Chambre triple', 21, NULL, NULL, NULL, '2023-06-09 12:45:06', '2023-06-09 12:45:06'),
(229, 'Paiement à l\'avance, Non remboursable, Avec petit déjeuner', 430, NULL, 'Chambre triple', 21, NULL, NULL, NULL, '2023-06-09 12:45:39', '2023-06-09 12:45:39'),
(230, 'BB + taxes', 1450, NULL, 'Sahara (avec terrasse privée) 4 Personnes', 22, NULL, NULL, NULL, '2023-06-13 14:22:29', '2023-06-13 14:22:29'),
(231, 'BB + taxes', 1150, NULL, 'Rasta chambre simple 3 personnes', 22, NULL, NULL, NULL, '2023-06-13 14:23:13', '2023-06-13 14:23:13'),
(232, 'BB + taxes', 1650, NULL, 'Berber Chambre avec balcon 5 Personnes', 22, NULL, NULL, NULL, '2023-06-13 14:24:00', '2023-06-13 14:24:00'),
(233, 'BB + taxes', 1450, NULL, 'Namaste chambre simple 4 Personnes', 22, NULL, NULL, NULL, '2023-06-13 14:24:48', '2023-06-13 14:24:48'),
(234, 'BB + taxes', 1800, NULL, 'BOHO Suite 4 personnes', 22, NULL, NULL, NULL, '2023-06-13 14:25:52', '2023-06-13 14:25:52'),
(235, 'BB + taxes', 2100, NULL, 'Surf Chambre avec terrasse privée 7 Personnes', 22, NULL, NULL, NULL, '2023-06-13 14:26:38', '2023-06-13 14:26:38'),
(236, 'BB + taxes', 1450, NULL, 'Music Chambre avec Terrasse 4 Personnes', 22, NULL, NULL, NULL, '2023-06-13 14:27:25', '2023-06-13 14:27:25'),
(238, 'petit-déjeuner compris', 430, NULL, 'Chambre double', NULL, NULL, 15, NULL, '2023-06-13 15:38:18', '2023-06-13 15:38:18'),
(239, 'petit-déjeuner compris', 400, NULL, 'Chambre lits jumeaux', NULL, NULL, 15, NULL, '2023-06-13 15:38:48', '2023-06-13 15:38:48'),
(240, 'petit-déjeuner compris', 430, NULL, 'Chambre triple', NULL, NULL, 15, NULL, '2023-06-13 15:39:19', '2023-06-13 15:39:19'),
(243, NULL, 170, NULL, 'Chambre double', 23, NULL, NULL, NULL, '2023-06-15 15:11:35', '2023-06-16 07:57:27'),
(244, NULL, 270, NULL, 'Chambre lits jumeaux', 23, NULL, NULL, NULL, '2023-06-15 15:11:54', '2023-06-16 07:57:35'),
(245, NULL, 400, NULL, 'Riad/ vue sur mer', NULL, 5, NULL, NULL, '2023-06-15 15:30:16', '2023-06-15 15:30:16'),
(246, NULL, 700, NULL, 'Riad/vue sur Medina', NULL, 5, NULL, NULL, '2023-06-15 15:30:36', '2023-06-15 15:30:36'),
(247, NULL, 3100, NULL, 'Green Suite', NULL, 9, NULL, NULL, '2023-06-21 13:12:09', '2023-06-21 13:12:09'),
(248, NULL, 2900, NULL, 'Terrace Suite', NULL, 9, NULL, NULL, '2023-06-21 13:12:42', '2023-06-21 13:12:42'),
(249, NULL, 2700, NULL, 'Orange Suite', NULL, 9, NULL, NULL, '2023-06-21 13:13:17', '2023-06-21 13:13:17'),
(250, NULL, 2700, NULL, 'Grey Suite', NULL, 9, NULL, NULL, '2023-06-21 13:14:14', '2023-06-21 13:14:14'),
(251, NULL, 2700, NULL, 'Cream Suite', NULL, 9, NULL, NULL, '2023-06-21 13:14:37', '2023-06-21 13:14:37'),
(252, NULL, 2200, NULL, 'Red Room', NULL, 9, NULL, NULL, '2023-06-21 13:15:14', '2023-06-21 13:15:14'),
(253, NULL, 2000, NULL, 'Blue Room', NULL, 9, NULL, NULL, '2023-06-21 13:15:47', '2023-06-21 13:15:47'),
(254, NULL, 2000, NULL, 'Yellow Room', NULL, 9, NULL, NULL, '2023-06-21 13:16:00', '2023-06-21 13:16:00'),
(255, NULL, 1800, NULL, 'Ghizlan\'s Room', NULL, 9, NULL, NULL, '2023-06-21 13:16:25', '2023-06-21 13:16:25'),
(256, NULL, 1500, NULL, 'Nadim\'s Room', NULL, 9, NULL, NULL, '2023-06-21 13:16:56', '2023-06-21 13:16:56'),
(257, NULL, 1200, NULL, 'The Little Brown', NULL, 9, NULL, NULL, '2023-06-21 13:17:23', '2023-06-21 13:17:23'),
(258, NULL, 1200, NULL, 'Hilal\'s Room', NULL, 9, NULL, NULL, '2023-06-21 13:18:03', '2023-06-21 13:18:03'),
(259, NULL, 1200, NULL, 'Gaetan\'s Room', NULL, 9, NULL, NULL, '2023-06-21 13:18:20', '2023-06-21 13:18:20'),
(260, NULL, NULL, NULL, 'Chambre double', NULL, NULL, 17, NULL, '2023-06-27 15:02:46', '2023-06-27 15:02:46'),
(261, NULL, NULL, NULL, 'Chambre individuelle', NULL, NULL, 17, NULL, '2023-06-27 15:03:06', '2023-06-27 15:03:06'),
(262, NULL, NULL, NULL, 'Chambre individuelle', NULL, NULL, 17, NULL, '2023-06-27 15:03:15', '2023-06-27 15:03:15'),
(263, NULL, 300, NULL, 'Chambre double', 25, NULL, NULL, NULL, '2023-07-04 14:15:47', '2023-07-04 14:15:47'),
(264, NULL, 450, NULL, 'Chambre twin', 25, NULL, NULL, NULL, '2023-07-04 14:16:16', '2023-07-04 14:16:16'),
(265, NULL, 150, NULL, 'Dortoir', 25, NULL, NULL, NULL, '2023-07-04 14:16:35', '2023-07-04 14:16:35'),
(266, 'Coach + équipements de surf (planche et combinaison)', 250, NULL, 'Surf lessons', 25, NULL, NULL, NULL, '2023-07-04 14:18:15', '2023-07-04 14:18:15'),
(267, NULL, NULL, NULL, 'Chambre double', NULL, 11, NULL, NULL, '2023-07-05 09:07:58', '2023-07-05 09:08:23'),
(268, NULL, NULL, NULL, 'Chambre double', NULL, 11, NULL, NULL, '2023-07-05 09:07:58', '2023-07-05 09:08:28'),
(269, NULL, NULL, NULL, 'Chambre double', NULL, 11, NULL, NULL, '2023-07-05 09:08:05', '2023-07-05 09:08:05'),
(270, NULL, NULL, NULL, 'Chambre double', NULL, 11, NULL, NULL, '2023-07-05 09:08:08', '2023-07-05 09:08:08'),
(271, NULL, NULL, NULL, 'Chambre double', NULL, 11, NULL, NULL, '2023-07-05 09:08:10', '2023-07-05 09:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_restaurant` int(11) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `user_id`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `id_activite`, `id_guide`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Nous avons séjourné 2 jours dans ce lieu idyllique tout était parfait l’accueil, la décoration, la propreté et des Propriétaire aux petits soins.\nEmplacement idéal pour les amoureux de la nature et de la randonnée.\nJe recommande à 200% et encore merci pour votre accueil', 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-08 15:14:40', '2022-06-08 15:14:40'),
(3, 'service sympa, prix pas trop chèr en rapprt à d\'autres restautants belle carte .bien situé dans une rue piétonne', 17, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-08 15:37:47', '2023-04-19 09:19:50'),
(8, 'Hôtel très beau et très propre. L’accueil est très chaleureux. Nous avons apprécié notre petit-déjeuner et notre dîner au sein de l’hôtel. Tout est fait pour que les clients s’y sentent bien. Les chiens sont autorisés et je trouve que c’est un énorme + !!', 17, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:51:26', '2022-06-09 12:51:26'),
(14, 'Excellent hôtel ! Les chambres sont magnifiques et le service est exceptionnel.', 31, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 08:42:57', '2022-06-10 08:42:57'),
(15, 'Staff professionnel et aux petits soins. Le petit déjeuner est varié et délicieux.  Je recommande vivement !', 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 08:45:37', '2022-06-10 08:45:37'),
(16, 'Très satisfait du service. Le petit déjeuner est délicieux et à la hauteur. Les chambre sont propres et bien équipées.', 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 08:56:08', '2022-11-10 08:53:54'),
(22, 'Service sympa, prix pas trop chèr en rapprt à d\'autres restautants de cassis belle carte .bien situé u calme dans une rue piétonne', 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 08:49:37', '2022-11-09 14:20:29'),
(26, 'cool', 3, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-07-21 08:29:41', '2022-07-21 08:29:41'),
(79, 'Nice', 8, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2022-11-11 07:56:54', '2022-11-11 07:56:54'),
(80, 'Trés bon service, je le recommande!', 239, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-05 09:43:21', '2023-01-05 09:43:21'),
(81, 'bien', 240, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-05 09:58:14', '2023-01-05 09:58:14'),
(82, 'Nice la 😍', 250, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 13:35:40', '2023-05-26 13:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `comment_partages`
--

CREATE TABLE `comment_partages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `id_partage` int(11) DEFAULT NULL,
  `id_lieux` int(11) DEFAULT NULL,
  `id_gastronomie` int(11) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_partages`
--

INSERT INTO `comment_partages` (`id`, `commentaire`, `user_id`, `id_partage`, `id_lieux`, `id_gastronomie`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(27, 'Super Lieu', 8, NULL, 66, NULL, NULL, NULL, '2022-07-01 09:04:24', '2023-01-04 16:45:22'),
(29, 'Très belle région', 7, NULL, 59, NULL, NULL, NULL, '2022-07-04 13:05:59', '2022-07-04 13:05:59'),
(34, 'je l\'ai visite et j\'ai meme assiste a sa construction  tres beau monument qui donne un vrai cachet a la ville.', 1, 25, NULL, NULL, NULL, NULL, '2022-07-08 15:07:44', '2022-07-08 15:07:44'),
(36, 'Je l\'ai visité l\'été dernier.  Un très bel endroit , je vous le recommande vivement !', 32, 3, NULL, NULL, NULL, NULL, '2022-07-18 13:14:20', '2022-07-18 13:14:20'),
(37, 'trés belle ville!', 32, 26, NULL, NULL, NULL, NULL, '2022-07-20 08:39:57', '2022-07-20 08:39:57'),
(38, 'belle place ❤️🌳🌊🍀🌷🌼🏊‍♀', 17, 1, NULL, NULL, NULL, NULL, '2022-07-22 13:34:01', '2022-07-22 13:34:01'),
(41, 'Très délicieux 😋', 35, NULL, NULL, 21, NULL, NULL, '2022-08-10 10:27:10', '2022-08-10 10:27:10'),
(44, 'nice', 8, 27, NULL, NULL, NULL, NULL, '2022-10-12 10:28:04', '2022-10-12 10:28:04'),
(45, 'cool', 8, NULL, 108, NULL, NULL, NULL, '2022-11-10 13:09:36', '2022-11-10 13:09:36'),
(47, 'Une très belle ville. Le concept de la couleur bleue avec tous les petits détails comme les portes des maisons, la décoration, les couleurs + la nature, cela donne une unicité à ce petit trésor.', 167, NULL, 69, NULL, NULL, NULL, '2022-11-10 14:07:08', '2022-11-10 14:07:08'),
(55, 'Nice la', 8, NULL, NULL, 24, NULL, NULL, '2022-11-16 07:51:32', '2022-11-16 08:01:20'),
(56, 'C\'est vrai, mais il faut quand même visiter toute la ville. Elle est vraiment mythique', 246, 30, NULL, NULL, NULL, NULL, '2023-01-08 17:26:24', '2023-01-08 17:26:24'),
(57, 'J\'ai beaucoup apprécié les activités aquatiques que j\'ai faites dans cette magnifique ville.', 235, 26, NULL, NULL, NULL, NULL, '2023-01-09 18:48:01', '2023-01-09 18:48:01'),
(58, 'Tellement vrai !', 234, 31, NULL, NULL, NULL, NULL, '2023-01-16 19:00:17', '2023-01-16 19:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `evenements`
--

CREATE TABLE `evenements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evenements`
--

INSERT INTO `evenements` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(12, NULL, NULL, 'Le festival Jazzablanca est de retour !', 'le-festival-jazzablanca-est-de-retour', 'Après deux ans d’absence, la 15ème édition du festival Jazzablanca se tiendra du 1er au 3 juillet 2022.\r\n\r\nLe Jazzablanca s’installe cette année Anfa Park qui sera en partie privatisé autour d’une atmosphère particulière.\r\n\r\nLes organisateurs ont annoncé les noms des artistes qui vont se produire sur scène, dont Ibrahim Maalouf, gilberto Gil , Asaf Avidan, Ben Harper & The Innocent Criminals, Erik Truffaz feat Hamid El Kasri, Mulatu Astatke, Majid Bekkas, Seun Kuti, Oum ou encore Natasha Atlas.\r\n\r\nSoyez aux Rendez-Vous !\r\n\r\nPour plus d’informations : https://jazzablanca.com/', 'images/evenements/HtUHkLuoQgkYUBE38hHSgFL0eSeQjgfZhAW1No4H.jpg', NULL, NULL, NULL, '2022-05-31 08:47:22', '2022-05-31 10:50:07'),
(13, NULL, NULL, 'Découvrez la programmation du Gnaoua Festival Tour !', 'decouvrez-la-programmation-du-gnaoua-festival-tour', 'Le Festival Gnaoua et Musiques du Monde d’Essaouira devient le Gnaoua Festival Tour.\r\n\r\nLa première escale sera à Essaouira, les 3 et 4 juin. Ce sont onze des maâlems les plus réputés de la belle Mogador qui donneront rendez-vous au public lors de douze concerts allant de Place Moulay El Hassan jusqu\'à Dar Souiri.\r\n\r\nMarrakech reprendra le flambeau le 9 juin au Mégarama, en honorant le public de la présence de deux des plus grands maâlems  Gnaoua : Abdelkebir Merchane et Mustapha Baqbou. \r\n\r\nLe 10 juin, le maître Gnaoua, Abderrazak El Hadir, invitera au partage trois musiciens de la nouvelle génération, au Centre Les Étoiles de Jamâa El Fna.\r\n\r\nPour Casablanca, le Gnaoua Festival Tour se déroulera du 16 et 19 juin au stade Mohammed V. Le festival prévoit une programmation de neuf concerts dont quatre fusions, trois concerts Gnaoua et deux concerts 100% énergie.\r\n\r\nLe 23 et 24 juin, la capitale Rabat clôturera le festival avec cinq concerts à savoir deux fusions, deux concerts Gnaoua et un concert de pur jazz, qui auront lieu au Théâtre National Mohammed V et au Cinéma la Renaissance\r\n.\r\nPour plus d’informations : https://tour.festival-gnaoua.net/', 'images/evenements/tQ1OVsDWIpQuV3ObfGiOUGdsJfk9fiDdCW7xUCYv.jpg', NULL, NULL, NULL, '2022-05-31 09:32:47', '2022-05-31 09:33:51'),
(14, NULL, NULL, 'Le Festival national des arts populaires revient en juillet', 'le-festival-national-des-arts-populaires-revient-en-juillet', 'La 51ème édition du Festival National des Arts Populaires se tiendra du 1er au 5 Juillet 2022.\r\n\r\nL’objectif premier du Festival est de refléter la richesse et la grande diversité des arts populaires de tout le Maroc. \r\n\r\nCette édition sera placée sous le thème « Chants et rythmes éternels » et se tiendra au Palais El Badiî, à Marrakech.', 'images/evenements/3NRMogSHOqoxRO8PfjfKZeBKY0dlBlsopZf43229.png', NULL, NULL, NULL, '2022-06-20 14:16:41', '2022-06-20 14:23:25'),
(15, NULL, NULL, 'Le festival Timitar de retour à Agadir !', 'le-festival-timitar-de-retour-a-agadir', 'Depuis sa création, le festival a attiré des centaines de milliers de personnes et vise à faire de même cette année avec une programmation diversifiée.\r\n\r\n\r\nPour la 17ème édition de cet évènement, la musique traditionnelle Amazighe se mélangera aux rythmes et mélodies universelles les 15 et 16 juillet, à Agdire, sous le thème “Les artistes amazighs accueillent les musiques du monde”.\r\n\r\n\r\nPlusieurs artistes seront présents lors de cet évènement, notamment Lartiste le 1er jour fu festival et Hatim Ammor le 2ème jour.\r\n\r\n\r\nPour plus d’informations : https://festivaltimitar.ma/', 'images/evenements/zDXX9fqdmLiDHeS6QXbTd5iHamJe8bgo4saXwTa1.jpg', NULL, NULL, NULL, '2022-07-05 13:24:04', '2022-07-05 13:24:04'),
(16, NULL, NULL, 'Azemmour aux rythmes du 10e festival de l’art du Malhoune', 'azemmour-aux-rythmes-du-10e-festival-de-lart-du-malhoune', 'Le Malhoune, cette poésie populaire écrite et chantée en arabe dialectale maghrébin, fait partie des arts ancestraux du patrimoine culturel marocain.\r\n\r\nAfin de mettre en lumière cet art poético-musicale, le Festival international Malhounyat Azemmour se tiendra, du 14 au 16 juillet, à la place Ibrahim Moul-Niss à Azemmour, sous le thème « La préservation du Malhoune ».\r\n\r\nC’est une occasion pour le public de savourer les charmes du Malhoune et de découvrir la magie du verbe et des prouesses poétiques.', 'images/evenements/3FUKfWSgqjQ6EgWrR6AQ5alYOc6O8473UXazRPFt.jpg', NULL, NULL, NULL, '2022-07-12 08:48:03', '2022-07-12 08:50:05'),
(18, NULL, NULL, 'Le 1er festival Into the Wild à Dakhla dévoile sa programmation', 'le-1er-festival-into-the-wild-a-dakhla-devoile-sa-programmation', 'Oasis Festival fait son retour dans le sud du Maroc, pour la première édition d’ « Into The Wild», un nouveau concept de festival intimiste, imaginé par l’équipe de l’événement.\r\n\r\nCette première édition aura lieu le 23 et 24 septembre prochain à Dakhla.\r\n\r\nLe festival vous invite à assister à des performances de classe mondiale délivrées par des DJ locaux et internationaux de premier plan, notamment DJ KiNK, Âme, Lakuti et le groupe Mind Against.\r\n\r\nLe festival propose également toute une série d’activités de bien-être, ainsi qu’une panoplie de plats et de boissons préparés à partir d’ingrédients locaux.\r\n\r\nUne bonne opportunité pour découvrir les paysages les plus époustouflants du Maroc, à travers la musique, la gastronomie et le bien-être !\r\n\r\nPour plus d’informations : https://intothewild.ma/', 'images/evenements/pCc2yhrrV99S18VnbLdKta7AUEngHjyPaWfxxqMB.png', NULL, NULL, NULL, '2022-08-12 12:36:25', '2022-08-12 12:38:55'),
(19, NULL, NULL, 'Le Festival Jazz au Chellah retrouve son public du 29 septembre au 2 octobre 2022', 'le-festival-jazz-au-chellah-retrouve-son-public-du-29-septembre-au-2-octobre-2022', 'Après avoir été reporté en 2020 et en 2021 en raison de la pandémie, le Festival Jazz au Chellah sera de retour du 29 septembre au 2 octobre 2022 à l’intérieur des remparts de l’emblématique cité romaine Chellah à Rabat.\r\n\r\nDepuis 1996, le Festival Jazz au Chellah s’organise chaque année dans le but de promouvoir le dialogue interculturel entre le Maroc et l’Europe à travers la musique.\r\nOrganisé par l’Union européenne au Maroc, la vingt-cinquième édition du Festival regroupera plus de 50 musiciens d’Europe et du Maroc \r\n\r\nDurant 4 jours, des musiciens marocains et des musiciens de jazz européens, notamment Soukaina Fahsi , Aziz Ouzous, Goran Kajfes et Majid Bekkas, seront invités sur scène pour offrir des concerts inédits où se mêleront les sons du jazz européen aux rythmes de la musique marocaine.\r\n\r\nPour plus d\'informations: https://www.guichet.com/concerts-festivals/le-jazz-au-chellah-a-rabat', 'images/evenements/Rt4cW5chFVeoaG7kOuF88tvpJkP22mkNWGB3k9qc.png', NULL, NULL, NULL, '2022-09-13 14:21:58', '2022-09-13 14:31:21'),
(20, NULL, NULL, 'Le festival L’Boulevard est de retour!', 'la-20e-edition-du-festival-lboulevard-demarre-aujourdhui', 'Après deux années d’interruption, la 20ème édition du festival L’Boulevard fait son grand retour sur la scène du R.U.C. à Casablanca.\r\n\r\nLe festival commence le vendredi 23 septembre à 16h et se tiendra jusqu’au 2 octobre. \r\n\r\nCette année, L’Boulevard fait particulièrement honneur aux talents marocains de rap et hip hop, rock ou métal et fusion et autres. Il s’agit notamment de, El Grande Toto, L’Morphine, Dollypran, Mobydick, Lmoutchou, Ribab Fusion, Iguidir, , Hold The Breath, Betweenatna et Jubantouja. \r\nHoba Hoba Spirit se produira également lors de la soirée de clôture. \r\n\r\nCette rencontre connait également la participation d’artistes étrangers: Vader, Arka’n Asrafokor, Psykup, Alborosie & Shengen Clan ainsi que L’Entourloop.\r\n\r\nComme à l’accoutumée, le Festival reste fidèle à sa vocation de prospecteur de nouveaux talents. Le premier volet du festival, accueillera le Tremplin L’Boulevard, pour lequel le jury a déjà sélectionné 17 groupes et artistes venus de différentes villes du Royaume. \r\n\r\nLes gagnants bénéficieront d’une formation technique et artistique du 26 au 29 septembre, avant de revenir sur la scène du R.U.C pour jouer en première partie des concerts programmés le week-end suivant.\r\n\r\n- Entrée libre. ( Les mineurs de moins de 16 ans doivent être  accompagnés).\r\n\r\nPour plus d’informations : https://boulevard.ma/?fbclid=IwAR2P57-zRU049gPRWA3avXG1eF2VRpzI9wz_DxP4_Cy_ahfYAbOoj1TP7_g', 'images/evenements/kvnDWQnhMJcTEpiGnZeyMZsgQ0fpusf9i0WFUQ6a.jpg', NULL, NULL, NULL, '2022-09-23 14:02:55', '2022-10-14 15:22:12'),
(25, NULL, NULL, 'Essaouira relance sa sixième édition du Festival International des Nuits Photographiques 2022', 'essaouira-relance-sa-sixieme-edition-du-festival-international-des-nuits-photographiques-2022', 'L’idée fondamentale du Festival international des nuits photographiques est l\'échange d\'expertise et de connaissances via des rassemblements de toutes natures, notamment des expositions d’art et de travaux créatifs, des conférences, des débats, des lectures et interprétations de portfolios et des entrevues, qui s\'adressent particulièrement aux photographes.\r\n\r\nLancé par Stéphane Kosmann en collaboration avec l’Institut français d’Essaouira, le festival susmentionné accueille tout photographe, professionnel ou amateur, capable de contribuer à ce dernier, entamer des conversations et soumettre une pièce de leur art, et cela est, bien sûr, après présélection et étude de dossiers des artistes en question.  Il aura aussi comme parrain, Ken Wong Youk, connu aussi sous le surnom de “L’Œil de Ken”.\r\n\r\nEn outre, le public peut apercevoir des présentations en plein air sur le mur du bâtiment El Menzah d’Essaouira.', 'images/evenements/B4bD4aFQAuUpAotkk01rUOJt50X6GvxOav6H2mj0.png', NULL, NULL, NULL, '2022-10-17 08:41:03', '2022-10-17 08:41:03'),
(29, NULL, NULL, 'Festival International des Nomades', 'festival-international-des-nomades', 'Après un arrêt de deux ans, le Festival International des Nomades lancera une édition exceptionnelle le 12 et 13 novembre 2022.\r\n\r\nOrganisé en plein air à M\'hamid El Ghizlane, et plus précisément dans la vallée du Draa, à 90 kilomètres au sud de Zagora, le festival présente une vraie diversité culturelle qui met en valeur l’histoire des tribus nomades et préserve leur identité unique. \r\n\r\nChaque année, l’événement accueille des artistes locaux, nationaux et internationaux qui interprètent sur scène des chansons, de la musique, des danses, des contes et des poèmes. On y expose aussi tout autre genre d’art, à savoir : la peinture, l’artisanat et le tissage.\r\n\r\nDes conférences, des ateliers et des tables rondes sont arrangés pour discuter sur divers sujets : le nomadisme, le patrimoine, l’agriculture, l’environnement… \r\n\r\nDe surcroît, vous pouvez assister aux sports pratiqués, notamment la course de dromadaire (Ellaz), et le hockey sur gazon.\r\n\r\nN’hésitez pas à déguster le pain de sable, l’un des principaux plats du désert, et qui présente l’art culinaire de la région.', 'images/evenements/LOeoox0GkJsOU9lfRqr0Hp9T06CnEOePntmxaBRV.png', NULL, NULL, NULL, '2022-11-04 09:06:44', '2022-11-04 09:06:44'),
(30, NULL, NULL, 'Festival international du film de Marrakech', 'festival-international-du-film-de-marrakech', 'Après une rupture de 2 années consécutives, le festival international du film de Marrakech lance sa 19ème édition qui se déroulera du 11 au 19 novembre 2022.\r\n\r\nL’événement sera inauguré au centre de Marrakech, à la place Jemaa El Fna. \r\n\r\nIl comprend environ 76 films de 33 pays. 14 des ses films sont en compétition officielle, dont 6 sont marocains. \r\n\r\nLe festival contient de nombreuses catégories. La séance de Gala présentera des premières mondiales de réalisateurs renommés. Les séances spéciales exposeront des films modernes. Et la section du 11e continent comportera des films de fiction, de documentaires et d\'archives. \r\n\r\nPour compléter le programme, des films d’hommage seront projetés à Jemaa El Fna, au cinéma Colisée et au Palais des Congrès.', 'images/evenements/m7LQVUdUbfeLfZmQnZoduDRPuenVQx5EU0bwHWSZ.jpg', NULL, NULL, NULL, '2022-11-04 12:28:49', '2023-01-04 09:34:46'),
(36, NULL, NULL, 'L’exposition « Métamorphoses » à Casablanca', 'lexposition-metamorphoses-a-casablanca', 'Pour ses dix ans d’existence, So Art Gallery expose les œuvres exceptionnelles de l’artiste Gérard Rancinan. \r\n\r\n« Métamorphoses » est l’intitulé de cette collection grandiose qui sera offerte à voir au public au Quartier Racine à Casablanca, du 19 janvier au 25 février 2023.\r\n\r\nLes œuvres de Gérard Rancinan ont été exposées dans les plus grands musées du monde, dont le Musée d’art Contemporain de Shanghai, le Musée Mohammed VI d’art moderne et contemporain de Rabat, la Triennale de Milan, le Palais de Tokyo…\r\n\r\nPar des photographies monumentales et des mises en scène impressionnantes inspirées des tableaux de grands maîtres de la peinture tels que De Vinci, Géricault et Delacroix, l’artiste raconte un monde en pleine mutation, l’accélération de l’histoire, la virtualisation du monde et le besoin absolu de modernité.', 'images/evenements/TMMW2W32bv1NE9Zb4HqW4uTHcmoSGUfv8z1aqtAu.jpg', 'metamorphoses-gerard-rancinan-casablanca', 'gerard rancinan, art, exposition, casablanca, maroc, photographie', '« Métamorphoses » est l’intitulé de cette collection grandiose qui sera offerte à voir au public au Quartier Racine à Casablanca, du 19 janvier au 25 février 2023.', '2023-01-18 09:58:10', '2023-01-18 09:58:10'),
(38, NULL, NULL, 'Le plus grand festival de musique électronique au Maroc est de retour !', 'le-plus-grand-festival-de-musique-electronique-au-maroc-est-de-retour', 'Enigma Music Festival est le plus grand festival de musique électronique au nord du Maroc et le seul du genre dans tout le royaume.\r\n\r\nLa première édition du festival s\'est tenue en août 2022 et a connu un grand succès. Avec trois scènes, trois groupes locaux et plus de quinze artistes locaux et internationaux représentant plus de dix genres musicaux différents, cette première édition a été très appréciée par les festivaliers. \r\n\r\nCette année, Enigma Music Festival revient en force avec une édition spéciale WINTER encore plus grande et meilleure qui promet de satisfaire les amateurs de musique électronique de Tanger et de tout le Maroc.\r\n\r\nLe festival aura le lieu le 18 février à 18h à Dabatek, Technopark Tanger et comprendra 5 spectacles interprétés par des artistes Marocains reconnus à l’international.\r\n\r\nLe prix du billet est de 200 dhs.\r\n\r\nPour plus d’informations : https://www.guichet.com/concerts-festivals/enigma-music-festival-winter', 'images/evenements/WSkiHxSD6AXnZr1dScRryzcwvyhFrGlamX3EB8kb.jpg', 'enigma-festival-music-tanger', 'festival maroc, festival music maroc, festival tanger,  Enigma Music Festival', 'Enigma Music Festival est le plus grand festival de musique électronique au nord du Maroc et le seul du genre dans tout le royaume.', '2023-02-16 12:35:37', '2023-02-16 12:35:37'),
(40, NULL, NULL, 'Le Grand Prix Hassan II de Marrakech', 'le-grand-prix-hassan-ii-de-marrakech', 'Si vous êtes un amateur de tennis, ne manquez pas le Grand Prix Hassan II de Marrakech ! Chaque année, des joueurs de renom s\'affrontent sur les courts de terre battue rouge pour remporter ce prestigieux tournoi ATP World Tour. \r\n\r\nAvec une atmosphère chaleureuse et conviviale, l\'événement attire des fans de tennis du monde entier, offrant ainsi une occasion unique de rencontrer d\'autres passionnés de ce sport. \r\n\r\nMais le Grand Prix Hassan II de Marrakech n\'est pas seulement un événement sportif majeur, il est également un pilier important du tourisme dans le pays. Avec ses compétitions excitantes, ses installations modernes et son emplacement magnifique à Marrakech, cet événement mérite d\'être sur votre liste de choses à faire si vous êtes au Maroc en avril 2023.', 'images/evenements/ZbHpO0KdO8uDQOXX2fFf2DUviCFWnQqT32HVYEaz.png', 'Le Grand Prix Hassan II', 'Tennis,marrakech,maroc,atp,sport,tournoi', 'e Grand Prix Hassan II de Marrakech n\'est pas seulement un événement sportif majeur, il est également un pilier important du tourisme dans le pays.', '2023-04-07 09:38:47', '2023-04-07 09:38:47'),
(41, NULL, NULL, 'Festival D’Essaouira Gnaoua', 'festival-dessaouira-gnaoua', 'Imaginez-vous au bord de la mer, à Essaouira, en train de vibrer au son de la musique Gnaoua, une musique traditionnelle venue tout droit d\'Afrique de l\'Ouest. Le Festival d\'Essaouira Gnaoua, qui se tiendra du 22 au 24 juin prochain, vous offre cette expérience unique en son genre.\r\nEn plus de la musique Gnaoua, vous pourrez découvrir d\'autres genres musicaux tels que le jazz, le blues et le reggae, interprétés par des artistes locaux et internationaux.\r\nLe Festival d\'Essaouira Gnaoua est l\'un des événements musicaux les plus attendus de l\'année au Maroc et en Afrique, attirant des visiteurs du monde entier. Alors n\'hésitez plus et rejoignez cette expérience musicale inoubliable dans un cadre enchanteur en bord de mer.', 'images/evenements/0uYsewfQ1SqPZ8lc6FWPUHr5l8O3NO1Z1ex582z8.png', 'Festival de Gnaoua', 'Festival,essaouira,maroc,gnaoua,sejour,musique', 'Imaginez-vous au bord de la mer, à Essaouira, en train de vibrer au son de la musique Gnaoua, une musique traditionnelle venue tout droit d\'Afrique de l\'Ouest.', '2023-04-07 09:41:23', '2023-04-07 09:41:23'),
(42, NULL, NULL, 'Visa For Music Rabat 2023', 'visa-for-music-rabat-2023', 'Êtes-vous prêt à découvrir la scène musicale la plus vibrante et diversifiée d\'Afrique et du Moyen-Orient? Ne manquez pas Visa For Music, le salon professionnel de la musique qui se tient chaque année à Rabat, au Maroc. \r\n\r\nCet événement de quatre jours est une occasion unique pour les passionnés de musique, les professionnels de l\'industrie musicale et les artistes émergents de se connecter, de collaborer et de célébrer la richesse de la musique du monde arabe et africain. \r\n\r\nAvec une variété de concerts, de conférences, d\'ateliers et de sessions de réseautage, Visa For Music est la plateforme ultime pour découvrir de nouveaux talents et pour stimuler votre carrière musicale. Venez découvrir l\'atmosphère conviviale et professionnelle de cet événement, et laissez-vous emporter par la musique.', 'images/evenements/jyyhIbz3ENQZa8UyTU3HRBx2ZCL9yhzCHo9zTyar.png', 'Evènements Visa For Music Rabat', 'Musique,rabat,salon,maroc,artistes,concerts', 'Ne manquez pas Visa For Music, le salon professionnel de la musique qui se tient chaque année à Rabat, au Maroc.', '2023-04-07 09:44:33', '2023-04-07 09:44:33'),
(43, NULL, NULL, 'Jazzablanca Casablanca', 'jazzablanca-casablanca', 'Préparez-vous à vivre une expérience musicale exceptionnelle avec Jazzablanca, le festival de jazz le plus attendu de Casablanca. \r\n\r\nDepuis sa création en 2006, ce festival attire les plus grands noms du jazz local et international, offrant des performances envoûtantes dans des lieux emblématiques de la ville, tels que des théâtres, des clubs et des espaces en plein air. \r\n\r\nMais ce n\'est pas tout, Jazzablanca propose également des ateliers de musique et des événements culturels passionnants qui permettent aux amateurs de musique et aux professionnels de l\'industrie de se connecter, d\'apprendre et de se divertir.\r\n\r\nImmergez-vous dans l\'ambiance de ce festival immanquable et préparez-vous à vivre trois jours de musique inoubliables.', 'images/evenements/K5AexTXcbQ5A8b3vAqoKLMzaayZK1pgTMhatXlIh.png', 'undefined', 'Jazz,casablanca,maroc,concerts,musique,festival', 'Préparez-vous à vivre une expérience musicale exceptionnelle avec Jazzablanca, le festival de jazz le plus attendu de Casablanca.', '2023-04-07 09:46:28', '2023-04-07 09:46:28'),
(44, NULL, NULL, 'Le Festival de Fès de la Culture Soufie', 'le-festival-de-fes-de-la-culture-soufie', 'Imprégnez-vous de la culture soufie en participant au Festival de Fès de la Culture Soufie, une célébration fascinante de la musique, de la poésie et de la danse soufie. \r\n\r\nDu 21 au 28 octobre 2023, les visiteurs pourront découvrir les traditions soufies et assister à des performances exceptionnelles dans des lieux historiques de la ville de Fès. \r\n\r\nLe festival propose une programmation variée avec des concerts de musique, des conférences, des expositions et des performances de danse, permettant aux participants de vivre une expérience culturelle et spirituelle unique. \r\n\r\nVenez-vous immerger dans la culture soufie et découvrir les enseignements de cette tradition fascinante.', 'images/evenements/s382VRrQsIaeO4dQ36loukZCJmAgXscs6TXG6wDU.png', 'La culture soufie Fès', 'Fès,maroc,soufia,festival,culture,musique,poésie,danse,tradition', 'Imprégnez-vous de la culture soufie en participant au Festival de Fès de la Culture Soufie, une célébration fascinante de la musique, de la poésie et de la danse soufie.', '2023-04-07 09:48:53', '2023-04-07 09:48:53'),
(45, NULL, NULL, 'Oasis festival relance une nouvelle édition du concept \"Into The Wild\"', 'oasis-festival-relance-une-nouvelle-edition-du-concept-into-the-wild', 'Après une première édition brillante du concept Oasis Festival « Into The Wild » tenue à Dakhla septembre dernier.\r\n\r\nLes organisateurs du Festival s’organisent à une deuxième édition le 27.28 et 29 octobre 2023 à l’Atlas Studio d’Ouarzazate.\r\n\r\nVous aurez l’opportunité de visiter une région particulière du Maroc, à travers un programme d’activités incluant des ateliers de présentation de cuisine contemporaine marocaine, dîners en mode pop-up, découverte des créateurs nord-africains les plus en vue et bien d’autres surprises.\r\n\r\nUn voyage guidé dans un spot mythique aux décors impressionnant, qui a accueilli des films et séries mondialement reconnus comme Game Of Thrones, Gladiator… accompagné par de la bonne musique et des plats marocains savoureux. Ça promet du lourd !', 'images/evenements/lWY2rsflHbOAajt70Y6WMviwi4AvvZQLBipDBPwp.jpg', 'Oasis festival à Ouarzazate', 'festival,Ouarzazate,voyage,camping,desert,musique,afrique,sud,maroc,art,cuisine', 'Festival Oasis 2023 à Ouarzazate', '2023-05-23 10:16:17', '2023-05-23 10:16:17'),
(46, NULL, NULL, 'Le salon du cheval d\'El Jadida', 'le-salon-du-cheval-del-jadida', 'Placé sous le haut patronage de sa majesté le roi Mohammed VI, le Salon du Cheval d’El Jadida est de retour à partir du 17 au 22 octobre 2023 sous le thème « le cheval et le développement durable ».\r\n\r\nLe salon réunit les amateurs de chevaux, professionnels comme particuliers pour assister à cet événement si particulier.\r\n\r\nPour plus d’informations : https://www.salonducheval.ma/', 'images/evenements/TpZ0f5A1k7bdNcdkLilGdcSXakwM299D3OGvo3yJ.jpg', 'El Jadida accueille pour une 14ème fois le salon du cheval', 'salon,cheval,El Jadida,tbourida,exposants,visiteurs,cavaliers', 'Ne manquez surtout pas votre rendez-vous annuel avec le salon du cheval d\'El Jadida dans sa quatorzième édition qui aura lieu en mois d\'octobre 2023.', '2023-05-23 10:30:21', '2023-05-23 10:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gastronomies`
--

CREATE TABLE `gastronomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gastronomies`
--

INSERT INTO `gastronomies` (`id`, `user_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(16, NULL, 'Couscous', 'couscous', 'Lors de votre voyage au Maroc, vous aurez sûrement l\'occasion de déguster le couscous, qui est un des plats phares de la cuisine marocaine.\r\n\r\nTraditionnellement au Maroc, on mange le couscous chaque vendredi où on se réunit autour d’une même table pour renforcer les liens familiaux, ou lors des grands événements.\r\n\r\nLa composition du couscous comporte généralement de la semoule de blé cuite à la vapeur à l’intérieur d’un couscoussier, de la viande ainsi que des légumes cuits puis mijotés dans un bouillon.\r\n\r\nIl existe plusieurs types de couscous, avec des compositions différentes, qui varient selon les habitudes de chaque région.\r\n\r\nIl existe également des couscous sucrés, comme le couscous au « Tfaya » qui est à base de viande de bœuf ou de mouton, d’oignons et de raisins secs caramélisés et le couscous « Seffa » saupoudré de sucre glacé et de la cannelle et garni aux fruits secs.\r\n\r\nLe couscous salé est généralement accompagné avec du leben, alors que le couscous sucré se déguste avec un bon verre de lait frais.\r\n\r\nVous trouverez le couscous dans toutes les régions du royaume. A l’exception du couscous au poisson qui est considéré comme une spécialité de la ville d’Essaouira.\r\n\r\nSi vous êtes en séjour au Maroc, n’hésitez pas à goûter à ce merveilleux plat, un vrai délice!', 'images/gastronomies/N76fVnt47VpI2m1Zsv91bBmbDWCsJFkDdCwRjxdV.jpg', NULL, NULL, NULL, '2022-05-31 12:52:55', '2022-05-31 12:58:24'),
(19, NULL, 'L\'Art du thé au Maroc', 'lart-du-the-au-maroc', 'Symbole d’hospitalité chez les marocains, le thé à la menthe est servi et dégusté en toute occasion et à toute heure de la journée.\r\n\r\nAu Maroc, le thé se boit même en pleine canicule. Même s’il est servi très chaud, il est délicieusement rafraîchissant.\r\nSa préparation est simple, mais demande tout de même un certain savoir-faire. \r\n\r\nAprès avoir nettoyé le thé à l’eau bouillante, dans la théière, on rajoute de la menthe fraîche, du sucre et de l’eau bouillante. Pour le rendre plus homogène, on remplit un verre que l’on reverse dans la théière à plusieurs reprises.\r\n\r\nLe thé est ensuite servi de très haut afin de le faire mousser. \r\nIl peut être servi seul, pour accompagner les repas ou encore avec une sélection de pâtisseries.', 'images/gastronomies/m83E5bUPdCYBYzgPQiC4F2nde8u2HIaciV2D1Knp.jpg', NULL, NULL, NULL, '2022-07-06 14:28:58', '2022-07-06 14:28:58'),
(20, NULL, 'Boulfaf, l’indispensable de l\'aïd Al Adha', 'boulfaf-lindispensable-de-laid-al-adha', 'Selon les traditions marocaines, Boulfaf est le premier plat servi lors du déjeuner de l\'aïd Al Adha . \r\n\r\nLors de cet évenement, les familles et les voisins s’échangent et se partagent le Boulfaf dans un grand moment de convivialité.\r\n\r\nLa préparation du Boulfaf commence d’abord par une première mi-cuisson du foie sur un feu de charbon.\r\n\r\nAprès l’avoir découpé en petits cubes et assaisonné de cumin, de poivre, de paprika et de sel, chaque morceau est enroulé dans de la crépine de mouton.\r\n\r\nLa grillade du Boulfal dégage une fumée accompagnée d’une odeur agréable. Le gras fondu donne un goût exceptionnel au foie et le laisse bien tendre.', 'images/gastronomies/BPqB1uIedxd5EXj5Mzj28KpXF8PQdKIMCNXk8q2w.jpg', NULL, NULL, NULL, '2022-07-18 14:13:02', '2022-07-21 14:10:21'),
(21, NULL, 'La savoureuse Rfissa au poulet', 'la-savoureuse-rfissa-au-poulet', 'La Rfissa au poulet est l’un des plats traditionnels marocains les plus remarquables. \r\n\r\nCette spécialité marocaine se compose d\'une base de feuilles de msemen (crêpes marocaines) que l\'on découpe en petits morceaux et de poulet mijoté dans une sauce épicée à base de lentilles, de Funegrec et d\'oignons.\r\n\r\nLa Rfissa se prépare souvent en période de froid ou pour les femmes qui viennent d’accoucher, puisqu’elle contient un mélange d’épices séchées moulues appelées « msakhen ».\r\n\r\nComme leur nom l’indique, ces épices ont la vertu de réchauffer le corps et favoriser la montée de lait pour les jeunes mamans. Mais tout le monde en raffole et la Rfissa est devenu un rituel du mercredi notamment à Casablanca.', 'images/gastronomies/MwRF2LNYn4KDGyJnNcCC6pra11xvgRepW08ZA5q4.png', NULL, NULL, NULL, '2022-07-26 10:10:04', '2022-07-26 10:10:04'),
(22, NULL, 'La pastilla, le raffinement à la marocaine', 'la-pastilla-le-raffinement-a-la-marocaine', 'La pastilla est un plat emblématique de la cuisine citadine marocaine.\r\n\r\nSouvent servie lors des grandes cérémonies, elle est considérée comme un plat de fête par excellence. \r\n\r\nCe plat savoureux est constitué d’une enveloppe de feuille de brick superposées qui lui donne un feuilletage croustillant.\r\n\r\nSa farce est constituée d’oignons, de poulet ou de pigeon comme le veut la tradition, d’amandes torréfiées, du miel et d’un mélange d’épices orientales. \r\n\r\nCe plat très raffiné est saupoudré de sucre glace et décorée de cannelle. C’est ce mélange sucré salé qui rend le plat exceptionnel et lui donne une saveur unique !\r\n\r\nLa pastilla se présente également en version salée, préparée avec différents poissons de chair blanche, de fruits de mer et de vermicelles.', 'images/gastronomies/1IYXWHEkdUl3SZh3Kx3R5jyxlJ9aLgZqsSfXblhZ.jpg', NULL, NULL, NULL, '2022-09-08 14:16:26', '2022-09-08 14:16:26'),
(23, NULL, 'Le Tajine, l’emblème de la gastronomie marocaine', 'le-tajine-lembleme-de-la-gastronomie-marocaine', 'Délicieux, parfumé et riche en saveurs, le tajine fait partie des plats les plus incontournables de la cuisine marocaine.\r\n\r\nLe tajine désigne non seulement la recette mais aussi l’ustensile dont lequel il est préparé. Ce plat de cuisson creux en terre cuite surmonté d’un couvercle en forme pointue qui permet une cuisson sans eau. \r\n\r\nC’est d’ailleurs la forme de ce couvercle qui permet de faire circuler la vapeur durant la cuisson pour rendre la viande plus tendre.\r\n\r\nIl existe plusieurs types de tajines marocains dont les recettes diffèrent selon chaque région. Le tajine peut se composer de viande, de volaille ou de poisson, tantôt salé garnie de légumes et tantôt sucré garni de fruits secs.\r\n\r\nLa préparation du tajine est simple mais sa réussite dépend également du mode de cuisson. Celle-ci doit être à feu doux afin que la sauce devienne plus condensée et conserve la saveur des ingrédients.\r\n\r\n.', 'images/gastronomies/w4RKG5SLDx5RHs7l0Lj3zvRPs4V4pGMZoMCMt317.png', NULL, NULL, NULL, '2022-09-28 09:41:59', '2022-09-28 09:41:59'),
(24, NULL, 'La Tanjia', 'la-tanjia', 'La Tanjia est une spécialité marocaine issue de la ville rouge du Maroc, Marrakech. Sa nomination vient de la jarre de terre où elle est cuite.  \r\n\r\nLa recette contient de la viande, fréquemment du veau, mélangé avec un panaché spéciale d’épices, l’ail et du citron confit salé qui donne au plat une saveur tropicale exceptionnelle et appétissante.\r\n\r\nLa Tanjia est cuite pendant un longue durée, dans les cendres du four à bois, ce qui la rend moelleuse. Elle est servie dans une assiette dès qu’on la sort du four.', 'images/gastronomies/HQoOovbHopiD6vT4saVJ6PPd9VtLs4vDsNm0GO0T.png', NULL, NULL, NULL, '2022-11-02 12:23:01', '2022-12-30 09:33:29'),
(32, NULL, 'La Harira, le plat obligatoire du mois de Ramadan', 'la-harira-le-plat-obligatoire-du-mois-de-ramadan', 'La harira est une soupe traditionnelle marocaine. \r\n\r\nDélicieusement épicée et pleine de saveurs, la harira se caractérise par de nombreux ingrédients notamment l’oignon et la tomate qui lui donne un goût légèrement acide ainsi que la viande, les pois chiches et les lentilles qui lui confèrent une haute valeur nutritive sans oublier les herbes : persil et coriandre.\r\n\r\nLa harira est également caractérisée par le coulis de farine qu’on appelle « tadouira », qu’on rajoute à la fin de la cuisson, pour rendre la soupe légèrement onctueuse et velouté. \r\n\r\nCette fameuse soupe est très prisée pendant le mois de Ramadan et fréquemment consommée pendant l’hiver. Elle est généralement servie avec des dattes, des œufs durs ou de la Chebakia.', 'images/gastronomies/ne3qKgFqiTrgNjyVYKZppUVWGegxFaTiHOEAQREQ.jpg', 'harira-le-plat-du-ramadan', 'gastronomie,marocaine,plat,cuisine,marocnharira,soupe', 'La harira est une soupe traditionnelle marocaine.', '2023-01-10 15:32:04', '2023-01-10 15:32:04'),
(34, NULL, 'Baghrir, une pure gourmandise à la marocaine', 'baghrir-une-pure-gourmandise-a-la-marocaine', 'Cette délicieuse crêpe aux mille trous est un classique de la cuisine marocaine. Si succulente et irrésistible, cette subtile crêpe à base de semoule fine est très addictive.\r\n\r\nLe baghrir se mange sucré. Lors de la dégustation, il est arrosé de beurre fondu et de miel. Sa texture aux multiples trous permet une parfaite absorption du nappage.\r\n\r\nLa préparation du baghrir est assez simple et nécessite très peu d’ingrédients, mais le temps de repos et la cuisson demandent tout de même un savoir-faire pour réussir à obtenir une crêpe légère, spongieuse et surtout bien trouée.\r\n\r\nElle est généralement servie lors du petit-déjeuner ou du goûter accompagnée du thé. \r\n\r\nLe baghrir est également très apprécié pendant le mois de ramadan. Il est soit dégusté au moment de la rupture du jeûne, ou lors du shour pour apporter l\'énergie nécessaire à la journée de jeûne.', 'images/gastronomies/PEHC2hDHXBYb1zY7fqfJwF94dicjDBig8eDTAmWC.png', 'baghrir-pure-gourmandise-marocaine', 'plat,baghrir,gastronomie marocaine,cuisine marocaine, crepe marocaine, crêpe aux mille trous', 'Cette délicieuse crêpe aux mille trous est un classique de la cuisine marocaine.', '2023-01-19 14:57:42', '2023-01-19 14:57:42'),
(35, NULL, 'Les cornes de gazelle, le gâteau emblématique marocain', 'les-cornes-de-gazelle-le-gateau-emblematique-marocain', 'Elle est connue sous le nom de Corne de Gazelle, bien que son nom original « Kaab el Ghazal » signifie en arabe talon de gazelle.\r\n\r\nCe délicieux et succulent gâteau symbolise la pâtisserie marocaine par excellence. Il est toujours présent lors des grandes occasions et cérémonies traditionnelles, notamment les fêtes de mariages, les baptêmes et les fêtes religieuses. Les marocains tiennent à le servir en accompagnement à la cérémonie de thé à leurs convives, en signe d\'hospitalité et de générosité.\r\n\r\nLeur forme de croissant et leurs bords dentelés leur confère un charme irrésistible et invite à apprécier une texture à la fois croquante et fondante. \r\n\r\nLa réalisation des cornes de gazelle, consiste en premier lieu à préparer une farce constituée de pâte d’amandes mélangée avec du sucre, du beurre fondu et de la gomme arabique et parfumée de cannelle et d\'eau de fleur d\'oranger. Le mélange est ensuite enroulé en petites saucisses de la grosseur d\'un doigt puis enveloppée d’une pâte très fine avant d’être mise au four afin d’obtenir une couleur légèrement dorée.\r\n\r\nLes cornes de gazelle se présentent sous différentes variations, elles peuvent être enrobée de sucre glacé ou bien joliment décorées à l’aide d’une minuscule pince que l’on appelle « mangach », spécialité de la ville de Tétouan.', 'images/gastronomies/ggkz2ijvYxswMOqDHfP6pWyWhB9hpbvmW2nqtBFp.jpg', 'cornes-de-gazelle-marocaines', 'cornes de gazelle; pâtisserie marocaine; gâteaux marocains; gastronomie marocaine', 'Elle est connue sous le nom de Corne de Gazelle, bien que son nom original « Kaab el Ghazal » signifie en arabe talon de gazelle.', '2023-02-14 14:44:09', '2023-02-14 14:44:09'),
(36, NULL, 'Le msemen, la crêpe feuilletée marocaine', 'le-msemen-la-crepe-feuilletee-marocaine', 'Le msemen, appellé également melloui ou rghayef, est une spécialité culinaire marocaine très populaire, souvent servie au petit-déjeuner, du goûter ou au moment de la rupture du jeûne pendant le mois de Ramadan. Il s\'agit d\'une sorte de crêpe feuilletée, à la fois croustillante et moelleuse, d’une forme ronde ou carré. \r\n\r\nLa préparation du msemen est un processus un peu laborieux, qui nécessite un peu de pratique pour obtenir une bonne texture. Sa pâte est préparée à base de farine, de semoule fine, de sel et d\'huile. Elle est ensuite pétrie pendant plusieurs minutes, jusqu\'à ce qu\'elle soit lisse et élastique, puis badigeonnée d\'huile et de beurre et pliée plusieurs fois sur elle-même pour créer des couches feuilletées. La pâte est ensuite aplatie et cuite sur une plaque chaude, où elle est tournée plusieurs fois pour assurer une cuisson uniforme.\r\n\r\nLe msemen peut avoir plusieurs saveurs en fonction de la garniture utilisée. Le msemen accompagné de beurre et de miel obtient une saveur douce et légèrement sucrée. Le msemen au fromage est généralement plus salé, tandis que le msemen au khlii a une saveur plus prononcée de viande salée et d\'épices.\r\n\r\nSI vous voulez découvrir de nouvelles saveurs et vous immerger dans la cuisine marocaine, le msemen est une excellente option. N’hésitez pas à l’accompagner avec du thé à la menthe pour une expérience gustative authentique !', 'images/gastronomies/lf3isGTQ3hI3WMLmuGEYTmt0ZbAem5WEDZCug3ik.jpg', 'msemen-la-crepe-feuilletee-marocaine', 'msemen marocain, plat marocain, gastronomie marocaine, msemen au khlii, melloui marocain', 'Le msemen, appellé également melloui ou rghayef, est une spécialité culinaire marocaine très populaire, souvent servie au petit-déjeuner, du goûter ou au moment de la rupture du jeûne pendant le mois de Ramadan.', '2023-02-23 15:07:04', '2023-02-23 15:07:04'),
(39, NULL, 'Chebakia - La douceur sucrée marocaine', 'chebakia-la-douceur-sucree-marocaine', 'La Chebakia est un trésor de la cuisine marocaine, un gâteau délicieux et unique qui est célébré tout au long de l\'année, mais qui est particulièrement apprécié pendant le mois sacré du Ramadan. \r\n\r\nSa forme tressée en forme de fleur est non seulement esthétique, mais aussi savoureuse, car elle permet au miel de se répartir uniformément sur toute la surface de la pâtisserie. \r\n\r\nLes saveurs sucrées et épicées de la Chebakia sont une véritable explosion de saveurs en bouche, et sa texture croquante la rend irrésistible. Que ce soit pour rompre le jeûne ou pour célébrer une occasion spéciale, la Chebakia est un choix parfait pour satisfaire les papilles gustatives de tout le monde.', 'images/gastronomies/N775xzkjmvULVc2hNKN951cq1li1sl5Ko3i3QK2e.png', 'La douceur sucrée marocaine', 'Gateau,sucrée,maroc,gastronomie,dessert,cuisine', 'La Chebakia est un trésor de la cuisine marocaine, un gâteau délicieux et unique qui est célébré tout au long de l\'année', '2023-04-07 09:35:59', '2023-04-07 09:35:59'),
(40, NULL, 'Le Tajine d\'agneau aux pruneaux', 'le-tajine-dagneau-aux-pruneaux', 'Délicieux, unique avec le mélange magique de saveurs sucrés-salés. Le tajine d’agneau aux pruneaux est l\'une des meilleures recettes de la cuisine marocaine. Il est servi particulièrement pour les événements festifs.\r\n\r\nSi traditionnellement il se prépare dans un tajine, aujourd’hui la plupart des personnes le cuisine dans une cocotte, mais qu’importe le plat de cuisson que vous utilisez, vous pouvez transvaser votre préparation dans des petits plats à tajine individuels au moment de servir.', 'images/gastronomies/9udeRXanAwo4tMEuKiUGVDYgYbF9VARxLJ5zJDYB.jpg', 'tout savoir sur le tajine d\'agneau aux pruneaux', 'tajine,cuisine marocaine,maroc,plats,gastronomie', 'Le tajine d\'agneau aux pruneaux est un des recettes les plus populaires et savoureux de la cuisine marocaine.', '2023-05-23 12:40:29', '2023-05-23 12:40:29'),
(41, NULL, 'La Harcha, une galette aux saveurs marocaines', 'la-harcha-une-galette-aux-saveurs-marocaines', 'La Harcha est une galette du Maroc à base de semoule. Cette galette est une viennoiserie marocaine qui a tendance à être présente au petit déjeuner ou à l’heure du thé dans la plupart des maisons au Maroc.\r\n\r\nElle est généralement servie chaude avec du miel, du fromage ou de la confiture ainsi qu’un verre de thé ou une tasse de café.\r\n\r\nDéguster un morceau de Harcha tartiné du miel ou du beurre des mains de nos mamans est un bonheur assuré !', 'images/gastronomies/xrKCU2ppcjxMUQE2iEUJ1U1gFEgFRy92BDOXtr3e.png', 'La Harcha, une galette 100% marocaine', 'gastronomie,cuisine,harcha,maroc,viennoiserie,semoule,thé marocain,', 'Découvrir la fameuse galette marocaine \"Harcha\". La tradition du petit déjeuner au Maroc.', '2023-05-23 13:03:05', '2023-05-23 13:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `guides_touristiques`
--

CREATE TABLE `guides_touristiques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_act` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hebergement_services`
--

CREATE TABLE `hebergement_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_service` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hebergement_services`
--

INSERT INTO `hebergement_services` (`id`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_service`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, 2, '2022-06-15 08:25:30', '2022-06-15 08:25:30'),
(7, 2, NULL, NULL, 2, '2022-06-15 12:55:53', '2022-06-15 12:55:53'),
(8, 2, NULL, NULL, 3, '2022-06-15 13:06:01', '2022-06-15 13:06:01'),
(9, 2, NULL, NULL, 4, '2022-06-15 13:06:01', '2022-06-15 13:06:01'),
(17, NULL, NULL, NULL, 4, '2022-06-16 15:01:36', '2022-06-16 15:01:36'),
(18, NULL, NULL, NULL, 3, '2022-06-16 15:01:36', '2022-06-16 15:01:36'),
(19, NULL, NULL, NULL, 1, '2022-06-16 15:06:23', '2022-06-16 15:06:23'),
(22, NULL, NULL, NULL, 4, '2022-06-16 15:06:23', '2022-06-16 15:06:23'),
(23, NULL, NULL, NULL, 5, '2022-06-17 09:06:00', '2022-06-17 09:06:00'),
(24, NULL, NULL, NULL, 6, '2022-06-17 09:06:00', '2022-06-17 09:06:00'),
(26, NULL, NULL, NULL, 4, '2022-06-17 09:09:54', '2022-06-17 09:09:54'),
(27, NULL, NULL, NULL, 6, '2022-06-17 09:13:15', '2022-06-17 09:13:15'),
(28, NULL, NULL, NULL, 6, '2022-06-17 09:16:14', '2022-06-17 09:16:14'),
(139, NULL, NULL, 1, 3, '2022-07-15 09:54:54', '2022-07-15 09:54:54'),
(140, NULL, NULL, 1, 10, '2022-07-15 09:54:54', '2022-07-15 09:54:54'),
(141, NULL, NULL, 1, 11, '2022-07-15 09:54:54', '2022-07-15 09:54:54'),
(142, NULL, NULL, 1, 12, '2022-07-15 09:54:54', '2022-07-15 09:54:54'),
(143, 3, NULL, NULL, 4, '2022-07-21 09:18:34', '2022-07-21 09:18:34'),
(144, 3, NULL, NULL, 5, '2022-07-21 09:18:34', '2022-07-21 09:18:34'),
(145, 3, NULL, NULL, 6, '2022-07-21 09:18:34', '2022-07-21 09:18:34'),
(146, 3, NULL, NULL, 12, '2022-07-21 09:18:34', '2022-07-21 09:18:34'),
(147, NULL, 2, NULL, 4, '2022-07-25 12:57:10', '2022-07-25 12:57:10'),
(148, NULL, 2, NULL, 5, '2022-07-25 12:57:10', '2022-07-25 12:57:10'),
(149, NULL, 2, NULL, 6, '2022-07-25 12:57:10', '2022-07-25 12:57:10'),
(150, NULL, 2, NULL, 12, '2022-07-25 12:57:10', '2022-07-25 12:57:10'),
(151, NULL, 2, NULL, 8, '2022-07-25 12:57:10', '2022-07-25 12:57:10'),
(160, NULL, NULL, 2, 2, '2022-07-25 13:03:07', '2022-07-25 13:03:07'),
(161, NULL, NULL, 2, 6, '2022-07-25 13:03:07', '2022-07-25 13:03:07'),
(162, NULL, NULL, 2, 7, '2022-07-25 13:03:08', '2022-07-25 13:03:08'),
(163, NULL, NULL, 2, 12, '2022-07-25 13:03:08', '2022-07-25 13:03:08'),
(164, NULL, 1, NULL, 7, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(165, NULL, 1, NULL, 6, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(166, NULL, 1, NULL, 4, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(167, NULL, 1, NULL, 3, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(168, NULL, 1, NULL, 2, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(169, NULL, 1, NULL, 12, '2022-07-25 13:52:10', '2022-07-25 13:52:10'),
(229, 33, NULL, NULL, 1, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(230, 33, NULL, NULL, 3, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(231, 33, NULL, NULL, 4, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(232, 33, NULL, NULL, 6, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(233, 33, NULL, NULL, 7, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(234, 33, NULL, NULL, 10, '2022-10-21 09:26:35', '2022-10-21 09:26:35'),
(241, 1, NULL, NULL, 1, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(242, 1, NULL, NULL, 2, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(243, 1, NULL, NULL, 4, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(244, 1, NULL, NULL, 3, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(245, 1, NULL, NULL, 6, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(246, 1, NULL, NULL, 8, '2022-10-27 14:54:36', '2022-10-27 14:54:36'),
(259, 35, NULL, NULL, 1, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(260, 35, NULL, NULL, 2, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(261, 35, NULL, NULL, 3, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(262, 35, NULL, NULL, 5, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(263, 35, NULL, NULL, 4, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(264, 35, NULL, NULL, 6, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(265, 35, NULL, NULL, 7, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(266, 35, NULL, NULL, 8, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(267, 35, NULL, NULL, 12, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(268, 35, NULL, NULL, 11, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(269, 35, NULL, NULL, 9, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(270, 35, NULL, NULL, 10, '2022-10-28 09:02:47', '2022-10-28 09:02:47'),
(277, 38, NULL, NULL, 1, '2022-11-14 08:01:16', '2022-11-14 08:01:16'),
(278, 38, NULL, NULL, 2, '2022-11-14 08:01:16', '2022-11-14 08:01:16'),
(279, 38, NULL, NULL, 3, '2022-11-14 08:01:16', '2022-11-14 08:01:16'),
(300, 39, NULL, NULL, 2, '2022-11-17 08:53:36', '2022-11-17 08:53:36'),
(301, 39, NULL, NULL, 3, '2022-11-17 08:53:36', '2022-11-17 08:53:36'),
(302, 39, NULL, NULL, 9, '2022-11-17 08:53:36', '2022-11-17 08:53:36'),
(303, 39, NULL, NULL, 10, '2022-11-17 08:53:36', '2022-11-17 08:53:36'),
(311, 4, NULL, NULL, 9, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(312, 4, NULL, NULL, 12, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(313, 4, NULL, NULL, 3, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(314, 4, NULL, NULL, 4, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(315, 4, NULL, NULL, 7, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(316, 4, NULL, NULL, 11, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(317, 4, NULL, NULL, 1, '2022-12-30 09:53:02', '2022-12-30 09:53:02'),
(320, 5, NULL, NULL, 1, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(321, 5, NULL, NULL, 3, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(322, 5, NULL, NULL, 4, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(323, 5, NULL, NULL, 6, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(324, 5, NULL, NULL, 8, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(325, 5, NULL, NULL, 12, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(326, 5, NULL, NULL, 11, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(327, 5, NULL, NULL, 10, '2023-03-15 08:43:17', '2023-03-15 08:43:17'),
(353, NULL, NULL, 3, 1, '2023-03-16 08:59:02', '2023-03-16 08:59:02'),
(354, NULL, NULL, 3, 3, '2023-03-16 08:59:02', '2023-03-16 08:59:02'),
(355, NULL, NULL, 3, 4, '2023-03-16 08:59:02', '2023-03-16 08:59:02'),
(356, 6, NULL, NULL, 1, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(357, 6, NULL, NULL, 3, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(358, 6, NULL, NULL, 10, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(359, 6, NULL, NULL, 12, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(360, 6, NULL, NULL, 6, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(361, 6, NULL, NULL, 4, '2023-03-16 09:30:47', '2023-03-16 09:30:47'),
(362, 8, NULL, NULL, 3, '2023-03-16 09:56:38', '2023-03-16 09:56:38'),
(363, 8, NULL, NULL, 1, '2023-03-16 09:56:38', '2023-03-16 09:56:38'),
(364, 8, NULL, NULL, 4, '2023-03-16 09:56:38', '2023-03-16 09:56:38'),
(365, 8, NULL, NULL, 8, '2023-03-16 09:56:38', '2023-03-16 09:56:38'),
(406, NULL, 3, NULL, 3, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(407, NULL, 3, NULL, 4, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(408, NULL, 3, NULL, 8, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(409, NULL, 3, NULL, 12, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(410, NULL, 3, NULL, 11, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(411, NULL, 3, NULL, 10, '2023-03-17 16:27:19', '2023-03-17 16:27:19'),
(453, 15, NULL, NULL, 1, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(454, 15, NULL, NULL, 3, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(455, 15, NULL, NULL, 4, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(456, 15, NULL, NULL, 8, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(457, 15, NULL, NULL, 10, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(458, 15, NULL, NULL, 11, '2023-03-22 11:46:33', '2023-03-22 11:46:33'),
(459, NULL, NULL, 5, 1, '2023-03-22 11:53:35', '2023-03-22 11:53:35'),
(460, NULL, NULL, 5, 4, '2023-03-22 11:53:35', '2023-03-22 11:53:35'),
(461, NULL, NULL, 5, 3, '2023-03-22 11:53:35', '2023-03-22 11:53:35'),
(466, NULL, NULL, 4, 1, '2023-03-22 14:00:21', '2023-03-22 14:00:21'),
(467, NULL, NULL, 4, 3, '2023-03-22 14:00:21', '2023-03-22 14:00:21'),
(468, NULL, NULL, 4, 4, '2023-03-22 14:00:21', '2023-03-22 14:00:21'),
(469, NULL, NULL, 4, 8, '2023-03-22 14:00:21', '2023-03-22 14:00:21'),
(476, 11, NULL, NULL, 1, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(477, 11, NULL, NULL, 2, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(478, 11, NULL, NULL, 3, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(479, 11, NULL, NULL, 4, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(480, 11, NULL, NULL, 6, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(481, 11, NULL, NULL, 10, '2023-03-22 14:18:39', '2023-03-22 14:18:39'),
(482, 13, NULL, NULL, 1, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(483, 13, NULL, NULL, 3, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(484, 13, NULL, NULL, 4, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(485, 13, NULL, NULL, 8, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(486, 13, NULL, NULL, 10, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(487, 13, NULL, NULL, 11, '2023-03-22 14:21:29', '2023-03-22 14:21:29'),
(488, 12, NULL, NULL, 1, '2023-03-22 14:24:54', '2023-03-22 14:24:54'),
(489, 12, NULL, NULL, 4, '2023-03-22 14:24:54', '2023-03-22 14:24:54'),
(490, 12, NULL, NULL, 6, '2023-03-22 14:24:54', '2023-03-22 14:24:54'),
(491, 12, NULL, NULL, 8, '2023-03-22 14:24:54', '2023-03-22 14:24:54'),
(492, 12, NULL, NULL, 3, '2023-03-22 14:24:54', '2023-03-22 14:24:54'),
(493, 14, NULL, NULL, 1, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(494, 14, NULL, NULL, 3, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(495, 14, NULL, NULL, 4, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(496, 14, NULL, NULL, 8, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(497, 14, NULL, NULL, 11, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(498, 14, NULL, NULL, 12, '2023-03-22 14:31:24', '2023-03-22 14:31:24'),
(499, 16, NULL, NULL, 1, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(500, 16, NULL, NULL, 3, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(501, 16, NULL, NULL, 4, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(502, 16, NULL, NULL, 8, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(503, 16, NULL, NULL, 11, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(504, 16, NULL, NULL, 10, '2023-03-22 15:56:14', '2023-03-22 15:56:14'),
(516, 17, NULL, NULL, 1, '2023-03-22 16:52:53', '2023-03-22 16:52:53'),
(517, 17, NULL, NULL, 4, '2023-03-22 16:52:53', '2023-03-22 16:52:53'),
(518, 17, NULL, NULL, 10, '2023-03-22 16:52:53', '2023-03-22 16:52:53'),
(519, 17, NULL, NULL, 11, '2023-03-22 16:52:53', '2023-03-22 16:52:53'),
(520, 17, NULL, NULL, 8, '2023-03-22 16:52:53', '2023-03-22 16:52:53'),
(521, NULL, NULL, 7, 8, '2023-03-23 09:50:27', '2023-03-23 09:50:27'),
(522, NULL, NULL, 7, 10, '2023-03-23 09:50:27', '2023-03-23 09:50:27'),
(523, NULL, NULL, 7, 3, '2023-03-23 09:50:27', '2023-03-23 09:50:27'),
(524, NULL, NULL, 7, 1, '2023-03-23 09:50:27', '2023-03-23 09:50:27'),
(525, NULL, NULL, 7, 4, '2023-03-23 09:50:27', '2023-03-23 09:50:27'),
(530, 18, NULL, NULL, 3, '2023-03-23 14:38:41', '2023-03-23 14:38:41'),
(531, 18, NULL, NULL, 4, '2023-03-23 14:38:41', '2023-03-23 14:38:41'),
(532, 18, NULL, NULL, 11, '2023-03-23 14:38:41', '2023-03-23 14:38:41'),
(533, 18, NULL, NULL, 1, '2023-03-23 14:38:41', '2023-03-23 14:38:41'),
(534, 18, NULL, NULL, 12, '2023-03-23 14:38:41', '2023-03-23 14:38:41'),
(568, NULL, NULL, 6, 1, '2023-03-28 12:50:38', '2023-03-28 12:50:38'),
(569, NULL, NULL, 6, 4, '2023-03-28 12:50:38', '2023-03-28 12:50:38'),
(570, NULL, NULL, 6, 11, '2023-03-28 12:50:38', '2023-03-28 12:50:38'),
(571, NULL, NULL, 6, 3, '2023-03-28 12:50:38', '2023-03-28 12:50:38'),
(572, NULL, NULL, 6, 6, '2023-03-28 12:50:38', '2023-03-28 12:50:38'),
(573, NULL, NULL, 8, 8, '2023-04-29 09:53:13', '2023-04-29 09:53:13'),
(574, NULL, NULL, 8, 10, '2023-04-29 09:53:13', '2023-04-29 09:53:13'),
(575, NULL, NULL, 8, 11, '2023-04-29 09:53:13', '2023-04-29 09:53:13'),
(576, NULL, NULL, 9, 1, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(577, NULL, NULL, 9, 3, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(578, NULL, NULL, 9, 7, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(579, NULL, NULL, 9, 8, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(580, NULL, NULL, 9, 9, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(581, NULL, NULL, 9, 11, '2023-04-30 17:07:36', '2023-04-30 17:07:36'),
(582, NULL, 4, NULL, 1, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(583, NULL, 4, NULL, 3, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(584, NULL, 4, NULL, 4, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(585, NULL, 4, NULL, 6, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(586, NULL, 4, NULL, 8, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(587, NULL, 4, NULL, 11, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(588, NULL, 4, NULL, 12, '2023-05-09 10:40:58', '2023-05-09 10:40:58'),
(589, NULL, NULL, 10, 10, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(590, NULL, NULL, 10, 1, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(591, NULL, NULL, 10, 6, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(592, NULL, NULL, 10, 4, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(593, NULL, NULL, 10, 8, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(594, NULL, NULL, 10, 11, '2023-05-09 15:05:43', '2023-05-09 15:05:43'),
(595, NULL, NULL, 11, 1, '2023-05-09 15:26:58', '2023-05-09 15:26:58'),
(596, NULL, NULL, 11, 4, '2023-05-09 15:26:58', '2023-05-09 15:26:58'),
(597, NULL, NULL, 11, 11, '2023-05-09 15:26:58', '2023-05-09 15:26:58'),
(598, NULL, NULL, 13, 1, '2023-05-11 15:07:18', '2023-05-11 15:07:18'),
(599, NULL, NULL, 13, 4, '2023-05-11 15:07:18', '2023-05-11 15:07:18'),
(600, NULL, NULL, 13, 6, '2023-05-11 15:07:18', '2023-05-11 15:07:18'),
(601, NULL, NULL, 13, 8, '2023-05-11 15:07:18', '2023-05-11 15:07:18'),
(612, NULL, NULL, 14, 1, '2023-05-15 20:16:42', '2023-05-15 20:16:42'),
(613, NULL, NULL, 14, 6, '2023-05-15 20:16:42', '2023-05-15 20:16:42'),
(614, NULL, NULL, 14, 4, '2023-05-15 20:16:42', '2023-05-15 20:16:42'),
(615, NULL, NULL, 14, 8, '2023-05-15 20:16:42', '2023-05-15 20:16:42'),
(616, NULL, NULL, 14, 11, '2023-05-15 20:16:42', '2023-05-15 20:16:42'),
(617, 19, NULL, NULL, 1, '2023-06-08 15:24:18', '2023-06-08 15:24:18'),
(618, 19, NULL, NULL, 3, '2023-06-08 15:24:18', '2023-06-08 15:24:18'),
(621, 21, NULL, NULL, 4, '2023-06-09 12:50:16', '2023-06-09 12:50:16'),
(622, 21, NULL, NULL, 11, '2023-06-09 12:50:16', '2023-06-09 12:50:16'),
(623, 22, NULL, NULL, 8, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(624, 22, NULL, NULL, 1, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(625, 22, NULL, NULL, 4, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(626, 22, NULL, NULL, 10, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(627, 22, NULL, NULL, 11, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(628, 22, NULL, NULL, 6, '2023-06-13 14:29:01', '2023-06-13 14:29:01'),
(635, NULL, NULL, 15, 10, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(636, NULL, NULL, 15, 4, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(637, NULL, NULL, 15, 11, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(638, NULL, NULL, 15, 6, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(639, NULL, NULL, 15, 8, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(640, NULL, NULL, 15, 1, '2023-06-13 15:45:17', '2023-06-13 15:45:17'),
(657, 23, NULL, NULL, 4, '2023-06-16 07:57:48', '2023-06-16 07:57:48'),
(658, 23, NULL, NULL, 3, '2023-06-16 07:57:48', '2023-06-16 07:57:48'),
(659, 23, NULL, NULL, 12, '2023-06-16 07:57:48', '2023-06-16 07:57:48'),
(660, 23, NULL, NULL, 11, '2023-06-16 07:57:48', '2023-06-16 07:57:48'),
(661, NULL, 5, NULL, 2, '2023-06-16 13:12:23', '2023-06-16 13:12:23'),
(662, NULL, 5, NULL, 3, '2023-06-16 13:12:23', '2023-06-16 13:12:23'),
(663, NULL, 5, NULL, 4, '2023-06-16 13:12:23', '2023-06-16 13:12:23'),
(664, NULL, 5, NULL, 12, '2023-06-16 13:12:23', '2023-06-16 13:12:23'),
(679, NULL, 9, NULL, 2, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(680, NULL, 9, NULL, 4, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(681, NULL, 9, NULL, 5, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(682, NULL, 9, NULL, 8, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(683, NULL, 9, NULL, 6, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(684, NULL, 9, NULL, 12, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(685, NULL, 9, NULL, 11, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(686, NULL, 9, NULL, 9, '2023-06-21 13:19:19', '2023-06-21 13:19:19'),
(687, NULL, 8, NULL, 2, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(688, NULL, 8, NULL, 3, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(689, NULL, 8, NULL, 12, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(690, NULL, 8, NULL, 11, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(691, NULL, 8, NULL, 1, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(692, NULL, 8, NULL, 4, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(693, NULL, 8, NULL, 6, '2023-06-22 15:46:18', '2023-06-22 15:46:18'),
(694, NULL, NULL, 16, 1, '2023-06-27 14:17:23', '2023-06-27 14:17:23'),
(695, NULL, NULL, 16, 3, '2023-06-27 14:17:23', '2023-06-27 14:17:23'),
(696, NULL, NULL, 16, 4, '2023-06-27 14:17:23', '2023-06-27 14:17:23'),
(697, NULL, NULL, 16, 11, '2023-06-27 14:17:23', '2023-06-27 14:17:23'),
(698, NULL, NULL, 17, 3, '2023-06-27 15:04:21', '2023-06-27 15:04:21'),
(699, NULL, NULL, 17, 1, '2023-06-27 15:04:21', '2023-06-27 15:04:21'),
(700, NULL, NULL, 17, 4, '2023-06-27 15:04:21', '2023-06-27 15:04:21'),
(701, NULL, NULL, 17, 12, '2023-06-27 15:04:21', '2023-06-27 15:04:21'),
(708, NULL, 10, NULL, 12, '2023-07-04 09:31:43', '2023-07-04 09:31:43'),
(709, NULL, 10, NULL, 3, '2023-07-04 09:31:43', '2023-07-04 09:31:43'),
(710, NULL, 10, NULL, 4, '2023-07-04 09:31:43', '2023-07-04 09:31:43'),
(715, 25, NULL, NULL, 4, '2023-07-04 14:18:20', '2023-07-04 14:18:20'),
(716, 25, NULL, NULL, 1, '2023-07-04 14:18:20', '2023-07-04 14:18:20'),
(717, 25, NULL, NULL, 10, '2023-07-04 14:18:20', '2023-07-04 14:18:20'),
(718, 25, NULL, NULL, 8, '2023-07-04 14:18:20', '2023-07-04 14:18:20'),
(719, NULL, 11, NULL, 1, '2023-07-05 09:08:49', '2023-07-05 09:08:49'),
(720, NULL, 11, NULL, 2, '2023-07-05 09:08:49', '2023-07-05 09:08:49'),
(721, NULL, 11, NULL, 3, '2023-07-05 09:08:49', '2023-07-05 09:08:49'),
(722, NULL, 11, NULL, 4, '2023-07-05 09:08:49', '2023-07-05 09:08:49'),
(723, NULL, 12, NULL, 2, '2023-07-05 13:09:31', '2023-07-05 13:09:31'),
(724, NULL, 12, NULL, 3, '2023-07-05 13:09:31', '2023-07-05 13:09:31'),
(725, NULL, 12, NULL, 4, '2023-07-05 13:09:31', '2023-07-05 13:09:31'),
(726, NULL, 12, NULL, 12, '2023-07-05 13:09:31', '2023-07-05 13:09:31'),
(727, NULL, 12, NULL, 1, '2023-07-05 13:09:31', '2023-07-05 13:09:31'),
(728, NULL, NULL, 18, 10, '2023-07-06 08:19:41', '2023-07-06 08:19:41'),
(729, NULL, NULL, 18, 1, '2023-07-06 08:19:41', '2023-07-06 08:19:41'),
(730, NULL, NULL, 18, 4, '2023-07-06 08:19:41', '2023-07-06 08:19:41'),
(731, NULL, NULL, 18, 8, '2023-07-06 08:19:41', '2023-07-06 08:19:41'),
(732, NULL, 13, NULL, 12, '2023-07-11 09:51:33', '2023-07-11 09:51:33'),
(733, NULL, 13, NULL, 1, '2023-07-11 09:51:33', '2023-07-11 09:51:33'),
(734, NULL, 13, NULL, 3, '2023-07-11 09:51:33', '2023-07-11 09:51:33'),
(735, NULL, 13, NULL, 4, '2023-07-11 09:51:33', '2023-07-11 09:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `nbr_etoiles`, `nb_visite`, `prix_min`, `prix_max`, `accepter_regles`, `image`, `created_at`, `updated_at`) VALUES
(11, 293, 'Hotel Rural Casa Linda', 'hotel-rural-casa-linda', 'Auberge Casa Linda est un hôtel rural avec café-restaurant à proximité de la médina de Chefchaouen au nord du Maroc. Nous offrons des chambres doubles et triples avec salle de bain et balcon, des suites, et un appartement de deux chambres doubles avec salle de bain, salon et balcon et un hôtel rural confortable avec TV, internet -Wifi et air conditionné optionnel. Vous profiterez de terrasses avec de nombreux arbres et de grands jardins, d\'une grande piscine, ainsi que d’un potager dans un domaine avec des vues incroyables sur la médina et la vallée de Chaouen.\nUn gîte rural idéal pour se relaxer et jouir de la nature dans une zone d’agriculture traditionnelle proche de la médina. Un joli chemin vous mène en 15 minutes à pied (5 min. en voiture) jusqu’à Uta el-Hammam, la place centrale de Chefchaouen.', '0668554552', 16, 'Sidi Boujemaa , Quartiere Loubar, 91000 Chefchaouene, Morocco', 'casalindachaouen@yahoo.com', NULL, 'https://casalindachaouen.com/fr-hotel-rural-chefchaouen.html', NULL, NULL, NULL, '0668554552', NULL, 0, 399, 898, 1, NULL, '2023-03-16 14:19:00', '2023-03-22 14:18:39'),
(12, 291, 'Hotel Loubar', 'hotel-loubar', 'Hotel Loubar Chefchaouen est un hôtel de 2 étoiles, situé à 1.7 km de Masjid Al Sounna et à 0.8 km de Kasbah Museum. Du Wi-Fi gratuit est disponible dans les zones publiques, ainsi qu\'un toit-terrasse, un parking libre-service gratuit et une cour sont disponibles sur place.\nLa propriété est située à 2 km du centre-ville de Chefchaouen et à 70 km de l\'aéroport de Tétouan - Sania R\'mel. La propriété est située à côté de Kasbah de Chefchaouen. La Mosquée se trouve près de la propriété.', '0539987564', 16, 'Route Rass El Maa, Chefchaouen 91000 Maroc', 'hotel-loubar@hotmail.com', NULL, NULL, 'https://www.facebook.com/hoteloubar/', NULL, NULL, '0619922580', 2, 0, 440, 1400, 1, NULL, '2023-03-16 14:33:25', '2023-03-23 08:53:03'),
(13, 313, 'Casa Familia', 'casa-familia', 'Située à Chefchaouen, la Casa Familia propose des chambres climatisées et un parking privé gratuit. L\'établissement se trouve à 15 minutes à pied de la médina.\nToutes les chambres comprennent une télévision par câble à écran plat. Certains logements comprennent un coin salon, idéal pour se détendre après une journée bien remplie. Plusieurs s\'ouvrent sur une terrasse ou un balcon. Les chambres comprennent une salle de bains privative. Une connexion Wi-Fi est disponible gratuitement.\nL\'établissement possède une réception ouverte 24h/24 et un parking privé.\nLe mont J. Tissouka se trouve à 5 km de la Casa Familia. L\'aéroport de Tétouan-Sania R\'mel, le plus proche, est à 47 km.', '0539882846', 16, 'Avenue sidi abd hamid avenue hassan 2, 91000 Chefchaouen, Maroc', 'casafamiliaguest@gmail.com', NULL, NULL, 'https://www.facebook.com/CASAFAMILIACHEFCHAOUEN/', NULL, NULL, '0665290142', 3, 0, 652, 652, 1, NULL, '2023-03-22 10:36:41', '2023-03-22 10:41:08'),
(14, 314, 'Casa Perleta', 'casa-perleta', 'La Casa Perleta se trouve à Chefchaouen, près de la place Outa El Hammam et de Chefchaouen. L\'établissement se trouve à 6,1 km de Tahar, à 6,2 km d\'Aïn er Rami et à 6,5 km de Gharouzim. Vous disposerez d’une réception ouverte 24h/24 et d’une connexion Wi-Fi gratuite dans l’ensemble des locaux et d’une terrasse.\nLes chambres de cet hôtel comprennent une armoire. Toutes les chambres du Casa Perleta disposent d\'une salle de bains privative et de la climatisation. Certaines comprennent également un coin salon. Les serviettes de toilette et le linge de lit sont fournis.\nLa Casa Perleta sert un petit-déjeuner continental.\nLes sites d\'intérêt à proximité de l\'hôtel incluent Khandak Semmar, la place Mohammed 5 et la Kasba. L’aéroport de Tétouan-Sania R’mel, le plus proche, est implanté à 67 km. Un service de navette aéroport peut être organisé par l’établissement moyennant des frais supplémentaires.', '0539988979', 16, 'Bab souk Avenue hassan 1,no 68, 91000 Chefchaouene, Morocco', 'book@casaperleta.com', NULL, 'http://casaperleta.com/', 'https://www.facebook.com/CasaPerlera/', NULL, NULL, '0665290142', NULL, 0, 629, 1206, 1, NULL, '2023-03-22 10:55:29', '2023-03-22 11:07:52'),
(15, 315, 'Puerta Azul Hotel', 'puerta-azul-hotel', 'Situé à Chefchaouen et doté d’une terrasse et d’un salon commun, le Puerta Azul propose des hébergements avec un patio ou un balcon, une télévision à écran plat et une connexion Wi-Fi gratuite.\nLa salle de bains privative entièrement équipée est pourvue d’une douche et d’articles de toilette gratuits.\nChaque matin, vous pourrez déguster un petit-déjeuner continental, végétarien ou végétalien.\nLes sites d\'intérêt à proximité du Bed & Breakfast incluent la Kasba, la place Mohammed 5 et la place Outa El Hammam. L\'aéroport Sania Ramel, le plus proche, se situe à 70 km de Puerta Azul qui assure un service de navette aéroport moyennant des frais supplémentaires.', '0539987736', 16, 'Av. Maghreb arabe, 91000 Chefchaouene, Morocco', 'puertaazulchaouen@gmail.com', NULL, 'https://puertaazulchaouen.com/', 'https://www.facebook.com/PuertaAzulChefchaouen/', NULL, NULL, '0665290142', 3, 0, 697, 812, 1, NULL, '2023-03-22 11:26:08', '2023-03-22 11:47:04'),
(16, 270, 'Hotel Chams', 'hotel-chams', 'L\'Hotel Chams est situé à Chefchaouen, dans la région de Tanger-Tétouan, à 2,4 km de la Kasbah. Il possède une cuisine commune, un restaurant et une terrasse. Un salon commun ainsi que des services d\'étage et de change sont à votre disposition.\nLeur salle de bains privative est pourvue d\'articles de toilette gratuits. Certaines offrent une vue sur la ville.\nL\'hôtel sert un petit-déjeuner continental ou halal.\nLe personnel de la réception ouverte 24h/24 parle français, anglais et espagnol.\nL\'Hotel Chams se trouve à proximité de sites d\'intérêt tels que Khandak Semmar, la place Mohammed V et la place Outa El Hammam. L\'aéroport le plus proche, celui de Tétouan-Sania R\'mel, est situé à 68 km. Un service de navette aéroport peut être assuré moyennant des frais supplémentaires.', '0539986993', 16, 'Rue lala lhora Qua kharazzine BP22, 91000 Chefchaouen, Maroc', 'chaouenchams@gmail.com', NULL, NULL, 'https://www.facebook.com/Hotel.Chams07/', NULL, NULL, '0665290142', 2, 0, 497, 718, 1, NULL, '2023-03-22 15:45:18', '2023-03-23 08:48:00'),
(17, 288, 'Hotel Jibal Chaouen', 'hotel-jibal-chaouen', 'Situé à Chefchaouen, à moins de 1 km de la Kasbah et à 1,4 km de la place Mohammed V, l\'Hotel Jibal Chaouen propose un salon commun. Vous bénéficierez gratuitement d\'une connexion Wi-Fi dans l\'ensemble des locaux et d\'un parking privé. Des services d\'étage et de change sont assurés.\n\nUn petit-déjeuner buffet est servi tous les matins sur place.\n\nParlant arabe, anglais, espagnol et français, le personnel de la réception ouverte 24h/24 se fera un plaisir de vous aider à tout moment de la journée.\n\nVous séjournerez à 1,1 km de la place Outa El Hammam et à 2,6 km du parc Khandak Semmar. L\'aéroport de Tétouan-Sania R\'mel, le plus proche, est implanté à 71 km.', '0539882505', 16, 'Av. Ras Elma, 91000 Chefchaouene, Morocco', 'hoteljibalchaouen@gmail.com', NULL, NULL, 'https://www.facebook.com/hoteljibalchaouen/', 'https://www.instagram.com/hoteljibalchaouen/', NULL, NULL, 2, 0, 652, 1521, 1, NULL, '2023-03-22 16:42:21', '2023-03-22 16:51:13'),
(18, 320, 'Hotel Sevilla', 'hotel-sevilla', 'Vous cherchez un endroit où séjourner à Chefchaouen ? Voilà ce qu’il vous faut : l\'Hotel Sevilla, un petit hôtel économique qui vous apporte le meilleur de Chefchaouen à votre portée.\n\nLes chambres comprennent une télévision à écran plat. Le petit hôtel met également à votre disposition un wi-fi gratuit.\n\nL\'Hotel Sevilla dispose d\'une réception ouverte 24 heures sur 24 et d\'un stockage des bagages, pour rendre votre séjour plus agréable. Si vous vous rendez à l\'Hotel Sevilla en véhicule, n\'hésitez pas à utiliser le parking public payant à proximité.\n\nSitué non loin de Grand Mosque (0,2 km), l\'Hotel Sevilla est parfait pour découvrir les différentes attractions de Chefchaouen.\n\nVous aimez les restaurants de poissons et fruits de mer? Cela tombe bien, car l\'Hotel Sevilla est situé à deux pas de restaurants comme El Harti El Azhar Restaurant et Moulay Ali Ben Rachid Restaurant.\n\nVous souhaitez explorer les environs ? Partez à la découverte du Médina (1,0 km), Place Outa el Hammam & Kasbah (0,4 km) et Spanish Mosque (0,6 km), autant d\'attractions populaires de Chefchaouen situés à deux pas du petit hôtel.\n\nNous sommes sûrs que vous apprécierez votre séjour à l\'Hotel Sevilla car vous pourrez découvrir tout ce que Chefchaouen a à offrir.', '0539987244', 16, 'Avenue Allal Ben Abdellah Kharrazine, Chefchaouen', 'soufianaliti77@gmail.com', NULL, NULL, 'https://fr-fr.facebook.com/people/H%C3%B4tel-Sevilla-Chefchaouen/100067951515512/', NULL, NULL, '0661724479', NULL, 0, 191, 191, 1, NULL, '2023-03-23 14:23:05', '2023-03-23 14:46:17'),
(21, 333, 'Hotel Gernika', 'hotel-gernika', 'L’hôtel Gernika conserve l’esprit art déco de la ville de Chefchaouen à travers ses couleurs et sa décoration.\nLe Gernika est idéalement situé à proximité de Ras El Ma, la Kasbah et de la place Outa El Hammam et à moins de 1 km de la place Mohammed V.\nL’hôtel vous offre une vue unique sur la ville de Chefchaouen grâce à une terrasse spacieuse. \nLa réception est ouverte 24h/24 et une connexion WI-FI gratuite dans l’ensemble de ses locaux.', '0630108620', 16, 'Rue Ibn Asskar, Chefchaouen, 91000 Chefchaouen, Maroc', 'mohamedtouichar@gmail.com', NULL, NULL, 'https://www.facebook.com/pages/Hotel-Gernika/188103001294275', NULL, NULL, '0630108620', NULL, 0, 524, 720, 1, NULL, '2023-06-09 07:42:34', '2023-06-09 12:51:26'),
(22, 338, 'Yousurf Surf House', 'yousurf-surf-house', 'Doté d\'un salon commun, d\'une terrasse et d\'une vue sur la ville, le Yousurf Surf House est situé à Essaouira, à 700 mètres de la plage d\'Essaouira. Il propose un service d\'étage, un bureau d\'excursions et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. L\'établissement assure des services de navette et de location de vélos cours de kite surf surf windsurf.\nToutes les chambres de cette maison d\'hôtes comprennent une armoire. Toutes les chambres disposent d’une bouilloire. Certaines possèdent un balcon et d\'autres offrent une vue sur le jardin. Le linge de lit et les serviettes sont fournis.\nUn petit-déjeuner à la carte, continental et végétarien est servi tous les matins. Le restaurant sur place sert une cuisine marocaine. Des plats végétariens, végétaliens et sans produits laitiers sont également disponibles sur demande.\nLe parcours de golf de Mogador se trouve à 4,1 km du Yousurf Surf House. L\'aéroport d\'Essaouira-Mogador, le plus proche, est implanté à 15 km.', '0700127082', 19, '26 quartiers des dunes Essaouira Maroc', 'yousurfessaouira@gmail.com', NULL, 'yousurfhouse.com', 'yousurfessaouira', 'yousurfessaouira / surfhouseessaouira', NULL, '0700127082', 1, 0, 1150, 2100, 1, NULL, '2023-06-13 14:18:36', '2023-06-13 15:15:59'),
(23, 341, 'Hotel Café Manal', 'hotel-cafe-manal', 'Fixé à 25 minutes de marche d\'allure de la Plage Taghart, Hotel Manal Essaouira se trouve près de Jewish Cemetery.\n\nEn séjournant dans l\'une de 13 chambres de toute la propriété, les clients ont accès à un patio et un balcon. Les touches jolies qui feront plus agréable votre séjour comprennent un bidet, une douche ouverte et une toilette séparée.\n\nHotel Manal est à 1,1 km de Sqala du Port. L\'hôtel est située à 2 km du centre-ville d\'Essaouira. Tout l\'hôtel se trouve à proximité de Bab el-Sebâa.\n\nL\'O\'Bleu Mogador est à seulement 10 minutes de marche.', '0615813970', 19, 'Bb 2 Mars, Bab Doukkala, Essaouira 44400 Maroc', 'redwanafif23@gmail.com', NULL, NULL, NULL, NULL, NULL, '0615813970', NULL, 0, 170, 270, 1, NULL, '2023-06-15 14:24:14', '2023-06-16 07:57:48'),
(24, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, '2023-06-27 14:18:51', '2023-06-27 14:18:51'),
(25, 356, 'Sable Beach House', 'sable-beach-house', 'Le Sable beach surf house taghazout propose des chambres à Taghazout, à moins de 300 mètres de la plage de Taghazout et à 1,7 km de celle de Madraba. Il propose une cuisine commune et une terrasse. Le parcours de golf Tazegzout se trouve à 4,2 km de l\'auberge de jeunesse et le parc aquatique Atlantica est à 8,1 km.\n\nLes chambres de cette auberge de jeunesse disposent d\'une salle de bains commune et d\'une connexion Wi-Fi gratuite. Certaines offrent une vue sur la mer.\n\nUn petit-déjeuner continental est servi tous les matins sur place.\n\nVous séjournerez à 17 km du port d\'Agadir et à 20 km du port de plaisance d\'Agadir. L\'aéroport le plus proche, celui d\'Agadir-Al Massira, est situé à 40 km. Un service de navette aéroport peut être assuré moyennant des frais supplémentaires.', '0604689422', 67, 'Taghazout centre 80022', 'sablehouseteam@gmail.com', NULL, NULL, 'https://www.facebook.com/profile.php?id=100065709182253', NULL, NULL, '0604689422', NULL, 0, 0, 0, 1, NULL, '2023-07-04 13:59:04', '2023-07-04 14:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_restaurant` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `libelle`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `created_at`, `updated_at`) VALUES
(66, 'images/hotels/hotel-jawhara-1.jpg', '87dbdb49-2244-4c26-9ecc-2be8d283edf7.jpg', 1, NULL, NULL, NULL, '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(68, 'images/hotels/hotel-jawhara-2.jpg', '65095ec2-47e5-46e6-8266-b490ca459e23.jpg', 1, NULL, 0, NULL, '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(75, 'images/hotels/hotel-les-perles-4.jpg', 'Photo27.jpg', 2, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(76, 'images/hotels/hotel-les-perles-5.jpg', 'Photo28.jpg', 2, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(77, 'images/hotels/hotel-les-perles-8.jpg', 'Photo28.jpg', 2, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(78, 'images/hotels/hotel-les-perles-9.jpg', 'Photo28.jpg', 2, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(79, 'images/hotels/hotel-les-perles-44.jpg', 'Photo28.jpg', 2, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(80, 'images/hotels/215812805.jpg', 'Photo28.jpg', NULL, NULL, NULL, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(84, 'images/hotels/4dE2UZ64gTVel9YanZ6CiHVWnMHW3ht51Zg0W6Jg.jpg', '7-de-11h-a-01h-reservations.jpg', NULL, NULL, NULL, NULL, '2022-05-10 14:46:38', '2022-05-10 14:46:38'),
(85, 'images/hotels/MONHDZXHpHep8pX9XauDlEaGUAmLzZdGSZnG4gs2.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(86, 'images/hotels/k6s8YLakbomSxxj3GOobWQfRxydfjrbRLL6UqK39.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(87, 'images/hotels/REQf92Ng5iE4DN8JdKmeV7uNaocIuYe0AYwaVH2R.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(88, 'images/hotels/vrscdjw6S7znVVGXM0gk7X6arXKEuBcrQxdLkk9z.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(89, 'images/hotels/YjKYUQqOjtquayKcVhJWQhTMKBukytMFLbrCOUJJ.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(90, 'images/hotels/TvjtIPtI6ddpcP4gFxYfo0lmjxiG7vTLD3ccDfIK.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(91, 'images/hotels/9ZNL2oy2QhXK4jtWFjAUUJaHtoiy9g4i1jiXJF6i.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(92, 'images/hotels/1XSanfffhfNUBR9L0eqw4ZQF2Jttil6FidYZFvWI.jpg', NULL, 3, NULL, NULL, NULL, '2022-05-26 08:38:27', '2022-05-26 08:38:27'),
(93, 'images/hotels/YLzbUGT9auUkKvuvxtnwCtpCTOTDFUxX5BlrqaWB.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(94, 'images/hotels/sxYMYtT81omv8dM75oVGiPUb0mJtP805iEGowXBl.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(95, 'images/hotels/3wdHS3hQPrwSJHrDpMmj7QJYw15zLTIn85VaAiZU.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(96, 'images/hotels/efZXpXwpRC8J2BYKKWRy6xeEkIvo9OAbh1zNV7Eq.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(97, 'images/hotels/3fCHZY8YJJOcDT6xEfXtD0K7cEHjq8FtqvvkUKka.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(98, 'images/hotels/8gvBHlGJ28sb9SXjMv1PuDaJ6pmImJbAVEnQ9pgg.jpg', NULL, 4, NULL, NULL, NULL, '2022-05-26 10:45:56', '2022-05-26 10:45:56'),
(100, 'images/maisons/JonFQZl7UjJjhlX4F8XmhUEFtvSAu6zLCkMkwxMM.jpg', NULL, NULL, NULL, 1, NULL, '2022-05-26 12:19:01', '2022-05-26 12:19:01'),
(101, 'images/maisons/YVILwMqvBs0mmzdJzJzWVj4k4s1R6BgbYikxptIV.jpg', NULL, NULL, NULL, 1, NULL, '2022-05-26 12:19:01', '2022-05-26 12:19:01'),
(102, 'images/maisons/brhUyNi2BaNSI66gAOOJrCJPzjZh8HdsVkO35MPx.jpg', NULL, NULL, NULL, 1, NULL, '2022-05-26 12:19:01', '2022-05-26 12:19:01'),
(103, 'images/maisons/M7HJ3iGqiauRvriv6icVkTDSkKbSqLae2AKPkBwY.jpg', NULL, NULL, NULL, 1, NULL, '2022-05-26 12:19:01', '2022-05-26 12:19:01'),
(104, 'images/maisons/obRja3cXq2d7BNzECy3jE49wAwmYUIriBSRw1D33.jpg', NULL, NULL, NULL, 2, NULL, '2022-05-26 13:06:27', '2022-05-26 13:06:27'),
(105, 'images/maisons/MGYzeaTunilpX0uYB7gOSzNNbdKTjWiwZ9wSWs0I.jpg', NULL, NULL, NULL, 2, NULL, '2022-05-26 13:06:27', '2022-05-26 13:06:27'),
(106, 'images/maisons/8WFlf1nyuhN62L2U5UadzQ2IIqsF9fPqFZq7ogSI.jpg', NULL, NULL, NULL, 2, NULL, '2022-05-26 13:06:27', '2022-05-26 13:06:27'),
(107, 'images/maisons/mwbBwWZL0ZQNCoe5esnOPlJBPjezhI2kjbXNbe7l.jpg', NULL, NULL, NULL, 2, NULL, '2022-05-26 13:06:27', '2022-05-26 13:06:27'),
(108, 'images/maisons/wDYnfGF1eQU6E1J2bzJheQG7EsGPFneiFcBF80oi.jpg', NULL, NULL, NULL, 2, NULL, '2022-05-26 13:06:27', '2022-05-26 13:06:27'),
(109, 'images/restaurants/tx2o3iRfroSntkWqlue1gvdOeYjWPgqXrgwERQWZ.jpg', NULL, NULL, NULL, NULL, 1, '2022-05-26 13:52:15', '2022-05-26 13:52:15'),
(110, 'images/restaurants/TxVcUmR4NldVtxiFsoQaRxM6qN7IjPfnadN7fnVr.jpg', NULL, NULL, NULL, NULL, 1, '2022-05-26 13:52:15', '2022-05-26 13:52:15'),
(111, 'images/restaurants/VU6YsYzXRUsQRrpZ5pvjbcEU0iig7IbPBeShGEo3.jpg', NULL, NULL, NULL, NULL, 1, '2022-05-26 13:52:15', '2022-05-26 13:52:15'),
(112, 'images/restaurants/QXt9MOymCaWwoEdTwofiwc26jfffBbAo1xw32x1J.jpg', NULL, NULL, NULL, NULL, 1, '2022-05-26 13:52:15', '2022-05-26 13:52:15'),
(113, 'images/restaurants/lOriQkzc195ig6l7jgEdjocaCbk0m65QoeRnqf9k.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(114, 'images/restaurants/NO4LiCvkBjy9t9qm53z5asc9nsRRTkj61xQpnRhy.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(115, 'images/restaurants/AXtmnhVienwRdvDMothdfWrB0WvQ6PqR4mibY8Qd.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(116, 'images/restaurants/R2mdlbdGrJMdaFmshxP9GCA1TlpoGFhvJ1MCGKVQ.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(117, 'images/restaurants/A1JBEAPdNygIsFGYOHUChjy9dNQOgOLfBettl2Ag.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(118, 'images/restaurants/XSo8CRBXPbkmZmZ1y9QT64V7SCcDiyIOa3YSPdo5.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(119, 'images/restaurants/aQ0SQYXBibH993pm55UYovjU0A7rY8ZFjGmeI2jG.jpg', NULL, NULL, NULL, NULL, 2, '2022-05-26 14:16:50', '2022-05-26 14:16:50'),
(120, 'images/riads/nxg2gTcjl1ZusbDZ8QJIyVjO7OO9of3rWSEtXGuL.jpg', NULL, NULL, 1, NULL, NULL, '2022-05-26 14:39:40', '2022-05-26 14:39:40'),
(121, 'images/riads/Oxnaxtan4Cj0s6T77Rov3aallgBWgknm7FjBWYBn.jpg', NULL, NULL, 1, NULL, NULL, '2022-05-26 14:39:40', '2022-05-26 14:39:40'),
(122, 'images/riads/m1E2Jnt5t5Tq4GpTNoELOUWdOE3aU8JoGuMzfT4C.jpg', NULL, NULL, 1, NULL, NULL, '2022-05-26 14:39:40', '2022-05-26 14:39:40'),
(123, 'images/riads/UPkzRh0YiXzhJVUTBoWBMUNyB9j50aAqWKdzUZMg.jpg', NULL, NULL, 1, NULL, NULL, '2022-05-26 14:39:40', '2022-05-26 14:39:40'),
(124, 'images/riads/DxbIN5kvLfEz4mQGuR8q0Ig55yg5JCHwAphQ6aol.jpg', NULL, NULL, 1, NULL, NULL, '2022-05-26 14:39:40', '2022-05-26 14:39:40'),
(125, 'images/riads/W7LJB2YYMUs201HqB11oBUokUvMRy2flQCTDQemY.jpg', NULL, NULL, 2, NULL, NULL, '2022-05-26 15:16:29', '2022-05-26 15:16:29'),
(126, 'images/riads/CjyP5xpCsYCBiMC4fXonPAIaxyxUfgOxhIKGG7BY.jpg', NULL, NULL, 2, NULL, NULL, '2022-05-26 15:16:29', '2022-05-26 15:16:29'),
(127, 'images/riads/NmckIgLltbjm7xAtO34GijE5JDCXpfNkjIH0Jt22.jpg', NULL, NULL, 2, NULL, NULL, '2022-05-26 15:16:29', '2022-05-26 15:16:29'),
(128, 'images/riads/g6BQ0Qd8XdxF2WgDotLu1Ml2NFWD6yk9aQ81wbAQ.jpg', NULL, NULL, 2, NULL, NULL, '2022-05-26 15:16:29', '2022-05-26 15:16:29'),
(129, 'images/riads/AixDHDPn8T9SWwrP7bvvN5Aq7Oi5JtSMlxINLZSm.png', NULL, NULL, NULL, NULL, NULL, '2022-06-15 08:45:57', '2022-06-15 08:45:57'),
(130, 'images/riads/nUEdIBt7jBdD0qtXmvXQARlFrr15HdmD1ySOMKP2.png', NULL, NULL, NULL, NULL, NULL, '2022-06-15 08:45:57', '2022-06-15 08:45:57'),
(154, 'images/hotels/ZN1xi1gIdVnB31CG0yXe2S7Grsf3gvTRqlxm1O82.jpg', NULL, 3, NULL, NULL, NULL, '2022-06-28 13:49:38', '2022-06-28 13:49:38'),
(155, 'images/hotels/UhAx6dpjhkPPyrOitMfhE7fzZm9878UkPThwLTLL.jpg', NULL, 3, NULL, NULL, NULL, '2022-06-28 13:49:38', '2022-06-28 13:49:38'),
(156, 'images/hotels/LXX8zLBdbR4VyyoSWM6bhWbjMEjNMQPU72SKQNrX.jpg', NULL, 3, NULL, NULL, NULL, '2022-06-28 13:49:38', '2022-06-28 13:49:38'),
(157, 'images/hotels/lgQnLY2hQLbQ1NfQMo8iU77bKX1yzFcUk2jSxOIq.jpg', NULL, 3, NULL, NULL, NULL, '2022-06-28 13:49:38', '2022-06-28 13:49:38'),
(210, 'images/hotels/zvk3gfXBHrPxIpF09BxLuSkXaahnHyDOVZ8rysNV.jpg', NULL, 4, NULL, NULL, NULL, '2022-10-03 14:50:47', '2022-10-03 14:50:47'),
(240, 'images/hotels/cPRoLY35zHiPZ6Jo6oPWuQrTl0QiW42LQhDeHn7W.jpg', NULL, 34, NULL, NULL, NULL, '2022-10-25 08:34:01', '2022-10-25 08:34:01'),
(241, 'images/restaurants/BsZPxQMU1g7Q5BIZ1PIyqg8ZoXG88b8lvbuxLIYW.png', NULL, NULL, NULL, NULL, 6, '2022-10-28 08:35:38', '2022-10-28 08:35:38'),
(242, 'images/restaurants/zRPgWfjTkyOiBs8KlNhf4Q1JyHTWvGvxexOooFnQ.png', NULL, NULL, NULL, NULL, 6, '2022-10-28 08:35:40', '2022-10-28 08:35:40'),
(243, 'images/hotels/L8NjjLxCYBu9Xdsje1uFhRFZHinK2FZnIGGvTdIO.jpg', NULL, 35, NULL, NULL, NULL, '2022-10-28 09:05:27', '2022-10-28 09:05:27'),
(244, 'images/hotels/nU5tQLlCZRaBsIaJKbJ0L9eAgmOguVp4ko3YnPjw.jpg', NULL, 39, NULL, NULL, NULL, '2022-11-17 08:54:40', '2022-11-17 08:54:40'),
(247, 'images/hotels/U9PDsbYE5TdonV4Z6mFJnFMN5fcIbSC7Aq9FSRcX.jpg', NULL, 39, NULL, NULL, NULL, '2022-11-17 12:43:17', '2022-11-17 12:43:17'),
(250, 'images/hotels/GeN3FGb8zL4rD1Pda6WpWnMlpS11tvsLmRU3CkSS.jpg', NULL, 5, NULL, NULL, NULL, '2023-03-15 08:44:29', '2023-03-15 08:44:29'),
(251, 'images/hotels/NSwP1JGn3qR1g5yo57WaqlQSNJVg3RTXgtDQ4GyL.jpg', NULL, 5, NULL, NULL, NULL, '2023-03-15 08:44:29', '2023-03-15 08:44:29'),
(252, 'images/hotels/BTr39MICaPUTaNl2JaERbaChTpj7mVSbZ7tbyjKk.jpg', NULL, 5, NULL, NULL, NULL, '2023-03-15 08:44:29', '2023-03-15 08:44:29'),
(253, 'images/maisons/yuIMLIkPkrWO80C22kXhyEv1j1Y90MCh1Fh6cNWz.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:16', '2023-03-16 08:18:16'),
(254, 'images/maisons/ah2DTTJfC23OpxFZ2JrFKE31saNvyrGzkjGBNADN.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:16', '2023-03-16 08:18:16'),
(255, 'images/maisons/aCKJafNbMCyPlv0LBNES0yDYRFB7XsipmWR8Q9me.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:16', '2023-03-16 08:18:16'),
(256, 'images/maisons/11fIO9stoRP3c59nM06m0qa6dx7n3dItrRZLt0d9.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(257, 'images/maisons/9OuM1WGu4AJ00fKl2X7w8OEGbV1psfDPx6v9KRFH.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(258, 'images/maisons/UVmzbD3DYX5R6kIASYFPyRI1jIc0hyXGV9mLfW5Z.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(259, 'images/maisons/OXRnSRGau0dqxAgqprtE1lmtaOXSZBEeJv3VzENT.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(260, 'images/maisons/wlVKLweQx9ReoyvlFurSxbcamPpYpZE8w6MZCRgB.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(261, 'images/maisons/c5KGq4vTcvgNlMuwWJtLoHd8vIqRZhjXi33qMtl3.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(262, 'images/maisons/2jXfdutyBVHRbWom1ZfrgFpZImk4yzm4yUm5oRDT.jpg', NULL, NULL, NULL, 3, NULL, '2023-03-16 08:18:29', '2023-03-16 08:18:29'),
(263, 'images/hotels/4jt8y22bDx5fCZhm2cYvFyVxyefA5iRE2aB02rgl.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(264, 'images/hotels/DPsBP7CDocoinhcZQ1O0A9Ce3uw0Vh8twgjYFqn0.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(265, 'images/hotels/TdddLvIEvxC7l9dRANZ0ZLgcpDC5hH6lYtDAqzJE.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(266, 'images/hotels/nEv66ZwaS0T0VRubi6HDDEbquHjG0Z2BoXzb8wvE.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(267, 'images/hotels/Ikam7gAkpdDBjn3O4bj2LGkLSj3873I3liAqBOKN.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(268, 'images/hotels/kHftGj8XePgpMpGJ80Tb51UIU4SK7hPsXeQZQEbM.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(269, 'images/hotels/hvKAtU9VN31coELBXK6oDodILnu9qDZsS6JEHXa2.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(270, 'images/hotels/kFMjKxefnwITbYxwhbI4Jzkt8OxZkbRexZk8DmR2.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(271, 'images/hotels/jXcbrEvVDVYCCyFXRtdHhg4ZhCDEDgMWdiekkpSw.jpg', NULL, 6, NULL, NULL, NULL, '2023-03-16 09:17:45', '2023-03-16 09:17:45'),
(272, 'images/hotels/nzGGSp6qRCK96SL6ntvg37daJT93ZXOFOrANNkbi.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(273, 'images/hotels/hClpgGjLsgtxR6SFWjTxfUw1yQsYAfE1ukp5zaU3.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(274, 'images/hotels/u5Hcy5E9R1FIXJe9919indIINpTERTM1qhmqtMiU.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(275, 'images/hotels/jtCPIYCZTyGOwFDH6km3Hwfu8jUX0IvH82Fmzbgn.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(276, 'images/hotels/MxkPpGX6H7OD70qCRO3n70NxCfXiqWtWWbvGjyAP.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(277, 'images/hotels/3jRyoxC0j8NfrwKuQBHYmA0QTQ25gIlSBhmIhk3i.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:04', '2023-03-16 09:57:04'),
(278, 'images/hotels/chxh0WvvVHhzkLu4xIeEfdF3kMmdcHKvHugntvv0.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:05', '2023-03-16 09:57:05'),
(279, 'images/hotels/W1sb0KpzLHnemQzkbixjGlEzfk7UgmJudmiS8MA9.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:05', '2023-03-16 09:57:05'),
(280, 'images/hotels/Ohy9v4ZLayaBT00TDy15aicIy7pDpUKWWztq7rlx.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:05', '2023-03-16 09:57:05'),
(281, 'images/hotels/r9njvkmvVdSFCMb19W33kdR0a1A1d8T0rRef5IUj.jpg', NULL, 8, NULL, NULL, NULL, '2023-03-16 09:57:05', '2023-03-16 09:57:05'),
(282, 'images/hotels/tyiZubDSJGRb1YFnRH9lvzxxBysiKn8YhTjEKyE2.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(283, 'images/hotels/qJgvaWJWhLA1YoxAfzDxo9FsFKKpMnRX5Xtx1QI6.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(284, 'images/hotels/7JEW9WFeICcBnZu4h5sb1cqzxPT07peBohoIxujE.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(285, 'images/hotels/OXgF1lPcJZJOpACMribLU89t5SPcB1dJ36ccn6SY.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(286, 'images/hotels/eljiIhrnyNaVkzcSItFEp9sTzM3uh8leaRGZJuue.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(287, 'images/hotels/ilOqsIk0V2ioYXCWhBYFgYi6QBpOYiaqU6J48Itz.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(288, 'images/hotels/rLixAtZEkzSWqS7nxDwEfuIQywCcwoT4JToKkaqy.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(289, 'images/hotels/G1UKErDBHvgCdFBNRur1F1KKWrHQLyNWgE3x3jYy.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:43', '2023-03-16 10:16:43'),
(290, 'images/hotels/MlD3GWd0jOJMiMG87N4VaDXReONkkoQyvTwrCoVY.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:45', '2023-03-16 10:16:45'),
(291, 'images/hotels/kuMMyaExLv5Xux5htSMCU13c5pobSqCF57v81Sdn.jpg', NULL, 9, NULL, NULL, NULL, '2023-03-16 10:16:45', '2023-03-16 10:16:45'),
(292, 'images/maisons/HEqqv8vrxZlfR1kwm3QyQAvbWxCqypCjfsiMFJXg.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:04', '2023-03-16 12:48:04'),
(293, 'images/maisons/0YiIVJq8YUfiysHVZJgA1VdiSfz7OYfCenLvh7od.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(294, 'images/maisons/Zs8JIJ8xEcJTexjZtcpmZ7RuFVKgjmHhEA6fYrFJ.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(295, 'images/maisons/JjmgzExiclx82VRe4VEqt6YkSoqyWaUriOlWRmL5.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(296, 'images/maisons/HteOiXZ1B3jpUCoiOlSlVNzm8GgxqsltGVezuI5w.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(297, 'images/maisons/xuNuUNrKqFSkEMvhHe5idK2lyj0V2nx0hnsjVsT3.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(298, 'images/maisons/AHoVPAD7UzbhLrXHQmUPRIkAngm6eumbI3Vq1ZbV.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(299, 'images/maisons/2pTslcHjo6Jfea8yw4EFtxnz7sW7fE1BCnU6nIsb.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(300, 'images/maisons/OZ6mzgmpdHvSuGX5sy0cb5zTPwixsDccwIwNfbsE.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(301, 'images/maisons/gbbpvCNaPcNo81qveI79JivLAzHcThkeHkfo7PLq.jpg', NULL, NULL, NULL, 4, NULL, '2023-03-16 12:48:05', '2023-03-16 12:48:05'),
(302, 'images/maisons/Ju8n7WVzGnGSttU3tmDrxamGjiXFrW1P4lJgMlWs.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(303, 'images/maisons/MLzIk9a6FMd6gfPpPpKL5bbSMqrrQ00A9KwSTH4p.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(304, 'images/maisons/FT8pO0WJjhgP1bHi7lCFGxxUGp574pxzDH9TzMs5.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(305, 'images/maisons/rrkuPiQrphAV7oMooJajnGpnOcl5tsE7bUJVG5yg.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(306, 'images/maisons/nued7BPOWMmMR0UBe88bniiocbDwNPUZgSgYU1oC.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(307, 'images/maisons/TrhAvgqqlAKuRysYYjMiHhhVcuPc4iBQRGLrwRhG.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(308, 'images/maisons/gqxnkp5eg8oFLSNKwadcS9sQASG1Y8oBiuySbeoC.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(309, 'images/maisons/jLqE2EwM2fZ7coTNCrENaur4QoOfudf6sqDpSl7p.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(310, 'images/maisons/NeN2BIse9I1TlsB7IUvHGfrOPjsQDIDnkn72cu9z.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(311, 'images/maisons/6Jfcnfew3QfA86qmwzPVTzTJDGuuD18J2vT3fVwY.jpg', NULL, NULL, NULL, 5, NULL, '2023-03-16 14:05:56', '2023-03-16 14:05:56'),
(321, 'images/hotels/gUjG6ceok7l5VaJEgglUMm9l49RBUPZ9yMjFZImk.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(322, 'images/hotels/srdhWMsxPOOK1AYdGyhVT0DYaqt74Tcu3TCsmpaW.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(323, 'images/hotels/Rhmg236qd4NmB7XyOgKU2hofQPPvedqGWy7w0rIG.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(324, 'images/hotels/EPpTM9vUFnYV063wJywVnFwvRnK2HtRGcvupeZ7w.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(325, 'images/hotels/sFxoM3OIzYHzPquCpm6W3XQML9Ss69tkQj0uPpoo.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(326, 'images/hotels/W7wED7Tnj3gS8pcbMj2K7HdlE88fHeWTQrVG9LET.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(327, 'images/hotels/12srx3BsRGeqpuQQbf5ux7DqVsb5yx1zqJcC4DeH.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(328, 'images/hotels/KsubxMEznUfQnABbtXIlEAxykDYfmllYDNKtFlEv.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(329, 'images/hotels/VwsCSJqsEJUps1rAX0Hbzc7uXX36b9Vh6rtRSD7t.jpg', NULL, 11, NULL, NULL, NULL, '2023-03-16 14:22:40', '2023-03-16 14:22:40'),
(330, 'images/hotels/QewHImhXJ4ESVFhEybo10xJ2j1TwePnCnVsVy55O.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(331, 'images/hotels/ogjroCWim8GKWq9mL7MjgtmwctJHql0VDVkFsybw.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(332, 'images/hotels/nuAZNY4Qw05FQabajWfTEpQGHDIq6RSLsKYeF3DS.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(333, 'images/hotels/UaAbo9bHSznRfB1N6rzdZVJeV7M2AcRgGDUVXMNM.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(334, 'images/hotels/BIqmOFOLZ5x7vs6fV98ITWRkmKrW6Kizxx7Mjxz0.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(335, 'images/hotels/ov1vyCz5cp289AxzdXeYA0FKYgLg95tXDdNSwSE0.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(336, 'images/hotels/ZOFfldnlVXKB4s82JnVeezYudnpxH2VU70HPV6LA.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(337, 'images/hotels/XBo5D02KBykS8W6R52e50gMWQFNCxlsniQyl7VQR.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(338, 'images/hotels/q5mjrCeI2FIUUfCSvj2jhfSQEROXMSVRpphNWVgT.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(339, 'images/hotels/DAtDCRtJyDYWqZZBkKl3Qv2fMurh5pTA4FGILUVY.jpg', NULL, 12, NULL, NULL, NULL, '2023-03-16 14:36:46', '2023-03-16 14:36:46'),
(363, 'images/riads/xTa99NxpgSxx5BsHuQtec9SYdMbpp3jxxmk48vWL.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:25:18', '2023-03-17 12:25:18'),
(364, 'images/riads/YRWWCV1b6T5VHLRlQQws9RbRCZkiCmMFKfv389hd.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:26:52', '2023-03-17 12:26:52'),
(365, 'images/riads/gscRjxkzcAzmZ41XkK7Tef8mef1JgUHFrgfb9cI2.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:28:09', '2023-03-17 12:28:09'),
(366, 'images/riads/xNAz8II8EbzRYYVflpn0uXoXa25HotF8yVTGilvi.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:29:59', '2023-03-17 12:29:59'),
(367, 'images/riads/9wzn0rCyJra6uCbmHrZ2lwiRyUaFuZYcT0NiERvw.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:30:01', '2023-03-17 12:30:01'),
(368, 'images/riads/xJaklAkgoYWJYJWKRsqLbfi8HZT4BdwQdiPmOWDk.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:49:28', '2023-03-17 12:49:28'),
(369, 'images/riads/0naw61akLCShjCqurv6nkfpufqAzZPiRpZtMOUFA.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:50:10', '2023-03-17 12:50:10'),
(370, 'images/riads/pcYyQgi9HzA7SdgPUKZSe45D3lKfCQJ7JjCPFD3Z.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:51:28', '2023-03-17 12:51:28'),
(371, 'images/riads/LhqsxhNHYjhn7iU1yGSCvMfyvpreBYnleEVITgtp.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:51:28', '2023-03-17 12:51:28'),
(372, 'images/riads/fmjHhGBdqNA93hLtsfiWHB1iGld1RfzX0GNAZynP.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:54:12', '2023-03-17 12:54:12'),
(373, 'images/riads/tlqJRJes3NWWSseqNo23knLc8YP3H9DjII1SD5cV.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:56:04', '2023-03-17 12:56:04'),
(374, 'images/riads/r2c8Hxg3kT48pItoakFHOfe2dpnXa5kP6VP3pDCL.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:56:04', '2023-03-17 12:56:04'),
(375, 'images/riads/8o7lLryTb1xzuBySrr1zlSObFNi96VTUFwQTgpM6.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 12:58:36', '2023-03-17 12:58:36'),
(376, 'images/riads/lTtO7sSdjz9rM3Xa1BQhSauzqw6heDvDDRRGBhFy.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:02:37', '2023-03-17 13:02:37'),
(377, 'images/riads/mYbMG6B8qWzgopc3CminpfFOw9eqJt311g8NxXAD.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:02:37', '2023-03-17 13:02:37'),
(378, 'images/riads/HPuInNlwwLgnK9LDFJwmDbE7y91PjxcuRxP8e6NE.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:02:37', '2023-03-17 13:02:37'),
(379, 'images/riads/pq1Q1TcpqsKxx3NxfaYA2WxAsogVwV5dH6JPnuY8.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:05:07', '2023-03-17 13:05:07'),
(380, 'images/riads/tlnPVZ5Na2oXAffbvtFJax55CliDerVGtkmaXLkp.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:05:10', '2023-03-17 13:05:10'),
(381, 'images/riads/14ztJmX3ORY0iJDeDvXOHBnGaXx4HKovsRt5Kyrs.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:14:58', '2023-03-17 13:14:58'),
(382, 'images/riads/NwPwsQCLHYlJLiRzIlUNlSRd87aJ9kaOsIsdtObv.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:20:53', '2023-03-17 13:20:53'),
(383, 'images/riads/rkXUWT292o05heoN49cVaW4QtImQ17XLI8ANHWbH.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:22:52', '2023-03-17 13:22:52'),
(384, 'images/riads/VROE3zTyWIdLoPfB16oZQ1Q158BzBsBouNW09kqV.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:22:52', '2023-03-17 13:22:52'),
(385, 'images/riads/byqt1c6HzZOJ8RC1a3zQD9dmxeBBsgwLkx5rLjw1.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:22:52', '2023-03-17 13:22:52'),
(386, 'images/riads/3hpRtwxHQQrRRtmwVGGxlbkFdJgcZgjQB7c082H1.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:23:34', '2023-03-17 13:23:34'),
(387, 'images/riads/2yS65xsiJtYQ7UMmLG59wKHhove9EQuULnr3e8ww.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:33:21', '2023-03-17 13:33:21'),
(388, 'images/riads/rDsCzaIcqqIfW7oZhyNhWRNhQ3SRyUh4ba2rZuyZ.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:31', '2023-03-17 13:39:31'),
(389, 'images/riads/ssAbbs9MlDrmdyZIrQ7nVrOJFziTFjvj3T7d7HOu.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:31', '2023-03-17 13:39:31'),
(390, 'images/riads/zjo13Jlgr99CSJNadjF9TZuM3UhxnAjLeiwJ6fUB.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:31', '2023-03-17 13:39:31'),
(391, 'images/riads/5mrvWLHsN7gEscn6iQ1FJboeWiOVlPi96wWVaqzJ.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:35', '2023-03-17 13:39:35'),
(392, 'images/riads/za5DaKmS4r772cxs2BtEdYfIuQ7L4eVWUHYksHHd.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:35', '2023-03-17 13:39:35'),
(393, 'images/riads/bd8Q5XqNN7W7yJCab2zOmeL3u211gBoKDZjcM8Zc.jpg', NULL, NULL, 3, NULL, NULL, '2023-03-17 13:39:35', '2023-03-17 13:39:35'),
(394, 'images/hotels/ZL13GyS8MLUi1Xp1vX2MoxD8Xa0MGwTCGIsxQiCy.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(395, 'images/hotels/CjfguPRYn6YQK6LSmjzeeWHkDKjHbYck1UEhw8ew.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(396, 'images/hotels/pUywEfoezBWzVfH0CY106fBQfQssKaaPrjdjcr6g.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(397, 'images/hotels/6C1wDnX7IsHGvAcG3ZMApl5NFUg0SpIYnwrv6EPk.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(398, 'images/hotels/f1KCGdi6W8OZMUPGvlmPIgOdkIIGZX5mmyIXrYxl.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(399, 'images/hotels/dTEahctDqOM9YC3ZepvxqEzUGZnZrO4Du9A6JUZq.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(400, 'images/hotels/wnGCbHiX83tZThpbIkjVfECu5c1Sp9ctdz0BAIGT.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(401, 'images/hotels/gKwCZ11ZIKLFB0653vGN0Cr8yc4N8KOduAag7G25.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(402, 'images/hotels/ChfBzaNIgyd4jYuivqDr8mAjdvDNmUkm0MVtrrPD.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(403, 'images/hotels/bohzxLCjX996iFTFbBcjNJcqIBfcInA7BWPxUQI6.jpg', NULL, 13, NULL, NULL, NULL, '2023-03-22 10:39:28', '2023-03-22 10:39:28'),
(404, 'images/hotels/Y32LDJx1TFWCC97wosroxKymtvWY9Ywnn0204EfL.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(405, 'images/hotels/a3amCbSiJOBy3skwaqELflORb1J7UM89qGlNMagv.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(406, 'images/hotels/dBymMajI8y8Z2DrDmrvjMu446m9UHbnSHa6zZ7kF.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(407, 'images/hotels/mtPeKoK3YjXzL4wicEdvRp3r529kBjuWuTaPCtWP.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(408, 'images/hotels/d53mTuZfhSuZTrsYwlDhsXi340vsIAkpdkCmVxz2.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(409, 'images/hotels/waADbwXuB0lxFYwLREmEn0TlgBhSuoDdBRyRzXHv.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(410, 'images/hotels/kTMm9DaSZYUP7m14UaC4GRlxF4BWRla1kgCR4DJz.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(412, 'images/hotels/T6dXNjLvkqkOlnYKTsUhGWDtoj5X8LGlM2eYGkw8.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(413, 'images/hotels/rnnKmSGdIr7X28ZJsmyWc9sqibxu2zwAyBkFoZwk.jpg', NULL, 14, NULL, NULL, NULL, '2023-03-22 11:03:59', '2023-03-22 11:03:59'),
(414, 'images/hotels/MjPAmEiUG4n45hBG7CAwXc9okGXVgKV23RpqqK2B.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:09', '2023-03-22 11:47:09'),
(415, 'images/hotels/iVwnGBXQsPDLUP9x5z4c8EL1gGLY3BUe7B9o16Ef.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:09', '2023-03-22 11:47:09'),
(416, 'images/hotels/gfGHByErteJsqi2joVRozfXveCPdAf8i5xod7vWW.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:09', '2023-03-22 11:47:09'),
(417, 'images/hotels/fJeu3ftwsC6AjMhkXZ6O0KahIi3R35V3nvyoyWgX.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:09', '2023-03-22 11:47:09'),
(418, 'images/hotels/TMZPAtJK4BenJ9w6wQQxaXAy6wzJCpDSQFYRx0hz.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(419, 'images/hotels/9EX1MbpfplTZdQMTVOb6nvtEpXu4LayrzXCVF0cD.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(420, 'images/hotels/hvEKbONBKZymABR7qc4lWfEwo5r4lBVQaMtCMK1d.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(421, 'images/hotels/JzbM5sBmVXsFXHxD9syRls6LNdPrCiie8VBdJtP7.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(422, 'images/hotels/8cum5Yn9kdP7cDe8qTxxoG7H5YtkmDs27upghaf1.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(423, 'images/hotels/oPFkPOqbk17mqoV86dUzeoCuECW5bJhhe4GyywLm.jpg', NULL, 15, NULL, NULL, NULL, '2023-03-22 11:47:10', '2023-03-22 11:47:10'),
(424, 'images/hotels/clUHYC5t769u1vMR9BSRzp6gSTjsGmMQOJozThfT.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(425, 'images/hotels/Ymw2z2XyuBuR4c5PypP0MGsiQqxV5JJ9eKRFZvz3.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(426, 'images/hotels/BArHu5h3El5MApxLZSa2EsrLcX1pHAiD7vHpZAJ1.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(427, 'images/hotels/YM0RgReI7Li9kwH43pQIsrhGVLvlmVzUpknQBhnH.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(428, 'images/hotels/YGuKSUjuTkNhQYVvdfx9hVKzBybbvy251XeJEvza.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(429, 'images/hotels/PH38CirSN6mWpAsUzDyH63AVHBtj9aXUNUWlytEf.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(430, 'images/hotels/vttApv45CIE90GlOpq8D5fObmD5wqwnh5rNuOnjz.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(431, 'images/hotels/ha6Fy1NpGi1WlaKfPmDbpivlBiNNppCb17tLCONh.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(432, 'images/hotels/3zHNgUg85qOFPwS45lRaPqPSMU59pJsOeM9i44v2.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(433, 'images/hotels/qs421dHJ74Z2QyqFMwK6vA8LP0s2JBzokt6RkSfE.jpg', NULL, 16, NULL, NULL, NULL, '2023-03-22 15:57:58', '2023-03-22 15:57:58'),
(434, 'images/maisons/eYLkieoBFOpQEexo3MZkefsKx61K2H7B6g3gOnD6.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(435, 'images/maisons/JqfQ0wwNpRhfjIxgRZWAVY1hj28iVlOrsHjfccLN.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(436, 'images/maisons/rkK0Bj86Fdxs4uyNwr6pEzesByBjT03uNpWavYjG.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(437, 'images/maisons/lh0O6x2bkBF8StmNNxR6iEeJFYdygVbUJhq7vgzV.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(438, 'images/maisons/zYggxjNZKQG2Af7FZkPBawtsYAjE5uVQ2hN7zwPW.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(439, 'images/maisons/PKaAWwgfuj4CLCpZll9Yg2LjrdfIt4Di4QXItlw1.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(440, 'images/maisons/gTnbhpUemNQHl0YyYHKAeHJabZyV7cncXpc5BIyn.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(441, 'images/maisons/bK2dCe0UQypXkwnRoPDeJwLBAvmuSuYHpW09cB7w.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:33', '2023-03-22 16:27:33'),
(442, 'images/maisons/reAU0arGLw31PlYdt7GPqh7Sd4OSXZto9C21qjW2.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:35', '2023-03-22 16:27:35'),
(443, 'images/maisons/j3odiPNwfXmDncF9HyeubjxWgNJ4i2Ak3mW9ttvn.jpg', NULL, NULL, NULL, 6, NULL, '2023-03-22 16:27:35', '2023-03-22 16:27:35'),
(444, 'images/hotels/eToMLg03f0Eaxzz2n1o0w5r9ashr2q5HwSNGCeoS.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(445, 'images/hotels/avDu2cuhH4sXUwvY1Q1uZcxYDqZWqRkIJHCzr9cZ.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(446, 'images/hotels/BZnApnGYd0t5ek6KE87kF3j1A12Fsy9oG9dJVdJC.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(447, 'images/hotels/tHqADoDOcYSxXykIOPQdW1Y23amj7h6saVw7KHAX.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(448, 'images/hotels/bcyCzHARhG6lkNIwg1jBmLRdgKcRuGcPDDpgfFTh.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(449, 'images/hotels/wZkZKeQJKIh8Iht3qhe4cWFwQ1M3ncCrq14Ongxd.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(450, 'images/hotels/ONyzu4uRGFlfWlAHX4IDDA12rffbyaRVMVmvPgPq.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(451, 'images/hotels/93KJVpwuqKFROS2rkMkf1X6PnL6OzMPWkXfrjhtR.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(452, 'images/hotels/OORSd1aKz2qoGVheRsOtxqL1No2DfTJzNNjCcrFu.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(453, 'images/hotels/tw8El2BZe1uwgYMspGRd6G57cmSg0UZbI7H6Xgjd.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(454, 'images/hotels/xxIxgIrTI1HI5nAlmV31n429b4kgDnfdfCZOv9JA.jpg', NULL, 17, NULL, NULL, NULL, '2023-03-22 16:51:17', '2023-03-22 16:51:17'),
(455, 'images/maisons/JGFJMB4yLovohHWrXhlFGEjE0fY9x5Sn5d2soVqc.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(456, 'images/maisons/5lefAKMcx2k5Or4nqmeZvHRBbt8Si2TrfvvT5FjQ.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(457, 'images/maisons/MArNJmxajTobP2BMk9x5OFhPQjqUsjakeoiGnGKT.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(458, 'images/maisons/HBSk0zqpLYE7GrWKnXzwvHHPaa9ZE92TaQc1tpob.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(459, 'images/maisons/ASrYAZs3jWJu4dw3A4B3JQZW7cGtGk4VyaUHuQdS.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(460, 'images/maisons/A5zN8OEMa15Bcrhn66lDpimNcmiPxOJQlx2QjnrQ.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(461, 'images/maisons/wAb29PGqVsxQwrjFBMgoCIv3qTEwXJEcWWwdg4DJ.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(462, 'images/maisons/6RniTAgacVzzsntzAhCJDnUM2qPZI9JU5YlBofTO.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(463, 'images/maisons/6y5WuegkSUr4PkHeOuDLT5ezrlFI09wrDNovdvgF.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(464, 'images/maisons/FFviwyG4mvddq9QcWhFzyTk5nLlURxeABUEuJs3H.jpg', NULL, NULL, NULL, 7, NULL, '2023-03-23 09:51:18', '2023-03-23 09:51:18'),
(465, 'images/hotels/qPzE43QvMLyYav8pHvCITUf6dylEzqKJz15Mc4Bn.jpg', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:34', '2023-03-23 14:46:34'),
(466, 'images/hotels/UC3jF3hyjDNA8WTYxkqmnJlUaXeGfV9gXZusMv7a.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:34', '2023-03-23 14:46:34'),
(467, 'images/hotels/VTfwVb9wrmmDt7lCIEQO6nN6KKD0Pm0VVquY9uWz.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:34', '2023-03-23 14:46:34'),
(468, 'images/hotels/jvMJqJDnFxMjtCSq4aQnb4uot63nrIXbr1cdPrSH.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:34', '2023-03-23 14:46:34'),
(469, 'images/hotels/TiwLx6DnQhDXyD9i1kETopYV1mePF8FzTNzOd0QK.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:34', '2023-03-23 14:46:34'),
(470, 'images/hotels/u1GJYV2VWJfR3f0wcqTAaRzeYcZl0QGrjYAZprxg.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:38', '2023-03-23 14:46:38'),
(471, 'images/hotels/EgNZ4jepe8Lz7UKvTtQQhVzAo22POFKrJ8dgh9Vt.png', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:38', '2023-03-23 14:46:38'),
(472, 'images/hotels/hpW0AOIJQSMxlZpyTUtWlVSAEeDxdF1DOfJqpjBW.jpg', NULL, 18, NULL, NULL, NULL, '2023-03-23 14:46:38', '2023-03-23 14:46:38'),
(473, 'images/maisons/NzeNUvWUJw4RQUlg573zSZkMMwv7NM77wGT7Negp.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(474, 'images/maisons/vqLdswvU9ApZtQJX9PNxdGcbbJIcvsIl00jk96cH.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(475, 'images/maisons/3NOITZAZZclfPuENT8FkcwdygXil07Gyh3JM5Yce.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(476, 'images/maisons/IysjTNuDIKU4Ak0CFwMGU7Px9p6X9MTIVcHxPked.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(477, 'images/maisons/FSzJ3pN6hYpcs6uBrntSMXh9qBJdbITB6WZcVrZS.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(478, 'images/maisons/QDyE5UnTzeVYUUIzzgBwQPOzkowT7nufnljpK9Bd.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(479, 'images/maisons/Wyjy7XdOnmp3F4MoSUFr5ljGO8DCn6cLGXoEvErA.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:06', '2023-04-29 09:57:06'),
(480, 'images/maisons/tseWm8o5oNTLRXYIC7LC0auB2FgAZC2du0EWJiyA.jpg', NULL, NULL, NULL, 8, NULL, '2023-04-29 09:57:10', '2023-04-29 09:57:10'),
(513, 'images/maisons/I4wT4GaLj3BaAzPX5S7uDZyykmPWfkB9bPbXESnU.jpg', NULL, NULL, NULL, 9, NULL, '2023-04-30 17:21:00', '2023-04-30 17:21:00'),
(514, 'images/riads/PUVyPlTgkHVHZoubVrKlkTvupkINqbOC4zvDv4CF.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(515, 'images/riads/ALAgiotvEFAs7R0DzScw3fvM3E23826N6lhZC0MB.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(516, 'images/riads/GGwbLqHjfQf8EyvnsjOBfkjtmQLbIy01RGyvs6Tl.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(517, 'images/riads/mdhSI6AI4ghK50ZUVstjBs4RiptCQ4wjADnzv4ok.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(518, 'images/riads/6cmAzoaRDF5tQfLYiTGWnZEvyJYfIDoIZ755iIii.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(519, 'images/riads/OFk7Uv6sLGTqOe7asqGBFa3ZmXKVzUi9cZr193sL.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(520, 'images/riads/xkxXrrYPPyb0Y4XH2htWegQDrgSmFlzmagxBkswf.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(521, 'images/riads/09DZpEFLkrF9wPlZwsiT1W0w31sXD14PUnw4BBGV.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(522, 'images/riads/HVKnis4k2PfeNjvuIeDWMERmEFndNxrNZ9wRHyKc.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(523, 'images/riads/mKuTpLq1BoYCzhOJ8c7bKs9yBJEuhTxwh6FFDuvp.jpg', NULL, NULL, 4, NULL, NULL, '2023-05-09 12:45:45', '2023-05-09 12:45:45'),
(524, 'images/maisons/kBu6IHqVQjNZyQtrAL2oAem8XkmTxsLarLx4UBFL.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(525, 'images/maisons/dfWjL7lmNHpOE9PQOedBnuKdUEqMDpfYWEiHGCBj.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(526, 'images/maisons/lPFvgNTxRTJ98Qzj12Edikd2Yt6AStmEw0dA3tHP.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(527, 'images/maisons/xcsVvg9YmT8ncRVb6HOwyPrFP70pLZzqpafyxrUX.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(528, 'images/maisons/a9Q7vw1wOnewco4t9MwlQVTF8qLSkv4ys9G4PUAu.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(529, 'images/maisons/DVIvjoh028gMtN5Hweggv0PwQlvVV6KsishrnXud.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(530, 'images/maisons/yYGgjM0dWJwzKiBY817iJFezP58yaQHoxj9ddxBh.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(531, 'images/maisons/DAY3wnDa0ebPCKTo4LNAoEO5UlkGCFQN7g26mbLu.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(532, 'images/maisons/cJ7s0J4l3LWQFjlb291MiUjkRjTpFSjd86HPUJhL.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(533, 'images/maisons/lyIevjRANQXRu0yjUexT35g8AqpiwH0Foz310uLY.jpg', NULL, NULL, NULL, 10, NULL, '2023-05-09 15:08:15', '2023-05-09 15:08:15'),
(534, 'images/maisons/Vm6Akqc9oNhVI2pELOYDVdAyg7aCyqTS6xfTUncw.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(535, 'images/maisons/vLXU7kqN0vxcbiuwfMcrSXxHoZ3Jl7doCGT7evJN.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(536, 'images/maisons/X7R13pmyOIKH2rydWVT60j5WRTKb4ukXAkR5cKwU.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(537, 'images/maisons/tQiPh3aIKR56zKr4P2nrZ1JTAEXwb9VupWZ7QShZ.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(538, 'images/maisons/9siYJrz4BASSX3L0t332BkgKmU4SLtMaEcydJmRR.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(539, 'images/maisons/P7ZwbcPlXORJvs3VwCnBID6WHdZ6NGYgEFGrHY39.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(540, 'images/maisons/MHhePI6NSzcDLx33oFKsCg4AQ4BaRKstLP9NuDtZ.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(541, 'images/maisons/FALM4f1hRpMmx5LFN4T5F6zD8VWMIhKkubT2p0cW.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(542, 'images/maisons/0JKQr6AV0h6IxTZFDJ1UPHSaTSsjUAY5Ekvv1d2L.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(543, 'images/maisons/O15XG21BM8iG00DY6fBp4Wf00fYTyd3OyFm1BqNH.jpg', NULL, NULL, NULL, 11, NULL, '2023-05-09 15:29:31', '2023-05-09 15:29:31'),
(577, 'images/maisons/A023IWoyjPtxIgmj1xW5YVFj8p64PpOKTDcP84ZO.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(578, 'images/maisons/19Dz5VLG6L0PhID7JhRA7DeyIyBqgSh8DicBTZw6.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(579, 'images/maisons/onFHroQqAjDzhYiV5jLAi6NMaBZFLAnpHgcCfhJE.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(580, 'images/maisons/ymF8n8myBvIeW0CRgyaJcm8hHrWgyHf4eDz0WHGz.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(581, 'images/maisons/4pJxJXCxUVPqagy8USrbHxsm4v7U38sgUDJFS0kN.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(582, 'images/maisons/A41VOnXxWImMqdzY5kA2ji1Ri9sOyfIudL50yNgS.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(583, 'images/maisons/fU3g9Ln9EGzV6IOD6CLX3Vbd9IA7koEjzxqg7OBC.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(584, 'images/maisons/YIbpAAdbgmuahzWqBJF6ZkIBxAYC0PS4Q20nOF4T.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(585, 'images/maisons/dH0EWR420yGIFmXGVc8SNdGFxeotR07rf6Xrad0X.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(586, 'images/maisons/ogykZ2tSbZHHPsVXwycwqwAdkmzOFNhlIYpHtjsv.jpg', NULL, NULL, NULL, 13, NULL, '2023-05-11 15:09:27', '2023-05-11 15:09:27'),
(587, 'images/maisons/6Q0DfGeypBiVZuJ0BFnA4AcNX0Hk8aQ1o8a41Fjd.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(588, 'images/maisons/CzH6DuKIO4Ardcz3tJnHGsTXLISRzk9zNl987GBs.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(589, 'images/maisons/OlaBIJpTMZKeP0UTxLC7mXAyCHKZ7itzmsx5DrVq.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(590, 'images/maisons/PP6Kqcz5M6F5tHjgNJvaie6Pbn1kM5rUNziQwNed.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(591, 'images/maisons/Zfmm5h6z2VVi35W1e6ovUC5BFurYbRZDdzT1l8Id.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(592, 'images/maisons/PYTNWMMLuXM9DbdocytjqVdKRrtYNjRsFujUaGLP.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(593, 'images/maisons/94c9eoyKMMIA1jsGjHjcekTE7PRSEXJY0zvUhGkS.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(594, 'images/maisons/k20TPhcwMAxd27LMKrb1PO65RGF70Hnxl7JSjzXi.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:28', '2023-05-16 13:46:28'),
(595, 'images/maisons/fxceXVF9mT5u3A75U5hhZM06wNnSalr1No9Ky7DR.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:31', '2023-05-16 13:46:31'),
(596, 'images/maisons/LSVIewIJ9qShbQzHW7LuEsVYFBMf7zpaPBFEY81D.jpg', NULL, NULL, NULL, 14, NULL, '2023-05-16 13:46:31', '2023-05-16 13:46:31'),
(597, 'images/hotels/htBnM7dL9zSBYxRXvtYnudKcJORDKYuDrc2wBe8m.jpg', NULL, 19, NULL, NULL, NULL, '2023-06-08 15:30:39', '2023-06-08 15:30:39'),
(598, 'images/hotels/J79B13AwWDbWuNZyeGeEbkQOXeul0NSYskPnMwx3.jpg', NULL, 19, NULL, NULL, NULL, '2023-06-08 15:30:39', '2023-06-08 15:30:39'),
(603, 'images/hotels/mAtAjahhW6jUksvZF6LHYQQHqXORbjfICp9QX9Jn.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:48:13', '2023-06-09 08:48:13'),
(621, 'images/hotels/ApeA8g8IY0n3AffnKHGRz4ThfpXuB6iG7GkRFEKU.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:54:41', '2023-06-09 08:54:41'),
(623, 'images/hotels/XP4jfEQAQlrNXsY49ARKHU4operE72YGhSQbSgWl.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(625, 'images/hotels/jfvc8wJu0dga6GFrvagKh0rMwro5zN6KDMpdTt5d.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(626, 'images/hotels/VnU4LiOC1jFMXKFBskFmJ5diK7BS8fawulnoLpPB.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(627, 'images/hotels/9Mp8KbkLm3qkwmMHQA2AsVNsNsTkosEQ5Nu0585t.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(628, 'images/hotels/JBJkfYyfj6R0zXquZrQJRXBZNv5hEJLYMgsr8u8h.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(629, 'images/hotels/w9RtCSIWgiAE7JqNX0tqsKWOGVIApbLphCXoE3ty.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(630, 'images/hotels/Fq71YU1WnBSCePgpS3ZKB6JD58xSllS90v6KGESM.jpg', NULL, 21, NULL, NULL, NULL, '2023-06-09 08:56:39', '2023-06-09 08:56:39'),
(631, 'images/hotels/psCuv2Vl0fHGxzIxC5uMGCFrP3uATddw4XoTUnRF.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(632, 'images/hotels/vdYlSIrLgWSE2vrfJdFWTv2Plp6Tm62ZTI68B8uF.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(633, 'images/hotels/J8tqbPVRE6fH9A89VFhEYYZbzNrHKIZaIN93g2Lh.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(634, 'images/hotels/yFGaCf6zzKQPygXs3oadCGMAhxXBfj6EgVhZ8opM.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(635, 'images/hotels/IBulGRjtj4NC4bLrlxkRzRoPujJDRVTbbWgZorw2.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(636, 'images/hotels/r2d8UQyyqj8abYgPsDYWk7hVR9wwYFdBj4Qr2Apv.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(637, 'images/hotels/lxf3qwHofd3BhA1o9Rn7Qf6gjmE5pLgnfiTd3nEr.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(638, 'images/hotels/nR8zDcPD2R0HpNPeFJ5lwYlOY2BEiiBxVGaiyyyn.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(639, 'images/hotels/sDmirB56XywN1ksXpMRfnILGupzHN3f1uLSA7fJD.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(640, 'images/hotels/s92uXqqsiY5ANmimMjpilu8kssChJpYOVXi3B97z.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(641, 'images/hotels/sjgLGZ6qvSjDKzOetLOX5UZXneBTRzyWnkHZlYNT.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(642, 'images/hotels/z4yhqj37z3B6Po1FyliNzSnqYJwlcbpuw4uZfLyp.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(643, 'images/hotels/HKkbPKsaCZdaHvRz1IokLBNqbBXxUxRfPibHsOJZ.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(644, 'images/hotels/mXBfcvj5KwvygecGmOcAGiaMDcaBEBjJQPPh7Oza.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(645, 'images/hotels/TOOqU4Dc1GrFVgOc7qCVpiHSdYuPMEV5y4PbGmX7.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(646, 'images/hotels/uCxkM0ZYTXLmlXtqkAOohdpoFACQucCzld1gPVEA.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(647, 'images/hotels/NJhDevYNOFLji7zc4KgVW9FpRm7eBqkMxFdLjJYi.jpg', NULL, 22, NULL, NULL, NULL, '2023-06-13 15:16:12', '2023-06-13 15:16:12'),
(648, 'images/maisons/0q42LDQagvvNJpD85yk4myFzap19a9Bm6oWRhq1F.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(649, 'images/maisons/T1qQOgAmwxPITySvHw0BNDkUmKOrzirjFG7K1k9R.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(650, 'images/maisons/OojjXr0eTb6rZeL1wqHc2gesqFiJyNhcJpKg8S2q.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(651, 'images/maisons/laR4eaYC2HIyG7ipz8sqKNMjleviRy830YNr4BJs.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(652, 'images/maisons/zMFFDk2WUYkjQ0wr8q84242tAdm70zWXJZ795vLg.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(653, 'images/maisons/f27vKFJqlzegXYKBWRFbqrmo7bxOh0ZR3QTAlUTY.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(654, 'images/maisons/At918auopWJjBe2OUe08zHyAgVevDTjIsdn6HAGk.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(655, 'images/maisons/DsiWVVrHUAksO4p0I78i0fxwxKeYiQBPOAhXYyGp.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(656, 'images/maisons/bdz5RcHS4WTiqXOczPCtVpvpfnsFfKRKHc3Ks0b5.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(657, 'images/maisons/qwlfSazvVTeGdQC24DNCBzQ5N6IvscA8hLDAZWWb.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(658, 'images/maisons/pHGsO3HZ9ecjjCS0ouSvcd9ENZo1OFB4pCgOIdFO.jpg', NULL, NULL, NULL, 15, NULL, '2023-06-13 15:44:02', '2023-06-13 15:44:02'),
(659, 'images/hotels/YSAxd5u17Dm1DgGduT4FWf73c22hCCIHohDp0f9J.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08');
INSERT INTO `images` (`id`, `image`, `libelle`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `created_at`, `updated_at`) VALUES
(660, 'images/hotels/QZcLX2ZEVUwzwynrnpgY5v8RPRG1RhlLzU5mZFSA.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(661, 'images/hotels/LPVDndY3tEfF3l0jZxGTKLSHCgVlahaWcGmgJ7r5.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(662, 'images/hotels/gHsZO5mZYPYQYZCzyIjBYQSS4w6PK14hDFmPWVkL.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(663, 'images/hotels/SiF3PUUnuGQe0yJxkfm0FstRh81R7cSD4RvDcMDw.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(664, 'images/hotels/jmCAYnMeopkxdMZZnl1FEgYoWhC2WEvAb0jsLy4F.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(665, 'images/hotels/cCtXt27zPox48gRJiCY2AhhiiaN93OpoWMYpEWHl.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(666, 'images/hotels/D4iYg8joRMedOk7AlYm1BBCwOVVdRrBjctptb9a6.jpg', NULL, 23, NULL, NULL, NULL, '2023-06-15 15:06:08', '2023-06-15 15:06:08'),
(667, 'images/riads/Kt8fUnmRuvIhGep5saAhrduvIFlc3hat8MMxthfy.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(668, 'images/riads/nh5cveNuEYGs0s1ONgvOh7awo4fv9udvgyxlEeva.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(669, 'images/riads/j5vDHxJjTwzreNBuzi958drG1zEjmmP7vJ1mNFC1.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(670, 'images/riads/Rp1QzepzKtrzVdNqBsqlRwsJDTSs2g3Do5mNPCD2.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(671, 'images/riads/G1gk1pKYfoCvzDbe2HzX7hkoD477a1jd5oVeqV45.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(672, 'images/riads/98A9mxKreCLiQDW6S8q1QrYftkvxm58afnE3GHMe.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(673, 'images/riads/4blLZjGYNFxjLiZcd8Ie6shDgEoGoMGBXaC1ujfk.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(674, 'images/riads/uI0NHOl0DHeR3Zzz4Jd18Nols7vGyFEopUbXnBJH.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(675, 'images/riads/YcEeFiky15TaS2LCnMuQSuvsNr1XcR1jTfezwA4l.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(676, 'images/riads/ZqHJKF8ncbIKdB0V7hfCXLS3xO37R1KeI8Ig9u6L.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:37', '2023-06-15 15:23:37'),
(677, 'images/riads/gO3khWCVqs0ZeasPJl4i8SVWY1CMLJBrylu8wYsf.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(678, 'images/riads/FA0Idk8tZzg6yobG6LFklSCcnSwPIhudKotoBMXS.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(679, 'images/riads/gj3oRXYya5La6TE0SqZKLJWNy6wt3VkL8DMfou2N.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(680, 'images/riads/uyBYQnSF9jgifEuSWCI9aBuLTkeACYqHxsTpp3y9.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(681, 'images/riads/NobzIkivJqjHHmvZ07DaRWFjX8uzcYQL3GFm6sxT.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(682, 'images/riads/KNTCMjKAKI9VZdJIDqX56zPsOrUReDhouWQE4vBf.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(683, 'images/riads/HYqxeuSq0OB8GbjNAObNbaNlSkGJrNpTD3MCUfEB.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(684, 'images/riads/jgoVpX1nx9qbRGUiJxou8tCLlRktjKl2AEAXNEjp.jpg', NULL, NULL, 5, NULL, NULL, '2023-06-15 15:23:39', '2023-06-15 15:23:39'),
(685, 'images/riads/CiSmTfXNaFLvoiTUDVzYlo11mXSwhVSxUPPApePV.jpg', NULL, NULL, 8, NULL, NULL, '2023-06-21 09:33:28', '2023-06-21 09:33:28'),
(686, 'images/riads/Jrg0y4tsOff0cn2yvECeidS8gld3Lc1Z47TD33lH.jpg', NULL, NULL, 8, NULL, NULL, '2023-06-21 09:33:47', '2023-06-21 09:33:47'),
(687, 'images/riads/fm68wii3hTi75wmWF4A8p9H6YWgej19C8Q5aHJ85.png', NULL, NULL, 8, NULL, NULL, '2023-06-21 09:34:08', '2023-06-21 09:34:08'),
(688, 'images/riads/myqh0kexIlH6x3AGJ1QIrTR7lHz6Yujurqnso12N.png', NULL, NULL, 8, NULL, NULL, '2023-06-21 09:34:29', '2023-06-21 09:34:29'),
(689, 'images/riads/D9knr1uoZiW2XfxEokkKgyUJE6T8SJSlRDyJ6KKc.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(690, 'images/riads/MnMjNhSAqVVEDnE9sro9euinWYCQ0Ax1boBym05C.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(691, 'images/riads/90099jYLTjNddztQuOEaYkj5uDFNff6g2wz9oeh0.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(692, 'images/riads/9aatzTgTnRtFkWq5lIvWEuVXKg8uN6vCQpWV6zll.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(693, 'images/riads/FfTjZ2yyYJuPMHBGa4K4V5q6P3oNIMGK62uyFSe5.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(694, 'images/riads/RwAYX85dVlAe47lfKH9N4PwM4E9Y2SXUQVlT7AZw.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(695, 'images/riads/ReZFkU5TohtCaUaxeOuo77VrzfJOUwaxeI4cLWnM.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(696, 'images/riads/72GYjHjY3K96v4Dt8PGBVIUKsl6YMjRg5BEfWBcr.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(697, 'images/riads/ygZzFIl65ntfAEaL6R1yPdQfqRdvXNRnWG1Tkp1a.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(698, 'images/riads/1DQkJbECGdVm4jg42tqw8kCuoUz9Cwg9rDyXUfMV.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(699, 'images/riads/qzfq8IpXGbiqPzm52R0sQqzI5jMKjQHl1vDIxcdR.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(700, 'images/riads/ZgYM3tbxAuqwQF1JvcDG3lbEUHWv3CsQaCOrj9Ti.jpg', NULL, NULL, 9, NULL, NULL, '2023-06-21 13:28:56', '2023-06-21 13:28:56'),
(701, 'images/riads/YbgBfLkqZxHfeCRASkmsSS0VNX55G5x6Z4DewzYw.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(702, 'images/riads/zFa9P2jCoWOG3nZUU8P1Ac8ykbrUhsPdQ7HepSae.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(703, 'images/riads/cMGmGUysU297ptaGzR2j3PP4eyMCyYaYLXUZ08Cc.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(704, 'images/riads/QeU5NFM6MAiUXjAacur5445xNjuds9PRpkqzZtby.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(705, 'images/riads/MqmTHfaZt50kwBWpRQSPu1kD8axS229hURKJqqGT.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(706, 'images/riads/spo3qVjtzEmoUa48vD7uOgVU2qvfJrDrtnnP6h8Q.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(707, 'images/riads/rwHYrMLwcaT74biYT8T8KGwcIKe8XUwK2RwyyHyf.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(708, 'images/riads/F3d4ADu19yOnrJgbFGuF607pDvvCAUfgqNS2GSi0.jpg', NULL, NULL, 10, NULL, NULL, '2023-07-04 09:29:31', '2023-07-04 09:29:31'),
(709, 'images/hotels/WCPux4kJ6isUXnHyJfCFdplels5M7uiyypNelVcc.jpg', NULL, 25, NULL, NULL, NULL, '2023-07-04 14:13:10', '2023-07-04 14:13:10'),
(711, 'images/hotels/4vhJzNsbCbFqY8ILshtiBWFfMsGwqHsejlQlRtiI.jpg', NULL, 25, NULL, NULL, NULL, '2023-07-04 14:13:10', '2023-07-04 14:13:10'),
(712, 'images/hotels/5QfCixLlxm6HjmGFyVOl7TWDQd6Vgve0CYDWajKs.jpg', NULL, 25, NULL, NULL, NULL, '2023-07-04 14:13:10', '2023-07-04 14:13:10'),
(713, 'images/hotels/mNvZTQq5DjTnw3d0o6C3UWdgvEIU6ha5dEt6g2lK.jpg', NULL, 25, NULL, NULL, NULL, '2023-07-04 14:13:10', '2023-07-04 14:13:10'),
(714, 'images/hotels/Ce2oVWjQS1RJGL1kBP03b33Qeut68d9GyApmkEfk.jpg', NULL, 25, NULL, NULL, NULL, '2023-07-04 14:13:10', '2023-07-04 14:13:10'),
(715, 'images/riads/0TOiTnhHxl4SvGRLoKOA303QTfkUYPTw10NZfxhK.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(716, 'images/riads/dF4bausSFAvrJYigqcERDgymEMNFjaPkivQnIdvS.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(717, 'images/riads/vVUr27ZqWTDNZLFEKCOfVzmDLoCPdgRUbCSHwrCC.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(718, 'images/riads/0dcHaGXfgmGQp2PXDndsguPIUmN2hs7hYmS5qwzB.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(719, 'images/riads/AD3t4tiiB2jHOXk3i2SmQ7BdVfNnWwkqN0juN09N.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(720, 'images/riads/bn5e4hC06wf1Eqabg9YzYJFuGfCDi5u4SFJvqdf8.jpg', NULL, NULL, 12, NULL, NULL, '2023-07-05 13:12:22', '2023-07-05 13:12:22'),
(721, 'images/maisons/QyH0Sh7uztZFKMPxMn99sWP6xHUf8Nrw55keZZgn.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(722, 'images/maisons/Dgy6DZT88IIAJn56wLQoqDM6yKZUg8pefT9dKoMY.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(723, 'images/maisons/lAgEFZR1vK7ErbKNVIvbfwtUSikf9xftiZ5tPUIn.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(724, 'images/maisons/YrfQJFAiW3H1gzb5qAhBoZ4QaXJt1YtAlF5S7DiY.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(725, 'images/maisons/FegRfFK5kOrdaxDlgYTkfl7FVXl22AERylQVvlVA.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(726, 'images/maisons/Ej5b4SJTPiSKDZk16LOMjtvhCTmWTtIjynGgBYPb.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(727, 'images/maisons/DwpmQFXlFItQvMrl0k87LdPUCbukIPiSaO5iyNFR.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(728, 'images/maisons/hLrnOxbqItag628HGddUpLI1uYSEvkRd8gf9tFJ2.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(729, 'images/maisons/3Cq8LVvwlnGO8xe8LFdBFOou0WypYErm7ts5csoi.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:14', '2023-07-06 08:30:14'),
(730, 'images/maisons/b0vHrdNbap6pFZp0QKKZXWmznVABzC8vnJ2BmAog.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:15', '2023-07-06 08:30:15'),
(731, 'images/maisons/jAAZkcG8TsZChADRp80Kmpf1HYqKsk8Uccs7IVzO.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:15', '2023-07-06 08:30:15'),
(732, 'images/maisons/vFarxzBm92Aonk07lXqb9EPuHjGEnQvUq6t9j5Vt.jpg', NULL, NULL, NULL, 18, NULL, '2023-07-06 08:30:15', '2023-07-06 08:30:15'),
(733, 'images/riads/b5Xwr70a30TG1uDSTNq0eSRLTAEU4mP3ckLj01eP.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(734, 'images/riads/9uRxcdJCUODSaeNzlIsdwdKPkvVR4YdQ2TRuzavv.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(735, 'images/riads/uD7W242SeytkBK8CbTzN4Z0oJK9WQcf44cUEwO2m.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(736, 'images/riads/fB9uuhFeAElfIzDbShPSvc2xdUtQXFbSFGtbg8Or.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(737, 'images/riads/wRkPr7NpBFJ84gd1v01MYB6QrnWOHm7otUzjxEdW.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(738, 'images/riads/X8Ae0iUiTubMxM87rwqow7kchkfWur1uAV22sKlS.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(739, 'images/riads/aHObk4t0fCrMUxtKliS9X0zw66whud2dyhIuTbp3.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(740, 'images/riads/uhrSIZT61xDWOHFsaZULwBt0IxgTTuyac5TCvESU.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(741, 'images/riads/nCq89Zud9RYrZxb6qRgOhoJb0OT817x5CKNIGCVV.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(742, 'images/riads/meizruobAXWyLZre4tRRlcX6utqPW1kvMKmzWBtw.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18'),
(743, 'images/riads/AnLnbBMIjFBYJSq41wrJD2OurAUU0ADIhjO0RmdA.jpg', NULL, NULL, 13, NULL, NULL, '2023-07-11 10:02:18', '2023-07-11 10:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `langues`
--

CREATE TABLE `langues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `langue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langue_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langues`
--

INSERT INTO `langues` (`id`, `langue`, `langue_ar`, `created_at`, `updated_at`) VALUES
(1, 'Arabe', 'العربية ', NULL, NULL),
(2, 'Anglais', 'الإنجليزية', NULL, NULL),
(3, 'Espagnol', 'الإسبانية', NULL, NULL),
(4, 'Français', 'الفرنسية', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `langue_guides`
--

CREATE TABLE `langue_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_guide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_langue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langue_guides`
--

INSERT INTO `langue_guides` (`id`, `id_guide`, `id_langue`, `created_at`, `updated_at`) VALUES
(24, '1', '4', '2022-10-17 09:25:31', '2022-10-17 09:25:31'),
(25, '1', '2', '2022-10-17 09:25:31', '2022-10-17 09:25:31'),
(32, '4', '1', '2022-10-28 13:06:50', '2022-10-28 13:06:50'),
(33, '4', '2', '2022-10-28 13:06:50', '2022-10-28 13:06:50'),
(34, '4', '3', '2022-10-28 13:06:50', '2022-10-28 13:06:50'),
(35, '4', '4', '2022-10-28 13:06:50', '2022-10-28 13:06:50'),
(42, '5', '2', '2022-11-08 08:49:11', '2022-11-08 08:49:11'),
(43, '5', '1', '2022-11-08 08:49:11', '2022-11-08 08:49:11'),
(44, '5', '4', '2022-11-08 08:49:11', '2022-11-08 08:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `lieux`
--

CREATE TABLE `lieux` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lieux`
--

INSERT INTO `lieux` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(11, NULL, NULL, 'La merveilleuse grotte d’Hercule', 'la-merveilleuse-grotte-dhercule', 'La grotte d’Hercule, située dans la ville de Tanger, est l’une des plus grandes grottes d’Afrique surplombant l’océan Atlantique et le détroit de Gibraltar.\r\n\r\nSelon les légendes, le nom de la grotte \"Hercule\" appartient à un héros de la mythologie grecque. Selon certains chercheurs, l’endroit était un point de commerce et un site de conservation de poissons.\r\n\r\nLa grotte d’Hercule est un endroit sûr et pratique pour un voyage en famille. Le site propose des cafés, des restaurants et un parking. Vous pouvez également acheter des souvenirs.\r\n\r\nEn marchant autour de la grotte de l’extérieur, vous pouvez voir les anciennes sculptures sur le rocher. Vous découvrirez également l\'ouverture de la grotte sur la mer dont la forme ressemble à la carte de l’Afrique. \r\n\r\nLa grotte se situe à 15 km de Tanger, vous pouvez y aller en voiture ou prendre un taxi.\r\n\r\nQuant à l’entrée, elle est gratuite et ouverte aux visiteurs tous les jours de 9h à 20h (les heures peuvent varier selon la saison).\r\n\r\nNe manquez pas la grotte d’Hercule pour découvrir plus de détails sur ce merveilleux endroit', 'images/lieux/3mYLSqJeDH4eCSJvaBcefwRQAaQpmVperZ3zACAN.png', NULL, NULL, NULL, '2022-05-31 12:18:49', '2022-11-29 08:22:36'),
(58, 1, NULL, 'Les Igoudars', 'les-igoudars', '\"Igoudar\", des greniers collectifs contenant des petites chambres que les membres de la tribu utilisaient auparavant pour préserver leurs biens. \r\n\r\nSelon les chercheurs, la construction de l’Igoudar remonte au 15ème siècle. Il est donc considéré comme étant le système bancaire le plus ancien inventé par les Amazighs au Maroc.\r\n\r\nCes greniers ne disposent que d’une seule entrée, surveillée par un garde appelé « Lamine ».\r\n\r\nSelon un recensement effectué par le Ministère de la Culture du Maroc, il existe 554 Igoudars répartis sur tout le royaume. Leurs formes et tailles varient d’une région à l’autre.\r\n\r\nNous vous recommandons de visiter « Agadir Enomar » qui est le plus grand des greniers collectifs, avec une superficie de 5000 mètres carrés et 295 chambres construites sur cinq étages. Ce dernier est situé sur une montagne près du village d’Ait Baha sur la route entre Agadir et Tafraoute.\r\n\r\nVous pouvez également visiter d’autres greniers comme L’Igoudar d\'Ikonka, qui est à 20 km de la région.\r\n\r\nL’accès est gratuit. Il vous faudra juste la présence du gardien pour vous ouvrir la porte.', 'images/lieux/bfKNnHZL9TImmxugDd79JxgJgqYJNUWEaEDCBygU.jpg', NULL, NULL, NULL, '2022-05-31 13:08:05', '2022-05-31 13:27:10'),
(59, 6, NULL, 'Les casacades d\'Akchour', 'les-casacades-dakchour', 'Akchour, un petit village cœur des montagnes du Rif connu pour ses paysages à couper le souffle.\r\n\r\nL’endroit est facilement accessible. Situé à une trentaine de kilomètres de Chefchaouen, vous pouvez vous y rendre en voiture ou en Taxi depuis cette dernière en empruntant la route menant vers la célèbre station balnéaire Oued Laou. \r\n\r\nLe trajet vous prendra environ 45 minutes.\r\n\r\nUne fois arrivé, vous trouverez un parking situé au point de départ du sentier. Vous pouvez par la suite, soit marcher tout droit sur le même côté de la rivière, soit traverser un pont pour aller de l’autre côté de la rivière qui vous mènera à la cascade d’Akchour.\r\n\r\nIl faut prévoir toute la journée pour se promener et explorer ce merveilleux site naturel ou se baigner dans ses magnifiques piscines naturelles ! \r\n\r\nVous trouverez également des petits restaurants aux alentours, en plein air, où vous pouvez vous reposer et savourer un bon tajine au bord de la rivière. \r\n\r\nLe printemps est la meilleure période pour visiter les cascades d’Akchour.\r\n\r\nPour tous les amateurs de randonnée, cet endroit est pour vous !', 'images/lieux/IJqiMe81MhrwEPfWDoH6lUeyeuDO2HZ4RzlNNIKK.png', NULL, NULL, NULL, '2022-05-31 13:22:59', '2022-05-31 13:38:14'),
(60, 8, NULL, 'Fam El Hisn pour ses montagnes noires', 'fam-el-hisn-pour-ses-montagnes-noires', 'Fam El Hisn ou Foum El Hisn se trouve au niveau de la province de Tata. Son appellation remonte au 19ème siècle, où la localité était entourée d\'un mur gardé par des chevaliers.\r\n\r\nLa région est connue par son climat chaud et sec et l\'hospitalité de ses habitants.  Si vous comptez passer la nuit à Fam El Hisn, vous trouverez deux auberges pour vous accueillir.\r\n\r\nFam El Hisn est un endroit idéal si vous souhaitez connaître un dépaysement total et découvrir des paysages hors du commun. Vous pouvez également jeter un coup d\'œil sur les gravures rupestres : 114 sites répartis sur toute la région et aussi organiser un trekking pour admirer les paysages aux montagnes noires, aux dunes et oasis.', 'images/lieux/N7PLuRVFxq8a0OnYjX7qWC7upqFe6ZlLo7USC077.jpg', NULL, NULL, NULL, '2022-05-31 13:37:05', '2022-05-31 13:37:05'),
(65, NULL, NULL, 'Le Musée d’Azilal ou une rencontre avec les dinosaures !', 'le-musee-dazilal-pour-une-rencontre-avec-les-dinosaures', 'Si vous êtes de passage à Azilal, ne ratez pas le Musée, situé au Géoparc M’Goun, avec une surface de 1700 m² d’exposition du patrimoine naturel, géologique, archéologique et culturel du Maroc.\r\n\r\nVous aurez l’occasion de découvrir le majestueux dinosaure l’Atlasaurus imelakei.  Il est haut de 6 mètres de hauteur et long de 18 mètres et il est considéré comme le plus grand squelette complet retrouvé en Afrique.\r\n\r\nParmi les fossiles exposés, vous trouverez également une des rares espèces, nommée Eritherium azzouzorum, l’ancêtre de l’éléphant.\r\n\r\nLe musée regroupe ainsi une collection diversifiée d’antiquités archéologiques et de fossiles, dont le plus vieux crâne d’homo sapiens découvert au monde.\r\n\r\nLa visite de ce musée vous emmènera au cœur d’un voyage à travers le temps et vous rapprochera un peu plus de l’évolution de la Terre.', 'images/lieux/12ejlQ2cVUb5BwNpKripkuqLcf8Y88rbJoUGK3WF.jpg', 'null', 'null', 'null', '2022-06-23 10:11:35', '2023-01-19 10:43:40'),
(66, NULL, NULL, 'Taghazout : pour le Surf, la plage et le dépaysement', 'taghazout-pour-le-surf-la-plage-et-le-depaysement', 'Taghazout est un lieu de vacances par excellence.\r\n\r\nGrâce à ses vagues de qualité et son climat doux durant toute l’année, Taghazout est devenu un spot de surf mondialement connu.\r\n\r\nPour y séjourner, vous trouverez aussi bien des d’hôtels que des auberges ainsi que des Surf camps qui vous proposent en plus du séjour des cours de surf et des séances de Yoga. \r\nN’oubliez pas de visiter le village de pêcheurs. \r\n\r\nA Taghazout, le souk se tient tous les mercredis et les boutiques d’artisanat sont ouverts tous les jours. Ne manquez pas d’y faire un tour pour acheter des souvenirs !', 'images/lieux/ZrkvRcinNeKBSXFUqLu8mmjlzxh61C4natWvGD8a.jpg', NULL, NULL, NULL, '2022-06-24 12:42:15', '2022-11-29 08:28:12'),
(67, NULL, NULL, 'Marina d’Agadir, dépaysement assuré', 'marina-dagadir-depaysement-assure', 'Vous pouvez résidez à la Marina d’Agadir ou vous pouvez y passer la journée  ou bien la soirée.\r\n\r\nLa Marina d’Agadir séduit par son architecture moderne et homogène propre à elle qui lui donne un véritable cachet.\r\n\r\nVous y trouverez des cafés, des restaurants, des magasins, des hôtels et activités nautiques.\r\n\r\nVous pourriez optez pour une demi-journée en bateau près de la cote avec déjeuner ou bien une excursion en bateau au coucher de soleil avec dîner ou encore une évasion pirate sur le Jack Sparrow.', 'images/lieux/c8ORvd6cMdoMM2WX07D8JcK4itIk3nmDaLGnfWoJ.jpg', NULL, NULL, NULL, '2022-07-07 15:35:09', '2022-07-07 15:35:09'),
(68, NULL, NULL, 'Le Palais el Bahia, un chef d’œuvre de l’architecture marocaine', 'le-palais-el-bahia-un-chef-doeuvre-de-larchitecture-marocaine', 'Le Palais el Bahia, construit par le grand vizir Si Moussa en 1859, est aujourd’hui l\'un des monuments les plus visités par les touristes à Marrakech.\r\n\r\nConstruit dans un style arabo-andalous, le palais s’étend sur une superficie de 8 hectares et comporte plus de 150 pièces ainsi qu’une mosquée, une école coranique, un bain maure et de très beaux jardins. \r\n\r\nEn visitant le palais, vous pouvez admirez les belles sculptures, les peintures sur le bois de cèdre, les murs recouverts de mosaïques marocains et les beaux plafonds richement décorés.\r\n\r\nLe palais est situé à 900 mètres de Jemaa el-Fna et ouvert tous les jours de 09h à 17h.\r\n\r\nLe prix de l’entrée pour adulte est de 70 dhs pour les étrangers et 10 dhs pour les marocains.', 'images/lieux/G48qn0Kori2zb6NhfzfThl4rtoCqkpLYItA5nzWd.jpg', NULL, NULL, NULL, '2022-07-13 12:59:14', '2022-07-13 13:03:05'),
(69, NULL, NULL, 'Chefchaouen, la perle bleue', 'chefchaouen-la-perle-bleue', 'En visitant Chefchaouen, vous serez émerveillés par ses belles maisons et ses ruelles aux reflets bleu qui lui donnent un charme exceptionnel.\r\n\r\nD’après les habitants de Chefchaouen, cette séduisante couleur bleue aurait été utilisée pour éloigner les moustiques et garder l’intérieur des maisons au frais.\r\n\r\nLa médina de Chefchaouen est une vrai galerie d\'art ! Les rues débordent de boutiques d\'artisanat local proposant un large choix de produits traditionnels à des prix très satisfaisants.\r\n\r\nNe manquez pas de passer par la Place Outa el Hamam, l\'endroit le plus animé de la ville. Vous y trouverez de nombreux hôtels, cafés et restaurants pour prendre un bon repas et admirer la vue panoramique sur les montagnes.\r\n\r\nEn fin de journée, n’hésitez pas à prendre de la hauteur pour admirer le coucher de soleil. Un vrai moment de détente !', 'images/lieux/vS7k3ZWTAolXHpcWd9e1hNDDFk6t0p2QmtCWs6Fx.jpg', NULL, NULL, NULL, '2022-07-21 13:51:05', '2022-07-21 13:51:05'),
(71, NULL, NULL, 'La plage Quemado, paysage unique sur la Méditerranée', 'la-plage-quemado-paysage-unique-sur-la-mediterranee', 'Située au centre de la ville d\'Al Hoceima, la plage Quemado fait partie des plus belles plages du Maroc et les plus fréquentées par les touristes.\r\n\r\nS’étendant entre les montagnes, la plage Quemado jouit d’une nature exceptionnelle et offre de magnifiques vues panoramiques. Elle est également réputée pour sa propreté et ses eaux turquoises et cristallines. Les vagues sont très calmes et conviennent aussi bien aux adultes qu’aux enfants.\r\n\r\nC’est la destination idéale pour passer les vacances d’été en famille ou entre amis en choisissant un des hôtels de cette station balnéaire calme et exceptionnelle. \r\n\r\nVous pouvez également faire une balade en bateau ou kayak ou même faire de la plongée sous-marine.', 'images/lieux/78q2nmVjKWt2ZKiWifW50dOuxrA9MWtskKNoWBiG.png', NULL, NULL, NULL, '2022-07-27 12:31:46', '2022-07-27 12:31:46'),
(73, NULL, NULL, 'Oualidia, pour une escapade romantique', 'oualidia-pour-une-escapade-romantique', 'Oualidia est un petit village de pêcheurs au sud d’El Jadida.\r\n\r\nLa plage de Oualidia, est un endroit merveilleux pour se détendre. C’est devenu l\'une des destinations idéales pour un voyage de noces compte tenu de son cadre calme et son atmosphère romantique.\r\n\r\nL’océan forme une lagune au bord de laquelle la détente et la sérénité sont assurées.\r\n\r\nVous pouvez vous baigner dans les eaux transparentes du lagon, faire une promenade en barque ou même pratiquer de nombreux sports nautiques comme le kayak et le surf.\r\n\r\nCet endroit majestueux vous offre également l’occasion d’observer plusieurs espèces d’oiseaux migrateurs. Son lagon pittoresque abrite parfois même des flamants roses !\r\n\r\nLa ville de Oualidia est réputée pour la qualité de ses fruits de mers, spécialement les huîtres, que les pêcheurs pourront vous faire déguster au bord de la plage à des prix très raisonnables.', 'images/lieux/04YSEk8saMe3t6RtsF9omajtUyKaWtjUMN5vG7nW.jpg', NULL, NULL, NULL, '2022-08-03 15:14:43', '2022-08-03 15:14:43'),
(74, NULL, NULL, 'Dakhla, la perle du sud marocain', 'dakhla-la-perle-du-sud-marocain', 'Entre désert et océan, des panoramas à couper le souffle, et un climat doux tout au long de l\'année, la ville de Dakhla demeure l’une des plus belles villes du désert marocain.\r\n\r\nOutres les plages éblouissantes qui s’étendent à des kilomètres, la ville de Dakhla abrite plusieurs camps de sports nautiques. D’ailleurs, elle figure parmi les spots de kitesurf les plus réputés au monde.\r\n\r\nA Dakhla les activités sont diverses. Vous pouvez faire des excursions en 4x4 pour découvrir les paysages sauvages, faire des promenades à dos de chameaux ou chevaux ou même faire une séance pédicure naturelle avec des poissons à Imlili. \r\n\r\nNe manquez pas aussi de prendre un bain d’argile blanche à l’île du Dragon. Vous pouvez vous y rendre en bateau ou à pieds lorsque la marée est basse.\r\n\r\nLa source d’Ain El Kabrit, est également une bonne expérience à tester. Son eau thermale est connue pour ses vertus pour les os, la peau et les troubles respiratoires. Le prix pour le jet d’eau est à 15 dhs seulement !\r\n\r\nLes eaux de Dakhla sont parmi les plus riches en poissons au monde. Vous aurez un large choix de plats à base de poissons frais. \r\nN’hésitez pas à les déguster !', 'images/lieux/H76hpUahmljPqRB5I1c4z4yEicVZFF3VcUIUsUAj.jpg', NULL, NULL, NULL, '2022-08-10 12:44:10', '2022-08-10 12:47:33'),
(75, NULL, NULL, 'La place mythique de Jemâa El Fna', 'la-place-mythique-de-jemaa-el-fna', 'Jemâa El Fna est le cœur battant de la ville de Marrakech et l’un des principaux espaces culturels de la Médina.\r\n\r\nCe lieu magique regroupe diverses attractions et animations. \r\n\r\nEn visitant cette place emblématique, vous aurez l’occasion d’admirer les spectacles des charmeurs de serpents, des dresseurs de singes, des conteurs et des acrobates qui viennent animer la place chaque jour et créer une ambiance exceptionnelle.\r\n\r\nVous aurez l’embarras de choix par rapport aux cafés, ou aux restaurants qui proposent de la cuisine marocaine sous une atmosphère typique. \r\n\r\nLe soir, installez-vous sur l’un des stands pour déguster des grillades, du \"tanjia\" ou de la soupe d’escargots et laissez-vous emporter par le rythme hypnotique de la musique Gnaoua.\r\n\r\nN’oubliez pas de vous promener dans les allées du souk pour découvrir la beauté de l’artisanat marocain et acheter des souvenirs.', 'images/lieux/EwukFAOQJmhN8lSlyG53xSnVCBytbnqqcZxaAC9D.jpg', NULL, NULL, NULL, '2022-08-31 15:35:02', '2022-08-31 15:35:02'),
(76, NULL, NULL, 'Cascades d\'Ouzoud au coeur de l\'Atlas', 'cascades-douzoud-au-coeur-de-latlas', 'Les cascades d’Ouzoud sont situées à 150 km de Marrakech et à 80 km de la ville de Beni Mellal.\r\n\r\nMesurant 110 mètres de haut, les cascades d’Ouzoud sont classées en deuxième position parmi les plus hautes cascades en Afrique.\r\n\r\nCet ilot de fraicheur est très apprécié par les touristes marocains et étrangers qui s’y rendent tout au long de l’année.\r\n\r\nCet endroit spectaculaire et sensationnel vous fait découvrir la nature sauvage, d’immenses falaises de roche rouge et rencontrer des singes barbares en liberté.\r\n\r\nEn visitant ce lieu, n’hésitez pas à faire une balade en bateau pour admirer les chutes de plus près et à déguster des délicieux plats locaux chez les restaurants se situant au bord de la cascade.\r\n\r\nVous pouvez vous y rendre en voiture ou en grand taxi ou encore réserver une excursion organisée par des agences de voyages. Ces dernières proposent des packages incluant le transfert aller/Retour, le repas et d’autres moyens de divertissements à des prix convenables.', 'images/lieux/sEHWMeLtAOoZQREaatSC0XU1uzDYKsUNR39cPkuM.png', NULL, NULL, NULL, '2022-09-20 12:22:20', '2022-09-20 12:23:36'),
(87, NULL, NULL, 'Ouarzazate', 'ouarzazate', 'Ouarzazate, la ville connue comme le Hollywood de l\'Afrique, et la porte d\'entrée du Grand Sud. C\'est à partir de cette ville, que plusieurs randonnées démarrent vers les vastes dunes et oasis du sud marocain. Près de la rivière Ziz, où se rejoignent le Draa et le Dadès, les sites naturels se transforment en un champ de palmeraies, de jardins, ainsi que d’un désert pierreux. \r\n\r\nDisposant d’un aéroport international positionné à trois kilomètres du centre-ville, Ouarzazate se trouve à environ 200 km de Marrakech, et à 1160m sur les hauts plateaux de l\'Atlas, au-dessus des plaines et à l\'entrée du désert. La ville bénéficie d\'un climat unique, des hivers modérés et des étés chauds. \r\n\r\nParmi les lieux que vous devez absolument visiter pendant votre séjour à Ouarzazate, le musée du Cinéma qui est situé sur le terrain d\'un ancien plateau de tournage. Ce plateau est remarquable pour son atmosphère de films qui sont  principalement liés aux histoires des religions.\r\n\r\nLe complexe artisanal et la kasbah de Taourirte  sont également à proximité du musée. Ils vont vous permettre de découvrir les grands moments de l\'histoire du cinéma et les films exceptionnels qui y ont été tournés, tels que : PRISON BREAK, KINGDOM OF HEAVEN, THE MUMMY et THE WAY BACK.', 'images/lieux/ZJEtZ9DxScY9vqSCilGlAE6izBnpSTEr1cEFQuW3.jpg', NULL, NULL, NULL, '2022-10-20 09:09:15', '2022-10-20 12:56:04'),
(106, NULL, NULL, 'Aït Bouguemez', 'ait-bouguemez', 'Aït Bouguemez ou la vallée heureuse, est un havre paisible entouré par des montagnes ayant environ 2000 mètres de hauteur. Elle est située à 75 km d’Azilal.\r\n\r\nAfin d’y arriver, de multiple moyens de transport sont à votre disposition. Vous pouvez aussi opter pour des agences qui proposent des excursions si vous préférez voyager en groupe. \r\n\r\nA Aït Bouguemez, vous pouvez découvrir le Mont M\'Goun, l’une des plus hautes montagnes du Maroc après Toubkal. Son sommet, qui atteint près de 4 000 mètres, offre une vue séduisante sur les vastes oasis et les montagnes du Haut Atlas central.\r\n\r\nN’hésitez pas à faire des randonnées à Aït Bouguemez pour découvrir ses paysages, et exercer plusieurs autres activités, telles que le canyonisme, le parachute, et le ski pendant l’hiver.\r\n\r\nAfin de séjourner et déguster une excellente cuisine 100% marocaine, vous y trouverez des maisons d\'hôtes et auberges à des prix raisonnables.', 'images/lieux/7Xx8obEHnFPEhGB7vkdQRuf4Xy9tDGDnVgSKhAPT.png', NULL, NULL, NULL, '2022-10-27 15:59:48', '2022-10-27 15:59:48'),
(107, NULL, NULL, 'Ourika', 'ourika', 'Ourika est une vallée verdoyante, bordée de vergers, d’oliviers, d\'amandiers et de cerisiers. Les altitudes de l\'Ourika sont de 1500 mètres. La vallée a une  température agréable qui vous permet de se rafraîchir pendant la saison estivale.\r\n\r\nSituée à 60 km au sud de Marrakech, à environ 45 minutes de route, vous pouvez facilement aller à Ourika en voiture ou en transport commun.\r\n\r\nDe nombreuses randonnées sont proposées pour visiter les paysages, les villages traditionnels, le jardin et montagnes de Timalizene, le marché hebdomadaire du lundi “Souk Tnin\",  et la “Safranière de l\'Ourika”. \r\n\r\nPour se nourrir, des restaurants vous proposent  des plats traditionnels, spécialement des Tajines, à prendre dans les terrasses où au-dessus du fleuve “Oued Ourika”. \r\n\r\nA Ourika, vous trouverez des hôtels, auberges et maisons d’hôtes où vous pouvez séjourner.', 'images/lieux/ujv92slv6nzEyXwGjvujyRTOuCbIOTeZOPtHjbrj.jpg', NULL, NULL, NULL, '2022-10-28 07:45:53', '2022-10-28 07:45:53'),
(108, NULL, NULL, 'Setti Fatma', 'setti-fatma', 'Setti Fatma ou Sti-Fadma, est un petit village berbère charmant situé à environ 64 km de Marrakech. Le village est coupé par une vallée, et recèle sept cascades dans ses altitudes.\r\n\r\nPour y arriver, vous devez vous y rendre en voiture ou en grands taxis. Vous pouvez aussi vous inscrire dans des excursions quotidiennes proposées par des guides touristiques.\r\n\r\nIl faut faire une randonnée d’environ 1h30 afin d’atteindre toutes les cascades de Setti Fatma.\r\n\r\nVous rencontrerez sur votre chemin, des commerçants traditionnels qui proposent des produits locaux: des fruits, des huiles, des herbes aromatiques, et des produits cosmétiques naturels. \r\n\r\nN’oubliez pas d’acheter des souvenirs, des décorations, et des bijoux avant votre retour.\r\n\r\nA Setti Fatma, vous trouverez de multiples logements d’accueil, auberges, maisons d\'hôtes et restaurants traditionnels où on vous sert des tagines, brochettes, du couscous et d’autres plats marocains tout près de la source. Vous pouvez même vous rafraîchir, quand il fait chaud, dans un petit lac en bas de la cascade.', 'images/lieux/34rw2YU31M6291cibulAartmCPngEIlcxffSUg1q.jpg', NULL, NULL, NULL, '2022-10-28 07:48:13', '2022-10-28 07:48:13'),
(109, NULL, NULL, 'Sqala de la Kesbah: La protectrice d’Essaouira', 'sqala-de-la-kesbah-la-protectrice-dessaouira', 'Une plateforme d\'artillerie datant du 18ᵉ siècle et l\'une des principales fortifications d\'Essaouira. Ces remparts ont été érigés pour protéger la ville des invasions étrangères.\r\n  Construite en pierre taillées, elle longe l’Océan Atlantique et s’étend sur  une centaine de mètres. Un monument emblématique qui vous ramène à un autre temps. \r\n   La belle vue de la mer et du port d\'Essaouira  ainsi que la fraîcheur et la force du vent qui souffle rend l’expérience fascinante et agréable.', 'images/lieux/DE1XKBfhFp1jvG0toKlUak48SqM2kzlVcixeju4P.jpg', NULL, NULL, NULL, '2022-11-17 09:19:25', '2022-11-17 09:27:47'),
(111, NULL, NULL, 'Dar Dbagh : Au Cœur de Fès', 'dar-dbagh-au-coeur-de-fes', 'Le quartier des tanneurs de l’ancien Fès (nommé aussi Fès el-Bali) est sans aucun doute l\'un des endroits les plus spéciaux et les plus impressionnants de la ville.  Il est situé à proximité du cœur de la médina et de la mosquée Quaraouiyine. \r\n  Ce qui rend cet endroit plus unique et particulier est la technique de travail des tanneurs qui n’a jamais changé, des techniques entièrement manuelles utilisées jusqu’à ce jour-là.\r\n   Les visiteurs peuvent entrer dans l’une des boutiques et monter dans une terrasse pour pouvoir par la suite avoir une vue panoramique fascinante avec l’ancienne Médina dans l’arrière-plan. Mais pas sans que les commerçants distribuent des brindilles de menthe, les clients doivent la tenir sous leur nez et respirer très fort comme un masque à gaz (vu que l’odeur est un peu désagréable).', 'images/lieux/II9vFiv6z4tGYMGg95qtHLhJw9Uvn2BKqRimFRfU.jpg', NULL, NULL, NULL, '2022-11-22 12:28:26', '2022-11-22 12:33:09'),
(114, NULL, NULL, 'Merzouga : Aux portes du grand désert', 'merzouga-aux-portes-du-grand-desert', 'Situé au sud-est du Maroc à 50 Km d’Erfoud, à la porte du Sahara et aux pieds des dunes de l’erg Chebbi, une immense étendue de sable doré.\r\n   Partir en découverte des dunes à pieds, en 4x4, sur le dromadaire ou le cheval, ou bien encore en quad, est l’une des activités principales à faire en visitant cette ville. Vous pouvez également profiter de l’arénothérapie ou le bain de sable vu que le sable de la région est très connu par ses effets thérapeutiques.\r\n  Merzouga est un endroit parfait pour un bivouac, vous pouvez passer la nuit en plein désert sous l’océan des belles étoiles et ne manquez surtout pas le spectacle du lever et coucher du soleil.', 'images/lieux/1tTtUGEus4gzRH5uvFSLe2cwbjk4i9ZBoPq5HuMo.jpg', NULL, NULL, NULL, '2022-11-29 08:32:38', '2022-11-30 13:19:15'),
(115, NULL, NULL, 'Ifrane, la petite Suisse marocaine', 'ifrane-la-petite-suisse-marocaine', 'Ifrane est la destination parfaite pour profiter d’un weekend de pure détente et de repos absolu pendant la saison d’hiver.\r\n\r\nLa beauté d’Ifrane réside dans son ambiance calme, sa nature époustouflante et la pureté de l’air. Autant d’atouts qui font que cette belle petite ville de montagne soit classée la deuxième plus propre ville du monde !\r\n\r\nEn hiver, après les chutes de neige, Ifrane devient une perle blanche. N’hésitez pas à vous rendre à la station Michlifen pour y pratiquer du ski ou la luge. \r\nÀ 3 kilomètres du centre-ville, vous découvrirez les fameuses cascades d’Aïn Vitel. Si c’est une journée ensoleillée, vous pourrez en profiter pour pique-niquer le long de la rivière ou même pour faire des randonnées à cheval à seulement 30 dirhams (MAD).\r\n\r\nUn trajet d’une heure en voiture depuis Meknès, vous suffit pour vous rendre à Ifrane. Disponibilité d’autocars et des grands taxis.', 'images/lieux/KBKyyRgftnBFv78puRwMa4fCx41ks48cn1zQIYPe.jpg', NULL, 'snow test', 'null', '2023-01-04 09:56:50', '2023-01-05 15:19:29'),
(121, NULL, NULL, 'Paradise Valley, la merveille cachée à Agadir', 'paradise-valley-la-merveille-cachee-a-agadir', 'Envie de s\'évader au vert pour vous rapprocher de la nature et vous éloigner des tensions du quotidien ? Paradise Valley est la destination qu’il vous faut !\r\nConnue par ses petites cascades et ses nombreuses piscines sauvages et naturelles à l\'eau cristalline, cette merveilleuse oasis d’Agadir attire chaque année des voyageurs du monde entier.\r\n\r\nSur le long de la vallée, des petits restaurants vous donnent l’opportunité de déguster des tajines tout en profitant de l’ombre des palmiers et la fraicheur de l’eau sous une ambiance exotique. Vous trouverez même des tables installées dans la rivière où un fish spa naturel serait accessoirement offert par les poissons locaux vivant dans cette dernière.\r\n\r\nLa Vallée du Paradis se visite idéalement de septembre à mai. Pendant cette période les bassins sont remplis d’eau, vous pouvez profiter de la baignade ou faire du Cliff jumping (saut de falaise).\r\n\r\nLe trajet depuis Agadir vous prendra environ 60 minutes en voiture. La route est un peu difficile à suivre, une excursion guidée d’une journée ou d\'une demi-journée est recommandée.', 'images/lieux/MMEqc8EFscMOQE3tZDkH1p3R9C4uFw7rgtbTbREy.jpg', 'Paradise Valley, la merveille cachée à Agadir', 'paradise,village,agadir,essaouira', 'Connue par ses petites cascades et ses nombreuses piscines sauvages et naturelles à l\'eau cristalline, cette merveilleuse oasis d’Agadir attire chaque année des voyageurs du monde entier.', '2023-01-05 15:12:30', '2023-01-13 10:14:59'),
(130, NULL, NULL, 'L’oasis de Fint', 'loasis-de-fint', 'A une quinzaine de kilomètres de Ouarzazate se trouve la fabuleuse oasis de Fint. Un lieu où les amoureux de la quiétude et la verdure seront servis. \r\n\r\nUn paradis caché au milieu des rochers d’où son nom « fint » qui signifie en langue Berbère « dissimulé ». Un tableau verdoyant composé de majestueux palmiers dattiers, de vergers et d’une rivière.\r\n\r\nLes randonnées et les balades à dos d’ânes organisées par les habitants restent ce qu’il y a de mieux à faire pour profiter de la nature encore préservée de cette destination, qui vous offre la chance d’embrasser du regard des paysages grandioses dignes des grands films qui ont été tournés sur place depuis les années 1930 : Laurence d’Arabie, Alibaba et les quarante voleurs (avec Fernandel), Cléopâtra, et plus récemment, Indigènes avec Jamel Debbouze.\r\n\r\nVous pourrez vous y rendre en voiture, en quad ou en grand taxi que vous trouverez à côté de la station de bus ou à la Place Al-Mouahidine. \r\n\r\nLa convivialité des habitants donnera plus de charme à votre visite et en fera un souvenir mirifique pour toute une vie.', 'images/lieux/3gjtTvqoB73b8DGuMX8ylDnXIDzvf4Y5DfqCVitw.jpg', 'oasis-de-fint', 'maroc,oasis,voyage,ouarzazate,tourisme,hotel,auberge', 'A une quinzaine de kilomètres de Ouarzazate se trouve la fabuleuse oasis de Fint. Un lieu où les amoureux de la quiétude et la verdure seront servis.', '2023-01-09 08:53:20', '2023-01-09 09:01:23'),
(136, NULL, NULL, 'Asilah : Envoutée par l’art', 'asilah-envoutee-par-lart', 'Asilah ou Assilah est une petite ville peu connue que l’œil ne peut qu’admirer. Un chef-d\'œuvre peint en blanc et en bleu qui vous fera penser aux îles grecques et que les amateurs d’art et de plage auront du mal à quitter.\r\n\r\nLa charmante médina vous en mettra plein la vue. Se situant au bord de l’océan et entourée d’une grande muraille conçue par les portugais, vous surprendra par le nombre de fresques et de tableaux que vous trouverez à chaque coin de rue. L’art est dans l’air !\r\n\r\nVous devrez certainement vous rendre à Borj al-Bahr pour profiter de la vue panoramique.\r\n\r\nQuant aux plages environnantes, elles vous donneront l’impression d’être féériques. Avec leurs eaux turquoises et leur sable fin et doré, vous ne pouvez que les apprécier.\r\n\r\nLes activités pouvant être pratiquées sont le surf et la visite de galerie.', 'images/lieux/SQ0zvP3sn21Yp4v7icvl1Dn4uLHdefGzmKLtwCWC.jpg', 'asilah-envoutee-par-l-art', 'asilah,maroc,voyage,tourisme,visite,artisanat', 'Asilah ou Assilah est une petite ville peu connue que l’œil ne peut qu’admirer. Un chef-d\'œuvre peint en blanc et en bleu qui vous fera penser aux îles grecques et que les amateurs d’art et de plage auront du mal à quitter.', '2023-01-10 09:37:02', '2023-01-10 09:44:33'),
(137, NULL, NULL, 'Parc national de Khénifra : La diversité au point', 'parc-national-de-khenifra-la-diversite-au-point', 'Une escapade à la nature et une bouffée d’air frais vous tentent. Le parc national de Khénifra est prêt à vous accueillir les bras grands ouverts pour vous faire oublier l’agitation et la turbulence quotidiennes de la ville.\r\n\r\nSitué entre les provinces de Khénifra et Ifrane, ce dernier abrite une biodiversité fascinante. Une flore très variée où se situe la plus importante cédraie du Maroc et qui vous charmera avec ses forêts de chênes verts, de chênes zéen ainsi que de pins maritimes. Une faune remarquable regroupant des joyaux de la nature : hyène rayée, chacal, aigle royal, et singe etc…\r\n\r\nPour les rêveurs de zones humides, cette destination a tout pour vous plaire. Une multitude de lacs bordés de blanc en hiver et de vert pendant les autres saisons : lac Sidi Ali, lac Azegza, lac Ouiouane, lac Abekhane, lac N\'Miaami et le fameux lac Tiguelmamine nommé les lunettes de l’Atlas.\r\n\r\nSeul(e) ou accompagné(e), la nature sera l’hôte de votre agréable visite. Camping, pêche, pédalo, randonnée pédestre ou cycliste, il n’y a pas mieux à faire pour profiter des panoramas qui vous attendent.', 'images/lieux/qXiW6eAImJzszOpST2FbbWG9Nov1BClfd5bxble1.jpg', 'parc-national -de-khenifra', 'parc,khenifra,lac,camping,randonnee,tiguelmamine,abekhane,ouiouane,azegza', 'Le parc national de Khénifra est prêt à vous accueillir les bras grands ouverts pour vous faire oublier l’agitation et la turbulence quotidiennes de la ville.', '2023-01-13 09:50:00', '2023-01-13 10:13:42'),
(138, NULL, NULL, 'Essaouira : La ville aux mille ressources', 'essaouira-la-ville-aux-mille-ressources', 'Essaouira est connue par son festival annuel de Gnaoua qui se déroule en juin et pour être un spot de surf de renommée. Mais ce n’est pas tout, Essaouira vous cache des merveilles.\r\n\r\nSa médina vous offrira une expérience légendaire. Il s’agit d’un lieu où vous pourrez flâner pour de longues heures. Tout en vous faufilant entre ses ruelles, vous vous sentirez dans un labyrinthe d’histoire, d’art et de culture. \r\n\r\nDes bateaux peints en bleu sur le quai et des mouettes dans le ciel ; c’est l’image typique du port historique de la ville. Pour les friands des produits de la mer, votre rêve deviendra une réalité, vous ne manquerez de rien. \r\n\r\nLa Sqala est en place pour permettre aux âmes fascinées par les couchers de soleil de profiter d’un moment irréaliste.\r\n\r\nLa plage d’Essaouira est au centre-ville, vous pouvez apprécier baignade et ensoleillement, si la ville veut bien vous épargner ses tempêtes de vent.\r\nEssaouira vous propose plusieurs activités : surf, kitesurf, windsurf, sport équestre, quad et balades en dromadaire. \r\nQuand vous vous y rendrez, laissez le vent vous porter. Faites-lui confiance, il sera votre guide.', 'images/lieux/ZLj1unyBugH8hLVoUFFi3mMBKtTC6vvFWLcp9rnO.jpg', 'essaouira-la-ville-aux-mille-ressources', 'essaouira,port,surf,kitesurf, sport équestre,dromadaire', 'Essaouira est connue par son festival annuel de Gnaoua qui se déroule en juin et pour être un spot de surf de renommée. Mais ce n’est pas tout, Essaouira vous cache des merveilles.', '2023-01-16 14:15:01', '2023-01-16 14:15:47'),
(139, NULL, NULL, 'Tanger : La ville aux deux façades', 'tanger-la-ville-aux-deux-facades', 'Tanger est une ville cosmopolite, dotée d’une touche à la fois marocaine et européenne. Archaïque et moderne, cette dernière vous offre un dépaysement garanti.\r\n\r\nPour les personnes fascinées par l’art et l’architecture hispano-mauresque, vous êtes à la bonne adresse. Les édifices et les monuments historiques ne peuvent que vous éblouir : Palais des Institutions Italiennes, l\'église anglicane de Saint Andrew, la Grande mosquée, le Musée de la Kasbah, le Musée de la légation américaine de Tanger …\r\n\r\nUne visite de la médina est recommandée. Elle comporte en elle une beauté à émerveiller les esprits. Prenez le temps pour vous y perdre. Le quartier de la Kasbah, quant à lui, c’est là où l’histoire de Tanger est racontée.\r\nEntre le Grand Socco et le petit Socco vous serez littéralement gâtés de couleurs et de parfums. Il s’agit des lieux parfaits pour dénicher des souvenirs et des produits typiques.\r\n\r\nSi vous avez envie de respirer de l’air frais, vous pouvez aller au jardin de la Mendoubia ou au parc Perdicaris.\r\n\r\nPour des vues magnifiques marquant toute une vie, vous devez vous rendre aux Grottes d\'Hercule et au cap Spartel.\r\n\r\nEntre les plages méditerranéennes et celles du côté Atlantique, la position stratégique de la ville vous donnera la chance de bénéficier d’une diversité incomparable en matière de plages. Eau turquoise et sable blanc, ce paradis est si tentant !', 'images/lieux/XeumZVw6EMSoldsydbFVI9woYY9CkWB0k040emJZ.jpg', 'tanger-la-ville-aux-deux-facades', 'tanger,ville,voyage au maroc, lieu à visiter au maroc, musée tanger, sortir à tanger, plage tanger', 'Tanger est une ville cosmopolite, dotée d’une touche à la fois marocaine et européenne. Archaïque et moderne, cette dernière vous offre un dépaysement garanti.', '2023-01-20 09:14:20', '2023-01-20 09:19:30'),
(140, NULL, NULL, 'Casablanca : La ville sculptée par la modernité', 'casablanca-la-ville-sculptee-par-la-modernite', 'Casablanca ou Casa est connue pour être la ville économique du Royaume. Cette dernière est peu touristique comparée aux autres villes, mais elle cache bien son charme avec ses immenses immeubles et l’agitation qui y règne.\r\nL’architecture néo-marocaine est au rendez-vous laissant sa touche sur de nombreux édifices tels que la Wilaya, le tribunal de première instance, Bank-Al Maghirb et la poste (Barid Al Maghrib) qui se trouvent tous au centre-ville.\r\n\r\nTout près de ces établissements, il y a non seulement le parc de la Ligue arabe pour savourer un moment de quiétude et un retour à la nature, mais aussi un skatepark pour les amateurs du skatebording, le musée Abderrahman Slaoui ainsi que la cathédrale du Sacré-cœur.\r\nCasablanca dispose de l\'une des plus magnifiques et grandes mosquées du monde, la Mosquée Hassan II, qui représente la fierté de tous les casablancais et des marocains en général. Il s’agit d’une perle architecturale au minaret grandiose, construite sur la mer. Prenez le temps pour contempler ce chefs-d\'œuvre somptueux qui est l’une des seules mosquées ouvertes aux non-Musulmans dans tout le monde arabe.\r\n\r\nToujours sur la côte, connue sous le nom d’Ain Diab, la corniche de Casablanca est un lieu prisé pour se détendre et se divertir. Vous y trouverez le parc d’attraction Sindibad qui n’est pas si loin du Morocco Mall, le plus grand centre commercial d\'Afrique et l\'un des plus grands au niveau international.\r\nMalgré l’aspect moderne de la ville, son côté antique est toujours préservé.\r\nSa médina représente un incontournable où vous pourrez flâner tout en admirant les petites boutiques qui s’y trouvent. A l’extérieur vous trouverez des bazars proposant des produits d’artisanat et des souvenirs.\r\n\r\nLe quartier des Habous, est aussi une destination parfaite pour vous procurer des objets typiques, mais il s’agit également d’un endroit calme où vous pourrez vous balader tranquillement et admirer l’architecture typiquement marocaine.\r\nLe quartier Derb Sultan, le plus agité et surpeuplé de tous, vous offrira une expérience exceptionnelle. Des ruelles entremêlées remplis de petits commerces et des bâtisses industrielles désinfectées. C’est bien une boîte à merveilles.\r\nCasa reste une ville où l’ambiance ne s’éteint jamais. Vous y vivrez une expérience du présent avec une saveur d’antan !', 'images/lieux/QBNjzcheW8vPo9lBjQfRn6npeApy2lx8SBUvhj4n.jpg', 'casablanca-ville-sculptee-par-la-modernite', 'casablanca,mosquée hassan 2, derb sultan, ain diab, habous, architecture marocaine, ville marocaine', 'Casablanca ou Casa est connue pour être la ville économique du Royaume. Cette dernière est peu touristique comparée aux autres villes, mais elle cache bien son charme avec ses immenses immeubles et l’agitation qui y règne.', '2023-01-26 09:13:15', '2023-01-30 12:33:44'),
(141, NULL, NULL, 'Le Jardin Majorelle pour une évasion tropicale', 'le-jardin-majorelle-pour-une-evasion-tropicale', 'Le Jardin Majorelle est un jardin botanique luxuriant situé à Marrakech. Il a été créé par le peintre français Jacques Majorelle dans les années 1920 et a été restauré par Pierre Bergé et le couturier Yves Saint Laurent pour en faire un lieu d\'inspiration propice à la création de mode.\r\n\r\nAujourd\'hui, le Jardin Majorelle est une attraction touristique de Marrakech et est considéré comme l\'un des plus beaux jardins du monde. \r\nLe Jardin s\'étend sur environ deux hectares et se caractérise par sa couleur bleu Majorelle dominante qui contraste parfaitement avec les végétaux environnant pour créer une atmosphère à la fois gaie et reposante. \r\n\r\nEn vous promenant dans ses allées, vous serez sans doute séduit par cette oasis végétale, aux 300 espèces de plantes exotiques et aquatiques et aux différentes espèces d’oiseaux qui y séjournent.  Ses fontaines et ses bassins d’eau renforcent le sentiment de quiétude.\r\n\r\nAu cœur du jardin Majorelle se trouve également l’incontournable Musée berbère. Ce dernier présente une collection d’objets berbères provenant de diverses régions du Maroc, notamment des bijoux, des costumes, des armes, des tapis, des poteries et d\'autres objets traditionnels. \r\n\r\nEn complément de votre visite, vous trouverez également un salon de thé pour profiter d’un pur moment de détente et une boutique de produits artisanaux locaux, pour vos cadeaux souvenirs.\r\n\r\nLe prix d’entrée est entre 70 dirhams et 150 dirhams . Un supplément de 30 dhs à 50 dirhams est à payer sur place si vous souhaitez visiter le Musée berbère.', 'images/lieux/cySULI6R26Vs0vqhvfUHYecbJKCe2W1CFHS60u28.jpg', 'jardin-majorelle-marrakech', 'jardin majorelle, marrakech, musée berbère', 'Le Jardin Majorelle est un jardin botanique luxuriant situé à Marrakech. Il a été créé par le peintre français Jacques Majorelle dans les années 1920 et a été restauré par Pierre Bergé et le couturier Yves Saint Laurent pour en faire un lieu d\'inspiration propice à la création de mode.', '2023-02-15 15:32:01', '2023-02-15 15:32:01'),
(143, NULL, NULL, 'Meknès, la capitale ismaélienne', 'meknes-la-capitale-ismaelienne', 'Meknès est une ville historique située dans le nord-ouest du Maroc. Elle est connue pour ses remparts et son riche patrimoine culturel, architectural et historique.\r\n\r\nParmi les sites les plus connus de Meknès, on trouve la médina, la vieille ville fortifiée inscrite au patrimoine mondial de l\'UNESCO depuis 1996. Sa porte d’entrée Bab Mansour, ornée de mosaïques colorées et de zelliges, est considérée comme les plus belles portes au monde. Ce passage historique vous emmènera au cœur de la Place Lahdim, l’espace public le plus populaire de Meknès.\r\n\r\nMeknès est l\'un des exemples les plus complets de l\'urbanisme et de l\'architecture marocains. Elle regorge de bâtiments religieux et de sites culturels, tels que le musée Dar Jamai, les écuries royales, la mystérieuse prison souterraine de Cara ainsi que le mausolée Moulay Ismaïl.\r\n\r\nLe quartier juif de Meknès, également connu sous le nom de Mellah, est un quartier historique situé dans la médina. N’hésitez pas à explorer ses rues étroites, ses synagogues ainsi que son musée du judaïsme, qui sont des témoins de la vie juive à Meknès à travers les siècles.\r\n\r\nSi vous souhaitez acheter des produits locaux, nous vous recommandons de faire un tour dans les souks. Les Souks de la ville de Meknès sont parmi les plus insolites et les plus pittoresques de tout le Maroc. Ils sont très célèbres pour leur artisanat, notamment pour les tapis, les tissus, les bijoux en argent, les poteries, les babouches et les épices. \r\n\r\nMeknès est également réputée pour sa cuisine locale. Vous y trouverez divers cafés traditionnels et restaurants, proposant des plats traditionnels tels que le méchoui, un plat à base d\'agneau grillé et le tagine aux châtaignes, une spécialité typiquement meknassie que vous ne devez absolument pas rater !\r\n\r\nC’est une ville dynamique et accueillante, qui offre une belle expérience de découverte de la culture marocaine.', 'images/lieux/1qfGyOfYC1vEzek0hVYGAgLq1SltYLgq4sCVPS2p.png', 'meknes-la-capitale-ismaelienne', 'Voyager au Maroc, Lieux à visiter au Maroc, Villes touristiques marocaines, Meknès, Place Lahdim, Bab Mansour', 'Meknès est une ville historique située dans le nord-ouest du Maroc. Elle est connue pour ses remparts et son riche patrimoine culturel, architectural et historique.', '2023-02-20 09:36:10', '2023-02-20 09:36:10'),
(144, NULL, NULL, 'Rabat, la capitale du Maroc', 'rabat-la-capitale-du-maroc', 'Rabat est la capitale administrative du Maroc et l\'une des villes les plus importantes du Maroc. C’est une ville moderne avec une riche histoire et une culture diversifiée.\r\n\r\nLa Medina de Rabat est la vieille ville entourée d\'un mur d\'enceinte datant du 12ème siècle, avec deux portes principales Bab El Alou et Bab El Had. En y passant, vous découvrirez des rues étroites et sinueuses, des souks colorés et une architecture marocaine qui vous plongera dans une atmosphère d’antan.\r\n\r\nLa Kasbah des Oudayas est également à visiter, citadelle historique située sur une colline surplombant l\'embouchure du fleuve Bouregreg et la mer Méditerranée. Caractérisée par ses ruelles pittoresques et ses murs blanchis à la chaux, la Kasbah est un endroit paisible où vous pouvez vous détendre, profiter d\'une vue imprenable sur la mer et admirer le coucher de soleil. Vous pouvez également loger dans les l’un de ses Riads.\r\n\r\nRabat compte également de nombreux monuments historiques, dont la tour Hassan, le mausolée de Mohammed V ainsi que l’ancienne nécropole Chellah. \r\n\r\nL’urbanisme de Rabat est marqué par une grande diversité, mêlant l\'héritage historique de la ville avec une modernité en constante évolution. Vous pouvez ainsi vous balader dans ses quartiers modernes aux bâtiments à l\'architecture contemporaine, aux parcs verdoyants, aux centres commerciaux et aux hôtels de luxe. N’oublier pas de faire une virée à la marina qui constitue également un lien avec la ville de Salé.\r\n\r\nSa vie culturelle est vibrante, vous pouvez visiter différentes galeries d\'art et musées, tels que le Musée Mohammed VI d\'art moderne et contemporain et le Musée archéologique, ou assister à plusieurs festivals et événements culturels.', 'images/lieux/elHpMP4EQCsRTBFl4fGTGZOuM7GTpCWKFifZ66As.jpg', 'rabat-capitale-du-maroc', 'rabat, Kasbah des Oudayas, mausolée de Mohammed V , tour Hassan, nécropole Chellah, monuments historiques maroc, La Medina de Rabat', 'Rabat est la capitale administrative du Maroc et l\'une des villes les plus importantes du Maroc.', '2023-03-01 10:14:25', '2023-03-01 10:14:25'),
(145, NULL, NULL, 'Fès - Une ville impériale qui vous fait remonter le temps', 'fes-une-ville-imperiale-qui-vous-fait-remonter-le-temps', 'Entrez dans un monde de couleurs, de saveurs et d\'histoire en explorant la ville impériale de Fès, carrefour des marchands depuis le VIII siècle. \r\n\r\nCommencez votre matinée en explorant la médina de Fès, l\'une des plus grandes places piétonnes au monde. Visitez la Mosquée Karaouiyne, la plus grande mosquée de Fès, qui remonte au IX siècle. Admirez l\'architecture de la Madrasa Bou Inania, l’école coranique vieille de plus de 700 ans. Et surtout, ne manquez pas la Porte Bleue, une entrée principale de la médina, ornée de tuiles bleues et vertes magnifiques.\r\n\r\nAprès une matinée bien remplie, prenez une pause déjeuner dans l\'un des nombreux restaurants traditionnels de la médina. Goûtez ses plats typiques tels que le tajine, le couscous ou encore le méchoui. \r\n\r\nEn début d\'après-midi, rendez-vous dans les souks traditionnels pour faire du shopping. Vous y trouverez des bijoux en argent, des textiles, des articles en cuir et bien plus encore. Puis, visitez la tannerie Chouara, l\'une des plus grandes et des plus anciennes tanneries du monde. Vous pourrez y voir les artisans travailler le cuir de manière traditionnelle.\r\n\r\nEn fin d\'après-midi, terminez votre journée en dégustant un thé à la menthe rafraîchissant dans l\'un des cafés surplombant la médina de Fès. Profitez de la vue sur les toits de la ville et les montagnes environnantes, en appréciant une atmosphère unique et un sentiment d\'aventure et de découverte.', 'images/lieux/LAZLssU7yXHfiwbbRJuKZa0qNz5L54hEISyOmC0h.jpg', 'Visitez ville impériale', 'Sejour,maroc,fès,ville,impériale,karaouiyne', 'Entrez dans un monde de couleurs, de saveurs et d\'histoire en explorant la ville impériale de Fès, carrefour des marchands depuis le VIII siècle.', '2023-04-05 10:49:14', '2023-04-05 12:49:32'),
(147, NULL, NULL, 'Tétouan - Le joyau caché', 'tetouan-un-joyau-cache-du-maroc-a-explorer', 'Tétouan, une ville fascinante du nord du Maroc dotée d\'un charme hispano-mauresque et qui regorge de sites touristiques. Commencez votre journée en explorant la médina de Tétouan, qui avec ses rues étroites, sinueuses et ses bâtiments blancs et bleus qui vous transportent dans un autre temps, est considérée comme étant la plus belle dans le nord du Maghreb. Perdez-vous dans ce labyrinthe de souks colorés et profitez de l\'atmosphère unique de cet endroit.\r\n\r\nVous pourrez aussi admirer l’architecture mauresque traditionnelle de l\'extérieur du Palais Royal. Ensuite, dirigez-vous vers la Kasbah de Tétouan, une forteresse historique construite au XVème siècle qui offre une vue imprenable sur la ville et la campagne environnante. Prenez votre temps pour explorer cet endroit incontournable.\r\n\r\nPour déjeuner, dirigez-vous vers la Place Hassan II, un lieu de rencontre où vous pouvez déguster de délicieux plats marocains dans l\'un des nombreux cafés et restaurants qui bordent la place, tout en profitant de l\'ambiance animée.\r\n\r\nSi c’est l’été, rendez-vous à la plage de Martil pour vous détendre et profiter du soleil. Cette plage de sable fin est populaire auprès des habitants et des touristes, et vous pourrez y pratiquer diverses activités nautiques, comme la baignade, le surf ou le jet ski.', 'images/lieux/PoknC5W34Felv0GzMoeKTzA0hUW6oYwEoqj7UWLm.jpg', 'La perle du nord marocain', 'Sejour,maroc,tetouan,plage,gastronomie,kasbah', 'Tétouan, une ville fascinante du nord du Maroc qui regorge de sites touristiques.', '2023-04-05 11:06:24', '2023-07-09 19:52:41'),
(148, NULL, NULL, 'Volubilis - Une fenêtre sur l\'Empire romain', 'volubilis-une-fenetre-sur-le-passe-de-lempire-romain-en-afrique-du-nord', 'Vous rêvez de voyager dans le temps et de découvrir la vie dans une ville romaine antique ? Alors ne manquez pas l\'opportunité de visiter le site archéologique de Volubilis, situé dans le nord-ouest du Maroc, à seulement 30 kilomètres de la ville de Meknès.\r\n\r\nEn explorant les ruines de Volubilis, vous serez à la fois, fasciné par les mosaïques somptueuses et les vues panoramiques qui s\'offrent à vous. Les sites les plus impressionnants, tels que le Capitole, le forum, le temple de Jupiter, les thermes, la maison de Bacchus, la maison d\'Orphée et la maison aux mosaïques, vous donneront un aperçu de la culture et de la vie quotidienne dans l\'Empire romain en Afrique du Nord.\r\n\r\nEnfin, avant de quitter le site archéologique, ne manquez pas de visiter l\'espace d\'exposition où sont présentées quelques mosaïques et objets archéologiques. Cet espace vous fournira des informations supplémentaires sur l\'histoire de Volubilis et sur les fouilles archéologiques menées dans la région.\r\n\r\nUne journée de détente à explorer les ruines et à admirer les vues panoramiques sur les plaines environnantes est une expérience inoubliable que vous ne regretterez pas. Alors n\'hésitez plus et préparez votre voyage pour découvrir Volubilis, une merveille archéologique qui vous transportera dans le passé romain.', 'images/lieux/DNr2dCppLdpaigHZWuav5T8Cbh2TvWlk9nd2EqNc.jpg', 'Plongez dans l\'histoire de Volubilis', 'Randonnée,maroc,empire,romain,walili,archéologie', 'Vous rêvez de voyager dans le temps et de découvrir la vie dans une ville romaine antique ?', '2023-04-05 11:35:29', '2023-06-02 16:04:30');
INSERT INTO `lieux` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(149, NULL, NULL, 'Kasbah des Oudayas – La cité portuaire', 'kasbah-des-oudayas-la-cite-portuaire', 'La Kasbah des Oudayas, une ancienne citadelle fortifiée située sur une colline surplombant l\'océan Atlantique, est l\'un des joyaux historiques et architecturaux de Rabat, la capitale du Maroc. Les visiteurs ne peuvent tout simplement pas manquer cet endroit magnifique pour découvrir l\'histoire et la culture de la ville.\r\n\r\nLorsque vous entrez dans la Kasbah des Oudayas, vous êtes transporté dans un autre temps. Les murs épais et les ruelles étroites enchevêtrées sont une véritable merveille architecturale, typique de la tradition marocaine. Les portes en bois sculpté, les arcades en plâtre et les murs en terre cuite témoignent de l\'habileté des artisans qui ont travaillé à sa construction.\r\n\r\nParmi les points forts de la Kasbah des Oudayas, la fameuse porte Bab Oudaïa est un incontournable. Les jardins andalous sont également à voir absolument, avec leur fontaine centrale et leur végétation luxuriante. Pour les amateurs d\'histoire, le musée des Oudayas est un véritable trésor, avec son exposition sur la culture marocaine.\r\n\r\nMais ce qui rend vraiment la Kasbah des Oudayas exceptionnelle, c\'est sa vue panoramique imprenable sur l\'océan et la ville de Rabat. Vous pourrez admirer les vagues de l\'Atlantique se briser contre la côte et observer la vie animée de la ville depuis les hauteurs de la Kasbah.', 'images/lieux/c6gGq7BPaB3ARxMI0lIbMsvd95r3wxoC3itetTcv.jpg', 'La cité portuaire de Rabat', 'Sejour,maroc,rabat,kasbah,citadelle', 'La Kasbah des Oudayas, une ancienne citadelle fortifiée située sur une colline surplombant l\'océan Atlantique, est l\'un des joyaux historiques et architecturaux de Rabat, la capitale du Maroc.', '2023-04-07 09:24:07', '2023-07-09 20:06:14'),
(152, NULL, NULL, 'Legzira - Une merveille naturelle sur la côte atlantique du Maroc', 'legzira-une-merveille-naturelle-sur-la-cote-atlantique-du-maroc', 'Legzira est une plage située sur la côte atlantique, à environ 150 kilomètres au sud d\'Agadir. Ce qui rend cette plage unique, ce sont les arches rocheuses naturelles qui s\'étendent sur plusieurs kilomètres le long de la côte. Les arches sont le résultat de l\'érosion de la roche calcaire au fil du temps, créant des formes spectaculaires qui attirent les visiteurs.\r\n\r\nLa plage de Legzira est également connue pour ses eaux cristallines, ses dunes de sable et ses falaises de couleur rougeâtre, ce qui en fait un endroit idéal pour se détendre et profiter du paysage naturel incroyable. Les arches rocheuses sont massives et créent une vue impressionnante qui est une attraction populaire pour les visiteurs du monde entier.\r\n\r\nLa plage offre ainsi un mélange unique de paysages naturels créant une ambiance relaxante. Vous pouvez vous promener le long de la plage ou simplement vous détendre et profiter du soleil sur la plage.', 'images/lieux/f1AP9efu1Bw4GUgHWMXsTl8Bt2KKcIZCIly6ZAOz.jpg', 'Legzira, la plage paradisiaque du Maroc', 'Legzira,maroc,plage,falaises,paysage', 'Legzira est une plage située sur la côte atlantique, à environ 150 kilomètres au sud d\'Agadir. Ce qui rend cette plage unique, ce sont les arches rocheuses naturelles qui s\'étendent sur plusieurs kilomètres le long de la côte.', '2023-04-10 08:56:25', '2023-04-10 09:14:07'),
(153, NULL, NULL, 'La Kasbah d\'Aït Ben Haddou : Un trésor architectural du Maroc', 'la-kasbah-dait-ben-haddou-un-tresor-architectural-du-maroc', 'La Kasbah d\'Aït Ben Haddou, sur la route historique des caravanes qui traversait l\'Afrique du Nord, reliant les villes de Marrakech et de Ouarzazate,  témoigne de l\'histoire ancienne de la région, avec son architecture et ses fortifications qui ont été construites pour se protéger contre les invasions. \r\n\r\nLa Kasbah comporte des bâtiments en terre crue datant de plusieurs siècles, ainsi qu\'une mosquée et un palais construits à l\'époque de la dynastie des Almoravides, à découvrir lors d\'une balade dans ses ruelles sinueuses .\r\n\r\nElle offre des vues panoramiques sur les montagnes et la vallée de l\'Ounila, avec des couleurs saisissantes de la terre et du ciel qui créent un spectacle visuel unique et mémorable.\r\n\r\nSi vous souhaitez en savoir plus sur les lieux de tournage célèbres de la Kasbah d\'Aït Ben Haddou, des guides locaux peuvent vous accompagner pour vous faire découvrir les rues et les bâtiments utilisés par vos acteurs préférés dans leurs films et séries télévisées.', 'images/lieux/GiaVYHigqJOj1gIPdSuMfNDn2uRwP0RfQtD1pG6W.jpg', 'La Kasbah d\'Aït Ben Haddou', 'Kasbah,ouarzazate,maroc,histoire,tournage,cinéma', 'La Kasbah d\'Aït Ben Haddou, sur la route historique des caravanes qui traversait l\'Afrique du Nord, reliant les villes de Marrakech et de Ouarzazate.', '2023-04-11 10:32:25', '2023-04-12 09:04:08'),
(156, NULL, NULL, 'Menara de Marrakech : Lieu de Villégiature des sultans', 'menara-de-marrakech-lieu-de-villegiature-des-sultans', 'La Menara de Marrakech est un jardin situé au pied des montagnes de l\'Atlas, dans la ville de Marrakech. Il est célèbre pour son grand bassin d\'eau et sa tour de pierre, construite au XIIe siècle. Les jardins de la Menara, de plus de 100 hectares, sont remarquables pour leurs oliviers centenaires.\r\n\r\nLa Menara a une histoire remontant à l\'époque de la dynastie des Almohades. Elle a été construite sous le règne du sultan Abd al-Mu\'min pour servir de réservoir d\'eau et de point de repère pour les voyageurs. La tour est construite en pierre locale et mesure environ 8 mètres de haut.\r\n\r\nLa Menara a été un lieu de détente pour les sultans et leurs familles depuis des siècles. Elle a été utilisée pour des activités comme la chasse et les promenades, devenant ainsi un symbole de la beauté et de l\'élégance de Marrakech. Le bassin a été également utilisé comme une piscine pour les soldats tenus d\'apprendre à nager dans le cadre de leurs entraînements.', 'images/lieux/dNBQZ0x9TYOvw0Mwomi6XTSR2UmMp0aB7oEjB9Tc.jpg', 'La Menara de Marrakech', 'Menara,marrakech,jardins,nature,histoire,oliviers,voyage', 'La Menara de Marrakech est un jardin situé au pied des montagnes de l\'Atlas, dans la ville de Marrakech.', '2023-04-11 10:41:12', '2023-04-12 09:41:28'),
(160, NULL, NULL, 'El Koutoubia : L’emblème de Marrakech', 'el-koutoubia-lembleme-de-marrakech', 'La majestueuse Mosquée El Koutoubia domine la fameuse Place Jemaa el-Fna de Marrakech. Le nom Koutoubia vient du mot arabe « kutubiyyin », qui signifie « libraires ». La place sur laquelle se trouve la mosquée servait de lieu de commerce des livres.\r\nLes travaux de la mosquée ont débuté lors du règne de sultan Almohade Abdel Moumen et ont été terminé durant la période de son petit-fils Yacoub EL Mansour.  \r\nLe minaret, haut de 77 mètres, a été construit quelques années plus tard. Au sommet du minaret, se trouve le « Jamour », trois boules de cuivre qui représentent La Mecque, la Médine et Jérusalem. \r\nDu fait de sa splendeur, la Koutoubia a servi de modèles à plusieurs autres monuments historiques construits durant la même époque dont la Tour Hassan.\r\nLa mosquée demeure à aujourd’hui un lieu important de rassemblement des Marrakchis sur la place ou dans les jardins.', 'images/lieux/OQ3fXwl6Rl9YGkTS2nuNY1uDhq2JNUK5ktQfKTWs.jpg', 'El Koutoubia de Marrakech', 'Marrakech,koutoubia,mosquée,almohade,sultan,monument,histoire,Maroc', 'la mosquée Koutoubia est l\'une des majestueuses mosquées du Maroc', '2023-05-25 14:39:54', '2023-05-25 14:39:54'),
(163, NULL, NULL, 'Les Gorges de Todra : Une merveille naturelle à L’est de Ouarzazate', 'les-gorges-de-todra-une-merveille-naturelle-a-lest-de-ouarzazate', 'Les gorges de TODGHA sont situées dans le Haut Atlas marocain , à environ 180 km au nord-est de Ouarzazate.  Elles sont très fréquentées par les grimpeurs pour leurs parois pouvant atteindre 300 mètres.\r\n                                    \r\nLes gorges  ont  conservé de nombreux ksours et kasbahs, qui s’étendent le long de l’oued, au milieu des palmiers dattiers et des troupeaux de moutons et de chèvres, seules richesses des habitants.\r\nCe décor merveilleux a inspiré de nombreux metteurs en scène, et cette couleur rouge dominante est unique en son genre. Les gorges du Todgha sont réellement fascinantes, et rafraichissantes quand les températures atteignent des summums, tandis qu’une escapade dans cette région permet aussi de découvrir un peu plus la culture berbère. Les habitants sont dans tous les cas ravis d\'expliquer leur mode de vie, ou d\'accueillir les touristes qui souhaitent connaître mieux leur pays.\r\n\r\nCertes , pour avoir le plaisir de découvrir les gorges du Todgha, des excursions et des circuits sont proposés , vous pouvez également louer un 4×4 .', 'images/lieux/bCH2B2C8faPQLMeS0S5NTCTX0AS1vlOHYGpNja5K.jpg', 'Les gorges de TODRA', 'gorges,nordestouarzazate,todgha,todra,excursions,atlasmarocain,maroc', 'Les gorges de TODGHA sont situées dans le Haut Atlas marocain', '2023-06-14 15:46:28', '2023-07-06 15:31:10'),
(164, NULL, NULL, 'Le Désert d’Agafay , une escapade à côté de Marrakech', 'le-desert-dagafay-une-escapade-a-cote-de-marrakech', 'A 30km de Marrakech, le désert d\'Agafay est perché sur les premières hauteurs du massif du Haut Atlas au Maroc.\r\n\r\nS’étalant sur plusieurs centaines d\'hectares, le désert d\'Agafay n’est pas un désert ordinaire de sable mais il s’agit d’un désert de pierre comprenant des dunes à la fois blanches et ocres. Aussi surprenant de le savoir, mais plus incroyable à voir. \r\n\r\nVous pourrez en profiter en empruntant des Quads ou grâce à des balades à dos de chameau. Planté d\'eucalyptus, de vignes et d\'oliviers, son oasis d’environ 7 hectares est à ne pas rater. Une trace de verdure captivante au beau milieu d’un tableau ocre.\r\n\r\nSi vous désirez un moment de quiétude et détente, vous trouverez des tentes sur place vous donnant la possibilité d’apaiser votre esprit. Il s’agit de l’endroit parfait pour lire ce que vous aimez ou même pour vous inspirer tout en admirant les dunes se fondre avec les montagnes.\r\n\r\nVous pouvez également séjourner dans des camps ou bivouacs, qui d’ailleurs vous proposeront des activités d’excursion.\r\n\r\nDans tous les cas, votre dépaysement est assuré.', 'images/lieux/IaTXQIdeIQQYKEJXy40I5yyc8s42KRjbbjCuHl4S.jpg', 'Le « Désert d’Agafay », une escapade à côté de Marrakech', 'Desert,agafay, Maroc, A cote de marrakech ,camps, bivouac,baladesenchameau,voyages,', 'null', '2023-06-22 10:50:48', '2023-07-07 20:13:48'),
(165, NULL, NULL, 'Safi : Où la magie de l’argile opère', 'safi-ou-la-magie-de-largile-opere', 'Safi est une perle du Maroc qui abrite un concentré d’histoire. Entre l’influence phénicienne, romaine et portugaise, la ville comporte en elle-même un corps architectural datant du passé tout en laissant le présent poser paisiblement son empreinte. \r\n\r\nSi vous avez une âme artistique qui savoure surtout l’artisanat marocaine, vous êtes tout près du trésor puisque Safi est la capitale de la céramique. Grâce aux matières premières dont la ville regorge, les maitres potiers prennent tant de plaisir à façonner des joyaux de terre cuite et d\'argile qui vous laisseront pantois. Vous pourrez assister à la confection de ces merveilles en visitant le quartier des potiers où tout est conçu à la main. Si votre mémoire visuelle n’est toujours pas rassasiée, le Musée national de la céramique s’en occupera.\r\n\r\nSafi est également une destination riche en folklore et musique traditionnels. Elle est connue aussi par la Fantasia qui est un art et un sport marocain durant lesquelles des cavaliers reconstituent des scènes de guerre ancestrales.\r\n\r\nEn termes d’incontournables, le choix sera le vôtre. Pour les amateurs du bruit des vagues et de l’architecture, le château de la Mer (Ksar el Bahr) vous présente une offre à ne pas rater. Les gourmands, quant à eux, la place de l’Indépendance vous accueillera, et si vous aimez les sardines, le bonheur vous attend puisque le port de la ville est le plus grand sardinier du pays. Une visite de la médina, comme presque pour toutes villes du Royaume, est inévitable. Les plages sublimes de la ville sont toujours prêtes à accueillir toute personne désirant la pratique des activités balnéaires.', 'images/lieux/OBV7LeeE8LiIEUyBH0dIuzv7UHC28fbbbNCSlKlJ.jpg', 'Safi : Où la magie de l’argile opère', 'Safi,Ksar el Bahr,poterie,fantasia', 'Safi, la capitale de la céramique', '2023-07-05 19:32:33', '2023-07-05 19:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `ligne_menus`
--

CREATE TABLE `ligne_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_restaurant` text COLLATE utf8mb4_unicode_ci,
  `id_cat_menu` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ligne_menus`
--

INSERT INTO `ligne_menus` (`id`, `id_restaurant`, `id_cat_menu`, `created_at`, `updated_at`) VALUES
(1, '1', '1', NULL, NULL),
(2, '1', '2', NULL, NULL),
(3, '1', '3', NULL, NULL),
(4, '2', '1', NULL, NULL),
(5, '2', '2', NULL, NULL),
(6, '2', '3', NULL, NULL),
(7, '7', '1', '2022-07-14 10:32:25', '2022-07-14 10:32:25'),
(8, '8', '1', '2022-07-14 10:37:56', '2022-07-14 10:37:56'),
(9, '8', '1', '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(10, '8', '2', '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(11, '8', '3', '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(12, '8', '1', '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(13, '8', '2', '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(14, '8', '3', '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(15, NULL, NULL, '2022-07-14 15:22:31', '2022-07-14 15:22:31'),
(18, 'undefined', '1', '2022-07-16 17:48:08', '2022-07-16 17:48:08'),
(19, '12', '1', '2022-08-05 10:24:34', '2022-08-05 10:24:34'),
(20, '15', '1', '2022-08-12 15:07:44', '2022-08-12 15:07:44'),
(21, '15', '2', '2022-08-12 15:08:06', '2022-08-12 15:08:06'),
(22, '15', '3', '2022-08-12 15:08:17', '2022-08-12 15:08:17'),
(23, '19', '1', '2022-09-01 07:35:10', '2022-09-01 07:35:10'),
(24, '20', '1', '2022-09-01 08:45:28', '2022-09-01 08:45:28'),
(25, '20', '2', '2022-09-01 08:46:17', '2022-09-01 08:46:17'),
(26, '4', '1', '2022-10-11 09:00:47', '2022-10-11 09:00:47'),
(27, '4', '2', '2022-10-11 09:01:28', '2022-10-11 09:01:28'),
(28, '4', '3', '2022-10-11 09:01:54', '2022-10-11 09:01:54'),
(29, NULL, '1', '2022-10-17 12:50:42', '2022-10-17 12:50:42'),
(30, '39', '2', '2022-11-17 13:28:33', '2022-11-17 13:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `maison_hotes`
--

CREATE TABLE `maison_hotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maison_hotes`
--

INSERT INTO `maison_hotes` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `nb_visite`, `prix_min`, `prix_max`, `accepter_regles`, `image`, `created_at`, `updated_at`) VALUES
(4, 294, 'Dar Wadada', 'dar-wadada', 'Doté d’une terrasse et d’une connexion Wi-Fi gratuite, le Dar Wadada propose des hébergements à Chefchaouen, à 10 minutes de route du centre-ville.\nToutes les chambres comprennent une salle de bains privative pourvue d’une douche. Certaines offrent une vue sur la montagne ou le jardin.\nL’accès à l’établissement est uniquement possible en 4x4. Un service de navette est assuré depuis la place Ras el-Maa moyennant des frais supplémentaires.\nDar Wadada se trouve à 1,6 km de la source Ras el-Maa et à 4,2 km d’un point de vue. L’aéroport le plus proche, celui de Tétouan-Sania R’mel, est situé à 49 km.', '0675333363', 16, 'Loubar Foukia, 91000 Chefchaouen, Maroc', 'wadadamaisonrurale@gmail.com', NULL, NULL, 'https://www.facebook.com/DarWadada/', 'https://www.instagram.com/darwadada/?hl=en', NULL, '0675333363', 0, 655, 889, 1, NULL, '2023-03-16 12:44:15', '2023-05-23 14:17:05'),
(5, 308, 'Dar Diafa Achraf', 'dar-diafa-achraf', 'Situé à 1,3 km de la place Outa El Hammam et à 2,9 km du parc Khandak Semmar à Chefchaouen, le Dar Achraf propose un hébergement avec une cuisine. Doté d\'un parking privé gratuit, il se trouve à 1,2 km de la Kasbah et à 1,5 km de la place Mohammed V.\nCet appartement comprend 2 chambres, une salle de bains et une télévision à écran plat.\nL\'appartement possède une terrasse.\nLe Dar Achraf se trouve à 4,4 km de Tahar et d\'Aïn er Rami. L\'aéroport de Tétouan-Sania R\'mel, le plus proche, est implanté à 69 km.', '0625640432', 16, '1,3 km de la place Outa El Hammam et à 2,9 km du parc Khandak Semmar à Chefchaouen', 'hajar.baghlal@gmail.com', NULL, NULL, NULL, NULL, NULL, '0625640432', 0, 360, 450, 1, NULL, '2023-03-16 14:04:33', '2023-05-12 13:38:19'),
(6, 316, 'شقة مفروشة للايجار - دار المغوشي', 'shk-mfrosh-llaygar-fy-mdyn-shfshaon', '،شقة مفروشة للايجار في مدينة شفشاون الجوهرة الزرقاء\n،شقة بمواصفات تقليدية صممت خصيصا لإستقبال السياح من مختلف بقاع العالم\n،تجدون كل ما يخص فترة إقامتكم معنا \nبنسبة لمنظمي الرحلات والنزه وعشاق الرياضات الجبلية، ما \nعليهم سوى رفع السماعة والإتصال بنا\nنقدم لكم أيضا:\n- مشي في مدار جبلى \n- تسلق الجبال\n- تزحلق على الجليد في فترة تساقط الثلوج أثناء فصل الشتاء \n- مغامرات وإكتشاف للمواقع الجبلية مع خبراء ومرشدين سياحيين من أبناء المنطقة،\nالدفع مسبق', '0626628870', 16, 'Rue Al Arabi, 92000 Chefchaouen, Maroc', 'med.elmghouchi@gmail.com', NULL, NULL, NULL, NULL, NULL, '0626628870', 0, 177, 388, 0, NULL, '2023-03-22 16:16:19', '2023-03-28 12:50:38'),
(7, 317, 'Casa Elias', 'casa-elias', 'Situé à Chefchaouen, le Casa Elias vous propose une terrasse ouverte avec vue sur les montagnes, agrémentée d\'un coin salon et d\'une fontaine. La connexion Wi-Fi est disponible gratuitement dans l\'ensemble de l\'établissement.\n\nTous les logements du Casa Elias disposent d\'une cuisine équipée, d\'une télévision par satellite à écran plat et d\'une salle de bains privative pourvue d\'une douche et de toilettes.\n\nL\'établissement sert chaque matin un petit-déjeuner, qu\'il est possible d\'apprécier dans le coin repas extérieur. Vous pourrez aussi déguster une cuisine traditionnelle faite maison dans le restaurant. L\'établissement organise également des excursions, sur demande.\n\nL\'aéroport international Ibn Batouta de Tanger se situe à 130 km environ, tandis que la ville de Tétouan est à quelque 65 km.', '0668682612', 16, 'Mdaka, Avenue Hassan I, Barrio Andaluz, Nº 159, near Place Outta Hammam, 91000 Chefchaouen, Maroc', 'casaeliaschaouenmar@gmail.com', NULL, NULL, 'https://www.facebook.com/Casa.Chaouen/', 'https://www.instagram.com/casaeliaschaouen/?hl=en', NULL, '0668682612', 0, 419, 899, 1, NULL, '2023-03-23 09:21:42', '2023-03-23 09:51:11'),
(8, 324, 'Gite Tissent', 'gite-tissent', 'Gïte Tissent située dans la vallée des Ait Bou oualli, dans le haut Atlas centrale, 165 Km de Marrakech, 80 km de la ville d’Azilal, 74 de Demnate, et 212 km de Ouarzazate. \n\nGîte labellisé accueil paysan, raison marocain d‘ecotourisme solidaire, GTAM, Vaolo.', '0670958813', 8, 'Dr Tissent Ait Bou oualli Azilal', 'hassanguid@yahho.fr', NULL, NULL, 'https://www.facebook.com/profile.php?id=100092211216713&mibextid=LQQJ4d', NULL, 'https://instagram.com/gite_tissent?igshid=YmMyMTA2M2Y=', '0670958813', 0, 200, 500, 1, NULL, '2023-04-29 09:51:31', '2023-05-12 12:57:40'),
(9, 325, 'Gite rogoulte', 'gite-rogoulte', 'Le gîte situé dans une région culturellement riche .il est proche du tizi-ntirghiste et les sommet du jbel Rat , Tigounosti et mgoun', '0637378811', 8, 'Abachkou rogoulte', 'Giterogoultemouha@gmail.com', NULL, NULL, 'https://www.facebook.com/profile.php?id=100085284829686&mibextid=ZbWKwL', 'Gite rogoulte', NULL, '0637378811', 0, 200, 450, 1, NULL, '2023-04-30 16:50:50', '2023-05-12 12:57:00'),
(10, 327, 'Riad Auberge Bassou', 'riad-auberge-bassou', 'Offrant une vue sur la montagne Saghro, l\'Riad Auberge Bassou se situe à Nkob, site réputé pour ses kasbahs entourées du désert pré-saharien. Nichée dans un jardin, elle propose des chambres traditionnelles de style berbère dotées d\'une salle de bains avec douche.\nUn petit-déjeuner continental est servi dans la salle à manger, le salon berbère ou sur la terrasse. Pour les autres repas, vous pourrez déguster des spécialités locales dans le restaurant. L\'hôtel organise également des cours de cuisine.\n\nSituée entre les vallées de Daraa et de Ziz, l\'Riad Auberge Bassouis se trouve à 104 km de Zagora et à 139 km de l\'aéroport de Ouarzazate. Le personnel peut organiser des sorties en vélos, des randonnées, des balades à dos d\'âne ou de chameau ou encore des excursions et des transferts.', '0658385291', 30, '5 km au nord de N\'kob, 47702 Nkob, Morocco', 'aubergebassou@yahoo.fr', NULL, 'http://www.aubergebassou.com/', 'https://m.facebook.com/people/Nkob-hotel-Auberge-Bassou/100063497802495/', 'https://www.instagram.com/discover_morocco_trip/?hl=en', NULL, '0658385291', 0, 530, 842, 1, NULL, '2023-05-09 14:51:15', '2023-05-12 13:16:01'),
(11, 328, 'Dar Blue Sky', 'dar-blue-sky', 'Doté d\'un balcon, le Dar Blue Sky est situé à Chefchaouen, à seulement 200 mètres de la Kasbah et de la place Outa El Hammam. Offrant une vue sur la ville et la montagne, cet appartement dispose d\'une connexion Wi-Fi gratuite.\nCet appartement comprend 2 chambres, un salon, une cuisine, un coin repas et une salle de bains avec douche. Les serviettes et le linge de lit sont fournis.\n\nUn service de location de voitures est assuré sur place.\n\nLe Dar Blue Sky se trouve à 600 mètres de la place Mohammed V et à 1,5 km du parc Khandak Semmar. L\'aéroport de Tétouan-Sania R\'mel, le plus proche, est implanté à 70 km.', '0644467742', 16, 'Rue Immam Chadili, Souika, 91000 Chefchaouen, Maroc', 'yahyasaidi90@gmail.com', NULL, NULL, NULL, NULL, NULL, '0644467742', 0, 402, 402, 1, NULL, '2023-05-09 15:18:40', '2023-05-09 15:29:12'),
(13, 329, 'Ecolodge Adazen', 'ecolodge-adazen', 'L\'Ecolodge Adazen, niché dans le village de R\'bat au cœur des Ait Bouguemez, est un véritable havre de paix pour tous ceux qui cherchent à se ressourcer loin de l\'agitation de la ville. Ce petit coin de paradis est l\'endroit idéal pour découvrir la culture berbère et apprécier la beauté naturelle des montagnes environnantes.\n\nLes chambres de l\'écolodge sont décorées avec goût dans un style traditionnel berbère, offrant un confort simple mais chaleureux. La cuisine saine et bio servie dans le restaurant de l\'écolodge est délicieuse et met en valeur les ingrédients locaux, garantissant ainsi une expérience culinaire authentique.\n\nQue vous souhaitiez partir en randonnée dans les montagnes, vous détendre dans le jardin de l\'écolodge ou simplement profiter de la tranquillité de l\'endroit, l\'Ecolodge Adazen est l\'endroit parfait pour se déconnecter de la vie trépidante de tous les jours.', '0666914565', 8, 'Douar R\'bat, Ait Bouguemez', 'contact@adazen-lodge.com', NULL, 'https://www.adazen-lodge.com/', 'https://www.facebook.com/AdaZenEcolodge', 'https://www.instagram.com/ecolodgeadazen/', 'https://www.tiktok.com/@adazen.lodge', '0666914565', 0, 1190, 2000, 1, NULL, '2023-05-11 14:49:20', '2023-05-12 08:14:37'),
(14, 331, 'Dar Timitar Eco-lodge', 'dar-timitar-eco-lodge', 'Description de l\'établissement\nSituée à proximité du village d\'Agoulzi dans la vallée des Roses, cette maison d\'hôtes respectueuse de l\'environnement se trouve à 9 km d\'El Kelaa M\'gouna. Ses chambres offrent une vue sur la vallée.\n\nLes chambres arborent une décoration simple et personnalisée ainsi qu\'un style marocain traditionnel. Chacune comprend une salle de bains privative avec douche et articles de toilette.\n\nLe restaurant sert des spécialités berbères traditionnelles, que vous pourrez déguster sur les terrasses offrant une vue sur les montagnes de l\'Atlas. Le petit-déjeuner est préparé tous les matins sur la terrasse surplombant le désert et la vallée.\n\nLa maison d\'hôtes Dar Timitar peut organiser des excursions et des sorties d\'une journée. Les gorges du Dadès se trouvent à 40 km.', '0668167319', 30, 'Agoulzi Ait Ouassif', 'dartimitar@gmail.com', NULL, 'www.dartimitar.com', NULL, NULL, NULL, '0668167319', 0, 700, 750, 1, NULL, '2023-05-15 20:13:03', '2023-05-15 20:30:35'),
(15, 339, 'Dar Nadia Bendriss', 'dar-nadia-bendriss', 'Situé à Ouarzazate, à 43 km de la Kasbah Amridil, le Dar nadia bendriss propose un hébergement avec un jardin, un parking privé gratuit, un salon commun et une terrasse. Construit en 2015, il se trouve à 33 km de Ksar Ait-Ben-Haddou. Il propose une réception ouverte 24h/24, des transferts aéroport, un service d\'étage et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux.\n\nLes chambres comprennent un coin salon. Leur salle de bains privative est pourvue d\'un sèche-cheveux. Certaines chambres possèdent un balcon et d\'autres offrent une vue sur la ville. Les logements du Dar nadia bendriss disposent de la climatisation et d\'une armoire.\n\nUn petit-déjeuner halal ou à la carte est servi sur place. Le restaurant du Dar nadia bendriss sert une cuisine marocaine et locale. Des plats végétariens, végétaliens et sans gluten peuvent également être préparés sur demande.\n\nL\'aéroport de Ouarzazate, le plus proche, est implanté à 5 km.', '0607385631', 53, 'Route marakech_Zagora. Jbal tabounte tarmigte ouarzazate, 45000 Ouarzazate, Maroc', 'dar.nadia.bendriss@gmail.com', NULL, NULL, NULL, NULL, NULL, '0607-385631', 0, 400, 430, 1, NULL, '2023-06-13 15:26:21', '2023-06-14 09:16:10'),
(16, 353, 'DAR ABDO', 'dar-abdo', 'Appartement de 120m2 à 5 min de la plage et du centre-ville en voiture. Quartier très paisible où vous pouvez passer de bon moment calme', '0666634448', 69, 'Quartier beausejour . Tanger', 'ahmed.alhomani889@gmail.com', NULL, NULL, NULL, NULL, NULL, '0666634448', 0, 500, 650, 1, NULL, '2023-06-27 14:10:08', '2023-06-27 14:22:33'),
(17, 354, 'Appartement de luxe', 'appartement-de-luxe', 'Ce logement familial est proche de tous les sites et commodités ( aéroport , stade ibn batouta , Mc Donald’s , Marjane …)  avec tout les équipement derniers cri.\nL’appartement  est reservable uniquement par les familles et couples mariés . Je n’accepte  pas les couples sans acte de mariage.  \nAu plaisir de vous voir séjourner chez moi.', '0612159498', 69, '11 lotissement essalam 1 90000 Tanger', 'hichamtourchi@gmail.com', NULL, NULL, NULL, NULL, NULL, '0612159498', 0, 990, 990, 1, NULL, '2023-06-27 14:58:18', '2023-06-27 15:58:28'),
(18, 360, 'The Little Kasbah', 'the-little-kasbah', 'The Little Kasbah \"Guest House and Surf Experience\" situé à 600 mètres de la plage d\'Imsouane, l\'établissement La Petite Kasbah propose un salon commun, une terrasse et une cuisine commune. Vous bénéficierez gratuitement d\'une connexion Wi-Fi dans l\'ensemble des locaux.\n\nPlusieurs possèdent une cuisine équipée d\'un réfrigérateur, d\'un four et d\'un micro-ondes.\n\nUn petit-déjeuner à la carte, continental ou végétarien est servi tous les matins.\n\nCe séjour chez l\'habitant possède un barbecue.\n\nVous séjournerez à 700 mètres de la plage d\'Imsouane 2. L\'aéroport le plus proche, celui d\'Essaouira-Mogador, est situé à 90 km. Un service de navette aéroport peut être assuré moyennant des frais supplémentaires.', '0611338113', 28, 'Tassra, 80000 Imsouane. Essaouira,Maroc', 'thelittlekasbah@gmail.com', NULL, 'https://www.thelittlekasbah.com/?fbclid=IwAR31PP9tOtPMINnsvDk4GIJepwatCQc1oIboS_EoV8VS9zcBK-hsiFpYdOA', NULL, NULL, NULL, '0611338113', 0, 0, 0, 1, NULL, '2023-07-06 08:15:52', '2023-07-06 12:25:43'),
(19, 360, 'The Little Kasbah', 'the-little-kasbah', NULL, '0611338113', 28, 'Tassra, 80000 Imsouane, Maroc', 'thelittlekasbah@gmail.com', NULL, 'https://www.thelittlekasbah.com/?fbclid=IwAR31PP9tOtPMINnsvDk4GIJepwatCQc1oIboS_EoV8VS9zcBK-hsiFpYdOA', NULL, NULL, NULL, '0611338113', 0, NULL, NULL, 0, NULL, '2023-07-06 08:15:53', '2023-07-06 08:15:53'),
(20, 360, 'The Little Kasbah', 'the-little-kasbah', NULL, '0611338113', 28, 'Tassra, 80000 Imsouane, Maroc', 'thelittlekasbah@gmail.com', NULL, 'https://www.thelittlekasbah.com/?fbclid=IwAR31PP9tOtPMINnsvDk4GIJepwatCQc1oIboS_EoV8VS9zcBK-hsiFpYdOA', 'https://www.facebook.com/profile.php?id=100094388403848', 'https://www.instagram.com/thelittlekasbah/', NULL, '0611338113', 0, NULL, NULL, 0, NULL, '2023-07-06 08:15:53', '2023-07-06 08:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `prix` text COLLATE utf8mb4_unicode_ci,
  `id_ligne_menu` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `nom`, `description`, `prix`, `id_ligne_menu`, `created_at`, `updated_at`) VALUES
(4, 'Rfisa au poulet', 'Poulet beldi, lentilles, œufs de cailles\r\n', '130 ', 2, NULL, NULL),
(5, 'Tajine poulets', 'Au citron confit et olives vertes', '130 ', 2, NULL, NULL),
(6, 'Tajine de bœuf', 'Aux pruneaux, amandes grillées et œufs de cailles', '150 ', 2, NULL, NULL),
(7, 'Salade César poulet ', 'escalopes de poulet, parmesan, échalote, biscottes, salade verte au choix\r\n', '110 ', 1, NULL, NULL),
(8, 'Salade marocaine                                                                                          ', 'Tomates, concombre, échalote', '70', 1, NULL, NULL),
(9, 'Assortiment de salades marocaines', 'Taktouka, Zaalouk, Carottes à la charmoula\r\n', '110', 1, NULL, NULL),
(10, 'Assortiment de briouates', 'Briouates aux fruits de mer, Briouates au poulet sucrées\r\n', '80', 1, NULL, NULL),
(11, 'Assortiment de pâtisseries marocaines', 'Cornes de gazelle, Chebakia, Ghriba\r\n', '90', 3, NULL, NULL),
(12, 'Bricks aux amandes et miel', '3 pièces\r\n', '50', 3, NULL, NULL),
(14, 'M’hencha à l’amande', 'Pâte à pastilla, amandes, miel, glace à l’amlou\r\n', '80', 3, NULL, NULL),
(15, 'Salade Le palmier 850', 'escalopes de poulet, parmesan, échalote, biscottes, salade verte, œufs de cailles, sauce balsamique 850', '50', 4, NULL, '2022-10-17 12:49:30'),
(16, 'Salade fraîcheur', 'Chair de crabe, mesclun de salade, calamars et fruits exotiques', '130 ', 4, NULL, NULL),
(17, 'Briouates aux fruits de mers', 'Epinards et fromage frais, gambas m\'charmel\r\n', '120 ', 4, NULL, NULL),
(18, 'Couscous aux 7 légumes 99', 'Viande de bœuf, légumes  pois chiches99', '99', 5, NULL, '2022-10-17 12:39:15'),
(19, 'Tajine de jarret d\'agneau ', 'Aux olives meslalla et citron confit\r\n', '180 ', 5, NULL, NULL),
(20, 'Tajine de poulet', 'Au citron confit et olives vertes\r\n', '190 ', 5, NULL, NULL),
(21, 'Tajine kefta', 'Boulette de viande hachée, sauce tomates \r\n', '140 ', 5, NULL, NULL),
(22, 'Tajine de boulettes de poissons', 'Boulettes de merlan à la sauce tomates , olives de souss, origan\r\n', '175 ', 5, NULL, NULL),
(23, 'Tajine de saint-pierre', 'Aux légumes et taboulé d’orge perlé\r\n', '210', 5, NULL, NULL),
(24, 'Tarte du jour ', NULL, '70 ', 6, NULL, NULL),
(25, 'Tanjia au Poulet', 'Poulet beldi, épices marocaines, Smen\r\n', '165', 5, NULL, NULL),
(26, 'Soupe de poulet', 'Poulet, pommes de terre, bouillon de volaille, oignons, ail', '80', 1, NULL, NULL),
(27, 'Soupe de poisson', 'Soles, merlans, carottes, pommes de terre, poireaux, tomate, oignon émincé', '90', 1, NULL, NULL),
(28, 'Harira traditionnelle', 'Harira à la sauce tomate et citron', '70', 1, NULL, NULL),
(29, 'Couscous bœuf', 'Aux légumes ou tfaya', '175', 2, NULL, NULL),
(30, 'Confit de canard rôti ', 'Accompagné de pommes de terre ail et fines herbes.\r\n', NULL, 2, NULL, NULL),
(31, 'Entrecôte de bœuf ', 'Sauce au poivre avec pomme de terre et champignons\r\n', '150', 2, NULL, NULL),
(32, 'Souris d’agneau', 'Avec nid de pommes douces et sauce romarin\r\n', '165', 2, NULL, NULL),
(33, 'Plat de steak (400gr)       ', 'Aromatisé aux herbes, accompagné de frites maison\r\n', '160', 2, NULL, NULL),
(34, 'Brochettes de bœuf', 'Accompagné d’une salade variée\r\n', '155', 2, NULL, NULL),
(35, 'Filet de bœuf grillé (300 gr)', 'Filet de bœuf grillé en marinade, purée à l’ail\r\n', '175', 2, NULL, NULL),
(36, 'Pavé de saumon', 'Accompagné de risotto et jardinière de légumes\r\n', '210', 2, NULL, NULL),
(37, 'Filet de daurade', 'Accompagné de légumes verts et purée maison', '220', 2, NULL, NULL),
(39, 'Jawhara', 'Feuilles de pastilla, crème à la fleur d\'oranger, amandes frites et concassées\r\n', '75', 3, NULL, NULL),
(42, 'Coupe de glace                  ', '3 boules au choix (vanille, chocolat, fraise, citron, café)\r\n', '75', 3, NULL, NULL),
(43, 'Crème brûlée', NULL, '60', 6, NULL, NULL),
(44, 'Jawhara', 'Feuilles de pastilla, crème à la fleur d\'oranger, amandes frites et concassées\r\n', '75', 6, NULL, NULL),
(45, 'Tiramisu', '', '65', 6, NULL, NULL),
(46, 'Fondant au chocolat      ', '', '65', 6, NULL, NULL),
(48, 'Soupe de poisson', 'Soles, merlans, carottes, pommes de terre, poireaux, tomate, oignon émincé', '90', 4, NULL, '2022-08-05 14:39:27'),
(49, 'Soupe Harira', 'Accompagnée de dettes et chebakia', '80', 4, NULL, NULL),
(50, 'Seffa medfouna', 'Poulet beldi, oignons doux, raisins secs et gingembre frais', '120', 4, NULL, NULL),
(51, 'Tanjia au bœuf ', 'Viande de boeuf, épices marocaines, Smen\r\n', '185', 5, NULL, NULL),
(52, 'Filet de bœuf ', 'Pomme de terre truffée et mousse de foie gras\r\n', '195 ', 5, NULL, NULL),
(53, 'Entrecôte de bœuf', 'Sauce à l\'ail et au persil\r\n', '220 ', 5, NULL, NULL),
(54, 'Côtes d’agneau', 'Sauce à l\'ail et au thym\r\n', '230', 5, NULL, NULL),
(55, 'Sole grillée                                    ', 'Aux pommes de terre fondantes et sauce d’ails et persil\r\n', '195', 5, NULL, NULL),
(56, 'Cassolette de fruits de mer                 ', 'Mélange de fruits de mer, crème épaisse, champignons frais\r\n', '210', 5, NULL, NULL),
(57, 'Filets de Saint-Pierre                    ', 'Filet de saint-pierre, crème épaisse, muscade, champignons\r\n', '240', 5, NULL, NULL),
(58, 'Truites grillées', 'Au thym et aux herbes', '210', 5, NULL, NULL),
(59, 'Espadon grillé                                   ', 'En croûte d’herbes et crémeux chou-fleur', '195 dhs', 5, NULL, NULL),
(60, 'Fraîcheur cannelle et orange de Berkane', 'Accompagné d’une boule de glace  à la fleur d’oranger\r\n', '80', 25, NULL, NULL),
(61, 'Assiette de fruits coupés', 'Fruits de la saison\r\n', '50', 25, NULL, NULL),
(62, 'Tartelette marocaine', 'Aux pommes et Amlou \r\n', '70', 25, NULL, NULL),
(63, 'Ananas rôti à l\'huile d\'argan', 'Accompagné d’une boule de glace  à la fleur d’oranger\r\n', '85', 25, NULL, NULL),
(64, 'Panna cotta', 'Coulis fraise, citron\r\n', '55', 25, NULL, NULL),
(65, 'Cheesecake', 'Fruits rouges, citron, chocolat\r\n', '75', 25, NULL, NULL),
(66, 'Mousse au chocolate ', '                                              ', '65', 25, NULL, NULL),
(67, 'Dessert royal à la banane', 'Banane caramélisée aux fruits secs, sponge cake, glace vanille\r\n', '75', 25, NULL, NULL),
(68, 'Crème brûlée à la vanille', '', '65', 25, NULL, NULL),
(69, 'Fraîcheur cannelle et orange de Berkane', 'Accompagné d’une boule de glace  à la fleur d’oranger\r\n', '80', 6, NULL, NULL),
(70, 'Assiette de fruits coupés', 'Fruits de la saison\r\n', '50', 6, NULL, NULL),
(71, 'Tartelette marocaine', 'Aux pommes et Amlou \r\n', '70', 6, NULL, NULL),
(72, 'Ananas rôti à l\'huile d\'argan', 'Accompagné d’une boule de glace  à la fleur d’oranger\r\n', '85', 6, NULL, NULL),
(73, 'Panna cotta', 'Coulis fraise, citron\r\n', '55', 6, NULL, NULL),
(74, 'Cheesecake', 'Fruits rouges, citron, chocolat\r\n', '75', 6, NULL, NULL),
(75, 'Mousse au chocolate ', '                                              ', '65', 6, NULL, NULL),
(76, 'Dessert royal à la banane', 'Banane caramélisée aux fruits secs, sponge cake, glace vanille\r\n', '75', 6, NULL, NULL),
(77, 'Crème brûlée à la vanille', '', '65', 6, NULL, NULL),
(78, 'Et nulla sed.', 'Tenetur consequatur explicabo deleniti dolorum aut.', '144', NULL, '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(79, 'Aut vel sint voluptatem nihil dolores et et.', 'Nesciunt sint blanditiis consequatur.', '530', NULL, '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(80, 'Deserunt fugiat voluptatem delectus inventore aut quis similique.', 'Similique illum illum nemo repellat laudantium.', '246', NULL, '2022-07-14 10:48:47', '2022-07-14 10:48:47'),
(81, 'Deserunt eos voluptatem sint voluptas quidem totam eaque non.', 'Consequuntur vel voluptatum minima id cum et et.', '613', NULL, '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(82, 'Ut distinctio officiis est maiores.', 'Ut iusto beatae maxime suscipit.', '660', NULL, '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(83, 'Ab est perferendis sint magnam.', 'Perferendis velit suscipit.', '76', NULL, '2022-07-14 13:18:16', '2022-07-14 13:18:16'),
(84, NULL, NULL, NULL, NULL, '2022-07-14 15:15:53', '2022-07-14 15:15:53'),
(85, NULL, NULL, NULL, NULL, '2022-07-14 15:22:31', '2022-07-14 15:22:31'),
(86, 'Molestiae deleniti sed', '.Dolor quasi sunt repellat repellendus excepturi odio accusantium molestiae.', '40', NULL, '2022-07-14 15:23:30', '2022-07-14 15:23:30'),
(87, 'Omnis sunt', 'Eius ut sunt dolores qui iusto sed explicabo blanditiis debitis.', '50', NULL, '2022-07-14 15:26:26', '2022-07-14 15:26:26'),
(88, 'Nobis vero nihil dolor id totam.', 'Necessitatibus sint animi veniam ut cumque sit quo nemo.', '60', NULL, '2022-07-14 15:42:18', '2022-07-14 15:42:18'),
(89, NULL, NULL, NULL, NULL, '2022-07-14 16:00:43', '2022-07-14 16:00:43'),
(90, NULL, NULL, NULL, NULL, '2022-07-14 16:01:58', '2022-07-14 16:01:58'),
(91, 'Quo accusantium', 'Occaecati placeat nisi eum quam aliquid quia eos fuga. itaque at ut dolore sunt autem et et.', '496', NULL, '2022-07-15 07:54:09', '2022-07-15 07:54:09'),
(95, 'Salade', 'Xhhjkkj', '50', 18, '2022-07-16 17:48:08', '2022-07-16 17:48:08'),
(96, 'Similique ab tenetur voluptas libero excepturi quod.', 'Dolorum ratione non unde omnis a voluptas temporibus.', '237', 19, '2022-08-05 10:24:34', '2022-08-05 10:24:34'),
(99, 'salade', 'tomate, poulet,froamge,olives', '50', 20, '2022-08-12 15:07:44', '2022-08-12 15:07:44'),
(100, 'couscous', 'aux 7 légumes', '80', 21, '2022-08-12 15:08:06', '2022-08-12 15:08:06'),
(101, 'flan', NULL, '30', 22, '2022-08-12 15:08:17', '2022-08-12 15:08:17'),
(102, 'salade', 'aaaaaa', '154', 23, '2022-09-01 07:35:10', '2022-09-01 07:35:10'),
(103, 'salade', 'tomate oignons', '30', 24, '2022-09-01 08:45:28', '2022-09-01 08:45:28'),
(105, 'cousous', 'tfaya', '65', 25, '2022-09-01 08:46:17', '2022-09-01 08:46:17'),
(107, 'cousous', '7 légumes', '55', 25, '2022-09-01 09:02:15', '2022-09-01 09:02:15'),
(108, 'Salade', 'Le lorem ipsum est, en imprimerie, une suite de mots.', '45', 26, '2022-10-11 09:00:47', '2022-10-11 09:00:47'),
(109, 'Salade Thon', 'Le lorem ipsum est, en imprimerie, une suite de mots.', '60', 26, '2022-10-11 09:01:00', '2022-10-11 09:01:00'),
(110, 'Plat Chicken', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification', '80', 27, '2022-10-11 09:01:28', '2022-10-11 09:01:28'),
(111, 'Ice Cream', 'Le lorem ipsum est, en imprimerie, une suite de mots', '30', 28, '2022-10-11 09:01:54', '2022-10-11 09:01:54'),
(112, 'Test Menu', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée.', '50', 29, '2022-10-17 12:50:42', '2022-10-17 12:50:42'),
(123, 'Brioche Perdue', 'Pain français avec beurre, et caramel, boule de glace vanille', '60', 11, '2022-11-10 13:51:08', '2022-11-10 13:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_04_25_115430_create_images_table', 1),
(12, '2022_04_25_111843_create_hotels_table', 2),
(13, '2022_04_25_115028_create_maison_hotes_table', 2),
(14, '2022_04_25_115233_create_riads_table', 2),
(17, '2022_04_27_095747_create_villes_table', 4),
(18, '2022_04_25_115533_create_chambres_table', 5),
(20, '2022_04_25_115758_create_type_chambres_table', 6),
(21, '2022_04_25_125927_create_commentaires_table', 7),
(22, '2022_05_06_165901_create_reservezs_table', 8),
(24, '2022_05_09_153116_create_restaurants_table', 9),
(25, '2022_05_09_161935_create_cat_menus_table', 9),
(26, '2022_05_09_162107_create_menus_table', 9),
(27, '2022_05_10_104431_create_ligne_menus_table', 10),
(28, '2022_05_10_131105_create_actualites_table', 11),
(29, '2022_05_10_135124_create_lieux_table', 12),
(30, '2022_05_10_153009_create_gastronomies_table', 13),
(31, '2022_05_10_162523_create_temoignages_table', 14),
(32, '2022_05_09_152117_create_partages_table', 15),
(34, '2022_05_12_091636_create_comment_partages_table', 16),
(35, '2022_05_12_104240_create_evenements_table', 17),
(36, '2022_05_13_102346_create_activites_table', 18),
(37, '2022_05_13_162741_create_guides_touristiques_table', 19),
(38, '2022_05_16_083132_create_type_activites_table', 19),
(39, '2022_05_16_085059_create_langues_table', 19),
(40, '2022_05_16_085201_create_langue_guides_table', 19),
(41, '2022_05_16_102300_create_activite_images_table', 20),
(42, '2022_05_25_093422_create_user_roles_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `partages`
--

CREATE TABLE `partages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partages`
--

INSERT INTO `partages` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `seo_titre`, `seo_keywords`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 27, 3, 'Cascades d\'Akchour', 'cascades-dakchour', 'Bel endroit à visiter', 'images/partages/h462Cz92TN3lc9NxuseOkm79hv9P2vUlNIR4SlGv.jpg', NULL, NULL, NULL, '2022-05-12 08:44:06', '2022-07-04 13:23:09'),
(3, 27, 16, 'Chefchaouen: Endroit très charmant', 'chefchaouen-moroccos-best-kept-secret', 'Le bleu de la médina de Chefchaoun vous séduit. Je me suis baladé dans ses ruelles. Les commerçants sont accueillants et gentils. Ils conseillent et sont prêts à négocier les prix.', 'images/partages/KoL2EGMVMaDPapf104CMr03lKxCHq2p56yxMzaRz.jpg', NULL, NULL, NULL, '2022-05-12 08:51:54', '2022-07-04 13:36:37'),
(21, 27, NULL, 'Oualidia', 'oualidia', 'Oualidia, sa lagune avec son eau froide. La beauté des paysages et les huîtres ... Excellent dépaysement.', 'images/partages/4CuKbCViBWxYtmQkIMMXrFcXmLTMCi3jpTEkFpwY.png', NULL, NULL, NULL, '2022-06-24 13:57:45', '2022-07-04 13:38:11'),
(25, 34, NULL, 'Mosquée  Hassan II', 'mosquee-hassan-ii', 'Une visite de la Grande Mosquée est incontournable lorsqu\'on visite Casablanca : très belle construction et très belle architecture qui met en valeur les merveilles de l\'artisanat marocain. \r\nJe recommande de prendre du temps pour en apprécier tous les détails.', 'images/partages/7alvyBsqJNNDxErlDsA3ETQtLM2TZPgeTgwcX68X.jpg', NULL, NULL, NULL, '2022-07-08 12:53:13', '2022-07-08 12:53:13'),
(26, 3, NULL, 'agadir', 'agadir', 'nice place', 'images/partages/3rNZKFL8DXxfWwLJqAMcayu8NeV1gIRbJBd1gVV7.jpg', NULL, NULL, NULL, '2022-07-12 12:26:11', '2023-01-04 13:57:07'),
(28, 245, NULL, 'Quartier Habous', 'quartier-habous', 'J’ai dernièrement visité le quartier Habous de Casablanca. Ma mémoire olfactive aura du mal à oublier les odeurs exquises des pâtisseries aux amandes et des dattes confites qui couvraient toute la zone. L’architecture ainsi que les produits artisanaux ont été d’une beauté à couper le souffle.', 'images/partages/hEPXaA0bckF2sfhztZxbwiQqO4fqc12v3GhsTW81.jpg', 'Quartier Habbous de Casablanca', 'habbous,casablanca', 'J’ai dernièrement visité le quartier Habous de Casablanca.', '2023-01-05 19:11:23', '2023-01-06 08:26:35'),
(30, 229, NULL, 'La place Jamaa Alfna', 'la-place-jamaa-alfna', 'Un incontournable de Marrakech. Un endroit à visiter au moins une fois dans sa vie.', 'images/partages/OZkmwQnBG1flDfD0fPdDpBDXgnEnklfSKk4P6hhB.jpg', NULL, NULL, NULL, '2023-01-06 17:12:21', '2023-01-06 21:06:31'),
(31, 230, NULL, 'Cascade d\'Ouzoud', 'cascade-douzoud', 'Un coin paradisiaque au Maroc', 'images/partages/13CrOmq7QbysWeH6Ph9JglydWO9lqlXsLzoy9el5.jpg', NULL, NULL, NULL, '2023-01-08 19:15:54', '2023-01-08 19:15:54'),
(32, 231, NULL, 'Fès', 'fes', 'En tant qu\'artiste, je trouve que le Maroc regorge de lieux qui me servent de source d’inspiration. Fès pour moi, est ma destination quand j’en manque.', 'images/partages/X8NKCPFrB84ZAOfljfN7x4MhKjGQJmG7Z8wRvjXB.jpg', NULL, NULL, NULL, '2023-01-11 19:43:41', '2023-01-11 19:43:41'),
(39, 234, NULL, 'Ifrane', 'ifrane', 'A Ifrane vous vous sentirez à l\'étranger tout en étant au Maroc', 'images/partages/yJp44hAWCJHkglbQyCT2SxeXXkGOOOxHTi6VWAVm.jpg', NULL, NULL, NULL, '2023-01-13 20:36:36', '2023-01-13 20:36:36'),
(40, 244, NULL, 'Exposition de la parure au Musée des Oudayas', 'exposition-de-la-parure-au-musee-des-oudayas', 'Je partage avec vous mon escapade de ce samedi au musée des Oudayas à Rabat. Exposition très intéressante des parures et des vêtements des hommes et des femmes qui ont fait le Maroc. C\'est l\'occasion aussi de visiter les magnifiques jardins des Oudayas.', 'images/partages/nmHh0iEsHGoCen2hP7LHtJ5QZXdNzTyZsTyUP42c.jpg', NULL, NULL, NULL, '2023-01-19 14:05:41', '2023-01-19 14:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 18, 'myapptoken', 'c3678e9028d6e595a803ed1a6bf3d749a6a69f1cc5e0b558baf9a45e8f7998e2', '[\"*\"]', NULL, '2022-05-23 10:19:16', '2022-05-23 10:19:16'),
(3, 'App\\Models\\User', 18, 'myapptoken', '60c8c331f59b0e28c64f23fda23e411d529463cfb7c1cb3b396f851656babac1', '[\"*\"]', '2022-05-23 10:19:31', '2022-05-23 10:19:29', '2022-05-23 10:19:31'),
(12, 'App\\Models\\User', 19, 'myapptoken', '47a738b5b232a56d288c6cf6ab90f76438d4932547b29324ce84c41f1e93cd7d', '[\"*\"]', NULL, '2022-05-24 09:20:57', '2022-05-24 09:20:57'),
(13, 'App\\Models\\User', 20, 'myapptoken', '741957a60df7611aab957edf61ef1124550a051c70c86e33118e06fb47112cf2', '[\"*\"]', NULL, '2022-05-24 09:28:20', '2022-05-24 09:28:20'),
(27, 'App\\Models\\User', 25, 'myapptoken', 'dbeeada703a1de5699d82f4610fc873afd42ebb8ad3e83b72a4e9600ff10b628', '[\"*\"]', NULL, '2022-05-25 08:47:48', '2022-05-25 08:47:48'),
(40, 'App\\Models\\User', 26, 'myapptoken', 'ce17ba98aa5751c87df39dbc2182d845aee9e50304dbf25c687d0620ecc41e6d', '[\"*\"]', '2022-05-25 14:20:38', '2022-05-25 09:44:24', '2022-05-25 14:20:38'),
(115, 'App\\Models\\User', 30, 'myapptoken', '735a42a1642e44279e8903582542c681f6f9b8b12050488f51438ba5c9609f4e', '[\"*\"]', NULL, '2022-06-09 08:16:07', '2022-06-09 08:16:07'),
(165, 'App\\Models\\User', 37, 'myapptoken', 'a25c34fa9a5b96da5fa7e3bafbac6af82efc7c41dcfbd8424e2d6c54b115f762', '[\"*\"]', NULL, '2022-06-14 07:53:30', '2022-06-14 07:53:30'),
(167, 'App\\Models\\User', 38, 'myapptoken', 'd53d4da9742e92b0719f8b20c81fe83a6241d7fad839a915417f6819ea97533f', '[\"*\"]', NULL, '2022-06-14 09:31:19', '2022-06-14 09:31:19'),
(168, 'App\\Models\\User', 39, 'myapptoken', '347832fa5e2e201d253b4c951c4dceafa4397728f29b17eeab880d1190d07f14', '[\"*\"]', NULL, '2022-06-14 09:48:18', '2022-06-14 09:48:18'),
(169, 'App\\Models\\User', 40, 'myapptoken', 'd787a3f5df5f77d1d91be73ce0f4b3be1cbba133f3b40b2440a9557b37b951e1', '[\"*\"]', NULL, '2022-06-14 09:49:28', '2022-06-14 09:49:28'),
(170, 'App\\Models\\User', 41, 'myapptoken', '6b79a017694af428d930d7a949bd3dac98c3da82b658e210fa203957aefef281', '[\"*\"]', NULL, '2022-06-14 09:51:52', '2022-06-14 09:51:52'),
(171, 'App\\Models\\User', 42, 'myapptoken', '68c89ee28fa3e168095a2f28b1b85e65744d6afaea688577a41d5b0b7eefec4e', '[\"*\"]', NULL, '2022-06-14 09:57:17', '2022-06-14 09:57:17'),
(172, 'App\\Models\\User', 43, 'myapptoken', 'c05455e66b50e592428362629f210c61687e8ffcafb90689f51f3d08f2065c2a', '[\"*\"]', NULL, '2022-06-14 10:01:14', '2022-06-14 10:01:14'),
(173, 'App\\Models\\User', 44, 'myapptoken', '0fcb115c4340326cb5b8323ddd2626263b8bee0dae309e073bc32552cb8708c9', '[\"*\"]', NULL, '2022-06-14 10:03:08', '2022-06-14 10:03:08'),
(174, 'App\\Models\\User', 45, 'myapptoken', '722398db7964a33b3d61f7877d117838463cba40fcff97ddb01e6744e0952629', '[\"*\"]', NULL, '2022-06-14 10:17:06', '2022-06-14 10:17:06'),
(175, 'App\\Models\\User', 46, 'myapptoken', '97c30c2dad812324ce83c4f0512a2cceff7a7f472ec7b51da6b59f9f46bf2e98', '[\"*\"]', NULL, '2022-06-14 10:17:39', '2022-06-14 10:17:39'),
(177, 'App\\Models\\User', 47, 'myapptoken', '2bcb4f21d1f9395b0e9cc243a3fe0a56aa7a8fa056cfb1236637d68db8e9ff53', '[\"*\"]', NULL, '2022-06-14 10:50:42', '2022-06-14 10:50:42'),
(178, 'App\\Models\\User', 48, 'myapptoken', 'd71ca22d2648e5a83983d426661ccfc0227217cbfdd58137a913401b9d43a964', '[\"*\"]', NULL, '2022-06-14 10:51:14', '2022-06-14 10:51:14'),
(179, 'App\\Models\\User', 49, 'myapptoken', 'ad3ed79893f4ae9fde69dda5529004d53d74826c6a02af9db0ac98304514e5a4', '[\"*\"]', NULL, '2022-06-14 10:51:56', '2022-06-14 10:51:56'),
(184, 'App\\Models\\User', 50, 'myapptoken', 'e6a7034403d9fc4e86f4f8fa2c52d88ae7e1faecf7823c0ae78163c5b12bcddd', '[\"*\"]', NULL, '2022-06-14 13:21:43', '2022-06-14 13:21:43'),
(185, 'App\\Models\\User', 51, 'myapptoken', '4d1c6595ba00da9e19de958ebd20cd524054c846667b4cbda2938e2257fbc02f', '[\"*\"]', NULL, '2022-06-14 13:22:11', '2022-06-14 13:22:11'),
(186, 'App\\Models\\User', 52, 'myapptoken', '13cf106aec5290b28fbb183e12543df15390dd25766d856e4aac67ce896c210e', '[\"*\"]', NULL, '2022-06-14 13:53:58', '2022-06-14 13:53:58'),
(187, 'App\\Models\\User', 53, 'myapptoken', 'adb4473356b5fa3922f7eda636668d17a0971ab1dae5403707ff6611614bafef', '[\"*\"]', NULL, '2022-06-14 14:17:19', '2022-06-14 14:17:19'),
(188, 'App\\Models\\User', 54, 'myapptoken', '73e0fe82d466d256115b1ff471900a15e6711e8150bf7c54bce3d0aa839ba592', '[\"*\"]', NULL, '2022-06-14 14:19:55', '2022-06-14 14:19:55'),
(189, 'App\\Models\\User', 55, 'myapptoken', 'd587688eac8f575968df5967652f5ff5527e23c2c0b04071e762f88755ee164d', '[\"*\"]', NULL, '2022-06-14 14:38:30', '2022-06-14 14:38:30'),
(190, 'App\\Models\\User', 56, 'myapptoken', '6104039aa814d6f1d9ab7188ddb979f81de2e2a08e8f85d674485c085aab4f71', '[\"*\"]', NULL, '2022-06-15 08:56:55', '2022-06-15 08:56:55'),
(191, 'App\\Models\\User', 56, 'myapptoken', 'be8e5f486acd02367e54158a9e248546ec4003873dec3f38a8db72e5ec2086df', '[\"*\"]', '2022-06-16 09:24:53', '2022-06-15 08:57:28', '2022-06-16 09:24:53'),
(203, 'App\\Models\\User', 57, 'myapptoken', 'f6289820d4aec6db4e5a0b7f25f3c3b23e7967a3b50458e63cefdaa10e67b75a', '[\"*\"]', NULL, '2022-06-16 14:39:37', '2022-06-16 14:39:37'),
(204, 'App\\Models\\User', 58, 'myapptoken', '79952c2ec4b7ceaab58d0dc67920bee1540c5cecc41859f3b5524160dc94bf24', '[\"*\"]', NULL, '2022-06-16 14:57:01', '2022-06-16 14:57:01'),
(205, 'App\\Models\\User', 59, 'myapptoken', '2d5cdf073249e353391f5feee40c0a954ea632d1502391daa13aa34d726fab0b', '[\"*\"]', NULL, '2022-06-16 15:04:45', '2022-06-16 15:04:45'),
(207, 'App\\Models\\User', 60, 'myapptoken', '3dce2df16292dd704056011ac22f655fca5e6bff74826f18f0cd2b7c66f0a8f8', '[\"*\"]', NULL, '2022-06-17 09:00:16', '2022-06-17 09:00:16'),
(208, 'App\\Models\\User', 61, 'myapptoken', '25d7635a5a0d04b84d6543b5597cffc7b74947403abc0822316ea1e13a671111', '[\"*\"]', NULL, '2022-06-17 09:08:43', '2022-06-17 09:08:43'),
(209, 'App\\Models\\User', 62, 'myapptoken', '48133e24d0968b83b193c7cf992c58575a9aed83124e9fd68478347f2af1ecde', '[\"*\"]', NULL, '2022-06-17 09:12:09', '2022-06-17 09:12:09'),
(210, 'App\\Models\\User', 63, 'myapptoken', '97c819f94eda1df35927ba929e7078de0ee3362d2d00977c0cb7e8ff07c642ae', '[\"*\"]', NULL, '2022-06-17 09:15:21', '2022-06-17 09:15:21'),
(211, 'App\\Models\\User', 64, 'myapptoken', '117f2a14a3b8e7736ebc3a07f2ad8cbc0705e6855dec46e49d21e7c4bb0597d9', '[\"*\"]', NULL, '2022-06-17 09:19:48', '2022-06-17 09:19:48'),
(212, 'App\\Models\\User', 65, 'myapptoken', 'f8d0af2cd0e41c8f8191a91537571fd83422dfe14fde3629a7a20b9e0cfb0a6d', '[\"*\"]', NULL, '2022-06-17 09:24:33', '2022-06-17 09:24:33'),
(213, 'App\\Models\\User', 66, 'myapptoken', 'caca15551403513c5f81c9c5d0fa7749357a3129c976526defc74d73409407ee', '[\"*\"]', NULL, '2022-06-17 09:37:07', '2022-06-17 09:37:07'),
(214, 'App\\Models\\User', 67, 'myapptoken', '9bf0bd8ac1a52f7fba771b0ff497925aac6059b65d66184c530780793d74b606', '[\"*\"]', NULL, '2022-06-17 09:44:39', '2022-06-17 09:44:39'),
(215, 'App\\Models\\User', 68, 'myapptoken', '5ba454391b7bd57e8edbe287031d17e798f25998260bfcabbeee07e912e59e4d', '[\"*\"]', NULL, '2022-06-17 12:34:36', '2022-06-17 12:34:36'),
(218, 'App\\Models\\User', 69, 'myapptoken', '7362db244f3bb197c27ab9336aed8c7d7459ddc1aa444af6aa6cc5bc28d3ba78', '[\"*\"]', NULL, '2022-06-20 08:19:16', '2022-06-20 08:19:16'),
(219, 'App\\Models\\User', 70, 'myapptoken', 'fb8656e35ba307b4b246d4a905c1cd610960614ab853b68ab8f32ee0f50ca2f7', '[\"*\"]', NULL, '2022-06-20 10:07:05', '2022-06-20 10:07:05'),
(220, 'App\\Models\\User', 71, 'myapptoken', '15edd0a8dca4374a5fa8992e46439f0191596ec10404e483a0ec7caebac97fb1', '[\"*\"]', NULL, '2022-06-20 15:12:32', '2022-06-20 15:12:32'),
(221, 'App\\Models\\User', 72, 'myapptoken', '37c45feed59a837aa32eb0e5a75a0a59d62c76639c3dba09827417bec4834c42', '[\"*\"]', NULL, '2022-06-20 15:22:10', '2022-06-20 15:22:10'),
(230, 'App\\Models\\User', 73, 'myapptoken', 'a5619e40a2b833af1738e3c2c7e0f7cb7debe29dcbbdf41d68b1b93f588f4df2', '[\"*\"]', NULL, '2022-06-21 13:57:32', '2022-06-21 13:57:32'),
(242, 'App\\Models\\User', 74, 'myapptoken', '9f361dbad65bb5b276060f6d9cbb88b632046e65eef77ccb04b56a3262747248', '[\"*\"]', NULL, '2022-06-24 12:53:14', '2022-06-24 12:53:14'),
(249, 'App\\Models\\User', 76, 'myapptoken', '2ed97025120c722107e78b88eda0e64927196375bac95cb88f09142f57b17b6d', '[\"*\"]', NULL, '2022-06-27 15:27:52', '2022-06-27 15:27:52'),
(250, 'App\\Models\\User', 77, 'myapptoken', '23006cad4d9190c849f5e7df35a696847215ba7ad239f992472aee422faef313', '[\"*\"]', NULL, '2022-06-27 15:56:00', '2022-06-27 15:56:00'),
(251, 'App\\Models\\User', 78, 'myapptoken', '6b779d2a710b7d5193482b05eef68435433b22d67b7028f02be9bdeea2d7c623', '[\"*\"]', NULL, '2022-06-27 15:57:49', '2022-06-27 15:57:49'),
(252, 'App\\Models\\User', 79, 'myapptoken', '2a9598230ff4baf5e0866c1fe8260da4fde2794c9c31be17f56da99086129b91', '[\"*\"]', NULL, '2022-06-28 13:38:12', '2022-06-28 13:38:12'),
(253, 'App\\Models\\User', 80, 'myapptoken', '5332e115ef8025e9c8d01305c38d2725f5a1a54c26b4b88df58f6e7871feef7d', '[\"*\"]', NULL, '2022-06-28 13:47:18', '2022-06-28 13:47:18'),
(254, 'App\\Models\\User', 81, 'myapptoken', 'c08f798883049660a17875d3f5cb2c07d0393435a7fd96fcf772532b9051faca', '[\"*\"]', NULL, '2022-06-29 07:56:50', '2022-06-29 07:56:50'),
(255, 'App\\Models\\User', 82, 'myapptoken', '55412fc1be6ee378295d1dfc65ff04e132242c90f27f4aea986da3c0e6238f1a', '[\"*\"]', NULL, '2022-06-29 08:31:33', '2022-06-29 08:31:33'),
(256, 'App\\Models\\User', 83, 'myapptoken', '61e72cec740b80dc74a42ea544f4ad26c16bb3d39058fa8ee9158ea75c267e57', '[\"*\"]', NULL, '2022-06-29 08:40:48', '2022-06-29 08:40:48'),
(257, 'App\\Models\\User', 84, 'myapptoken', '6d3dea2744f08137c0a49651e2c995412dc2face57dbb0069a8ae66db9a9e8d4', '[\"*\"]', NULL, '2022-06-29 13:08:09', '2022-06-29 13:08:09'),
(258, 'App\\Models\\User', 85, 'myapptoken', '7f7118e8fe7a841819716574942c03471756e392c4dd1992834030dd3051c34f', '[\"*\"]', NULL, '2022-06-29 13:15:47', '2022-06-29 13:15:47'),
(259, 'App\\Models\\User', 86, 'myapptoken', 'a2628adf01d6b4dbcd07ffb6fa40b64c61561c50830f196e9007e03794f57e59', '[\"*\"]', NULL, '2022-06-29 13:24:05', '2022-06-29 13:24:05'),
(260, 'App\\Models\\User', 87, 'myapptoken', '3e52771018ccec8297248cb2c54096c5c9f3db84e108f0fc5fed3940cc00a5f7', '[\"*\"]', NULL, '2022-06-29 13:24:42', '2022-06-29 13:24:42'),
(261, 'App\\Models\\User', 88, 'myapptoken', '30f5532b667aba0d56a16fcdecb73a1e3d84c64f7676e68794e0c54862209552', '[\"*\"]', NULL, '2022-06-29 13:28:26', '2022-06-29 13:28:26'),
(262, 'App\\Models\\User', 89, 'myapptoken', '6bd0608dcc257d7e7ef03a138640c5c9de0fac5c8e4f8a65c1ae8d7aa17bf7ce', '[\"*\"]', NULL, '2022-06-29 13:30:15', '2022-06-29 13:30:15'),
(269, 'App\\Models\\User', 90, 'myapptoken', '819ada32489960579714d683458baa2d3436fe9863ea158864ff04f882454d88', '[\"*\"]', NULL, '2022-06-30 10:27:35', '2022-06-30 10:27:35'),
(270, 'App\\Models\\User', 91, 'myapptoken', '2185a8237a1134c5389c1dd3a9f74c9ae1cd2886b520e0f5cc0104caba7c8048', '[\"*\"]', NULL, '2022-06-30 12:28:21', '2022-06-30 12:28:21'),
(271, 'App\\Models\\User', 92, 'myapptoken', 'e75c592135707ba6bae813b09351946c659324a45914506446c34f1db23d9ea8', '[\"*\"]', NULL, '2022-06-30 12:30:52', '2022-06-30 12:30:52'),
(284, 'App\\Models\\User', 93, 'myapptoken', 'f026831ba183b78d6b57fa64f777a3214e8506fd1d6ff96d7808839b43616488', '[\"*\"]', NULL, '2022-07-05 08:22:16', '2022-07-05 08:22:16'),
(286, 'App\\Models\\User', 94, 'myapptoken', 'd2d9feb7c92b3c68b7cd8c668ef0bd5a8733afc2b46c3e37d19e335eba6f0895', '[\"*\"]', NULL, '2022-07-05 08:55:35', '2022-07-05 08:55:35'),
(287, 'App\\Models\\User', 95, 'myapptoken', 'd67ee78b2c6c06594c2fbee23095dda601b0169a0c54b2bce2be512f470de93c', '[\"*\"]', NULL, '2022-07-05 08:58:47', '2022-07-05 08:58:47'),
(289, 'App\\Models\\User', 96, 'myapptoken', 'dfd5e1f3879239de3fb61b74dc6885dc2550a7e765ab190a78e85e883d750a93', '[\"*\"]', NULL, '2022-07-05 09:19:49', '2022-07-05 09:19:49'),
(290, 'App\\Models\\User', 97, 'myapptoken', 'bd0d16b5a24d10cae766c26c13ef26db20a822850e1215e8bf075942b37b0a6a', '[\"*\"]', NULL, '2022-07-05 09:26:31', '2022-07-05 09:26:31'),
(291, 'App\\Models\\User', 98, 'myapptoken', 'abaf1e4621e12d51c9643383bd292ad8a292f2662708ce5865b4e4e7d211ea85', '[\"*\"]', NULL, '2022-07-05 09:29:26', '2022-07-05 09:29:26'),
(292, 'App\\Models\\User', 99, 'myapptoken', '87b3b2119470ed06d1aa22fed24a5c00abe8d9225bf5fe00f3e7f0940d9df3da', '[\"*\"]', NULL, '2022-07-05 09:32:17', '2022-07-05 09:32:17'),
(293, 'App\\Models\\User', 100, 'myapptoken', 'c2a206f8d50d9352c8246d8d8f4c5439a677203135885faa8060c8192499ea91', '[\"*\"]', NULL, '2022-07-05 09:35:23', '2022-07-05 09:35:23'),
(295, 'App\\Models\\User', 101, 'myapptoken', 'af58507875a861edce50d64360cc52d60a38f95a92960fe2453ecf2bf414c102', '[\"*\"]', NULL, '2022-07-05 09:37:34', '2022-07-05 09:37:34'),
(301, 'App\\Models\\User', 102, 'myapptoken', 'c24b0d115de7f5811c6e6abcd757a07ba6224c727967b2447aac42100df60f5f', '[\"*\"]', NULL, '2022-07-05 13:23:39', '2022-07-05 13:23:39'),
(308, 'App\\Models\\User', 103, 'myapptoken', '36edafb366c0a6c31d04e235aa843cf4557d689d3b91befa0e70db150c01a821', '[\"*\"]', NULL, '2022-07-06 10:46:15', '2022-07-06 10:46:15'),
(309, 'App\\Models\\User', 104, 'myapptoken', '4570c7b682688a37fee74e0f98c97f998b3445543448248482a0ae6c41125b57', '[\"*\"]', NULL, '2022-07-06 10:53:15', '2022-07-06 10:53:15'),
(310, 'App\\Models\\User', 105, 'myapptoken', '309c1adbacf16013f3b71c42e5c975a1b7f156131b475a76f20d20bbc9b9c0fd', '[\"*\"]', NULL, '2022-07-06 10:54:54', '2022-07-06 10:54:54'),
(311, 'App\\Models\\User', 106, 'myapptoken', '5deedca2b9ef41eb55e83e65fce1a178856d2d824c1bc3427dc2e558461252ac', '[\"*\"]', NULL, '2022-07-06 13:28:27', '2022-07-06 13:28:27'),
(314, 'App\\Models\\User', 107, 'myapptoken', 'd16c1013672d0b8943d7269445a39c863b63b5b5f89fd09335312747ae691a54', '[\"*\"]', NULL, '2022-07-06 13:54:59', '2022-07-06 13:54:59'),
(315, 'App\\Models\\User', 108, 'myapptoken', '5240b83f3c4529bf6ffb44b31f8504e3246700a097a15dc2c8bb5e5d7b25ea4c', '[\"*\"]', NULL, '2022-07-06 14:10:24', '2022-07-06 14:10:24'),
(359, 'App\\Models\\User', 109, 'myapptoken', '958a92e668f501a10d0b064746aedd20dcad5b5007302a340a13e970261a5031', '[\"*\"]', NULL, '2022-07-08 15:36:19', '2022-07-08 15:36:19'),
(375, 'App\\Models\\User', 110, 'myapptoken', '7766922d73bec9e5d498dd29751276fa73bc46a3a482db5f9fd9f567c0d8803f', '[\"*\"]', NULL, '2022-07-14 09:47:09', '2022-07-14 09:47:09'),
(376, 'App\\Models\\User', 111, 'myapptoken', '82e1f1d18a51c256472235e6924cc92b7dba7a284e830d56526a6ec73c6dedfd', '[\"*\"]', NULL, '2022-07-14 09:55:04', '2022-07-14 09:55:04'),
(377, 'App\\Models\\User', 112, 'myapptoken', '927122d06356e5acd8a7ad1568431e15d86d1a2199c50cab66d69b48e53eb34b', '[\"*\"]', NULL, '2022-07-14 10:22:48', '2022-07-14 10:22:48'),
(379, 'App\\Models\\User', 114, 'myapptoken', '04943fc6367392ea067f53d6444008325eaca26feb74c4b59b07db49e79ba435', '[\"*\"]', NULL, '2022-07-14 10:37:06', '2022-07-14 10:37:06'),
(561, 'App\\Models\\User', 132, 'myapptoken', 'c0a69dda1f308508ef562b6895e0e38b78b685d07a8b5281603f96374c381e42', '[\"*\"]', NULL, '2022-07-26 08:41:54', '2022-07-26 08:41:54'),
(562, 'App\\Models\\User', 133, 'myapptoken', '313eeb9215672df06196e7157b2aeb67a129acaf8c4b877bd8f97244d452ef30', '[\"*\"]', NULL, '2022-07-26 08:52:34', '2022-07-26 08:52:34'),
(586, 'App\\Models\\User', 134, 'myapptoken', 'b504ed09d24b5b9a7fe6c9f122bdc1ef7bd31da255a641a090375de50f3ec292', '[\"*\"]', NULL, '2022-07-31 18:15:00', '2022-07-31 18:15:00'),
(628, 'App\\Models\\User', 142, 'myapptoken', '7b3b8e0cbd08ca7b5ed072d356a4f839867b2c535cbabf19c877a18916704b73', '[\"*\"]', NULL, '2022-08-08 19:51:34', '2022-08-08 19:51:34'),
(687, 'App\\Models\\User', 156, 'myapptoken', '8ec5cd0d9064dcc73111c147fbddb3b3746df9ac5e9d5c3c6aab19671d8b8fd2', '[\"*\"]', NULL, '2022-09-16 14:51:36', '2022-09-16 14:51:36'),
(688, 'App\\Models\\User', 156, 'myapptoken', 'ecf3889c8c021409bbbe52a179cffd1073ce44f743ef89a9803bc60b56b55b13', '[\"*\"]', '2022-10-07 07:28:57', '2022-09-16 14:51:37', '2022-10-07 07:28:57'),
(711, 'App\\Models\\User', 158, 'myapptoken', '9d227248cd52b5c22ca58beb1cb5ae5ea7b14d5855aefd52ee2474b4dd80892f', '[\"*\"]', '2023-06-28 08:37:19', '2022-10-11 08:59:28', '2023-06-28 08:37:19'),
(734, 'App\\Models\\User', 158, 'myapptoken', '70a041e7a33a2df721a5bef705b8d2b942d2332777f78148a71ec485e3dea91d', '[\"*\"]', '2022-10-19 08:42:50', '2022-10-19 08:42:29', '2022-10-19 08:42:50'),
(735, 'App\\Models\\User', 160, 'myapptoken', 'deaa799b94098adf6608ed377c1de9ec98452f85d4b8700f0603b842abe4b971', '[\"*\"]', NULL, '2022-10-19 08:58:23', '2022-10-19 08:58:23'),
(747, 'App\\Models\\User', 164, 'myapptoken', '4d4e8c135a2a6248ff2905c90a7dbcb1161add2cb9f56c3a43bac5ee185fafba', '[\"*\"]', NULL, '2022-10-27 15:30:12', '2022-10-27 15:30:12'),
(748, 'App\\Models\\User', 164, 'myapptoken', '1c1f4bb0b01c21be9fa2b40561f54975c3060349b184e85247b15a288083969c', '[\"*\"]', '2022-10-27 15:30:42', '2022-10-27 15:30:36', '2022-10-27 15:30:42'),
(749, 'App\\Models\\User', 165, 'myapptoken', '8907be294c64e096533511ab45c6bd4602e310536a981ea9385a5d0059a73187', '[\"*\"]', NULL, '2022-10-27 15:31:20', '2022-10-27 15:31:20'),
(750, 'App\\Models\\User', 166, 'myapptoken', 'e600d645cb388770260af9abbcd0005eced4ab73810ad982346cdd3419b87ba9', '[\"*\"]', NULL, '2022-10-27 15:32:50', '2022-10-27 15:32:50'),
(753, 'App\\Models\\User', 168, 'myapptoken', '3ea04ac031b316077ed4ad2872185a33bc3fe85ea405e314ffc4d86761e1f6da', '[\"*\"]', NULL, '2022-10-27 15:37:07', '2022-10-27 15:37:07'),
(754, 'App\\Models\\User', 168, 'myapptoken', '85e5f5b2249a28bceedb5d832463feca721d961716ea7377380bd5d8a2e8c103', '[\"*\"]', '2023-03-17 10:01:54', '2022-10-27 15:37:34', '2023-03-17 10:01:54'),
(774, 'App\\Models\\User', 175, 'myapptoken', '1b56450cbe90437003207996d561389c3292af060335bba353bc812daf1139a9', '[\"*\"]', NULL, '2022-10-28 14:31:07', '2022-10-28 14:31:07'),
(775, 'App\\Models\\User', 175, 'myapptoken', '63b2e1bf35d42f015948f9e76ce59f7a851f6c94ce51cac69fa9c48098fc3f75', '[\"*\"]', '2023-01-19 13:27:58', '2022-10-28 14:31:59', '2023-01-19 13:27:58'),
(776, 'App\\Models\\User', 175, 'myapptoken', '82ddaf5fa0bb49f521e8d8cbbef2c104b2ba163e0e3d4ac52eab8332a25f7a61', '[\"*\"]', NULL, '2022-10-28 14:32:02', '2022-10-28 14:32:02'),
(783, 'App\\Models\\User', 177, 'myapptoken', 'e311d4f16d02cd6a1625ba2a1b79fb8bd1b1dcbebf8d35ed7473ff840b17ca1c', '[\"*\"]', NULL, '2022-10-31 13:44:55', '2022-10-31 13:44:55'),
(786, 'App\\Models\\User', 17, 'myapptoken', '15835f15f5cbe0fcf46c7fe04e19d26e2970f73a723031e98140ecf221d1929e', '[\"*\"]', '2022-10-31 14:33:32', '2022-10-31 14:31:11', '2022-10-31 14:33:32'),
(787, 'App\\Models\\User', 17, 'myapptoken', 'e441e4dd8c68aabebd165cf6dfb50d97e4e8f238f2238ad8ce28a94dda0f485d', '[\"*\"]', '2022-11-02 15:54:28', '2022-10-31 14:50:30', '2022-11-02 15:54:28'),
(789, 'App\\Models\\User', 178, 'myapptoken', '996c40508950564e6893e17d2e89cc0d4fdb0d87d6753a844e2e88384cb85901', '[\"*\"]', NULL, '2022-10-31 15:01:14', '2022-10-31 15:01:14'),
(792, 'App\\Models\\User', 180, 'myapptoken', '14090a31016406db03c22035829a8f1f4fd2f240cf076b66fe5c9f719ae98832', '[\"*\"]', NULL, '2022-10-31 15:12:24', '2022-10-31 15:12:24'),
(793, 'App\\Models\\User', 181, 'myapptoken', 'f5dae7c0b5f4c3aac97c3833b0695606e2284ffbd2ceeef9053650bb1db3e9b4', '[\"*\"]', NULL, '2022-10-31 15:14:08', '2022-10-31 15:14:08'),
(812, 'App\\Models\\User', 184, 'myapptoken', 'de9e55ba578e7bf6a4cb22d6021e27aec3587d6c39d7fcdfb5a498bcca674b7d', '[\"*\"]', NULL, '2022-11-01 15:06:56', '2022-11-01 15:06:56'),
(825, 'App\\Models\\User', 186, 'myapptoken', '10ef84869e4731e998ee480829de1796889f06cac1cbc6d238156deb561f0f65', '[\"*\"]', NULL, '2022-11-03 09:48:26', '2022-11-03 09:48:26'),
(868, 'App\\Models\\User', 196, 'myapptoken', '007246da3c9a2907e275eb3c6e7e66b46bda15fb6e98ed6ccc38292699380edf', '[\"*\"]', NULL, '2022-11-10 12:26:48', '2022-11-10 12:26:48'),
(906, 'App\\Models\\User', 202, 'myapptoken', '316a83cf9ce5c60fe4d2dc2c0395000150ef93aa8dfdcc9e46c795133b6d68b0', '[\"*\"]', NULL, '2022-11-15 15:09:27', '2022-11-15 15:09:27'),
(914, 'App\\Models\\User', 205, 'myapptoken', '57f21703ac2175d5d6d9e719a871dde9fa47a270dcc3395f31d8858478f6c6c8', '[\"*\"]', NULL, '2022-11-16 12:48:32', '2022-11-16 12:48:32'),
(919, 'App\\Models\\User', 207, 'myapptoken', '37edf7780f8f6dcdce51afef68ea81524166b53d29629934759b705341c5dd60', '[\"*\"]', NULL, '2022-11-16 13:21:30', '2022-11-16 13:21:30'),
(920, 'App\\Models\\User', 215, 'myapptoken', 'c1192d51144503fff1d0a1b8de794ee95d40afd77678a058fe4f4ee8acf1c223', '[\"*\"]', NULL, '2022-11-16 13:48:47', '2022-11-16 13:48:47'),
(921, 'App\\Models\\User', 216, 'myapptoken', '03a976925dbfa3df172810df868e1fe2e32e7d0aa4ea28a744ec43e98defee2a', '[\"*\"]', NULL, '2022-11-16 13:49:36', '2022-11-16 13:49:36'),
(922, 'App\\Models\\User', 217, 'myapptoken', '5dc3740e2b5ee3ac1f18d21892a3ccdcc1d0b640152badeb23af5a1ab8e75a51', '[\"*\"]', NULL, '2022-11-16 14:15:10', '2022-11-16 14:15:10'),
(923, 'App\\Models\\User', 218, 'myapptoken', '7ab1a8be8d0e1da2599907df3ff5206cc7c3d680e8cc74eeeb8870da06d3a901', '[\"*\"]', NULL, '2022-11-16 14:18:16', '2022-11-16 14:18:16'),
(924, 'App\\Models\\User', 219, 'myapptoken', 'a306438e0ab2a3db138fbd09db72e506c64a30f913740cb75b9a955d9d59bbf8', '[\"*\"]', NULL, '2022-11-16 14:24:37', '2022-11-16 14:24:37'),
(934, 'App\\Models\\User', 222, 'myapptoken', '1cdc9665dad52a49a0b702558d023d4782b50e103347e1ab2b09e7db318fda96', '[\"*\"]', '2022-12-02 07:17:36', '2022-11-17 10:00:04', '2022-12-02 07:17:36'),
(935, 'App\\Models\\User', 222, 'myapptoken', '0d0372eb69ff0e696696a457bc012455d4c7487db71f0cefb39bf0688f88411a', '[\"*\"]', '2022-11-21 08:09:10', '2022-11-17 12:38:32', '2022-11-21 08:09:10'),
(940, 'App\\Models\\User', 175, 'myapptoken', '5cbe43e5cf364c480d209c180e0173d2fa9b61508a1015c21667d39e9a7dc82d', '[\"*\"]', '2022-11-21 09:19:27', '2022-11-21 09:19:25', '2022-11-21 09:19:27'),
(947, 'App\\Models\\User', 17, 'myapptoken', 'ab0d2d3d54c17b27acfc7d5ba839244725d95c27ed23768e2a7e461c38834754', '[\"*\"]', NULL, '2022-11-30 09:49:36', '2022-11-30 09:49:36'),
(948, 'App\\Models\\User', 223, 'myapptoken', '5ede2350848a9f3d17802a303a1847a1418a0f28528cc436d024c7a7407fa042', '[\"*\"]', NULL, '2022-11-30 10:04:34', '2022-11-30 10:04:34'),
(975, 'App\\Models\\User', 232, 'myapptoken', '19587b9e3b98e051e5c942e7f3cd156c793217a2caef67aceb7e1a9ecb771a88', '[\"*\"]', NULL, '2023-01-03 18:46:32', '2023-01-03 18:46:32'),
(983, 'App\\Models\\User', 234, 'myapptoken', '55babd3852c8c4158fafaaeac87396ab72d75c4834645f94dfc98fe7e8f910fb', '[\"*\"]', NULL, '2023-01-04 18:26:53', '2023-01-04 18:26:53'),
(987, 'App\\Models\\User', 237, 'myapptoken', 'e2c02ccd7085cc67bd6a184357e0aff9879c2e7304cdff06ccb0691e31ffc3ca', '[\"*\"]', NULL, '2023-01-05 08:51:47', '2023-01-05 08:51:47'),
(991, 'App\\Models\\User', 238, 'myapptoken', '0ec3b3bcdd237497e4dfcfe4a428c77c2e97c9a0449286ef57a9c7936209346f', '[\"*\"]', NULL, '2023-01-05 09:04:23', '2023-01-05 09:04:23'),
(997, 'App\\Models\\User', 243, 'myapptoken', 'a60ca4cd0a864eacf23af999b0da9648e85962f096d23bb5506c99e8e25b3d9a', '[\"*\"]', NULL, '2023-01-05 10:32:49', '2023-01-05 10:32:49'),
(1006, 'App\\Models\\User', 228, 'myapptoken', '59d477b8666c7d088df44eac3b56d7cea5258b2181fb70a6ff667066746a4c25', '[\"*\"]', NULL, '2023-01-05 12:58:15', '2023-01-05 12:58:15'),
(1042, 'App\\Models\\User', 234, 'myapptoken', '45262cf27e51d10a5578c1a9ae9a7a0a8e81ba6809f0230103b3b7832cd03c9f', '[\"*\"]', '2023-06-07 16:57:57', '2023-01-13 20:33:26', '2023-06-07 16:57:57'),
(1052, 'App\\Models\\User', 253, 'myapptoken', '4d959642fa8df26c79eab407e42b3ec624895a167568e7b3d2d0c4b848b17968', '[\"*\"]', NULL, '2023-01-19 16:22:30', '2023-01-19 16:22:30'),
(1054, 'App\\Models\\User', 255, 'myapptoken', '331a8157a5de03020f1105b5655f233d7b0a16a052bc1b24c8f2afee3124f5d8', '[\"*\"]', NULL, '2023-01-20 12:58:18', '2023-01-20 12:58:18'),
(1055, 'App\\Models\\User', 256, 'myapptoken', '37131c36fd4162e19cf1da46e08f66665d057fa9efd69deec5310a184266efa7', '[\"*\"]', NULL, '2023-01-20 13:41:29', '2023-01-20 13:41:29'),
(1056, 'App\\Models\\User', 256, 'myapptoken', '109bf8ece55c314a9750cb5d70a01286c37ab21b4c13562affc4e3685387cb6f', '[\"*\"]', '2023-01-20 15:53:37', '2023-01-20 13:42:35', '2023-01-20 15:53:37'),
(1060, 'App\\Models\\User', 234, 'myapptoken', '813049a529aa5b25272a0a107d46671dab6bffe7b564fadd0a0c4904ddb1e707', '[\"*\"]', '2023-01-30 09:39:14', '2023-01-30 09:37:30', '2023-01-30 09:39:14'),
(1076, 'App\\Models\\User', 8, 'myapptoken', '5867d62dfc477ea844236be38072cbf889164d8d3f4e40b7d3bd1d44e1116638', '[\"*\"]', NULL, '2023-02-06 11:05:06', '2023-02-06 11:05:06'),
(1078, 'App\\Models\\User', 258, 'myapptoken', 'cc1712971fea5c4342337ca3dfbb4b36c6563ddddf74b78db4f53b5e8c544362', '[\"*\"]', NULL, '2023-02-06 12:38:44', '2023-02-06 12:38:44'),
(1079, 'App\\Models\\User', 259, 'myapptoken', 'b4be6919e29c3aafb55a032867da8dd2b9b1f61813f1ded47cacbcfa002f5648', '[\"*\"]', NULL, '2023-02-09 08:19:43', '2023-02-09 08:19:43'),
(1080, 'App\\Models\\User', 260, 'myapptoken', '15daf9b26a913543852f18717ccebaa16959c04e375b290e2ffa626067dbc40a', '[\"*\"]', NULL, '2023-02-09 08:26:44', '2023-02-09 08:26:44'),
(1084, 'App\\Models\\User', 263, 'myapptoken', '022e6c3f24d1b7a7bcff3000cf1a82334ae60a4f695be4a466722c3a1b964ba1', '[\"*\"]', NULL, '2023-02-13 07:56:37', '2023-02-13 07:56:37'),
(1114, 'App\\Models\\User', 300, 'myapptoken', '880292e8e844148d88363d8a32be63746739cc66bff22a1cf6fb0553909e630e', '[\"*\"]', NULL, '2023-03-15 08:31:27', '2023-03-15 08:31:27'),
(1115, 'App\\Models\\User', 301, 'myapptoken', 'b786746330455e41ea929d18b1a117173052fc068b27a792b381947c994b1b62', '[\"*\"]', NULL, '2023-03-15 08:31:36', '2023-03-15 08:31:36'),
(1116, 'App\\Models\\User', 302, 'myapptoken', 'be62914729e912c9a1d99cf052113d95c42906964235d86e377d1b2952e22880', '[\"*\"]', NULL, '2023-03-15 08:33:41', '2023-03-15 08:33:41'),
(1119, 'App\\Models\\User', 304, 'myapptoken', '41af43afb95cc6833cddc036a89aaab4e72c330faef60a0cca9110c9e198648e', '[\"*\"]', NULL, '2023-03-15 08:48:14', '2023-03-15 08:48:14'),
(1120, 'App\\Models\\User', 305, 'myapptoken', 'dca469395ef94d389211e849dd5023a23689969365d598f98e554ab569af7c4e', '[\"*\"]', NULL, '2023-03-15 08:49:44', '2023-03-15 08:49:44'),
(1121, 'App\\Models\\User', 306, 'myapptoken', '4b757a8cd0d9e91c075b0b32c4e4c3098e79ada9219a3da7af8a58ff6e83d5ea', '[\"*\"]', NULL, '2023-03-15 08:52:43', '2023-03-15 08:52:43'),
(1123, 'App\\Models\\User', 307, 'myapptoken', '13ad43b30610ffd5875f7b1a534c439170feb38f016ea3a49c9c31c51f35137f', '[\"*\"]', NULL, '2023-03-16 07:59:48', '2023-03-16 07:59:48'),
(1138, 'App\\Models\\User', 309, 'myapptoken', '2031b5b0267b88ad76f3eb4a9956f090f959a85f0fa7237a6445972b03ac8f3c', '[\"*\"]', NULL, '2023-03-16 17:19:57', '2023-03-16 17:19:57'),
(1139, 'App\\Models\\User', 309, 'myapptoken', 'e80e5dae02ae40a75e1ed9d5bb94d7cb4538c78384c518d8d345d66c286324b1', '[\"*\"]', '2023-04-05 20:32:54', '2023-03-16 17:21:08', '2023-04-05 20:32:54'),
(1140, 'App\\Models\\User', 116, 'myapptoken', '53fc7dcec6f9d471bb1fc7c53c6f5d2e0cfb18e21b004dbadca8e6f9d1df47bf', '[\"*\"]', '2023-06-21 10:40:37', '2023-03-17 14:19:10', '2023-06-21 10:40:37'),
(1145, 'App\\Models\\User', 117, 'myapptoken', 'c2e3f1afabc942f05d6ddd3ba32f67308ab2c3b88514b7cfb29172373327abbf', '[\"*\"]', '2023-03-17 15:30:49', '2023-03-17 15:30:47', '2023-03-17 15:30:49'),
(1147, 'App\\Models\\User', 310, 'myapptoken', '1f753b3be55a1fdb18246da2d60d1a3073c8d0f35f76aff1ee21151f0522d78d', '[\"*\"]', NULL, '2023-03-17 16:03:44', '2023-03-17 16:03:44'),
(1156, 'App\\Models\\User', 312, 'myapptoken', 'be2b5447c5835dbe7f689b9476b70bdea68df69eae73061aa739cbfc6324d13f', '[\"*\"]', NULL, '2023-03-20 11:13:08', '2023-03-20 11:13:08'),
(1183, 'App\\Models\\User', 270, 'myapptoken', '4eca5e5d5b6c602600d7d35963bdecca61dfd24536dac322eb6871c7e96e2440', '[\"*\"]', '2023-03-22 15:58:56', '2023-03-22 15:35:11', '2023-03-22 15:58:56'),
(1193, 'App\\Models\\User', 321, 'myapptoken', 'fc60e41699df1002e54ae63b980571c05d81a609adf0c0aeface43974e81a73c', '[\"*\"]', NULL, '2023-03-27 15:32:00', '2023-03-27 15:32:00'),
(1194, 'App\\Models\\User', 321, 'myapptoken', 'feb71922f0ea10f4b4a1bda3ccb7639a59fede8962326044153d2858fb89f6e7', '[\"*\"]', '2023-03-27 20:16:41', '2023-03-27 15:32:58', '2023-03-27 20:16:41'),
(1203, 'App\\Models\\User', 314, 'myapptoken', '3eb8226ccff90337b8212b8606f3e0325a632ffa3f830b44e846e096bdc54a61', '[\"*\"]', '2023-04-04 15:10:14', '2023-03-30 12:03:56', '2023-04-04 15:10:14'),
(1207, 'App\\Models\\User', 320, 'myapptoken', '0b9596994e0c4e1c5419e3453c2adce129f09e602fa9cd3c46a266e59899e835', '[\"*\"]', '2023-04-07 12:12:27', '2023-04-06 10:51:52', '2023-04-07 12:12:27'),
(1208, 'App\\Models\\User', 308, 'myapptoken', '3360059ddeb97d8075b1211308b807f434c8a679a0e595ea1c1d2f46ac689a1d', '[\"*\"]', '2023-04-07 10:27:08', '2023-04-06 18:29:45', '2023-04-07 10:27:08'),
(1209, 'App\\Models\\User', 323, 'myapptoken', 'd2857e7a23061da497bccc43dceb2d7c5e3e26d6425e9ff1653dbaa353f4e0d1', '[\"*\"]', NULL, '2023-04-08 19:28:37', '2023-04-08 19:28:37'),
(1210, 'App\\Models\\User', 314, 'myapptoken', '39ce4332358ec56048f3336effb194cc14b3c2f2941b7124c13c5be6cd70f074', '[\"*\"]', '2023-04-14 16:17:33', '2023-04-10 22:00:57', '2023-04-14 16:17:33'),
(1214, 'App\\Models\\User', 325, 'myapptoken', 'fc19274de1c168800371a903cb41cd89c6a642d525f834816e46f4b61c7af972', '[\"*\"]', NULL, '2023-04-30 16:39:19', '2023-04-30 16:39:19'),
(1215, 'App\\Models\\User', 325, 'myapptoken', '5b85587e2aec4b63e14843f12c839e3dbf9cf88cb39a928ad92973a9842c62e7', '[\"*\"]', '2023-05-06 09:06:57', '2023-04-30 16:44:05', '2023-05-06 09:06:57'),
(1216, 'App\\Models\\User', 326, 'myapptoken', 'be2347cacfcb2ea85afe9f9d23b632a3d77b7e06b229ab582a40273b94299002', '[\"*\"]', NULL, '2023-05-09 10:32:21', '2023-05-09 10:32:21'),
(1217, 'App\\Models\\User', 326, 'myapptoken', '1ea4661504b985877756189cfec3d66a9c85a99c7311bb26d73e0c8bee859f99', '[\"*\"]', '2023-05-09 10:54:50', '2023-05-09 10:33:27', '2023-05-09 10:54:50'),
(1226, 'App\\Models\\User', 329, 'myapptoken', '3235974477abddcda62af0327f24590d311b0dd0687e6c6b4a35ad46e79059c2', '[\"*\"]', '2023-05-11 15:09:28', '2023-05-11 15:06:21', '2023-05-11 15:09:28'),
(1227, 'App\\Models\\User', 331, 'myapptoken', '92bd834c406bd85af5020782ab01c4c59c6f515418be60c6cbf68fc33a0bccfe', '[\"*\"]', NULL, '2023-05-15 20:10:02', '2023-05-15 20:10:02'),
(1228, 'App\\Models\\User', 331, 'myapptoken', '6df9661217f082123da95fbd7c3b3f9046cc7c51ca59ebf461de4ba9b3b5d619', '[\"*\"]', '2023-05-15 20:16:52', '2023-05-15 20:11:44', '2023-05-15 20:16:52'),
(1231, 'App\\Models\\User', 294, 'myapptoken', '628bf825c852a6af53242621c68af0625365a9453518159c5b580796b655dd06', '[\"*\"]', '2023-05-23 14:16:56', '2023-05-23 14:12:31', '2023-05-23 14:16:56'),
(1239, 'App\\Models\\User', 332, 'myapptoken', '5c3e8f01072db830334f90b525c679bde7f3d9dbfb31378bc31ff64a76435d31', '[\"*\"]', NULL, '2023-06-08 13:23:47', '2023-06-08 13:23:47'),
(1258, 'App\\Models\\User', 258, 'myapptoken', '0cf0de2f44bc4cc27a2a0714c7aeb64197dff1988469112d12dd429e4f7fae9a', '[\"*\"]', '2023-07-05 16:55:37', '2023-06-08 16:49:13', '2023-07-05 16:55:37'),
(1270, 'App\\Models\\User', 337, 'myapptoken', '0fdab31b444b98aa27ecfcf229df28882d830a57e124e12e8501a3c5308b5561', '[\"*\"]', NULL, '2023-06-13 10:16:07', '2023-06-13 10:16:07'),
(1284, 'App\\Models\\User', 335, 'myapptoken', 'c182a612b542c229407796e66417c8dc10399ed6b4356516ab8d22a53e4fc492', '[\"*\"]', '2023-07-11 08:34:41', '2023-06-13 14:10:23', '2023-07-11 08:34:41'),
(1304, 'App\\Models\\User', 343, 'myapptoken', 'a9b33a4a15a9a30e3cd617706a5de9f4cc36d584e6e922d78a6e4c748a810891', '[\"*\"]', NULL, '2023-06-16 19:10:24', '2023-06-16 19:10:24'),
(1305, 'App\\Models\\User', 343, 'myapptoken', '218e93b555f3f7dffc6b27a2d87b65fcc5999ae58852bd40eb4267b77a5b2c74', '[\"*\"]', '2023-06-16 19:13:28', '2023-06-16 19:10:58', '2023-06-16 19:13:28'),
(1306, 'App\\Models\\User', 344, 'myapptoken', 'ab34402135f8e63bc8758c6982d9317f090b7177c1530ea3ffb209e2465739b6', '[\"*\"]', NULL, '2023-06-19 08:15:53', '2023-06-19 08:15:53'),
(1320, 'App\\Models\\User', 352, 'myapptoken', '01f9dfdda327af1942aba3a01006434549eb110cece0e0f84462af5fcd202350', '[\"*\"]', NULL, '2023-06-23 19:44:34', '2023-06-23 19:44:34'),
(1321, 'App\\Models\\User', 352, 'myapptoken', '9a0beacbe18234dd8c50a941ae69bb69a6a5c94284959f2a1cb2b1ed32f73e6d', '[\"*\"]', '2023-06-23 19:52:32', '2023-06-23 19:46:03', '2023-06-23 19:52:32'),
(1322, 'App\\Models\\User', 353, 'myapptoken', '99ee173613602a0bdca6d8a2dc25ca31fde208f133a2a736164b30f5abc3475f', '[\"*\"]', NULL, '2023-06-27 14:07:14', '2023-06-27 14:07:14'),
(1323, 'App\\Models\\User', 353, 'myapptoken', '60582632438194ff33a99fef1341921c37916d885216fd6aa77ef5c913a7d51e', '[\"*\"]', '2023-06-27 14:18:50', '2023-06-27 14:08:40', '2023-06-27 14:18:50'),
(1324, 'App\\Models\\User', 353, 'myapptoken', '644325c5afc5f3f62a15d1dd235a1b04a1378f1026573b8202dcb329bcf2d73a', '[\"*\"]', '2023-06-27 15:12:30', '2023-06-27 14:21:07', '2023-06-27 15:12:30'),
(1325, 'App\\Models\\User', 354, 'myapptoken', '5a6743d37957bbd3f73dd04fd6263d3ef2800493fa9efed3eacaeb6e85d3c06f', '[\"*\"]', NULL, '2023-06-27 14:54:41', '2023-06-27 14:54:41'),
(1326, 'App\\Models\\User', 354, 'myapptoken', 'cc425c54dad2271edb6e118b05939ee0a20c6f0df09d2ba1f31f50b146bbc8ec', '[\"*\"]', '2023-06-27 15:58:54', '2023-06-27 14:56:21', '2023-06-27 15:58:54'),
(1333, 'App\\Models\\User', 357, 'myapptoken', 'b2eb9bd15849dff2f9cd798250962fbd292d8f3edefaa1ca77790f4891783a67', '[\"*\"]', NULL, '2023-07-05 09:01:14', '2023-07-05 09:01:14'),
(1334, 'App\\Models\\User', 357, 'myapptoken', '27211696a849eb336f60d561f5d4ea490b3f7147544efc56ed16bf1bd9b5eec7', '[\"*\"]', '2023-07-05 09:08:51', '2023-07-05 09:02:07', '2023-07-05 09:08:51'),
(1338, 'App\\Models\\User', 359, 'myapptoken', 'c030259dfe7fb9ed8eec5ab47eeb388d0e7a8007f8cb7dded8c3b7f1683f8c79', '[\"*\"]', NULL, '2023-07-05 14:23:42', '2023-07-05 14:23:42'),
(1340, 'App\\Models\\User', 357, 'myapptoken', '7c804767ce533142bcbf3599c1d197f257e6b240319f95523ac188229b85280f', '[\"*\"]', '2023-07-05 15:54:41', '2023-07-05 15:54:13', '2023-07-05 15:54:41'),
(1344, 'App\\Models\\User', 357, 'myapptoken', '101b89c7c30bf6d98da65083d2672c6fe27548f1d5e2cc48fff8ff1256167bb6', '[\"*\"]', '2023-07-06 18:43:00', '2023-07-06 08:12:26', '2023-07-06 18:43:00'),
(1345, 'App\\Models\\User', 175, 'myapptoken', '572723524dea9edb35668f5989e0391b3685582dc1eb649580f9fc52bc84c9b5', '[\"*\"]', '2023-07-11 15:08:43', '2023-07-06 09:59:48', '2023-07-11 15:08:43'),
(1349, 'App\\Models\\User', 361, 'myapptoken', '64abd3e95cfb97c698dce7f63c9ea6750691334ed88f345fc898b67acb97de58', '[\"*\"]', NULL, '2023-07-10 08:38:58', '2023-07-10 08:38:58'),
(1350, 'App\\Models\\User', 361, 'myapptoken', 'b0b63ad7cae154490b4381fcdb8d62bfc3a6cf6006ac29ffb22be9a536092a6f', '[\"*\"]', '2023-07-10 12:46:04', '2023-07-10 08:41:24', '2023-07-10 12:46:04'),
(1351, 'App\\Models\\User', 250, 'myapptoken', '7622431ed358386100f6320543f574180afb02838129320f9a7e6ce908846d58', '[\"*\"]', '2023-07-10 09:14:26', '2023-07-10 09:13:51', '2023-07-10 09:14:26'),
(1352, 'App\\Models\\User', 362, 'myapptoken', 'e1c2f252b1463e6b3a773f39cf0c007ceaf7d779c1b4bd7b31ea1d78871ac9a9', '[\"*\"]', NULL, '2023-07-10 10:07:22', '2023-07-10 10:07:22'),
(1353, 'App\\Models\\User', 362, 'myapptoken', 'b9e41b0eefd20df58a1d07be4b28744f91f32b547bf8ab18619538371f63659f', '[\"*\"]', NULL, '2023-07-10 10:08:19', '2023-07-10 10:08:19'),
(1354, 'App\\Models\\User', 362, 'myapptoken', '1848613f740ac13d08a942acae43394a07de66614b69f20914bc5934a6f2e18a', '[\"*\"]', '2023-07-10 10:08:27', '2023-07-10 10:08:23', '2023-07-10 10:08:27'),
(1355, 'App\\Models\\User', 250, 'myapptoken', '20e15bf2bfd5c1bd98f9021706ebfa145e3572b8930ebfefd25b50a275814aba', '[\"*\"]', '2023-07-10 13:29:21', '2023-07-10 10:16:51', '2023-07-10 13:29:21'),
(1356, 'App\\Models\\User', 250, 'myapptoken', 'e35977eb34c8d0d7e19139370ac947d6003c302c99b87315dbc2e373a01b1a9c', '[\"*\"]', NULL, '2023-07-10 12:21:38', '2023-07-10 12:21:38'),
(1358, 'App\\Models\\User', 250, 'myapptoken', 'bf331ecdc2af49adef7831b6fa47c73859262da141777b9d9a54690bcf981999', '[\"*\"]', '2023-07-11 08:10:07', '2023-07-11 08:10:00', '2023-07-11 08:10:07'),
(1360, 'App\\Models\\User', 365, 'myapptoken', '86d21afb6314dec2755baa1f7acaad0193b6c0dcbb9ca71a22954addcce64a34', '[\"*\"]', NULL, '2023-07-11 13:59:02', '2023-07-11 13:59:02'),
(1361, 'App\\Models\\User', 366, 'myapptoken', 'f0a9fdab8732ba5e1fe5f22dc239f542abf0c9927bc4543a29412606fec41cdd', '[\"*\"]', NULL, '2023-07-11 14:11:17', '2023-07-11 14:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `reservezs`
--

CREATE TABLE `reservezs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_restaurant` int(11) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservezs`
--

INSERT INTO `reservezs` (`id`, `username`, `email`, `tel`, `subject`, `message`, `user_id`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(2, 'Elghanemy saad', 'elghanemysaad@gmail.com', NULL, 'reservation hotel', 'Je suis intéressé', NULL, 4, NULL, NULL, NULL, NULL, NULL, '2022-06-24 13:29:58', '2022-06-24 13:29:58'),
(3, 'salah brik', 'briksalah321@gmail.com', NULL, 'réservation', 'Bonjour', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-08-10 10:39:07', '2022-08-10 10:39:07'),
(4, 'salah brik', 'briksalah321@gmail.com', NULL, 'réservation', 'Bonjour', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-08-10 10:39:25', '2022-08-10 10:39:25'),
(5, 'test', 'elghanemysaad@gmail.com', NULL, 'test testtest', 'dsadasdas asdasdasd', NULL, 39, NULL, NULL, NULL, NULL, NULL, '2022-11-17 08:56:03', '2022-11-17 08:56:03'),
(6, 'Commercial MSAFAR', 'moaudtaoussi0@gmail.com', NULL, 'Résérvation', 'test', NULL, 14, NULL, NULL, NULL, NULL, NULL, '2023-03-30 11:51:52', '2023-03-30 11:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `specialite` text COLLATE utf8mb4_unicode_ci,
  `horaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `nom`, `slug`, `description`, `specialite`, `horaire`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `image`, `nb_visite`, `prix_min`, `prix_max`, `accepter_regles`, `created_at`, `updated_at`) VALUES
(1, 125, 'Le marocain', 'le-riad-restaurant', 'Le marocain vous propose une carte variée de mets fidèles à la cuisine marocaine, réputé pour son goût raffiné et exceptionnel mais pas que... Le marocain vous propose également une seconde carte fusion aux accents de cuisine du monde qui comprend des plats aux influences africaines et  méditerranéennes.2022.', 'Africaine, Marocaine, Méditerranéenne', NULL, '0651280862', 13, 'Boulevard de la Corniche - Ain Diab - Casablanca', 'le-riad-restaurant@gmail.com', '700', 'http://msafar.ma/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', 'https://www.tiktok.com/fr/', '0651280862', 'images/restaurants/restaurant-le-marocain.jpg', 0, 20, 200, 0, '2022-05-10 07:42:55', '2022-07-15 08:06:55'),
(2, 126, 'Restaurant le palmier', 'lilys-casablanca', 'Le Restaurant le palmier est situé en plein cœur de Rabat. C\'est un endroit idéal pour déguster de merveilleux plats sains et équilibrés, avec une vue magnifique sur piscine. Vous pourrez profiter de la fraîcheur des bassins et admirer les jardins de bougainvilliers tout en étant confortablement installé : une véritable invitation à la détente.', 'Marocaine, Méditerranéenne', NULL, '0651280862', 15, 'Rue Kharroub,Avenue Annakhil, Hay Ryad, Rabat', 'contact@msafar.ma', '700', 'http://msafar.ma/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', 'https://www.tiktok.com/fr/', '0628072354', 'images/restaurants/restaurant-le-palmier.jpg', 0, 40, 150, 0, '2022-05-10 14:07:10', '2023-04-19 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `riads`
--

CREATE TABLE `riads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT '0',
  `prix_min` int(11) DEFAULT NULL,
  `prix_max` int(11) DEFAULT NULL,
  `accepter_regles` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riads`
--

INSERT INTO `riads` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `nb_visite`, `prix_min`, `prix_max`, `accepter_regles`, `image`, `created_at`, `updated_at`) VALUES
(1, 121, 'Riad Bab andalous', 'nom-riad1', 'Équipées d\'une climatisation, les chambres du Riad Bab andalous offrent tout le confort dont vous avez besoin. Vous pourrez même rester connecté grâce au wi-fi gratuit. <br>\r\nAssociant l\'architecture traditionnelle et un ameublement contemporain, la décoration du riad Bab andalous reflète le Maroc d\'hier et d\'aujourd\'hui. Vous découvrirez le dépaysement tout en vous sentant comme chez vous. <br>', '0628072354', 20, 'Derb Ziat, Fes', 'contact@msafar.ma', '520', 'http://msafar.ma/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', 'https://www.tiktok.com/fr/', '0628072354', 0, 100, 1000, 0, 'images/riads/riad-bab-andalous.jpg', '2022-04-26 13:54:24', '2023-03-02 16:06:33'),
(3, 309, 'antek', 'antek', 'Avec ses chambres équipées d\'une climatisation, d\'un minibar et d\'un réfrigérateur, le petit hôtel deviendra rapidement votre second chez vous. De plus, le petit hôtel offre un wi-fi gratuit.\nPendant votre séjour le Riad Antek vous fait profiter d\'une réception ouverte 24 heures sur 24, d\'un service de chambre et d\'une boutique. De plus, le Riad Antek est doté d\'un restaurant, offrant l\'endroit rêvé pour se relaxer après une journée bien remplie à arpenter les rues de Chefchaouen. Et avantage non négligeable, un parking dans la rue est disponible.', '0539986484', 16, '211,Rue Andaluz;Av Hassan I', 'riad.antek@gmail.com', NULL, NULL, 'https://www.facebook.com/riadantek.ma', NULL, NULL, '0714080382', 0, 300, 800, 1, NULL, '2023-03-16 17:25:20', '2023-03-21 11:32:35'),
(4, 326, 'Riad Ait Ben Haddou', 'riad-ait-ben-haddou', 'Le Riad Ait Ben haddou est un havre de paix et de calme d’une surface de 610m2 abritant 10 chambres et suites, chaque pièce est décorée avec attention. Le luxe de l’espace permet de préserver l’intimité de chacun de nos invités. La salle restaurant et terrasse sont utilisées au gré de la journée selon le souhait de chacun. Le solarium permet une détente pour aussi servir des repas et boissons s en face de L’atlas et de kasbah.\nNotre Riad Ait Ben haddou atypique grâce à sa lumière et son espace 610m2 pour seulement 10 chambres et suites vous offre le petit-déjeuner copieux tous les matins.\nChaque chambre bénéficie d’une climatisation/chauffage, d’une télévision, de wifi et d’une salle de bain privée.\nDécorées dans un savant mélange de styles traditionnel et contemporain', '0524886679', 53, 'ait ben haddou', 'riadaitbenhaddou@gmail.com', NULL, 'www.riadaitbenhaddou', NULL, NULL, NULL, '0667043858', 0, 360, 800, 1, NULL, '2023-05-09 10:35:48', '2023-05-09 10:53:39'),
(5, 340, 'Dar Souiri', 'dar-souiri', 'Dar Souiri vous propose des Riads luxueux localisés à Diabat avec une vue panoramique sur mer , aux meilleurs prix disponibles sur le marché.', '0660041772', 19, 'Bab Marrakech, Rue Ahl Agadir', 'zawahirrrhamza@gmail.com', NULL, NULL, NULL, NULL, NULL, '0660041772', 0, 400, 700, 1, NULL, '2023-06-15 13:18:45', '2023-06-16 13:12:23'),
(8, 345, 'Riad Jamal', 'riad-jamal', 'Situé à 20 minutes d\'Essaouira, en plein nature entourer d\'arbres arganier endroit très calme avec des chambre climatisé style berbère avec une sécurité totale. Parfait pour les familles ou groupes d’amis.', '0611767988', 19, 'Ounagha 25km route marrakech', 'riadjamal10msafar@gmail.com', NULL, NULL, 'https://www.facebook.com/profile.php?id=100042275333903', NULL, NULL, '0611767988', 0, 2000, 3000, 1, NULL, '2023-06-19 15:30:38', '2023-06-22 15:46:42'),
(9, 346, 'Riad Laaroussa', 'riad-laaroussa', 'In the heart of the Medina of Fez, Riad Laaroussa opens its doors for you to an exceptional place in a relaxed atmosphere. An immense 17th-century palace, 13 suites and rooms surround 2 beautiful courtyards with orange trees and a garden so that you can relive the splendor of Fez. A huge terrace, heated pool, a variety of spacious living areas, comfortable and warmly decorated and a caring staff are at your disposal to make your stay memorable. At Riad Laaroussa, you can also enjoy our spa with a private, authentic hammam and relaxing massages as well as enjoy quality Moroccan and international cuisine at the bistro on one of the terraces with breathtaking views.', '0674187639', 20, '3 derb bechara, Fes medina, Fes', 'contact@riad-laaroussa.com', NULL, NULL, 'facebook.com/riadlaaroussa', 'instagram.com/riadlaaroussa', NULL, '0674187639', 0, 1200, 3100, 1, NULL, '2023-06-21 13:10:23', '2023-06-21 13:28:49'),
(10, 355, 'Riad Marrakech', 'riad-marrakech', 'Riad Marrkech est un jolie Riad de 3 chambres à 10 mn de la place Jamaa El Fna et du Centre Ville.', '0672851502', 40, 'Al qaria assiyahia Marrakech', 'mbenzoukane@gmail.com', NULL, NULL, 'https://www.facebook.com/profile.php?id=100066579936983&locale=hi_IN', NULL, NULL, '0672851502', 0, 800, 800, 1, NULL, '2023-07-04 09:07:13', '2023-07-04 09:30:14'),
(11, 357, 'Chalet berbère', 'chalet-berbere', 'Ressourcez-vous dans ce logement inoubliable.\nDoté d\'un jardin, d\'un salon commun et d\'une terrasse, le Chalet Berbère propose un hébergement à Ida Ougourd avec une connexion Wi-Fi gratuite et une vue sur la piscine. Vous profiterez d\'une piscine privée et d\'un parking privé gratuit.\nCet appartement comprend 5 chambres, des télévision à écran plat, des coin repas et une cuisine.\nLe golf de Mogador se trouve à 11 km. L\'aéroport d\'Essaouira-Mogador, le plus proche, est implanté à\n4 km.', '0778362225', 19, 'Essaouira', 'Chaletberbere@gmail.com', NULL, 'Https://linktr.ee/complexechaletberbere', 'https://www.facebook.com/profile.php?id=100076976798639&mibextid=LQQJ4d', 'https://instagram.com/chaletberbere?igshid=Y2I2MzMwZWM3ZA==', 'https://www.tiktok.com/@chaletberbere?_t=8djUJPob0cv&_r=1', '0778362225', 0, 3500, 4500, 1, NULL, '2023-07-05 09:05:16', '2023-07-06 18:44:55'),
(12, 358, 'Villa \"Restinga Smir\"', 'villa', 'Villa située ; au complexe de Restinga Smir ; composée de 4 chambres à coucher ; 3 salles de bain ; 2 salons ; une grande cuisine bien équipée ; et une grande terrasse vue sur mer .\nle prix : 6000 dhs par nuit.', '0651816031', 77, 'complexe de Restinga Smir', 'aajaromar40@gmail.com', NULL, NULL, 'https://www.facebook.com/profile.php?id=100069197134164&locale=hi_IN', NULL, NULL, '0651816031', 0, 600, 600, 1, NULL, '2023-07-05 13:08:14', '2023-07-05 13:15:00'),
(13, 363, 'Villa Bahia Smir', 'villa-bahia-smir', 'Villa située ; au complexe de Bahia Smir ; pied dans l\'eau composée de 4 chambres à coucher ; 3 salles de bain ; 2 salons ; 1grande cuisine bien équipée ; une grande terrasse vue sur mer .\nle prix: 5500 dhs par nuit.', '0676627919', 42, 'Complexe Bahia Smir', 'aajaromar40@gmail.com', NULL, NULL, NULL, NULL, NULL, '0651816031', 0, 5500, 5500, 1, NULL, '2023-07-11 09:47:54', '2023-07-11 10:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `id_hotel`, `nom`, `nom_ar`, `avatar`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Parking', 'موقف للسيارات', 'images/services/bCiA3WeVVmqfQE1JYXfs9gmfD7v71gkMYQPC1Vb6.jpg', '2022-06-14 14:39:50', '2022-06-14 14:39:50'),
(2, NULL, 'Piscine', 'حمام سباحة', 'images/services/Ev36K3TdJSRqKoVxu7QlXZX38SOw39sZnnl0k0jS.jpg', '2022-06-14 14:40:20', '2022-06-14 14:40:20'),
(3, NULL, 'TV', 'التلفزيون', 'images/services/4zK4m3L73lAdfISDP5aTqtlf04FNJyar1Dp9kHTh.jpg', '2022-06-14 14:40:30', '2022-06-14 14:40:30'),
(4, NULL, 'WIFI', 'وايفي', 'images/services/4JrENYvKT7Q8FLunwS5AXFVEawksUsFCEUFjrLXg.jpg', '2022-06-14 14:40:38', '2022-06-14 14:40:38'),
(5, NULL, 'Bar', 'بار', 'images/services/CPDdyuJBLLUVhrzOIZ87v2HTHOnVpjLeZSQLzlAp.jpg', '2022-06-14 14:40:48', '2022-06-14 14:40:48'),
(6, NULL, 'Restaurant', 'مطعم', 'images/services/NRiCHTKWaHkMpBzgWmMWPIwC99nSt5gOk9mX32iC.jpg', '2022-06-14 14:40:58', '2022-06-14 14:40:58'),
(7, NULL, 'Salles de sport', 'صالات رياضية', 'images/services/MlHMpBaM7pPNIGfZjVpWdIEOJYxL5AOSn5fLR8Qa.jpg', '2022-06-14 14:41:11', '2022-06-14 14:41:11'),
(8, NULL, 'Petit-déjeuner inclus', 'الإفطار', 'images/services/I56qcwzBKqLw3dm17RsE42BIxNaB0YTMAafBUQL6.jpg', '2022-06-14 14:41:23', '2022-06-14 14:41:23'),
(9, NULL, 'SPA et centre de bien-être', 'SPA ومركز صحي', 'images/services/vwKtAIcGZionznjnMT2SEXdrCZqxaXNtFP8i3DO1.jpg', '2022-06-14 14:41:36', '2022-06-14 14:41:36'),
(10, NULL, 'Navette aéroport', 'خدمة النقل من/إلى المطار', 'images/services/dMlXoZphxQr6srss2fARCv8ZXCfk9bA8VZp7BzvC.jpg', '2022-06-14 14:41:53', '2022-06-14 14:41:53'),
(11, NULL, 'Réception', 'استقبال', 'images/services/HF9bWyLgu4WkwnHmUotpyKPUNa32QLEdWyd9fqG3.jpg', '2022-06-14 14:42:04', '2022-06-14 14:42:04'),
(12, NULL, 'Climatisation', 'مكيف هواء', 'images/services/MkoPjmkwZWFh4nCLFIHXG7QlrbcPEt5hHuwWCblv.jpg', '2022-06-14 14:42:15', '2022-06-14 14:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temoignages`
--

INSERT INTO `temoignages` (`id`, `user_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'said Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum? said', 'images/temoignages/VQyYl2SszSNzngkJUyL2W9zITqYbN0uHv9k07vd2.jpg', '2022-05-11 10:59:14', '2022-05-30 15:02:44'),
(2, 2, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/EOuVEUVBsFXbml3RVAyAQs2m9Dao7tNQS5hPpufa.jpg', '2022-05-11 12:11:04', '2022-05-11 12:11:04'),
(3, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/o7TtbqJKFTlwG9WmfAH1PrgQvXBKeJB15RXfgxoA.jpg', '2022-05-11 12:11:11', '2022-05-11 12:11:11'),
(4, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/UTsnvUvrQnjRRwGKk0kKqGzM428FfEDWgu5eOIoY.jpg', '2022-05-11 12:11:15', '2022-05-11 12:11:15'),
(5, NULL, 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit msafar?', 'images/temoignages/T72WdG2Stiu9w5lP0oJMmQB0HQ8H2KZhD9D3Cv6a.jpg', '2022-05-11 12:11:19', '2022-05-30 15:02:40'),
(6, NULL, 'Mohammed  Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum? said', NULL, '2022-05-30 15:07:01', '2022-05-30 15:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `type_activites`
--

CREATE TABLE `type_activites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_actv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_activite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_guide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_activites`
--

INSERT INTO `type_activites` (`id`, `activite`, `duree`, `prix_actv`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(1, 'L’excursion comprend : <br>\r\n•	Prise en charge aller-retour <br>\r\n•	Équipement de protection <br>\r\n•	Location de quad<br>\r\n•	Guide <br>\r\n•	Dîner<br>\r\n•	Eau minérale<br>\r\n•	Thé à la menthe fraiche<br>\r\n', '3H', '450 dhs', '1', NULL, NULL, NULL),
(2, 'Promenade à dos de chameau :<br>\r\n•	Prise en charge et retour à l\'hôtel <br>\r\n•	Guide local<br>\r\n•	Tour de chameau <br>\r\n•	Thé à la menthe  <br>', '2H', '350 dhs', NULL, NULL, NULL, NULL),
(3, 'Prise en charge à l\'hôtel ou au riad  <br> Guide officiel francophone. Visite de Marrakech', '4h', '350 Dhs par personne', '', '1', NULL, NULL),
(4, 'Said Prise en charge à l\'hôtel ou au riad <br>Guide officiel francophone.Visite de Marrakech', '7h', '650 Dhs par personne', '', '1', NULL, '2022-07-25 13:27:11'),
(5, 'Prise en charge à l\'hôtel ou au riad <br>\r\nGuide officiel francophone.\r\nVisite de Marrakech\r\n', '6h', '550 Dhs par personne', '', '1', NULL, NULL),
(6, 'Activite 2', '10', '3000', '6', NULL, '2022-07-05 09:00:01', '2022-07-05 09:00:01'),
(7, 'Activite 1', '5', '2500', '6', NULL, '2022-07-05 09:00:01', '2022-07-05 09:00:01'),
(8, 'Guide msafar act 2', '3 jours', '3600', 'undefined', NULL, '2022-07-05 09:38:41', '2022-07-05 09:38:41'),
(9, 'Guide msafar act 1', '1 jour', '1200', 'undefined', NULL, '2022-07-05 09:38:41', '2022-07-05 09:38:41'),
(16, 'Prise en charge et retour à l\'hôtels', '16h', '650', '2', NULL, '2022-07-22 12:39:28', '2022-10-17 08:18:48'),
(17, 'Prise en charge et retour à l\'hôtel , Randonnée à dos de chameau dans la palmeraie de Marrakech, Snack avec thé à la menthe marocain.', '3h', '350', '2', NULL, '2022-07-22 12:40:47', '2023-01-05 08:55:02'),
(22, 'activite 2', '2h', '360', '3', NULL, '2022-10-17 08:23:27', '2022-10-17 08:23:27'),
(24, 'activite 250', '5h', '60', NULL, '2', '2022-10-17 15:57:18', '2022-10-17 15:57:29'),
(25, 'ski', '1h', '150', '6', NULL, '2022-10-28 12:58:48', '2022-10-28 12:58:48'),
(26, 'NG', '5h', '100', NULL, '4', '2022-10-28 13:04:27', '2022-10-28 13:04:27'),
(27, 'activités', '2 heures / jour', '1500 Dh', NULL, '5', '2022-11-08 08:44:46', '2022-11-08 08:44:46'),
(28, 'Quads', '1 heure', '500', '3', NULL, '2023-01-20 13:45:51', '2023-02-03 10:53:30'),
(29, NULL, NULL, NULL, '4', NULL, '2023-04-04 09:19:19', '2023-04-04 09:19:19'),
(30, 'dertrttttttt', NULL, NULL, '4', NULL, '2023-04-04 09:19:35', '2023-04-04 09:19:35'),
(32, 'Agafay camel and show', NULL, '600', '5', NULL, '2023-06-23 08:38:34', '2023-06-23 09:01:54'),
(34, 'Imlil', 'includes  Transport / lunch / camel ride', '350', '5', NULL, '2023-06-23 08:40:11', '2023-06-23 08:58:36'),
(35, 'Ourika valley', 'includes transport with pick up from Marrakech', '150', '5', NULL, '2023-06-23 09:07:32', '2023-06-23 09:07:32'),
(36, 'Ouzoud falls', 'includes transport  Pick up/drop off 📍 Bateau activité', '250', '5', NULL, '2023-06-23 09:08:22', '2023-06-23 09:08:22'),
(37, 'Essaouira city  💙', 'day trip includes transport and free time', '250', '5', NULL, '2023-06-23 09:10:34', '2023-06-23 09:10:34'),
(38, 'Imlil 🏞️', 'Transport / lunch / camel ride', '350', '5', NULL, '2023-06-23 09:11:15', '2023-06-23 09:11:15'),
(39, 'Merzouga desert 3 days trip', 'Hotel first night Tente the second night Camel riding', '800', '5', NULL, '2023-06-23 09:12:08', '2023-06-23 09:12:08'),
(40, 'Zagoura desert 🏜️', 'undefined', '650', '5', NULL, '2023-06-23 09:12:39', '2023-06-23 09:12:39'),
(41, 'Agafay dinner and quad biking with show', 'undefined', '700', '5', NULL, '2023-06-23 09:13:11', '2023-06-23 09:13:11'),
(42, 'Sercuit', '3 jour', '1300', '8', NULL, '2023-06-23 19:49:50', '2023-06-23 19:49:50'),
(43, 'Quad', NULL, '300', '9', NULL, '2023-06-26 08:02:14', '2023-06-26 08:02:14'),
(44, 'Dromadaire', NULL, '200', '9', NULL, '2023-06-26 08:02:41', '2023-06-26 08:02:41'),
(45, 'montgolfière', NULL, '1400', '9', NULL, '2023-06-26 08:03:40', '2023-06-26 08:03:40'),
(47, 'Atelier sur place pour une personne', '2h', '250', '10', NULL, '2023-06-26 09:56:10', '2023-06-26 09:56:10'),
(48, 'Atelier organisé dans un hôtel, riad pour une personne', '2h', '500', '10', NULL, '2023-06-26 09:57:25', '2023-06-26 09:57:25'),
(49, 'Atelier organisé dans un hôtel, riad pour deux personnes', '2h', '900', '10', NULL, '2023-06-26 09:58:16', '2023-06-26 09:58:16'),
(50, 'Atelier organisé dans un hôtel, riad pour trois personnes', '2h', '1200', '10', NULL, '2023-06-26 09:58:42', '2023-06-26 09:58:42'),
(51, 'Atelier organisé dans un hôtel, riad pour quatre personnes', '2h', '1500', '10', NULL, '2023-06-26 09:59:02', '2023-06-26 09:59:02'),
(52, 'Atelier organisé dans un hôtel, riad pour cinq personnes', '2h', '1800', '10', NULL, '2023-06-26 09:59:24', '2023-06-26 09:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `type_chambres`
--

CREATE TABLE `type_chambres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_chambres`
--

INSERT INTO `type_chambres` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Chambre individuelle', NULL, NULL),
(2, 'Chambre double', NULL, NULL),
(3, 'Suite', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pseudo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `code_verification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verifier` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `nom`, `prenom`, `pseudo`, `name`, `email`, `avatar`, `type_service`, `email_verified_at`, `code_verification`, `is_verifier`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'elghanemy', 'saad', NULL, NULL, 'saad@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$6hdHJb1CsKcB3cYYsC4NyO8pg1irWAHXND1DIRms8vA4hRcCRKZcS', NULL, '2022-04-26 15:07:28', '2023-06-09 07:49:17'),
(3, 1, 'Amraoui', 'saad', NULL, 'saad amraoui', 'saad.amraoui@msafar.ma', 'images/profil/FRE7EwT0niUiBuxVCAhjtpQuHKvpyyKs3dZ3SImj.jpg', NULL, NULL, NULL, 1, '$2y$10$f2cqh6JmNt4SpnqAN1wry.RJ7hDoYTInmnnXg2HBFslajwel9wlfq', NULL, '2022-05-11 12:09:29', '2022-07-21 15:52:29'),
(5, 1, 'ahlam', 'tarfaoui', NULL, 'ahlam tarfaoui', 'ahlam .tarfaoui@msafar.ma', NULL, NULL, NULL, NULL, 1, '$2y$10$O9YF2UU9p4HIjeRAZ.KP5.IATThxFCOoY1MGZclUafdUtAkkzpZ1S', NULL, '2022-05-11 12:10:20', '2022-05-11 12:10:20'),
(6, 1, 'mehdi ', 'jounaidi', NULL, 'mehdi jounaidi', 'm.jounaidi@directinvest.ma', NULL, 'guide', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-19 10:38:08', '2022-05-19 10:38:08'),
(8, 1, 'elghanemy', 'saad', NULL, NULL, 'elghanemysaad@gmail.com', 'images/profil/gvkG1CiHkovdmxPv1dSEOlnbNXWkF3xBGzrL1dYq.jpg', NULL, NULL, NULL, 1, '$2y$10$7V9OsSL4/KTvRfudKNOx4uy2syD.kI3FKm68DdB/jKMr/JS56k08G', NULL, '2022-05-19 12:26:08', '2023-01-05 12:48:33'),
(14, 1, 'saad', 'saad', NULL, 'saad elghanemy', 'saad.test@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$JeyyNR09dWginBIDVuFwUuMxQz1rBnnkbnijkjQgkgVpSXCLzDXCO', NULL, '2022-05-20 12:32:25', '2022-05-20 12:32:25'),
(17, 1, 'Dardari', 'Said', NULL, 's.dardari@directinvest.ma', 's.dardari@directinvest.ma', 'images/profil/9VTPcsArsyjvrVWvnPbljfQrCfKEKBbzcFVNIbff.jpg', 'hotel', NULL, NULL, 1, '$2y$10$qGBkxaFuAROs.oyzopKVjemj6a71stRgFPLicB93ceHLftLRq9W4y', NULL, '2022-05-20 15:24:01', '2022-10-31 14:30:34'),
(29, 2, 'Ahlam', 'Tarfaoui', NULL, NULL, 'a.tarfaoui@directinvest.ma', NULL, 'null', '2023-01-05 13:54:56', NULL, 1, '$2y$10$71XHC8N9VxjREHc016CrbuXAEc9jAv83KartzPNS2IGVManVSo7ma', NULL, '2022-05-31 08:06:18', '2023-02-06 10:46:10'),
(31, 1, 'toubit', 'khadija', NULL, 'khadijatoubit', 'khadijatoubit35@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$v535scFvAaLO0IL7oMixH.L.YjcEDUTTGkBUeL4Yf2hQcNVGxtl3e', NULL, '2022-06-10 08:31:05', '2022-06-10 08:31:05'),
(32, 1, 'elhachimi', 'maria', NULL, 'mariaelhachimi', 'mariaelhachimi28@gmail.com', 'images/profil/AE4dSB4X48LOT0NihFUrNZW7CZ5yB0bDs9EgmBpb.jpg', NULL, NULL, NULL, 1, '$2y$10$KN7GTBB5Rs63nfVpqnkODugX.RlnHX94S0.AygYjUGQVyWyJC.bOS', NULL, '2022-06-10 08:44:21', '2022-07-20 09:04:39'),
(33, 1, 'bensouda', 'marwa', NULL, 'marwabensouda', 'marwabensouda49@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$EiEMm7YQyfDyXZ4dqYm0LOnaT8ryVjHzcHetBhghZIjSfHpDSmhfG', NULL, '2022-06-10 08:47:38', '2022-07-20 08:49:21'),
(34, 1, 'maher', 'taoufik', NULL, 'taoufikmaher', 'taoufikmaher25@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$A99K.GS97tfpZSlpip1VFOsYd5hSvaC/VLBiiNGoFvNZg33Bfql2G', NULL, '2022-06-10 08:53:02', '2022-06-10 08:53:02'),
(116, 2, 'user', 'hotel1', NULL, 'hotel1', 'userhotel1@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$yPhFzyDi4MtWB1P9q41uxuqzj62yBpFrKBVxjC2NKnzPLYahVl77O', NULL, '2022-05-11 12:09:00', '2023-03-17 14:42:14'),
(117, 2, 'user', 'hotel2', NULL, 'hotel2', 'userhotel2@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$6lOBdKZnHwBTGGr9cAyM4uBUK6YDjqYP9B8t/LGU5eNXWiPPBzsq6', NULL, '2022-05-11 12:09:00', '2023-03-17 15:13:08'),
(118, 2, 'user', 'hotel4', NULL, 'hotel4', 'userhotel4@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(119, 2, 'user', 'hotel3', NULL, 'hotel3', 'userhotel3@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(120, 2, 'user', 'riad1', NULL, 'riad1', 'userriad1@gmail.com', NULL, 'riad', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(121, 2, 'user', 'riad2', NULL, 'riad2', 'userriad2@gmail.com', NULL, 'riad', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(123, 2, 'user', 'maison1', NULL, 'maison1', 'usermaison1@gmail.com', NULL, 'maison-hote', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(124, 2, 'user', 'maison2', NULL, 'maison2', 'usermaison2@gmail.com', NULL, 'maison-hote', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(125, 2, 'user', 'restaurant2', NULL, 'restaurant2', 'userrestaurant2@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(126, 2, 'user', 'restaurant1', NULL, 'restaurant1', 'userrestaurant1@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(127, 2, 'user', 'activite1', NULL, 'activite1', 'useractivite1@gmail.com', NULL, 'activite', NULL, NULL, 1, '$2y$10$HmGfgNl4EunIqt9tFkO0Q.HieV6Y3BR77q2tl/YxWGwLCnkzUW44m', NULL, '2022-05-11 12:09:00', '2023-01-05 08:59:03'),
(128, 2, 'user', 'activite2', NULL, 'activite2', 'useractivite2@gmail.com', NULL, 'activite', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(129, 2, 'user', 'guide2', NULL, 'guide2', 'userguide2@gmail.com', NULL, 'guide', NULL, NULL, 1, '$2y$10$2nKYfrH5jv2XdRDvSkLCcOGTnnYHc3QMWP1agB.3MAxEL2coBAKd2', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(141, 2, 'Omar', 'belhoucine', NULL, NULL, 'uytro@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$kYN5l4a1BK90YfnM3W17uec6Rhw94sTL0j2PXzKfKRGlMzfx.qLvW', NULL, '2022-08-08 09:24:06', '2022-08-08 09:24:06'),
(142, 1, 'Almoutaqi', 'Ahmed', NULL, 'Ahmedmarrakech', 'ahmedmarrakech@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$qQ4QvDHX1XD4ZCMwXqeQiepZ8Swe55eTB/Fq6FjR1UEcHI4fpTU8S', NULL, '2022-08-08 19:51:34', '2022-08-08 19:51:34'),
(143, 2, 'toubit', 'khadija', NULL, NULL, 'khadijatoubit36@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$fJq67ie1rowSYgHVBAQXsOIWkmgcoXs9Vupsm79RlAxaWvQiydOXa', NULL, '2022-08-10 08:55:32', '2022-08-10 08:55:32'),
(145, 2, 'brik', 'salah', NULL, NULL, 'briks@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$XNdRxmS4l4CukRmUD.nsweXthOSV4ty9F0hmepbNQZQkvcHM1weXW', NULL, '2022-08-12 15:05:44', '2022-08-12 15:05:44'),
(146, 2, 'aatt', 'aatt', NULL, NULL, 'abcdtt@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$2jy26v1iv1NAYJ4Fu817j.RxSt497SFK/WKJ03ld21yscX1Cq7LAW', NULL, '2022-08-12 15:17:07', '2022-10-19 08:50:41'),
(147, 2, 'saad', 'am', NULL, NULL, 'amraouisaad6@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$0qNJXGCFThTs1mjysuqtvO8arVOU85FJHR2Qdypa3LlHGn7hHYej6', NULL, '2022-08-29 14:38:54', '2022-08-29 14:38:54'),
(148, 2, 'said', 'msafar', NULL, NULL, 'said@msafar.ma', NULL, 'hotel', NULL, NULL, 1, '$2y$10$tKurAbsqKmvWEDJecf81G.NHlmaFYw6.i4kIU8QEOPJ/zoYsDflCi', NULL, '2022-08-29 15:04:07', '2022-08-29 15:04:07'),
(149, 2, 'majd', 'yassir', NULL, NULL, 'majd@msafar.ma', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$Pnzm.lR8bMerhE46CBxZv.hZuZxjIUC65AAhyHyMHH55QY3hDMZWu', NULL, '2022-08-31 15:03:22', '2022-08-31 15:03:22'),
(150, 2, 'ahmed', 'manar', NULL, NULL, 'manar@msafar.ma', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$/yXlLMGZmcQ24Ld/.5a.VeeFO86XAasr74N4yVt.APkXOC6sWrCX.', NULL, '2022-08-31 15:44:42', '2022-08-31 15:44:42'),
(152, 2, 'aa', 'aaa', NULL, NULL, 'aaa@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$cIjg.a6QMqmJr0VJGkuBvOxhla/GJU8LVJvKRtW5KOLExwttxg9Ne', NULL, '2022-09-01 08:43:50', '2022-09-01 09:18:50'),
(158, 2, 'Atmani88', 'Said88', NULL, NULL, 'admin@directinvest.ma', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$w4B3.RrC.3rVRut5v3Z3COmTV3eA/6KwiCzHcCicVR/zgCV7Ub7FO', NULL, '2022-10-11 08:54:44', '2022-10-19 08:40:35'),
(162, 2, 'secar', 'antoni', NULL, NULL, 'cesar@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$8OYPBBQ3nJE7nSGRWMxBqewSIilwJBlwt7gS2O1tj4LzgooWS/Vm2', NULL, '2022-10-19 09:29:26', '2022-10-19 09:30:10'),
(164, 1, 'Daoudi', 'Fatima Zahra', NULL, 'FZ.Daoudi', 'fatimazahradao@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$kiElQUmaqVfnexwEu18PmOwnYC426prG8JY1z0rJZZPTbdNAtSlJS', NULL, '2022-10-27 15:30:12', '2022-10-27 15:30:12'),
(165, 1, 'Tarfaoui', 'ahlam', NULL, 'ahlam tarfaoui', 'ahlamtarfaoui@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$wPrJkbLd8P1vS2L4Nqd8ZeCh1SMXRr/ul8k0gQvBNDk0Wh3stPa3y', NULL, '2022-10-27 15:31:20', '2022-10-27 15:31:20'),
(167, 1, NULL, NULL, NULL, NULL, 'souhaila.lakouani@gmail.com', 'images/profil/DpWh82L3BaYuWoEcICO4mDckaphYeVnD6x9KDvuF.jpg', NULL, NULL, NULL, 1, '$2y$10$yCMQYO0dyT7cXlRy2HMq1ukry2V7cZtNjV3lDsdb9uespeWVys0Uq', NULL, '2022-10-27 15:33:05', '2022-11-10 14:09:07'),
(168, 1, 'JOUNAIDI', 'MEHDI', NULL, 'MEHDI JOUNAIDI', 'mehdijounaidi@gmail.com', 'images/profil/CsuOVej16L91RcCrfDLSQHr6wbruO05hd432jTWs.jpg', NULL, NULL, NULL, 1, '$2y$10$Td3heKPFA..9oU.N1lp0YegGatP5ItSk2SILHhvl1LSSsF4EEGNSi', NULL, '2022-10-27 15:37:07', '2022-10-27 15:37:54'),
(169, 2, 'Test', 'Test', NULL, NULL, 'Test@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$27S/.BzVAcipT51pfixAx.WVdYzxTZopQnyLhx0vWReG/WtnljLxu', NULL, '2022-10-28 08:20:27', '2022-10-28 08:20:44'),
(170, 2, 'Test', 'Manal', NULL, NULL, 'test.pro.msafar@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$RMLvRmPaFrFKSaQdRfuasuKugrKHUBNfaHGhmmz2FfayVPxOIz9mC', NULL, '2022-10-28 08:30:42', '2022-10-28 08:51:56'),
(171, 2, 'test.pro@gmail.com', 'test.pro@gmail.com', NULL, NULL, 'test.pro@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$47vyMIOOgcoh701DZcXXQ.1nMEjeSxBI5WMzkAR/wI7Gh8Je9VasW', NULL, '2022-10-28 08:54:04', '2022-10-28 08:54:10'),
(172, 1, 'Eljarim', 'Manal', NULL, 'Manal.elj', 'eljarimanal@gmail.com', 'images/profil/5K94W5c9tR9bvLzRtAs5teVBkLWrZusHpFCZgKi2.png', NULL, NULL, NULL, 1, '$2y$10$Wio6fjFrnJ3E51c2bTwVuu.T9q5CgkY8tXLr6LO51QMz6gDetlRKC', NULL, '2022-10-28 09:19:17', '2022-10-28 10:13:05'),
(173, 2, 'tesstt', 'testt', NULL, NULL, 'testtt@gmail.com', NULL, 'activite', NULL, NULL, 1, '$2y$10$J8V2VK1rom7qyL9TS.JImu8nDNAIuDxV6fcMdVFrnJn4uxun94rRG', NULL, '2022-10-28 12:54:49', '2022-10-28 12:54:49'),
(174, 2, 'fh', 'bfg', NULL, NULL, 'gfgf@gmail.com', NULL, 'guide', NULL, NULL, 1, '$2y$10$8teG5nqoIXZFCkxBVdZMJOCwt5/oCrBz2IbfsWZQzTkOf7GpsBvqq', NULL, '2022-10-28 13:03:41', '2022-10-28 13:06:00'),
(175, 1, 'amraoui', 'saad', NULL, 'SA3D', 's.amraoui@directinvest.ma', 'images/profil/1jgjbGSdNjYl5wjQm0jkIfg7Ye5dfhSuBshRJp5m.jpg', NULL, NULL, NULL, 1, '$2y$10$U4h7y1HbobTPUxt7pts6HObaaWj9pr4XhwyWpYh7roAWLD4cILRBW', NULL, '2022-10-28 14:31:07', '2023-07-06 10:01:07'),
(179, 1, 'test', 'test', NULL, 'Aperiam assumenda sed.', 'test2022@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$PEYWJmhYn7nOsJNiZOzsU.1uUllY6rwO2nUrf7yKMEUaSN9mrH.Sy', NULL, '2022-10-31 15:04:18', '2022-10-31 15:04:18'),
(180, 1, 'Tarik', 'fohami', NULL, 'Vel ratione et porro esse qui et aliquam perspiciatis.', 'test70@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$vbTPn3jxh7bJCwPfvSAoB.xr8bFo6HUbuS9bZLKz9xBz9qRytUJru', NULL, '2022-10-31 15:12:24', '2022-10-31 15:12:24'),
(181, 1, 'Quam dolore', 'Aut est', NULL, 'Quas quia nemo deserunt dolores iste consequuntur modi suscipit maiores.', 'testuser@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$eMWfnCI3K8vPCrn9RtjpqegZ/3ctN6GHIdP.7PNfJPZu56BTe9av.', NULL, '2022-10-31 15:14:08', '2022-10-31 15:14:08'),
(182, 2, 'Aut harum', 'Eligendi', NULL, NULL, 'voyager2023@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$9/4FNQ0oIEN92yEzP97cR.YiwzfSkFAa8SimjikuNoN05NouqbkAm', NULL, '2022-11-01 13:50:50', '2022-11-01 13:50:50'),
(183, 2, 'Eius aperiam sit tempore molestiae ut.', 'Minima a fugit.', NULL, NULL, 'test77@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$HkxN7dCpbILNIrB3mp7OIeWUJw0IOgSq4bmm.zGChOpPlfNTafYqC', NULL, '2022-11-01 13:53:48', '2022-11-01 13:53:48'),
(184, 1, 'Quas', 'Dolores', NULL, 'Voluptate velit', 'test2009@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$nHhYmIb.g1Mu5C6TOhIzLeLOkfFUxPXuAocm8yAwiMFlOWT.jGLbC', NULL, '2022-11-01 15:06:56', '2022-11-01 15:06:56'),
(187, 2, 'Ut consequatur', 'Deleniti cumque', NULL, NULL, 'test2002@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$ZGLT.pnzz/qdmWsUKHtja.ZzQ1cR1g.nQ6rhYOX0c/2WYMVVPBghS', NULL, '2022-11-04 08:12:56', '2022-11-04 08:12:56'),
(188, 1, 'testo', 'testo', NULL, 'testo', 'testo@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$E3Y2Jk9T7QvARGz6e.Xg/uX3E6J6LP24eG/C.rdQ0eUMs8t1pIF6G', NULL, '2022-11-07 13:21:12', '2022-11-07 13:21:12'),
(190, 2, 'Manal', 'Raji', NULL, NULL, 'manal.raji@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$7grF1SGjKRYL/W33h9sSmeC4q7kEtNtHcg1DlIoVNM4.jl5V7dl2G', NULL, '2022-11-08 14:02:54', '2022-11-08 14:02:54'),
(191, 2, 'ia', 'Isam', NULL, NULL, 'isam.ia@gmail.com', NULL, 'activite', NULL, NULL, 1, '$2y$10$MaKqzWvxZooue3.VizOrSeSlSWM9GOKrk1qdpWCDYr1c0qHbrNCh.', NULL, '2022-11-09 08:46:47', '2022-11-09 08:46:47'),
(192, 2, 'amali', 'wafae', NULL, NULL, 'amali.wafa@gmail.com', NULL, 'restaurant', NULL, NULL, 1, '$2y$10$5o.RbdUbbGQjjNK6PPTrXutoFZnZcwCFh8HgU0eJb0iQrsrkUf1/C', NULL, '2022-11-09 09:03:07', '2022-11-09 09:03:07'),
(193, 2, 'rahil', 'rabab', NULL, NULL, 'rahil.rabab@gmail.com', NULL, 'riad', NULL, NULL, 1, '$2y$10$cod1bZgfjV3dF8d.8CwwzegjUDzXgiR3QGIwClypltcLErkqm0//u', NULL, '2022-11-09 09:38:11', '2022-11-09 09:38:11'),
(194, 2, 'salmi', 'Siham', NULL, NULL, 'salmi.siham@gmail.com', NULL, 'maison-hote', NULL, NULL, 1, '$2y$10$GTuW.6A.fMerz9rqYfIwnOGowFg7v9oWKnsTqCWqvNs8cozKPUzg6', NULL, '2022-11-09 09:46:12', '2022-11-09 09:46:12'),
(195, 2, 'alia', 'sanae', NULL, NULL, 'alia.sanae@gmail.com', NULL, 'hotel', NULL, NULL, 1, '$2y$10$iocUdiGbLt/wetFHeMN/Oe.jE4sexTFTOq9QRMSl2KH6NScQdSk7y', NULL, '2022-11-09 13:33:24', '2022-11-09 13:33:24'),
(196, 1, 'Test', 'di', NULL, 'Testdi', 'test.di@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$RVgX/WZrcCKkM8hZr47gX.mdWd3oHms1FcdbO4ZDmwYli.7sJfJ8y', NULL, '2022-11-10 12:26:48', '2022-11-10 12:26:48'),
(197, 1, 'test', 'di', NULL, 'testdi', 'testdi@gmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$K9oGBYBAqpFyglD2pfiddezDuWwazDg/lSoxOqN2IoQdWpN..vOH.', NULL, '2022-11-10 12:27:48', '2022-11-10 12:27:48'),
(198, 2, 'test', 'testeur', NULL, NULL, 'test2023@gmail.com', NULL, 'activite', NULL, NULL, 1, '$2y$10$o6oz6wR2HNLkWN8e3MK/0uhwvgy.1VbdSdWwbdFdLoNH5Qf.SOkeG', NULL, '2022-11-10 12:36:49', '2022-11-21 07:57:27'),
(201, 1, 'saad', 'saad', 'pseudo test', 'saad saad', 'saad.sabir.ss2@gmail.com', 'images/profil/tNXK2GiDHtz5ChUqOugpOCmVTTDw17IBHFVFkBVx.webp', NULL, NULL, NULL, 1, '$2y$10$PWTonE//ZHVqxZvNoYW2N.fBf3XfO2AHaVC/4D1mYMHAaKV.z0h/G', NULL, '2022-11-14 15:24:19', '2022-11-15 08:26:24'),
(203, 1, 'dardari', 'said', 'said', 'said dardari', 'dardari.said@gmail.com', NULL, NULL, '2022-11-16 10:41:15', '3008834', 1, '$2y$10$ukps.mMVVwbpQlBxZSbeT.mG/pdTQytxuSjSu5nvDBoL3921osirm', NULL, '2022-11-16 10:34:15', '2022-11-16 10:41:15'),
(205, 1, 'dardari', 'said', 'said', 'said dardari', 'dardari.said2@gmail.com', NULL, NULL, '2022-11-16 12:52:42', '6362273', 1, '$2y$10$8pPDuMdF/8YP8BoIMP//5.ti8L.ReQDMp.xssXuxtDjkGxgdwXQoy', NULL, '2022-11-16 12:48:31', '2022-11-16 12:52:42'),
(227, 2, 'saad', 'saad', NULL, NULL, 's.elghanemy2@directinvest.ma', NULL, 'hotel', '2022-12-02 13:29:06', '4609619', 1, '$2y$10$3EytoYCqTNEF8ag4KfZfleR1bJM1IIAKm1s2NK9D10cNGvfx/zVwW', NULL, '2022-12-02 13:27:43', '2022-12-02 13:29:06'),
(229, 1, 'Kiass', 'Amina', 'Amina', 'Kiass Amina', 'aminakiass32@gmail.com', NULL, NULL, '2023-01-03 17:48:25', '9935850', 1, '$2y$10$BKsPda0YlMf6.BBdZb5Lb.BhYFS6odD918KRTka9ClwQ55ICEz0sa', NULL, '2023-01-03 17:46:26', '2023-01-03 17:48:25'),
(230, 1, 'Nakir', 'Omar', 'Omar', 'Nakir Omar', 'nakiromar5@gmail.com', NULL, NULL, '2023-01-03 17:59:31', '7137083', 1, '$2y$10$qdf88u4HZS6GQX0k6hcO/e4CnfNhdR5q.gMCPzupOyEYO0BPomSYa', NULL, '2023-01-03 17:58:59', '2023-01-03 17:59:31'),
(231, 1, 'Mesbah', 'Fahd', 'Fahd', 'Mesbah Fahd', 'fahdmesbah956@gmail.com', NULL, NULL, '2023-01-03 18:18:11', '1585741', 1, '$2y$10$gTGDbiPQtcz0wS5inoTo9e7Wzc8j1VU5r19bD5WUcA2SEoyWgtiL.', NULL, '2023-01-03 18:16:13', '2023-01-03 18:18:11'),
(232, 1, 'Zaer', 'Mounia', 'Mounia', 'Zaer Mounia', 'mouniazaer@gmail.com', NULL, NULL, '2023-01-03 18:49:14', '8036579', 1, '$2y$10$c8dsBxksTq282yH9dzSwpOXCrKlEsdGOwEQMXL017qHTK483HM7uq', NULL, '2023-01-03 18:46:32', '2023-01-03 18:49:14'),
(233, 1, 'Anass', 'Alami', 'Anass Alami', 'Anass Alami', 'anasalamimpr@gmail.com', NULL, NULL, '2023-01-03 20:48:08', '9623120', 1, '$2y$10$pJub6mOhCs.W2.Y2/1l76uKiID/bvbXwc6yw27C5WjhYg8bF04pjm', NULL, '2023-01-03 20:47:34', '2023-01-03 20:48:08'),
(234, 1, 'Filali', 'Nawal', 'Filali Nawal', 'Filali Nawal', 'filalin648@gmail.com', 'images/profil/geuXyq9q1zXFuW1ZdRjXQq72LXW3KR2tTGPPR2ZP.jpg', NULL, '2023-01-05 18:15:29', '7370407', 1, '$2y$10$iQNWsdwx5JYjJP/pMtpXb.ceK6pWCh0ysg4Z2.j42.remni1bOAQ2', NULL, '2023-01-04 18:26:52', '2023-01-16 19:00:10'),
(235, 1, 'Zaki', 'Loubna', 'Zaki Loubna', 'Zaki Loubna', 'zakiloubna366@gmail.com', 'images/profil/b8cbfgyi5TdriYIfM3GXUQAL5SNR2QLoLnsCdXvY.jpg', NULL, '2023-01-05 18:17:40', '8699865', 1, '$2y$10$KhyZaQUcAHKx6dXa5VlqYe7f/MfidJz96l70LfrWjVenB9aZXTOe6', NULL, '2023-01-04 18:59:01', '2023-01-09 18:44:08'),
(238, 1, 'toubite', 'khadija', 'khadijat', 'khadija', 'immobil.agence@gmail.com', NULL, NULL, NULL, '8068205', 0, '$2y$10$4OnJJv82b47E5tCEN1.Cp.4mTKBxqqPJaQy26XALb5f7TG0PnUUOq', NULL, '2023-01-05 09:04:23', '2023-01-05 09:04:23'),
(239, 1, 'tt', 'sara', 'sara', 'sara12', 'hyatna.dicom@gmail.com', 'images/profil/wsQBjgwJ5Mwbp5w6VpKmSLqoqIXtHvBlWns4WlUh.jpg', NULL, '2023-01-05 09:40:06', '7379029', 1, '$2y$10$ba8QxzGwXkTQ9OwhXmo83.B7QNYEWZ6.Srem9NI1XEuVZLzBxi2Ky', NULL, '2023-01-05 09:37:41', '2023-01-05 09:42:32'),
(240, 2, 'test 01', 'test 01', NULL, NULL, 'kifachcannabis@gmail.com', NULL, 'hotel', '2023-01-05 09:53:28', '5861400', 1, '$2y$10$kfS29qyrJK0DYIPf5d7D5.6Eq9I690jQMUQ4PrbZY5rmjZdmTubWe', NULL, '2023-01-05 09:51:28', '2023-01-05 09:53:28'),
(242, 2, 'tes', 'tzts', NULL, NULL, 'aaaaaa12', NULL, 'restaurant', NULL, '6458779', 0, '$2y$10$.0mm.XSWFVBCeNgyIjowGOzscrtHWJ0gD35p3nePdQSjq6DDIyauS', NULL, '2023-01-05 10:30:01', '2023-01-05 10:30:01'),
(244, 1, 'Lola', NULL, NULL, NULL, 'Trikilaila@gmail.com', 'images/profil/gf8sVxZ3jRhtl4KAzAhetpFfJNOA8vzqAOs0QRS6.jpg', NULL, '2023-01-05 13:22:05', '1536777', 1, '$2y$10$gzvN6RTHZ9KYv9R4SNobuuSwCyrBR.A.r6MRaSRQgpC3I1uh475Zy', NULL, '2023-01-05 13:19:59', '2023-03-21 11:40:20'),
(245, 1, 'Fernandez', 'Bruno', 'Fernandez Bruno', 'Fernandez Bruno', 'bf482665@gmail.com', 'images/profil/ElD01jmK0DTsAfFkM9p2avT7IKZB3dxTxYCEjH0G.jpg', NULL, '2023-01-05 18:28:52', '2854860', 1, '$2y$10$DtTntUEJ8gfrp8zPpVNqJeXCMNJRSW0F9.XM.6r.xj5ZINNQYK52K', NULL, '2023-01-05 18:28:08', '2023-01-05 19:06:29'),
(246, 1, 'Malki', 'Fadwa', 'Malki Fadwa', 'Malki Fadwa', 'malkifadwa71@gmail.com', 'images/profil/LefU2Svuaw99tBB7bHRgeuPR9PS7Gi95Ll2ZJm6K.jpg', NULL, '2023-01-05 19:51:26', '4841233', 1, '$2y$10$EwyM1b8YwN1lck3Gaj4siOrRSqvH6asCTIRnx3tb7fgDB/oZzUuHK', NULL, '2023-01-05 19:50:43', '2023-01-08 17:23:18'),
(247, 1, 'Diabi', 'Hassan', 'Diabi Hassan', 'Diabi Hassan', 'diabi6046@gmail.com', NULL, NULL, '2023-01-05 20:43:58', '3566465', 1, '$2y$10$wpqevNi.qfaG.gfIOy1hDujiUxSFdBQqOJk4hawFPFre6aF/7wU.G', NULL, '2023-01-05 20:43:18', '2023-01-05 20:43:58'),
(250, 3, 'saad', 'saad', 'saad', NULL, 's.elghanemy@directinvest.ma', 'images/profil/sDFNkPB2KaVWoDjquPWwV7NJTWtxoYSIYFgkn0Gz.jpg', NULL, '2023-01-06 10:08:58', '6555755', 1, '$2y$10$7V9OsSL4/KTvRfudKNOx4uy2syD.kI3FKm68DdB/jKMr/JS56k08G', NULL, '2023-01-06 10:07:29', '2023-06-05 09:26:44'),
(251, 2, 'Brik', 'Salah', NULL, NULL, 'briksalah321@gmail.com', NULL, 'hotel', '2023-01-18 10:34:57', '8889107', 1, '$2y$10$vH689C9zQGtsxqnSJ9HJPOO1gpUakUjXfaJD.HpX96Qwob/8P9SaG', NULL, '2023-01-18 10:31:46', '2023-01-18 10:34:57'),
(253, 2, 'buggy', 'quad', NULL, NULL, 'info@buggy-maroc.com', NULL, 'activite', NULL, '4728122', 0, '$2y$10$MaNgSYD.Yw70Sma9K90/6.TJbIPVLrNGtr1CiSidJl14SdVvFgHoG', NULL, '2023-01-19 16:22:29', '2023-01-19 16:22:29'),
(254, 2, 'Abdolkarim', 'Boudraa', NULL, NULL, 'karimtilou1996@gmail.com', NULL, 'guide', NULL, '8439289', 0, '$2y$10$R763R9bVWWXpu93ddxMgxem/ceexeVaNLNnEGMeW1wR.bffUAvMOC', NULL, '2023-01-20 12:56:32', '2023-01-20 12:56:32'),
(255, 2, 'Abdolkarim', 'Boudraa', NULL, NULL, 'Boudraatilou1996@gmail.com', NULL, 'guide', NULL, '4777189', 0, '$2y$10$MzolTN3XRND7Wy7/4Bz0R.VpsGmEAs5Fp9vDG9RHu155w/N7D9PBO', NULL, '2023-01-20 12:58:17', '2023-01-20 12:58:17'),
(256, 2, 'Karim', 'Boudraa', NULL, NULL, 'karimmerzouga1995@gmail.com', NULL, 'activite', '2023-01-20 13:42:24', '1878714', 1, '$2y$10$pBC9LZRQBWd.Odg5HXkb8uq1prJmSodnGEGfO.EKJk2R4nXlbU8v.', NULL, '2023-01-20 13:41:28', '2023-01-20 13:42:24'),
(257, 3, 'Tarfaoui', 'Ahlam', NULL, NULL, 'a.tarfaoui@msafar.ma', NULL, NULL, NULL, NULL, 0, '$2y$10$2jwga9Sdp.g9GsGOLnEZ9OU7ogtAXJ/SLeRd7JPEEzQ1P07/Jfxoa', NULL, '2023-02-06 10:42:22', '2023-02-06 10:42:22'),
(258, 3, 'Triki', 'Leila', NULL, NULL, 'l.triki@msafar.ma', NULL, NULL, NULL, NULL, 0, '$2y$10$2jwga9Sdp.g9GsGOLnEZ9OU7ogtAXJ/SLeRd7JPEEzQ1P07/Jfxoa', NULL, '2023-02-06 10:42:22', '2023-02-06 10:42:22'),
(259, 1, 'rajid', 'aymen', 'aymenrj', NULL, 'aymenrj7@gmail.com', NULL, NULL, NULL, '2260635', 0, '$2y$10$CwNx3AowbBc1rumGV3d3Mu2P63HK6a2DLsOUpCO/kjIjbXluZtcf6', NULL, '2023-02-09 08:19:39', '2023-02-09 08:19:39'),
(260, 1, 'rajid', 'aymen', 'aymenrj', NULL, 'aymenrj9@gmail.com', NULL, NULL, NULL, '2388556', 0, '$2y$10$Td84A2DUSHWS0RYPmIMUj.klQx7iFFkxhqFvXwT1meLbVacQgo54a', NULL, '2023-02-09 08:26:44', '2023-02-09 08:26:44'),
(261, 1, 'rajid', 'aymen', 'aumenrj', NULL, 'rajidaymen1@gmail.com', 'images/profil/d7NPEd3tW9YMRwbcI7rCc58AviePmV82arWOOU4L.jpg', NULL, '2023-02-09 08:32:50', '9037347', 1, '$2y$10$99VoUVSk1oJHnkCfqOTxuu5k7r6L0DC4z/7HF2xjWMdwL1toVv/JS', NULL, '2023-02-09 08:31:47', '2023-02-09 09:03:19'),
(263, 2, 'test', 'test', NULL, NULL, 'test+1@gmail.com', NULL, 'guide', NULL, '8855139', 0, '$2y$10$nDa3iXa8TR0XnmexO6keIeE8qS9.yAimwMU1w.X1ZKVy1ZTDVJsvK', NULL, '2023-02-13 07:56:34', '2023-02-13 07:56:34'),
(264, 2, 'tamil', 'ahmed', NULL, NULL, 'hotfitup@gmail.com', NULL, 'riad', NULL, '9041556', 0, '$2y$10$mZ6SIK22YTkSvGvopRb3geXeqeCtBaZEJAgVNp/i80.F.9lnfZbwW', NULL, '2023-02-28 16:18:38', '2023-02-28 16:18:38'),
(265, 2, 'tamil', 'ahmed', NULL, NULL, 'h.rafapri@gmail.com', NULL, 'riad', NULL, '1364958', 0, '$2y$10$ayIKk/NMq64fWnaT7P2fG.uq92Rge.CtEhj/42qw9WsOTnh5ExTl.', NULL, '2023-02-28 16:20:08', '2023-02-28 16:20:08'),
(268, 2, 'Hassan', 'Lahcen', NULL, NULL, 'lahcen65@hotmail.com', NULL, 'activite', NULL, '3531415', 0, '$2y$10$ZhdfSH1vkxmdoU/hN.shRucyNNUHyxpuT7l3Rvza5hzHUsVsO5yS2', NULL, '2023-03-04 11:41:13', '2023-03-04 11:41:13'),
(269, 2, 'Hassan', 'Lahcen', NULL, NULL, 'adoutaghazout@gmail.com', NULL, 'activite', NULL, '3805684', 0, '$2y$10$YRclTUSYje1Vg.JoytRrye6YI8PsV9ur4In8u3/2vth/higw5O0Qu', NULL, '2023-03-04 11:43:56', '2023-03-04 11:43:56'),
(270, 2, 'Rayan', 'Mohamed', NULL, NULL, 'chaouenchams@gmail.com', NULL, 'hotel', '2023-03-22 15:28:41', '3410553', 1, '$2y$10$ZSNhauNtVqnquLf56cwilOfERVTLwHf9ZO5KSRY1gtuWgqwo35BtK', NULL, '2023-03-06 18:25:44', '2023-03-22 14:40:33'),
(288, 2, 'yrou', 'tawfik', NULL, NULL, 'hoteljibalchaouen@gmail.com', NULL, 'hotel', '2023-03-15 08:29:47', '5407824', 1, '$2y$10$/c.g1dbA33idmxEOvSMLTeBThQFn2oKakKI069DSgKoJR8JSOVYnW', NULL, '2023-03-08 09:11:02', '2023-03-22 15:32:42'),
(290, 1, 'cheknan', 'youness', 'youness', NULL, 'younesschawni.123@gmail.com', NULL, NULL, NULL, '5901573', 0, '$2y$10$BItyi8p4ZXDO3d0Q7do/eOQHEFX3ANIe2Ozzh3tYSLAZU2eWe5l5m', NULL, '2023-03-13 08:58:13', '2023-03-13 08:58:13'),
(291, 2, 'Mohamed', 'Mohamed', NULL, NULL, 'hotel-loubar@hotmail.com', NULL, 'hotel', '2023-03-16 14:53:17', '8061167', 1, '$2y$10$qWG9/l7NTgku7Z8g70pl1eDJArPoji7T0AZLw4A60OkeZtzYYogF.', NULL, '2023-03-13 09:15:48', '2023-03-20 08:41:54'),
(292, 3, 'commercial', 'commercial', 'commercial', NULL, 'commercial@msafar.ma', NULL, NULL, '2023-01-06 10:08:58', '6555751', 1, '$2y$10$6hdHJb1CsKcB3cYYsC4NyO8pg1irWAHXND1DIRms8vA4hRcCRKZcS', NULL, '2023-03-13 10:07:29', '2023-01-06 10:10:42'),
(293, 2, 'Akbi', 'Nourredine', NULL, NULL, 'casalindachaouen@yahoo.com', NULL, 'hotel', '2023-03-15 08:48:12', '7431731', 1, '$2y$10$w/eIn7iHNhaMUhfckIBhR.JcaTlsMEKbvGWzl1X8xawmpghpxo47y', NULL, '2023-03-14 16:47:53', '2023-03-16 14:15:18'),
(294, 2, 'Marouane', 'Rachid', NULL, NULL, 'wadadamaisonrurale@gmail.com', NULL, 'maison-hote', '2023-03-15 08:28:39', '9849625', 1, '$2y$10$TTl.362L.VPgOJsxlXGMNu5mf0rPvgd0oR5FqECddSXjl/kcWkyRe', NULL, '2023-03-14 16:57:25', '2023-03-20 11:45:41'),
(308, 2, 'Achraf', 'Baghlal', NULL, NULL, 'hajar.baghlal@gmail.com', NULL, 'maison-hote', '2023-03-16 14:53:01', '3434190', 1, '$2y$10$T.pz67jQzg2.q7.6eO3SG.w0AiYYav99Q2OEvITfjg18DXg14OrkS', NULL, '2023-03-16 08:02:23', '2023-04-06 18:33:15'),
(309, 2, 'Boughalad', 'Mustapha', NULL, NULL, 'riad.antek@gmail.com', NULL, 'riad', '2023-03-16 17:21:00', '3988895', 1, '$2y$10$AV9WX0SDeH5qjO0gnzNSkekIIcHKOAX9J1ZWGP7bidDqKkbFD3kUa', NULL, '2023-03-16 17:19:53', '2023-03-20 11:34:19'),
(311, 1, 'Taoussi', 'Mouad', NULL, NULL, 'mouadtaoussi0@gmail.com', 'images/profil/RmP9LNEiXU6049cOqDWh9azhdmjXKiJHKior8kWk.png', NULL, '2023-03-17 16:05:50', '8563871', 1, '$2y$10$HgogoyeqNjxo33aywmq9b.Y3RrmUJ3ARpmLZyAXdpBQ7JCtupuyJi', NULL, '2023-03-17 16:04:48', '2023-03-20 08:30:27'),
(313, 2, 'Rayan', 'Mohamed', NULL, NULL, 'casafamiliaguest@gmail.com', NULL, 'hotel', '2023-03-22 09:34:50', '6979948', 1, '$2y$10$yfgCiPnZVyZNGmc8u/PyFO6ApHExnoBTA2POeXm1ezhZ2wwN8daUO', NULL, '2023-03-21 09:19:20', '2023-03-21 09:26:08'),
(314, 2, 'Rayan', 'Mohamed', NULL, NULL, 'book@casaperleta.com', NULL, 'hotel', '2023-03-22 09:34:27', '3385123', 1, '$2y$10$gWORJ8nKPISffiahwir2c.zgsvK3qvOhyfPmSNSzzjfnV0xg/wCga', NULL, '2023-03-21 09:25:27', '2023-03-21 09:25:27'),
(315, 2, 'Rayan', 'Mohamed', NULL, NULL, 'puertaazulchaouen@gmail.com', NULL, 'hotel', '2023-03-22 09:34:23', '3139914', 1, '$2y$10$CQ4aYgik.7HPHGA2w5ugius/02xvu1bhI2o/GSs8Q7cSqp9NWvr.K', NULL, '2023-03-21 09:37:17', '2023-03-21 09:37:17'),
(316, 2, 'Elmghouchi', 'Mohamed', NULL, NULL, 'med.elmghouchi@gmail.com', NULL, 'maison-hote', '2023-03-22 15:30:19', '8315531', 1, '$2y$10$r44CKXqEtsNhdOs15GuME.PyJdxCU5OYFDiZXmrYCXfVS9aiTZXNK', NULL, '2023-03-22 14:59:26', '2023-03-22 14:59:26'),
(317, 2, 'Assasi', 'Elias', NULL, NULL, 'casaeliaschaouenmar@gmail.com', NULL, 'maison-hote', '2023-03-22 15:30:05', '8942091', 1, '$2y$10$HutoH3VXCF0.WDxqsPUXeecbGWZFCXsVliJt5EPoHPN/0VZmMpPJm', NULL, '2023-03-22 15:06:25', '2023-03-22 15:06:25'),
(320, 2, 'Aliti', 'Soufian', NULL, NULL, 'soufianaliti77@gmail.com', NULL, 'hotel', '2023-03-23 13:04:56', NULL, 1, '$2y$10$Vuy.bGn6KWxYuCPogxDp2ub1isczhMqPcmJTW3ViGBZsr6h5zdtbO', NULL, '2023-03-23 11:05:05', '2023-03-23 11:05:05'),
(321, 2, 'LAGHDAS', 'Mohamed Said', NULL, NULL, 'akamedsayd@gmail.com', NULL, 'guide', '2023-03-27 15:32:43', '6420985', 1, '$2y$10$Uk2Ffhl2nN.wFh4SAgf1YewzrQ6MBty3FEqle.1rWfXDQ0IFAowb6', NULL, '2023-03-27 15:31:56', '2023-03-27 15:32:43'),
(322, 2, 'ES2', 'ttriki2', NULL, NULL, 'es2ttriki@gmail.com', NULL, 'activite', '2023-04-04 09:15:18', '8660773', 1, '$2y$10$PSWY53vccIKVKlMMocd/5.InzKxbZIF7Ve6yTZLdgW7wpXx8GXmS6', NULL, '2023-04-04 09:14:32', '2023-04-04 09:25:31'),
(323, 2, 'Hellouli', 'Mohamed', NULL, NULL, 'contact@safanatravels.com', NULL, 'activite', NULL, '4766258', 0, '$2y$10$NoH0xf4wAvtOjsZ1XF5II.ECeOW0iajjD8KrU3VKxd.7RZFf4Sdla', NULL, '2023-04-08 19:28:37', '2023-04-08 19:28:37'),
(324, 2, 'Baraouze', 'El Hassan', NULL, NULL, 'fadmabaraouze@gmail.com', NULL, 'maison-hote', '2023-04-29 09:47:36', '5175943', 1, '$2y$10$RQI09i/SiBYJHLQWQmSDoeMT48.ZZH73MsvDis5Mzb0m7dSAp5G8.', NULL, '2023-04-29 09:46:48', '2023-04-29 09:47:36'),
(325, 2, 'Ighmoure', 'Mouhamed', NULL, NULL, 'giterogoultemoha@gmail.com', NULL, 'maison-hote', '2023-04-30 16:41:54', '7675956', 1, '$2y$10$RzoTPBoQCcdxQQALEO766eVDWB2z7rmoixRObgOy4FjU2RYHmAswm', NULL, '2023-04-30 16:39:16', '2023-04-30 16:41:54'),
(326, 2, 'BRAHIM', 'AIT MOUSSA', NULL, NULL, 'riadaitbenhaddou@gmail.com', NULL, 'riad', '2023-05-09 10:33:09', '4395788', 1, '$2y$10$xIAVs3.rNeCeIdyaKe7QY.SezQmTKEMBGC4XYvA0h7u59VplCHnGK', NULL, '2023-05-09 10:32:17', '2023-05-09 10:33:09'),
(327, 2, 'Arjan', 'Ibrahim', NULL, NULL, 'aubergebassou@yahoo.fr', NULL, 'maison-hote', '2023-05-09 15:17:22', '7031437', 1, '$2y$10$0roBTJRWpsnU1u3DAEotE.81BHRBocT3iW2DpUjdEdGacJEoTqZAG', NULL, '2023-05-09 14:09:51', '2023-05-09 14:09:51'),
(328, 2, 'Saidi', 'Yayha', NULL, NULL, 'yahyasaidi90@gmail.com', NULL, 'maison-hote', '2023-05-09 15:18:04', '2776272', 1, '$2y$10$eHMn/dheJKxDqDc8Z1JFIOmOzW.abqlw1mL0OZnoXh./.aC/19iSi', NULL, '2023-05-09 14:14:30', '2023-05-09 14:28:51'),
(329, 2, 'Benaissa', 'Youssef', NULL, NULL, 'contact@adazen-lodge.com', NULL, 'maison-hote', '2023-05-11 14:47:40', '7455852', 1, '$2y$10$vsJYVNoi0p0.NhzpGdkEf.2L..1qxP/thHBNSn0xV1Q80X3mU2lby', NULL, '2023-05-11 13:42:45', '2023-05-11 14:47:40'),
(330, 2, 'Benaissa', 'Tifa', NULL, NULL, 'tifabenaissa@gmail.com', NULL, 'maison-hote', '2023-05-11 14:27:59', '7071082', 1, '$2y$10$gvvHYllVDm4a..XB6BtXDOTj/4kGVytTtuovw1DFxxPXHVORmjiVG', NULL, '2023-05-11 14:27:29', '2023-05-11 14:27:59'),
(331, 2, 'Elghazouani', 'Ahmed', NULL, NULL, 'dartimitar@gmail.com', NULL, 'maison-hote', '2023-05-15 20:11:18', '3925203', 1, '$2y$10$6mCHABwo1RFeedHJKi6/7eBNZnxkIpNkCRXRobh5a6OLsU7VCEAOq', NULL, '2023-05-15 20:09:57', '2023-05-15 20:11:18'),
(333, 2, 'touichar', 'mohamed', NULL, NULL, 'mohamedtouichar@gmail.com', NULL, 'hotel', '2023-06-08 13:49:43', '9839974', 1, '$2y$10$qkLf9munP.cYnT9AIXUctuwZ8tmbVIEhQRSGMC3TCiiZ6pGSk8q9G', NULL, '2023-06-08 13:48:27', '2023-06-08 13:49:43'),
(334, 2, 'bourabaa', 'fadwa', NULL, NULL, 'f.bourabaa@msafar.ma', NULL, 'hotel', '2023-06-08 15:18:32', '1567892', 1, '$2y$10$4rar7Ljp9mFzq2GVrkbjfuPR.Oo858gpI.Zq5eFz66oMMjbj0qF9a', NULL, '2023-06-08 15:15:47', '2023-06-08 15:18:32'),
(335, 1, 'ASSIME', 'HAMZA', NULL, NULL, 'h.assime@directinvest.ma', NULL, NULL, NULL, '5639548', 1, '$2y$10$VqvgkJfk/T.0unryqIQCYeK3W1yqv/plU3kJgEYcabWAGRr.VoFGe', NULL, '2023-06-09 07:59:12', '2023-06-13 14:03:32'),
(336, 1, 'Boufdil', 'Abdelouahed', 'Voyage Abdlouahed', NULL, 'boufdilabdlouhd64@gmail.com', 'images/profil/MNIuUAcMpS1ayud5EEASZqzl5o9eE59xGGKsiHRh.png', NULL, '2023-06-13 10:47:22', '9332308', 1, '$2y$10$zGBB6rPvoluOSvDrLhToxui1yfp4YbI/WbDdCx1ePe2TkX6.mK9B.', NULL, '2023-06-13 09:47:14', '2023-06-13 10:50:23'),
(337, 1, 'Boufdil', 'Mohssin', 'Voyage Abdlouahed', NULL, 'Boufdilmohssin657@gmail.com', NULL, NULL, NULL, '8007008', 0, '$2y$10$UWqf5wINtMWg7zVrz1IY3.7UVviEjxUN0j4CgxbFMw5HiKaORtA2S', NULL, '2023-06-13 10:16:07', '2023-06-13 10:16:07'),
(338, 2, 'Yousurf', 'House', NULL, NULL, 'yousurfessaouira@gmail.com', NULL, 'hotel', '2023-06-13 14:12:18', '5410521', 1, '$2y$10$cG5VY9PGkBstIq572WeMF.RMYGlIHsWrdhRNiQ6ldw.3eurdC0QLO', NULL, '2023-06-13 13:29:42', '2023-06-13 14:12:18'),
(339, 2, 'Bendriss', 'Nadia', NULL, NULL, 'dar.nadia.bendriss@gmail.com', NULL, 'maison-hote', '2023-06-13 14:12:48', '4888213', 1, '$2y$10$uXVr4bfixe.WkYzhSVIWROCmSTbQ0KcKGLkQCFLL/14VbINAjmF.6', NULL, '2023-06-13 13:35:48', '2023-06-13 14:12:48'),
(340, 2, 'Zawahir', 'Hamza', NULL, NULL, 'zawahirrrhamza@gmail.com', NULL, 'riad', NULL, '7193768', 1, '$2y$10$tjc3ebLzuCcaY.AU26I4AOwp/QrL7AtR0D3dNbM2j8t028zfNrZxW', NULL, '2023-06-14 14:01:04', '2023-06-14 14:01:04'),
(341, 2, 'Afif', 'Redwan', NULL, NULL, 'redwanafif23@gmail.com', NULL, 'hotel', '2023-06-15 13:42:50', '4353562', 1, '$2y$10$bTPymz08C8k5b2YKFn9lIeEiTqfU7TAZt2oOUF9Nit6adIdmyBbUu', NULL, '2023-06-15 13:39:13', '2023-06-15 13:42:50'),
(342, 2, 'Riad', 'Jamal', NULL, NULL, 'boughrara48@gmail.com', NULL, 'riad', '2023-06-16 14:30:01', '6035076', 1, '$2y$10$Xnak4vTc7rGMAL.KoZB.VOuVp4fSIIiO0tv5LlXuACoAPT5bQ3COa', NULL, '2023-06-16 14:28:58', '2023-06-19 13:59:45'),
(343, 2, 'HARRAFA', 'HICHAM', NULL, NULL, 'chbanate.riad@gmail.com', NULL, 'riad', '2023-06-16 19:10:51', '8679063', 1, '$2y$10$LBIqpK486XjB/QBZz9cGOuVD2xA9AE90VDM5LVgklOPPif1eMUA3S', NULL, '2023-06-16 19:10:24', '2023-06-16 19:10:51'),
(344, 2, 'Ennachi', 'Anouar', NULL, NULL, 'contact@riad-laaroussa.com', NULL, 'riad', '2023-06-19 08:27:27', '1144907', 1, '$2y$10$CjuMmuGl1VuWIGm6bAd5Se6MIUzI9AvMlpjgFC4shKfhlF4u/cFMm', NULL, '2023-06-19 08:15:50', '2023-06-19 08:27:27'),
(345, 2, 'Riad', 'Jamal', NULL, NULL, 'riadjamal10msafar@gmail.com', NULL, 'riad', '2023-06-19 15:25:44', '8512961', 1, '$2y$10$Mq5eXW1QxQaSQfdqBnHpKu5yWEyqlgrSpv7mm6aMtNSieuiScKPvC', NULL, '2023-06-19 15:24:58', '2023-06-19 15:25:44'),
(346, 2, 'Ennachi', 'Anwar', NULL, NULL, 'riadlaaroussa123@gmail.com', NULL, 'riad', '2023-06-21 13:07:36', '9197882', 1, '$2y$10$4GraOzqBMy9QOCLxxslfveVpSdm8GHMgVZMikHNB.kB62JeNIlKCW', NULL, '2023-06-21 13:06:54', '2023-06-21 13:07:36'),
(347, 2, 'Marrakech', 'Day Trips', NULL, NULL, 'ilyassissoughaine7@gmail.com', NULL, 'activite', NULL, '9919776', 0, '$2y$10$vFQDb9FcpAk2er32RYUSvuavHIz9EZo6FGBmgYTupdbWA.5I2B1um', NULL, '2023-06-22 14:53:47', '2023-06-22 14:53:47'),
(348, 2, 'Marrakech', 'Day Trip', NULL, NULL, 'marrakechdaytripsmsafar@gmail.com', NULL, 'activite', '2023-06-22 15:56:27', '6743200', 1, '$2y$10$PqA0xoyly.tYdBLKmK5/UeW1.kMLfP9YyHTBDw502ZX8PanYv5Doe', NULL, '2023-06-22 15:55:58', '2023-06-22 15:56:27'),
(349, 2, 'Atelier', 'Lamsaty', NULL, NULL, 'contact@lamsatyhandmade.com', NULL, 'activite', '2023-06-23 16:51:09', '2616407', 1, '$2y$10$mmQZRmbIwxZAdgjQ8ym2v.EAUy5kNZJFi2QawaxszAKuoYUgZV2Eq', NULL, '2023-06-23 14:45:04', '2023-06-23 14:45:04'),
(350, 2, 'Laghfiri', 'Mohamed', NULL, NULL, 'voyageluxurymaroc@gmail.com', NULL, 'activite', '2023-06-23 14:56:46', '3691847', 1, '$2y$10$VFAZ0hmsjhYE9TN9KNemoO97ZJW9Cgex7AZv.qsUyPb7iSPFOovYa', NULL, '2023-06-23 14:55:59', '2023-06-23 14:56:46'),
(351, 2, 'Marrakech', 'Leisure', NULL, NULL, 'marrakechleisure@gmail.com', NULL, 'activite', '2023-06-23 16:51:45', '4808462', 1, '$2y$10$9oL.KqJAAX2XyHI/MkQ/eepmN5oN1uJNRpVc2dyQNUKSGhdYfP8c.', NULL, '2023-06-23 14:59:34', '2023-06-23 14:59:34'),
(352, 2, 'Youssef', 'Suissy', NULL, NULL, 'getyourguide53@gmail.com', NULL, 'activite', '2023-06-23 19:45:38', '2253600', 1, '$2y$10$oAarldp5jFHeU1hwHAQz0.rBr7XamcF.q6u6HMlk5Tgw5UGRZFPxe', NULL, '2023-06-23 19:44:32', '2023-06-23 19:45:38'),
(353, 2, 'Daw', 'Ahmed', NULL, NULL, 'ahmed.alhomani889@gmail.com', NULL, 'maison-hote', '2023-06-27 14:08:32', '2395276', 1, '$2y$10$9pCw/I2q4z/5ggdLq8i1b.ktDNfpl6aotgs4x1YJZRR1uYGkh/gDO', NULL, '2023-06-27 14:07:12', '2023-06-27 14:08:32'),
(354, 2, 'Tourchi', 'Hicham', NULL, NULL, 'hichamtourchi@gmail.com', NULL, 'maison-hote', '2023-06-27 14:56:05', '2166144', 1, '$2y$10$6/0DzJxILW4KPIwHG4YHR.DQlTNLGHcMkYNgqirrILHl16KYuD6rO', NULL, '2023-06-27 14:54:41', '2023-06-27 14:56:05'),
(355, 2, 'Riad', 'Marrakech', NULL, NULL, 'mbenzoukane@gmail.com', NULL, 'riad', '2023-07-04 09:55:43', '6745916', 1, '$2y$10$G9xMo3cLxe1BktT8i3njxuyr169U.M0KvDOGEXNzRjUSAAuaEX4Ny', NULL, '2023-07-04 08:35:45', '2023-07-04 08:35:45'),
(356, 2, 'Sable Beach', 'House', NULL, NULL, 'sablehouseteam@gmail.com', NULL, 'hotel', '2023-07-04 14:52:07', '3189843', 1, '$2y$10$lA6mrd.tvVRw5LXl28YRLONi85Vd40.JZ9bdEEQyhjQ0tv2L.hZwy', NULL, '2023-07-04 13:45:17', '2023-07-04 13:45:17'),
(357, 2, 'Berbère', 'Chalet', NULL, NULL, 'chaletberbere@gmail.com', NULL, 'riad', '2023-07-05 09:01:45', '5786575', 1, '$2y$10$NvCCX6ilP/Plx96GNUZB7OR30uKc.3jFRhIxy1ggg6jpNsEttYUyu', NULL, '2023-07-05 09:01:12', '2023-07-05 09:01:45'),
(358, 2, 'Villa Bahia', 'Smir', NULL, NULL, 'aajaromar40@gmail.com', NULL, 'riad', '2023-07-05 11:45:07', '6769174', 1, '$2y$10$tAbDH6CrUJy27SDXZ7e3Oe9FKtgU2eFvYTwKO3/iBlIvBH8CpNuZm', NULL, '2023-07-05 10:04:48', '2023-07-05 10:04:48'),
(359, 2, 'Green', 'House', NULL, NULL, 'Greengoimmo@gmail.com', NULL, 'maison-hote', '2023-07-05 15:45:41', '3027372', 1, '$2y$10$x6tYS1PI7i1zudDVMsognOn/5Hle8RxXNP9pClWfVT1ZhdPXb1w.W', NULL, '2023-07-05 14:23:42', '2023-07-05 14:23:42'),
(360, 2, 'The Little', 'Kasbah', NULL, NULL, 'thelittlekasbah@gmail.com', NULL, 'maison-hote', '2023-07-05 15:45:30', '3146996', 1, '$2y$10$muWUwKArDK/sXNdHqL1VZOJxz0xYliiUoGOADfZhRMiUgUKXkJpdi', NULL, '2023-07-05 14:38:53', '2023-07-05 14:38:53'),
(361, 2, 'test', 'test', NULL, NULL, 'saad1@gmail.com', NULL, 'guide', '2023-07-10 09:40:34', '8278252', 1, '$2y$10$8vawt0eJgTsCdStZjrQU1eSza8sOr0pdpvtnesufUhL08yecq9Beu', NULL, '2023-07-10 08:38:56', '2023-07-10 08:38:56'),
(362, 1, 'Hanane', 'Hhr', 'Hhr', NULL, 'hananehouari@gmail.com', NULL, NULL, '2023-07-10 10:08:01', '1677960', 1, '$2y$10$0ZLGgd8qoNve0lfxTH8Jb.qEkFZl2ncf9K/G6Z.mMH1wBYxYJ7YNO', NULL, '2023-07-10 10:07:21', '2023-07-10 10:08:01'),
(363, 2, 'Atlas', 'Immobilier', NULL, NULL, 'atlasimmobilier123@gmail.com', NULL, 'riad', '2023-07-11 09:26:41', '7619644', 1, '$2y$10$72Uwx/WKPkIDkbtdICQU3enwDnttDDMuu7CvvZcG4lp9t2KRbPP2K', NULL, '2023-07-10 13:40:49', '2023-07-11 09:26:41'),
(364, 2, 'Hotel Blue City', 'Chefchaouen', NULL, NULL, 'Chefchaouen.boutique.hotels@gmail.com', NULL, 'hotel', '2023-07-11 16:46:40', '3240830', 1, '$2y$10$WLPoP8RLbBtmXyhOR1MKjujr47xxICC9Qy6AxULxtfLAhVqbWXq1S', NULL, '2023-07-11 13:53:19', '2023-07-11 13:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_restaurant` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_lieux` int(11) DEFAULT NULL,
  `id_gastronomie` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `id_hotel`, `id_riad`, `id_restaurant`, `id_maison_hote`, `id_guide`, `id_activite`, `id_lieux`, `id_gastronomie`, `created_at`, `updated_at`) VALUES
(38, 6, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-07-15 16:07:21', '2022-07-15 16:07:21'),
(39, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 16:07:36', '2022-07-15 16:07:36'),
(40, 27, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 07:36:20', '2022-07-18 07:36:20'),
(41, 34, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 12:40:58', '2022-07-18 12:40:58'),
(43, 3, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-07-20 09:42:12', '2022-07-20 09:42:12'),
(51, 3, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:01:26', '2022-07-20 13:01:26'),
(54, 32, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:28:02', '2022-07-20 13:28:02'),
(55, 32, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:28:12', '2022-07-20 13:28:12'),
(56, 32, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:28:21', '2022-07-20 13:28:21'),
(57, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:28:32', '2022-07-20 13:28:32'),
(58, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:30:28', '2022-07-20 13:30:28'),
(59, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:30:44', '2022-07-20 13:30:44'),
(60, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:30:49', '2022-07-20 13:30:49'),
(61, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:31:29', '2022-07-20 13:31:29'),
(62, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 13:32:35', '2022-07-20 13:32:35'),
(68, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 08:49:17', '2022-07-21 08:49:17'),
(75, 127, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, '2022-08-08 10:20:38', '2022-08-08 10:20:38'),
(76, 35, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 10:59:14', '2022-08-10 10:59:14'),
(79, 17, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 10:02:04', '2022-10-20 10:02:04'),
(88, 183, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 15:03:35', '2022-11-01 15:03:35'),
(89, 36, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 08:23:14', '2022-11-03 08:23:14'),
(95, 222, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 07:31:48', '2022-11-21 07:31:48'),
(98, 227, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-02 13:37:47', '2022-12-02 13:37:47'),
(99, 308, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, '2023-04-06 18:42:38', '2023-04-06 18:42:38'),
(100, 250, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 13:36:58', '2023-05-26 13:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'voyageur', NULL, NULL),
(2, 'professionnel', '2022-05-25 09:39:59', NULL),
(3, 'admin', '2022-05-25 09:41:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `ville`, `ville_ar`, `created_at`, `updated_at`) VALUES
(1, 'Agadir ', 'أكادير', NULL, NULL),
(2, 'Aït Baha ', 'أيت باها', NULL, NULL),
(3, 'Akchour', 'أقشور', NULL, NULL),
(4, 'Al Hoceïma ', 'الحسيمة', NULL, NULL),
(5, 'Arfoud ', 'أرفود', NULL, NULL),
(6, 'Assilah', 'أصيلة', NULL, NULL),
(7, 'Azemmour ', 'أزمور', NULL, NULL),
(8, 'Azilal ', 'أزيلال', NULL, NULL),
(9, 'Azrou ', 'أزرو', NULL, NULL),
(10, 'Ben Slimane ', 'بن سليمان', NULL, NULL),
(11, 'Beni Mellal', 'بني ملال', NULL, NULL),
(12, 'Berkane ', 'بركان', NULL, NULL),
(13, 'Bin el Ouidane', 'بن الويدان', NULL, NULL),
(14, 'Bouznika ', 'بوزنيقة', NULL, NULL),
(15, 'Casablanca ', 'الدار البيضاء', NULL, NULL),
(16, 'Chefchaouen ', 'شفشاون', NULL, NULL),
(17, 'El Jadida  ', 'الجديدة', NULL, NULL),
(18, 'Errachidia ', 'الرشيدية', NULL, NULL),
(19, 'Essaouira ', 'الصويرة', NULL, NULL),
(20, 'Fès ', 'فاس', NULL, NULL),
(21, 'Figuig ', 'فݣيݣ ', NULL, NULL),
(22, 'Fnideq ', 'الفنيدق', NULL, NULL),
(23, 'Guelmim ', 'كلميم', NULL, NULL),
(24, 'Guercif', 'جرسيف', NULL, NULL),
(25, 'Ifrane ', 'إفران', NULL, NULL),
(26, 'Imelchil', 'إميلشيل', NULL, NULL),
(27, 'Imouzzer ', 'إيموزار', NULL, NULL),
(28, 'Imsouane', 'إمسوان', NULL, NULL),
(29, 'Jebha', 'جبهة', NULL, NULL),
(30, 'Kalaat M\'Gouna', 'قلعة مكونة', NULL, NULL),
(31, 'Kasba Tadla ', 'قصبة تادلة', NULL, NULL),
(32, 'Kénitra ', 'القنيطرة', NULL, NULL),
(33, 'Kétama', 'كتامة', NULL, NULL),
(34, 'Khémisset ', 'الخميسات', NULL, NULL),
(35, 'Khénifra', 'خنيفرة', NULL, NULL),
(36, 'Khouribga ', 'خريبكة', NULL, NULL),
(37, 'Ksar El Kébir ', 'القصر الكبير', NULL, NULL),
(38, 'ksar sghir', 'القصر الصغير', NULL, NULL),
(39, 'Larache ', 'العرائش', NULL, NULL),
(40, 'Marrakech ', 'مراكش', NULL, NULL),
(41, 'Martil ', 'مارتيل ', NULL, NULL),
(42, 'M\'Diq', 'مضيق', NULL, NULL),
(43, 'Mehdia ', 'المهدية', NULL, NULL),
(44, 'Meknès', 'مكناس', NULL, NULL),
(45, 'Merzouga', 'مرزوكة', NULL, NULL),
(46, 'Michlifen', 'ميشليفين', NULL, NULL),
(47, 'Midelt', 'ميدلت', NULL, NULL),
(48, 'Mohammédia ', 'المحمدية', NULL, NULL),
(49, 'Moulay Bousselham', 'مولاي بوسلهام', NULL, NULL),
(50, 'Moulay Brahim ', 'مولاي ابراهيم', NULL, NULL),
(51, 'Nador', 'الناظور', NULL, NULL),
(52, 'Oualidia ', 'الوليدية', NULL, NULL),
(53, 'Ouarzazate ', 'ورزازات', NULL, NULL),
(54, 'Oued Zem ', 'وادي زم', NULL, NULL),
(55, 'Ouezzane ', 'وزان', NULL, NULL),
(56, 'Oujda ', 'وجدة', NULL, NULL),
(57, 'Oukaimeden', 'أوكيمدن', NULL, NULL),
(58, 'Rabat', 'الرباط', NULL, NULL),
(59, 'Safi ', 'آسفي', NULL, NULL),
(60, 'Saïdia ', 'السعيدية', NULL, NULL),
(61, 'Salé ', 'سلا', NULL, NULL),
(62, 'Sefrou ', 'صفرو', NULL, NULL),
(63, 'Sidi Bouzid ', 'سيدي بوزيد', NULL, NULL),
(64, 'Sidi Ifni', 'سيدي إفني', NULL, NULL),
(65, 'Sidi Rahhal ', 'سيدي رحال', NULL, NULL),
(66, 'Tafraout ', 'تافراوت', NULL, NULL),
(67, 'Taghazout', 'تغازوت', NULL, NULL),
(68, 'Takarkoust', 'تاكاركوست', NULL, NULL),
(69, 'Tanger', 'طنجة', NULL, NULL),
(70, 'Tan-Tan ', 'طانطان ', NULL, NULL),
(71, 'Taounate', 'تاونات', NULL, NULL),
(72, 'Taourirt', 'تاوريرت', NULL, NULL),
(73, 'Tarfaya ', 'طرفاية', NULL, NULL),
(74, 'Taroudant ', 'تارودانت', NULL, NULL),
(75, 'Tata ', 'طاطا', NULL, NULL),
(76, 'Taza ', 'تازة', NULL, NULL),
(77, 'Tétouan', 'تطوان', NULL, NULL),
(78, 'Tinghir ', 'تنغير', NULL, NULL),
(79, 'Tiznit ', 'تزنيت', NULL, NULL),
(80, 'Zagora ', 'زاكورة', NULL, NULL),
(81, 'Dakhla', 'الداخلة', NULL, NULL),
(82, 'Laâyoune', 'العيون', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activites_slug_unique` (`slug`);

--
-- Indexes for table `activite_images`
--
ALTER TABLE `activite_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie_menu`
--
ALTER TABLE `categorie_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chambres`
--
ALTER TABLE `chambres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_partages`
--
ALTER TABLE `comment_partages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evenements_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gastronomies`
--
ALTER TABLE `gastronomies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gastronomies_slug_unique` (`slug`);

--
-- Indexes for table `guides_touristiques`
--
ALTER TABLE `guides_touristiques`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guides_touristiques_slug_unique` (`slug`);

--
-- Indexes for table `hebergement_services`
--
ALTER TABLE `hebergement_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `langues_langue_unique` (`langue`);

--
-- Indexes for table `langue_guides`
--
ALTER TABLE `langue_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lieux`
--
ALTER TABLE `lieux`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lieux_slug_unique` (`slug`);

--
-- Indexes for table `ligne_menus`
--
ALTER TABLE `ligne_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maison_hotes`
--
ALTER TABLE `maison_hotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partages`
--
ALTER TABLE `partages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservezs`
--
ALTER TABLE `reservezs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`);

--
-- Indexes for table `riads`
--
ALTER TABLE `riads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_activites`
--
ALTER TABLE `type_activites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_chambres`
--
ALTER TABLE `type_chambres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `activite_images`
--
ALTER TABLE `activite_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `categorie_menu`
--
ALTER TABLE `categorie_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chambres`
--
ALTER TABLE `chambres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `comment_partages`
--
ALTER TABLE `comment_partages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gastronomies`
--
ALTER TABLE `gastronomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `guides_touristiques`
--
ALTER TABLE `guides_touristiques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hebergement_services`
--
ALTER TABLE `hebergement_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `langue_guides`
--
ALTER TABLE `langue_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `lieux`
--
ALTER TABLE `lieux`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `ligne_menus`
--
ALTER TABLE `ligne_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `maison_hotes`
--
ALTER TABLE `maison_hotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `partages`
--
ALTER TABLE `partages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1362;

--
-- AUTO_INCREMENT for table `reservezs`
--
ALTER TABLE `reservezs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riads`
--
ALTER TABLE `riads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_activites`
--
ALTER TABLE `type_activites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `type_chambres`
--
ALTER TABLE `type_chambres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
