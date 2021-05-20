-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 20 mai 2021 à 11:40
-- Version du serveur :  10.5.9-MariaDB-1
-- Version de PHP : 7.4.15

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
-- Structure de la table `association_type_site`
--

CREATE TABLE `association_type_site` (
  `idSite` int(11) NOT NULL,
  `idType` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `association_type_site`
--

INSERT INTO `association_type_site` (`idSite`, `idType`) VALUES
(1, 1),
(2, 2),
(2, 7),
(2, 9),
(2, 13),
(3, 7),
(3, 9),
(3, 12),
(4, 1),
(5, 10),
(5, 18),
(6, 7),
(6, 9),
(7, 7),
(7, 9),
(1, 1),
(2, 2),
(2, 7),
(2, 9),
(2, 13),
(3, 7),
(3, 9),
(3, 12),
(4, 1),
(5, 10),
(5, 18),
(6, 7),
(6, 9),
(7, 7),
(7, 9),
(1, 1),
(2, 2),
(2, 7),
(2, 9),
(2, 13),
(3, 7),
(3, 9),
(3, 12),
(4, 1),
(5, 10),
(5, 18),
(6, 7),
(6, 9),
(7, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `Note` float NOT NULL,
  `Commentaire` varchar(500) NOT NULL,
  `NbVotes` float NOT NULL,
  `Note_moyenne` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `idProduit` int(11) NOT NULL,
  `nomProduit` varchar(40) NOT NULL,
  `nutriscore` int(11) NOT NULL,
  `idType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Url` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `Name`, `Url`) VALUES
(1, 'Amazon', 'amazon.fr'),
(2, 'Auchan drive', 'auchan.fr'),
(3, 'TopAchat', 'topachat.com'),
(4, 'Le Bon Coin', 'leboncoin.fr'),
(5, 'Trivago', 'trivago.fr'),
(6, 'Boulanger', 'boulanger.fr'),
(7, 'Darty', 'darty.com');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `Types` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `Types`) VALUES
(1, 'Tous '),
(2, 'Alimentaire'),
(3, 'Accessoires'),
(4, 'Bricolage'),
(5, 'Chaussures'),
(6, 'Décoration'),
(7, 'Electroménager'),
(8, 'Films'),
(9, 'Informatique'),
(10, 'Hôtels'),
(11, 'Jardinage'),
(12, 'Jeux vidéos'),
(13, 'Jouets'),
(14, 'Livres'),
(15, 'Meubles'),
(16, 'Véhicules'),
(17, 'Vêtements'),
(18, 'Voyages');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `passe` varchar(25) NOT NULL,
  `admin` int(11) NOT NULL,
  `blacklist` int(11) NOT NULL,
  `couleur` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `passe`, `admin`, `blacklist`, `couleur`) VALUES
(1, 'leo', 'mdp', 1, 0, 'red'),
(2, 'alex', 'mdp', 1, 0, 'pink'),
(3, 'Thomas', 'web1', 0, 0, 'green'),
(4, 'Luc', 'lll', 0, 1, 'purple');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`idProduit`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
