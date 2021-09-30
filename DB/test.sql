-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 30 2021 г., 11:19
-- Версия сервера: 10.6.4-MariaDB
-- Версия PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Qui', 'Id non eos in facilis aut. Sit est veritatis possimus. Enim omnis cupiditate sit in.', '2021-09-13 05:06:33', '2021-09-20 05:04:30', 'img/img_61545114d6523.jpg'),
(2, 'Exercitationem incidunt numquam non.', 'Laudantium sit laudantium quibusdam non quis excepturi aspernatur blanditiis. Nobis recusandae incidunt vel rerum voluptatem illum.', '2021-09-13 05:06:33', '2021-09-29 08:51:21', 'img/img_6154533981a4d.jpg'),
(3, 'Provident recusandae optio et at accusamus quisquam.', 'Laborum laboriosam adipisci alias ad at inventore nobis id. Est non voluptates corporis saepe quis possimus. Repudiandae vitae aut nam quo harum consequatur delectus qui.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(4, 'Dolorem aut saepe rerum corporis consequatur voluptates nulla eos iste quos.', 'Eveniet dolore tempora consequuntur atque. Ducimus qui neque rerum id ut. Nulla quisquam iure et quisquam in.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(5, 'Cupiditate sed placeat.', 'Optio quo corrupti fuga culpa sunt. Tempora aut facere eos explicabo est culpa. Laboriosam repellat est animi nostrum perspiciatis. Iure voluptas pariatur itaque exercitationem id.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(6, 'Quis corporis totam aut assumenda nihil.', 'Et ab qui corrupti eum maxime. Quisquam eum velit magni quos. Rerum et reprehenderit quaerat sunt. Officiis laboriosam voluptates iure ratione eos aut et itaque.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(7, 'Tempore ea molestias adipisci quaerat.', 'Id aut temporibus impedit provident inventore tempore quisquam maiores. Fugit dolorum sed voluptatum temporibus. Nemo rem rerum enim quas sunt et.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(8, 'Assumenda accusamus aliquid pariatur consequatur sapiente.', 'Quam est animi voluptatem temporibus molestiae minima. Iure est autem ipsa accusantium non ea consequatur.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', ''),
(9, 'At vel quia', 'Qui voluptatem aut est occaecati. Vel et quibusdam quia impedit est quam aut voluptatibus. Saepe aut molestiae iusto porro doloremque.', '2021-09-13 05:06:33', '2021-09-15 08:56:11', ''),
(10, 'Et natus velit', 'Sed illo explicabo qui sint alias voluptatem. Doloribus ullam sunt repudiandae quidem. Aut velit qui in magnam est maiores aut.', '2021-09-13 05:06:33', '2021-09-15 08:54:48', '');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('DRAFT','PUBLISHED','BLOCKED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `news_id`, `name`, `email`, `feedback`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'sss', 'gdfgdfgh@fhg', 'ghfdhyutfghj', 'DRAFT', '2021-09-20 04:09:41', '2021-09-20 04:15:09');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_11_163203_create_categories_table', 1),
(6, '2021_09_11_163243_create_news_table', 1),
(7, '2021_09_11_164510_add_status_field_in_news_table', 1),
(8, '2021_09_16_181223_create_feedbacks_table', 2),
(9, '2021_09_21_190236_add_is_admin_field_in_users_table', 3),
(10, '2021_09_25_163943_add_last_login_at_field_in_users_table', 4),
(11, '2021_09_25_174948_add_avatar_field_in_users_table', 4),
(12, '2021_09_30_092117_create_jobs_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('DRAFT','PUBLISHED','BLOCKED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `image`, `author`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Asperiores omnis autem et', 'img/img_61545469267c9.jpg', 'Heidenreich', 'Voluptas vero quia dolores aspernatur. Numquam sunt dolorem id molestiae aliquam nam.', '2021-09-13 05:06:33', '2021-09-20 09:46:37', 'DRAFT'),
(2, 1, 'Blanditiis tenetur odio rem aut omnis aliquid corporis.', 'img/img_615458a50f8df.png', 'Dibbert', 'Voluptatem qui omnis ipsum facere. Culpa debitis omnis dolorum aut consequatur rerum. Totam ratione et eos quasi unde.', '2021-09-13 05:06:33', '2021-09-29 09:14:29', 'DRAFT'),
(3, 1, 'Voluptatem in fugit eum.', NULL, 'Sipes', 'Sit sapiente eum quo esse dignissimos vero eos. Sapiente ex dignissimos alias est. Et sint sunt ut voluptas. Doloremque omnis et autem rerum vel beatae.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(4, 1, 'Alias recusandae modi officiis iure doloribus.', NULL, 'Hansen', 'Voluptates dolorem alias cumque non facilis perferendis. Neque dolore corrupti blanditiis fugit molestiae est dolor.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(5, 1, 'Quidem voluptatem et ut accusantium consequatur voluptatum est vero qui doloremque dolores unde.', NULL, 'Steuber', 'Necessitatibus magni minima fugit. Quibusdam in ad aut. Itaque accusantium qui debitis nulla qui. Quo veniam architecto illum sunt.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(6, 1, 'Tempora sequi facere possimus molestiae totam sed fuga sint.', NULL, 'Shanahan', 'Doloribus earum iure vero deserunt adipisci. Nulla optio ullam quam occaecati rerum voluptas. Sed et accusantium ipsam eaque. Voluptatibus explicabo sed molestiae id dicta.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(7, 1, 'Rem nihil hic qui est tenetur.', NULL, 'Labadie', 'Est laudantium sit sint sed labore quia mollitia. Excepturi id et labore. Amet sit nostrum atque.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(8, 1, 'Aut et', NULL, 'Emmerich', 'Qui sit consectetur ex et fugit. At modi ut omnis porro. Odio perferendis repudiandae at qui aut. Neque aliquam fuga neque rerum eius non.', '2021-09-13 05:06:33', '2021-09-20 09:45:45', 'DRAFT'),
(9, 1, 'Voluptatum in qui deserunt praesentium voluptas.', NULL, 'Champlin', 'Eveniet unde quis ducimus quidem. Est expedita et sint beatae animi voluptatem voluptate. Cum molestias molestiae a neque rerum soluta.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(10, 1, 'Aliquam possimus laudantium aut voluptates quam accusantium quia laborum.', NULL, 'Littel', 'Labore ut corporis sint harum. Molestias eaque quos eos ex quo soluta et. Aliquid cumque maxime et voluptas.', '2021-09-13 05:06:33', '2021-09-13 05:06:33', 'DRAFT'),
(15, 2, 'Skoda вывела на тесты универсал Skoda Superb нового поколения', NULL, 'Яндекс.Новости: Авто', 'Компания Skoda приступила к тестам нового поколения флагмана Superb. В этом уверен читатель чешского издания Auto.cz, который сфотографировал прототип на дороге и заодно смог не только рассмотреть его, но и послушать.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(16, 2, 'Genesis представил свой первый электрический кроссовер Genesis GV60', NULL, 'Яндекс.Новости: Авто', 'Компания Genesis раскрыла характеристики своего первого серийного электромобиля – кроссовера GV60. Новинка, построенная на одной платформе с Ioniq 5 от Hyundai и EV6 от Kia, получила три модификации с запасом хода от 400 до 451 километра.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(17, 2, 'В Китае дебютировал новый летающий автомобиль Pegasus с вертикальным взлетом', NULL, 'Яндекс.Новости: Авто', 'На аэрокосмической выставке в китайском Чжухае состоялась премьера нового летающего автомобиля. Машина, названная Pegasus, может вертикально взлетать и приземляться, развивая скорость до 160 км/ч в воздухе и до 120 км/ч на земле.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(18, 2, 'В Нижнем Новгороде протестировали электромобиль Audi e-tron Sportback', NULL, 'Яндекс.Новости: Авто', 'В рамках мероприятия гости центра могли протестировать новые Audi в различных заездах. Им помогали профессиональные инструкторы школы quattro. На автошоу был представлен электрокар Audi e-tron Sportback.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(19, 2, 'Компания Jeep представила обновленный Jeep Grand Cherokee 2022', NULL, 'Яндекс.Новости: Авто', 'Компания Jeep представила флагманский внедорожник Grand Cherokee пятого поколения, который появится в России в середине 2022 года, а в США – до конца 2021-го. В представлении производителя этот Grand Cherokee стал «самым совершенным, роскошным и подготовленным к бездорожью» за всю его историю.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(20, 2, 'Число угонов автомобилей в России снизилось на 20% за 9 месяцев 2021 года', NULL, 'Яндекс.Новости: Авто', 'В России стали реже угонять автомобили. По данным «Страхового дома ВСК», число зарегистрированных автоугонов за 9 месяцев 2021 года снизилось в среднем на 20% по сравнению с аналогичным периодом годичной давности.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(21, 2, 'Новые кроссоверы подорожали в 3 раза за последние 10 лет на авторынке в РФ', NULL, 'Яндекс.Новости: Авто', 'Стало известно о том, что самые популярные кроссоверы на рынке РФ стали дороже за последние 5 лет примерно на 51—60%. Об этом сообщили эксперты Цена Авто, проведя аналитику минимальных цен (базовых комплектаций) на самые популярные иномарки сегмента SUV за последние 5 лет.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(22, 2, 'Goodyear представляет новые зимние шины UltraGrip Arctic 2', NULL, 'Яндекс.Новости: Авто', 'Goodyear расширяет линейку зимних шин и представляет новую шипованную модель UltraGrip Arctic 2 для легковых автомобилей, кроссоверов и внедорожников. Шины, которые уже можно купить в России, отличаются рядом технологичных решений, позволяющих увереннее чувствовать себя на зимней дороге.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(23, 2, 'BMW против большого запаса хода электрокаров', NULL, 'Яндекс.Новости: Авто', 'Руководитель компании отметил, что бренд не будет увеличивать запас хода на одной зарядке батареи. Запас хода у баварских авто будет зависеть от сегмента машины. Например, городскому хэтчбеку дадут меньше 600 км, а лифтбек сможет похвастаться большим запасом хода.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(24, 2, 'В России начались продажи экстремальной версии пикапа Isuzu D-Max', NULL, 'Яндекс.Новости: Авто', 'Компания «Исузу Рус» начала продажи экстремальной версии пикапа Isuzu D-Max Arctic Trucks, премьера которого состоялась в рамках Международной выставки Comtrans’21.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(25, 2, 'Обновленная модель LADA Vesta FL может появиться в продаже в феврале 2022 года', NULL, 'Яндекс.Новости: Авто', 'Старт продаж, если верить инсайдерам, запланирован на февраль 2022 года, но удастся ли АвтоВАЗу уложиться в эти сроки, неизвестно — многое будет зависеть от поставщиков.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(26, 2, 'Эксперты сравнили новую Lada Vesta и BMW X1 с пробегом и сказали, какое авто лучше', NULL, 'Яндекс.Новости: Авто', 'Эксперты издания &quot;За рулем&quot; сравнили две абсолютно разные машины — новую Lada Vesta SW Cross и подержанную BMW X1. В ходе проверки они выделили слабые места каждого автомобиля и объяснили, какой лучше приобрести. Оба авто стоят примерно 1,2 миллиона рублей.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(27, 2, 'Гиперкар Farnova Othello сможет разгоняться за 1.9 секунды', NULL, 'Яндекс.Новости: Авто', 'Как сообщает производитель, двухдверный автомобиль Othello способен разгоняться до 100 км/час всего за 1.9 секунды. На полном заряде гиперкар проезжает до 600 км. Максимальная скорость ограничивается отметкой 420 км/час.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(28, 2, 'Показан новый прототип электрического Atlis XT', NULL, 'Яндекс.Новости: Авто', 'Компания Atlis Motor Vehicles представила новый прототип электрического пикапа XT.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(29, 2, 'Марка Lucid Motors начала серийное производство электрических седанов Air', NULL, 'Яндекс.Новости: Авто', 'Американский стартап Lucid Motors приступил к серийному производству электромобилей Air (представительский седан) — с конвейера Каса-Гранде (штат Аризона) 28 сентября сошли первые товарные экземпляры модели, пишет drom.ru. Напомним, прототип Air был представлен еще в 2016 году.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(30, 2, 'Rolls-Royce Spectre станет первым электромобилем марки', NULL, 'Яндекс.Новости: Авто', 'Rolls-Royce придерживается общемировой тенденции и тоже готовится к переходу на электротягу. Причем компания пропустит фазу гибридов, о чем ее глава Торстен Мюллер-Отвос заявлял еще четыре года назад, и сразу выпустит полноценный электромобиль.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(31, 2, 'Nissan Qashqai и Mazda RX-8 вошли в рейтинг самых ненадежных автомобилей с пробегом', NULL, 'Яндекс.Новости: Авто', 'Что касается других моделей, то высокий расход масла позволяет относить к ненадежным Chevrolet Spark/Matiz, постоянные поломки привода ГРМ у двигателя 1.4 MPI – Dacia Logan, срок службы моторы в 100 тысяч километров – Mazda RX-8, проблемы с автоматической коробкой передач – Citroen C5, а нестабильная электроника – Land Rover Range Rover Sport.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(32, 2, 'Mercedes-Maybach S-Class получил специальную версию в честь 100-летия бренда', NULL, 'Яндекс.Новости: Авто', 'В честь 100-летия c момента выпуска первой серийной модели Maybach компания Mercedes-Benz представил лимитированную серию Mercedes-Maybach S-Class Edition 100. Юбилейный седан основан на модификации S 680 с двигателем V12, и будет выпущен в количестве ста штук.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(33, 2, 'Компания Peugeot представила на российском рынке новую версию модели Peugeot Expert', NULL, 'Яндекс.Новости: Авто', 'В октябре 2021 года дилеры Peugeot в России начнут продажи новой пассажирской версии фургона Peugeot Expert – Бизнес-купе. Новинка построена на базе удлиненного кузова (L3, 5306 мм), она будет доступна у нас по цене от 2 609 000 рублей до 3 679 000 рублей в зависимости от трансмиссии и типа привода.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(34, 2, 'В Евросоюзе второй месяц подряд падают продажи коммерческих машин', NULL, 'Яндекс.Новости: Авто', 'По данным ассоциации, спад продаж коммерческой техники на авторынке ЕС наблюдается уже второй месяц подряд. Так, в июле 2021 года дилеры в Евросоюзе реализовали на 12% меньше таких автомобилей по сравнению с аналогичным периодом прошлого года.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT'),
(35, 2, 'Volkswagen Teramont вернулся в Россию после рестайлинга', NULL, 'Яндекс.Новости: Авто', 'Семиместный Atlas/Teramont обновился в феврале 2020 года на американском заводе в Чаттануге, где собираются и машины для России. В январе 2021-го Volkswagen пообещал начать продажи весной, но открыл приём заказов только сегодня.', '2021-09-30 08:14:15', '2021-09-30 08:14:15', 'DRAFT');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `last_login_at`, `avatar`) VALUES
(1, 'admin', 'programmer-tm@yandex.ru', NULL, '$2y$10$mZ0YCCReLd9TLnVa07R6tOlgS6GlGDXYdPcqdN4.VmL3HELJtIbHi', NULL, '2021-09-22 10:12:55', '2021-09-22 10:12:55', 1, '2021-09-30 08:51:22', 'img/img_615444bd71c1c.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_news_id_foreign` (`news_id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
