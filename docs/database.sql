-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 23, 2020 at 02:36 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_odschool_blog_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `slug`, `contenu`, `image`, `created_at`, `updated_at`, `users_id`) VALUES
(1, 'Qu\'est-ce que le Lorem Ipsum?', 'quest-ce-que-le-lorem-ipsum', '<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\r\n\r\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\r\n\r\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>', 'creation-site-web-5eb9638036685401797967.jpg', '2020-05-11 16:38:56', '2020-05-11 16:38:56', 3),
(2, 'Pourquoi l\'utiliser?', 'pourquoi-lutiliser', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pellentesque sit amet nisi et ullamcorper. Donec dictum ipsum urna, sit amet blandit lacus tincidunt sit amet. Integer rhoncus lorem ipsum, in consequat nulla tempus a. Etiam ut tellus a nisl semper posuere. Ut sodales finibus tellus, a facilisis dolor. Nunc vel pharetra leo. Suspendisse ultrices gravida magna.</p>\r\n\r\n<p>In elit purus, placerat et vehicula ac, eleifend quis purus. Integer et pretium diam. Proin elit erat, congue at accumsan non, aliquet nec tellus. Sed pretium eros sed purus dictum, sit amet sagittis justo posuere. Sed non nunc nisl. Sed vel felis at ipsum venenatis pretium ut a lectus. Cras tempor rutrum nunc, eget euismod massa cursus ut. Phasellus interdum orci et congue tincidunt. Maecenas ut tempus elit. Nam eleifend nulla at eleifend commodo. Etiam non purus convallis, faucibus metus ac, congue ligula. Maecenas quis venenatis ipsum, ac ornare sem. Ut nibh turpis, semper ut leo quis, cursus ornare purus. Fusce eu justo condimentum, feugiat erat a, aliquet odio. Pellentesque at semper lacus.</p>\r\n\r\n<p>Pellentesque eu orci tempor, malesuada magna ac, efficitur ex. Curabitur at pharetra turpis. In ac dolor a velit volutpat venenatis sed ac risus. Nullam non ante ac augue venenatis aliquet. Curabitur nec ipsum in dolor blandit rhoncus. Nullam et dui sed lorem efficitur fermentum. Fusce iaculis lectus vel eros lobortis, non vehicula nulla consequat. Pellentesque velit velit, molestie vel enim a, ultrices venenatis leo. Donec id dictum quam.</p>\r\n\r\n<p>Vestibulum sed arcu porta arcu gravida finibus nec in nibh. Ut dapibus venenatis est in faucibus. Quisque sed turpis ac eros maximus dignissim. Duis eleifend ut turpis finibus dignissim. Vivamus pellentesque eu nunc at tempus. Morbi et suscipit mauris, ac convallis leo. Ut vel nisl vulputate, rutrum justo et, efficitur ante. Aliquam erat volutpat. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis turpis vitae risus pharetra, quis rhoncus orci fringilla. In molestie mattis cursus. Cras at est sed lorem commodo facilisis et et sapien. Vivamus vel massa eget orci sodales dignissim. Vivamus tempus nisi pharetra, mollis orci vel, consequat orci. Sed commodo pharetra arcu. Phasellus sed blandit elit. Vestibulum vehicula, lacus sit amet sagittis dignissim, velit mi ornare velit, tincidunt feugiat sem odio eget augue. Duis posuere, mauris porta placerat eleifend, nisl tellus efficitur leo, in consectetur ligula est at libero. Quisque non pharetra velit, aliquet imperdiet elit.</p>\r\n\r\n<p>Maecenas quis augue placerat, euismod ex finibus, venenatis ipsum. Phasellus ultrices enim vitae viverra porta. Nam justo odio, sollicitudin in sem non, cursus imperdiet massa. Vestibulum massa arcu, semper ut leo sit amet, pulvinar venenatis ipsum. Nullam vitae congue lacus. Maecenas interdum interdum urna, a laoreet augue rhoncus a. Nulla elementum tristique vestibulum. Praesent laoreet ultricies finibus. Vestibulum consequat sem quis nisl iaculis gravida. Nam sed bibendum urna. Suspendisse convallis eros magna, a ullamcorper eros egestas at. Nunc tristique sapien nulla, at porta tellus elementum sit amet. Nam dignissim tellus id lacinia varius. Duis molestie ultricies ipsum non sollicitudin.</p>\r\n\r\n<p>Etiam ut lacus in velit maximus ultrices. Nam ultrices lectus mi, sed pharetra neque fringilla sed. Fusce dignissim diam eget quam tristique, et fringilla sapien imperdiet. Donec cursus lacus vel euismod dictum. Aliquam ultricies diam eget risus interdum ornare. Maecenas pulvinar ipsum eget dignissim ornare. Nullam sed finibus nisl.</p>\r\n\r\n<p>Integer pretium massa ac elit commodo, at suscipit elit placerat. Praesent a viverra dolor. Sed at sollicitudin sem, quis mattis mauris. Duis vulputate nunc vel sapien elementum mollis. Vestibulum eget enim aliquam diam bibendum varius non eu ante. In cursus neque sed risus laoreet finibus. Mauris vitae dictum nisl. Donec tempus ultrices justo, eu pellentesque erat varius nec. Vestibulum commodo varius tellus, eget euismod arcu euismod vel. In hac habitasse platea dictumst. Mauris nec dui eget massa consectetur congue quis et eros. Nullam placerat risus vitae ex mattis ornare.</p>\r\n\r\n<p>Vestibulum ac quam et dui facilisis dignissim. Vivamus mi diam, pulvinar vitae quam eget, blandit gravida lectus. Integer ac ligula sed nunc suscipit congue. Nullam dignissim, nisi in porttitor ornare, odio lacus dapibus sapien, non semper dui lacus non tortor. Nullam tincidunt ornare leo. Donec porttitor arcu elit, id accumsan magna pharetra ac. Mauris eleifend sollicitudin laoreet. Aenean tincidunt urna ut dolor hendrerit, ut blandit eros tincidunt. Curabitur pellentesque ante in dolor egestas tempor. Vestibulum venenatis odio nec quam fringilla consectetur.</p>\r\n\r\n<p>Nullam neque nulla, porta at lacus eget, mollis tempus massa. Vestibulum feugiat posuere libero vel efficitur. Duis vestibulum lobortis maximus. Mauris odio lorem, imperdiet eu urna in, volutpat lacinia nulla. Sed vehicula leo vel placerat fermentum. Sed cursus scelerisque felis quis facilisis. Nam a laoreet est, nec auctor risus. Curabitur pellentesque dolor felis, ut lobortis neque consequat tempus. Pellentesque placerat condimentum augue, suscipit fermentum purus bibendum at.</p>\r\n\r\n<p>Aliquam erat volutpat. Suspendisse viverra porttitor pulvinar. Duis scelerisque est eget sodales laoreet. Curabitur luctus ante nisi. Pellentesque ut egestas mauris. Fusce sagittis posuere sapien, et luctus elit dictum sed. Maecenas ante lacus, maximus ut dolor vitae, bibendum malesuada libero. Donec vel consequat metus, in feugiat quam. Nam elementum nulla non ligula accumsan, eget facilisis orci bibendum. Maecenas quis mollis ipsum. Nunc imperdiet massa id orci consectetur, a congue lacus fringilla. Sed ornare tristique accumsan.</p>', 'photo7-5eb96873c1cdb246372498.jpg', '2020-05-11 17:00:03', '2020-05-11 17:00:03', 4),
(3, 'D\'où vient-il?', 'dou-vient-il', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue diam, pharetra ac lacinia ut, viverra quis urna. Donec ut metus vel nulla commodo molestie. In id purus vitae massa malesuada interdum. Integer id sapien sit amet metus pretium efficitur. Nam ac nulla consequat, accumsan justo at, placerat mi. Curabitur gravida odio et nisl accumsan mattis. Fusce magna tellus, malesuada eu quam vitae, pulvinar feugiat risus. Nam venenatis mauris augue, at elementum mauris tincidunt at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n\r\n<p>Vestibulum quis ultrices quam, vestibulum pulvinar elit. Integer ac nisl accumsan, varius ante in, commodo sem. Morbi iaculis leo nec condimentum aliquet. Ut quis sem et quam tincidunt facilisis sed vitae est. Aliquam a ligula nec neque suscipit faucibus. Nam varius eget justo vel ultrices. Donec sed eros vel lacus euismod mattis.</p>\r\n\r\n<p>Donec at posuere dui. Integer interdum venenatis sapien, ac tristique nibh imperdiet quis. Aenean a mauris semper, tempor ex sed, congue sem. Cras molestie faucibus semper. Nunc ut dolor tincidunt mi tempor sodales. Praesent convallis lorem id imperdiet sagittis. Suspendisse vitae purus non eros blandit ultrices sit amet non elit. Nunc tincidunt tempus metus, vitae porttitor turpis vehicula vel. Cras eget est non ligula commodo tempus eget vel augue. Donec dapibus malesuada dui, aliquam pharetra risus ornare sed. Etiam metus massa, interdum sit amet posuere id, accumsan vel ipsum.</p>\r\n\r\n<p>Sed vitae venenatis arcu. Suspendisse faucibus eros tortor, a faucibus urna consectetur vitae. Proin dignissim consequat molestie. Donec nibh odio, luctus eget ex vitae, laoreet laoreet nulla. Sed augue felis, elementum id diam eu, pellentesque posuere ipsum. Cras felis odio, malesuada non finibus vitae, consequat nec elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis convallis molestie orci eu commodo. Nullam orci lacus, tincidunt non cursus ac, vehicula ut mi. Cras ac erat in nibh egestas dapibus. Nam dignissim purus sed commodo consequat. Sed vel mauris luctus, accumsan massa sit amet, laoreet urna. Sed euismod sollicitudin magna, sed consectetur nisl tincidunt a.</p>\r\n\r\n<p>Nullam blandit leo eu magna cursus, et bibendum leo efficitur. Vestibulum id congue justo, vitae ornare tortor. Aliquam erat volutpat. Aliquam eget velit purus. Sed viverra tellus vel sapien lobortis tincidunt. Donec in urna vitae lorem vestibulum pretium. Morbi risus ante, faucibus a dictum ut, placerat at ante.</p>', 'photo1-5eb968c833a62339870488.jpg', '2020-05-11 17:01:28', '2020-05-11 17:01:28', 4),
(4, 'Où puis-je m\'en procurer?', 'ou-puis-je-men-procurer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus arcu magna, vel varius nulla laoreet bibendum. Aliquam erat volutpat. Aliquam a est fringilla, mattis velit ac, convallis est. Praesent sagittis non magna at fermentum. Praesent luctus massa vitae odio accumsan suscipit. Etiam vitae turpis quis quam maximus maximus. Suspendisse potenti. Nulla semper porttitor dignissim. Donec sit amet nibh a quam interdum auctor. Proin vitae turpis gravida, vehicula tellus sed, imperdiet nisl. Phasellus nec posuere libero, ac sodales lacus. Phasellus condimentum vitae nunc molestie dictum. Cras hendrerit eu eros sit amet placerat. Nullam dignissim vulputate ipsum at venenatis. Integer quis nunc vel sapien maximus convallis. Maecenas pellentesque dolor eu sollicitudin elementum.</p>\r\n\r\n<p>Curabitur laoreet metus et mi pellentesque, a lobortis sem fermentum. Aliquam sagittis ornare nunc eget feugiat. Nullam venenatis eros lacus, id congue ligula aliquam nec. Praesent aliquet quis enim ac accumsan. Pellentesque porta malesuada odio, eu blandit est porta dignissim. Etiam at finibus leo. Nulla turpis felis, pretium nec fermentum sed, consectetur eget ligula. Integer a ipsum diam. Donec fringilla vestibulum vulputate. Aliquam ipsum mi, bibendum at dolor vel, rutrum tincidunt elit. Ut placerat fermentum lacus, at blandit quam pellentesque et. Vivamus eu nunc nec risus tempus iaculis sed non ante. Praesent laoreet elit ac pharetra sodales. Nunc porttitor commodo leo. Praesent dapibus metus in sem aliquam ullamcorper. Suspendisse vitae dapibus arcu, fermentum porta enim.</p>\r\n\r\n<p>Proin dignissim porta pretium. Vestibulum lobortis lacus nulla, a sagittis urna auctor nec. Curabitur dui massa, lacinia ac lobortis at, tincidunt non mi. Nulla pretium neque non sapien sagittis rutrum. Etiam ornare eros at est consequat, a mollis nulla mollis. Fusce fermentum nec urna et tristique. Donec cursus finibus elit eu blandit. Nunc quis elit sed mauris dapibus egestas sed et turpis. Morbi tincidunt pharetra sem, sit amet consequat leo euismod vel. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In faucibus urna quis pulvinar tincidunt. Cras venenatis metus mauris, sed elementum dolor vestibulum ac. Mauris venenatis porta arcu ut fermentum. Etiam ex nunc, finibus ac odio ut, elementum finibus sapien. Nunc blandit molestie sagittis. Vestibulum varius nibh sed augue rutrum vulputate.</p>\r\n\r\n<p>Etiam quis elit et leo efficitur tempus ut vitae sapien. Mauris in arcu eu nisi mollis faucibus sed sit amet odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus viverra tellus ligula, id cursus tortor maximus at. Duis blandit tincidunt semper. Nunc pulvinar cursus est facilisis luctus. In et libero sit amet ligula placerat blandit. Curabitur sodales, massa sed dignissim suscipit, ligula leo facilisis nisi, in ultricies enim tortor a metus. Vivamus interdum eros ac nunc pharetra, eget luctus turpis feugiat. Proin faucibus lobortis massa in ornare. Etiam tempus mi ac ante placerat tristique. Nam non tincidunt risus. Praesent et risus elementum, porttitor justo et, interdum purus. Mauris in viverra ipsum. Sed nibh ante, molestie ac justo non, dignissim interdum nisi. Aliquam erat volutpat.</p>\r\n\r\n<p>Sed elementum augue ut convallis ullamcorper. Nulla eu libero tempor enim ornare lacinia eu eget dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla quam nisl, consequat ac leo in, cursus commodo leo. In hac habitasse platea dictumst. Quisque ac mi sit amet dolor malesuada luctus. Donec condimentum neque ut leo facilisis, ut semper neque laoreet. Nullam in est convallis, accumsan lectus eu, accumsan sem. Fusce ullamcorper viverra velit, ac molestie ex ultricies sit amet. Morbi augue ligula, volutpat eget elit non, efficitur lacinia arcu. Integer viverra massa ut felis blandit scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin tristique, massa ac bibendum porta, felis ex consequat nisi, ut tempor nunc nunc in risus.</p>', 'photo-banniere-5eb9690dd2d37660592558.jpg', '2020-05-11 17:02:37', '2020-05-11 17:02:37', 4),
(5, 'Le Lorem Ipsum est simplement du faux texte employé', 'le-lorem-ipsum-est-simplement-du-faux-texte-employe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi orci justo, malesuada sit amet quam sit amet, commodo elementum velit. Donec viverra a neque at malesuada. Cras vehicula enim a risus rutrum, eget ultricies dui varius. Sed pharetra sodales facilisis. Sed vestibulum, lacus in ornare ultrices, nibh mauris facilisis odio, aliquam placerat nibh leo vel nisi. Curabitur mollis ante eget finibus suscipit. Nulla tempus libero at elit pharetra vulputate. In consectetur sollicitudin elit, sed malesuada augue ullamcorper sit amet.</p>\r\n\r\n<p>Donec ac ex massa. Curabitur sagittis feugiat tortor id congue. Cras ac risus id erat mattis tempus vitae bibendum velit. Vestibulum id ipsum sed augue fermentum gravida. Integer vestibulum tellus in justo pretium ultrices. Morbi sit amet aliquam neque. Nulla vestibulum nibh sit amet elementum aliquam. Mauris quis commodo elit. Sed convallis gravida dictum. Integer eget lacus posuere, tristique magna eget, laoreet lorem. Ut ornare blandit risus, sit amet porttitor dolor congue commodo.</p>\r\n\r\n<p>Aenean scelerisque quis quam ac pellentesque. Nullam at tempor diam. Cras condimentum mattis mauris in pellentesque. Praesent a lectus felis. Donec nec orci ut odio tincidunt porttitor ut sed turpis. Fusce ac massa sit amet risus ultrices dignissim in a justo. Vivamus pellentesque faucibus eleifend. Duis laoreet, leo a rhoncus sollicitudin, mauris nisi sollicitudin nibh, vitae condimentum metus libero id odio. Aliquam sit amet elementum risus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer et malesuada mauris, congue eleifend ante. Nulla ultricies diam nisi, aliquam ultrices ex vehicula ut. Maecenas commodo euismod mi, vitae lacinia lorem posuere laoreet. Sed in convallis quam.</p>\r\n\r\n<p>Curabitur justo lacus, sodales sed semper a, tincidunt sed orci. Curabitur vestibulum consequat feugiat. Ut id lacus in sapien rhoncus dignissim ut non purus. Nullam convallis diam nec dolor sodales accumsan. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc tortor quam, congue in nulla posuere, venenatis interdum erat. Duis ut maximus velit, a porttitor elit. Nulla ac turpis auctor erat euismod mollis non vel eros. Nulla scelerisque condimentum dui, non tincidunt turpis finibus sit amet. Integer in condimentum leo. Morbi non mollis augue. Donec varius sapien quis nulla sodales consectetur. Integer vitae eros eu turpis lobortis faucibus.</p>\r\n\r\n<p>Quisque laoreet rutrum erat ut dignissim. Vestibulum ullamcorper volutpat sem nec posuere. Quisque tincidunt consectetur ipsum quis laoreet. Aliquam erat volutpat. Morbi accumsan faucibus nibh sed vestibulum. Etiam augue risus, scelerisque et lectus at, gravida congue magna. In vel sodales justo. Curabitur iaculis tortor pharetra nibh hendrerit, nec fringilla felis iaculis. Morbi quis dui ullamcorper, malesuada augue non, tincidunt orci. Nulla ut nunc est. Mauris vel neque quis nisl dignissim imperdiet eu id ante. Donec eu viverra augue. In fermentum, erat in pulvinar auctor, risus enim interdum libero, vitae efficitur diam lorem sed erat.</p>', 'photo2-5eb969799e897479280521.jpg', '2020-05-11 17:04:25', '2020-05-11 17:04:25', 3),
(6, 'On sait depuis longtemps que travailler avec du texte lisible', 'on-sait-depuis-longtemps-que-travailler-avec-du-texte-lisible', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida malesuada lorem. Donec interdum purus vel magna vestibulum, vel euismod ipsum tincidunt. Suspendisse nec pharetra ipsum. Integer sit amet turpis in diam efficitur vulputate sit amet ut diam. Mauris scelerisque eros eget eros dignissim commodo. Nam cursus felis tellus, eu scelerisque ex molestie vel. Maecenas ultricies et nisi ac rhoncus. Donec non ligula lobortis nunc sodales lacinia id quis lectus. Duis sodales nisl at luctus iaculis.</p>\r\n\r\n<p>Nulla et nunc eget justo convallis suscipit id vehicula elit. Nam interdum nunc lectus, vitae malesuada neque facilisis et. Cras ornare aliquet nisi, eu gravida felis convallis vel. Praesent sagittis eros at mauris fermentum, in hendrerit nisi suscipit. Nulla facilisi. Curabitur auctor libero at quam molestie, sit amet pharetra odio congue. Pellentesque et lorem id quam placerat congue.</p>\r\n\r\n<p>Sed vitae sem vel augue dapibus elementum. Proin sodales ultricies sodales. Nullam semper magna scelerisque dui efficitur, at pretium purus tempus. Nam felis magna, lobortis ac tincidunt quis, vehicula ac ex. Quisque odio eros, pulvinar eget mi eu, lobortis accumsan arcu. Aliquam eget tellus consectetur, suscipit nisl id, aliquam urna. Vivamus vitae viverra felis, ut fermentum elit.</p>\r\n\r\n<p>Fusce sed ante ac ante ornare tempor. Duis congue facilisis ligula. Nulla vulputate neque vitae porttitor suscipit. Etiam fringilla arcu non ipsum porta maximus. Nam eleifend enim eu mi tincidunt, ac condimentum orci pharetra. In blandit arcu sed consectetur egestas. Morbi id magna velit. Sed non tortor nunc. Duis ipsum massa, congue nec pellentesque venenatis, mattis id magna. Vestibulum eu orci cursus quam imperdiet dictum vulputate vel quam. Curabitur turpis velit, iaculis ac sollicitudin vel, facilisis at felis. Curabitur pharetra sed massa eu fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at metus mauris.</p>\r\n\r\n<p>Sed quis urna tincidunt, faucibus metus vitae, tincidunt ex. Curabitur posuere placerat enim eget mollis. Morbi lacus eros, bibendum eget tincidunt et, sagittis eu eros. Curabitur auctor ipsum ex, vitae dignissim tellus iaculis sit amet. Suspendisse potenti. Etiam venenatis risus at lacus bibendum egestas. Nullam malesuada felis ac elementum egestas. Nulla facilisi. Aliquam enim metus, consequat ultrices consectetur a, aliquam et justo. Praesent quis metus malesuada, faucibus justo quis, suscipit est. Praesent aliquam tincidunt nibh ut porttitor. Nulla fermentum est vel consequat tincidunt. Maecenas nec lectus ac tellus dapibus dignissim sit amet eget lacus. Sed eget magna ipsum. Sed sit amet neque vestibulum, gravida mi id, efficitur mauris.</p>', 'photo5-5eb969ca21c65216444237.jpg', '2020-05-11 17:05:46', '2020-05-11 17:05:46', 3),
(7, 'Plusieurs variations de Lorem Ipsum peuvent être trouvées', 'plusieurs-variations-de-lorem-ipsum-peuvent-etre-trouvees', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas gravida quam felis, vel aliquet nibh eleifend et. Nunc quis tellus vitae leo placerat consequat. Curabitur finibus, libero a euismod viverra, mauris justo dictum ex, at feugiat ligula metus sit amet ipsum. Nullam scelerisque pellentesque est, at posuere tortor aliquet nec. Quisque a mi in sapien auctor placerat. Phasellus nec ipsum commodo, porttitor tellus eu, interdum ex. Mauris eget euismod odio. Aliquam luctus in turpis non venenatis. Duis ultricies, enim vitae aliquam eleifend, odio purus ornare tellus, quis porta ipsum eros dignissim orci. Mauris placerat bibendum turpis, nec commodo lacus. Morbi viverra quam in est aliquam, ultrices efficitur erat rutrum. Maecenas vel arcu lacinia, venenatis elit ut, interdum sapien.</p>\r\n\r\n<p>Cras sit amet nisl sit amet tortor fermentum aliquet in eget neque. Mauris suscipit consectetur consectetur. Suspendisse ultricies iaculis felis. Cras at tellus nisi. Etiam aliquet tortor vel tellus vehicula, quis molestie enim condimentum. Curabitur massa risus, commodo et justo in, imperdiet tempor purus. Praesent rutrum nibh tellus, id mollis ipsum commodo vitae. Aenean sed ante sed metus mollis pulvinar maximus eget purus. Fusce turpis tortor, cursus in mauris ut, fringilla congue arcu. Nam vestibulum eros vitae tortor commodo, eget mattis erat dapibus. In lacinia, velit euismod posuere vehicula, nisl ligula lobortis nisl, luctus vulputate est magna bibendum justo. Nunc lobortis dignissim nisi sit amet dapibus. Nulla interdum nisi in nulla convallis aliquam sed et libero. In nisi tellus, laoreet eget dui auctor, imperdiet facilisis neque. Sed faucibus, eros vitae eleifend feugiat, ex dolor mattis enim, non semper leo justo a ex.</p>\r\n\r\n<p>Nullam consectetur tortor at gravida rhoncus. In hac habitasse platea dictumst. Maecenas eu nisi quis est sagittis cursus rhoncus ac nisl. Praesent at risus id libero laoreet fermentum. Donec tincidunt mattis eros, sed consequat felis tincidunt non. Donec mi tellus, pulvinar at gravida ut, aliquam nec tellus. Nam convallis justo quis massa convallis sodales. Nullam ultrices, magna ut euismod euismod, tortor leo consectetur lectus, sodales interdum ipsum magna volutpat urna. Nunc efficitur ut erat eget egestas. Proin imperdiet nisi felis, eu posuere enim euismod dapibus.</p>\r\n\r\n<p>Fusce non vehicula enim, ac faucibus elit. Morbi eleifend a ante a faucibus. Nunc sit amet auctor turpis. In ullamcorper ut mauris non molestie. Sed non euismod odio, vitae aliquet tortor. Suspendisse facilisis malesuada convallis. Morbi sapien augue, eleifend at elit non, porta congue tortor. Sed ac porta massa. Morbi rutrum sagittis dolor sed cursus. Curabitur eget pulvinar nulla. Maecenas tempus enim sed pretium posuere. Phasellus efficitur diam ligula. Mauris dignissim ante non nisi fringilla efficitur ut quis eros.</p>\r\n\r\n<p>Pellentesque ut maximus erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce molestie gravida magna, id finibus tellus porttitor non. Fusce accumsan dolor orci. Sed vulputate ipsum libero, efficitur pretium magna congue euismod. Integer semper vel dui quis tristique. Donec eget porttitor metus, vel gravida ipsum. Praesent vulputate turpis ac justo bibendum, a gravida eros suscipit. Cras quis sollicitudin tellus, nec molestie elit. Vivamus suscipit mauris placerat mauris laoreet, aliquam elementum orci imperdiet. Aenean eu ipsum a est mattis laoreet sed nec risus. Integer tincidunt imperdiet sapien ac molestie.</p>', 'photo6-5eb96a3905a63556419254.jpg', '2020-05-11 17:07:36', '2020-05-11 17:07:36', 4),
(8, 'Le passage de Lorem Ipsum standard, utilisé depuis 1500', 'le-passage-de-lorem-ipsum-standard-utilise-depuis-1500', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis libero eu dui vestibulum dignissim. Sed aliquam, neque sit amet imperdiet tempus, lectus sapien hendrerit sem, quis luctus nisi diam ac ipsum. Fusce posuere, massa ut bibendum accumsan, massa felis hendrerit ligula, ut condimentum leo lectus scelerisque nibh. Etiam sed erat ut justo ultrices consequat a ut nisi. Sed tincidunt magna eu elit hendrerit, nec ultricies purus auctor. Praesent dolor ligula, pulvinar finibus malesuada tincidunt, laoreet nec elit. Fusce consectetur nec urna ac bibendum. Etiam eget pellentesque elit. Proin ante lectus, faucibus quis laoreet ac, tristique sed risus. Praesent vitae ornare mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla auctor elit aliquet, vestibulum ipsum quis, interdum sem. Maecenas eu rhoncus purus. Mauris neque metus, condimentum ac nisl eu, egestas sodales dolor. Mauris at congue ligula, at vehicula odio.</p>\r\n\r\n<p>Aenean a sem in nisl facilisis tempor. In ac sagittis lectus, viverra fringilla diam. Suspendisse in ex non velit varius venenatis. Ut sit amet velit at mi maximus hendrerit eget id leo. Sed in lectus at nisl bibendum maximus. Proin eu tortor ac augue feugiat tristique. Quisque id massa ac tortor congue vestibulum.</p>\r\n\r\n<p>Quisque pretium, mauris nec egestas venenatis, augue nisi sodales lorem, vel sodales odio tellus eget sapien. Donec finibus auctor orci in dignissim. Integer mattis enim vitae vulputate hendrerit. Aliquam erat volutpat. Nullam pharetra, arcu a congue gravida, ex purus sollicitudin metus, eu ultricies lacus quam vitae enim. Phasellus sed enim lorem. Phasellus non commodo sapien, a ornare velit. Integer volutpat sagittis libero, vitae condimentum mauris sodales id. Cras dignissim fringilla dui, vel interdum tortor fermentum ac. Curabitur quis finibus dolor, pharetra volutpat mi. In lacus sem, posuere vitae lacus in, efficitur elementum ante. Etiam et magna ac sem euismod aliquam. Nunc suscipit ligula porttitor augue ultrices, sed bibendum est rutrum. Proin libero libero, elementum quis maximus ut, viverra sed tortor. Praesent nec magna semper, eleifend urna ut, mollis arcu.</p>\r\n\r\n<p>Fusce fermentum cursus turpis, congue pharetra lectus iaculis eget. Cras ultricies dolor lacus, et hendrerit arcu tempor vitae. Praesent tincidunt libero orci, sit amet accumsan elit faucibus eu. Cras sit amet semper sem. Donec scelerisque sapien sit amet diam sagittis, sed hendrerit ligula pellentesque. Nulla lacus risus, venenatis vitae luctus nec, condimentum vitae ex. Nulla at urna non erat molestie convallis. Proin sed erat sed ex tincidunt scelerisque bibendum at erat.</p>\r\n\r\n<p>Pellentesque lectus ipsum, efficitur vel mollis vel, tincidunt sit amet neque. Aliquam quis massa purus. Donec vestibulum urna tristique nunc pharetra blandit. Etiam vulputate erat eget nisl iaculis porta. Etiam tellus lectus, faucibus id ante id, fermentum fringilla ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eget ante a ex tristique faucibus in id urna. Donec justo erat, luctus sit amet dui vel, cursus facilisis dui. Nullam in imperdiet dui, nec dapibus dui. Integer auctor tellus id massa bibendum, eu bibendum neque scelerisque. Donec ut consequat dui, et scelerisque leo. Phasellus justo metus, cursus non nunc et, dapibus hendrerit dolor. Morbi cursus leo ligula, nec iaculis nisl accumsan finibus. In fringilla arcu ut velit euismod, a iaculis lectus interdum. Curabitur purus arcu, iaculis quis nulla ac, vehicula suscipit ante.</p>', 'mother-s-day-background-with-flowers-52683-36607-5eb96a9a668ee266490840.jpg', '2020-05-11 17:09:14', '2020-05-11 17:09:14', 4),
(9, 'Section 1.10.32 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)', 'section-1-10-32-du-de-finibus-bonorum-et-malorum-de-ciceron-45-av-j-c', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis libero eu dui vestibulum dignissim. Sed aliquam, neque sit amet imperdiet tempus, lectus sapien hendrerit sem, quis luctus nisi diam ac ipsum. Fusce posuere, massa ut bibendum accumsan, massa felis hendrerit ligula, ut condimentum leo lectus scelerisque nibh. Etiam sed erat ut justo ultrices consequat a ut nisi. Sed tincidunt magna eu elit hendrerit, nec ultricies purus auctor. Praesent dolor ligula, pulvinar finibus malesuada tincidunt, laoreet nec elit. Fusce consectetur nec urna ac bibendum. Etiam eget pellentesque elit. Proin ante lectus, faucibus quis laoreet ac, tristique sed risus. Praesent vitae ornare mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla auctor elit aliquet, vestibulum ipsum quis, interdum sem. Maecenas eu rhoncus purus. Mauris neque metus, condimentum ac nisl eu, egestas sodales dolor. Mauris at congue ligula, at vehicula odio.</p>\r\n\r\n<p>Aenean a sem in nisl facilisis tempor. In ac sagittis lectus, viverra fringilla diam. Suspendisse in ex non velit varius venenatis. Ut sit amet velit at mi maximus hendrerit eget id leo. Sed in lectus at nisl bibendum maximus. Proin eu tortor ac augue feugiat tristique. Quisque id massa ac tortor congue vestibulum.</p>\r\n\r\n<p>Quisque pretium, mauris nec egestas venenatis, augue nisi sodales lorem, vel sodales odio tellus eget sapien. Donec finibus auctor orci in dignissim. Integer mattis enim vitae vulputate hendrerit. Aliquam erat volutpat. Nullam pharetra, arcu a congue gravida, ex purus sollicitudin metus, eu ultricies lacus quam vitae enim. Phasellus sed enim lorem. Phasellus non commodo sapien, a ornare velit. Integer volutpat sagittis libero, vitae condimentum mauris sodales id. Cras dignissim fringilla dui, vel interdum tortor fermentum ac. Curabitur quis finibus dolor, pharetra volutpat mi. In lacus sem, posuere vitae lacus in, efficitur elementum ante. Etiam et magna ac sem euismod aliquam. Nunc suscipit ligula porttitor augue ultrices, sed bibendum est rutrum. Proin libero libero, elementum quis maximus ut, viverra sed tortor. Praesent nec magna semper, eleifend urna ut, mollis arcu.</p>\r\n\r\n<p>Fusce fermentum cursus turpis, congue pharetra lectus iaculis eget. Cras ultricies dolor lacus, et hendrerit arcu tempor vitae. Praesent tincidunt libero orci, sit amet accumsan elit faucibus eu. Cras sit amet semper sem. Donec scelerisque sapien sit amet diam sagittis, sed hendrerit ligula pellentesque. Nulla lacus risus, venenatis vitae luctus nec, condimentum vitae ex. Nulla at urna non erat molestie convallis. Proin sed erat sed ex tincidunt scelerisque bibendum at erat.</p>\r\n\r\n<p>Pellentesque lectus ipsum, efficitur vel mollis vel, tincidunt sit amet neque. Aliquam quis massa purus. Donec vestibulum urna tristique nunc pharetra blandit. Etiam vulputate erat eget nisl iaculis porta. Etiam tellus lectus, faucibus id ante id, fermentum fringilla ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eget ante a ex tristique faucibus in id urna. Donec justo erat, luctus sit amet dui vel, cursus facilisis dui. Nullam in imperdiet dui, nec dapibus dui. Integer auctor tellus id massa bibendum, eu bibendum neque scelerisque. Donec ut consequat dui, et scelerisque leo. Phasellus justo metus, cursus non nunc et, dapibus hendrerit dolor. Morbi cursus leo ligula, nec iaculis nisl accumsan finibus. In fringilla arcu ut velit euismod, a iaculis lectus interdum. Curabitur purus arcu, iaculis quis nulla ac, vehicula suscipit ante.</p>', 'teacher-talking-with-his-students-online-23-2148511080-5eb96b0aa22ba896066265.jpg', '2020-05-11 17:11:06', '2020-05-11 17:11:06', 3),
(10, 'Traduction de H. Rackham (1914)', 'traduction-de-h-rackham-1914', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis libero eu dui vestibulum dignissim. Sed aliquam, neque sit amet imperdiet tempus, lectus sapien hendrerit sem, quis luctus nisi diam ac ipsum. Fusce posuere, massa ut bibendum accumsan, massa felis hendrerit ligula, ut condimentum leo lectus scelerisque nibh. Etiam sed erat ut justo ultrices consequat a ut nisi. Sed tincidunt magna eu elit hendrerit, nec ultricies purus auctor. Praesent dolor ligula, pulvinar finibus malesuada tincidunt, laoreet nec elit. Fusce consectetur nec urna ac bibendum. Etiam eget pellentesque elit. Proin ante lectus, faucibus quis laoreet ac, tristique sed risus. Praesent vitae ornare mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla auctor elit aliquet, vestibulum ipsum quis, interdum sem. Maecenas eu rhoncus purus. Mauris neque metus, condimentum ac nisl eu, egestas sodales dolor. Mauris at congue ligula, at vehicula odio.</p>\r\n\r\n<p>Aenean a sem in nisl facilisis tempor. In ac sagittis lectus, viverra fringilla diam. Suspendisse in ex non velit varius venenatis. Ut sit amet velit at mi maximus hendrerit eget id leo. Sed in lectus at nisl bibendum maximus. Proin eu tortor ac augue feugiat tristique. Quisque id massa ac tortor congue vestibulum.</p>\r\n\r\n<p>Quisque pretium, mauris nec egestas venenatis, augue nisi sodales lorem, vel sodales odio tellus eget sapien. Donec finibus auctor orci in dignissim. Integer mattis enim vitae vulputate hendrerit. Aliquam erat volutpat. Nullam pharetra, arcu a congue gravida, ex purus sollicitudin metus, eu ultricies lacus quam vitae enim. Phasellus sed enim lorem. Phasellus non commodo sapien, a ornare velit. Integer volutpat sagittis libero, vitae condimentum mauris sodales id. Cras dignissim fringilla dui, vel interdum tortor fermentum ac. Curabitur quis finibus dolor, pharetra volutpat mi. In lacus sem, posuere vitae lacus in, efficitur elementum ante. Etiam et magna ac sem euismod aliquam. Nunc suscipit ligula porttitor augue ultrices, sed bibendum est rutrum. Proin libero libero, elementum quis maximus ut, viverra sed tortor. Praesent nec magna semper, eleifend urna ut, mollis arcu.</p>\r\n\r\n<p>Fusce fermentum cursus turpis, congue pharetra lectus iaculis eget. Cras ultricies dolor lacus, et hendrerit arcu tempor vitae. Praesent tincidunt libero orci, sit amet accumsan elit faucibus eu. Cras sit amet semper sem. Donec scelerisque sapien sit amet diam sagittis, sed hendrerit ligula pellentesque. Nulla lacus risus, venenatis vitae luctus nec, condimentum vitae ex. Nulla at urna non erat molestie convallis. Proin sed erat sed ex tincidunt scelerisque bibendum at erat.</p>\r\n\r\n<p>Pellentesque lectus ipsum, efficitur vel mollis vel, tincidunt sit amet neque. Aliquam quis massa purus. Donec vestibulum urna tristique nunc pharetra blandit. Etiam vulputate erat eget nisl iaculis porta. Etiam tellus lectus, faucibus id ante id, fermentum fringilla ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eget ante a ex tristique faucibus in id urna. Donec justo erat, luctus sit amet dui vel, cursus facilisis dui. Nullam in imperdiet dui, nec dapibus dui. Integer auctor tellus id massa bibendum, eu bibendum neque scelerisque. Donec ut consequat dui, et scelerisque leo. Phasellus justo metus, cursus non nunc et, dapibus hendrerit dolor. Morbi cursus leo ligula, nec iaculis nisl accumsan finibus. In fringilla arcu ut velit euismod, a iaculis lectus interdum. Curabitur purus arcu, iaculis quis nulla ac, vehicula suscipit ante.</p>', 'two-businessmen-pointing-laptop-screen-while-discussing-158595-5325-5eb96b560c93a650394819.jpg', '2020-05-11 17:12:21', '2020-05-11 17:12:21', 3);

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE `articles_categories` (
  `articles_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`articles_id`, `categories_id`) VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 3),
(8, 4),
(9, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `articles_mots_cles`
--

CREATE TABLE `articles_mots_cles` (
  `articles_id` int(11) NOT NULL,
  `mots_cles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_mots_cles`
--

INSERT INTO `articles_mots_cles` (`articles_id`, `mots_cles_id`) VALUES
(1, 3),
(2, 3),
(4, 2),
(4, 3),
(4, 4),
(5, 2),
(6, 4),
(8, 2),
(8, 3),
(8, 4),
(9, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `slug`) VALUES
(1, 'societe', 'societe'),
(2, 'technologie', 'technologie'),
(3, 'Culture', 'culture'),
(4, 'education', 'education');

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commentaires_reponses_commentaires`
--

CREATE TABLE `commentaires_reponses_commentaires` (
  `commentaires_id` int(11) NOT NULL,
  `reponses_commentaires_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200510165351', '2020-05-10 16:54:34'),
('20200510165647', '2020-05-10 16:57:05'),
('20200510170003', '2020-05-10 17:00:35'),
('20200510170143', '2020-05-10 17:02:03'),
('20200510171832', '2020-05-10 17:18:49'),
('20200510172605', '2020-05-10 17:26:41'),
('20200510173254', '2020-05-10 17:33:13'),
('20200510173737', '2020-05-10 17:37:55'),
('20200510174902', '2020-05-10 17:49:21'),
('20200510175222', '2020-05-10 17:52:38'),
('20200510175434', '2020-05-10 17:54:53'),
('20200510210726', '2020-05-10 21:07:40'),
('20200511132215', '2020-05-11 13:22:44'),
('20200512164716', '2020-05-12 16:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `mots_cles`
--

CREATE TABLE `mots_cles` (
  `id` int(11) NOT NULL,
  `motcle` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mots_cles`
--

INSERT INTO `mots_cles` (`id`, `motcle`) VALUES
(2, 'mot cle 2'),
(3, 'mot cle 3'),
(4, 'mot cle 1');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `numero_de_telephone` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_propos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reponses_commentaires`
--

CREATE TABLE `reponses_commentaires` (
  `id` int(11) NOT NULL,
  `reponse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_complet` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `nom_complet`, `actif`) VALUES
(3, 'ousmanedia846@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$a/JW.nUmqmiBFrOMdHSaTu5/BCL/9CmxcwAnNLbLbEekSQUF3UKHS', 'ousmane dia', 1),
(4, 'dia@gmail.com', '[]', '$2y$13$5iuN62EKpTCHXpUvRMHkN.wENxTgE0D/X0C8k3gSosexHlRAEiSqi', 'dieumbe', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BFDD3168989D9B62` (`slug`),
  ADD KEY `IDX_BFDD316867B3B43D` (`users_id`);

--
-- Indexes for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`articles_id`,`categories_id`),
  ADD KEY `IDX_DE004A0E1EBAF6CC` (`articles_id`),
  ADD KEY `IDX_DE004A0EA21214B7` (`categories_id`);

--
-- Indexes for table `articles_mots_cles`
--
ALTER TABLE `articles_mots_cles`
  ADD PRIMARY KEY (`articles_id`,`mots_cles_id`),
  ADD KEY `IDX_2927AB461EBAF6CC` (`articles_id`),
  ADD KEY `IDX_2927AB46C0BE80DB` (`mots_cles_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9BEC0C41EBAF6CC` (`articles_id`);

--
-- Indexes for table `commentaires_reponses_commentaires`
--
ALTER TABLE `commentaires_reponses_commentaires`
  ADD PRIMARY KEY (`commentaires_id`,`reponses_commentaires_id`),
  ADD KEY `IDX_94C5346817C4B2B0` (`commentaires_id`),
  ADD KEY `IDX_94C53468DA5E81DC` (`reponses_commentaires_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `mots_cles`
--
ALTER TABLE `mots_cles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E6D6B29767B3B43D` (`users_id`);

--
-- Indexes for table `reponses_commentaires`
--
ALTER TABLE `reponses_commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mots_cles`
--
ALTER TABLE `mots_cles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reponses_commentaires`
--
ALTER TABLE `reponses_commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316867B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD CONSTRAINT `FK_DE004A0E1EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DE004A0EA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_mots_cles`
--
ALTER TABLE `articles_mots_cles`
  ADD CONSTRAINT `FK_2927AB461EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2927AB46C0BE80DB` FOREIGN KEY (`mots_cles_id`) REFERENCES `mots_cles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C41EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`);

--
-- Constraints for table `commentaires_reponses_commentaires`
--
ALTER TABLE `commentaires_reponses_commentaires`
  ADD CONSTRAINT `FK_94C5346817C4B2B0` FOREIGN KEY (`commentaires_id`) REFERENCES `commentaires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_94C53468DA5E81DC` FOREIGN KEY (`reponses_commentaires_id`) REFERENCES `reponses_commentaires` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `FK_E6D6B29767B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
