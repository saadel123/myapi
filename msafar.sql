-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 mai 2022 à 13:31
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `msafar`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_act` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activites`
--

INSERT INTO `activites` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `duree`, `date_act`, `image`, `nbr_etoiles`, `nb_visite`, `created_at`, `updated_at`) VALUES
(1, 1, 'Titre de l\'Activite 1', 'titre-de-lactivite-1', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '500', NULL, NULL, NULL, NULL, '2h', '0000-00-00', 'images/activites/SMrCcPXXZGdq3PPSqmGzIreufwl3gaILduymWlWw.jpg', NULL, 0, '2022-05-13 15:11:13', '2022-05-13 15:11:13'),
(2, 1, 'Titre de l\'Activite 2', 'titre-de-lactivite-2', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '500', NULL, NULL, NULL, NULL, '3h', NULL, 'images/activites/DuoXswP4nzBRWH88D938CdvYdAdW8Drat1xi8UlR.jpg', NULL, 0, '2022-05-13 15:11:28', '2022-05-13 15:11:28'),
(3, 1, 'Titre de l\'Activite 3', 'titre-de-lactivite-3', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '500', NULL, NULL, NULL, NULL, '3.30min', NULL, 'images/activites/xYQoymjvo7jmOrsn5ysrTp3RpyCbY0RnmK0VBgXw.jpg', NULL, 0, '2022-05-13 15:12:00', '2022-05-13 15:12:00'),
(4, 1, 'Titre de l\'Activite 4', 'titre-de-lactivite-4', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '100', NULL, NULL, NULL, NULL, '4h', NULL, 'images/activites/jLrnFxO1NST1uEiQfn6oUhxxYmDOpOakKMonuAWe.jpg', NULL, 0, '2022-05-13 15:12:21', '2022-05-13 15:12:21'),
(5, 1, 'Titre de l\'Activite 5', 'titre-de-lactivite-5', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '100', NULL, NULL, NULL, NULL, '5h', NULL, 'images/activites/6PNJQmDhUarxIedTTVV7LWCT7llzSC7QVT7v1DLa.jpg', NULL, 0, '2022-05-13 15:12:46', '2022-05-13 15:12:46'),
(6, 1, 'Titre de l\'Activite 6', 'titre-de-lactivite-6', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '150', NULL, NULL, NULL, NULL, '1h', NULL, 'images/activites/sds1eDnj2d8OyvRrI80WegaRsjhXm1hchEq7UMwN.jpg', NULL, 0, '2022-05-13 15:13:04', '2022-05-13 15:13:04'),
(7, 1, 'Titre de l\'Activite 7', 'titre-de-lactivite-7', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '200', NULL, NULL, NULL, NULL, '1h', NULL, 'images/activites/j9YxGgawCpi1C9A4F1yuE0bt3Jf7jK6guk1WLwBV.jpg', NULL, 0, '2022-05-13 15:13:25', '2022-05-13 15:13:25'),
(8, 1, 'Titre de l\'Activite 8', 'titre-de-lactivite-8', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, '1h', NULL, 'images/activites/C78lcfVpk6JbhiwwcDcPYcqOg9n5MPaC7r82XhCj.jpg', NULL, 0, '2022-05-13 15:13:38', '2022-05-13 15:13:38'),
(9, 1, 'Titre de l\'Activite 9', 'titre-de-lactivite-9', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '250', NULL, NULL, NULL, NULL, '1h', NULL, 'images/activites/5TQJ025r9DpRdLSs4pKSqhBQhitWutWyd10iEc4y.jpg', NULL, 0, '2022-05-13 15:13:51', '2022-05-13 15:13:51'),
(10, 1, 'Titre de l\'Activite 10', 'titre-de-lactivite-10', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '350', NULL, NULL, NULL, NULL, '2h', NULL, 'images/activites/620bIwEgoSqEQsRV8R4I2rWqojbETRvmhebNZphf.jpg', NULL, 0, '2022-05-13 15:14:04', '2022-05-13 15:14:04'),
(11, 1, 'Guide Touristique', 'guide-touristique', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '350', NULL, NULL, NULL, NULL, NULL, NULL, 'images/activites/hMRsTNtClQX4pYaPKp9dDDpXCJbAPnbocUTgQ1RI.jpg', NULL, 0, '2022-05-16 08:16:50', '2022-05-16 08:16:50');

-- --------------------------------------------------------

--
-- Structure de la table `activite_images`
--

CREATE TABLE `activite_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activite_images`
--

INSERT INTO `activite_images` (`id`, `image`, `libelle`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(1, 'images/activites/G9bXiNFT4PYVeGdcydBLvcCnPBaBieK87FlQX6y2.jpg', 'Photo11.jpg', 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(2, 'images/activites/EpPsIDl4WZfA03qv47KwKumlaRZfsrvH83eaDm2h.jpg', 'Photo12.jpg', 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(3, 'images/activites/pSqKGMHQrtfFDxVOhxaKCr01d9iJatjvhoD37m52.jpg', 'Photo13.jpg', 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(4, 'images/activites/HofWEp1wQvXs9lQYnMGOUkawMOoBaLnlwu5svx60.jpg', 'Photo14.jpg', 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(5, 'images/activites/E4EnAf0d7CT3c8qI6Q2nrklkcNT6Z4XDKIBys3pz.jpg', 'Photo15.jpg', 1, NULL, '2022-05-16 09:41:14', '2022-05-16 09:41:14'),
(6, 'images/activites/6T8uUBExrmFHYDlGKnSvckT5tEViRpyEOy54wZHf.jpg', 'Photo17.jpg', 2, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(7, 'images/activites/o5vSlZxDegwFN09zBwnFKDF96pg1wnftn6JkyTkg.jpg', 'Photo18.jpg', 2, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(8, 'images/activites/Vhiu3YvkPjd2qEDuPzxMZvFjw7iVsvlapXozV2i0.jpg', 'Photo19.jpg', 2, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(9, 'images/activites/5LAFFNTBeAJeVlmUAXcrQVT7hMCfq55Zg08swj3t.jpg', 'Photo20.jpg', 2, NULL, '2022-05-16 09:41:51', '2022-05-16 09:41:51'),
(10, 'images/guides-touristique/5XYdyIgAYowG2pCgpW2usBhiGBIzZnUCrITeizWR.jpg', 'Photo06.jpg', NULL, 1, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(11, 'images/guides-touristique/uDwscPp5l4CqOnpYZLyX9OMTPcLZKWioE83xC9eh.jpg', 'Photo07.jpg', NULL, 1, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(12, 'images/guides-touristique/grVmtPpCMwTQnDqwIhJ8OcfvGn4espxFBi3cGqwS.jpg', 'Photo08.jpg', NULL, 1, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(13, 'images/guides-touristique/nVZ3Up8gakGd1Do9wIVMJqDafsHhdFZF7ewCV2Xk.jpg', 'Photo09.jpg', NULL, 1, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(14, 'images/guides-touristique/0FSWEv0JKbNODpFpXnWWxp1kLLlTp0wMnSEMvRlv.jpg', 'Photo10.jpg', NULL, 1, '2022-05-16 09:43:00', '2022-05-16 09:43:00'),
(15, 'images/guides-touristique/tT2KNf29XlqXO1tGTqbPB3NhqvOpGCsOzptMdenE.jpg', 'Photo22.jpg', NULL, 2, '2022-05-16 09:43:34', '2022-05-16 09:43:34'),
(16, 'images/guides-touristique/Arc0yt3u9JoOTa2qlYatvmbCvYKZcQm7YvfXSHU3.jpg', 'Photo36.jpg', NULL, 2, '2022-05-16 09:43:34', '2022-05-16 09:43:34'),
(17, 'images/guides-touristique/hwe1h62EIjBaCmpNHzzFil1TPcKHHcYQ0yuMN9ff.jpg', 'Photo42.jpg', NULL, 2, '2022-05-16 09:43:34', '2022-05-16 09:43:34'),
(18, 'images/guides-touristique/lOoMbDY05hQCYlGSc83ixuAwnAUytWU46g0ew0d3.jpg', 'Photo55.jpg', NULL, 2, '2022-05-16 09:43:34', '2022-05-16 09:43:34'),
(19, 'images/guides-touristique/tiE2HwstOY8nZuwEpiR25NfBzBmTRMfWmvAAyFG1.jpg', 'Photo56.jpg', NULL, 2, '2022-05-16 09:43:34', '2022-05-16 09:43:34');

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/Aideg55SCb3Kn0EHmAG9YV8kP1AQ8hRhjM2B1kFO.jpg', '2022-05-10 12:37:24', '2022-05-10 12:37:24'),
(2, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet2', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/PC1eNT7hLJ9FMT31MtbcdWVrQlyCafRuE48vgNIS.jpg', '2022-05-10 12:37:47', '2022-05-10 12:37:47'),
(3, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet3', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/FIRFcWy2t0P7UmxmdAG4uswLU4nDCAddHRI9Qzmb.jpg', '2022-05-10 12:38:15', '2022-05-10 12:38:15'),
(4, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet4', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/qOwNhnBFeXn41LLMJcz8sadj1cHtTFwjKYAcGig3.jpg', '2022-05-10 12:38:23', '2022-05-10 12:38:23'),
(5, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet5', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/uoiGx9TqUw0DBMJHZ3fKZhG2agJGusOhOQn5Fo1i.jpg', '2022-05-10 12:38:34', '2022-05-10 12:38:34'),
(6, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet6', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/V91XBht7TBfvjUV0p2wBtnmjNdm7romNjKv4fnXl.jpg', '2022-05-10 12:39:20', '2022-05-10 12:39:20'),
(7, NULL, NULL, 'Lorem ipsum, dolor sit amet', 'lorem-ipsum-dolor-sit-amet7', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/restaurants/xYnfm6BCokT99mzio8S2j9JfxTk9kQFmOKsO5MF3.jpg', '2022-05-10 12:39:30', '2022-05-10 12:39:30'),
(8, NULL, NULL, 'Bab mansour meknes', 'bab-mansour-meknes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/actualites/3SkVhIH5RE4ImMQucNNKVMKts6Uw5P7o6lSCD79V.jpg', '2022-05-10 13:45:47', '2022-05-10 13:45:47'),
(9, NULL, NULL, 'Donald trump', 'donald-trump', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/actualites/fHxmtDyHupjKULP0b9O2GGZaPWqO7n4jMWVLU35N.jpg', '2022-05-11 09:37:13', '2022-05-11 09:37:13');

-- --------------------------------------------------------

--
-- Structure de la table `cat_menus`
--

CREATE TABLE `cat_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_restaurant` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cat_menus`
--

INSERT INTO `cat_menus` (`id`, `nom`, `avatar`, `id_restaurant`, `created_at`, `updated_at`) VALUES
(1, 'Plats', 'images/resteumenu/plats.png', 1, NULL, NULL),
(2, 'Entrée', 'images/resteumenu/boissons.png', 1, NULL, NULL),
(3, 'Dessert', 'images/resteumenu/dessert.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

CREATE TABLE `chambres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_type_chambre` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chambres`
--

INSERT INTO `chambres` (`id`, `libelle`, `description`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_type_chambre`, `created_at`, `updated_at`) VALUES
(1, 'Chambre individuellea', NULL, 14, NULL, NULL, NULL, NULL, NULL),
(2, 'Chambre double', NULL, 14, 6, NULL, NULL, NULL, NULL),
(3, 'Suite', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(7, 'Chambre double', NULL, 14, NULL, NULL, NULL, NULL, NULL),
(8, 'Suite', NULL, 15, NULL, NULL, NULL, NULL, NULL),
(9, 'Chambre double', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Chambre double', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Chambre double', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_riad` int(11) DEFAULT NULL,
  `id_maison_hote` int(11) DEFAULT NULL,
  `id_restaurant` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `user_id`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam, quas!', 1, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam, quas!', 1, NULL, 6, NULL, NULL, NULL, NULL, NULL),
(3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam, quas!', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\r\n❤️❤️', 1, NULL, NULL, NULL, 1, NULL, '2022-05-06 16:15:54', '2022-05-06 16:15:54'),
(7, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰', 2, NULL, NULL, NULL, 1, NULL, '2022-05-06 16:15:54', '2022-05-06 16:15:54');

-- --------------------------------------------------------

--
-- Structure de la table `comment_partages`
--

CREATE TABLE `comment_partages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_partage` int(11) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL,
  `id_guide` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment_partages`
--

INSERT INTO `comment_partages` (`id`, `commentaire`, `user_id`, `id_partage`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(1, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️🥰', 2, 1, NULL, 0, '2022-05-12 09:12:38', '2022-05-12 09:12:38'),
(2, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️🥰', 1, 2, NULL, 0, '2022-05-12 09:12:53', '2022-05-12 09:12:53'),
(3, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️', 3, 1, NULL, 0, '2022-05-12 09:13:12', '2022-05-12 09:13:12'),
(4, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️', 4, 3, NULL, 0, '2022-05-12 09:13:27', '2022-05-12 09:13:27'),
(5, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️🥰', 5, 4, NULL, 0, '2022-05-12 09:13:39', '2022-05-12 09:13:39'),
(6, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰\n❤️❤️', 1, 5, NULL, 0, '2022-05-12 09:14:23', '2022-05-12 09:14:23'),
(7, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰\n❤️❤️', 2, 6, NULL, 0, '2022-05-12 09:14:34', '2022-05-12 09:14:34'),
(8, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\n❤️❤️', 3, 6, NULL, 0, '2022-05-12 09:14:43', '2022-05-12 09:14:43'),
(9, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\r\n❤️❤️', 1, NULL, NULL, 1, '2022-05-12 09:14:43', '2022-05-12 09:14:43'),
(10, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰\r\n❤️❤️', 2, NULL, NULL, 1, NULL, NULL),
(11, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\r\n❤️❤️', 1, NULL, 1, NULL, NULL, NULL),
(12, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰\r\n❤️❤️', 2, NULL, 1, NULL, NULL, NULL),
(13, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt🥰\r\n❤️❤️', 1, NULL, 2, NULL, NULL, NULL),
(14, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\r\n❤️❤️', 2, NULL, 2, NULL, NULL, NULL),
(15, 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt\r\n❤️❤️', 2, NULL, 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'Evènement msafar', 'evenement-msafar', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/XaTXq5yKXEZ24P1d59aZ7W1cbo2rwH4fZ3UVDCcJ.jpg', '2022-05-12 10:17:27', '2022-05-12 10:17:27'),
(3, NULL, NULL, 'Evènement msafar 2', 'evenement-msafar-2', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/Ga578a2XDYD3l2EFRPTUJarfqW3uYygdmg01XaFm.jpg', '2022-05-12 10:17:44', '2022-05-12 10:17:44'),
(4, NULL, NULL, 'Evènement msafar 3', 'evenement-msafar-3', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/o70x23Eal7U9wvxL31m3c4AxNJRei2ppuFksdpt3.jpg', '2022-05-12 10:17:55', '2022-05-12 10:17:55'),
(5, NULL, NULL, 'Evènement msafar 4', 'evenement-msafar-4', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/dKmLUAEV5xuo0nbuuUJ7ivzIyO6gq4jLrfZuoPpy.jpg', '2022-05-12 10:18:06', '2022-05-12 10:18:06'),
(6, NULL, NULL, 'Evènement msafar 5', 'evenement-msafar-5', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/9MGRrbdoUGg95TozUVfeVjUqx5IZ2VzenHCl5O27.jpg', '2022-05-12 10:18:32', '2022-05-12 10:18:32'),
(7, NULL, NULL, 'Evènement msafar 6', 'evenement-msafar-6', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/tPRSba0FyOan7P5wfpAPRQ2mXjr7z4DnKNiCNqlD.jpg', '2022-05-12 10:18:42', '2022-05-12 10:18:42'),
(8, NULL, NULL, 'Evènement msafar 7', 'evenement-msafar-7', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/HWYmlBCBjE3MmFZzXdUMlNAV9HNJAJdhvX9tRVNP.jpg', '2022-05-12 10:19:01', '2022-05-12 10:19:01'),
(9, NULL, NULL, 'Evènement msafar 8', 'evenement-msafar-8', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/FXPABVoVS3K6VNnnb6XlHjljbV6rV6rkDwdEBRBm.jpg', '2022-05-12 10:20:12', '2022-05-12 10:20:12'),
(10, NULL, NULL, 'Evènement msafar 9', 'evenement-msafar-9', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/evenements/TLPLEn27ezOiun7HePUVBNwRjF5HGiDeOlA0eBhH.jpg', '2022-05-12 10:20:21', '2022-05-12 10:20:21');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gastronomies`
--

CREATE TABLE `gastronomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gastronomies`
--

INSERT INTO `gastronomies` (`id`, `user_id`, `titre`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Couscous', 'couscous', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/buHe5t8NJ10OVIbt21ay6hKqvKWIx7jAjJBzdj47.jpg', '2022-05-10 15:12:02', '2022-05-10 15:12:02'),
(2, NULL, 'Tajin', 'tajin', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/Xnh8TZCG78FYx7P2qaX3nLiNuk0PqQ4sehYjLtEo.jpg', '2022-05-10 15:12:49', '2022-05-10 15:12:49'),
(3, NULL, 'Briouates', 'briouates', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/xIXHQKsIdBjRBwGcXsMM4Um7XHGhwM0za7gpEfhI.jpg', '2022-05-10 15:13:31', '2022-05-10 15:13:31'),
(4, NULL, 'Bastila', 'bastila', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/BXC7oqrfgAct60rgHHwdVd5kGAsQeOYVMjoUboM4.jpg', '2022-05-10 15:14:05', '2022-05-10 15:14:05'),
(5, NULL, 'Couscous Fes', 'couscous-fes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/4W5NhuEtjtpGvy3rv6pxibxZmb8nRdHpgFyxOBaX.jpg', '2022-05-10 15:14:36', '2022-05-10 15:14:36'),
(6, NULL, 'Chbakiya', 'chbakiya', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/FxxtwFINIao2wLU79IkBUfNO1yCtMqVUe5ODjVd7.jpg', '2022-05-10 15:15:11', '2022-05-10 15:15:11'),
(7, NULL, 'Tanjia', 'tanjia', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/gastronomies/n0FFzXn5TiO4drVIQAKMiTWEAi6G58XemcuZEFTE.jpg', '2022-05-11 09:47:19', '2022-05-11 09:47:19');

-- --------------------------------------------------------

--
-- Structure de la table `guides_touristiques`
--

CREATE TABLE `guides_touristiques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_act` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `guides_touristiques`
--

INSERT INTO `guides_touristiques` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `date_act`, `image`, `nbr_etoiles`, `nb_visite`, `created_at`, `updated_at`) VALUES
(1, 1, 'Guide Touristique', 'guide-touristique', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '350', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/evBe6hFAXzMlh5ZWdZIy2cb7l61Du51dT9Ex9Ypv.jpg', NULL, 0, '2022-05-16 08:17:46', '2022-05-16 08:17:46'),
(2, 2, 'Guide Touristique 2', 'guide-touristique-2', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/4YpXGtoreKB5zoSXtAY97BFTlQlaBlK9RD9TOPAC.jpg', NULL, 0, '2022-05-16 08:18:12', '2022-05-16 08:18:12'),
(3, 3, 'Guide Touristique 3', 'guide-touristique-3', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/gdLy28RsH0B4yZ40UlqvVoW7SeTpAtHhw8j4yh4n.jpg', NULL, 0, '2022-05-16 08:18:36', '2022-05-16 08:18:36'),
(4, 4, 'Guide Touristique 4', 'guide-touristique-4', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/rtEgZAwcRbfZR4bq4BOvvCD99BmCYwfmvUxvxuYC.jpg', NULL, 0, '2022-05-16 08:18:53', '2022-05-16 08:18:53'),
(5, 5, 'Guide Touristique 5', 'guide-touristique-5', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/vcoN4LSfS7L48nMt3Y3WmV65M2PQhNdp4AbIksyP.jpg', NULL, 0, '2022-05-16 08:19:06', '2022-05-16 08:19:06'),
(6, 6, 'Guide Touristique 6', 'guide-touristique-6', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/3sLkhVjynCKGU15BVucuDK1c61aw93ZDKgNOFXE6.jpg', NULL, 0, '2022-05-16 08:19:15', '2022-05-16 08:19:15'),
(7, 7, 'Guide Touristique 7', 'guide-touristique-7', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/dLdNpz4aXLIGFHgzdlmXHxPFPmPMsdx7IkRwu6d1.jpg', NULL, 0, '2022-05-16 08:19:24', '2022-05-16 08:19:24'),
(8, 8, 'Guide Touristique 8', 'guide-touristique-8', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/SkYgHAAYSIMbidHzosi46Kfqvoo3fDkkUEyILxfl.jpg', NULL, 0, '2022-05-16 08:19:33', '2022-05-16 08:19:33'),
(9, 9, 'Guide Touristique 9', 'guide-touristique-9', 'Laorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLaorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', NULL, 'Casablanca maroc', 'contact@msafar.ma', '300', NULL, NULL, NULL, NULL, NULL, 'images/guides-touristique/oDI87ixHtO26C1ZypeQjly3MQAaQFGvfYqvw397z.jpg', NULL, 0, '2022-05-16 08:20:02', '2022-05-16 08:20:02');

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_etoiles` int(11) DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `nbr_etoiles`, `nb_visite`, `image`, `created_at`, `updated_at`) VALUES
(14, NULL, 'MIDTOWN HÔTEL CASABLANCA', 'midtown-hotel-casablanca', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, '3 Rue Badr Assayab, Quartier Gauthier Casablanca 20060 Maroc .', 'reception@midtowncasablanca.com', '300', 'https://midtownhotelcasablanca.com/', 'https://www.facebook.com/midtowncasablanca/', 'https://www.instagram.com/midtowncasablanca/?utm_medium=copy_link&hl=en', NULL, 100, 0, 'images/hotels/hotel-imperial-casablanca_1347.jpg', '2022-04-26 12:08:30', '2022-04-26 12:08:30'),
(15, NULL, 'Le Casablanca Hotel', 'test-hotel2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '500', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 5, 0, 'images/hotels/164191758.jpg', '2022-04-26 12:09:23', '2022-04-26 12:09:23'),
(16, NULL, 'Hyatt Regency Casablanca', 'test-hotel3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '600', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 4, 0, 'images/hotels/HAYAT-REGENCY.png', '2022-04-26 12:09:32', '2022-04-26 12:09:32'),
(17, NULL, 'MELLIBER Appart Hotel', 'test-hotel4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '550', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 2, 0, 'images/hotels/melliber-appart-hotel-hotel-12686232.jpg', '2022-04-26 12:09:43', '2022-04-26 12:09:43'),
(18, NULL, 'Pestana Casablanca', 'test-hotel5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '250', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 1, 0, 'images/hotels/leonardo-119101748-PSR_7513_O-564691.jpg', '2022-04-26 12:09:53', '2022-04-26 12:09:53'),
(19, NULL, 'Club Val d\'Anfa Hotel', 'test-hotel6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '600', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 5, 0, 'images/hotels/36125837.jpg', '2022-04-26 12:10:00', '2022-04-26 12:10:00'),
(20, NULL, 'ibis Casa Sidi Maarou', 'test-hotel7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', 13, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '199', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 2, 0, 'images/hotels/6289_ho_00_p_1024x768.jpg', '2022-04-26 12:10:12', '2022-04-26 12:10:12'),
(21, NULL, 'Kenzi Tower Hotel', 'test-hotel8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '+212 6 25 63 98 57', NULL, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '499', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 3, 0, 'images/hotels/159160748.jpg', '2022-04-26 12:23:45', '2022-04-26 14:12:48'),
(29, NULL, 'Hotel downtown casablanca', 'hyatt-regency', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '+212 6 25 63 98 57', 13, 'casablanca maroc', 'contact@msafar.ma', '300', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 4, 0, 'images/hotels/Hotel-downtown-casablanca-home-2.jpg', '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(30, NULL, 'Premiere classe casablanca centre ville', 'premiere-classe-casablanca-centre-ville', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '+212 6 25 63 98 57', 13, 'casablanca maroc', 'contact@msafar.ma', '599', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 4, 0, 'images/hotels/63395281_XL.jpg', '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(31, NULL, 'Kyriad résidence Casablanca centre-ville', 'kyriad-résidence-casablanca-centre-ville', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '+212 6 25 63 98 57', 13, 'casablanca maroc', 'contact@msafar.ma', '570', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 3, 0, 'images/hotels/63309174_L.jpg', '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(33, NULL, 'Four Seasons Hotel Casablanca', 'Four-seasons-hotel-casablanca', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '+212 6 25 63 98 57', 13, 'casablanca maroc', 'contact@msafar.ma', '1000', 'https://getbootstrap.com/docs/4.6/content/tables/', 'https://fr-fr.facebook.com/pages/Msafar/', 'https://www.instagram.com/stories/msafar', NULL, 3, 0, 'images/hotels/67590690.jpg', '2022-04-27 14:22:00', '2022-04-27 14:22:00');

-- --------------------------------------------------------

--
-- Structure de la table `images`
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
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `image`, `libelle`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `created_at`, `updated_at`) VALUES
(63, 'images/riads/e3O2FRl40bvNXzmGPCWQR0i5Jpfl5jPt46XSoHWP.jpg', '87dbdb49-2244-4c26-9ecc-2be8d283edf7.jpg', NULL, 13, NULL, NULL, '2022-04-27 13:54:09', '2022-04-27 13:54:09'),
(64, 'images/riads/c0h9TrzIE0p6SJ2k09DlBdFOZo4VC5M5za2dyiJy.jpg', '823e855e-78ca-4319-ab4e-db07688d2da5.jpg', NULL, 13, NULL, NULL, '2022-04-27 13:54:09', '2022-04-27 13:54:09'),
(65, 'images/riads/ltlpDL8bciwbH8hY0wWUaugoaCccDt5yNrN2ui3S.jpg', '65095ec2-47e5-46e6-8266-b490ca459e23.jpg', NULL, 13, NULL, NULL, '2022-04-27 13:54:09', '2022-04-27 13:54:09'),
(66, 'images/hotels/download.jpg', '87dbdb49-2244-4c26-9ecc-2be8d283edf7.jpg', 14, NULL, NULL, NULL, '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(67, 'images/hotels/imperial-casablanca-hotel.jpg', '823e855e-78ca-4319-ab4e-db07688d2da5.jpg', 14, NULL, NULL, NULL, '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(68, 'images/hotels/40.jpg', '65095ec2-47e5-46e6-8266-b490ca459e23.jpg', 14, NULL, 0, NULL, '2022-04-27 14:22:00', '2022-04-27 14:22:00'),
(69, 'images/hotels/lobby--v7144066.jpg', 'Photo21.jpg', 14, NULL, 7, NULL, '2022-04-27 14:33:00', '2022-04-27 14:33:00'),
(70, 'images/hotels/guest-room.jpg', 'Photo22.jpg', 14, NULL, 7, NULL, '2022-04-27 14:33:00', '2022-04-27 14:33:00'),
(71, 'images/hotels/images-(3).jpg', 'Photo24.jpg', 14, NULL, 7, NULL, '2022-04-27 14:33:00', '2022-04-27 14:33:00'),
(72, 'images/hotels/350436131.jpg', 'Photo01.jpg', 14, 6, NULL, NULL, '2022-04-28 13:35:21', '2022-04-28 13:35:21'),
(73, 'images/hotels/315145845.jpg', 'Photo02.jpg', 14, 6, NULL, NULL, '2022-04-28 13:35:21', '2022-04-28 13:35:21'),
(74, 'images/hotels/315313164.jpg', 'Photo03.jpg', 14, 6, NULL, NULL, '2022-04-28 13:35:21', '2022-04-28 13:35:21'),
(75, 'images/maisons/215696682.jpg', 'Photo27.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(76, 'images/maisons/215697796.jpg', 'Photo28.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(77, 'images/maisons/215955887.jpg', 'Photo28.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(78, 'images/maisons/215816391.jpg', 'Photo28.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(79, 'images/maisons/215698133.jpg', 'Photo28.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(80, 'images/maisons/215812805.jpg', 'Photo28.jpg', NULL, NULL, 1, NULL, '2022-04-28 13:43:17', '2022-04-28 13:43:17'),
(81, 'images/hotels/8OhloGCGDhqCSOSzena8D6XgWxzVpM63Fmk313nD.jpg', 'la-storia-casablanca.jpg', NULL, NULL, NULL, 1, '2022-05-10 14:46:38', '2022-05-10 14:46:38'),
(82, 'images/hotels/v18ItNLOt2zwHCIxwnOGPo4Oyzizb11EhpzjNTZo.jpg', 'Shoelifer-Une-spot-adresse-casablanca-balthazar-cafe.jpg', NULL, NULL, NULL, 1, '2022-05-10 14:46:38', '2022-05-10 14:46:38'),
(83, 'images/hotels/QacHPpxUdDdG281bqEU4VoC2OteaATHm4gw4y0AS.jpg', 'le-beret-c-est-un-endroit.jpg', NULL, NULL, NULL, 1, '2022-05-10 14:46:38', '2022-05-10 14:46:38'),
(84, 'images/hotels/4dE2UZ64gTVel9YanZ6CiHVWnMHW3ht51Zg0W6Jg.jpg', '7-de-11h-a-01h-reservations.jpg', NULL, NULL, NULL, 1, '2022-05-10 14:46:38', '2022-05-10 14:46:38');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `langue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `langue`, `created_at`, `updated_at`) VALUES
(1, 'Arabe', NULL, NULL),
(2, 'Anglais', NULL, NULL),
(3, 'Espagnol', NULL, NULL),
(4, 'Français', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `langue_guides`
--

CREATE TABLE `langue_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_guide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_langue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `langue_guides`
--

INSERT INTO `langue_guides` (`id`, `id_guide`, `id_langue`, `created_at`, `updated_at`) VALUES
(1, '1', '1', NULL, NULL),
(2, '1', '2', NULL, NULL),
(3, '1', '3', NULL, NULL),
(4, '1', '4', NULL, NULL),
(5, '2', '1', NULL, NULL),
(6, '2', '1', NULL, NULL),
(7, '3', '2', NULL, NULL),
(8, '3', '3', NULL, NULL),
(9, '3', '4', NULL, NULL),
(10, '4', '2', NULL, NULL),
(11, '4', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lieux`
--

CREATE TABLE `lieux` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lieux`
--

INSERT INTO `lieux` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Bab mansour meknes', 'bab-mansour-meknes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/2u3obnJP71027KpForZ1q2VApPdKHHaKlWqyZAmn.jpg', '2022-05-10 13:46:47', '2022-05-10 13:46:47'),
(2, NULL, NULL, 'Oujda', 'oujda-maroc', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/KQOEeLn0ej5QjnS0omuE3lrvr0lo0t0FxT0xDkPL.jpg', '2022-05-10 13:47:29', '2022-05-10 13:47:29'),
(3, NULL, NULL, 'La tour hassan 2', 'la-tour-hassan-2', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/2sfRn0dwZOynNblB2OqrrPOUJQO7R8SBfmX3CYnu.jpg', '2022-05-10 13:48:43', '2022-05-10 13:48:43'),
(4, NULL, NULL, 'Pardise, Agadir', 'pardise-agadir', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/yifswgz2VjW9H7Zdg06b8BzfsYG3ZmlmsM0E4uYP.jpg', '2022-05-10 13:49:51', '2022-05-10 13:49:51'),
(5, NULL, NULL, 'mosque hassan 2', 'mosque-hassan-2', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/D5ybg5pn1zaWBlK9iQMfOKp7oW2Opc9CEF0ynOIS.jpg', '2022-05-10 13:50:47', '2022-05-10 13:50:47'),
(6, NULL, NULL, 'centre ville rabat', 'centre-ville-rabat', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/rkazLdo7v0E1ai0iIriUcX9MEgRtldnhKU9MVYN9.jpg', '2022-05-10 13:51:52', '2022-05-10 13:51:52'),
(7, NULL, NULL, 'Chefchaouen 2022', 'chefchaouen-2022', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/YM7UGhUXLRqP7d9Ntrc2vSobyuLZI1Fpm3b7mwWh.jpg', '2022-05-11 09:44:07', '2022-05-11 09:44:07'),
(8, NULL, NULL, 'Dakhla', 'dakhla', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/lieux/NiMyxM1AjsVyWfY9HOs5eux1rW3XavtvVlkmXY9O.jpg', '2022-05-11 09:44:59', '2022-05-11 09:44:59');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_menus`
--

CREATE TABLE `ligne_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_restaurant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cat_menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ligne_menus`
--

INSERT INTO `ligne_menus` (`id`, `id_restaurant`, `id_menu`, `id_cat_menu`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', NULL, NULL),
(2, '1', '2', '1', NULL, NULL),
(3, '1', '3', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `maison_hotes`
--

CREATE TABLE `maison_hotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `maison_hotes`
--

INSERT INTO `maison_hotes` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `nb_visite`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'LHOSTEL à Casablanca', 'maison', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'saad.elghanemy2@mail.com', NULL, NULL, NULL, NULL, NULL, 0, 'images/maisons/215666852.jpg', NULL, '2022-04-26 14:22:18'),
(2, NULL, 'Carré Français de Casablanca', 'maison-test2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'saad.elghaney8@mail.com', '100', NULL, NULL, NULL, NULL, 0, 'images/maisons/Si2dgOFdH9JlvqG61BIhRb2vWdGkrfhRZ0TSoosT.jpg', '2022-04-26 11:23:23', '2022-04-26 14:23:00'),
(3, NULL, 'Guest Appart City Casablanca', 'maison-test3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'saad.elghaney1@mail.com', '100', NULL, NULL, NULL, NULL, 0, 'images/maisons/MiX0aBa7CVXNLZhkLUyp323HZ0uhOyEVLX1kF6oY.jpg', '2022-04-26 11:23:52', '2022-04-26 14:23:15'),
(4, NULL, 'LHOSTEL à Casablanca', 'maison-test4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'saad.elghaney4@mail.com', '100', NULL, NULL, NULL, NULL, 0, 'images/maisons/HKaFSU3XKGmD5AmreSaerW3nZOSZcSMFQ1lZZQrS.jpg', '2022-04-26 11:39:54', '2022-04-26 14:23:28'),
(5, NULL, 'LHOSTEL à Casablanca', 'maison-test5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'saad.elghaney5@mail.com', '1212', NULL, NULL, NULL, NULL, 0, 'images/maisons/u68EAz4RLhL6AxIvpI0luqQr9aBYxKdGiQVgccGa.jpg', '2022-04-26 11:41:56', '2022-04-26 14:23:44'),
(6, 2, 'LHOSTEL à Casablanca', 'nom-maiso', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'casablanca maroc', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/maisons/BZkAFd1sbjoCFq2b69e8vINJQyidg4KuUS8qAht1.jpg', '2022-04-26 14:24:21', '2022-04-26 14:24:34'),
(7, NULL, 'Bed and breakfast', 'bed-and-breakfast', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', 13, 'casablanca maroc', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/maisons/zloH7XimYbpHJYe2ymqvuAsydRd9AHUXjSl8Yp8j.jpg', '2022-04-27 14:33:00', '2022-04-27 14:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `nom`, `description`, `prix`, `id_cat`, `created_at`, `updated_at`) VALUES
(1, 'Couscous', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '50', 1, NULL, NULL),
(2, 'Bastilla', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '70', 1, NULL, NULL),
(3, 'Café', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '30', 2, NULL, NULL),
(4, 'Rfisa', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '100', 1, NULL, NULL),
(5, 'Jus', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '50', 2, NULL, NULL),
(6, 'Bastila', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '100', 1, NULL, NULL),
(7, 'Fruit de saison', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '30', 3, NULL, NULL),
(8, 'Salad fruit', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '30', 3, NULL, NULL),
(9, 'Jus d\'avocat', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '20', 2, NULL, NULL),
(10, 'Panache', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '50', 2, NULL, NULL),
(11, 'Gateau', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '50', 3, NULL, NULL),
(12, 'Cake', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt consequuntur voluptas id mollitia rerum neque harum doloribus aut dolores fugiat consequatur, quis laborum cupiditate! Odit hic ex, eveniet asperiores repellendus omnis cupiditate laboriosam veniam aperiam facilis recusandae quae quibusdam dolores!', '50', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
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
(41, '2022_05_16_102300_create_activite_images_table', 20);

-- --------------------------------------------------------

--
-- Structure de la table `partages`
--

CREATE TABLE `partages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partages`
--

INSERT INTO `partages` (`id`, `user_id`, `ville_id`, `titre`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Cascades d\'Akchour', 'cascades-dakchour', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/h462Cz92TN3lc9NxuseOkm79hv9P2vUlNIR4SlGv.jpg', '2022-05-12 08:44:06', '2022-05-12 08:44:06'),
(2, 2, 4, 'Al Hoceima, a dream destination in the Mediterranean Sea', 'al-hoceima-a-dream-destination-in-the-mediterranean-sea', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/cb54nVEaemaOluYUeFsTyrDpzQvCqyXNUdnTxS0h.jpg', '2022-05-12 08:46:04', '2022-05-12 08:46:04'),
(3, 3, 16, 'Chefchaouen: Morocco\'s Best Kept Secret', 'chefchaouen-moroccos-best-kept-secret', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/KoL2EGMVMaDPapf104CMr03lKxCHq2p56yxMzaRz.jpg', '2022-05-12 08:51:54', '2022-05-12 08:51:54'),
(4, 4, 19, 'Essaouira travel - Lonely Planet', 'essaouira-travel-lonely-planet', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/XIGc1JVxi84Vgtf8yZOwSSAhexRZMbvK63uSlIgN.jpg', '2022-05-12 08:54:04', '2022-05-12 08:54:04'),
(5, 5, 15, 'Casablanca, Morocco: A City of Color and Texture VIVA GLAM', 'casablanca-morocco-a-city-of-color-and-texture-viva-glam', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/P9jp7LgbXjI21sT2swYegHRM19aZ3PhqzJlgIKRm.jpg', '2022-05-12 08:56:04', '2022-05-12 08:56:04'),
(6, 1, 25, 'Morocco\'s Annual Ifrane Festival 2019 Line-up', 'moroccos-annual-ifrane-festival-2019-line-up', 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/partages/ca0pN9Y01WpIEbfkb7ntyzpusfjAvrkQjr2cb5hj.jpg', '2022-05-12 08:58:58', '2022-05-12 08:58:58');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'myapptoken', '7b9281c25d0976a03e699868fd7dad68ed6e29a167c3ef917766fcfb62928c09', '[\"*\"]', NULL, '2022-04-26 15:32:15', '2022-04-26 15:32:15'),
(4, 'App\\Models\\User', 2, 'myapptoken', 'cb26a584bba97e45c80b0481aa9499223671570c8f51e6a50115ac05edee8dd6', '[\"*\"]', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(5, 'App\\Models\\User', 3, 'myapptoken', 'd378c10fb9fd44933710a0ba39578d3e92c0430e3e4a1e48c953677ac7a4debd', '[\"*\"]', NULL, '2022-05-11 12:09:29', '2022-05-11 12:09:29'),
(6, 'App\\Models\\User', 4, 'myapptoken', 'a1a6b1acbb431ecd57e2c485e13feedf7494ca41c5a9afd6c741c7af5c53e8da', '[\"*\"]', NULL, '2022-05-11 12:09:50', '2022-05-11 12:09:50'),
(7, 'App\\Models\\User', 5, 'myapptoken', 'a60cc7a50337fe2e4a70a8953903cb844a2b7d32a4b8cedf6e0af0e197f9abc0', '[\"*\"]', NULL, '2022-05-11 12:10:20', '2022-05-11 12:10:20');

-- --------------------------------------------------------

--
-- Structure de la table `reservezs`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservezs`
--

INSERT INTO `reservezs` (`id`, `username`, `email`, `tel`, `subject`, `message`, `user_id`, `id_hotel`, `id_riad`, `id_maison_hote`, `id_restaurant`, `created_at`, `updated_at`) VALUES
(1, 'lorem test comment', 'elghanemysaad@gmail.com', '0600688', 'testasdasdasasda', 'asdsadasd sadasdas asdas', NULL, 15, NULL, NULL, NULL, '2022-05-06 17:25:28', '2022-05-06 17:29:46'),
(2, 'lorem test comment', 'elghanemysaad2@gmail.com', '0600688', 'testasdasdasasda', 'asdsadasd sadasdas asdas', NULL, 16, NULL, NULL, NULL, '2022-05-06 17:30:14', '2022-05-06 17:30:14'),
(3, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-06 17:59:09', '2022-05-06 17:59:09'),
(4, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:12:56', '2022-05-09 09:12:56'),
(5, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:28:54', '2022-05-09 09:28:54'),
(6, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:30:05', '2022-05-09 09:30:05'),
(7, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:31:23', '2022-05-09 09:31:23'),
(8, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:32:33', '2022-05-09 09:32:33'),
(9, 'saaad', 'saad.elghanemy@gmail,com', '32423423432', 'asdasdasda asdasdasdasd', 'asdasdasdasdasdasdas', NULL, NULL, NULL, NULL, NULL, '2022-05-09 09:42:54', '2022-05-09 09:42:54');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `nom`, `slug`, `description`, `specialite`, `horaire`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `image`, `nb_visite`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Le riad restaurant', 'le-riad-restaurant', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, '06060606006', NULL, 'casablanca maroc', 'le-riad-restaurant@gmail.com', '700', NULL, NULL, NULL, NULL, 'images/restaurants/49ybtuxqD8B8BWCXxEEJtCW4ROgA2ofHXRf3wFE7.jpg', 0, '2022-05-10 07:42:55', '2022-05-10 07:42:55'),
(2, 1, 'LILYS, Casablanca', 'lilys-casablanca', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/4qsajGVvDmNU0JFqPk51ba8kzssPSmCwnClRiNpo.jpg', 0, '2022-05-10 14:07:10', '2022-05-10 14:07:10'),
(3, 1, 'LE JASMINE', 'le-jasmine', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/SvqLaelZGMrFexuYXhEIdUb665BirgtjsTn8LaY7.jpg', 0, '2022-05-10 14:07:49', '2022-05-10 14:07:49'),
(4, 1, 'LE BÉRET', 'le-beret', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/06ll0HvSfhMRu2HlnJhnFxdearUgTT0UNoC1PaLI.jpg', 0, '2022-05-10 14:09:03', '2022-05-10 14:09:03'),
(5, 1, 'LA STORIA CASABLANCA', 'la-storia-casablanca', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/eeD4FicjkxWyWwOA5t2nhczuH7SeCbowXzOeLMKP.jpg', 0, '2022-05-10 14:10:57', '2022-05-10 14:10:57'),
(6, 1, 'Cafe Balthazar', 'cafe-balthazar', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/l8xdLgukZbmayi2L45hzi7wgvoQLbfRpRV6pjhEn.jpg', 0, '2022-05-10 14:12:38', '2022-05-10 14:12:38'),
(7, 1, 'Marrakech - Restaurant marocain ksar El Hamra - Marrakech', 'marrakech-marocain-restaurant', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', NULL, NULL, '060600606', 13, 'Casablanca maroc', 'contact@msafar.ma', '700', NULL, NULL, NULL, NULL, 'images/restaurants/restaurant-marocain-marrakech-0.jpg', 0, '2022-05-10 14:12:38', '2022-05-10 14:12:38');

-- --------------------------------------------------------

--
-- Structure de la table `riads`
--

CREATE TABLE `riads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville_id` int(100) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_visite` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `riads`
--

INSERT INTO `riads` (`id`, `user_id`, `nom`, `slug`, `description`, `tel`, `ville_id`, `adresse`, `email`, `prix`, `website`, `facebook`, `instagram`, `tiktok`, `nb_visite`, `image`, `created_at`, `updated_at`) VALUES
(6, 1, 'Riad Vendôme & Spa Marrakech', 'nom-riad1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 32, 'Dar El Bacha - Derb El Halfaoui, Médina, 40000 Marrakech, Maroc', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/321009361.jpg', '2022-04-26 13:54:24', '2022-04-26 13:54:24'),
(7, 2, 'Riad Farhan', 'nom-riad2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 32, 'Derb Tizougarine 74, Medina, 40000 Marrakech, Morocco', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/275049852.jpg', '2022-04-26 13:56:23', '2022-04-26 13:56:23'),
(8, 2, 'Dar Salam Palm', 'nom-riad3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 32, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/324556443.jpg', '2022-04-26 13:57:06', '2022-04-26 13:57:06'),
(9, 2, 'Riad Salman', 'nom-riad4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 32, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/312655197.jpg', '2022-04-26 13:57:46', '2022-04-26 13:57:46'),
(10, 2, 'Riad Alice Terrace & Spa', 'nom-riad6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 31, '19 Bd Moulay Rachid, Casablanca 20660', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/344131444.jpg', '2022-04-26 13:58:05', '2022-04-26 13:58:05'),
(11, 2, 'Riad Vendôme & Spa Marrakech', 'nom-riad5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda aspernatur consequuntur quos laboriosam laudantium natus necessitatibus nemo, excepturi distinctio et totam recusandae quasi eveniet iusto consequatur omnis voluptatem obcaecati. Quasi!', '060600606', 13, 'Riad Le Petit Joyau', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/352362694.jpg', '2022-04-26 13:58:38', '2022-04-26 14:10:01'),
(13, NULL, 'Riad Vendôme & Spa Marrakech', 'hyatt-riad', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', '060600606', 13, 'casablanca maroc', 'contact@msafar.ma', '20000', NULL, NULL, NULL, NULL, 0, 'images/riads/170570892.jpg', '2022-04-27 13:54:09', '2022-04-27 13:54:09');

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `user_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/VQyYl2SszSNzngkJUyL2W9zITqYbN0uHv9k07vd2.jpg', '2022-05-11 10:59:14', '2022-05-11 10:59:14'),
(2, 2, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/EOuVEUVBsFXbml3RVAyAQs2m9Dao7tNQS5hPpufa.jpg', '2022-05-11 12:11:04', '2022-05-11 12:11:04'),
(3, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/o7TtbqJKFTlwG9WmfAH1PrgQvXBKeJB15RXfgxoA.jpg', '2022-05-11 12:11:11', '2022-05-11 12:11:11'),
(4, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/UTsnvUvrQnjRRwGKk0kKqGzM428FfEDWgu5eOIoY.jpg', '2022-05-11 12:11:15', '2022-05-11 12:11:15'),
(5, 5, 'Saorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem cupiditate nesciunt, sed consequuntur illo nisi pariatur iste numquam, sint mollitia deserunt cum, a hic dolore. Corrupti sunt quibusdam fugit voluptatum?', 'images/temoignages/T72WdG2Stiu9w5lP0oJMmQB0HQ8H2KZhD9D3Cv6a.jpg', '2022-05-11 12:11:19', '2022-05-11 12:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `type_activites`
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
-- Déchargement des données de la table `type_activites`
--

INSERT INTO `type_activites` (`id`, `activite`, `duree`, `prix_actv`, `id_activite`, `id_guide`, `created_at`, `updated_at`) VALUES
(1, 'Excursion à Marrakech avec guide privé', 'Une journée complète', '550 dhs', '1', NULL, NULL, NULL),
(2, 'Randonnée dans les montagnes de l\'Atlas', '½ journée', '350 dhs', '1', NULL, NULL, NULL),
(3, 'Excursion à Marrakech avec guide privé', 'Une journée complète', '550 dhs', '', '1', NULL, NULL),
(4, 'Randonnée dans les montagnes de l\'Atlas', '½ journée', '350 dhs', '', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type_chambres`
--

CREATE TABLE `type_chambres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `nbr_personnes` int(11) DEFAULT NULL,
  `id_chambre` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_chambres`
--

INSERT INTO `type_chambres` (`id`, `type`, `options`, `prix`, `nbr_personnes`, `id_chambre`, `created_at`, `updated_at`) VALUES
(1, 'Chambre individuellea', 'Demi-pension /pension complete', 300, 1, 1, NULL, NULL),
(2, 'Chambre double', 'Demi-pension /pension complete', 500, 2, 2, NULL, NULL),
(3, 'Suite', 'Demi-pension /pension complete', 700, 3, 3, NULL, NULL),
(6, 'Chambre double', 'Demi-pension /pension complete', 500, 2, 1, '2022-04-28 14:28:24', '2022-04-28 14:28:24'),
(7, 'Suite', 'Demi-pension /pension complete', 700, 3, 8, NULL, NULL),
(8, 'Chambre double', 'Demi-pension /pension complete', 700, 3, 8, NULL, NULL),
(9, 'Suite', 'Demi-pension /pension complete', 700, 3, 7, NULL, NULL),
(10, 'Suite', 'Demi-pension /pension complete', 700, 3, 7, NULL, NULL),
(11, 'Suite', 'Demi-pension /pension complete', 700, 3, 7, NULL, NULL),
(12, 'Suite', 'Demi-pension /pension complete', 700, 3, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saad elghanemy', 'saad@gmail.com', NULL, NULL, '$2y$10$0OFYyabeGo.xfvhezNw7VuuT8hEhr45.xyc.JFVXtSbMplk1y80Ai', NULL, '2022-04-26 15:07:28', '2022-04-26 15:07:28'),
(2, 'said dardari', 'said.dardari@msafar.ma', NULL, NULL, '$2y$10$v535scFvAaLO0IL7oMixH.L.YjcEDUTTGkBUeL4Yf2hQcNVGxtl3e', NULL, '2022-05-11 12:09:00', '2022-05-11 12:09:00'),
(3, 'saad amraoui', 'saad.amraoui@msafar.ma', NULL, NULL, '$2y$10$an9F/l3kxqwMjP4BIhfD5OKPogzno0w9r/3CE0OVfPhzZxXBe0NqC', NULL, '2022-05-11 12:09:29', '2022-05-11 12:09:29'),
(4, 'laila triki', 'laila.triki@msafar.ma', NULL, NULL, '$2y$10$fTMtJmNGb7.XdDCy9JpLFubfcRFP9gTExJCliJqHmPhhAD9HDd98G', NULL, '2022-05-11 12:09:50', '2022-05-11 12:09:50'),
(5, 'ahlam tarfaoui', 'ahlam .tarfaoui@msafar.ma', NULL, NULL, '$2y$10$O9YF2UU9p4HIjeRAZ.KP5.IATThxFCOoY1MGZclUafdUtAkkzpZ1S', NULL, '2022-05-11 12:10:20', '2022-05-11 12:10:20');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `ville`, `created_at`, `updated_at`) VALUES
(1, 'Agadir ', NULL, NULL),
(2, 'Aït Baha ', NULL, NULL),
(3, 'Akchour', NULL, NULL),
(4, 'Al Hoceïma ', NULL, NULL),
(5, 'Arfoud ', NULL, NULL),
(6, 'Assilah', NULL, NULL),
(7, 'Azemmour ', NULL, NULL),
(8, 'Azilal ', NULL, NULL),
(9, 'Azrou ', NULL, NULL),
(10, 'Ben Slimane ', NULL, NULL),
(11, 'Beni Mellal', NULL, NULL),
(12, 'Berkane ', NULL, NULL),
(13, 'Bin el Ouidane', NULL, NULL),
(14, 'Bouznika ', NULL, NULL),
(15, 'Casablanca ', NULL, NULL),
(16, 'Chefchaouen ', NULL, NULL),
(17, 'El Jadida  ', NULL, NULL),
(18, 'Errachidia ', NULL, NULL),
(19, 'Essaouira ', NULL, NULL),
(20, 'Fès ', NULL, NULL),
(21, 'Figuig ', NULL, NULL),
(22, 'Fnideq ', NULL, NULL),
(23, 'Guelmim ', NULL, NULL),
(24, 'Guercif', NULL, NULL),
(25, 'Ifrane ', NULL, NULL),
(26, 'Imelchil', NULL, NULL),
(27, 'Imouzzer ', NULL, NULL),
(28, 'Imsouane', NULL, NULL),
(29, 'Jebha', NULL, NULL),
(30, 'Kalaat M\'Gouna', NULL, NULL),
(31, 'Kasba Tadla ', NULL, NULL),
(32, 'Kénitra ', NULL, NULL),
(33, 'Kétama', NULL, NULL),
(34, 'Khémisset ', NULL, NULL),
(35, 'Khénifra', NULL, NULL),
(36, 'Khouribga ', NULL, NULL),
(37, 'Ksar El Kébir ', NULL, NULL),
(38, 'ksar sghir', NULL, NULL),
(39, 'Larache ', NULL, NULL),
(40, 'Marrakech ', NULL, NULL),
(41, 'Martil ', NULL, NULL),
(42, 'M\'Diq', NULL, NULL),
(43, 'Mehdia ', NULL, NULL),
(44, 'Meknès', NULL, NULL),
(45, 'Merzouga', NULL, NULL),
(46, 'Michlifen', NULL, NULL),
(47, 'Midelt', NULL, NULL),
(48, 'Mohammédia ', NULL, NULL),
(49, 'Moulay Bousselham', NULL, NULL),
(50, 'Moulay Brahim ', NULL, NULL),
(51, 'Nador', NULL, NULL),
(52, 'Oualidia ', NULL, NULL),
(53, 'Ouarzazate ', NULL, NULL),
(54, 'Oued Zem ', NULL, NULL),
(55, 'Ouezzane ', NULL, NULL),
(56, 'Oujda ', NULL, NULL),
(57, 'Oukaimeden', NULL, NULL),
(58, 'Rabat', NULL, NULL),
(59, 'Safi ', NULL, NULL),
(60, 'Saïdia ', NULL, NULL),
(61, 'Salé ', NULL, NULL),
(62, 'Sefrou ', NULL, NULL),
(63, 'Sidi Bouzid ', NULL, NULL),
(64, 'Sidi Ifni', NULL, NULL),
(65, 'Sidi Rahhal ', NULL, NULL),
(66, 'Tafraout ', NULL, NULL),
(67, 'Taghazout', NULL, NULL),
(68, 'Takarkoust', NULL, NULL),
(69, 'Tanger', NULL, NULL),
(70, 'Tan-Tan ', NULL, NULL),
(71, 'Taounate', NULL, NULL),
(72, 'Taourirt', NULL, NULL),
(73, 'Tarfaya ', NULL, NULL),
(74, 'Taroudant ', NULL, NULL),
(75, 'Tata ', NULL, NULL),
(76, 'Taza ', NULL, NULL),
(77, 'Tétouan', NULL, NULL),
(78, 'Tinghir ', NULL, NULL),
(79, 'Tiznit ', NULL, NULL),
(80, 'Zagora ', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activites_slug_unique` (`slug`);

--
-- Index pour la table `activite_images`
--
ALTER TABLE `activite_images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cat_menus`
--
ALTER TABLE `cat_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment_partages`
--
ALTER TABLE `comment_partages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evenements_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `gastronomies`
--
ALTER TABLE `gastronomies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gastronomies_slug_unique` (`slug`);

--
-- Index pour la table `guides_touristiques`
--
ALTER TABLE `guides_touristiques`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guides_touristiques_slug_unique` (`slug`);

--
-- Index pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `langues_langue_unique` (`langue`);

--
-- Index pour la table `langue_guides`
--
ALTER TABLE `langue_guides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lieux`
--
ALTER TABLE `lieux`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lieux_slug_unique` (`slug`);

--
-- Index pour la table `ligne_menus`
--
ALTER TABLE `ligne_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maison_hotes`
--
ALTER TABLE `maison_hotes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partages`
--
ALTER TABLE `partages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reservezs`
--
ALTER TABLE `reservezs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`);

--
-- Index pour la table `riads`
--
ALTER TABLE `riads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_activites`
--
ALTER TABLE `type_activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_chambres`
--
ALTER TABLE `type_chambres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `activite_images`
--
ALTER TABLE `activite_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `cat_menus`
--
ALTER TABLE `cat_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `chambres`
--
ALTER TABLE `chambres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `comment_partages`
--
ALTER TABLE `comment_partages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gastronomies`
--
ALTER TABLE `gastronomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `guides_touristiques`
--
ALTER TABLE `guides_touristiques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `langue_guides`
--
ALTER TABLE `langue_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `lieux`
--
ALTER TABLE `lieux`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ligne_menus`
--
ALTER TABLE `ligne_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `maison_hotes`
--
ALTER TABLE `maison_hotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `partages`
--
ALTER TABLE `partages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `reservezs`
--
ALTER TABLE `reservezs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `riads`
--
ALTER TABLE `riads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type_activites`
--
ALTER TABLE `type_activites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_chambres`
--
ALTER TABLE `type_chambres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
