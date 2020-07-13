-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-13 02:44:34
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1090212`
--

-- --------------------------------------------------------

--
-- 資料表結構 `accdb`
--

CREATE TABLE `accdb` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `accdb`
--

INSERT INTO `accdb` (`id`, `acc`, `pwd`, `email`) VALUES
(1, 'user001', '001001', 'aaa@bbb.ccc'),
(2, 'user002', '002002', 'ooo@ooo.ooo'),
(3, 'user003', '003003', 'qqq@ppp.ooo');

-- --------------------------------------------------------

--
-- 資料表結構 `album`
--

CREATE TABLE `album` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `album`
--

INSERT INTO `album` (`id`, `uid`, `path`, `type`) VALUES
(1, 1, './images/P1040439.JPG', 0),
(5, 1, './images/P1040600.JPG', 2),
(6, 1, './images/P1040670.JPG', 0),
(8, 1, './images/P1040477.JPG', 0),
(9, 1, './images/IMG_20190722_190238.jpg', 1),
(10, 1, './images/P1040534.JPG', 0),
(11, 1, './images/P1040732.JPG', 0),
(12, 1, './images/IMG_20190721_131116.jpg', 0),
(13, 1, './images/P1040735.JPG', 0),
(14, 2, './images/P1040439.JPG', 0),
(15, 2, './images/P1040534.JPG', 0),
(16, 2, './images/P1040670.JPG', 0),
(17, 2, './images/P1040735.JPG', 5),
(18, 2, './images/IMG_20190721_131116.jpg', 0),
(19, 3, './images/P1040578.JPG', 4),
(20, 3, './images/P1040735.JPG', 1),
(21, 3, './images/P1040600.JPG', 0),
(22, 3, './images/P1040534.JPG', 0),
(23, 2, './images/P1040732.JPG', 0),
(24, 2, './images/P1040600.JPG', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `autobiography`
--

CREATE TABLE `autobiography` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `autobiography`
--

INSERT INTO `autobiography` (`id`, `uid`, `content`, `sh`) VALUES
(1, 1, '我出生在一個很平凡但很美滿的小家庭，父親是個公務員，在台電服務，母親是個家庭主婦，而弟弟和我都還在學校求學。父母用民主的方式管教我們，希望我們能夠獨立自主、主動學習，累積人生經驗，但他們會適時的給予鼓勵和建議，父母親只對我們要求兩件事，第一是保持健康，第二是著重課業。因為沒有健康的身體，就算有再多的才華、再大的抱負也無法發揮出來。又因為家境並不富裕，所以必須專心於課業上，學得一技之長，將來才能自立更生。\r\n\r\n          在小學時代的我很活潑、很好動，在課業上表現平平，但課外表現不錯，除了擔任過班長等幹部外，還參加樂隊、糾察隊等，另外還曾獲選為校隊參加跳高比賽。\r\n\r\n         小學畢業後，進入了一所私立中學，因為校規嚴格，使原本好動的我變得較為文靜，不過在那裡我學會了許多應有的禮節與待人處世的道理。在國中時期的我，好像開了竅，代表全校接受縣政府的表揚，在國三畢業典禮上，更代表了全體畢業生上台領取畢業證書。\r\n\r\n         進附中後，每天都覺得很充實、很快樂。附中學生的特色是能K、能玩，所以我不斷地努力學習，希望能夠達到此目標。在課業方面，我都能保持在一定的水準，因為上課專心聽講、仔細思考、體會老師所說的每一句話，在腦海裡架構重要觀念，一有問題就立刻發問，因此上課的吸收效率很高，不但使得複習的工作能夠很快完成，還有多餘的時間從事課外活動。在這麼多的科目當中，我最喜歡的是數學、化學和生物，因為數學、化學能夠訓練我們組織與思考能力。而生物則和日常生活有密切的關係，且它為我們揭開人體的奧秘。\r\n\r\n         我在學校人際關係良好，因為無論何時，總是笑臉迎人，微笑已成為我個人的正字招牌。老師們常稱讚我是個品學兼優的好學生，常給我許多的鼓勵，而同學間的相處十分融洽，彼此之間很有默契，團結一心。\r\n\r\n         除了課業之外，其他方面我也沒有偏廢。在高一時加入學校管樂隊，吹奏低音號，每天升旗參加出勤，在這裡不但使我對管樂器有進一步的認識，還認識了許多朋友，因此在那個時候，參加社團已成為我放學後的一大休閒。而我最喜歡的運動是棒球，我常在電視上或球場上觀賞職棒比賽，欣賞球員的美姿，模仿其動作。我常利用課餘時間約同學一起出外打球，記得在高二時，班上組隊參加班際壘球賽，那時我擔任隊長，防守二壘，首先展開攻勢，激起球隊士氣，最後終以一分之差贏得了最後勝利。除了棒球之外，我也很喜歡藍球、排球等，因此使得原本瘦弱的身體，變得強壯許多。\r\n\r\n         我從小就立志要當醫生，近年來當我接觸了有關醫學系的相關資訊，漸漸地了解到當個醫生並不是那麼簡單的事，需要對服務人群有興趣，及擅長人際溝通，且在求學的過程中也相當辛苦。但疾病加諸在病人身上的痛苦是無法言諭的，來自醫生的關懷與勉勵，能讓病人產生無比的信念，勇敢地向疾病宣戰，在病人痊癒時，看到病人及家屬喜形於色，那種喜悅，令我十分嚮往，而且醫生不僅僅是要免除病人的疾病和虛弱，也要能兼顧對人們的整體關懷，使病患的身心達到安寧的狀態，在這一方面，它讓我更確定了讀醫學系的志向。', 1),
(3, 1, '  一、家庭生活：\r\n          從小我就有一個幸福的家庭，家父是一位數學教師，因此從 小受到數學的陶養，也奠定了喜愛數學的基礎，而母親是位樸實的家庭主婦，在為人處世、美術方面給我薰陶，另外還有一個聰明伶俐就讀國中的妹妹，是我談心的好對象，而一貫化、有效率是家庭裡的座右銘，因此我家永遠是有條不紊。\r\n 二、學習過程：\r\n         小學就讀於中山國小，到了國中，我參加的是志願就學方案，因此讓我有更多時間在數學、理化上發揮長處，我常想以後我要在這方面一展長才，高中就讀美工科，是出於內心的歡喜在工藝造型設計、色彩學…等專業科目都盡其在我不斷地學習，這二年來最得意的是在校段考曾經數學有三次皆滿分的記錄，而成為班上的僥僥者，這讓我毅然選擇工業工程，相信自己必可以克服相關課程。\r\n三、性格、專長與興趣：\r\n(1)我的個性執著、有耐性，凡事秉持著不給人添麻煩,使人順心為原則。\r\n (2)我的專長是數學，也研究科學與造型設計，相信科學、人文配合才能相得益彰，我喜歡什麼都學習，使自己有更多的技能，能左右逢源發揮專長。\r\n四、生涯規劃：\r\n        我希望在大學四年能成為生產研究、工程研究等專業人才，因此和家人經過幾番思考後，決定報考工業工程為下階段學習目標同時兼並英文、電腦能力輔助自己所學，畢業後能以優秀的成績申請本校的研究所～生產系統工程與管理研究所～，學有專精，投身環工、半導體、金融…等等來貢獻社會國家。', 0),
(4, 2, '家庭背景：\n我出生在一個溫暖的家庭中，家中有四個成員，父親、母親、姐姐和我。父親從事代書的工作，母親是全職的\n家庭主婦。父母對我及姐姐的管教方式是在課業上自動自發，在禮儀上則要求較為嚴格，父親常說，書要盡量\n唸好，但做人的基本禮貌與待人接物的原則，卻是一定要做到的。姐姐就讀於東吳大學法律系二年級，我和姐\n姐對外文都有相當的興趣，時常互相切磋，以加強英文程度，更常聊天談心事，互相關心，所以我跟姐姐的感\n情很好。\n求學歷程：\n小學時，由於愛玩不喜歡讀書，所以成績一直不算很好，到了國中，國一的時候成績漸有起色，在班上都能維\n持在前十名；國二時，因為迷上電腦，整天很同學一起研究電腦，沉迷於網路，導致上課時不能專心，下課後\n又沒有好好的復習，功課因此而荒廢，成績便一落千丈。直到升上國三，警覺升學的重要跟壓力，便決定一改\n國二的弊習，好好的用功讀書，把之前荒廢的功課救起，努力了一年之後，順利的考上○○高中。\n國三升高一的暑假，我跟三個同學一起到溫哥華遊學，一個多月的旅行，讓我深深的愛上加拿大這個地方，也\n因此認識了許多加拿大的朋友。\n\n上高中之後，第一次月考之後，發現成績竟出乎意料的低，高中的課業比國中難了許多，於是我便向姐姐詢問\n一些讀書的方法，更加用功的學習，終於在第二次月考的時候就從26名進步到第6名，之後也一直保持相同的\n水準。高二的時候，在英文老師的鼓勵下，我參加了英文演講比賽，這是我求學過程以來第一次的正式比賽，\n為了這次的比賽，我做了很多練習，也接觸了許多生活英文，引起我對英文的強烈興趣。\n\n興趣：\n由於曾經到加拿大遊學的原因，認識了許多的外國朋友，為了方便聯絡，我們採取最經濟的方式，也就是網際\n網路，加上之前的電腦基礎，我可以在網路上找到許多的資訊，讓我深深體會「秀才不出門，能知天下事」這\n句話，所以研究電腦還是我最大的興趣，只是記取了國二的教訓，上網的時間大幅減少，以不影響功課為原則。', 1),
(5, 2, '        我叫陳證傑，出生於高雄巿，家中排行老大。我活潑開朗、樂觀進取、個性隨和，所以人緣頗佳，\n有『好好先生』之稱。我九歲喪父，慈愛的母親要母兼父職的養育我和弟弟，為了維持家計，母親平常工作極為忙碌，還好，弟弟和我都很懂事，課業認真，凡事不用媽媽操心，兩兄弟在學校除了成績優良，也都是班上的領導人物，因此，媽媽也頗為安慰。\n　    我家境清寒，但志節高超、不怕艱難，遇事越挫越勇。興趣廣泛，喜歡閱讀、運動、唱歌….。課餘常至圖書館閱讀電腦書籍及報章雜誌，充實自己；空閒，喜愛打球(藍球及羽毛球)和唱歌，因為打球的競技及歌曲的旋律都能給我愉悅的心境。連續假日裡，親戚及我們母子三人也會大伙兒結伴去爬山踏青，放鬆一下緊張的心情，縱然我家成員只有三人，在親友的溫情滋潤下，平常也不會感到孤單寂寞。\n\n　    國中時期，由於『理化』課，讓我接觸了電子，並想探求『電子學』的奧秘。因此，國三時，便立下志願──朝『技職教育』發展。在母親的支持下，我如願進了高雄高工電子科。進入高職後，為我帶來了多樣化的發展空間，學業成績也名列前茅，同學們的互相砌蹉更使我獲益良多。在技術士證照方面，也順利的通過『電力電子乙級檢定』，但力爭上游的我，總喜歡觀察身旁的人、事、物並努力發掘。我在高職時，擔任班長、衛生股長、風紀股長等，使我在待人處世方面能圓融，個性上也變得更加成熟穩重。另一面在師長的潛移默化之下，幫我建立思考的邏輯，並且學習到如何有系統地去發掘問題、分析問題、進而解決問題的能力。\n\n　   對於未來，希望能由『基礎課業』開始學習，並能融會貫通而運用於生活中，期許自己能成為優秀的科技人才。', 0),
(6, 3, '在台灣應徵工作，或於人力銀行求職網填寫求職資料時，通常會有自傳的欄位，主要目的在於說服人資主管為什麼該選擇你進入面試階段，和另外一項求職文件『求職信』有異曲同工之妙。 建議求職者於撰寫大學自傳時，可以多展現自己適合該職缺/公司的個人特質及工作價值觀，同時利用自己的個人興趣及背景經歷做背書；此外，可以附上自己的職涯規劃。', 0),
(7, 3, '我出生於ＯＯ，是家中的次子。父母為退休老師，哥哥目前攻讀電機博士；在這樣的環境中成長，使我可以心無旁鶩的求學。父母和哥哥在我生命中扮演舉足輕重的角色，常常在我求學過程中給我適當的建議，使我在徬徨受挫時重拾信心並朝目標邁進。\n\n高中期間，我除了專注於學業外，也參加了社團活動－雷霆社，又名榮譽服務隊，這個社團的工作內容主要是於晨間執行交通管制和糾舉學生的服儀。由於要起的比一般學生早，我養成了早睡早起的習慣。身為榮譽服務隊的一員，我對自我的要求比一般人高：服儀端正、言行有禮並認真執勤。無論烈日高照、寒風刺骨抑或刮風下雨，我從沒有在工作崗位缺席。這也培養了我對一份工作該有的「責任感」和「榮譽心」。\n\n上了大學，參加了許多營隊並擔任工作人員。從組員當到了組長，這段期間我真的學到很多。擔任組員，訓練了我在短時間內完成組長交代不同任務的能力；擔任組長，訓練了我「人盡其才」和「溝通協調」的能力。另外，我也利用課餘時間打工，應徵學校敦煌書局的工讀生。在敦煌服務，訓練我面帶微笑並且有耐心的處理每個客人的問題；除此之外，由於操作收銀機會有現金交易，也養成我「細心謹慎」的工作態度。\n\n服役期間，我負責管理營區單位的伙房，我學習到了「分類」、「管理」、和「抗壓」。將各式各樣的食材做最好的「分類」可以有助於食勤兵烹飪流程並有助於我做最妥善的「管理」。面對長官對飲食方面各種的要求，我盡我最大的能力去滿足長官，將壓力化成動力。\n\n現在我已服完役，對於即將要步入職場，我了解到自己仍有不足之處。因此每天除了加強通訊方面的專業以外，我也會固定花時間做運動。我熱愛慢跑。在慢跑的過程中我可以了解到自己的極限，我對自己的要求就是「不斷進步」，今天的我要比昨天的我更好；明天我將訂定超越今天的自己的目標，並戮力達到目標。而慢跑是我鍛鍊心志與體能的方法。\n\n謝謝您撥冗閱讀這篇自傳，我已經準備好了，我希望可以獲得面試的機會讓我為貴公司效力，謝謝！', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `school` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `education`
--

INSERT INTO `education` (`id`, `uid`, `school`, `department`, `sh`) VALUES
(1, 1, '新北市立泰山高級中學', '普通科', 1),
(3, 1, '世新大學', '數位多媒體設計學系', 0),
(13, 1, '東吳大學', '經濟學系', 1),
(14, 1, '銘傳大學', '數位媒體設計學系', 0),
(15, 2, '暖暖高中', '普通科', 1),
(16, 2, '國立陽明大學', '科技與社會研究所', 1),
(17, 2, '實踐大學', '資訊科技與管理學系', 1),
(18, 3, '山猴高中', '狂野系', 1),
(19, 3, '野生市野猴大學', '雙手斧系', 1),
(20, 3, '義守大學', '金融管理學系', 0),
(21, 3, '逢甲大學', '資訊管理學系', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `experience`
--

CREATE TABLE `experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `experience`
--

INSERT INTO `experience` (`id`, `uid`, `title`, `class`, `description`, `sh`) VALUES
(1, 1, '討伐哥布林', 'f', '要職業是士兵的人帶隊才能解，而且要有5個人，沒有會拿不到勳章，首先先跟法蘭城南城門邊(155.103)的士兵長歐裡說話，然後到法蘭城南門出去的哥布林洞窟(437.308)。', 1),
(5, 1, '風之洞窟', 'd', '由奇利村側東南方在十樓每人將隨機打到的六個黃蜂的蜜交給看守的月之輪熊', 1),
(6, 2, '翹課', 'f', '下雨不想上課', 1),
(7, 2, '夜衝', 'f', '白天睡太多晚上睡不著', 1),
(8, 3, '討伐山豬', 'd', '因為農田被破壞就要去討伐山豬', 1),
(9, 3, '討伐山豬王', 'c', '因為大量伐山豬後山豬王暴怒造成更大傷害', 1),
(10, 3, '傑諾瓦村護衛', 'd', '護衛村民逃往別處', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `jobconditions`
--

CREATE TABLE `jobconditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `nature` int(1) UNSIGNED NOT NULL,
  `period` int(1) UNSIGNED NOT NULL,
  `money` int(6) NOT NULL,
  `place` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `jobconditions`
--

INSERT INTO `jobconditions` (`id`, `uid`, `nature`, `period`, `money`, `place`, `category`) VALUES
(1, 1, 2, 2, 99000, 'zxcasdvcva', 'zxcaas'),
(2, 2, 3, 2, 88888, '高雄', '自由業'),
(3, 3, 1, 1, 100000, '阿斯提亞鎮', '前衛');

-- --------------------------------------------------------

--
-- 資料表結構 `personal`
--

CREATE TABLE `personal` (
  `id` int(10) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `sex` int(1) NOT NULL,
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `license` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(3) NOT NULL,
  `weight` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `personal`
--

INSERT INTO `personal` (`id`, `uid`, `sex`, `name`, `address`, `status`, `license`, `height`, `weight`) VALUES
(1, 1, 1, '冒險者甲', 'aa國bb城cc村', 2, 'oo冒險公會劍士', 177, 70),
(2, 2, 1, '勇者A', 'zz國xx城yy村', 1, 'ccc冒險公會戰士', 180, 70),
(3, 3, 1, '狂戰士', '新北市泰山區貴子里致遠新村55之1號', 1, 'aa冒險者公會近戰系', 190, 100);

-- --------------------------------------------------------

--
-- 資料表結構 `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narrative` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `works`
--

INSERT INTO `works` (`id`, `uid`, `title`, `narrative`, `position`, `sh`) VALUES
(1, 1, '皮甲', '盔甲，是人類在武力衝突中保護身體的器具，也叫甲冑、鎧甲。其中盔與冑都是指保護頭部的防具；鎧與甲是保護身體的防具，而主要是保護胸腹的重要臟器之用。', 'https://zh.wikipedia.org/wiki/%E7%9B%94%E7%94%B2', 1),
(2, 1, '鎧甲', '護甲，又稱防彈護甲，華人圈內通稱防彈衣或防彈背心，而在香港、澳門和廣東[來源請求]則稱之為避彈衣。', 'https://zh.wikipedia.org/wiki/%E9%98%B2%E5%BD%88%E8%83%8C%E5%BF%83', 0),
(4, 2, '高雄市', '高雄市，通稱高雄，簡稱「高」，是中華民國的直轄市，「六都」之一', 'https://www.google.com/search?ei=vtcCX9j1HLeFr7wPze-diAc&q=%E9%AB%98%E9%9B%84&oq=%E9%AB%98%E9%9B%84&gs_lcp=CgZwc3ktYWIQAzIECAAQQzIHCAAQQxCLAzIICAAQsQMQiwMyBQgAELEDMgQIABBDMgoIABCDARBDEIsDMggIABCxAxCLAzICCAAyBQgAEIMBMgQIABBDOgUIABCLA1C8NVjJQmCCSWgAcAB4AIABLIgB9QGSAQE3mAEAoAEBqgEHZ3dzLXdpergBAw&sclient=psy-ab&ved=0ahUKEwjYzPiDkrjqAhW3wosBHc13B3EQ4dUDCAw&uact=5', 1),
(5, 1, '劍', '劍，是一種尖頂且雙邊開鋒的冷兵器，是種可以用來刺擊和砍殺的武器。用劍的方式稱為劍術。', 'https://zh.wikipedia.org/wiki/%E5%8A%8D', 1),
(6, 1, '盾', '盾，或稱干、楯、牌、盾牌，是保護裝備的一種，和盔甲一樣用於武裝衝突中，主要用來阻擋外來攻擊，包括可阻截箭，或擋開刀劍、槌和戰斧的攻擊。與盔甲不一樣的是盔甲穿身上，而盾常持手上。', 'https://zh.wikipedia.org/wiki/%E7%9B%BE', 1),
(7, 1, 'wiki', 'wiki是在全球資訊網上開放，且可供多人協同創作的超文字系統，由沃德·坎寧安於1995年首先開發。沃德·坎寧安將wiki定義為「一種允許一群用戶用簡單的描述來建立和連接一組網頁的社會計算系統」。', 'https://zh.wikipedia.org/wiki/Wiki', 1),
(8, 3, '野豬', '現今肉類食糧主要來源之一的家豬，也是於8000年前由野豬馴化而成，牠是野豬下的一個亞種。野豬不僅與家豬外貌極為不同，成長速度也遠比家豬慢得多，體重亦較輕。', 'https://www.google.com/search?q=%E9%87%8E%E8%B1%AC&oq=%E9%87%8E%E8%B1%AC&aqs=chrome..69i57.480j0j1&sourceid=chrome&ie=UTF-8', 1),
(9, 3, '野豬王', '本該生長在山林的小野豬貪吃又貪玩，被主人馴養成一般的家豬，牠如何成長為狡猾勇猛卻又知恩圖報的野豬王呢？', 'https://www.books.com.tw/products/0010635873', 1),
(10, 3, '狂戰士', '狂戰士，berserk 此字的由來意指「披熊皮者」，由 ber「熊」與 serk「衣衫」組成。後來意思轉變，成為具有異常力量，在發怒時，可以進入出神的狂暴狀態，可以不著鎧甲就迎向敵人進行戰鬥的勇士，而且不懼火和利器(鐵丶鋼等? )的劈砍。', 'https://www.google.com/search?ei=bNMCX8TfO-WPr7wP4quo4Ac&q=%E7%8B%82%E6%88%B0%E5%A3%AB&oq=%E7%8B%82%E6%88%B0%E5%A3%AB&gs_lcp=CgZwc3ktYWIQAzICCAAyAggAMgUIABCLAzIFCAAQiwMyBQgAEIsDMgUIABCLAzIFCAAQiwMyBQgAEIsDMgUIABCLAzIFCAAQiwM6BAgAEEdQ0VdY0Vdg2FtoAHABeACAASWIASWSAQExmAEAoAECoAEBqgEHZ3dzLXdpergBAQ&sclient=psy-ab&ved=0ahUKEwjExeb0jbjqAhXlx4sBHeIVCnwQ4dUDCAw&uact=5', 1),
(11, 3, '斧', '斧，又稱斧頭、戚，是一種武器或者伐木工具。是由一根木棍把手接著一塊梯形刀片所構成。', 'https://zh.wikipedia.org/wiki/%E6%96%A7', 1),
(12, 2, '調色盤', '調色盤', 'http://220.128.133.15/s1090212/js/color/', 1),
(13, 2, '電子鐘', '電子鐘', 'http://220.128.133.15/s1090212/js/clock/', 1),
(14, 2, '類比鐘', '類比鐘', 'http://220.128.133.15/s1090212/js/analog/', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `accdb`
--
ALTER TABLE `accdb`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `autobiography`
--
ALTER TABLE `autobiography`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `jobconditions`
--
ALTER TABLE `jobconditions`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `accdb`
--
ALTER TABLE `accdb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `autobiography`
--
ALTER TABLE `autobiography`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `jobconditions`
--
ALTER TABLE `jobconditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
