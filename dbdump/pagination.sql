-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 10:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `github`
--

CREATE TABLE `github` (
  `id` int(3) NOT NULL,
  `repo` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `github`
--

INSERT INTO `github` (`id`, `repo`) VALUES
(1, 'absinthe'),
(2, 'activitypub-spike'),
(3, 'adavia-books'),
(4, 'advent-of-code-2018'),
(5, 'advent_of_code_2017'),
(6, 'ajax-react'),
(7, 'alp-fail'),
(8, 'apollo-handbook-examples'),
(9, 'apollo-handbook-examples-server'),
(10, 'apollo-link'),
(11, 'asciidoc-toolchain'),
(12, 'asciidoc_book_test'),
(13, 'asdf-nodejs'),
(14, 'auth_me'),
(15, 'awesome-elixir'),
(16, 'aws-cdk-intro-workshop'),
(17, 'banana'),
(18, 'barefoot'),
(19, 'bix'),
(20, 'book'),
(21, 'bugsnag-elixir'),
(22, 'buildkite-notifier'),
(23, 'bundler-audit'),
(24, 'by_star'),
(25, 'ca-ticketee'),
(26, 'capybara-example'),
(27, 'chronic'),
(28, 'circuit-ui'),
(29, 'cobber'),
(30, 'containerday'),
(31, 'controller'),
(32, 'cookie-monster'),
(33, 'copy_lion'),
(34, 'create-react-app'),
(35, 'cucumber-rails'),
(36, 'cycad'),
(37, 'db-query-matchers'),
(38, 'ddr_errata'),
(39, 'debugging_book_examples'),
(40, 'delayed_job'),
(41, 'discord-bot-for-gcp'),
(42, 'distance_of_time_in_words'),
(43, 'docker-elixir'),
(44, 'dot-files'),
(45, 'dropzone-example'),
(46, 'dry-core'),
(47, 'dry-equalizer'),
(48, 'dry-files'),
(49, 'dry-logic'),
(50, 'dry-rails'),
(51, 'dry-web-roda'),
(52, 'ecto'),
(53, 'elastic'),
(54, 'elastix'),
(55, 'elixir'),
(56, 'elixir-irc'),
(57, 'elixir-lang.github.com'),
(58, 'elixir_postgresql_bench'),
(59, 'epub-reader'),
(60, 'epub_gen'),
(61, 'event-sourcing-experiment'),
(62, 'example-pandoc-book'),
(63, 'exploding-rails-examples'),
(64, 'exploding-rails-rom-dry-example-app'),
(65, 'ex_doc'),
(66, 'factory-helper'),
(67, 'faker'),
(68, 'fans'),
(69, 'file-reader'),
(70, 'find_by_hash'),
(71, 'forem-rdiscount'),
(72, 'forem-redcarpet'),
(73, 'forem.heroku.com'),
(74, 'foreman'),
(75, 'free-programming-books'),
(76, 'fzf'),
(77, 'geckodriver-helper'),
(78, 'git-in-the-shell'),
(79, 'gogogo'),
(80, 'gol-react'),
(81, 'graphql-client'),
(82, 'guard-cucumber'),
(83, 'guides'),
(84, 'guides-1'),
(85, 'haml-rails'),
(86, 'hanami.github.io'),
(87, 'homebrew-core'),
(88, 'homepage'),
(89, 'houser'),
(90, 'http-test'),
(91, 'http_multipart_parser'),
(92, 'humanize'),
(93, 'i18n-404-repro'),
(94, 'jekyll-google-auth'),
(95, 'jep-capture'),
(96, 'jep-capture-phoenix'),
(97, 'jep-docker'),
(98, 'jep-mumble'),
(99, 'jep-poker'),
(100, 'jep-sinatra-app'),
(101, 'jep-sinatra-backend'),
(102, 'jep-surveyor'),
(103, 'jep-surveyor-docker'),
(104, 'jep-surveyor-graphql'),
(105, 'jep-toy-robot'),
(106, 'joyofelixir'),
(107, 'jquery'),
(108, 'jquery-rails'),
(109, 'just'),
(110, 'just-aliases'),
(111, 'just-rust'),
(112, 'logs'),
(113, 'logs-react'),
(114, 'logs.ex'),
(115, 'logs.ex-legacy'),
(116, 'lookup'),
(117, 'mail'),
(118, 'maintaining-rails-examples'),
(119, 'markdown_book_test'),
(120, 'messages-ruby-sdk'),
(121, 'mini_mime'),
(122, 'mong'),
(123, 'mongodb_ecto'),
(124, 'moolah'),
(125, 'mtg'),
(126, 'node-which'),
(127, 'numero'),
(128, 'oh-my-zsh'),
(129, 'omniauth'),
(130, 'ordinalize'),
(131, 'parcel-bundler-repro-2095'),
(132, 'phoenix'),
(133, 'phoenix-react-websocket-todo'),
(134, 'phoenix-views-example'),
(135, 'plug'),
(136, 'postbin'),
(137, 'promo'),
(138, 'rails'),
(139, 'rails-init'),
(140, 'rails-init-homebrew-tap'),
(141, 'rails3book_test'),
(142, 'railsbot'),
(143, 'railsbot-pinger'),
(144, 'railsbot.ex'),
(145, 'railsdevs.com'),
(146, 'railsforum'),
(147, 'rake'),
(148, 'ransack_demo'),
(149, 'rboard'),
(150, 'react-bnb-gallery'),
(151, 'react-jep'),
(152, 'react-select-debounce'),
(153, 'react-testing-library'),
(154, 'redis-rb'),
(155, 'refinery'),
(156, 'rom'),
(157, 'rom-rails'),
(158, 'rom-rb.org'),
(159, 'rom-sql'),
(160, 'ruby-advisory-db'),
(161, 'ruby-saml2'),
(162, 'rubyonrailsbook.com'),
(163, 'ryanbigg.com'),
(164, 'saas_book_errata'),
(165, 'saas_book_examples'),
(166, 'savon'),
(167, 'screencasts'),
(168, 'scrivener_elastic'),
(169, 'searcher'),
(170, 'selector'),
(171, 'service-vic-qr-code'),
(172, 'setup'),
(173, 'setup-homebrew-tap'),
(174, 'setup-rust'),
(175, 'Sinatra-MongoDB-RackTest'),
(176, 'sprockets'),
(177, 'sri'),
(178, 'statelint'),
(179, 'summer'),
(180, 'summer.ex'),
(181, 'surveyor'),
(182, 'surveyor-2'),
(183, 'surveyor-rom'),
(184, 'tailwindcss-rails'),
(185, 'test_factory'),
(186, 'thebiggwedding'),
(187, 'ticketee_51'),
(188, 'toy_robot_elixir'),
(189, 'toy_robot_example'),
(190, 'trickery'),
(191, 'twist'),
(192, 'twist-v2'),
(193, 'twist.ex'),
(194, 'vscode'),
(195, 'vscode-gitblame'),
(196, 'vscode-put-file-path'),
(197, 'webpack-example'),
(198, 'webpacker'),
(199, 'webpacker-typescript-css-modules'),
(200, 'wedding'),
(201, 'writing-an-interpreter-in-elixir'),
(202, 'yaml'),
(203, 'yaml-path-finder');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `github`
--
ALTER TABLE `github`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `github`
--
ALTER TABLE `github`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
