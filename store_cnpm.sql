-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2022 lúc 07:43 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store_cnpm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `publish_date` date DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `inch` float DEFAULT NULL,
  `current_quantity` int(11) NOT NULL,
  `enable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`book_id`, `category_id`, `description`, `main_image`, `price`, `title`, `author`, `create_date`, `publish_date`, `publisher`, `page`, `height`, `width`, `inch`, `current_quantity`, `enable`) VALUES
(20, 1, '<p>Learn PHP Fast and Learn It Well. Master PHP Programming with a unique Hands-On Project<br />\n<strong>New Book by Best Selling Author Jamie Chan. Book 6 of the Learn Coding Fast Series.</strong><br />\nDo you want to learn PHP fast but are overwhelmed by all the information you find online? Or perhaps you have completed numerous PHP tutorials but are still unsure how everything works together.<br />\nThis book is for you.<br />\nYou no longer have to waste your time and money learning PHP from lengthy books, expensive online courses or fragmented PHP tutorials. This book covers all the major topics in PHP and is written in a&nbsp;<strong>concise and to the point</strong>&nbsp;manner. In addition, you&#39;ll be guided through a&nbsp;<strong>project</strong>&nbsp;at the end of the book where you get to apply the concepts learned and see how it all ties together.</p>\n\n<p>What this book offers...</p>\n\n<p><br />\n<strong>PHP for Beginners</strong><br />\nComplex concepts are broken down into simple steps to ensure that you can easily master PHP even if you have never coded before. Concepts are presented in a &quot;to-the-point&quot; style to cater to the busy individual; no fluff or unnecessary details.<br />\n<br />\n<strong>Careful selection of topics</strong><br />\n<br />\nTopics are carefully selected to give you a broad exposure to PHP. These topics include HTML form handling, security management (prevention of XSS and SQL injection), object-oriented programming, error and exception handling techniques, databases and more.<br />\n<br />\n<strong>Carefully Chosen PHP Examples</strong><br />\n<br />\nExamples are carefully chosen to illustrate all concepts. In addition, the output for all examples is provided immediately so you do not have to wait till you have access to your computer to test the examples.<br />\n&nbsp;</p>\n\n<p>How is this book different...</p>\n\n<p><br />\nThe best way to learn programming is by doing. This book includes a complete project at the end of the book where you get to build a mini-blog using PHP and MySQL.<br />\n<br />\nWorking through the project gives you a chance to see how everything works together, including how to set up your servers, create a database, connect to it, process forms, manage security issues, handle errors and exceptions and more. Completing the project will not only give you an immense sense of achievement, it&#39;ll also help you retain the knowledge you&#39;ve learned and master the language.<br />\n<br />\nAre you ready to dip your toes into the exciting world of PHP coding? This book is for you. Click the BUY button and download it now.<br />\n&nbsp;</p>\n', 'learnphp.jpg', 150000, 'Learn PHP in One Day and Learn It Well', 'Jamie Chan', '2021-12-05 17:20:47', '2021-12-16', 'Fahasa', 200, 25, 25, NULL, 470, NULL),
(21, 1, '<p>Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain. It seems to have a mind of its own, a mind that doesn&#39;t always want to take in the dry, technical stuff you&#39;re forced to study.<br />\n<br />\nThe fact is your brain craves novelty. It&#39;s constantly searching, scanning, waiting for something unusual to happen. After all, that&#39;s the way it was built to help you stay alive. It takes all the routine, ordinary, dull stuff and filters it to the background so it won&#39;t interfere with your brain&#39;s real work--recording things that matter. How does your brain know what matters? It&#39;s like the creators of the Head First approach say, suppose you&#39;re out for a hike and a tiger jumps in front of you, what happens in your brain? Neurons fire. Emotions crank up. Chemicals surge.<br />\n<br />\nThat&#39;s how your brain knows.<br />\n<br />\nAnd that&#39;s how your brain will learn Java.&nbsp;<em>Head First Java</em>&nbsp;combines puzzles, strong visuals, mysteries, and soul-searching interviews with famous Java objects to engage you in many different ways. It&#39;s fast, it&#39;s fun, and it&#39;s effective. And, despite its playful appearance, Head First Java is serious stuff: a complete introduction to object-oriented programming and Java. You&#39;ll learn everything from the fundamentals to advanced topics, including threads, network sockets, and distributed programming with RMI. And the new. second edition focuses on Java 5.0, the latest version of the Java language and development platform. Because Java 5.0 is a major update to the platform, with deep, code-level changes, even more careful study and implementation is required. So learning the Head First way is more important than ever.<br />\n<br />\nIf you&#39;ve read a Head First book, you know what to expect--a visually rich format designed for the way your brain works. If you haven&#39;t, you&#39;re in for a treat. You&#39;ll see why people say it&#39;s unlike any other Java book you&#39;ve ever read.<br />\n<br />\nBy exploiting how your brain works,&nbsp;<em>Head First Java</em>&nbsp;compresses the time it takes to learn and retain--complex information. Its unique approach not only shows you what you need to know about Java syntax, it teaches you to think like a Java programmer. If you want to be bored, buy some other book. But if you want to understand Java, this book&#39;s for you.</p>\n', 'headfirstjava.jpg', 103950, 'Head First Java: A Brain-Friendly Guide', 'Kathy Sierra', '2021-12-05 20:06:55', '2016-01-01', 'Fahasa', 250, 25, 25, NULL, 170, NULL),
(22, 1, '<p>The history of Python kicked off when Guido van Rossum, the founder of Python, started working on it in the late 1980s. Python is the successor of the ABC programming language. The first Python version was released back in 1991 and has only grown exponentially since then.<br />\n<br />\nIt now has a vast community that releases the latest updates regularly. Guido van Rossum is also known as the &ldquo;<strong><em>Benevolent Dictator for Life</em></strong>&rdquo;. This title was given to him by the Python community to honor him for his long-term commitment and dedication to the project and for being the project leader for such a long period.<br />\n<br />\nPython is a high-level interpreted programming language that is used throughout the world for general-purpose programming. It is an open-source programming language licensed by both the Free Software Foundation (FSF) and Open-Source Initiative (OSI). Like some other programming languages, its source code is also available under the GNU General Public License (GPL).Python 2.x, being the legacy version, was used earlier across the globe. It stopped receiving newer features and security updates after Python 2.7, so people migrated to Python version 3.x.Throughout this book, we will be focusing more on the Python 3.x version, which is the latest and is currently in active development.Before we proceed further, I would like to inform you all that the purpose of writing this book is to make your understanding of Python clearer by explaining technical terms in layman&rsquo;s language with the help of code snippets and practical examples.I also wanted to make sure that the reader does not feel bored while reading the book, so I&rsquo;ll be adding some attractive code snippets that are appealing to the eyes.</p>\n', 'python_1.jpg,python_2.jpg', 52500, 'Python Programming for Beginners', 'AMZ Publishing', '2021-12-05 20:06:55', '2016-01-01', 'Fahasa', 300, 16, 24, NULL, 240, NULL),
(23, 1, '<p>Available at a lower price from other sellers&nbsp;that may not offer free Prime shipping.</p>\n\n<p><strong>The second edition of the best-selling Python book in the world (over 1 million copies sold!). A fast-paced, no-nonsense guide to programming in Python. Updated and thoroughly revised to reflect the latest in Python code and practices.</strong><br />\n<br />\n<em>Python Crash Course</em>&nbsp;is the world&#39;s best-selling guide to the Python programming language. This fast-paced, thorough introduction to programming with Python will have you writing programs, solving problems, and making things that work in no time.<br />\n<br />\nIn the first half of the book, you&#39;ll learn basic programming concepts, such as variables, lists, classes, and loops, and practice writing clean code with exercises for each topic. You&#39;ll also learn how to make your programs interactive and test your code safely before adding it to a project. In the second half, you&#39;ll put your new knowledge into practice with three substantial projects: a Space Invaders-inspired arcade game, a set of data visualizations with Python&#39;s handy libraries, and a simple web app you can deploy online.<br />\n<br />\nAs you work through the book, you&#39;ll learn how to:<br />\n&nbsp;&nbsp;<strong>&bull;</strong>&nbsp;&nbsp;Use powerful Python libraries and tools, including Pygame, Matplotlib, Plotly, and Django<br />\n&nbsp;&nbsp;<strong>&bull;</strong>&nbsp;&nbsp;Make 2D games that respond to keypresses and mouse clicks, and that increase in difficulty<br />\n&nbsp;&nbsp;<strong>&bull;</strong>&nbsp;&nbsp;Use data to generate interactive visualizations<br />\n&nbsp;&nbsp;<strong>&bull;</strong>&nbsp;&nbsp;Create and customize web apps and deploy them safely online<br />\n&nbsp;&nbsp;<strong>&bull;</strong>&nbsp;&nbsp;Deal with mistakes and errors so you can solve your own programming problems<br />\n<br />\nIf you&#39;ve been thinking about digging into programming,&nbsp;<em>Python Crash Course</em>&nbsp;will get you writing real programs fast. Why wait any longer? Start your engines and code!</p>\n', 'python_crashcoure_1.jpg', 250000, 'Python CrashCoure, 2nd Edition', 'Eric Matthes', '2021-12-05 20:06:55', '2012-01-01', 'Fahasa', 1000, 16, 24, NULL, 120, NULL),
(24, 1, '<p>Available at a lower price from other sellers&nbsp;that may not offer free Prime shipping.</p>\n\n<p>I am not a recruiter. I am a software engineer. And as such, I know what it&#39;s like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I&#39;ve been through this as a candidate and as an interviewer.<br />\n<br />\nCracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I&#39;ve coached and interviewed hundreds of software engineers. The result is this book.<br />\n<br />\nLearn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions.<br />\n<br />\nThese interview questions are real; they are not pulled out of computer science textbooks. They reflect what&#39;s truly being asked at the top companies, so that you can be as prepared as possible.&nbsp;<strong>WHAT&#39;S INSIDE?</strong></p>\n\n<ul>\n	<li>189 programming interview questions, ranging from the basics to the trickiest algorithm problems.</li>\n	<li>A walk-through of how to derive each solution, so that you can learn how to get there yourself.</li>\n	<li>Hints on how to solve each of the 189 questions, just like what you would get in a real interview.</li>\n	<li>Five proven strategies to tackle algorithm questions, so that you can solve questions you haven&#39;t seen.</li>\n	<li>Extensive coverage of essential topics, such as big O time, data structures, and core algorithms.</li>\n	<li>A behind the scenes look at how top companies like Google and Facebook hire developers.</li>\n	<li>Techniques to prepare for and ace the soft side of the interview: behavioral questions.</li>\n	<li>For interviewers and companies: details on what makes a good interview question and hiring process.</li>\n</ul>\n\n<p><strong>Illustrations noteIllustrations</strong>: Illustrations, black and white</p>\n', 'crackcoding.jpg', 300000, 'Crack Coding', 'Laakmann McDowell', '2021-12-05 20:06:55', '2016-01-01', 'Fahasa', 500, 16, 24, NULL, 0, NULL),
(25, 1, '<p><strong>A fast-paced, thorough introduction to modern C++ written for experienced programmers. After reading&nbsp;<em>C++ Crash Course</em>, you&#39;ll be proficient in the core language concepts, the C++ Standard Library, and the Boost Libraries.</strong><br />\n<br />\nC++ is one of the most widely used languages for real-world software. In the hands of a knowledgeable programmer, C++ can produce small, efficient, and readable code that any programmer would be proud of.<br />\n<br />\nDesigned for intermediate to advanced programmers, C++ Crash Course&nbsp;cuts through the weeds to get you straight to the core of C++17, the most modern revision of the ISO standard. Part 1 covers the core of the C++ language, where you&#39;ll learn about everything from types and functions, to the object life cycle and expressions. Part 2 introduces you to the C++ Standard Library and Boost Libraries, where you&#39;ll learn about all of the high-quality, fully-featured facilities available to you. You&#39;ll cover special utility classes, data structures, and algorithms, and learn how to manipulate file systems and build high-performance programs that communicate over networks.&nbsp;<br />\n<br />\nYou&#39;ll learn all the major features of modern C++, including:<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Fundamental types, reference types, and user-defined types<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;The object lifecycle including storage duration, memory management, exceptions, call stacks, and the RAII paradigm&nbsp;<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Compile-time polymorphism with templates and run-time polymorphism with virtual classes<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Advanced expressions, statements, and functions<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Smart pointers, data structures, dates and times, numerics, and probability/statistics facilities<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Containers, iterators, strings, and algorithms<br />\n&nbsp;&nbsp;&bull;&nbsp;&nbsp;Streams and files, concurrency, networking, and application development<br />\n<br />\nWith well over 500 code samples and nearly 100 exercises, C++ Crash Course is sure to help you build a strong C++ foundation.</p>\n', 'c++_crash_course.jpg', 140000, 'C++ Crash Course', 'Josh Lospinoso', '2021-12-05 20:06:55', '2016-01-01', 'Fahasa', 150, 16, 24, NULL, 0, NULL),
(26, 1, '<p><strong>What will you learn from this book?</strong></p>\n\n<p>Dive into C# and create apps, user interfaces, games, and more using this fun and highly visual introduction to C#, .NET Core, and Visual Studio. With this completely updated guide, which covers C# 8.0 and Visual Studio 2019, beginning programmers like you will build a fully functional game in the opening chapter. Then you&#39;ll learn how to use classes and object-oriented programming, create 3D games in Unity, and query data with LINQ. And you&#39;ll do it all by solving puzzles, doing hands-on exercises, and building real-world applications. By the time you&#39;re done, you&#39;ll be a solid C# programmer--and you&#39;ll have a great time along the way!</p>\n\n<p><strong>What&#39;s so special about this book?</strong></p>\n\n<p>Based on the latest research in cognitive science and learning theory,&nbsp;<em>Head First C#</em>&nbsp;uses a visually rich format to engage your mind rather than a text-heavy approach that puts you to sleep. Why waste your time struggling with new concepts? This multisensory learning experience is designed for the way your brain really works.</p>\n', 'csharp_headfirst.jpg', 350000, 'Head First C#', 'Addrew & Jenifer', '2021-12-05 20:06:55', '2014-01-01', 'Fahasa', 600, 16, 24, NULL, 0, NULL),
(27, 1, '<p>This full-color book will show you how to make your websites more interactive and your interfaces more interesting and intuitive.<br />\n<br />\n<strong>THIS BOOK COVERS:</strong></p>\n\n<ol>\n	<li><strong>Basic programming concepts</strong>&nbsp;- assuming&nbsp;<em>no prior knowledge</em>&nbsp;of programming beyond an ability to create a web page using HTML &amp; CSS</li>\n	<li><strong>Core elements of the JavaScript language</strong>&nbsp;- so you can learn how to write your own scripts from scratch</li>\n	<li><strong>jQuery</strong>&nbsp;- which will allow you to simplify the process of writing scripts (this is introduced half-way through the book once you have a solid understanding of JavaScript)</li>\n	<li><strong>How to recreate techniques you will have seen on other web sites</strong>&nbsp;such as sliders, content filters, form validation, updating content using Ajax, and much more (these examples demonstrate writing your own scripts from scratch and how the theory you have learned is put into practice).</li>\n</ol>\n\n<p>As with our first book (the best-selling&nbsp;<strong>HTML &amp; CSS: Design and Build Websites</strong>), each chapter:</p>\n\n<ul>\n	<li>Breaks subjects down into bite-sized chunks with a new topic on each page</li>\n	<li>Contains clear descriptions of syntax, each one demonstrated with inspiring code samples</li>\n	<li>Uses diagrams and photography to explain complex concepts in a visual way</li>\n</ul>\n\n<p>By the end of the book, not only will you be able to use the thousands of scripts, JavaScript APIs, and jQuery plugins that are freely available on the web, and be able to customize them - you will also be able to create your own scripts from scratch.<br />\n<br />\nIf you&#39;re looking to create more enriching web experiences, then this is the book for you.</p>\n', 'javascript.jpg', 110000, 'Learn Javascript and JQuery', 'Jon Duckett', '2021-12-05 20:06:55', '2012-01-01', 'Fahasa', 1200, 16, 24, NULL, 0, NULL),
(28, 1, '<p>This full-color book will show you how to make your websites more interactive and your interfaces more interesting and intuitive.<br />\n<br />\n<strong>THIS BOOK COVERS:</strong></p>\n\n<ol>\n	<li><strong>Basic programming concepts</strong>&nbsp;- assuming&nbsp;<em>no prior knowledge</em>&nbsp;of programming beyond an ability to create a web page using HTML &amp; CSS</li>\n	<li><strong>Core elements of the JavaScript language</strong>&nbsp;- so you can learn how to write your own scripts from scratch</li>\n	<li><strong>jQuery</strong>&nbsp;- which will allow you to simplify the process of writing scripts (this is introduced half-way through the book once you have a solid understanding of JavaScript)</li>\n	<li><strong>How to recreate techniques you will have seen on other web sites</strong>&nbsp;such as sliders, content filters, form validation, updating content using Ajax, and much more (these examples demonstrate writing your own scripts from scratch and how the theory you have learned is put into practice).</li>\n</ol>\n\n<p>As with our first book (the best-selling&nbsp;<strong>HTML &amp; CSS: Design and Build Websites</strong>), each chapter:</p>\n\n<ul>\n	<li>Breaks subjects down into bite-sized chunks with a new topic on each page</li>\n	<li>Contains clear descriptions of syntax, each one demonstrated with inspiring code samples</li>\n	<li>Uses diagrams and photography to explain complex concepts in a visual way</li>\n</ul>\n\n<p>By the end of the book, not only will you be able to use the thousands of scripts, JavaScript APIs, and jQuery plugins that are freely available on the web, and be able to customize them - you will also be able to create your own scripts from scratch.<br />\n<br />\nIf you&#39;re looking to create more enriching web experiences, then this is the book for you.</p>\n', 'cleancode.jpg', 500000, 'Clean code', 'Robert C.Martin', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(29, 2, '<p><strong><strong>&ldquo;Original, sparkling bright, and layered with feeling.&rdquo;&mdash;Sally Thorne, author of&nbsp;<em>The Hating Game</em><br />\n<br />\nA romance writer who no longer believes in love and a literary writer stuck in a rut engage in a summer-long challenge that may just upend everything they believe about happily ever afters.</strong></strong><br />\n<br />\nAugustus Everett is an acclaimed author of literary fiction. January Andrews writes bestselling romance. When she pens a happily ever after, he kills off his entire cast.<br />\n<br />\nThey&rsquo;re polar opposites.<br />\n<br />\nIn fact, the only thing they have in common is that for the next three months, they&#39;re living in neighboring beach houses, broke, and bogged down with writer&#39;s block.<br />\n<br />\nUntil, one hazy evening, one thing leads to another and they strike a deal designed to force them out of their creative ruts: Augustus will spend the summer writing something happy, and January will pen the next Great American Novel. She&rsquo;ll take him on field trips worthy of any rom-com montage, and he&rsquo;ll take her to interview surviving members of a backwoods death cult (obviously). Everyone will finish a book and no one will fall in love. Really.</p>\n', 'beachreach_1.jpg,beachreach_2.jpg', 100000, 'Beach Read', 'Emily Henry', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(30, 2, '<p>ucy Hutton and Joshua Templeman hate each other. Not dislike. Not begrudgingly tolerate. Hate. And they have no problem displaying their feelings through a series of ritualistic passive aggressive maneuvers as they sit across from each other, executive assistants to co-CEOs of a publishing company. Lucy can&rsquo;t understand Joshua&rsquo;s joyless, uptight, meticulous approach to his job. Joshua is clearly baffled by Lucy&rsquo;s overly bright clothes, quirkiness, and Pollyanna attitude.</p>\n\n<p>Now up for the same promotion, their battle of wills has come to a head and Lucy refuses to back down when their latest game could cost her her dream job&hellip;But the&nbsp;tension between Lucy and Joshua has also reached its boiling point, and Lucy is discovering that maybe she doesn&rsquo;t hate Joshua. And maybe, he doesn&rsquo;t hate her either. Or maybe this is just another game.</p>\n', 'hating_game_2.jpg,hating_game-1.jpg', 120000, 'The Hating game: A Novel', 'Sally Thorne', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(31, 2, '<p><strong><strong><strong>A BuzzFeed Best Summer Read of 2021</strong><br />\n<br />\nWhen a fake relationship between scientists meets the irresistible force of attraction, it throws one woman&#39;s carefully calculated theories on love into chaos.</strong></strong><br />\n<br />\nAs a third-year Ph.D. candidate, Olive Smith doesn&#39;t believe in lasting romantic relationships--but her best friend does, and that&#39;s what got her into this situation. Convincing Anh that Olive is dating and well on her way to a happily ever after was always going to take more than hand-wavy Jedi mind tricks: Scientists require proof. So, like any self-respecting biologist, Olive panics and kisses the first man she sees.<br />\n<br />\nThat man is none other than Adam Carlsen, a young hotshot professor--and well-known ass. Which is why Olive is positively floored when Stanford&#39;s reigning lab tyrant agrees to keep her charade a secret and be her fake boyfriend. But when a big science conference goes haywire, putting Olive&#39;s career on the Bunsen burner, Adam surprises her again with his unyielding support and even more unyielding...six-pack abs.<br />\n<br />\nSuddenly their little experiment feels dangerously close to combustion. And Olive discovers that the only thing more complicated than a hypothesis on love is putting her own heart under the microscope.</p>\n', 'love.jpg', 170000, 'The Love Hypothesis', 'Ali Hazelwood', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(32, 2, '<p><strong>Tessa Bailey is back with a&nbsp;<em>Schitt&rsquo;s Creek</em>-inspired rom-com about a Hollywood &ldquo;It Girl&rdquo; who&rsquo;s cut off from her wealthy family and exiled to a small Pacific Northwest beach town... where she butts heads with a surly, sexy local who thinks she doesn&rsquo;t belong.&nbsp;</strong></p>\n\n<p><strong>As seen on&nbsp;E!Online, PopSugar, CNN, EliteDaily, Vulture, Buzzfeed, Bustle, the Nerd Daily, PARADE, LA Magazine, Country Living, USA Today, and more!</strong></p>\n\n<p>Piper Bellinger is fashionable, influential, and her reputation as a wild child means the paparazzi are constantly on her heels. When too much champagne and an out-of-control rooftop party lands Piper in the slammer, her stepfather decides enough is enough. So he cuts her off, and sends Piper and her sister to learn some responsibility running their late father&rsquo;s dive bar... in Washington.</p>\n\n<p>Piper hasn&rsquo;t even been in Westport for five minutes when she meets big, bearded sea captain Brendan, who thinks she won&rsquo;t last a week outside of Beverly Hills. So what if Piper can&rsquo;t do math, and the idea of sleeping in a shabby apartment with bunk beds gives her hives. How bad could it really be? She&rsquo;s determined to show her stepfather and the hot, grumpy local that she&rsquo;s more than a pretty face.</p>\n\n<p>Except it&rsquo;s a&nbsp;<em>small</em>&nbsp;town and everywhere she turns, she bumps into Brendan. The fun-loving socialite and the gruff fisherman are polar opposites, but there&rsquo;s an undeniable attraction simmering between them. Piper doesn&rsquo;t want any distractions, especially feelings for a man who sails off into the sunset for weeks at a time. Yet as she reconnects with her past and begins to feel at home in Westport, Piper starts to wonder if the cold, glamorous life she knew is what she truly wants. LA is calling her name, but Brendan and this town full of memories may have already caught her heart.&nbsp;</p>\n', 'happen_summer_1.jpg,happen_summer_2.jpg', 500000, 'It Happened One Summer: A Novel', 'Tessa Bailey', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(33, 2, '<p><strong>Named a Most Anticipated Book of 2021 by&nbsp;<em>Newsweek</em>&nbsp;∙&nbsp;<em>Oprah Magazine</em>&nbsp;∙ The Skimm<strong><strong><strong><strong><strong><strong>&nbsp;<strong><strong>∙</strong></strong></strong></strong></strong></strong></strong></strong>&nbsp;<em>Marie Claire</em>&nbsp;<strong><em><em>∙</em>&nbsp;Parade</em>&nbsp;</strong>∙&nbsp;<em>The Wall Street Journal</em><strong><strong><strong>&nbsp;<strong><strong><strong><strong>∙<strong>&nbsp;<em>Chicago Tribune&nbsp;<strong>∙</strong>&nbsp;</em></strong></strong></strong></strong></strong></strong></strong></strong><em>PopSugar&nbsp;∙&nbsp;BookPage</em>&nbsp;<strong><em>∙</em>&nbsp;BookBub</strong>&nbsp;∙ Betches&nbsp;<strong>∙ SheReads&nbsp;<strong>∙ Good Housekeeping&nbsp;<strong><strong><strong>∙</strong></strong></strong></strong></strong>&nbsp;BuzzFeed<strong><strong>&nbsp;<strong><strong><strong><strong>∙</strong></strong></strong></strong></strong></strong>&nbsp;<strong>Business Insider<strong><strong>&nbsp;<strong><strong><strong><strong>∙</strong></strong></strong></strong></strong></strong></strong>&nbsp;Real Simple<strong><strong><strong>&nbsp;<strong><strong><strong><strong>∙</strong></strong></strong></strong></strong></strong></strong>&nbsp;Frolic<strong><strong><strong>&nbsp;<strong><strong><strong><strong>∙</strong></strong></strong></strong></strong></strong></strong>&nbsp;and more!<br />\n<br />\n<em>Two best friends. Ten summer trips. One last chance to fall in love.</em><br />\n<br />\nFrom the</strong>&nbsp;<strong><em>New York Times</em>&nbsp;bestselling author of</strong>&nbsp;<strong><em>Beach Read&nbsp;</em>comes</strong>&nbsp;<strong>a sparkling new novel that will leave you with the warm, hazy afterglow usually reserved for the best vacations.</strong>&nbsp;&nbsp;<br />\n<br />\nPoppy and Alex. Alex and Poppy. They have nothing in common. She&rsquo;s a wild child; he wears khakis. She has insatiable wanderlust; he prefers to stay home with a book. And somehow, ever since a fateful car share home from college many years ago, they are the very best of friends. For most of the year they live far apart&mdash;she&rsquo;s in New York City, and he&rsquo;s in their small hometown&mdash;but every summer, for a decade, they have taken one glorious week of vacation together.<br />\n&nbsp;<br />\nUntil two years ago, when they ruined everything. They haven&#39;t spoken since.<br />\n&nbsp;<br />\nPoppy has everything she should want, but she&rsquo;s stuck in a rut. When someone asks when she was last truly happy, she knows, without a doubt, it was on that ill-fated, final trip with Alex. And so, she decides to convince her best friend to take one more vacation together&mdash;lay everything on the table, make it all right. Miraculously, he agrees.<br />\n&nbsp;<br />\nNow she has a week to fix everything. If only she can get around the one big truth that has always stood quietly in the middle of their seemingly perfect relationship. What could possibly go wrong?</p>\n', 'vacation.jpg', 250000, 'People We Meet on Vacation', 'Emily Henry', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(34, 2, '<p><strong><em>New York Times</em>&nbsp;bestselling author Tessa Bailey returns with a unique, sexy romantic comedy about a young married couple whose rocky relationship needs a serious renovation...</strong>&nbsp;</p>\n\n<p>Rosie and Dominic Vega are the perfect couple: high school sweethearts, best friends, madly in love. Well, they used to be anyway. Now Rosie&rsquo;s lucky to get a caveman grunt from the ex-soldier every time she walks in the door. Dom is faithful and a great provider, but the man she fell in love with ten years ago is nowhere to be found. When her girlfriends encourage Rosie to demand more out of life and pursue her dream of opening a restaurant, she decides to demand more out of love, too. Three words: marriage boot camp.&nbsp;</p>\n\n<p>Never in a million years did Rosie believe her stoic, too-manly-to-emote husband would&nbsp;actually agree&nbsp;to relationship rehab with a weed-smoking hippie. Dom talking about&nbsp;feelings?&nbsp;Sitting on pillows? Communing with nature? Learning love languages?&nbsp;<em>Nope</em>. But to her surprise, he&rsquo;s all in, and it forces her to admit her own role in their cracked foundation. As they complete one ridiculous&mdash;yet surprisingly helpful&mdash;assignment after another, their remodeled relationship gets stronger than ever. Except just as they&rsquo;re getting back on track, Rosie discovers Dom has a secret... and it could demolish everything.</p>\n\n<p><strong>&ldquo;Her voice feels as fresh and contemporary as a Netflix rom-com.&rdquo;&nbsp;&mdash;<em>Entertainment Weekly</em></strong></p>\n', 'loveher.jpg,loveher_2.jpg', 300000, 'Love Her or Lose Her: A Novel', 'Tessa Bailey', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(35, 2, '<p><strong>A&nbsp;<em>Good Morning America</em>,&nbsp;<em>FabFitFun</em>, and&nbsp;<em>Marie Claire&nbsp;</em>Book Club Pick</strong><br />\n<br />\n<strong>&ldquo;<em>In Five Years&nbsp;</em>is as clever as it is moving, the rare read-in-one-sitting novel you won&rsquo;t forget.&rdquo; &mdash;Chloe Benjamin,&nbsp;<em>New York Times&nbsp;</em>bestselling author of&nbsp;<em>The Immortalists</em></strong><br />\n<br />\n<strong><em>​</em></strong><strong>Perfect for fans of&nbsp;<em>Me Before You</em>&nbsp;and&nbsp;<em>One Day</em>&mdash;a striking, powerful, and moving love story following an ambitious lawyer who experiences an astonishing vision that could change her life forever.</strong><br />\n<br />\n<em>Where do you see yourself in five years?</em><br />\n<br />\nDannie Kohan lives her life by the numbers.<br />\n<br />\nShe is nothing like her lifelong best friend&mdash;the wild, whimsical, believes-in-fate Bella. Her meticulous planning seems to have paid off after she nails the most important job interview of her career and accepts her boyfriend&rsquo;s marriage proposal in one fell swoop, falling asleep completely content.<br />\n<br />\nBut when she awakens, she&rsquo;s suddenly in a different apartment, with a different ring on her finger, and beside a very different man. Dannie spends one hour exactly five years in the future before she wakes again in her own home on the brink of midnight&mdash;but it is one hour she cannot shake.&nbsp;<em>In Five Years&nbsp;</em>is an unforgettable love story, but it is not the one you&rsquo;re expecting.</p>\n', '5y_1.jpg,5y_2.jpg,5Y_3.jpg,5y_4.jpg', 300000, 'In Five Years: A Novel', 'Rebecca Serle', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(36, 2, '<p><strong><strong><strong><strong>Winner of the Goodreads Choice Award for Fiction | A Good Morning America Book Club Pick |&nbsp;<em>Independent (</em>London) Ten Best Books of the Year</strong><br />\n<br />\n<strong>&quot;A feel-good book guaranteed to lift your spirits.&quot;<em>&mdash;The Washington Post</em><br />\n<br />\nThe dazzling reader-favorite about the choices that go into a life well lived, from the acclaimed author of&nbsp;<em>How To Stop Time&nbsp;</em>and<em>&nbsp;The Comfort Book.</em></strong></strong></strong></strong><br />\n<br />\nSomewhere out beyond the edge of the universe there is a library that contains an infinite number of books, each one the story of another reality. One tells the story of your life as it is, along with another book for the other life you could have lived if you had made a different choice at any point in your life. While we all wonder how our lives might have been, what if you had the chance to go to the library and see for yourself? Would any of these other lives truly be better?<br />\n<br />\nIn&nbsp;<em>The Midnight Library</em>, Matt Haig&#39;s enchanting blockbuster novel, Nora Seed finds herself faced with this decision. Faced with the possibility of changing her life for a new one, following a different career, undoing old breakups, realizing her dreams of becoming a glaciologist; she must search within herself as she travels through the Midnight Library to decide what is truly fulfilling in life, and what makes it worth living in the first place.</p>\n', 'midnight.jpg', 500000, 'The Midnight Library: A Novel', 'Matt Haig', '2021-12-05 20:06:55', '2018-01-01', 'Fahasa', 250, 16, 24, NULL, 0, NULL),
(37, 3, '<p><strong>&ldquo;Jennifer&rsquo;s recipes are healthy, approachable, and creative. I literally want to make everything from this cookbook!&rdquo;&mdash;Gina Homolka, author of</strong>&nbsp;<em><strong>The Skinnytaste Cookbook</strong></em><br />\n<br />\nJennifer Segal, author of the blog and bestselling cookbook&nbsp;<em>Once Upon a Chef,</em>&nbsp;is known for her foolproof, updated spins on everyday classics. Meticulously tested&nbsp;and crafted with an eye toward both flavor and practicality, Jenn&rsquo;s recipes hone in on exactly what you feel like making.<br />\n<br />\nHere she devotes whole chapters to fan favorites, from Marvelous Meatballs to Chicken Winners, and Breakfast for Dinner to Family Feasts. Whether you decide on sticky-sweet Barbecued Soy and Ginger Chicken Thighs; an enlightened and healthy-ish take on Turkey, Spinach &amp; Cheese Meatballs; Chorizo-Style Burgers; or Brownie Pudding that comes together in under thirty minutes, Jenn has you covered.</p>\n', 'chef_1.jpg,chef_2.jpg,chef_3.jpg,chef_4.jpg', 150000, 'Once Upon a Chef', 'Jenifer Segal', '2021-12-05 20:59:04', '2021-12-15', '', 1500, 16, 24, NULL, 0, NULL),
(38, 3, '<p><strong><strong>Comfort classics with a lighter spin, from the creator of the healthy-eating blog Well Plated by Erin.</strong></strong><br />\n<br />\nKnown for her incredibly approachable, slimmed-down, and outrageously delicious recipes, Erin Clarke is the creator of the smash-hit food blog in the healthy-eating blogosphere,&nbsp;<em>Well Plated by Erin</em>. Clarke&#39;s site welcomes millions of readers, and with good reason: Her recipes are fast, budget-friendly, and clever; she never includes an ingredient you can&#39;t find in a regular supermarket or that isn&#39;t essential to a dish&#39;s success, and she hacks her recipes for maximum nutrition by using the &quot;stealthy healthy&quot; ingredient swaps she&#39;s mastered so that you don&#39;t lose an ounce of flavor.<br />\n<br />\nIn this essential cookbook for everyday cooking, Clarke shares more than 130 brand-new rapid-fire recipes, along with secrets to lightening up classic comfort favorites inspired by her midwestern roots, and clever recipe hacks that will enable you to put a healthy meal on the table any night of the week. Many of the recipes feature a single ingredient used in multiple, ingenious ways, such as Sweet Potato Boats 5 Ways. The recipes are affordable and keep practicality top-of-mind. She&#39;s eliminated odd leftover &quot;orphan&quot; ingredients and included Market Swaps so you can adjust the ingredients based on the season or what you have on hand. To help you make the most of your cooking, she&#39;s even included tips to store and reheat leftovers, as well as clever ideas to turn them into an entirely new dish. From One-Pot Creamy Sundried Tomato Orzo to Sheet Pan Tandoori Chicken, all of the recipes are accessible to cooks of every level, and so indulgent you won&#39;t detect the healthy ingredients. As Clarke always hears from her readers, &quot;My family doesn&#39;t like healthy food, but they LOVED this!&quot; This is your homey guide to a healthier kitchen.</p>\n', 'wellplate_1.jpg,wellplate_2.jpg,wellplate_3.jpg', 150000, 'The Well Plated Cookbook: Fast, Healthy Recipes Yo', 'Erin Clarke', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(39, 3, '<p><strong><strong>Get family dinner on the table in 30 minutes or less without sacrificing beauty or flavor, from the beloved blogger and author of&nbsp;<em>The Pretty Dish</em>.</strong></strong><br />\n<br />\n<strong>&ldquo;The new go-to book for home cooks everywhere. Yum!&rdquo;&mdash;Ree Drummond, #1&nbsp;<em>New York Times</em>&nbsp;bestselling author of&nbsp;<em>The Pioneer Woman Cooks</em></strong><br />\n<br />\nWith her down-to-earth style, can-do attitude, and gorgeous photography, Jessica Merchant presents&nbsp;<em>Everyday Dinners,</em>&nbsp;your new guide for meal prepping.&nbsp;Along with plant-based, one pot, and slow cooker recipes, Jessica also includes weekly dinner plans, ideas, tips and tricks, and even a 45- to 60-minute meal prep game plan for the weekends to keep cooking easy and quick on busy weeknights.<br />\n<br />\nYou and your family will be delighted and nourished by Jessica&rsquo;s recipes for Roasted Sweet Potatoes with Honey Ginger Chickpeas and Tahini, Tuscan Cheese Tortellini Soup, Honey Dijon Pretzel-Crusted Salmon, Grilled Peach BBQ Pork Chops with Napa Slaw, and Garlic + Chive Butter Smashed Potatoes. As life gets busier, it&rsquo;s increasingly harder to set aside time to put a nourishing meal on the table after a long day. In&nbsp;<em>Everyday Dinners,&nbsp;</em>Jessica gives us the tools and tricks to make that possible.</p>\n', 'everyday_1.jpg', 150000, 'Everyday Dinners', 'Jessica Merchant', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(40, 3, '<p><strong>Spend less time in the kitchen and more time enjoying family meals</strong></p>\n\n<p>Cooking healthy meals is simple when you&rsquo;ve got the&nbsp;<em>30-Minute Family Cookbook</em>. This convenient collection of easy favorites is packed full of recipes designed to get good food on the table quickly. From juicy sliders and creamy cauliflower mac &amp; cheese to whole-wheat chocolate chip cookies, discover 100 recipes that are sure to satisfy without sacrificing nutritional value.</p>\n\n<p>This family meals cookbook offers:</p>\n\n<ul>\n	<li><strong>Easy mealtimes</strong>―Many of the recipes in this 30-minute family cookbook double up on the convenience by featuring limited ingredients or only requiring one pot to prepare.</li>\n	<li><strong>Hot tips</strong>―Whether it&rsquo;s cooking shortcuts or ways to encourage your family to try new foods, the&nbsp;<em>30-Minute Family Cookbook</em>&nbsp;includes all kinds of helpful suggestions for making the most of your short time in the kitchen.</li>\n	<li><strong>Family prep</strong>―Expand the family dining experience with advice for getting the family, including kids, involved and interested in the cooking process.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Bring the whole family together for a home-cooked meal with the&nbsp;<em>30-Minute Family Cookbook</em>.</p>\n', '30minute.jpg', 150000, '30-Minute Family Cookbook', 'Amanda Hernandez', '2021-12-05 20:59:04', '2021-12-22', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(41, 3, '<p><strong>125&nbsp;of your new favorite recipes, featuring maximum flavor, minimum fuss, and the farm to table style that turned Half Baked Harvest from a beloved blog into the megahit cookbook series</strong><br />\n&nbsp;<br />\n<strong>&ldquo;Recipes veer from Braised Pork Tamale Burrito Bowls to Crispy Buffalo Quinoa Bites with no logic other than flat-out good taste.&rdquo;&mdash;<em>Epicurious&nbsp;</em></strong><br />\n<br />\nTieghan Gerard grew up in the Colorado mountains as one of seven children. When her dad took too long to make dinner every night, she started doing the cooking&mdash;at age fifteen. Ever-determined to reign in the chaos of her big family, Tieghan found her place in the kitchen. She had a knack for creating unique dishes, which led her to launch her blog,&nbsp;Half Baked Harvest. Since then, millions of people have fallen in love with her fresh take on comfort food, stunning photography, and charming life in the mountains.<br />\n&nbsp;<br />\nWhile it might be a trek to get to Tieghan&rsquo;s barn-turned-test kitchen, her creativity shines here: dress up that cheese board with a real honey comb; decorate a standard salad with spicy, crispy sweet potato fries; serve stir fry over forbidden black rice; give French Onion Soup an Irish kick with Guinness and soda bread; bake a secret ingredient into your apple pie (hint: it&rsquo;s molasses).&nbsp;From&nbsp;Korean Beef, Sweet Potato, and Quinoa Bibimbap to&nbsp;Healthier Slow-Cooker Butter Chicken to&nbsp;Addictive Salted Caramel&ndash;Stuffed Chocolate Cookies,&nbsp;a striking photograph accompanies every recipe, making&nbsp;<em>Half Baked Harvest Cookbook</em>&nbsp;a feast your eyes, too.</p>\n', 'harvert_1.jpg,harvert_2.jpg', 150000, 'Half Baked Harvest', 'Tiegahn Gerard', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(42, 3, '<p><strong><strong>100 crave-worthy, wholesome recipes and time-saving tips for busy home cooks from the founder and host of the Honeysuckle channel on YouTube.</strong></strong><br />\n<br />\n<em>The Honeysuckle Cookbook</em>&nbsp;is stuffed with exciting ideas for easy, approachable, Asian-influenced cooking at home. With 100 recipes, from the breakfast favorites that consistently rate the highest in views on the author&#39;s popular YouTube channel (like her Overnight Oats, 6 Ways) to original twists on one-pan and pressure-cooker meals, this book is for those of us who want feel-good meals made healthy, delicious, and quick.<br />\n<br />\nDzung&#39;s recipes take the familiar and turns it ever-so-slightly on its head: Marinara sauce gets extra umami with the addition of fish sauce, while mac and cheese becomes more than an out-of-the-box staple when made fresh with kimchi. Lattes get an extra kick from bold Vietnamese coffee and sweet, floral lavender, and quinoa pilaf is mixed with a creamy curry-miso dressing. Dzung also teaches readers how to stretch groceries so they spend a little less money, how to plan meals seasonally, and how to match main courses with sides so plates look impressive and taste great. With quick snack ideas, recipe hacks, foolproof instructions, and genius tips for pretty presentation,&nbsp;<em>The Honeysuckle Cookbook&nbsp;</em>will be the friendly hand busy young cooks need to hold in the kitchen.</p>\n', 'bread_1.jpg,bread_2.jpg', 150000, 'The Honeysuckle', 'Dzung Lewis', '2021-12-05 20:59:04', '2021-12-01', 'Fahasa', 150, 16, 24, NULL, 0, NULL),
(43, 3, '<p><strong>Bring the family together&mdash;and take it easy on yourself!</strong></p>\n\n<p>Between my family, my website, my cookbooks, and my TV show, I make a&nbsp;<em>lot&nbsp;</em>of food around here! And as much as I&rsquo;ve always loved cooking (and of course, eating!), it seems that more and more these days, I&rsquo;m looking for ways to simplify my life in the kitchen. I find myself gravitating toward recipes that are delicious but don&rsquo;t require a lot of prep or fuss, because they free me up to have more time (and energy) for other areas of my life. This also makes cooking less of a chore and more of a pleasure&mdash;exactly what cooking should be!</p>\n\n<p><em>The Pioneer Woman Cooks&mdash;Super Easy!&nbsp;</em>will free you up and transform&nbsp;<em>your&nbsp;</em>cooking life as well, with 120 recipes that range from effortless breakfasts to breezy skillet meals to speedy soups to ready-in-minutes Tex-Mex delights, so you&rsquo;ll have lots of options for any given meal. Many recipes in this cookbook call for step-saving (and sanity-saving) shortcuts that will revolutionize the time you spend making meals for your family, and all of them are utterly scrumptious! I&rsquo;ve absolutely fallen in love with this new generation of recipes, including Butter Pecan French Toast, Buffalo Chicken Totchos, Speedy Dumpling Soup, Broccoli-Cheese Stromboli (so great for kids!), and an entire section of pastas and grains, such as One-Pot Sausage Pasta and colorful and fresh Hawaiian Shrimp Bowls. You&rsquo;ll find yummy meals such as Pepperoni Fried Rice, Chicken-Fried Steak Fingers, and ultra-tasty Chicken Curry in a Hurry . . . as well as assemble-in-the-baking-dish casseroles, throw-together sheet pan suppers, and simply decadent desserts such as Mug Cakes, Coconut Cream Pie, and Brownie S&rsquo;Mores Bars that you&rsquo;ll dream about.</p>\n\n<p>There&rsquo;s something for everyone in this cookbook, and not a single recipe, ingredient, or step is complicated or difficult. Now&nbsp;<em>that&rsquo;s</em>&nbsp;the kind of cooking we can all get behind!&nbsp;</p>\n', 'pioneer.jpg,pioneer_2.jpg', 150000, 'The Pioneer Woman Cooks - Super Easy', 'Ree Drummond', '2021-12-05 20:59:04', '2014-12-18', 'Fahasa', 300, 16, 24, NULL, 0, NULL),
(44, 3, '<p><strong><em>Do you want a healthy diet enjoying tasty meals?</em><br />\n<em>Do you love fried food, but are not sure how to make the most of it without a high fat intake?</em></strong><br />\n<em><strong>Did you know that an air fryer uses hot air instead of oil to cook your food?</strong></em><br />\n<br />\nAn air fryer is an appliance that uses hot air convection technology, and it can reach high temperatures, allowing the food to be cooked quickly and nicely. This is a great way to cook as it allows you to prepare foods like fried chicken, french fries, bacon, and other fried foods&nbsp;without all the calories and fat that come with using oil.<br />\nToday I am showcasing our best Air Fryer recipes that you will want all your friends and family to try.<br />\nIn these days of cooking on a budget and in small kitchens, the air fryer has become something that many home cooks have embraced.<br />\nTo help you out, I have put together the most delicious recipes and provided step-by-step instructions for every recipe.<br />\n<br />\nThis book covers:</p>\n\n<ul>\n	<li>\n	<p><strong>What is Air Fryer?</strong></p>\n	</li>\n	<li>\n	<p><strong>How to look after and clean your Air Fryer;</strong></p>\n	</li>\n	<li>\n	<p><strong>All recipes are divided into categories and lots of vegetarian and gluten free options are included;</strong></p>\n	</li>\n	<li>\n	<p><strong>Nutritional information for every recipe to allow you to count your daily calories and fat intake;</strong></p>\n	</li>\n	<li>\n	<p><strong>Serving size, preparation, and cooking time for each recipe.</strong></p>\n	</li>\n</ul>\n\n<p><strong>And Much More!!!</strong><br />\n<br />\nMy cookbook is designed so that everyone can use it with ease. Anyone from beginners to advanced cooks can have a go with these recipes. You don&rsquo;t have to be an experienced chef to create delicious family meals that are low in fat and high in flavor!<br />\n<br />\n<strong>What are you waiting for? Grab a copy and start cooking fabulous meals now!</strong></p>\n', 'healthy.jpg', 150000, 'Healthy Air Fryer Cookbook 2021', 'Younan Jones', '2021-12-05 20:59:04', '2012-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL);
INSERT INTO `book` (`book_id`, `category_id`, `description`, `main_image`, `price`, `title`, `author`, `create_date`, `publish_date`, `publisher`, `page`, `height`, `width`, `inch`, `current_quantity`, `enable`) VALUES
(45, 3, '<p><strong>600 Easy Air Fryer Recipes for Quick &amp; Hassle-Free Frying!</strong></p>\n\n<p><strong>I bet you crave simple, no-fuss air fryer recipes!&nbsp;</strong>That&#39;s why I decided to create the best air fryer cookbook with&nbsp;<strong>600 delicious &amp; easy meals</strong>&nbsp;that&nbsp;<strong>you&#39;ll ever need to cook in your air fryer!</strong></p>\n\n<p>This<strong>&nbsp;air fryer&nbsp;</strong>cookbook for beginners&nbsp;<strong>has plenty</strong>&nbsp;of content in the following categories:</p>\n\n<ul>\n	<li><strong>Lots of Poultry, Beef, and Pork air fryer recipes</strong></li>\n	<li>Quick Snacks and Side Dishes</li>\n	<li><strong>Vegetables and Vegetarian air fryer recipes</strong></li>\n	<li>Great variety of Breakfast &amp; Lunch recipes</li>\n	<li><strong>The Most-Wanted healthy air fryer recipes for Sweets &amp; Desserts</strong></li>\n</ul>\n\n<p><strong>This complete Air Fryer recipes cookbook will take care of your scarce cooking time&nbsp;</strong>and<strong>&nbsp;will show you&nbsp;</strong>the<strong>&nbsp;easiest &amp; tastiest way&nbsp;</strong>towards a&nbsp;<strong>whole new life&nbsp;</strong>with<strong>&nbsp;your air fryer.</strong></p>\n\n<p><strong>Get it now and</strong>&nbsp;do yourself a big favor! Get the best air fryer recipes&nbsp;<strong>and you will love it!</strong></p>\n', 'frier_1.jpg,frier_2.jpg', 160000, 'Air Fryer Cookbook', 'Jenifer Segal', '2021-12-05 20:59:04', '2021-12-17', 'Fahasa', 120, 16, 24, NULL, 0, NULL),
(46, 5, '<p>&quot;When people ask why I joined the Coast Guard, I respond that I was twenty-two, blond, and fit. In most military services that is guaranteed sexual harassment. Why not join the one with the ocean breeze?&quot;</p>\n\n<p>Caroline&#39;s journey from enlisted Coast Guard member to CIA analyst includes boot camp, Hamptons yachters named Gary, meaning making in Guantanamo Bay, and a session with a Veterans Affairs-assigned therapist who has fourteen cats, one of which cures migraines. She takes you from serious topics of sexual harassment and suicide to laughing about how her predator&#39;s moment to make her prey was oddly interrupted. You are a fly on the wall during her botched FBI polygraph and will be scratching your head about her CIA classmate who U-turns during their surveillance-detection training like she just saw a sign for a sale at Macy&#39;s.</p>\n', 'travel_1.jpg', 150000, 'Fairly Smooth Operator', 'Caroline Walsh', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(47, 5, '<p>Countries are opening up again!&nbsp; You can now travel after COVID.&nbsp;&nbsp;</p>\n\n<p>Fly to Europe for as little as $128--Yeah, I did that, and you can too!&nbsp; This book has step-by-step instructions on finding rock-bottom prices on travel--without booking last minute or staying in crowded hostels.&nbsp; A must read for beginning travelers and seasoned travelers alike.&nbsp; Find out how to see a country in 2 days and how to use layovers as a tool to see more countries--for free!</p>\n\n<p>&bull; Learn how to avoid baggage fees, ATM fees, and foreign transaction fees.</p>\n\n<p>&bull; Master how to determine which countries are safe and how to protect yourself in a robbery</p>\n\n<p>&bull; Learn how to negotiate prices, which credit cards to use, how to get free travel insurance, and much more!</p>\n\n<p>&bull; Discover what other budget travel books do not tell you</p>\n\n<p>&bull; Travel on a budget without using credit card miles</p>\n\n<p>&bull; Learn why credit card airline miles are a scam</p>\n\n<p>&bull; See why trip cancelation insurance is a scam</p>\n\n<p>&bull; Discover the truth about medical insurance and trip interruption insurance</p>\n\n<p>&bull; Use my helpful trip planning tools</p>\n\n<p>&bull; Find the best tours and hotels</p>\n\n<p>&bull; Travel around the world with ease</p>\n\n<p>&bull; Solo travel or travel with friends and family</p>\n\n<p>Travel to some of the best places all over the world with peace of mind.&nbsp; These proven tips and techniques work whether you are traveling alone or with friends.&nbsp; See top vacation spots on your terms.&nbsp;&nbsp;</p>\n\n<p>What are you waiting for?&nbsp; Scroll back up and click or tap the &ldquo;Buy Now&rdquo; button to get started on your next travel adventure!&nbsp;</p>\n', 'internationtravel.jpg', 150000, 'International Travel Secrets', 'Michael Wedaa', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(48, 5, '<p><strong>The founder of Scott&rsquo;s Cheap Flights explains why we&rsquo;re searching for airfare all wrong, shares the strategies that have saved his two million newsletter subscribers a collective $500 million on airfare, and presents a bold new approach for how to see the world while never overpaying for flights again.</strong></p>\n\n<p>When Scott Keyes booked flights to Italy for $130 roundtrip and Japan for $169 roundtrip, he didn&rsquo;t just uncover amazing fares; it was the beginning of a new approach that makes travel possible for anyone who has dreamed of seeing the world.</p>\n\n<p>What&rsquo;s stopping us all from traveling more? The confusion of buying airfare&mdash;not knowing when to book, where to buy, or what to pay.</p>\n\n<p><em>Take More Vacations</em>&nbsp;is the guidebook for anyone hoping to turn one annual vacation into three. Readers will discover why the traditional way of planning vacations undercuts our ability to enjoy them, and how a new strategy can lead to cheaper fares and more trips. Why cheap flights never have to be inconvenient flights, and all the steps you can take to get a good fare even when you don&rsquo;t have flexibility. The surprising best week for international travel, and how small airports actually get the best deals.</p>\n\n<p>Keyes challenges the conventional wisdom that it costs thousands of dollars to fly overseas and shows readers how to make previously unthinkable trips possible.</p>\n', 'takevacation.jpg', 150000, 'Take More Vacations', 'Scott keyes', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(49, 5, '<p><strong>You can count on Rick Steves to tell you what you really need to know when traveling through Europe. With&nbsp;<em>Rick Steves Europe Through the Back Door</em>, you&#39;ll learn how to:</strong></p>\n\n<ul>\n	<li>Plan your itinerary and maximize your time</li>\n	<li>Pack light and right</li>\n	<li>Find good-value hotels and restaurants</li>\n	<li>Travel smoothly by train, bus, car, and plane</li>\n	<li>Avoid crowds and tourist scams</li>\n	<li>Hurdle the language barrier</li>\n	<li>Understand cultural differences and connect with locals</li>\n	<li>Save money while enjoying the trip of a lifetime</li>\n</ul>\n\n<p><strong>After 40+ years of exploring Europe, Rick considers this travel skills handbook his life&#39;s work, and with his expert introductions to the top destinations in Europe, choosing your next trip will be easy and stress-free. Using the travel skills in this book, you&#39;ll experience the culture like a local, spend less money, and have more fun.</strong></p>\n', 'europe.jpg', 150000, 'Rick Steves Europe Through the Back Door', 'Rick Steves', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(50, 5, '<p>Do you want to travel to the exciting city of London? Are you going to London, and are you looking for useful advice to maximize this experience while saving money? If yes, then keep reading!</p>\n\n<p><strong>London is an exciting, inspiring city</strong>. It is the future city, a mecca of culture, fashion, art, music, and history. Whether you want to explore the world&rsquo;s most famous museums, shop for the latest fashions, go sightseeing in the British Museum or the National Gallery, or just take in the architecture of Big Ben or Westminster Abbey, there is something for everyone.</p>\n\n<p>This is the part where you set out on your journey of discovery. Once you arrive,&nbsp;<strong>be prepared to be surprised</strong>. You will see some things that you were not expecting.</p>\n\n<p>The people are friendly, the food is good, the nightlife is pretty amazing, and the culture is interesting, to say the least. Learn more about this famous city and be guided with your future travel through this book.</p>\n\n<p>In this book, we have selected what we thought were essential for first-time visitors to London.</p>\n\n<p>More precisely, it covers:</p>\n\n<ul>\n	<li><strong>Reasons to love London</strong></li>\n	<li>London&rsquo;s top 20 must-see attractions</li>\n	<li><strong>Beyond the center: unusual things to do in London</strong></li>\n	<li>Eating in London</li>\n	<li><strong>London after dark</strong></li>\n	<li>Drinking and nightlife</li>\n</ul>\n\n<p>&hellip;And much more!</p>\n\n<p>Since you will be traveling to London, let this guide be your travel companion, ensuring that you will have safe travel whenever you go around London.</p>\n\n<p>So, what are you waiting for? Click &ldquo;<strong>BUY NOW</strong>&rdquo; and get started immediately!</p>\n', 'london.jpg', 150000, 'London Travel Guide', 'Lorraine Watson', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(51, 5, '<p><strong>Your essential planning guidebook for family-friendly camping trips featuring 300+ of the best camping and glamping spots in the USA!</strong></p>\n\n<p>Outdoor adventure, glamping, and camping vacations have never been more popular―and everyone is looking to discover the best destinations with beautiful scenery and desirable amenities. In Where Should We Camp Next?, family camping and RV experts Stephanie and Jeremy Puglisi make it easy for you to plan the perfect family-friendly, budget-conscious summer road trip. Whether you&#39;re a fan of rustic national parks or luxury glamping resorts, the in-depth profiles of more than 300 amazing outdoor accommodation destinations will help you find the best places to park your RV, pitch your tent, or kick back in your yurt, treehouse, or cabin.</p>\n\n<p><strong>Includes:</strong></p>\n\n<ul>\n	<li>Regional and state-by-state breakdown of campgrounds and RV resorts</li>\n	<li>Introduction to campsite types, prices, when to book, and how to book</li>\n	<li>The best campsites based on your personality and desired amenities</li>\n</ul>\n\n<p><em>Where Should We Camp Next?</em>&nbsp;is the adventurer&#39;s ultimate guide to vacations across the USA and highlights regional cuisine, must-see attractions, and unforgettable activities. Whether you&#39;re planning a cheap family camping vacation or a romantic couple&#39;s getaway, this book is your gateway to making memories with the people you love the most.</p>\n', 'camp.jpg', 150000, 'Where Should We Camp Next?', 'stepanie Puglisi', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(52, 5, '<p><strong>Filled with helpful travel tips and beautiful National Geographic photography, this expert guide showcases the best experiences in the top national, state, and city parks throughout North America.</strong><br />\n<br />\nIn the sequel to the best-selling&nbsp;<em>50 States, 5,000 ideas</em>, National Geographic turns to the United States&#39; and Canada&#39;s most pristine--and adventure-filled--national, state, and city parks with 5,000 ideas for the ultimate vacation. Showcasing the best experiences, both obvious and unexpected, each entry in this robust guide provides an overview of the park, detailed travel advice, fascinating facts, insider knowledge about wildlife, and expert tips for hiking, biking, camping, and exploring. From the geysers of Yellowstone National Park to the Everglades&#39; Nine Mile Pond Canoe Trail and the stunning peaks of Banff and Jasper in Alberta, each page will fuel your wanderlust. Plus, explore the natural beauty tucked away in cities like New York&#39;s Central Park and Boston Commons, and find bonus parks with day-trip suggestions to nearby neighbors. Top 10 lists throughout highlight best-of destinations for river trips, monuments, panoramic views, beaches, and more. This comprehensive book provides all the inspiration and information you need to plan your next park visit--and make it a memorable one.</p>\n', 'ideag.jpg', 150000, '100 Parks, 5,000 Ideas', 'Joe Yogerst', '2021-12-05 20:59:04', '2016-06-03', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(53, 6, '<p><strong>Discover the essential facts about Marvel Comics&#39; timeless heroes and villains&mdash;from Captain America, Spider-Man, and Iron Man to Thanos, Loki, and Kingpin<strong>&mdash;</strong>with an introduction by the legendary Stan Lee.</strong><br />\n<br />\nThis is the &quot;book that mankind has been hungering for,&quot; says American comic book writer, editor, publisher, and producer, Stan Lee, &quot;a book that is-now and forever-a shining beacon of wonder, a titanic tribute to talent unleashed.&quot;<br />\n<br />\nWith this new edition of DK&#39;s best-selling&nbsp;<em>Marvel Encyclopedia</em>, keep up with the ever-expanding Marvel Universe. Updated and expanded, find out vital information and secret histories for more than 1,200 Marvel characters-from classics to brand new ones<strong>&mdash;</strong>while getting the lowdown on recent key events, including Civil War 2, Secret Empire, and Infinity Countdown.<br />\n<br />\nFrom iconic teams-such as the Avengers, X-Men, and Guardians of the Galaxy-to fan favorites-Black Panther, Deadpool, and Captain Marvel to rising stars Amadeus Cho, Squirrel Girl and the Exiles-every significant Marvel character is showcased with the latest comic artwork. Meticulously researched, expertly written, and stunningly illustrated, the Marvel Encyclopedia boasts newly commissioned cover art by one of Marvel&#39;s hottest up-and-coming talents. This unique, in-depth, and accessible encyclopedia is an indispensable guide to Marvel Comics that devoted fans and newcomers alike will return to time and again.</p>\n', 'marvel_3.jpg,marvel_2.jpg,marvel-1.jpg', 150000, 'Marvel Encyclopedia, New Edition', 'Stephen Wiacek', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 150, 16, 24, NULL, 0, NULL),
(54, 6, '<p>The Eighth Story. Nineteen Years Later. Based on an original story by J.K. Rowling, John Tiffany, and Jack Thorne, a play by Jack Thorne.</p>\n\n<p>&nbsp;</p>\n\n<p>It was always difficult being Harry Potter and it isn&rsquo;t much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children.While Harry grapples with a past that refuses to stay where it belongs, his youngest son, Albus, must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: Sometimes, darkness comes from unexpected places.The playscript for&nbsp;<em>Harry Potter and the Cursed Child</em>&nbsp;was originally released as a &quot;special rehearsal edition&quot; alongside the opening of Jack Thorne&rsquo;s play in London&rsquo;s West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany, and Jack Thorne, the play opened to rapturous reviews from theatergoers and critics alike, while the official playscript became an immediate global bestseller.</p>\n', 'harrypotter_1.jpg,harrypotter_2.jpg,harrypotter_4.jpg', 150000, 'Harry Potter and the Cursed Child', 'J.K.Rowling', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(55, 6, '<p>J.K. Rowling&rsquo;s five-film Fantastic Beasts adventure series continues with the original screenplay for&nbsp;<em>Fantastic Beasts: The Crimes of Grindelwald</em></p>\n\n<p>&nbsp;</p>\n\n<p>At the end of&nbsp;<em>Fantastic Beasts and Where to Find Them</em>, the powerful Dark wizard Gellert Grindelwald was captured in New York with the help of Newt Scamander. But, making good on his threat, Grindelwald escapes custody and sets about gathering followers, most unsuspecting of his true agenda: to raise pure-blood wizards up to rule over all non-magical beings. In an effort to thwart Grindelwald&rsquo;s plans, Albus Dumbledore enlists Newt, his former Hogwarts student, who agrees to help once again, unaware of the dangers that lie ahead. Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world. This second original screenplay from J.K. Rowling, illustrated with stunning line art from MinaLima, expands on earlier events that helped shape the wizarding world, with some surprising nods to the Harry Potter stories that will delight fans of both the books and films.</p>\n', 'beast_1.jpg,beast_2.jpg', 250000, 'Fantastic Beasts: The Crimes of Grindelwald', 'J.K.Rowling', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(56, 6, '<p><strong>The definitive guide to the characters of the DC Multiverse and a vital addition to every comic book fan&#39;s bookshelf.</strong><br />\n<br />\nIconic Super Heroes Batman, Superman, Wonder Woman, Aquaman, and The Flash have been transformed in recent years, along with many other DC characters. This new edition of the most comprehensive A-Z guide to DC&#39;s pantheon of Super Heroes and Super-Villains includes the latest earth-shaking developments in the DC Multiverse, with profiles of more than 1,200 characters.<br />\n<br />\nCreated in full collaboration with DC, the encyclopedia features characters and art from every key crossover event, including<em>&nbsp;Dark Nights: Metal&nbsp;</em>and its sequel&nbsp;<em>Dark Nights: Death Metal</em>.<br />\n<br />\nWith a foreword by DC legend Jim Lee, a brand-new cover design, and thrilling comic artwork, the fun and excitement of more than 80 years of comics history explode off every page.<br />\n<br />\nExperience the DC Multiverse like never before with&nbsp;<em>The DC Comics Encyclopedia New Edition</em>.</p>\n', 'dc.jpg', 150000, 'The DC Comics Encyclopedia New Edition', 'Mathew K.Manning', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(57, 6, '<p><strong>Is Superman the strongest Super Hero alive? Where is Wonder Woman from? Is Darkseid the most evil Super-Villain ever? Who is the fastest man alive? Who are Batman&#39;s allies?</strong><br />\n<br />\nHave to know the answers to these questions? Look no further than the DC Comics Ultimate Character Guide: New Edition. Written by DC Comics experts, this illustrated encyclopedia features more than 200 incredible characters and Super Hero teams, including Batman, Harley Quinn, Justice League, and so many more.<br />\n<br />\nThe DC Comics Universe changed forever following their epic Rebirth event, and so did the characters. This comprehensive guide covers the latest key story lines for each character and includes stunning new images from the comics. It is also packed full of vital statistics and explains each character&#39;s super powers, from indestructibility to sorcery.<br />\n<br />\nThe<em>&nbsp;DC Comics Ultimate Character Guide: New Edition</em>&nbsp;is guaranteed to enthral fans for hours on end.</p>\n', 'dcultimate.jpg', 150000, 'DC Comics Ultimate Character Guide, New Edition ', 'Melanie Scott', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(58, 6, '<p>After years of training and adventure, Goku has become Earth&#39;s ultimate warrior. And his son, Gohan, shows even greater promise. But the stakes are increasing as even deadlier enemies threaten the planet.&nbsp;<em><strong>DRAGON BALL Z</strong></em>&nbsp;is the ultimate science fiction/martial arts manga.<br />\n<br />\n<strong>A Collection of Volumes 1 - 3!</strong><br />\n<br />\nFive years have passed since the Tenka&#39;ichi Budōkai (Strongest Under the Heavens) fighting tournament, where Son Goku emerged as Earth&#39;s ultimate champion. Goku has since settled down with a wife and even has a son, Son Gohan. All seems peaceful, until one day when a mysterious visitor appears and reveals that Goku is actually an alien!<br />\n<br />\nThe visitor, Raditz, claims that Goku is a Saiyan Warrior, a member of the most powerful race in the universe. When the ruthless Raditz threatens to destroy Goku&#39;s family and the entire human race, Goku races to stop him and finds an unlikely ally in Piccolo, his old archenemy...</p>\n', 'ball_1.jpg', 150000, 'Dragon Ball Z, Vol. 1', 'Akira Toriyama', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(59, 6, '<p>Doraemon, a cat robot, traveled back in time from the 22nd century to watch over Noby who&rsquo;s a good kid but terrible at sports, never studies, and has an incredible capacity for slacking off. Doraemon tries to help Noby with nice but often unpredictable gadgets from his 4th dimensional pocket as Noby&rsquo;s clumsy and always getting into trouble. Can Doraemon solve the problems and change Noby&rsquo;s fortune for the better?<br />\n<br />\nDORAEMON Vol.1<br />\n1.All the Way From the Future<br />\n2.Return to Un-sender<br />\n3.Noby&#39;s City of Dreams</p>\n', 'doraemon.jpg', 150000, 'Doraemon, Vol.1', 'Fujiko F Fujio', '2021-12-05 20:59:04', '2021-12-08', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(60, 4, '<p><strong>You may know Dude Perfect from their mind-blowing, world record-breaking, viral trick shot&nbsp;videos and hilarious Overtime videos! NOW, with the guys&rsquo; new, massive, photo-intensive book&nbsp;<em>Dude Perfect 101 Tricks, Tips, and Cool Stuff</em>, you&rsquo;ll experience a behind-the-scenes look at their stunts and their personal lives,&nbsp;PLUS step-by-step instructions so you can attempt their tricks at home!</strong></p>\n\n<p><em>At Dude Perfect, we do everything we can to bring families closer together, and that&rsquo;s why we&rsquo;re excited&nbsp;to share this book with you. Follow our step-by-step instructions to have your own Dude Perfect&ndash;style fun!</em></p>\n\n<p>Tweens and teens, ages 8 to 12, will enjoy complete panda-monium with this in-depth look at Dude&nbsp;Perfect: five guys who are kickin&#39; it, throwin&#39; it, tossin&#39; it, and shootin&#39; it for more than 55 million YouTube&nbsp;subscribers and more than twelve billion views.</p>\n\n<p>With an oversize format and fun, informative graphics,&nbsp;<em>Dude Perfect 101 Tricks, Tips, and Cool Stuff</em>&nbsp;includes . . .</p>\n\n<ul>\n	<li>Step-by-step instructions to perform your own real life trick shots using everyday objects.</li>\n	<li>A behind-the-scenes view of those hilarious Overtime&nbsp;videos and extreme sports moments.</li>\n	<li>Dude Perfect teaching about what a blast patience, perseverance, teamwork, friendship, and faith can be.</li>\n	<li>Fun science facts behind the seemingly impossible tricks&mdash;because really, how did they do that?!</li>\n	<li>Infographics with &quot;No way!&quot; truths from the inspirational to the absurd.</li>\n	<li>A deeper look into each Dude&#39;s personal life, including stats, favorite stunts, and insights.</li>\n</ul>\n\n<p>Each trick in&nbsp;<em>Dude Perfect 101 Tricks, Tips, and Cool Stuff</em>&nbsp;is the perfect combination of challenging and doable to keep your young reader off-screen for hours. This interactive book is a great gift for birthdays, Easter baskets, holiday gift giving, or just because.</p>\n\n<p>Whether your own trickster wants to perform solo, challenge a friend, or host a family date night, this&nbsp;visually engaging book is a slam dunk for anyone who is young at heart.</p>\n', 'dudeperfect.jpg', 150000, 'Dude Perfect 101 Tricks, Tips, and Cool Stuff', 'Dude Perfect', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 150, 16, 24, NULL, 0, NULL),
(61, 4, '<p><strong>Over 1,000 Tips for Planting Vegetables, Flowers, Houseplants, Shrubs, Herbs, and Trees!</strong><br />\n<br />\nThis comprehensive collection of practical tips covers all aspects of gardening, from flowers and houseplants to planting shrubs, vegetables, herbs, and trees. In addition, find advice for dealing with garden pests, learn about the tools that will make your life much easier, and find valuable ways to avoid the aches and pains that often go along with the hard work of gardening. Woven throughout are poems and proverbs, legends and lore, making this an enjoyable read and a perfect gift for the gardener in your life.&nbsp;</p>\n\n<ul>\n	<li>&quot;Put broken eggshells in a watering can, fill with water, and leave overnight. This will extract the nutrients making an excellent and cheap plant feed.&quot;</li>\n	<li>&quot;To improve the growth of leeks, add a little soot to the soil.&quot;</li>\n	<li>&quot;Weeding between onion rows should be done by hand, as hoeing will damage the shallow roots.&quot;</li>\n	<li>&quot;An old wheel rim makes an ideal storage place for a garden hose when not in use. Hang on a garage or shed wall.&quot;</li>\n	<li>&quot;For organic insecticide spray, boil a whole bulb of chopped garlic until it&#39;s soft. Put it into 1 gallon of water and add 1 tablespoon of biodegradable detergent. Leave for a day, strain, and use as required.&quot;</li>\n</ul>\n\n<p>Full of fascinating tidbits and brilliant suggestions, this book may transform the way you garden! Complete with lovely color illustrations throughout, this is a delightful and useful read for new and seasoned gardeners alike.</p>\n', 'garden.jpg', 140000, '1,001 Gardening Tips & Tricks', 'Mary Rose Quigg', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(62, 4, '<p><strong>Over 1,000 Tips for Gardening, Country Cooking, Saving Money, DIY Cleaning Solutions, Home Remedies, and More!</strong><br />\n<br />\nThis comprehensive collection of practical tips covers all aspects of keeping a country home, from painting a wall to removing wine stains, making perfect pastry to making your own window cleaner. In addition, find advice for cleaning carpets, making jam, wallpapering, knitting, sewing, and more! Woven throughout are poems and proverbs, legends and lore, making this an enjoyable read and a perfect housewarming gift.</p>\n\n<ul>\n	<li>&quot;Crisp limp lettuce and celery by placing in a pan of cold water for an hour with slices of raw potato.&quot;</li>\n	<li>&quot;If an aluminum pan has become discolored, boil some apple peel in it for a few minutes, then rinse and dry.&quot;</li>\n	<li>&quot;Tighten up sagging cane seats of chairs by scrubbing both the top and underside with hot soapy water. Rinse in cold salt water.&quot;</li>\n	<li>&quot;Sprinkle salt on paths and brickwork crevices to get rid of weeds and grass.&quot;</li>\n	<li>&quot;A needle can be threaded more easily if a little hairspray, starch, or beeswax is put on the end of the thread.&quot;</li>\n	<li>&quot;Sage tea is a valuable tonic that stimulates the circulation and soothes a persistent cough.&quot;</li>\n</ul>\n\n<p>Complete with lovely color illustrations throughout, this is a delightful and useful read.</p>\n', 'home.jpg', 150000, '1,001 Country Home Tips & Tricks', 'Mary Rose Quigg', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(63, 4, '<p><strong>Fully revised and updated, and with a bright new design,&nbsp;<em>Guinness World Records 2022</em>&nbsp;provides a fascinating snapshot of our world today. Our editors have chosen to curate the book with environmental issues at the forefront of their mind, so we open with a chapter exploring what&rsquo;s happening to our ecosystem and what superlative lengths people are going to make a difference. We also want to encourage readers to put their own record-breaking to good, so look out for projects that might inspire you to make a difference &ndash; so don&rsquo;t just Discover Your World, Change Your World!</strong><br />\n<br />\nDespite the challenges of the past year, it&rsquo;s been business as usual at Guinness World Records, and our researchers continue to field thousands of applications a month. Expect that unique mix of remarkable humans, talented pets, incredible vehicles and impressive sporting legends.<br />\n<br />\nWhat you&rsquo;ll find in our 10 record-packed chapters:<br />\n<br />\n<strong>&bull;&nbsp;</strong><strong>Environmental champions</strong>&nbsp;&ndash; the eco-warriors fighting to make our planet a better place<br />\n<br />\n<strong>&bull;&nbsp;</strong><strong>Wonders of the natural world</strong>, from the most intelligent creatures to the deadliest plants<br />\n<br />\n<strong>&bull;&nbsp;</strong><strong>The tallest and shortest</strong>&hellip; Our record scouts have measured a host of the world&rsquo;s loftiest and diminutive humans<br />\n<br />\n<strong>&bull;&nbsp;</strong><strong>Pop Culture icons</strong>&nbsp;&ndash; we reveal the world&rsquo;s most successful movie franchises, videogames, toys and brand<br />\n<br />\n<strong>&bull;&nbsp;</strong><strong>Young Achievers</strong>&nbsp;&ndash; meet the under-16 influencers, entrepreneurs and entertainers who are taking positive steps to change the world<br />\n<br />\n<strong>&bull; Sporting heroes&nbsp;</strong>&ndash; we review the biggest sporting achievements of the year and put them in context alongside the greatest athletes of all time<br />\n<br />\nPLUS! Look out for bonus features including free&nbsp;<strong>Augmented Reality dinosaurs</strong>&nbsp;that come to life straight off the page; more inductees into the Guinness World Records Hall of Fame, including Sir David Attenborough, astronaut Peggy Whitson and K-Pop sensations BTS; and &ldquo;<strong>Virtual Visits</strong>&rdquo; that take you on a journey to some of the most fascinating and record-packed visitor attractions, museums, art galleries and parks &ndash; all without leaving your bedroom!</p>\n', 'worldrecord.jpg', 150000, 'Guinness World Records 2022', 'Guniess World Record', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(64, 4, '<h2>Has this cube confused, baffled or frustrated you? Have you ever thought of just changing the stickers to solve the cube? Do you think that these things are just impossible and you&#39;ll never do one?</h2>\n\n<p><br />\n<br />\n(Get the E-book absolutely&nbsp;<strong>FREE</strong>&nbsp;when you purchase the colored paperback!)<br />\n<br />\nDid you know it took the inventor of the cube Ernő Rubik a whole month to solve his own creation? Did you know we&rsquo;re going to do it in a fraction of that time? This book has been tested and readers have completed the cube in&nbsp;<strong>under an hour</strong>&nbsp;from picking it up!<br />\n<br />\n★★ What&rsquo;s in this book ★★<br />\n- Rubik&#39;s Cube terminology<br />\n- Seven simple steps to complete the cube<br />\n- Images in color to help you<br />\n- The history and timeline of the cube<br />\n- Interesting &amp; fascinating facts about the cube</p>\n\n<p>What&rsquo;re you waiting for!? There&rsquo;s no need to take apart the cube or the stickers and put them back on. Scroll up and click &lsquo;add to cart&rsquo; button now so we can begin to solve that cube!</p>\n', 'rubic.jpg', 150000, 'Rubiks Cube Solution For Kids', 'Jayden Burns', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(65, 4, '<p><em>Finally, a clear way to solve the rubiks cube, without having to restart over and over again.</em></p>\n\n<p>This simple, instruction based formula is the easiest and most memorable&nbsp;way to solve the cube.</p>\n\n<p>Solving the Rubik&rsquo;s cube is one of the hardest puzzles to solve. One incorrect move can delete any progress you had previously made. This is why the rubik&rsquo;s cube is one of the most popular puzzles around. And this is why so many people struggle to complete it.</p>\n\n<p>In this book, you will run through the easiest and most beginner friendly step by step guide towards solving the cube. Each step is illustrated in color with the exact twist and turns needed to win the puzzle.</p>\n\n<p>Benefits of Solving the Cube:</p>\n\n<p>Memory improvement, Patience, Increased creativity and problem solving skills, Keeps you mentally active and aware and Increased reflexes</p>\n\n<p>If you want to complete the rubik&rsquo;s cube, it will not get any&nbsp;easier than following this guide.</p>\n\n<p>Solve The Rubiks Cube Today!</p>\n', 'solverubik.jpg', 150000, 'How To Solve A Rubik Cube', 'Sam Lemons', '2021-12-05 20:59:04', '2017-05-07', 'Fahasa', 1500, 16, 24, NULL, 0, NULL),
(66, 4, '<p>Học lập tr&igrave;nh kh&ocirc;ng kh&oacute; nhưng đ&ograve;i hỏi bạn phải chăm chỉ, si&ecirc;ng năng v&agrave; c&oacute; 1 ch&uacute;t đam m&ecirc;.</p>\n', 'LogoUit.jpeg', 450000, '101 Tips and Trick that help you pass the exam at ', 'Vu Nguyen', '2021-12-06 09:52:32', '0000-00-00', 'Fahasa', 100, 16, 24, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_image`
--

CREATE TABLE `book_image` (
  `image_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_order`
--

CREATE TABLE `book_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `line1` varchar(128) DEFAULT NULL,
  `line2` varchar(128) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `paid` float DEFAULT 0,
  `debt` float DEFAULT 0,
  `payment_date` date DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `shipping_fee` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book_order`
--

INSERT INTO `book_order` (`order_id`, `customer_id`, `line1`, `line2`, `first_name`, `last_name`, `phone`, `city`, `country`, `paid`, `debt`, `payment_date`, `zipcode`, `payment_method`, `total`, `status`, `shipping_fee`, `discount`, `subtotal`, `order_date`) VALUES
(43, 3, 'Số 7, đường 42', 'Bình trưng đông, quận 2', 'Mai ', 'Ngôn', '123456', 'TPHCM', 'VN', 266648, 0, '2022-05-31', '123456', 'COD', 266648, 'Giao hàng thành công', 12697.5, 0, 253950, '2022-04-14 21:08:57'),
(44, 3, 'Số 7, đường 42', 'Bình trưng đông, quận 2', 'Mai ', 'Ngôn', '123456', 'TPHCM', 'VN', 372750, 0, '2022-06-01', '123456', 'COD', 372750, 'Giao hàng thành công', 17750, 0, 355000, '2022-05-31 21:12:14'),
(45, 3, 'Số 7, đường 42', 'Bình trưng đông, quận 2', 'Mai ', 'Ngôn', '123456', 'TPHCM', 'VN', 500000, 77500, '2022-06-01', '123456', 'COD', 577500, 'Giao hàng thành công', 27500, 0, 550000, '2022-05-31 21:17:17'),
(46, 3, 'Số 7, đường 42', 'Bình trưng đông, quận 2', 'Mai ', 'Ngôn', '123456', 'TPHCM', 'VN', 20000, 242500, '2022-05-31', '123456', 'PAYPAL', 262500, 'Giao hàng thành công', 12500, 0, 250000, '2022-05-31 21:21:12'),
(47, 5, 'số 7, đường 42', 'Bình Trưng Đông, Quận 2', 'Mai', 'Ngôn', '0123456789', 'TPHCM', 'VN', 160000, 4272, '2022-06-01', '123456', 'COD', 164272, 'Giao hàng thành công', 7822.5, 0, 156450, '2022-06-01 00:00:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Technology'),
(2, 'Romantic'),
(3, 'Cooking'),
(4, 'Tips'),
(5, 'Travel'),
(6, 'Comic');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `loan` float DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `register_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `email`, `first_name`, `last_name`, `password`, `birthday`, `loan`, `gender`, `phone`, `nickname`, `register_date`) VALUES
(1, 'vunguyen.311001@gmail.com', 'nguyen', 'vu', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, '2021-10-28 15:46:32'),
(3, 'vu@gmail.com', 'Nguyễn', 'Vũ', 'e10adc3949ba59abbe56e057f20f883e', '2018-11-01', NULL, 'nam', '0912345678', 'vuvodich1001', '2021-10-28 15:52:40'),
(4, 'bao@gmail.com', 'Nguyễn', 'Bảo', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, '2021-10-28 15:55:01'),
(5, 'maingon@gmail.com', 'Mai', 'Ngôn', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-09', NULL, 'nu', '123456789', 'maingonvipro', '2021-11-02 20:29:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `line1` varchar(128) DEFAULT NULL,
  `line2` varchar(128) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`, `first_name`, `last_name`, `line1`, `line2`, `city`, `country`, `phone`, `zipcode`) VALUES
(4, 3, 'Mai ', 'Ngôn', 'Số 7, đường 42', 'Bình trưng đông, quận 2', 'TPHCM', 'VN', '123456', '123456'),
(5, 4, 'Nguyễn', 'Bảo', '7/57, đường số 7', 'Long trường, TP.Thủ Đức', 'TPHCM', 'VN', '11247863', '1234'),
(6, 3, 'Nguyễn', 'Vũ', '7/56/2, đường số 6', 'Long trường, Quận 9', 'TPHCM', 'VN', '123456789', '123456'),
(7, 4, 'Nguyễn', 'Vi', '7/58, đường số 8', 'Phú Hữu, TP.Thủ Đức', 'TPHCM', 'VN', '123456789', '123456'),
(8, 5, 'Mai', 'Ngôn', 'số 7, đường 42', 'Bình Trưng Đông, Quận 2', 'TPHCM', 'VN', '0123456789', '123456'),
(10, 5, 'Zin', 'Zin', '7/58, đường số 8', 'Bình Trưng Tây, Quận 2', 'TPHCM', 'VN', '012345678', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `discount_percent` float DEFAULT NULL,
  `discount_number` float DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `min_order` float DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `current_use` int(11) DEFAULT 0,
  `discount_type` varchar(15) DEFAULT NULL,
  `discount_date` datetime DEFAULT current_timestamp(),
  `discount_expire` datetime DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `discount`
--

INSERT INTO `discount` (`discount_id`, `discount_percent`, `discount_number`, `name`, `description`, `min_order`, `code`, `quantity`, `current_use`, `discount_type`, `discount_date`, `discount_expire`, `enable`) VALUES
(1, 0, 10000, 'Voucher 10k', 'Mã bookstore giảm 10k cho đơn hàng từ 200k', 200000, '#4aafgd1', 100, 0, 'money', '2021-10-30 18:10:17', '2021-12-31 23:08:44', 1),
(2, 0, 20000, 'Voucher 20k', 'Mã bookstore giảm 20k cho đơn hàng từ 300k', 300000, '#5gdsagf', 100, 0, 'money', '2021-10-30 18:10:27', '2021-12-31 18:08:44', 1),
(3, 0.1, NULL, 'Voucher 10%', 'Mã bookstore giảm 10% cho đơn hàng từ 250k', 250000, '#jka5gd1', 100, 0, 'percent', '2021-11-02 20:13:30', '2021-12-30 14:11:01', 1),
(4, 0.2, NULL, 'Voucher 20%', 'Mã bookstore giảm 20% cho đơn hàng từ 350k', 350000, '#bvcyu6f', 100, 0, 'percent', '2021-11-02 20:13:33', '2021-12-31 14:11:01', 1),
(6, NULL, 30000, 'Voucher 30k', 'Mã giảm giá 30k cho đơn hàng từ 300k', 300000, 'asdfghjk', NULL, 0, 'money', '2022-05-29 11:25:00', '2021-12-06 11:20:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourite_book`
--

CREATE TABLE `favourite_book` (
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favourite_book`
--

INSERT INTO `favourite_book` (`book_id`, `customer_id`) VALUES
(20, 3),
(22, 3),
(23, 3),
(29, 5),
(53, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `have_role`
--

CREATE TABLE `have_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `have_role`
--

INSERT INTO `have_role` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 4),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 4),
(10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT current_timestamp(),
  `receive_date` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  `price` float NOT NULL,
  `migrate_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `supplier_id`, `book_id`, `purchase_date`, `receive_date`, `total`, `price`, `migrate_quantity`) VALUES
(1, 1, 20, '2022-04-30 00:00:00', '2022-05-31 00:00:00', 9500000, 0, 170),
(2, 1, 20, '2022-04-30 00:00:00', '2022-05-31 00:00:00', 7500000, 0, 300),
(3, 1, 21, '2022-04-30 00:00:00', '2022-05-31 00:00:00', 2500000, 99000, 170),
(4, 1, 22, '2022-04-30 00:00:00', '2022-05-31 00:00:00', 9500000, 50000, 120),
(5, 1, 22, '2022-04-30 00:00:00', '2022-05-31 00:00:00', 9500000, 50000, 120),
(6, 1, 23, '2022-04-15 00:00:00', '2022-05-31 00:00:00', 9500000, 250000, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_report`
--

CREATE TABLE `inventory_report` (
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `import_sum` int(11) NOT NULL,
  `sale_sum` int(11) NOT NULL,
  `final_remain` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `book_id`, `quantity`, `subtotal`) VALUES
(43, 20, 1, 150000),
(43, 21, 1, 103950),
(44, 22, 2, 105000),
(44, 23, 1, 250000),
(45, 20, 2, 300000),
(45, 23, 1, 250000),
(46, 23, 1, 250000),
(47, 21, 1, 103950),
(47, 22, 1, 52500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parameter`
--

CREATE TABLE `parameter` (
  `parameter_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `enable` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `parameter`
--

INSERT INTO `parameter` (`parameter_id`, `code`, `value`, `enable`) VALUES
(1, 'MIN_MIGRATE', '100', 1),
(2, 'MIN_REMAIN', '300', 1),
(3, 'MAX_DEBT', '20000', 1),
(4, 'MIN_CURRENT_BOOK', '20', 1),
(5, 'PRICE_PERCENT', '1.05', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `headline` varchar(128) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `review_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`review_id`, `book_id`, `customer_id`, `rating`, `headline`, `image`, `comment`, `review_time`) VALUES
(16, 20, 3, 5, 'Cực kì hài lòng', 'learnphp.jpg', 'Tôi rất thích sản phẩm này, sẽ ủng hộ shop vào lần sau. Sản phẩm này giúp tôi học lập trình rất tốt.', '2021-12-05 22:23:29'),
(17, 22, 3, 1, 'Rất không hài lòng', 'python_1.jpg,python_2.jpg', 'Sách này không đúng với mô tả sản phẩm!', '2021-12-22 15:10:53'),
(18, 22, 5, 5, 'Cực kì hài lòng', 'python_1.jpg', 'Sách này rất hay. Tôi sẽ ủng hộ shop lần sau <3', '2021-12-22 15:14:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review_response`
--

CREATE TABLE `review_response` (
  `response_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `response_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `name`, `description`) VALUES
(1, 'book', 'Quản lí sách'),
(2, 'category', 'Quản lí thể loại'),
(3, 'order', 'Quản lí đơn đặt hàng'),
(4, 'customer', 'Quản lí khách hàng'),
(5, 'discount', 'Quản lí mã giảm giá'),
(6, 'user', 'Quản lí người dùng'),
(7, 'supplier', 'Quản lí nhà cung cấp'),
(8, 'review', 'Quản lí đánh giá'),
(9, 'inventory', 'Quản lí kho'),
(10, 'parameter', 'Quản lí tham số');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `order_id` int(11) NOT NULL,
  `urser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `email`, `address`, `phone`, `enable`) VALUES
(1, 'Fahasa', 'Fahasa.group@gmail.com', '7/60, đường lê văn việt, phường bình phong phú, Tp. Thủ đức, Tp.HCM', '0123456789', NULL),
(2, 'Hoa Hồng', 'Fahasa.group@gmail.com', '7/60, đường nguyễn duy trinh, phương bình trưng tây, Tp. Thủ đức, Tp. HCM', '0123456789', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `first_name`, `last_name`, `password`, `create_date`) VALUES
(1, 'admin@gmail.com', 'vu', 'nguyen', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-08 21:54:36'),
(2, 'maingon@gmail.com', 'mai', 'ngon', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-08 21:55:31'),
(4, 'shipper@gmail.com', 'zin', 'zin', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-10 11:38:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_have` (`category_id`);

--
-- Chỉ mục cho bảng `book_image`
--
ALTER TABLE `book_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `fk_have_image` (`book_id`);

--
-- Chỉ mục cho bảng `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_have_order` (`customer_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `fk_have_address` (`customer_id`);

--
-- Chỉ mục cho bảng `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Chỉ mục cho bảng `favourite_book`
--
ALTER TABLE `favourite_book`
  ADD PRIMARY KEY (`book_id`,`customer_id`),
  ADD KEY `fk_favourite_book2` (`customer_id`);

--
-- Chỉ mục cho bảng `have_role`
--
ALTER TABLE `have_role`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `fk_have_role2` (`user_id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `fk_have_inventory` (`book_id`),
  ADD KEY `fk_have_traking` (`supplier_id`);

--
-- Chỉ mục cho bảng `inventory_report`
--
ALTER TABLE `inventory_report`
  ADD PRIMARY KEY (`month`,`year`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`book_id`),
  ADD KEY `fk_order_detail2` (`book_id`);

--
-- Chỉ mục cho bảng `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`parameter_id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fk_have_book` (`book_id`),
  ADD KEY `fk_have_review` (`customer_id`);

--
-- Chỉ mục cho bảng `review_response`
--
ALTER TABLE `review_response`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `fk_have_response` (`review_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `book_image`
--
ALTER TABLE `book_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `book_order`
--
ALTER TABLE `book_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `parameter`
--
ALTER TABLE `parameter`
  MODIFY `parameter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `review_response`
--
ALTER TABLE `review_response`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_have` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Các ràng buộc cho bảng `book_image`
--
ALTER TABLE `book_image`
  ADD CONSTRAINT `fk_have_image` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Các ràng buộc cho bảng `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `fk_have_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `fk_have_address` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `favourite_book`
--
ALTER TABLE `favourite_book`
  ADD CONSTRAINT `fk_favourite_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `fk_favourite_book2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `have_role`
--
ALTER TABLE `have_role`
  ADD CONSTRAINT `fk_have_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `fk_have_role2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `fk_have_inventory` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `fk_have_traking` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_order_detail` FOREIGN KEY (`order_id`) REFERENCES `book_order` (`order_id`),
  ADD CONSTRAINT `fk_order_detail2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_have_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `fk_have_review` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `review_response`
--
ALTER TABLE `review_response`
  ADD CONSTRAINT `fk_have_response` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
