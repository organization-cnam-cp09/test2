-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 05 Avril 2017 à 22:03
-- Version du serveur :  5.6.26
-- Version de PHP :  5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cnamcp09_recette20170401`
--

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE IF NOT EXISTS `plat` (
  `plat_id` int(3) NOT NULL,
  `plat_nom` varchar(255) NOT NULL,
  `plat_position` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `plat`
--

INSERT INTO `plat` (`plat_id`, `plat_nom`, `plat_position`) VALUES
(1, 'dessert', 3),
(2, 'entrée', 1),
(3, 'plat de résistance', 2),
(4, 'fromage', 3),
(5, 'digestif', 5),
(6, 'café', 4);

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE IF NOT EXISTS `recette` (
  `recette_id` int(3) NOT NULL,
  `recette_nom` varchar(255) NOT NULL,
  `recette_temps` int(5) DEFAULT NULL,
  `plat_id` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`recette_id`, `recette_nom`, `recette_temps`, `plat_id`) VALUES
(1, 'pâtes', 20, 3),
(2, 'Gâteau', 50, 1),
(3, 'tarte', NULL, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`plat_id`),
  ADD UNIQUE KEY `plat_nom` (`plat_nom`),
  ADD KEY `plat_nom_2` (`plat_nom`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`recette_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `plat_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
  MODIFY `recette_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
