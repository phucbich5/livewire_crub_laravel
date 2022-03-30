-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 30, 2022 lúc 04:31 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `livewire_email`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `audiences`
--

CREATE TABLE `audiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `audiences`
--

INSERT INTO `audiences` (`id`, `name`, `email`, `source`, `status`, `note`, `created_at`, `updated_at`) VALUES
(53, 'IHBSXHuiQn', '4T8HgdEpY9@gmail.com', 'wKdswQiJhG', 'active', 'flT0OlFw3q', NULL, NULL),
(184, 'fqwuLNJOCk', 'RrW9DiVB8A@gmail.com', 'o0n6w0y0ac', '1', '0rYC9NhNoM', NULL, NULL),
(233, 'lN4KLlR2Bp', '8M0kloUpsR@gmail.com', 'mEhHegwdKw', 'y', 'X40Nt1cy9L', NULL, NULL),
(234, 'sS4Fy166aa', 'gqNzCbLslG@gmail.com', 'bzpeetZ6L4', 'G', 'bHJWKjQtVG', NULL, NULL),
(235, 'OpdnJtLldF', 'PDCTwPffWz@gmail.com', 'NFZJTfcnoq', '5', 'lp4mLIJFPD', NULL, NULL),
(236, 'Jl7Xx5Xgem', 'm43UZjnkI5@gmail.com', '6mwTxuAP6I', 'p', 'LTUfRb2Rhz', NULL, NULL),
(237, 'zMxcNhWuGq', 'tM4Q9sbF4t@gmail.com', 'cxDbJ1zmbM', '4', 'EtgrcGPbGn', NULL, NULL),
(238, 'ofVrqPRBgh', 'yFyLDrv2Qg@gmail.com', '1knOQIfoop', 'i', '5sUAj6SM5e', NULL, NULL),
(239, 'rAOTczC8ba', 'S1uehymITR@gmail.com', '6AT3lzyrp6', 'h', 'g4Lct6bbyg', NULL, NULL),
(240, 'NJL1DYapAa', 'Aw8YF0bkAO@gmail.com', 'APy5DMqxJx', '4', 'XMCrqSSYgQ', NULL, NULL),
(241, 'JH8NNTAMyj', 'BZX7uofgQ1@gmail.com', 'bNfiCFI19n', 'm', 'UhqMDNwDtU', NULL, NULL),
(242, 'tYqQETrLHC', 'd4LdRy6hpa@gmail.com', 'KcfXNFuzHB', 'm', 'GUiFG6Abtc', NULL, NULL),
(243, 'wkeTUeSqeS', 'SLuIWWmjxk@gmail.com', '1UAvshlHQB', 'I', 'y9DuwNPVBO', NULL, NULL),
(244, 'q1G8iZmEq2', 'WglLUJGX5V@gmail.com', '3Bd9rMYwiF', 'C', 'lvFjaU5rNc', NULL, NULL),
(245, 'Lx5RY4PXa3', 'EwR5OUS9TA@gmail.com', 'xBCdZHi5XK', 'S', 'MaRAqdPaEi', NULL, NULL),
(246, 'e9Ml3Ldo5a', 'ohDflf8cNN@gmail.com', 'JSZDimUHJ0', 'r', 'VvhDRlYxLr', NULL, NULL),
(247, 'SyS15Hr3Ld', '8OeUjvASpa@gmail.com', 'pj8ZR3VQzl', 'f', 'sY4ZMAf2rH', NULL, NULL),
(248, 'FL6QGWBXBe', 'ZrC5k3haEC@gmail.com', 'YTiCABAHV1', 'z', 'tXFa0qjidK', NULL, NULL),
(249, 'a3blJAJr6r', 'yKeNYuzwsv@gmail.com', 'CMFyLTDtN4', 'P', 'Ah6QmZqUR4', NULL, NULL),
(250, 'IkOKoi3BAx', 'HhcdtUI9pu@gmail.com', 'SdMi5RO6qA', 'Q', 'QBKoGPaZ3Q', NULL, NULL),
(251, 'LKxAmPUTDH', 'zJtw6z34ez@gmail.com', 'Z8ZoZdQjeB', 'R', 'QueCecSTF4', NULL, NULL),
(252, 'XyQWwyT9o1', 'pGDbGZXKoq@gmail.com', '7brUI8mvHz', 's', 'SWz8hH9iVt', NULL, NULL),
(253, 'tHXGrAsGdy', 'ip7dv1LMri@gmail.com', 'geJ90RuylB', 'O', 'OtzSwjK4b9', NULL, NULL),
(254, '4JSTbUpADS', 'TjBM3ud51w@gmail.com', 'HrsCc93NEt', 'F', 'Bqn6LyzoVM', NULL, NULL),
(255, 'QYNvT7xwYX', 'mYa3xD9odE@gmail.com', 'vlUXzLjjdc', 'h', '8jOq0xtiUQ', NULL, NULL),
(256, 'ewEkd2qj1v', 'Z98MCXfcWF@gmail.com', 'vEKUov0Cqj', '0', 'yn7zp4Rthu', NULL, NULL),
(257, 'w0n5JsqIp2', '09SheivfDN@gmail.com', '7L79AgoDzP', 'b', 'KWKmhx1uoj', NULL, NULL),
(258, 'BKw5d64i8Q', 'PdO4BUcqyL@gmail.com', 'VhRqHUWYQV', 'G', 'ucy3HHeeYV', NULL, NULL),
(259, 'H03Jo1z5Q8', 'KchELUozPi@gmail.com', 'PTguaKc4wh', 'Y', 'RtC5FdWlxf', NULL, NULL),
(260, 'whYJ8zdkmO', 'oupkWn4ngh@gmail.com', 'MOKkRg2nUU', 'O', 'Bwi46KtpmX', NULL, NULL),
(261, 'XY1zRmIRi0', 'pdHtiuh8DH@gmail.com', 'NF55FG5INM', 'i', 'vBoDCCBt5a', NULL, NULL),
(262, 'at6xbLTJVa', 'GEBjPZ10jU@gmail.com', 'JzzLJeyxZU', '4', 'PxJ3A4XdhY', NULL, NULL),
(263, 'yMaaVRed2u', 'Z0RZdkyfxV@gmail.com', 'KqkqBPNgw1', 'q', '0MOwvIer2m', NULL, NULL),
(264, 'iQ3dt9JISA', 'tdMQZeypeR@gmail.com', 'BDRN28XHm3', '0', 'IY9n2aOppc', NULL, NULL),
(265, 'vaU0mQkeNq', 'RNqfk8tOVK@gmail.com', 'pl4yU33aa1', 'b', '9K1IA1jNSH', NULL, NULL),
(266, 'KcoKxqYaiA', 'R21f0UF05O@gmail.com', 'KRGrAPrqFL', 'p', 'huPZYRIiin', NULL, NULL),
(267, '4B4yYQQt1V', 'FLrGVvm1SC@gmail.com', 'JjJsM7XZS8', 'f', 'ApyTAF7oU2', NULL, NULL),
(268, 'Z128MWEiri', 'VdrWUwsijg@gmail.com', 'XOWmbyamTg', '3', 'hL5yyDxMGW', NULL, NULL),
(269, 'ZkJouut8xy', 'tAffgUWoJu@gmail.com', 'rGCiuR2CJV', 'f', 'odbkGJUaKD', NULL, NULL),
(270, 'EfTMDOQjO4', 'lpDGLGjasr@gmail.com', 'HcqUGN0cLF', 's', 'ItjXwRSFCb', NULL, NULL),
(271, 'I7Rb3pHTpO', 'zwv5ZSmpBg@gmail.com', 'gEhhx5YSLB', 'a', 'oYXo5jAbqs', NULL, NULL),
(272, 'N8L23wq4Ku', 'xVQqYTccVD@gmail.com', 'FkjuayP7Sm', 'y', '0NIUjo62zV', NULL, NULL),
(273, 'MrsD8tWsC5', 'Htlj6afVbK@gmail.com', 'AjE1m2bmEd', 'Y', 'gRujPdYCGG', NULL, NULL),
(274, '3gPwl98Fzy', 'Kp1WppPtG5@gmail.com', 'PcegoiyzM3', 'v', 'WKK5ldrZXJ', NULL, NULL),
(275, 'a6LtwAqRcr', 'xyScSZV6Ld@gmail.com', 'kRvJiliH2P', 'J', 'VxqehFPZDM', NULL, NULL),
(276, '9SS8UgkMJv', '2zcFl5JozF@gmail.com', 'x2cr2cH0rD', 'C', 'hjljDwY1Kl', NULL, NULL),
(277, 'tmtZ5jre4j', '4j09UEli1C@gmail.com', 'odBBRKqdJt', '2', 'Sj3OGf8mDJ', NULL, NULL),
(278, 'rez2imhlz1', 'BGRPwvMasz@gmail.com', 'YtzbFaBFsm', 'z', 'PruJF4zuBK', NULL, NULL),
(279, 'Zws4zS1GDv', 'mPDR8F8pTj@gmail.com', 'EAkudIRLcs', '9', 'mCe6ymlMqd', NULL, NULL),
(280, 'ck1jvYOPoV', 'EYhtLyan9X@gmail.com', 'JRxM31W80W', 'z', 'zgXyMaxUXg', NULL, NULL),
(281, 'LHakDmjUII', 'rJPmrLAxoC@gmail.com', 'CP4rIORClg', 'T', 'WsuV6nzy1D', NULL, NULL),
(282, '0GZ1bzVSQ7', 'G5knX56B7e@gmail.com', 'Mvv0mvmrhd', 'd', 'Y9wG3afKVP', NULL, NULL),
(283, 'L9eIhbrcQa', 'AZrkcKlWJJ@gmail.com', 'oSxtKPOnew', 'Q', 's9xUZVEkaJ', NULL, NULL),
(284, 'zj5Yp2AD2t', '5Pwuxx57kE@gmail.com', 'SoFcbUziNt', '3', 'P2ZJEEoKPR', NULL, NULL),
(285, 'eePfElWG8e', 'YcYQq2vrtx@gmail.com', '87lGb4R5dP', 'i', 'thIroK8M4u', NULL, NULL),
(286, 'gsJVOrOagW', 'M7pqXcauRE@gmail.com', 'v0Li9Gn0iU', '0', 'r3KSFpzCnN', NULL, NULL),
(287, 'WvAZNbBHmI', 'PlwLV1kQwp@gmail.com', 'R9vQyX1EJh', 'x', 'Ed38Awoihj', NULL, NULL),
(288, 'spCCg0yds6', 'd95E4J2q9D@gmail.com', 'YL9hRhC39f', '1', 'XIhhAowJ3q', NULL, NULL),
(289, 'jclrKhRp22', 'ZFrtObLGFb@gmail.com', 'zZ4Jidj0dF', 'Q', 'JCxGGZ7ruF', NULL, NULL),
(290, 'KaBqezGWJy', 'YZJ3GzRRk8@gmail.com', 'VteFafj2Qy', 'S', 'OuTvdo0mrZ', NULL, NULL),
(291, 'Yjvf5PDzC3', 'fq6x4bBrcI@gmail.com', 'B5OisEgG8b', 'f', 'vcd0ZqIH35', NULL, NULL),
(292, '5LpuyOHKyf', 'ftXiXyNboo@gmail.com', 'E8etbfsoQ7', 'E', '608pI98DN0', NULL, NULL),
(293, 'Gk85g82UjL', 't4VqmPBX1a@gmail.com', '30qJ4fxkws', 'i', 'dPcctbfaAa', NULL, NULL),
(294, '2BTJRT8POj', 'cBxjOTPEJ7@gmail.com', 'X5x9aX7pKy', 'A', 'WPrqSuHAWF', NULL, NULL),
(295, 'OfnnYBxWgo', 'HJ8KOHVupV@gmail.com', 'bABnHImZdE', 'L', 'bVjT2QwcZe', NULL, NULL),
(296, 'fuaGF3HwZr', 'YXOZALv6zQ@gmail.com', 'nLzn7w3SlT', 'L', 'ezBAuJVr9e', NULL, NULL),
(297, 'YLYj0dC5DL', 'eUdmbBOGkb@gmail.com', '7LIW2AmEDF', 't', '2ITNR2NxOQ', NULL, NULL),
(298, 'EkYDaFY2Uv', 's6zIrAFUaq@gmail.com', '0OcoTUwSsw', 'x', 'MfdBqQrMNy', NULL, NULL),
(299, 'x7PBiWsjbF', '6eVMdb9j7D@gmail.com', 'KPE6fN0UaC', 'e', '4Zu779BfJN', NULL, NULL),
(300, 'Q3G5j9UQOT', 'XKU4OfRyXL@gmail.com', '2LWG7QGlsQ', 'Y', 'O3pknrYBdJ', NULL, NULL),
(301, 'DJQz7cP6zE', 'EqqcjSp18Y@gmail.com', 'zhQiOgq1K5', 'J', 'LSNoPWP4KR', NULL, NULL),
(302, '8MGtaBztyc', '3CQ7EAclPq@gmail.com', 'QkDdvhsrSA', 'm', '3bMZbAC3pQ', NULL, NULL),
(303, 'TZGA0WSlOM', 'ZtPxZOAeeq@gmail.com', 'zT11j5zj8m', '4', '1A5fEIKrq9', NULL, NULL),
(304, 'xLNE7DGwF8', 'f40TQeEh4E@gmail.com', 'osakvVDSb3', 'X', 'MnIBzGGWp1', NULL, NULL),
(305, 'qwcXfzNXzR', 'DQKMprldhP@gmail.com', 'aDh0lL7PMi', 'k', 'e8NhNfTdX8', NULL, NULL),
(306, 'EPJ7Vm8Ljh', 'mAsgEPphQJ@gmail.com', 'p0FYNnlGKd', 'O', 'zdvEEAM2IA', NULL, NULL),
(307, 'wFX9p5xMTD', 'bFGAWrBEAP@gmail.com', 'uxWmgfXcgY', 'g', 'fHNpbQkoAR', NULL, NULL),
(308, 'lYwIrCfSQd', 'rqJ9vAmzA8@gmail.com', 'Sq8I8mwczQ', 's', 'jchYZUU2TB', NULL, NULL),
(309, 'tNle2FXUML', 'JDp1J2NbwJ@gmail.com', 'keOYtCKAMn', 'X', '01viVJrzKM', NULL, NULL),
(310, 'CfNZedI5X9', 'ZbjMuxJd1m@gmail.com', 'vt86Pu52Ju', 'S', 'SBbxOpgMTP', NULL, NULL),
(311, 'UxkUVStIQQ', 'h6jQCSmTJp@gmail.com', 'POhlOYztrE', 'K', 'ZlU7XIymlF', NULL, NULL),
(312, 'W3dHU1i1A1', 'Bee5EqD2Ez@gmail.com', 'Udxeg5iYV4', 'h', '3Qcyktwu1Z', NULL, NULL),
(313, 'DUJYGGBNAQ', 'aT6KbQKZti@gmail.com', 'ArVTzkL8VY', '9', 'xEoDlEuvkN', NULL, NULL),
(314, 'xfnZCBfI0P', 'YsvmBtagQt@gmail.com', 'XzDK3opOzF', 'O', 'onijioQLFd', NULL, NULL),
(315, 'iHpY2gupR7', 'LsDvREB9DT@gmail.com', 'puQHKOJgMP', 't', 'FjpkWUyCA9', NULL, NULL),
(316, 'JHbNvoY34Z', 'pGx3h3YcJA@gmail.com', '6LS0uAuRTN', 'h', 'fsmoYeeYJl', NULL, NULL),
(317, 'ZRWBRrXXJz', '9izRNULpmv@gmail.com', '575cTWF2y7', 'w', '5RKcDzyllB', NULL, NULL),
(318, 'i25IMOUpx8', 'LTLEssvrss@gmail.com', 'y8uudvsnnP', 'P', 'oQXJcWxoA6', NULL, NULL),
(319, '8qCr0FxOQ1', 'k37JCzdVrn@gmail.com', 'liZtK3OOlG', 'P', 'cq91zrkxcG', NULL, NULL),
(320, 'oP9cP5qhWo', 'xg7Ug78HZI@gmail.com', 'bbd5qcOvbW', 'r', 'Kk5B6Ucfi8', NULL, NULL),
(321, 'oLIeYcXmhz', 'GchndmQmfX@gmail.com', 'vwXa1acNIb', 'b', 'vpyMlnsK6m', NULL, NULL),
(322, 'rAU28NsDKu', 'ukM5dhMM81@gmail.com', 'UNW7laPgtS', 'D', 'HUhcfFU8po', NULL, NULL),
(323, 'vyQb2mFLQ4', '1nIK6PLLej@gmail.com', 'ZrSUyD1iJu', '4', 'dF3vnvngVJ', NULL, NULL),
(324, 'XmzMBUc0Hx', 'yteQEAu3OK@gmail.com', 'tmcFW182LT', 'Q', '1Ux4uADqaU', NULL, NULL),
(325, 'TS6sUyTZh9', 'Ek5DafiNXy@gmail.com', '54voJIlPqr', 'B', 'kBmEBGQqRO', NULL, NULL),
(326, 'smvuDgIkVW', 'mIfgkCjtzj@gmail.com', 'IPN3yjDWni', 'X', 'vh0SJLmm9M', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `template`, `audience`, `status`, `created_at`, `updated_at`) VALUES
(18, 'ewedewf', 'qasdc', 'bich', '1', '2022-03-07 23:43:05', '2022-03-07 23:43:05'),
(19, 'e2e', '2', 'bich', '1', '2022-03-07 23:43:49', '2022-03-07 23:43:49'),
(20, 'Bich', 'name', 'bich', '1', '2022-03-07 23:55:32', '2022-03-07 23:55:32'),
(21, 'ưad', 'ewewf', 'bich', '1', '2022-03-07 23:55:41', '2022-03-07 23:55:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_07_042434_create_table_audience_table', 1),
(6, '2022_03_07_044447_create_contacts_table', 1),
(7, '2022_03_07_151811_create_table_campigns_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `audiences`
--
ALTER TABLE `audiences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `audiences_name_unique` (`name`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaigns_name_unique` (`name`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `audiences`
--
ALTER TABLE `audiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
