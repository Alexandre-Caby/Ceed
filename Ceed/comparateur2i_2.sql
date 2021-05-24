-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 mai 2021 à 11:10
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `comparateur2i`
--

-- --------------------------------------------------------

--
-- Structure de la table `association_produit`
--

DROP TABLE IF EXISTS `association_produit`;
CREATE TABLE IF NOT EXISTS `association_produit` (
  `idProduit` int(11) NOT NULL,
  `idSite` int(11) NOT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `association_site`
--

DROP TABLE IF EXISTS `association_site`;
CREATE TABLE IF NOT EXISTS `association_site` (
  `idSite` int(11) NOT NULL,
  `idType` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `idAvis` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `note` float NOT NULL,
  `commentaire` varchar(500) NOT NULL,
  `idProduit` int(11) NOT NULL,
  PRIMARY KEY (`idAvis`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`idAvis`, `idUser`, `note`, `commentaire`, `idProduit`) VALUES
(1, 2, 15, 'J\'adore cet écran !\r\n', 39);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `nomProduit` varchar(40) NOT NULL,
  `noteProduit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`idProduit`, `nomProduit`, `noteProduit`) VALUES
(1, 'Unité centrale (pc fixe)', 0),
(2, 'Souris sans fil', 0),
(3, 'Souris filaire', 0),
(4, 'Iphone 12', 0),
(5, 'Drone', 0),
(31, 'Samsung galaxy S8+', 0),
(32, 'Enceinte connectée', 0),
(33, 'Airpods (écouteur sans fil)', 0),
(34, 'Montre connectée', 0),
(35, 'Ampoule E14 40W', 0),
(36, 'Ampoule E16 40W', 0),
(37, 'Ecran HD 60Hz 19\"', 0),
(38, 'Ecran FHD 60Hz 27\"', 0),
(39, 'Ecran FHD 144Hz 27\"', 0),
(40, 'RAM 8Go', 0),
(41, 'RAM 16Go', 0),
(42, 'Processeur intel core i5 9th Gen', 0),
(43, 'Disque dur 1To', 0),
(44, 'Processeur intel core i7 9th Gen', 0),
(45, 'Pc Portable milieu de gamme', 0),
(46, 'Pc Portable haut de gamme', 0),
(47, 'Clef USB 8Go', 0),
(48, 'Clef USB 32Go', 0),
(49, 'Clef USB 64Go', 0),
(50, 'Ventilateur', 0),
(51, 'Réfrigérateur', 0),
(52, 'Climatisation', 0),
(53, 'Machine à laver', 0),
(54, 'Sèche linge', 0),
(55, 'Micro onde', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `idSite` int(11) NOT NULL AUTO_INCREMENT,
  `nomSite` varchar(25) NOT NULL,
  `urlSite` varchar(50) NOT NULL,
  `noteSite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idSite`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`idSite`, `nomSite`, `urlSite`, `noteSite`) VALUES
(1, 'Amazon', 'https://www.amazon.fr/', 12),
(5, 'Fnac', 'https://www.fnac.com/', 14),
(2, 'TopAchat', 'https://www.topachat.com/', 15),
(8, 'Cdiscount', 'https://www.cdiscount.com/', 13),
(3, 'Boulanger', 'https://www.boulanger.com/', 13),
(4, 'Darty', 'https://www.darty.com/', 11),
(10, 'Rue du commerce', 'https://www.rueducommerce.fr/', 15),
(11, 'Samsung', 'https://www.samsung.com/', 18),
(12, 'Apple', 'https://www.apple.com/', 17),
(13, 'OnePlus', 'https://www.oneplus.com/', 16),
(14, 'LDLC', 'https://www.ldlc.com/', 8),
(15, 'materiel.net', 'https://www.materiel.net/', 10),
(16, 'AliExpress', 'https://best.aliexpress.com/', 5),
(17, 'Wish', 'https://www.wish.com/', 3),
(18, 'Electrodepot', 'https://www.electrodepot.fr/', 6);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Types` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `Types`) VALUES
(1, 'Electroménager'),
(2, 'Informatique'),
(3, 'Jeux vidéos'),
(19, 'High-Tech');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(25) NOT NULL,
  `passe` varchar(25) NOT NULL,
  `admin` int(11) NOT NULL,
  `blacklist` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `passe`, `admin`, `blacklist`) VALUES
(1, 'admin', 'admin', 1, 0),
(2, 'leo', 'mdp', 0, 0),
(3, 'alex', 'mdp', 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
