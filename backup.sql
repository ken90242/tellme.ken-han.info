-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: tellme
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles_article`
--

DROP TABLE IF EXISTS `articles_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(80) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `content` longtext NOT NULL,
  `edited` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `articles_article_user_id_6310b975_fk_users_user_id` (`user_id`),
  KEY `articles_article_slug_cc61df93` (`slug`),
  KEY `articles_article_created_at_5e05940f` (`created_at`),
  KEY `articles_article_image_id_0df8fd7c_fk_upload_articleimage_id` (`image_id`),
  CONSTRAINT `articles_article_image_id_0df8fd7c_fk_upload_articleimage_id` FOREIGN KEY (`image_id`) REFERENCES `upload_articleimage` (`id`),
  CONSTRAINT `articles_article_user_id_6310b975_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_article`
--

LOCK TABLES `articles_article` WRITE;
/*!40000 ALTER TABLE `articles_article` DISABLE KEYS */;
INSERT INTO `articles_article` VALUES (20,'What\'s the furthest a parent has gone to get their kid to quit gaming?','what-s-the-furthest-a-parent-has-gone-to-get-their-kid-to-quit-gaming','P','<p>A father, Mr. Feng, was tired of arguing with his son about his gaming. His son lacked ambition and was already 23 years old.</p>\n<p>So he took the drastic step of finding professional gamers (World of Warcraft). And then hiring them, like bounty hunters, to find him in the game.</p>\n<p>They then stalked his son and began killing him mercilessly in the game.</p>\n<p>it didn’t result in his son quitting, unfortunately. But it was a good move of creativity on the dad’s part. (source: Gamers hired by father to \'kill\' son in online games. Kleinman, Zoe)</p>\n<p>Per gambling expert, Mark Griffiths, \"I\'ve never heard of that kind of intervention before, but I don\'t think these top-down approaches work. Most excessive game playing is usually a symptom of an underlying problem.\"</p>\n<p><strong>Sign #213 that you are gaming too much</strong>: your parents are hiring digital hitmen.</p>',0,'2020-05-29 14:46:48.791605','2020-05-29 14:46:48.791647',1,11),(22,'What are some lessons that life teaches you?','what-are-some-lessons-that-life-teaches-you','P','<p>Recently, I asked someone to pay me back some money they owed me which was overdue.</p>\n<p>This guy had been spending quite freely on himself, but, conveniently, hadn\'t paid me back.</p>\n<p>His response was anger, he attacked my character, and the conversation became everything but the money owed to me and him paying it back.</p>\n<p>Quite a contrast in attitude to when I was giving the loan - I was a nice guy then.</p>\n<p>The point is that even if I had turned into a drug-dealing pimp and was found out to be the guy behind the 1MDB fraud, that\'s my business. The fact remains that he owes me my money.</p>\n<p>I\'ve seen this time and time again. <strong>When you ask someone to pay you back a loan you\'ll, more often than not, find out a part of their character that you never knew about before you asked.</strong></p>\n<p>My mother once advised me; “Asim, only lend money to friends if you’re prepared to lose the money.”</p>\n<p>Great advice, but I’d add; “and if you’re prepared to lose the friendship.”</p>',0,'2020-05-29 17:24:08.305687','2020-05-29 17:24:08.305727',1,12),(23,'What are mistakes people make that guarantee they will have a hard life?','what-are-mistakes-people-make-that-guarantee-they-will-have-a-hard-life','P','<ul>\n<li>Falling into an addiction: An addiction is just a way of making a hard life even harder. It takes your time and all your attention from the things that really matter.</li>\n<li>Imitation: Imitation kills creativity. It leaves you empty and confused, wondering where all your time went.</li>\n<li>Not giving your all to something: A life lived casually is full of casual results. If you don\'t learn to give your 100% to things, you\'ll end up being average and mediocre.</li>\n<li>Lacking self control: Nothing disrupts a life than having a child when you are not ready. Being responsible for another human being is a serious business. It should never fall on you by mistake.</li>\n<li>Not believing in yourself: Life is full of challenges, failures and doubters. Your faith in yourself will be put to test several times. If you don\'t have a solid belief in yourself, you\'ll fall.</li>\n</ul>',0,'2020-05-29 17:26:29.906044','2020-05-29 17:26:29.906082',1,13),(24,'What celebrity do you feel sorry for?','what-celebrity-do-you-feel-sorry-for','P','<p>I feel sorry for this poor soul.</p>\n<p>This is <strong>Jennifer Hudson</strong>. In 2004 she was finalist on American Idol, and in 2007 she won an Oscar. Just when she thought things were going well, in 2008 she was delivered bad news. Her former brother in law <strong>William Balfour</strong> had killed most of her family. He killed her brother, her mother and the child he had with Hudson’s sister. The reason why he did such harm was allegedly jealousy. Jennifer has since then forgiven him and kept going. I feel sorry for her, but also admire her.</p>',0,'2020-05-29 17:34:49.448114','2020-05-29 17:34:49.448148',1,14),(26,'How can I stop being average?','how-can-i-stop-being-average','P','<p>On average, a Leopard has one successful hunt out of every seven attempts. A mere 14% success rate.</p>\n<p>A single lion has a hunting success rate of 19%. The success rate jumps to about 30% when the hunt involves more than one lion.</p>\n<p>Cheetahs have an estimated 50% success rate in their hunts.</p>\n<p>What’s the point here?</p>\n<p>Despite all predators being armed with killer weapons to bring down prey, their success rate is barely impressive.</p>\n<p>They are average.</p>\n<p>But there is one animal, <strong>the african wild dog</strong>.</p>\n<p>Their success rate is a whooping 85%. Clearly they are way above the average rate.</p>\n<p>What do they do different?</p>\n<p>They understand the game of numbers.</p>\n<p>Every animal has a strategy but unless a strategy is backed up by numbers, it is inefficient.</p>\n<p>Therefore, if you want to stop being average, have many connections. Get many friends and your ‘success rate’ will shoot up like crazy.</p>\n<p><a href=\"https://augustinenyongesa.com/the-secret-to-building-strong-friendships-in-life/\">The Secret to building strong friendships in Life</a></p>',0,'2020-05-29 17:39:30.503879','2020-05-29 17:39:30.503916',1,15),(27,'What can I do an hour a day that will make my life better in 30 days?','what-can-i-do-an-hour-a-day-that-will-make-my-life-better-in-30-days','P','<p>Let me save you some time…</p>\n<p>This only takes about ten minutes a day and it will make your life better in less than 30 days, so it’s a win-win situation.</p>\n<p>All you need to do is commit to do it for AT LEAST 30 days , I would think 90 days are the minimum for best results, but try it first and see how you feel.</p>\n<p>This is nothing new to say the least , but by doing it this way you really burn it into your mind and that is when the results happen.</p>\n<p><strong>Here is what you do</strong>:\nTake a note card ( I find they work best, it feels more official :&gt;) and then you write your top ten goals down .</p>\n<p>By writing it every day you will find that you begin to form a clear picture for what you are trying to achieve.</p>\n<p>It acts as a roadmap for your life and you can focus on the things that bring you closer to your goals and ignore the rest.</p>\n<p>There is SO much nonsense in the world and on social media and they all try to get your attention.</p>\n<p>The more time you spend on the nonsense the less time you have for important things. I like the way Joe Rogan puts it : “ It takes up your bandwidth.”</p>\n<p>With 10 solid goals you write down every morning you have a clear vision of what to do.</p>\n<p>Another interesting thing that happens is that your goals will change here and there.</p>\n<p>Maybe you just tweak some and replace others all together, but one day you write them down and it is as if a light goes on.</p>\n<p>You realize that these are the important things for you and that your map is done.</p>\n<p>It is for this reason that I say do it for at least 90 days so that you have a lot of time to tweak and perfect your list.</p>\n<p>I have done it for so long now that if someone is to ask me what my goals are I could ramble them off without even thinking, it is second nature by now.</p>\n<p>I know there is a lot being written about goal setting and most of it seems to be longer than necessary so that “gurus” can fill their books.</p>\n<p>Let’s face the facts, a 1 page goal setting book won’t become a New York Times best seller, but that is really all you need.</p>\n<p>Have fun with it, be selfish, write down things that YOU want and let these goals excite you. You will find it easier to stick with if it is something exciting.</p>\n<p>Give it a try , I think you will find it helpful.</p>\n<p>You can find more “Life Hacks” on my site Life Hacks HQ .</p>\n<p>Here is a picture of my stack of cards, just to show I practice what I preach :&gt;</p>',0,'2020-05-29 17:48:01.002321','2020-05-29 17:48:01.002362',1,16),(28,'What investments will make you rich?','what-investments-will-make-you-rich','P','<p>The Dukes of Westminster have been wealthy for nearly 1,000 years.</p>\n<p>The amazing thing is anyone can do it even if you are flat broke.</p>\n<p>I started in 1999 with negative equity and then borrowed a very small amount and never looked back.</p>\n<p>What escapes most people is the patience and hard work required. Something most if not all people lack in spades.</p>\n<p>For 20 years I chipped away at the portfolio, buying and holding all sorts of stuff no one wanted.</p>\n<p>Eventually it came good despite everyone laughing at me for years and telling me I was stupid.</p>\n<p>Yes there are plenty of other methods but take it from me like the hare and the tortoise, slow and steady works the best.</p>\n<p>Everyone wants to be rich quick but try the slower method and you will find that for most things it works just fine.</p>\n<p>Update: I bought a share in an apartment block way back 12 years ago for $20,000 and it was complicated because of the ownership but it was all sorted, however delayed.</p>\n<p>Tomorrow I will be the owner of my share free and clear, value, well it has a one and lot of zeros after it. The point is I sat around a table 12 years ago and everyone told me I was nuts and what I was going to do was legal but would never make money as real estate was going to go down in value for sure and I would lose.</p>\n<p>I waited and waited……..</p>',0,'2020-05-29 17:55:03.203032','2020-05-29 17:55:03.203076',1,17),(29,'What are techniques that manipulators use?','what-are-techniques-that-manipulators-use','P','<p>Day 1: “Dang you\'re gorgeous.”</p>\n<p>Day 2: “I feel like we have so much in common.”</p>\n<p>Day 3: “I really like you.”</p>\n<p>Day 4: “I feel like we\'re soul mates.”</p>\n<p>Day 5: “I love you.”</p>\n<p>Love bombing is an attempt to influence a person by giving them affection and attention. Cult leaders like David Koresh used this tactic to control their followers.</p>\n<p>Having experienced this before, the only way I can describe it is as if a sun is shining on you constantly for days, weeks and months. You\'re blinded not by love, but by the idea of being wanted.</p>\n<p>The love bomber makes you feel like you\'re in a trance. They shower you with compliments, buy you gifts, promise a future and bombard you with romantic texts. It seems too good to be true because it\'s an illusion.</p>\n<p>Love bombers feed you this attention to gain something in return. Whether that\'s money, power, control or sex.</p>\n<p>They can\'t love you because they don\'t know you to love you.</p>\n<p>They can\'t love you because they don\'t understand the meaning of the word.</p>\n<p>Relationships take time. Boundaries, opinions and space need to be valued. Relationships that start off by resembling a romantic movie is an instant red flag.</p>\n<p>It\'s easy to create an attachment with a love bomber.</p>\n<p>It’s harder to escape.</p>\n<p>Get out before it becomes emotionally abusive.</p>',0,'2020-05-29 17:57:11.617112','2020-05-29 17:57:11.617148',1,18),(31,'What decision made you a millionaire?','what-decision-made-you-a-millionaire','P','<p>The decisions I took that made me a millionaire to this day (and obviously financially free) that I could do anything I want, when I want are just 5, which you too can easily apply to your daily life.\nBut before you get too excited, if you think becoming a millionaire means <strong>just fancy cars, a lavish house, and an upscale lifestyle (which can go down in value)</strong>, think again. If you had a million dollars and spent it that way, you’d blow through it pretty quickly.</p>\n<h2>Here are five ways you can use to achieve a millionaire status:</h2>\n<h4>Invest</h4>\n<p>You may have heard the saying <strong>\"save money for a rainy day\"; my own saying is \"invest money for a rainy day\".</strong> Investing in different assets like: Bitcoin, real estate, stock, shares and other good investment portfolio was one thing that made me a millionaire to this day. When you invest, you will be able to make money while you sleep instead of spending lot of your time and energy to work and save up money in other to become a millionaire. Through investment, with safe and proper management, you can double your income which you work hard for and become wealthy in no time.</p>\n<h4>Educate</h4>\n<p>Educating myself consistently on different financially beneficial things/ideas made me a millionaire and still keeps me a millionaire. So in essence, if you\'re building your craft, knowledge and professionalism on specific/new businesses or investments or trade, it brings you new and valuable ideas or ways which you can use to acquire more income instead of just relying on your old ideas or knowledge which can only give you the same results over and over again.</p>\n<h4>Give</h4>\n<p>Mentioning this may seem odd but when you give, you\'re coming from the mindset of abundance rather than scarcity. Take for example Bill Gates, one of the world’s richest men who has donated massively on charities and other foundations. I myself, even when I was broke, gave out a portion of my money to those who in need or to something I believed in. This simple act or gesture makes the universe attract more abundance into your life and makes it important because of its contribution.</p>\n<h4>Save</h4>\n<p>After investing, saving money also made me achieve a millionaire status. When you do have a portion of money that you never touch, you will have a full-time one way ticket to build that nest egg. So try to have a focused plan for how much you\'ll be saving definitely from each and every one of your paychecks.</p>\n<h4>Hire or get a financial advisor</h4>\n<p>Even though you may be taking what you think are all the right steps, you should still consult with a professional. Wealth advisers can work on helping you create a road map for your savings goals, point you to wise investments, and identify areas where you can reduce expenses or get better returns on those investments.</p>\n<p>So, with that said, if you apply these five decisions/rules in your life properly, you can easily achieve the millionaire status that you so crave for.</p>\n<p>I hope you found this information useful and if you love my answer, please do me a favor by following me here on Quora, because I will always share content like this.</p>\n<p>Thanks!</p>',0,'2020-05-29 18:04:38.316281','2020-05-29 18:04:38.316326',1,19),(32,'What are the things which a teen must not do?','what-are-the-things-which-a-teen-must-not-do','P','<p><strong>The tables have turned…</strong></p>\n<p>Its not the ‘<strong>A+</strong>’ students that brag about their grades anymore, but the ‘<strong>C grade</strong>’ students brag and that is because of videos like these…</p>\n<p>The fact is that your grades do not predict your success in life but more and more videos of this kind are popping up on YouTube. These type of videos do not motivate the weak students to get better. They demotivate the good students.</p>\n<p>This is the conversation that took place in my class:</p>\n<blockquote>\n<p>C student: Dude how much did you get in your test??</p>\n<p>A+ student: got an A. what about you??</p>\n<p>C student: man, I feel like my case is like Steve Jobs, I may be bad at studies but I’ll end up becoming a millionaire. I bet all of you guys will eventually end up looking for a job where as I will have my own business.</p>\n</blockquote>\n<p>What!!!! He thinks that just because he is bad at studying he will be the most successful!!!???</p>\n<p><strong>THAT is something teenagers should never do!</strong></p>',0,'2020-05-29 18:08:28.793403','2020-05-29 18:08:28.793438',1,20),(33,'What are some consequences of not taking action to change in life?','what-are-some-consequences-of-not-taking-action-to-change-in-life','P','<p>Most of my 20\'s I spent being fearful. When i turned 30, it was the first time I could look back and see clearly, a solid chunk of my life: a whole decade.</p>\n<p>It scared the shit out of me, how much expectation I had for my 20\'s and how much of it didn\'t come to pass.</p>\n<p>I wanted and wished things for my life, but when it came time to risk doing something about it, I\'d withdraw in fear.</p>\n<p>Slowly over time, I noticed I shut down emotionally. I think I did this in part to cope from feeling the ache of disappointment.</p>\n<p>There is a C.S. Lewis quote I read one day, a few years ago, that cut quick as soon as I finished it. It explained my 20\'s to me:</p>\n<blockquote>\n<p>“The more often he feels without acting, the less he will be able ever to act, and, in the long run, the less he will be able to feel.” - C.S. Lewis</p>\n</blockquote>',0,'2020-05-29 18:11:22.074001','2020-05-29 18:11:22.074036',1,21),(34,'What is your financial advice for a 25-year-old?','what-is-your-financial-advice-for-a-25-year-old','P','<p>My top 10.</p>\n<p>I wish someone had told me at 25.</p>\n<p>But then I’d have probably ignored them.</p>\n<p><strong>Paying to learn</strong> before you leap is always a lot cheaper than after you leap. Buy books, attend seminars, listen to podcasts. It costs money. But is way cheaper than making mistakes. Believe me, I know.</p>\n<p><strong>No one has enough time</strong> to make all the mistakes. Goes along with number 1. You can either learn from other’s mistakes. Or make them yourself. If you choose option 2 plan on a long trip.</p>\n<p><strong>Get rich slow. News flash</strong>. You don’t need to be a millionaire by 35. I mean, what are you going to do then? And trying to do that you’ll make a lot of unforced errors. Then you’ll remember 1 and 2.</p>\n<p><strong>Be boring</strong>. Everyone wants the next Apple. Except no one knows what it is. In fact, Apple came close a few times to not being the next Apple. You won’t find it. So choose broad and boring instead.</p>\n<p><strong>Don’t be too boring</strong>. Ok, you’re 25. What the stock market does in the next 2 weeks or 2 months. Or heck, 2 years makes no difference. What it does over the next 2 decades does. And that’s always been up.</p>\n<p><strong>Trick your checkbook</strong>. Figure out what you’re going to save and never let it touch your checkbook. Because if it does guess what? That big screen TV is always a lot more fun. Automatically save and invest.</p>\n<p><strong>Forget about it</strong>. The markets go up. They go down. Sometimes they scare the hell out of you. If you’re broadly diversified then add to your investments. Every month. Why not buy while everything is on sale?</p>\n<p><strong>Google your map</strong>. How much will you need? When do you need it? How much will you need to save? How much can you expect to make per year? Ok, no fantasies. You can find all those answers online. Do.</p>\n<p><strong>Splurge</strong>. Just a little. Not enough to derail your trip. But enjoy life as you go. To miss out and simply have a huge pile of money at the end really isn’t that much fun. My wife taught me this one. And I’m glad.</p>\n<p><strong>Have fun</strong>. Yeah, I’m a little weird here. I think the game of building wealth is fun. Learning, strategizing, investing and then seeing your numbers grow is fun. Sure as hell beats the opposite.</p>\n<p>There you go. 10 things I wish I’d known at 25.</p>\n<p>But hey, I learned. And I’m still having fun building wealth.</p>\n<p>Oh, but then I am a little weird. And no don’t ask my wife.</p>\n<p>You can build wealth when you don’t spend time and money making all the mistakes.</p>',0,'2020-05-29 18:15:17.221929','2020-05-29 18:15:17.221966',1,22),(35,'What are you tired of explaining to people?','what-are-you-tired-of-explaining-to-people','P','<p>A young intelligent boy once told his father ‘I want to be a pilot and fly around the world.’ His father, a professor, smiled and told him to work hard in school.</p>\n<p>A few years later, the boy completed high school and was to join University. While discussing with his father what he should pursue in college, the father asked him to do economics.</p>\n<p>The young man insisted that he wanted something hands on like engineering. He explained that he just doesn’t feel like doing economics.</p>\n<p>But the father insisted claiming he was the one paying for it so the child should do it. Out of options, the young man decided to pursue economics.</p>\n<p>A year later, the young intelligent man dropped out of college to pursue his passion. His performance had become so poor, a contrast to his high school performance.</p>\n<p>After dropping out of college, his father, his brothers, his sister, his friends all asked him over and over again why he dropped out of college yet he was very intelligent.</p>\n<p>I am the young man…</p>\n<p>…and…</p>\n<p>I am tired of explaining to people why I dropped out of college. For heaven’s sake, when will this end?</p>',0,'2020-05-29 18:18:02.506784','2020-05-29 18:18:02.506824',1,23),(36,'What is the most clever life hack you\'ve learned?','what-is-the-most-clever-life-hack-you-ve-learned','P','<p>I watched a documentary of a young college student. He was an introvert and would sit in his house reading books the whole day.</p>\n<p>Having invested so much time in reading books, he didn’t find time to do other stuff. He became specifically fascinated with antique books.</p>\n<p>Being a naturally curious person, he set out on a mission to collect old antique books.</p>\n<p>The problem was that the books were so expensive. He came up with an ingenious plan with the assistance of his friend and managed to steal over 6,000 rare books before he was caught.</p>\n<p>The books he stole were valued at about 9 million dollars. When he was caught, he had all the books stacked in his house.</p>\n<p>The detectives realized he was stealing the books just because he loved them.</p>\n<p>From that documentary, I learned to do things for fun.</p>\n<p>In dating, I ‘stopped’ caring about whether someone will like me or not.</p>\n<p>In my finances, I came up with a <a href=\"https://augustinenyongesa.com/the-elusive-habit-of-saving-money-and-how-to-master-it/\">‘don’t care’ method of saving money</a>.</p>\n<p>My success rate shot up when I began doing things for fun.</p>\n<p>If you stop caring, results will come.</p>',0,'2020-05-29 18:20:01.443398','2020-05-29 18:20:01.443436',1,24),(37,'What is the greatest business decision of all time?','what-is-the-greatest-business-decision-of-all-time','P','<p>Acquisition of Instagram by Facebook.</p>\n<p>Facebook bought photo and video sharing app Instagram for $1 billion cash &amp; stock in 2012 which now, has a net worth of $100 billion.</p>\n<p>When Facebook founder Mark Zuckerberg decided to buy Instagram, people thought that it was an insane decision to spend $1b for a new photo-sharing app like Instagram which had only 13 employees and zero revenue.</p>\n<p>Instagram was developed by Kevin Systrom and Mike Krieger in 2010. It was first launched on iOS. It got 1 million users within 2 months and 10 million within 1 year after launching.</p>\n<p>Later, it was introduced for the android phone in 2012. Unsurprisingly, it had been downloaded 1 million times less than 24 hours after launching for android which proved that Instagram was gaining popularity among smartphone users.</p>\n<p>So, Facebook CEO Mark foresaw the importance of Instagram to dominate the social media space in the near future.</p>\n<p>That\'s the reason he gave a lucrative offer to Instagram owners to sell at 2012 and eventually they accepted the offer.</p>\n<p>Facebook tried the same strategy to take over by purchasing Instagram\'s present competitor Snapchat in 2013 and offered $3 billion, but Snapchat co-founder &amp; CEO Even Spiegel rejected the offer because he did not have any interest in short term gain.</p>\n<p>Snapchat and Instagram are quite popular among teenagers now. At present Instagram has 500 million and Snapchat has 190 million daily active users.</p>\n<p>So, Facebook would not be able to compete with the multimedia messaging app Snapchat by attracting particular teenage age-group without Instagram.</p>\n<p>Whatsoever, Instagram has 1 billion registered users right now. Moreover, it added $8- 9 billion Facebook\'s revenue in 2018 and it is projected by technical analysts that revenue of Facebook driven by Instagram will reach $14 billion by the end of 2019.</p>\n<p>Therefore, undoubtedly the acquisition of Instagram was not only a smart business move by Facebook but also the greatest business decision of all time. Overall, It was a huge gain for both Mark and Facebook altogether.</p>',0,'2020-05-29 18:22:36.010633','2020-05-29 18:22:36.010673',1,25),(38,'I\'m 25 and have wasted last 10 years of my life. How can I catch up with them?','i-m-25-and-have-wasted-last-10-years-of-my-life-how-can-i-catch-up-with-them','P','<p>We want attention, wealth, money, sex, expensive cars, villas and fame. Interestingly, most of the people in this world are trying to win the rat race of life. But if you win the rat race of life, you will still be unhappy and dissatisfied with life. <em>It’s a vicious circle of success, which is a never-ending process.</em></p>\n<p>The reality is that life is not a race, it’s about self-discovery. We always want to be someone else. But it is a terrible idea. When our people surrounding us are proceeding ahead of us in terms of success, physical beauty, academic results, career or other things, let them go. We don’t need to work hard to catch them.</p>\n<p>Be yourself. You don’t need to be someone else. Moreover, we should not compare our life with others’ lives. If we compare our lives consistently with the life of others, it will be a huge distraction for our life. Consequently, we will not able to focus on our goal and excel in our life.</p>\n<p>Get rid of the rat race. Experiment with different things. Read books, meditate, learn to play a musical instrument, try a new recipe, run, explore, study, get degrees, write, work, start your own business and have some time for underprivileged people.</p>\n<p>The more you will add diversity to your life, the more easily you will find your passion. The ultimate goal of our life is not to be a millionaire or be someone else, it’s all about finding our passion, work on it and being a happy person.</p>\n<p>Photo Source: Quitting the Rat Race (Quitting the Rat Race)</p>',0,'2020-05-29 18:26:13.220535','2020-05-29 18:26:13.220572',1,26);
/*!40000 ALTER TABLE `articles_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Home & News',6,'add_news'),(22,'Can change Home & News',6,'change_news'),(23,'Can delete Home & News',6,'delete_news'),(24,'Can view Home & News',6,'view_news'),(25,'Can add 私信',7,'add_message'),(26,'Can change 私信',7,'change_message'),(27,'Can delete 私信',7,'delete_message'),(28,'Can view 私信',7,'view_message'),(29,'Can add 用户',8,'add_user'),(30,'Can change 用户',8,'change_user'),(31,'Can delete 用户',8,'delete_user'),(32,'Can view 用户',8,'view_user'),(33,'Can add 文章',9,'add_article'),(34,'Can change 文章',9,'change_article'),(35,'Can delete 文章',9,'delete_article'),(36,'Can view 文章',9,'view_article'),(37,'Can add 问题',10,'add_question'),(38,'Can change 问题',10,'change_question'),(39,'Can delete 问题',10,'delete_question'),(40,'Can view 问题',10,'view_question'),(41,'Can add 回答',11,'add_answer'),(42,'Can change 回答',11,'change_answer'),(43,'Can delete 回答',11,'delete_answer'),(44,'Can view 回答',11,'view_answer'),(45,'Can add 投票',12,'add_vote'),(46,'Can change 投票',12,'change_vote'),(47,'Can delete 投票',12,'delete_vote'),(48,'Can view 投票',12,'view_vote'),(49,'Can add 通知',13,'add_notification'),(50,'Can change 通知',13,'change_notification'),(51,'Can delete 通知',13,'delete_notification'),(52,'Can view 通知',13,'view_notification'),(53,'Can add Tag',14,'add_tag'),(54,'Can change Tag',14,'change_tag'),(55,'Can delete Tag',14,'delete_tag'),(56,'Can view Tag',14,'view_tag'),(57,'Can add Tagged Item',15,'add_taggeditem'),(58,'Can change Tagged Item',15,'change_taggeditem'),(59,'Can delete Tagged Item',15,'delete_taggeditem'),(60,'Can view Tagged Item',15,'view_taggeditem'),(61,'Can add site',16,'add_site'),(62,'Can change site',16,'change_site'),(63,'Can delete site',16,'delete_site'),(64,'Can view site',16,'view_site'),(65,'Can add comment',17,'add_comment'),(66,'Can change comment',17,'change_comment'),(67,'Can delete comment',17,'delete_comment'),(68,'Can view comment',17,'view_comment'),(69,'Can moderate comments',17,'can_moderate'),(70,'Can add comment flag',18,'add_commentflag'),(71,'Can change comment flag',18,'change_commentflag'),(72,'Can delete comment flag',18,'delete_commentflag'),(73,'Can view comment flag',18,'view_commentflag'),(74,'Can add Token',19,'add_token'),(75,'Can change Token',19,'change_token'),(76,'Can delete Token',19,'delete_token'),(77,'Can view Token',19,'view_token'),(78,'Can add article image',20,'add_articleimage'),(79,'Can change article image',20,'change_articleimage'),(80,'Can delete article image',20,'delete_articleimage'),(81,'Can view article image',20,'view_articleimage'),(82,'Can add user image',21,'add_userimage'),(83,'Can change user image',21,'change_userimage'),(84,'Can delete user image',21,'delete_userimage'),(85,'Can view user image',21,'view_userimage'),(86,'Can add association',22,'add_association'),(87,'Can change association',22,'change_association'),(88,'Can delete association',22,'delete_association'),(89,'Can view association',22,'view_association'),(90,'Can add code',23,'add_code'),(91,'Can change code',23,'change_code'),(92,'Can delete code',23,'delete_code'),(93,'Can view code',23,'view_code'),(94,'Can add nonce',24,'add_nonce'),(95,'Can change nonce',24,'change_nonce'),(96,'Can delete nonce',24,'delete_nonce'),(97,'Can view nonce',24,'view_nonce'),(98,'Can add user social auth',25,'add_usersocialauth'),(99,'Can change user social auth',25,'change_usersocialauth'),(100,'Can delete user social auth',25,'delete_usersocialauth'),(101,'Can view user social auth',25,'view_usersocialauth'),(102,'Can add partial',26,'add_partial'),(103,'Can change partial',26,'change_partial'),(104,'Can delete partial',26,'delete_partial'),(105,'Can view partial',26,'view_partial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_comment_id_flag_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_flag_8b141fcb` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_content_type_id_c4afe962_fk_django_co` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_users_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9` (`submit_date`),
  CONSTRAINT `django_comments_content_type_id_c4afe962_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
INSERT INTO `django_comments` VALUES (44,'20','','','','My son started playing wow in 2006 and is now 23 years old. He’s quite the gamer and we still have linked accounts meaning we share in game achievements. i.e. both he and I get credit for one of us doing something great or finding or earning something.\r\n\r\n\r\nMy son is in his final year of a 5-year Master’s degree in computer engineering from the University of Louisville (one of those basketball schools that suffers from scandals).\r\n\r\n\r\nAnd he’s a fairly high level WoW gamer.','2020-05-30 11:23:07.289904',NULL,1,0,9,1,1),(45,'20','','','','Wow, I thought this was just a meme. Turns out the meme is real!','2020-05-30 11:38:43.777040',NULL,1,0,9,1,3),(47,'20','','','','His son must have been on a PVP server then otherwise this wouldn’t have worked. Wonder how Dad found that out without knowing his sons character name, server name etc, which may have given the game away (pun intended) as to what he had planned.','2020-05-30 11:39:00.277044',NULL,1,0,9,1,4),(48,'20','','','','“I shall stop my son from thinking he can become a professional gamer by hiring a group of professional gamers!”','2020-05-30 11:39:09.335328',NULL,1,0,9,1,5),(50,'20','','','','niceeee','2020-06-04 16:14:31.598827',NULL,1,0,9,1,2),(51,'34','','','','yes, absolutely agree!!','2020-06-07 10:51:18.634647',NULL,1,0,9,1,2),(64,'29','','','','looks nice...','2020-06-13 16:57:44.580880',NULL,1,0,9,1,1);
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(9,'articles','article'),(3,'auth','group'),(2,'auth','permission'),(19,'authtoken','token'),(4,'contenttypes','contenttype'),(17,'django_comments','comment'),(18,'django_comments','commentflag'),(7,'messenger','message'),(6,'news','news'),(13,'notifications','notification'),(11,'qa','answer'),(10,'qa','question'),(12,'qa','vote'),(5,'sessions','session'),(16,'sites','site'),(22,'social_django','association'),(23,'social_django','code'),(24,'social_django','nonce'),(26,'social_django','partial'),(25,'social_django','usersocialauth'),(14,'taggit','tag'),(15,'taggit','taggeditem'),(20,'upload','articleimage'),(21,'upload','userimage'),(8,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-27 13:10:59.564719'),(2,'contenttypes','0002_remove_content_type_name','2020-05-27 13:10:59.610263'),(3,'auth','0001_initial','2020-05-27 13:10:59.665842'),(4,'auth','0002_alter_permission_name_max_length','2020-05-27 13:10:59.788300'),(5,'auth','0003_alter_user_email_max_length','2020-05-27 13:10:59.795785'),(6,'auth','0004_alter_user_username_opts','2020-05-27 13:10:59.801765'),(7,'auth','0005_alter_user_last_login_null','2020-05-27 13:10:59.807758'),(8,'auth','0006_require_contenttypes_0002','2020-05-27 13:10:59.810071'),(9,'auth','0007_alter_validators_add_error_messages','2020-05-27 13:10:59.816326'),(10,'auth','0008_alter_user_username_max_length','2020-05-27 13:10:59.822426'),(11,'auth','0009_alter_user_last_name_max_length','2020-05-27 13:10:59.828437'),(12,'auth','0010_alter_group_name_max_length','2020-05-27 13:10:59.857559'),(13,'auth','0011_update_proxy_permissions','2020-05-27 13:10:59.864269'),(14,'users','0001_initial','2020-05-27 13:10:59.954896'),(15,'admin','0001_initial','2020-05-27 13:11:00.098066'),(16,'admin','0002_logentry_remove_auto_add','2020-05-27 13:11:00.159655'),(17,'admin','0003_logentry_add_action_flag_choices','2020-05-27 13:11:00.168579'),(18,'taggit','0001_initial','2020-05-27 13:11:00.207154'),(19,'taggit','0002_auto_20150616_2121','2020-05-27 13:11:00.287939'),(20,'taggit','0003_taggeditem_add_unique_index','2020-05-27 13:11:00.301625'),(21,'articles','0001_initial','2020-05-27 13:11:00.329771'),(22,'articles','0002_auto_20200519_1631','2020-05-27 13:11:00.385653'),(23,'articles','0003_auto_20200520_1414','2020-05-27 13:11:00.398140'),(24,'sites','0001_initial','2020-05-27 13:11:00.415870'),(25,'django_comments','0001_initial','2020-05-27 13:11:00.487638'),(26,'django_comments','0002_update_user_email_field_length','2020-05-27 13:11:00.674803'),(27,'django_comments','0003_add_submit_date_index','2020-05-27 13:11:00.697139'),(28,'messenger','0001_initial','2020-05-27 13:11:00.725808'),(29,'news','0001_initial','2020-05-27 13:11:00.828944'),(30,'news','0002_auto_20200518_1434','2020-05-27 13:11:00.966734'),(31,'notifications','0001_initial','2020-05-27 13:11:00.998541'),(32,'qa','0001_initial','2020-05-27 13:11:01.191916'),(33,'qa','0002_auto_20200521_1441','2020-05-27 13:11:01.474045'),(34,'sessions','0001_initial','2020-05-27 13:11:01.502486'),(35,'sites','0002_alter_domain_unique','2020-05-27 13:11:01.525611'),(36,'authtoken','0001_initial','2020-05-28 17:08:39.671879'),(37,'authtoken','0002_auto_20160226_1747','2020-05-28 17:08:39.853080'),(38,'articles','0003_auto_20200529_1426','2020-05-29 14:26:11.145042'),(39,'articles','0004_auto_20200529_1426','2020-05-29 14:26:50.982454'),(40,'upload','0001_initial','2020-05-31 12:53:34.516067'),(41,'articles','0005_auto_20200531_1321','2020-05-31 13:21:15.478881'),(42,'articles','0006_auto_20200531_1326','2020-05-31 13:26:25.029611'),(43,'articles','0007_article_image2','2020-05-31 13:35:00.794735'),(44,'articles','0008_remove_article_image','2020-05-31 13:42:02.774824'),(45,'articles','0009_auto_20200531_1342','2020-05-31 13:42:27.836538'),(46,'qa','0003_remove_question_has_answer','2020-06-02 18:08:39.214670'),(47,'qa','0004_remove_question_status','2020-06-02 18:25:47.202224'),(48,'notifications','0002_auto_20200607_1026','2020-06-07 10:27:04.882267'),(49,'notifications','0003_auto_20200607_1034','2020-06-07 10:34:12.138786'),(50,'users','0002_auto_20200608_1145','2020-06-08 11:45:51.532583'),(51,'default','0001_initial','2020-06-08 12:08:41.902679'),(52,'social_auth','0001_initial','2020-06-08 12:08:41.916196'),(53,'default','0002_add_related_name','2020-06-08 12:08:42.021068'),(54,'social_auth','0002_add_related_name','2020-06-08 12:08:42.023966'),(55,'default','0003_alter_email_max_length','2020-06-08 12:08:42.061047'),(56,'social_auth','0003_alter_email_max_length','2020-06-08 12:08:42.064256'),(57,'default','0004_auto_20160423_0400','2020-06-08 12:08:42.085341'),(58,'social_auth','0004_auto_20160423_0400','2020-06-08 12:08:42.089169'),(59,'social_auth','0005_auto_20160727_2333','2020-06-08 12:08:42.105980'),(60,'social_django','0006_partial','2020-06-08 12:08:42.126655'),(61,'social_django','0007_code_timestamp','2020-06-08 12:08:42.169950'),(62,'social_django','0008_partial_timestamp','2020-06-08 12:08:42.212118'),(63,'social_django','0003_alter_email_max_length','2020-06-08 12:08:42.228621'),(64,'social_django','0002_add_related_name','2020-06-08 12:08:42.231819'),(65,'social_django','0001_initial','2020-06-08 12:08:42.234773'),(66,'social_django','0004_auto_20160423_0400','2020-06-08 12:08:42.238056'),(67,'social_django','0005_auto_20160727_2333','2020-06-08 12:08:42.240956'),(68,'users','0003_auto_20200613_1551','2020-06-13 15:55:00.238567');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('36zn91ju2qimmyi479t87pae0ophafr8','Y2Y2OWQ1MjIwNzYxYTk1MGFkYThjZWZkMzdkMTA4ODQ2NjBjNmRlYjp7ImdpdGh1Yl9zdGF0ZSI6ImtqcDNRTDZTM0FuYXVyYkk2aDlYWDVrWHE0Q0U2TkJBIn0=','2020-06-26 16:38:42.873927'),('40mjvixbld85hrpefo15ddi0jht5916s','OWE3M2IyMTYwNDgzNWRjZDNiM2UzNmFhMGY1NWQ1Y2ZiNTA4ZWZiNTp7ImdpdGh1Yl9zdGF0ZSI6Ik5VOTdISkRvQ3hKTGpIMWxRbWFyZGthUUx6WUw1R09RIiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-26 16:47:38.406633'),('43mja8kfe7e25aewt05ahnfckzxfzbzs','OWVhZDhhNzk0MWIxNDkyM2RhN2QxNzcxNjY5MTkwYmY0N2JlMmM3MDp7ImdpdGh1Yl9zdGF0ZSI6IlptVmMyM0JoTm5aMWwxZ0VFOFRjSGNSYU9FUzE4MTVqIiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-22 13:30:57.493325'),('65tf9xo2tb3h08jxalufdban4fns23rw','OWM3MGZhYjI5NmMwZGZlYzJhOTU0NTdmMjNjZjcxYzhmZmI4YzEyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ5Yzc2OTBjYmVhMWNlNzEyNWViZjkxY2ZjZjRmM2NiNDE5MmY3YzEiLCJnaXRodWJfc3RhdGUiOiJZU3NpeGNZeWRBUGV6cFJWUTRRdmFZYktqejhlZjllOCIsInJlZGRpdF9zdGF0ZSI6IlpqRXJmV1hoeWlidnp1QUFReWFOaDRzMWM4bVdYR0F2Iiwic3RhY2tvdmVyZmxvd19zdGF0ZSI6IkJsVWxUZmJwTFBnTzh6QmZvRTU0VlFBMllFSXVGZVpLIn0=','2020-06-27 17:48:41.646594'),('66ao1a517r2wiowrgy26sq23x087dq2l','Yzk2YmFiY2M1MGU2ODI0YTlmMjk1Y2VjZjMxNDhmMDc1YzY4YjZhZTp7ImdpdGh1Yl9zdGF0ZSI6ImQ2SlVPRkl2eWdlTDF5UmYxcU1tY05rY3ZqMXQ2WUV4IiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-22 13:30:49.126463'),('86kcwyi9gr06to4qsnxphq3afqy4k4hs','MGRmMTUwZDEyMzYyNjRmYzUxNjg0YzQ3Y2M2M2Q1MDFhOGM3Y2Q0NTp7ImdpdGh1Yl9zdGF0ZSI6Im9rN1FBUk8xeURwZzZjRHN6amRsQ0ptcUkxZUJqQkNqIn0=','2020-06-28 08:37:41.935568'),('a8ndk2rmvxp5f9udeqqi19vhicjkyq96','ODFlNDBjMDQ1NmUyZTVhN2YwNjhmYWQzOTJlZGM1ZmE0ZTllYjcwZjp7ImdpdGh1Yl9zdGF0ZSI6IksxM1JmSk9SWElPVHRHaFBWMkVWMUdzSks3V0NSQWxXIiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-22 13:07:09.063545'),('ak1zrwajnxvq47ri1bbrh4o091izi3zb','MDkwNWU0ZWYxN2Y4ZGE2ZDBjZTkyOGZlNzA0ZmMwYzllYzQ5YjRkZDp7ImdpdGh1Yl9zdGF0ZSI6IjBZMVNZSEdvWDhKUHFTOUtHUmpJUFh0eWpRY3pLMnR4IiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-26 15:00:14.291239'),('eajr5wcxk25y0atub26uxn43z3r44yii','ZjcyMGVlOGY3N2E5Y2JhY2Y1MTZjOWNlMjFhODFmNjc0YjUyNTQ4Mjp7ImdpdGh1Yl9zdGF0ZSI6InlwZ2o0c0p6a2ZOeGdOWWswaENnSmRRdUJTR1FnTnlpIiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiJ9','2020-06-26 17:31:27.693600'),('eb1i2qsbt5w652y2cx5use0q2182n1tp','M2Y5OWI5ODk0YTI5MDQ3ZGVjMTdjMjFkOTY1NmI1Mjk3YzgwNjQwMDp7ImZhY2Vib29rX3N0YXRlIjoiUU4zaGROdjZXeVBZdTlQRmRWdHVjcFM1Vk9rZVNvOTgifQ==','2020-06-27 08:03:00.400352'),('gfkqscj33xi4cb0w1r83sycwvesfvmxl','YTBlMTMwYjQwZTc5MTY5OGRkMTg3N2M1MDM4ZjQ3MjJkNGZlMDE2ZTp7InJlZGRpdF9zdGF0ZSI6Im85ek1LYUJEZWJvanRCOW9qbTh1endYcG92ZVBuTkhyIn0=','2020-06-29 15:49:01.325581'),('gt4pxoawxx820qvwegb6dk4ibmt82n4h','YzM2NTBmYWNmNjI1YTc4NjQxN2IyNmI1ZTJkODkyYjIwYjVjOGE1YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhMjczY2I3ZDY1YzM2NDNjN2FkNGJjYzgzMzgwODAyMTg1MGRhMzMiLCJnaXRodWJfc3RhdGUiOiI5SmdqZnBvWDJIM1czNmNZNkJyNVJHWkpXVWlZZXhTWCIsImZhY2Vib29rX3N0YXRlIjoiY1d4cDJBeGhHeFlBZlJNc2lNdzFJR0JKeEtZVkJMZDUifQ==','2020-06-22 18:30:20.347839'),('jhtilryyarmgdn519k08opg4jojy9m5m','ZWRmZTAwNGY3NTlmMDVkZDc5ZjQ5MDA0ZTYyMDNiNjEzMGJmNjU0MDp7ImdpdGh1Yl9zdGF0ZSI6IkFkZjNFRlA1eGpKV05VRFNPa0Zyc2NvMzM1YTJUbVBWIn0=','2020-06-26 16:31:56.213715'),('jj0ptjxy3xaq5k32ry59fhsc7gbnqgv6','MWFhMzM2NTJmYjE2NjhlMmFiNTEzNTJjYmIzZDQ2NDA5OThlNGQyNjp7ImZhY2Vib29rX3N0YXRlIjoiRjdtazFJcHA5M013Q01hYmhhbzVOMHBiUXQ3QnhRblYifQ==','2020-06-27 07:59:59.197820'),('jv5e3x47u14f8gs328t2xg3kvk1tuvu9','OWRkMGVjZmYzOWZmNDRlMTk3ZjJiZDU1ZThhZmRmZWNkZWEzYTVkZTp7ImdpdGh1Yl9zdGF0ZSI6ImZtMUtlSmZkSTA1SWIwSHh3Q3ptRUJCQ2l4ZmlUeHNqIiwicmVkZGl0X3N0YXRlIjoiT2JnME42ZWtXTkhMaVFqSjVyWk14MEc3SlhvYXdBYTQiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLnJlZGRpdC5SZWRkaXRPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIwOGI0YzY4MjM1NTMwMTAwNWVjOGFiMGY3MDYxZjg3MWI2YjAzZWI2Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoicmVkZGl0Iiwic3RhY2tvdmVyZmxvd19zdGF0ZSI6IkZCNFdpRVdTa2FYY1NvMk9RSmxLQndWeXpaelJ3OFozIiwiYW1hem9uX3N0YXRlIjoiWGpYWDdmN25wMFBqUXJaSkxxYmpkS2hnRHdPZWhkU1MiLCJvcGVuaWQiOnt9LCJ0d2l0Y2hfc3RhdGUiOiJDYmhlSFZRSHZ6aEJ6TG9WWTQ4Wkp3Y0hjY01zVVl0VyJ9','2020-06-27 11:38:51.234503'),('mv3nffjcbcfu2jw9vswsip5d9ivig8mi','ZDJjMzIzMDljYjQ3MjczYWFhMzlkYzY3OGU2ZjljZWIzYzRkY2JjZDp7ImdpdGh1Yl9zdGF0ZSI6IjlvWE5BMzdwblA5V0I4RGF5cDJMRzloR0dnOFRYclRBIn0=','2020-06-26 16:29:59.399481'),('owi9ba7bo51mt3kvn4qj4e5u9ylaomou','MTQ1ZTIzMDE1OWI5YTAxNjFlOWY0OGE1NThlNzIyMzY1NjhjYmMxYjp7ImdpdGh1Yl9zdGF0ZSI6IjlUOUp0Vm9reDJkNkVJU1JZODQzOGVLQlA2UEY4ZGJBIiwicmVkZGl0X3N0YXRlIjoiamtQekZMYkVwUTMwRUx5UmhOZ2FIdDZEaVBmWTVPODIiLCJ0d2l0Y2hfc3RhdGUiOiJBazdJQlhzU2hwaGtqbFF6emR4MTBLcHl3dzJUeGUxQyIsIl9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdpdGh1Yi5HaXRodWJPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJjMTZjYTU0MDg2NjI1NzhiNjMwMjcwMTZmZGQ2ODJiNDU2YWRlNmE5Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZ2l0aHViIn0=','2020-06-27 18:58:24.547922'),('q0zz80ohf93efro3wtst1mvvu2qrryer','OTQyYzBlNmEwM2I2M2NkMGNhMGIxNjQwN2Q1OWQ4MGM5NjVjODdkYjp7InJlZGRpdF9zdGF0ZSI6ImhnTWJIVlp0VW9hSFdrWTE5MlhSc2lXWDlRbzl6aVAxIn0=','2020-06-28 04:36:38.119964'),('rv703nwp7gk3gws97fzjsepid0vhm96s','MmIyNzA4OWEyYTAzMDQ4MjM5ODdkN2NmNzdmNTFlY2YzZTFhZTgxYTp7ImdpdGh1Yl9zdGF0ZSI6IlJVenRGUG1TMDJZVERWcThiNVZNa1JGQ0ZsNUpvaVlZIn0=','2020-06-27 18:57:43.882857'),('zzwurtj9b6ykz26zu6we65gpi2bmif1g','YzIzMTI4YmY4YzBlYzVhNGE4ZTJkNDAzYzg4NTc1OWEwOTE2ZmM5Nzp7ImdpdGh1Yl9zdGF0ZSI6IkJQc2U2VGRrZlFmZFZXb3EzQ242V0F6blV0WGxyVlF1IiwiX2F1dGhfdXNlcl9pZCI6IjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5naXRodWIuR2l0aHViT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDVjMzVjODgxYmYwYWM0YTZmNjUwNTU5MzI2NjRhZTVhNWU3ZjFjMCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImdpdGh1YiIsImxpbmtlZGluLW9hdXRoMl9zdGF0ZSI6IlBqUkM4VnVlaDBGME5GYXdJRW1hQ09wSG5wMThSQkRMIn0=','2020-06-22 14:05:12.186614');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_message`
--

DROP TABLE IF EXISTS `messenger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_message` (
  `uuid_id` char(32) NOT NULL,
  `message` longtext,
  `unread` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid_id`),
  KEY `messenger_message_recipient_id_722169a2_fk_users_user_id` (`recipient_id`),
  KEY `messenger_message_sender_id_50c24489_fk_users_user_id` (`sender_id`),
  KEY `messenger_message_created_at_23647e3e` (`created_at`),
  CONSTRAINT `messenger_message_recipient_id_722169a2_fk_users_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `messenger_message_sender_id_50c24489_fk_users_user_id` FOREIGN KEY (`sender_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_message`
--

LOCK TABLES `messenger_message` WRITE;
/*!40000 ALTER TABLE `messenger_message` DISABLE KEYS */;
INSERT INTO `messenger_message` VALUES ('1b6a85429e434328a660a304496a1fbb','aa',1,'2020-06-04 17:27:26.129872',4,2),('1cc3c62fc8e24d28a640e750380a49b1','nothing',1,'2020-06-07 16:32:18.219656',4,2),('240494394cb446c2bb8025d5c711cc40','aaa',1,'2020-06-03 12:57:34.984953',6,1),('34becb983cf54e529938a9b87424e385','OMG',1,'2020-06-04 12:22:50.859126',5,1),('3a4f74dac2b049f29593e26405e77f9f','cccasdjjasldjio',1,'2020-06-03 12:57:26.474024',1,4),('49f2ab103e274f629c155af36ced31fc','bbbb',1,'2020-06-03 12:57:39.964461',6,1),('4b5b1547018c49b4a0168a04e8821f1a','please...',1,'2020-06-04 12:22:06.084787',2,1),('559129d958f14b808e81bd3c8fc1f7ef','??',1,'2020-06-04 12:22:10.921085',2,1),('56f15137ee3c4699bbb10028c8ed24f5','???',1,'2020-06-04 17:27:11.326051',4,2),('590f55ba3cee4c7a8a5f08a60239a066','?',1,'2020-06-04 12:26:26.065947',5,1),('5cb29cbf5f17440596aa51326889811f','asd?',1,'2020-06-04 12:28:45.492118',5,1),('5df98e220ea1486ebccf58ff11c029f3','how r u',1,'2020-06-07 16:06:50.640792',4,2),('61225f7ff3e242f6a9e4fa6c105f49da','aaaaa',1,'2020-06-03 17:50:57.283169',1,5),('634def0682f84520869c90727c76753f','c',1,'2020-06-04 12:22:59.381352',5,1),('66630ea6225842e481cf4a4c775b375b','understance',1,'2020-06-04 12:20:44.488627',5,1),('6d4d10ae0acc468b8a16d5f3432cf43b','really.',1,'2020-06-06 12:45:41.958139',3,2),('704b4e65485c477fa6682f422d1a10ce','??',1,'2020-06-04 12:25:47.177789',5,1),('73269a97e654436a9712304f51b37f3b','asd',1,'2020-06-04 12:27:12.605138',5,1),('73edd5f9afa5453084dab20f3a190f8e','asdsad',1,'2020-06-04 12:26:02.237222',5,1),('7a2fb64c22384d5da36c7399db272b46','aaa',1,'2020-06-04 17:21:21.316559',3,2),('7aa7ee9025c94ac092b768e5a59a255b','bbbb',1,'2020-06-04 12:20:17.107281',5,1),('84c7ca355c5a462fab88b2fd623897b1','wtf',1,'2020-06-04 17:27:10.101011',4,2),('8d35fdc6cbfa4be38822a7056f5eff05','???',1,'2020-06-07 16:06:39.058816',4,2),('8df516252708402fb04e29036e38451c','k',1,'2020-06-04 12:20:51.830859',5,1),('929a50b0af7d405aa02daeb90bf6dd42','aaaaa',1,'2020-06-03 17:50:45.728498',1,5),('92a1ca166322429398de50e813548944','a',1,'2020-06-04 12:28:40.857087',5,1),('9fd9d193a5c346e4a27c0e832eab25ea','asd',1,'2020-06-04 12:27:46.396650',5,1),('a680a74edacc43c0a74ca5d9e6227efe','what do you want',1,'2020-06-07 16:32:10.489067',2,4),('a970fec2f2624f2c961682f3aead59b0','....',1,'2020-06-04 17:27:23.806823',4,2),('acba9699fb584296a2fa4cd13e332143','hi',1,'2020-06-07 16:31:52.779979',4,2),('b53783dd01f44164b82745268c09a980','????',1,'2020-06-04 17:21:35.153396',3,2),('beac386a4d43407a976613394c6a7fc1','???',1,'2020-06-04 12:20:30.545668',5,1),('c72e2cb63e1243be962cf8554aad1f09','what???',1,'2020-06-06 11:33:02.435970',4,2),('cdc49bf2d9df4545a50815726a94d538','asd',1,'2020-06-04 17:15:15.144119',1,2),('da707a7460554ab1b62360a928b42f61','a',1,'2020-06-04 12:26:21.733908',5,1),('e97a13dedf8145e5b2e518fa439ec429','Idon',1,'2020-06-04 12:20:41.795816',5,1),('f8edf07c45df46c6891206d383cd51b9','I dont understand...',1,'2020-06-06 12:45:40.669239',3,2);
/*!40000 ALTER TABLE `messenger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `uuid_id` char(32) NOT NULL,
  `content` longtext NOT NULL,
  `reply` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `parent_id` char(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid_id`),
  KEY `news_news_parent_id_75889a2e_fk_news_news_uuid_id` (`parent_id`),
  KEY `news_news_user_id_c92f5aac_fk_users_user_id` (`user_id`),
  KEY `news_news_created_at_53577fbf` (`created_at`),
  CONSTRAINT `news_news_parent_id_75889a2e_fk_news_news_uuid_id` FOREIGN KEY (`parent_id`) REFERENCES `news_news` (`uuid_id`),
  CONSTRAINT `news_news_user_id_c92f5aac_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES ('26005d2f61bb474ea8628a764612fd62','Here\'s a good payment option for those who want a long-term #investments plan',0,'2020-05-30 08:46:49.961071','2020-06-14 07:48:49.597510',NULL,2),('29cda3cd75ba44d4b811837642ca50bf','To hunt deals you need to be an animal.\r\n\r\nMorgan Stanley\'s top technology investment banker, Michael Grimes knew Uber was huge and one day they would list on the stock market. \r\n\r\nHe wanted a role on the IPO badly so he drove an Uber for YEARS. His banking salary was a few million.',0,'2020-05-30 08:46:24.601113','2020-06-11 12:25:33.386133',NULL,1),('349bac7f082b48eaa174ec942e33cd82','mmm',1,'2020-06-02 13:58:32.708153','2020-06-02 13:58:32.708190','b42a3d950e9c4e81b065fc182bf56579',1),('370f3ebaea174384a32b72466f0e176f','how r u',1,'2020-06-07 10:48:03.229696','2020-06-07 10:48:03.229741','c6b444575bae4dbf9156cda1eb2a093d',2),('4596231bfbe744a68cd68001fe7df11f','...',1,'2020-06-07 11:01:00.066392','2020-06-07 11:01:00.066432','4a1aa982a75643c0ab29923a4fad87d1',2),('4a1aa982a75643c0ab29923a4fad87d1','The Federal Government has issued the N150 billion Sukuk. With this investment, you are assured of returns of 11.20% per annum.\r\n\r\nCall our investment experts to learn more +2349087937417, +2347008252265',0,'2020-05-30 08:46:15.515369','2020-06-07 15:53:42.917734',NULL,4),('4c66b8bec1da4e068725dedda92a39e3','....',1,'2020-06-14 04:53:26.128315','2020-06-14 04:53:26.128354','29cda3cd75ba44d4b811837642ca50bf',2),('5073839478f44bd78110c8078f1c8b7e','...',1,'2020-06-07 11:01:08.928002','2020-06-07 11:01:08.928037','b0c8b42fa9984fce8388fd2417a41280',2),('5724f33760184467acb043f1d0962e4a','Proper movement.  Not investment advice.',0,'2020-05-30 08:43:20.755858','2020-05-30 08:43:20.755898',NULL,4),('59aefd89e4c84e77b06abdb792af2920','I DONT get this',1,'2020-06-04 16:05:31.305701','2020-06-04 16:05:31.305737','b0c8b42fa9984fce8388fd2417a41280',2),('97a3a28e87e647b9bcc956cb9dcb5a43','aaa',1,'2020-06-01 14:34:55.369527','2020-06-01 14:34:55.369562','b42a3d950e9c4e81b065fc182bf56579',1),('992e32efb9664f868b7fc91c7ab9b2a2','ATLANTA — GLASS WINDOWS SMASHED AT CNN GLOBAL HEADQUARTERS.\r\n\r\nYOU REAP WHAT YOU SOW.',0,'2020-05-30 08:46:06.030919','2020-05-30 08:46:06.030955',NULL,2),('b0c8b42fa9984fce8388fd2417a41280','SAUDI PETRODOLLARS: Saudi Arabia transfers $40 billion from the country’s central bank FX reserves into the sovereign wealth as it went on an investment spree seeking to take advantage of recent market turmoil | #OOTT #SaudiArabia',0,'2020-05-30 08:45:40.237760','2020-06-13 12:23:43.974189',NULL,1),('b42a3d950e9c4e81b065fc182bf56579','I wonder if I set up a company, created a fund, found investment, figured out manufacturing and started making a smartphone In India. How many would actually buy ? #MakeinIndia',0,'2020-05-30 08:12:06.442958','2020-05-30 08:12:06.442992',NULL,2),('bb2e2e2128b54baab748af37986522e6','so what?',1,'2020-06-11 14:48:38.905373','2020-06-11 14:48:38.905410','26005d2f61bb474ea8628a764612fd62',2),('be3e67ce09a84d23a88669b31861b9bf','???',1,'2020-06-07 10:41:21.018526','2020-06-07 10:41:21.018561','c6b444575bae4dbf9156cda1eb2a093d',2),('c0fa01a5e6ff4cb79426dbb812cdf9c0','ggggg',1,'2020-06-01 14:40:39.666103','2020-06-01 14:40:39.666138','b42a3d950e9c4e81b065fc182bf56579',1),('c1191fe98c664d42b62c64f8147b74f2','aaaa',1,'2020-06-07 10:42:28.684645','2020-06-07 10:42:28.684687','c6b444575bae4dbf9156cda1eb2a093d',2),('c6b444575bae4dbf9156cda1eb2a093d','Lulu, Adani group investments were withdrawn from Vizag because of Jagan Reddy. The Metro rail project was scrapped. They made allegations on Medtech zone when in oppostion. Now the Medtech Zone is providing the corona test kits across India.\r\n#1YearOfMassDestruction',0,'2020-05-30 08:46:38.543703','2020-06-07 15:51:46.977427',NULL,4),('f153de2018ad427294a1621c79e472f6','aaaa',1,'2020-06-07 10:46:15.548899','2020-06-07 10:46:15.548941','c6b444575bae4dbf9156cda1eb2a093d',2),('ffe91d31f9ef4412908752466f36b15f','so what',1,'2020-06-07 10:40:57.063220','2020-06-07 10:40:57.063257','c6b444575bae4dbf9156cda1eb2a093d',2);
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news_liked`
--

DROP TABLE IF EXISTS `news_news_liked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news_liked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_news_liked_news_id_user_id_defbf984_uniq` (`news_id`,`user_id`),
  KEY `news_news_liked_user_id_66d1fc4c_fk_users_user_id` (`user_id`),
  CONSTRAINT `news_news_liked_news_id_a9c7d3bf_fk_news_news_uuid_id` FOREIGN KEY (`news_id`) REFERENCES `news_news` (`uuid_id`),
  CONSTRAINT `news_news_liked_user_id_66d1fc4c_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news_liked`
--

LOCK TABLES `news_news_liked` WRITE;
/*!40000 ALTER TABLE `news_news_liked` DISABLE KEYS */;
INSERT INTO `news_news_liked` VALUES (65,'26005d2f61bb474ea8628a764612fd62',1),(66,'26005d2f61bb474ea8628a764612fd62',2),(48,'26005d2f61bb474ea8628a764612fd62',4),(43,'c6b444575bae4dbf9156cda1eb2a093d',2);
/*!40000 ALTER TABLE `news_news_liked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_notification`
--

DROP TABLE IF EXISTS `notifications_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_notification` (
  `uuid_id` char(32) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `slug` varchar(80) DEFAULT NULL,
  `verb` varchar(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `object_id` varchar(255) DEFAULT NULL,
  `actor_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid_id`),
  KEY `notifications_notification_actor_id_ec6170c3_fk_users_user_id` (`actor_id`),
  KEY `notifications_notifi_content_type_id_74ab3a2c_fk_django_co` (`content_type_id`),
  KEY `notifications_notifi_recipient_id_d055f3f0_fk_users_use` (`recipient_id`),
  KEY `notifications_notification_slug_c75bc22e` (`slug`),
  KEY `notifications_notification_created_at_10160fdd` (`created_at`),
  CONSTRAINT `notifications_notifi_content_type_id_74ab3a2c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_recipient_id_d055f3f0_fk_users_use` FOREIGN KEY (`recipient_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `notifications_notification_actor_id_ec6170c3_fk_users_user_id` FOREIGN KEY (`actor_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_notification`
--

LOCK TABLES `notifications_notification` WRITE;
/*!40000 ALTER TABLE `notifications_notification` DISABLE KEYS */;
INSERT INTO `notifications_notification` VALUES ('09814ae705344552901145db6f2a7989',0,'root-09814ae7-0534-4552-9011-45db6f2a7989-l','L','2020-06-07 15:14:54.708568','2020-06-07 17:07:07.076919','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('0a0b8e6d29814404b03318c32724ea47',1,'root-0a0b8e6d-2981-4404-b033-18c32724ea47-c','C','2020-06-11 13:16:01.151619','2020-06-11 13:16:01.151650','20',2,9,1),('0ec0896dd0d0493eaa06411add543b6a',0,'tesla-bro-0ec0896d-d0d0-493e-aa06-411add543b6a-r','R','2020-06-11 14:48:57.497079','2020-06-11 16:12:12.440395','8010174a-e104-4e3c-afe6-019e32868061',1,6,2),('14f0ae59c3804d0b922769759269899d',0,'tesla-bro-14f0ae59-c380-4d0b-9227-69759269899d-l','L','2020-06-07 17:14:37.874793','2020-06-07 17:14:42.340401','95b77f71-4e0c-4285-bfdc-ef9818ca040d',1,6,2),('1d9851e331894d009f2c20ba17562b2e',0,'tesla-bro-1d9851e3-3189-4d00-9f2c-20ba17562b2e-l','L','2020-06-10 13:33:20.154363','2020-06-10 13:42:02.912522','ac93257f-797e-470c-8c8a-28c428dff9d5',1,6,2),('2637b8812edf4865b3fa3c0a9cb3864d',0,'richard-diamond-2637b881-2edf-4865-b3fa-3c0a9cb3864d-l','L','2020-06-07 15:52:03.546556','2020-06-07 17:03:56.385192','4a1aa982-a756-43c0-ab29-923a4fad87d1',2,6,4),('2c19bf0347a848c5a0cd5443749d0d2c',0,'root-2c19bf03-47a8-48c5-a0cd-5443749d0d2c-l','L','2020-06-07 15:51:53.668971','2020-06-07 17:07:06.994769','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('319f2ecad4394bae830eddfa15e79166',0,'richard-diamond-319f2eca-d439-4bae-830e-ddfa15e79166-l','L','2020-06-07 15:51:03.597565','2020-06-07 17:03:56.389829','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('354ed6b01c8845babd91919a70fb9156',0,'root-354ed6b0-1c88-45ba-bd91-919a70fb9156-l','L','2020-06-07 15:51:59.682756','2020-06-07 17:07:06.991517','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('399b363573dc4b99be7cc13abbdb80c0',1,'root-399b3635-73dc-4b99-be7c-c13abbdb80c0-a','A','2020-06-11 13:31:27.955179','2020-06-11 13:31:27.955214','3',2,10,1),('3a8e87ed810e4656b2de3e3f2d85c036',1,'root-3a8e87ed-810e-4656-b2de-3e3f2d85c036-c','C','2020-06-11 13:27:19.864364','2020-06-11 13:27:19.864392','20',2,9,1),('3d0b07d3f2ad49e2a19614f075614d78',0,'richard-diamond-3d0b07d3-f2ad-49e2-a196-14f075614d78-l','L','2020-06-07 15:19:01.931324','2020-06-07 17:03:56.473193','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('44dd6ce58b3c420db789495b60dc2dec',0,'richard-diamond-44dd6ce5-8b3c-420d-b789-495b60dc2dec-l','L','2020-06-07 13:51:04.575132','2020-06-07 17:03:56.476959','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('4bcc7aa013c7454cb16651e2a27d6a77',0,'root-4bcc7aa0-13c7-454c-b166-51e2a27d6a77-c','C','2020-06-07 13:56:05.388777','2020-06-07 17:07:07.050758','20',2,9,1),('4d1949cba5544a93ba980a0447e906b4',1,'root-4d1949cb-a554-4a93-ba98-0a0447e906b4-r','R','2020-06-14 04:53:26.697909','2020-06-14 04:53:26.697948','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('56517387b05c4d77870913a2a475021b',0,'tesla-bro-56517387-b05c-4d77-8709-13a2a475021b-l','L','2020-06-07 17:08:05.530296','2020-06-07 17:14:42.337361','95b77f71-4e0c-4285-bfdc-ef9818ca040d',1,6,2),('57e14d0737e642238233c5b0cc343dc9',0,'tesla-bro-57e14d07-37e6-4223-8233-c5b0cc343dc9-r','R','2020-06-11 16:09:54.502883','2020-06-11 16:12:12.437027','8010174a-e104-4e3c-afe6-019e32868061',1,6,2),('59a1e5b49016441b98bbaf95f8b4baaf',1,'root-59a1e5b4-9016-441b-98bb-af95f8b4baaf-c','C','2020-06-11 13:15:48.577389','2020-06-11 13:15:48.577419','20',2,9,1),('674300519abb475a8894a7fb0b9dd451',0,'tesla-bro-67430051-9abb-475a-8894-a7fb0b9dd451-l','L','2020-06-11 14:48:29.006884','2020-06-11 16:12:12.462188','26005d2f-61bb-474e-a862-8a764612fd62',1,6,2),('6f2a629776834511866a80f59060f8e3',0,'richard-diamond-6f2a6297-7683-4511-866a-80f59060f8e3-l','L','2020-06-07 15:14:44.128894','2020-06-07 17:03:56.481363','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('7841cf0a27bf4921b29b6ce0a5a42235',0,'richard-diamond-7841cf0a-27bf-4921-b29b-6ce0a5a42235-l','L','2020-06-07 15:53:43.058081','2020-06-07 17:03:56.383713','4a1aa982-a756-43c0-ab29-923a4fad87d1',2,6,4),('7e643369aeaa4704ac12119f582ec391',1,'root-7e643369-aeaa-4704-ac12-119f582ec391-c','C','2020-06-11 13:13:50.150772','2020-06-11 13:13:50.150803','20',2,9,1),('81440c3ff8814f8cb24acc81f4628e2c',0,'tesla-bro-81440c3f-f881-4f8c-b24a-cc81f4628e2c-l','L','2020-06-07 17:14:27.989314','2020-06-07 17:30:05.194481','95b77f71-4e0c-4285-bfdc-ef9818ca040d',1,6,2),('8379bc310ef24a658042aadd7db0c7ff',0,'tesla-bro-8379bc31-0ef2-4a65-8042-aadd7db0c7ff-l','L','2020-06-10 13:42:09.476989','2020-06-10 17:51:16.415522','8e99a2bf-e7f1-41d2-a0f3-d83029fc3196',1,6,2),('8fbf699e76c94cea89969e399c6db18d',1,'root-8fbf699e-76c9-4cea-8996-9e399c6db18d-c','C','2020-06-11 13:16:47.011062','2020-06-11 13:16:47.011115','20',2,9,1),('90dd98ad0bf843c59d0163f625499418',1,'root-90dd98ad-0bf8-43c5-9d01-63f625499418-l','L','2020-06-13 12:23:42.755783','2020-06-13 12:23:42.755814','b0c8b42f-a998-4fce-8388-fd2417a41280',2,6,1),('910cd8602906415d8f396f9fe42e11a8',0,'root-910cd860-2906-415d-8f39-6f9fe42e11a8-r','R','2020-06-07 11:01:08.979736','2020-06-07 17:07:07.090850','b0c8b42f-a998-4fce-8388-fd2417a41280',2,6,1),('93b3182292d34581b61fe6c34605e48c',0,'root-93b31822-92d3-4581-b61f-e6c34605e48c-l','L','2020-06-07 11:01:13.142080','2020-06-07 17:07:07.078751','b0c8b42f-a998-4fce-8388-fd2417a41280',2,6,1),('9699548b85c04c3fb9567b7b065aef02',0,'richard-diamond-9699548b-85c0-4c3f-b956-7b7b065aef02-l','L','2020-06-07 15:19:23.636523','2020-06-07 17:03:56.380527','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('96f25df3c50e4a17831d2604b4f3a20d',0,'tesla-bro-96f25df3-c50e-4a17-831d-2604b4f3a20d-l','L','2020-06-11 14:48:20.402339','2020-06-11 14:48:22.959128','8010174a-e104-4e3c-afe6-019e32868061',1,6,2),('98ed7288499a4d54b7c0c6c9b1cd912a',0,'richard-diamond-98ed7288-499a-4d54-b7c0-c6c9b1cd912a-l','L','2020-06-07 13:51:05.540105','2020-06-07 17:03:56.474861','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('a5748aa03bcc4aa98bd4e367313993c7',0,'root-a5748aa0-3bcc-4aa9-8bd4-e367313993c7-a','A','2020-06-07 11:14:38.437427','2020-06-07 17:07:07.075377','3',2,10,1),('a823a11bb52544a39e5d8d037b54872d',0,'root-a823a11b-b525-44a3-9e5d-8d037b54872d-l','L','2020-06-07 17:06:42.282998','2020-06-07 17:07:06.993254','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('ab12f7382e3b4db18a7b7196cbf489df',0,'tesla-bro-ab12f738-2e3b-4db1-8a7b-7196cbf489df-l','L','2020-06-07 17:09:59.615594','2020-06-07 17:14:42.338907','95b77f71-4e0c-4285-bfdc-ef9818ca040d',1,6,2),('aba793cd7fe3461d836d937476bd93de',1,'root-aba793cd-7fe3-461d-836d-937476bd93de-a','A','2020-06-11 13:33:50.313469','2020-06-11 13:33:50.313499','3',2,10,1),('b25ce9c54b0144f9b93f03f5cbe003ec',0,'richard-diamond-b25ce9c5-4b01-44f9-b93f-03f5cbe003ec-l','L','2020-06-07 15:20:03.236938','2020-06-07 17:03:56.382239','c6b44457-5bae-4dbf-9156-cda1eb2a093d',2,6,4),('d0569df603014e1d9d1cb3f9570691f0',0,'richard-diamond-d0569df6-0301-4e1d-9d1c-b3f9570691f0-r','R','2020-06-07 11:01:00.218617','2020-06-07 17:03:56.483237','4a1aa982-a756-43c0-ab29-923a4fad87d1',2,6,4),('d18d8ae4269e45b296a605f3ac263153',0,'tesla-bro-d18d8ae4-269e-45b2-96a6-05f3ac263153-l','L','2020-06-07 17:08:22.014617','2020-06-07 17:14:42.341832','95b77f71-4e0c-4285-bfdc-ef9818ca040d',1,6,2),('e52c78d5f16146b3a1f0722bbccef64d',0,'tesla-bro-e52c78d5-f161-46b3-a1f0-722bbccef64d-r','R','2020-06-11 15:42:01.046068','2020-06-11 16:12:12.435234','8010174a-e104-4e3c-afe6-019e32868061',1,6,2),('eaf3f18178a3489980ddfec678596203',1,'root-eaf3f181-78a3-4899-80dd-fec678596203-l','L','2020-06-11 12:25:33.256289','2020-06-11 12:25:33.256319','29cda3cd-75ba-44d4-b811-837642ca50bf',2,6,1),('ed7b8814801343f7b75b0921c8139ff2',0,'tesla-bro-ed7b8814-8013-43f7-b75b-0921c8139ff2-l','L','2020-06-10 13:41:55.814197','2020-06-10 13:42:02.910910','8e99a2bf-e7f1-41d2-a0f3-d83029fc3196',1,6,2),('f098ade5144e4c65b2ea9dd337a502b1',0,'tesla-bro-f098ade5-144e-4c65-b2ea-9dd337a502b1-r','R','2020-06-11 16:10:07.328752','2020-06-11 16:12:12.438803','8010174a-e104-4e3c-afe6-019e32868061',1,6,2),('f186c741ccd24c8baa65ce9f0371d251',1,'root-f186c741-ccd2-4c8b-aa65-ce9f0371d251-c','C','2020-06-09 12:47:37.078495','2020-06-09 12:47:37.078526','20',2,9,1),('f5e34ecc304545f49559b404d8745303',0,'tesla-bro-f5e34ecc-3045-45f4-9559-b404d8745303-r','R','2020-06-11 15:42:06.561793','2020-06-11 16:12:12.412808','8010174a-e104-4e3c-afe6-019e32868061',1,6,2);
/*!40000 ALTER TABLE `notifications_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_answer`
--

DROP TABLE IF EXISTS `qa_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_answer` (
  `uuid_id` char(32) NOT NULL,
  `content` longtext NOT NULL,
  `is_answer` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`uuid_id`),
  KEY `qa_answer_user_id_9516f19e_fk_users_user_id` (`user_id`),
  KEY `qa_answer_created_at_52839e78` (`created_at`),
  KEY `qa_answer_question_id_afdc507a_fk_qa_question_id` (`question_id`),
  CONSTRAINT `qa_answer_question_id_afdc507a_fk_qa_question_id` FOREIGN KEY (`question_id`) REFERENCES `qa_question` (`id`),
  CONSTRAINT `qa_answer_user_id_9516f19e_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_answer`
--

LOCK TABLES `qa_answer` WRITE;
/*!40000 ALTER TABLE `qa_answer` DISABLE KEYS */;
INSERT INTO `qa_answer` VALUES ('1631d8b2aa214efe9010e7686180b56b','<p>\'Non-blocking async I/O\' is just pointless double-talk. I don\'t understand why you think external libraries would be required. They are all ultimately just wrappers over operating system facilities.</p>',1,'2020-05-30 10:30:50.656416','2020-06-02 18:42:42.728785',6,1),('414352ebc28040f2b8c12d3015530eb5','<p>Using GET</p>\n\n<p><code>request.GET[\"id\"]</code></p>\n\n<p>Using POST</p>\n\n<p><code>request.POST[\"id\"]</code></p>',1,'2020-05-30 10:25:52.591325','2020-06-03 11:27:53.928222',5,2),('4f90b3be85584343a47425aa49bb7a35','<p><strong>slug</strong></p>\n<p>A short label for something, containing only letters, numbers, underscores or hyphens. They’re generally used in URLs. For example, in a typical blog entry URL:</p>\n<p><a href=\"https://www.djangoproject.com/weblog/2008/apr/12/spring/\">https://www.djangoproject.com/weblog/2008/apr/12/spring/</a> the last bit (spring) is the slug.</p>',0,'2020-05-30 10:20:38.992276','2020-05-30 10:20:38.992341',4,2),('61956f2119b643b4bc33825d7bc8aee4','<p>You understand the terms correctly. As noted, \"non-blocking async IO\" would be redundant. If the underlying I/O mechanism is non-blocking, it doesn\'t need to be async, and vice-versa. Maybe whoever described it that way means it\'s non-blocking because it\'s been made async. (Example: the android-async-http library is an async wrapper around synchronous socket I/O.)</p>',0,'2020-05-30 10:31:01.424925','2020-06-02 18:36:27.031173',6,4),('65267a6577764c969d832e64b65f4313','<p>I would say there are three types of io:</p>\n\n<p><code>synchronous blocking</code></p>\n\n<p><code>synchronous non-blocking</code></p>\n\n<p><code>asynchronous</code></p>\n\n<p>Both synchronous non-blocking and asynchronous would be considered non-blocking as the calling thread is not waiting on the IO to complete. So while non-blocking asynchronous io might be redundant, they are not one in the same. When I open a file I can open it in non-blocking mode. What does this mean? It means when I issue a read() it won\'t block. It will either return me the bytes that are available or indicate that there are no bytes available. If I didn\'t enable non-blocking io the read() would block until data was available. I might want to enable non-blocking io if I want a thread to handle multiple io requests. For instance, I could use select() to find out what file descriptors, or maybe sockets, have data available to read. I then do synchronous reads on those file descriptors. None of those reads should block because I already know data is available, plus I have opened the file descriptors in non-blocking mode.</p>\n\n<p>Asynchronous io is where you issue an io request. That request is queued, and thus doesn\'t block the issuing thread. You are notified when either the request failed or has completed successfully.</p>',0,'2020-05-30 10:31:29.891974','2020-06-02 18:36:13.617867',6,4),('a25c7ea4c94b4a2b89296c209f364c5f','<p>This is not exactly what you asked for, but this <a href=\"http://www.djangosnippets.org/snippets/826/\">snippet</a> is helpful for managing <code>query_strings</code> in templates.</p>',0,'2020-05-30 10:26:58.872089','2020-05-30 10:26:58.872126',5,6),('a3b558ea9a8a4cf5b9f15dd98183c0e0','<p>If you have installed the application:</p>\n<p><code>$ django-admin.py version</code><br/>\n<code>$ 2.0</code></p>',0,'2020-05-30 10:14:35.942822','2020-05-30 10:14:35.942860',3,6),('a88f6df083ba4c679e41a00080621ee4','<p>For situations where you only have the request object you can use request.parser_context[\'kwargs\'][\'your_param\']</p>',0,'2020-05-30 10:26:28.432520','2020-05-30 10:26:28.432586',5,4),('bc15bed4819e486e9ef98ca163b3bd2e','<p>Django 1.5 supports Python 2.6.5 and later.</p>\n<p>If you\'re under Linux and want to check the Python version you\'re using, run python -V from the command line.</p>\n<p>If you want to check the Django version, open a Python console and type</p>\n<code>import django</code><br/>\n<code>django.VERSION</code>',0,'2020-05-30 10:02:49.090090','2020-05-30 10:02:49.090128',3,2),('cd8fc07bde774ece837dfbad23331305','<p>Shortest way - <code>python3 -m django --version</code></p>',0,'2020-05-30 10:02:20.843822','2020-05-30 10:02:20.843858',3,1),('f3dbff3a8c9c474c92c41774b30ba70f','<p>From <a href=\"http://jeffcroft.com/blog/2006/may/02/django-non-programmers/\">here</a>.</p>\n\n<blockquote>\n<p>“Slug” is a newspaper term, but what it means here is the final bit of the URL. For example, a post with the title, “A bit about Django” would become, “bit-about-django” automatically (you can, of course, change it easily if you don’t like the auto-generated slug).</p>\n</blockquote>',1,'2020-05-30 10:20:04.855742','2020-06-05 16:52:35.475252',4,4);
/*!40000 ALTER TABLE `qa_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_question`
--

DROP TABLE IF EXISTS `qa_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(80) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `qa_question_user_id_7f842fa9_fk_users_user_id` (`user_id`),
  KEY `qa_question_slug_4f8bc6ed` (`slug`),
  KEY `qa_question_created_at_2abef2c8` (`created_at`),
  CONSTRAINT `qa_question_user_id_7f842fa9_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_question`
--

LOCK TABLES `qa_question` WRITE;
/*!40000 ALTER TABLE `qa_question` DISABLE KEYS */;
INSERT INTO `qa_question` VALUES (3,'How to check Django version','how-to-check-django-version','<p>have to use <a href=\"http://en.wikipedia.org/wiki/Python_%28programming_language%29\">Python</a> and <a href=\"http://en.wikipedia.org/wiki/Django_%28web_framework%29\">Django</a> for our application. So I have two versions of Python, 2.6 and 2.7. <br/><br/>Now I have installed Django. <br/>I could run the sample application for testing Django succesfuly.<br/> <br/>But how do I make sure whether Django uses the 2.6 or 2.7 version and what version of modules Django uses?</p>','2020-05-30 09:45:56.061836','2020-05-30 09:45:56.061879',1),(4,'What is a “slug” in Django?','what-is-a-slug-in-django','<p>When I read Django code I often see in models what is called a \"slug\". I am not quite sure what this is, but I do know it has something to do with URLs. How and when is this slug-thing supposed to be used?</p>\n<p>(I have read its definition in this <a href=\"http://docs.djangoproject.com/en/dev/glossary/\">glossary</a>.)</p>','2020-05-30 10:19:17.268924','2020-05-30 10:19:17.268973',5),(5,'Capturing url parameters in request.GET','capturing-url-parameters-in-request-get','I am currently defining regular expressions in order to capture parameters in a url, as described in the tutorial. How do I access parameters from the url as part the <code>HttpRequest</code> object? My <code>HttpRequest.GET</code> currently returns an empty <code>QueryDict</code> object.</p>\n<p>I\'d like to learn how to do this without a library so I can get to know Django better.</p>','2020-05-30 10:23:00.033612','2020-05-30 10:23:00.033650',5),(6,'non-blocking IO vs async IO and implementation in Java','non-blocking-io-vs-async-io-and-implementation-in-java','<p>Trying to summarize for myself the difference between these 2 concepts (because I\'m really confused when I see people are using both of them in one sentence, like \"non-blocking async IO\" which I\'m trying to figure out what does it mean).</p>\n<p>So, in my understanding non-blocking IO is primary the OS mechanism to process the IO if there is any data ready, otherwise just return error/do nothing.</p>\n<p>In async IO you just provide a callback, and your application will be notified when the data is available.</p>\n<p>So what is actually \"non-blocking async IO\"? And how all them can be implemented in Java (standard JDK, without external libs, I know there are <code>java.nio.channels.{Channels, Selector, SelectorKey}</code> and <code>java.nio.channels.{AsynchronousSocketChannel})</code>: non-blocking IO, async IO, and non-blocking async IO (if there is such thing)?</p>','2020-05-30 10:30:34.851507','2020-05-30 10:30:34.851545',5);
/*!40000 ALTER TABLE `qa_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_vote`
--

DROP TABLE IF EXISTS `qa_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_vote` (
  `uuid_id` char(32) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `object_id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`uuid_id`),
  UNIQUE KEY `qa_vote_user_id_content_type_id_object_id_69cbd789_uniq` (`user_id`,`content_type_id`,`object_id`),
  KEY `qa_vote_content_type_id_object_id_1cbf8066_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `qa_vote_content_type_id_d3264eb9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `qa_vote_user_id_0d17b126_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_vote`
--

LOCK TABLES `qa_vote` WRITE;
/*!40000 ALTER TABLE `qa_vote` DISABLE KEYS */;
INSERT INTO `qa_vote` VALUES ('0b67415f77494cd491d73c343a4eea6e',1,'6','2020-06-06 11:31:29.050774','2020-06-06 11:31:29.050813',10,2),('4a939265b60e485daae7e3e067442f6b',0,'9','2020-06-07 10:31:47.256882','2020-06-07 10:31:47.256916',10,2),('5fa0f704c96e4b688dbfb09a3d2d1dd9',1,'6','2020-06-13 17:26:29.925856','2020-06-13 17:26:29.925908',10,1),('6be673b5bf1841518fc5384e4f6d27c0',1,'f3dbff3a8c9c474c92c41774b30ba70f','2020-06-05 16:56:25.666188','2020-06-05 17:25:46.207060',11,1),('7c4d4c9e9a6a4729a9cf0294cbc6dbfe',1,'2d7bbcb3-3e8a-4694-98df-d8927d312a8e','2020-06-06 11:30:23.212707','2020-06-06 11:30:23.212743',11,2),('949078aa05d2488191881a73e42f492c',0,'1631d8b2-aa21-4efe-9010-e7686180b56b','2020-06-13 17:26:31.308195','2020-06-13 17:26:31.308237',11,1),('a63d576ff85149c1a903a1fb76be8be4',0,'082b9e83-12e8-47aa-afc6-9ca443dd50a4','2020-06-06 11:30:23.975770','2020-06-06 11:30:23.975804',11,2),('bb7ec3fa72314eb58bc21736fb5b041f',0,'9','2020-06-06 08:23:25.331277','2020-06-06 08:28:42.896392',10,1),('c5a744678e1849fab84a3efb50dbf879',1,'cd8fc07bde774ece837dfbad23331305','2020-06-06 10:50:32.278668','2020-06-06 10:50:32.278702',11,2),('d903c706582f49f2a2e2eebbfa5dc864',1,'e87e9c67-ebe9-4b23-aec2-a0b2ca467889','2020-06-06 11:30:22.232707','2020-06-06 11:30:22.232743',11,2),('ddce4ad3f59a4465866b1e71b43ae60a',1,'61956f21-19b6-43b4-bc33-825d7bc8aee4','2020-06-11 13:27:30.087891','2020-06-11 13:27:33.144140',11,2),('f470c2ab180145b28b9e7493d2b63e46',1,'5','2020-06-05 17:17:57.549302','2020-06-05 17:17:57.549341',10,1);
/*!40000 ALTER TABLE `qa_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_users_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (7,'github','3871037','{\"auth_time\": 1592073959, \"id\": 3871037, \"expires\": null, \"login\": \"ken90242\", \"access_token\": \"728cc48c18c912045c4812845d677f56f3e5105d\", \"token_type\": \"bearer\"}',1),(8,'reddit','iii9e','{\"auth_time\": 1592074024, \"id\": \"iii9e\", \"username\": \"jkl471620\", \"link_karma\": 1, \"comment_karma\": 41, \"refresh_token\": null, \"expires\": 3600, \"access_token\": \"31096562-Jm3ACtppqQYzcthY1M8MQydNyVs\", \"token_type\": \"bearer\"}',1),(9,'stackoverflow','8444003','{\"auth_time\": 1592070526, \"id\": null, \"expires\": \"86402\", \"access_token\": \"bZFZbZmWUqkHRvRkaiPwYg))\", \"token_type\": null}',1),(10,'github','33169876','{\"auth_time\": 1592074704, \"id\": 33169876, \"expires\": null, \"login\": \"r06725028\", \"access_token\": \"663d4329dab4b37868a4aa1132f42b9b0d806d7b\", \"token_type\": \"bearer\"}',10);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (5,'Parents','parents'),(6,'Gaming','gaming'),(7,'Family','family'),(8,'Lessons','lessons'),(9,'Life','life'),(10,'Philosophy','philosophy'),(11,'Self-Improvement','self-improvement'),(12,'Celebrities','celebrities'),(13,'Apologies','apologies'),(14,'Emotions','emotions'),(15,'Success','success'),(16,'Investing','investing'),(17,'Money','money'),(18,'Wealth','wealth'),(19,'Psychology','psychology'),(20,'Techniques','techniques'),(21,'Teenager','teenager'),(22,'Advice','advice'),(23,'Human','human'),(24,'Decision','decision'),(25,'Business','business'),(26,'python','python'),(27,'django','django'),(28,'slug','slug'),(29,'rest','rest'),(30,'url','url'),(31,'java','java'),(32,'asynchronous','asynchronous'),(33,'nonblocking','nonblocking'),(34,'222','222'),(35,'Lesson','lesson'),(36,'ttt','ttt');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (14,20,9,5),(15,20,9,6),(16,20,9,7),(17,21,9,8),(18,21,9,9),(19,21,9,10),(20,22,9,8),(21,22,9,9),(22,22,9,10),(23,23,9,8),(24,23,9,9),(26,24,9,12),(27,24,9,13),(28,24,9,14),(29,26,9,9),(30,26,9,11),(31,26,9,15),(32,27,9,11),(33,27,9,15),(34,28,9,16),(35,28,9,17),(36,28,9,18),(37,29,9,19),(38,29,9,20),(41,31,9,15),(39,31,9,16),(40,31,9,17),(42,32,9,9),(43,32,9,21),(44,32,9,22),(45,33,9,9),(46,33,9,19),(47,33,9,22),(48,34,9,16),(49,34,9,17),(50,34,9,22),(51,35,9,9),(52,35,9,23),(53,36,9,9),(54,36,9,22),(55,37,9,24),(56,37,9,25),(57,38,9,21),(58,38,9,22),(59,2,10,26),(60,2,10,27),(61,3,10,26),(62,3,10,27),(63,4,10,26),(64,4,10,27),(65,4,10,28),(66,5,10,27),(67,5,10,29),(68,5,10,30),(71,6,10,31),(69,6,10,32),(70,6,10,33),(75,9,10,26);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_articleimage`
--

DROP TABLE IF EXISTS `upload_articleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_articleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_articleimage`
--

LOCK TABLES `upload_articleimage` WRITE;
/*!40000 ALTER TABLE `upload_articleimage` DISABLE KEYS */;
INSERT INTO `upload_articleimage` VALUES (1,'articles_pictures/2020/05/31/main-qimg-2a0668f72be47d94ee7f63444e04ce39.webp'),(2,'articles_pictures/2020/05/31/main-qimg-2a0668f72be47d94ee7f63444e04ce39_M3bLm7r.webp'),(3,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7.png'),(4,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7_4FX7FLR.png'),(5,'articles_pictures/2020/05/31/main-qimg-9847d97d30dc2cefb9791f5d6a783182.jpeg'),(6,'articles_pictures/2020/05/31/main-qimg-2a89da5240cbc1dab909864b21fe6f05.jpeg'),(7,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7.png'),(8,'articles_pictures/2020/05/31/main-qimg-9847d97d30dc2cefb9791f5d6a783182.jpeg'),(9,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7_qrWrhC1.png'),(10,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7_uF8541S.png'),(11,'articles_pictures/2020/05/29/main-qimg-b8dcdf95fb8caf71a90018a1e23b36cc.jpeg'),(12,'articles_pictures/2020/05/29/main-qimg-7e7a1bd06c1d9c8704de5ddff0d0b601_bqdSaNv.jpeg'),(13,'articles_pictures/2020/05/29/main-qimg-849bf304cc96726aa5f936a64f2313ca_V7vQD73.jpeg'),(14,'articles_pictures/2020/05/29/main-qimg-2a89da5240cbc1dab909864b21fe6f05.jpeg'),(15,'articles_pictures/2020/05/29/main-qimg-09fbc421fa4ad60f4045406c4aed35f6.jpeg'),(16,'articles_pictures/2020/05/29/main-qimg-f5cdac2730251d4eda7eeb7e75f1b92b.jpeg'),(17,'articles_pictures/2020/05/29/main-qimg-2a0668f72be47d94ee7f63444e04ce39.webp'),(18,'articles_pictures/2020/05/29/main-qimg-9847d97d30dc2cefb9791f5d6a783182.jpeg'),(19,'articles_pictures/2020/05/29/main-qimg-32de5ed45d8c247e627ecd86d9a0d2a5.png'),(20,'articles_pictures/2020/05/29/main-qimg-3f57af0a0d51e811e1517255a0e73bf7.png'),(21,'articles_pictures/2020/05/29/main-qimg-99c7248f61bf9ed864725c7928954bd2.jpeg'),(22,'articles_pictures/2020/05/29/main-qimg-bf5bdd011a3f9a2c7b8dcc8e7a05519d.jpeg'),(23,'articles_pictures/2020/05/29/main-qimg-5e288684426977bb34ffeb1f5422f74c.jpeg'),(24,'articles_pictures/2020/05/29/main-qimg-7b7a0a5aaa2958a1cd4260ddeabb7aba.jpeg'),(25,'articles_pictures/2020/05/29/main-qimg-bab2fd9bccfd1659428a4ba891222752.jpeg'),(26,'articles_pictures/2020/05/29/main-qimg-1a6c21b44bc7d02dd415dad0cce57157_s9bymi1.jpeg'),(27,'articles_pictures/2020/05/31/main-qimg-bf5bdd011a3f9a2c7b8dcc8e7a05519d.jpeg'),(28,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7_WMy21PO.png'),(39,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7.png'),(40,'articles_pictures/2020/05/31/main-qimg-9847d97d30dc2cefb9791f5d6a783182.jpeg'),(41,'articles_pictures/2020/05/31/main-qimg-2a0668f72be47d94ee7f63444e04ce39.webp'),(42,'articles_pictures/2020/05/31/main-qimg-32de5ed45d8c247e627ecd86d9a0d2a5.png'),(43,'articles_pictures/2020/05/31/main-qimg-3f57af0a0d51e811e1517255a0e73bf7_RwIuyOI.png'),(44,'articles_pictures/2020/05/31/main-qimg-9847d97d30dc2cefb9791f5d6a783182_Dhh2rnn.jpeg'),(45,'articles_pictures/2020/05/31/main-qimg-f5cdac2730251d4eda7eeb7e75f1b92b.jpeg'),(46,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f.jpg'),(47,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_vfdTfaj.jpg'),(48,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_6ZNAwnF.jpg'),(49,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_4zK3vS3.jpg'),(50,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_dt1VBbB.jpg'),(51,'articles_pictures/2020/06/13/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_eGInR6G.jpg');
/*!40000 ALTER TABLE `upload_articleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_userimage`
--

DROP TABLE IF EXISTS `upload_userimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_userimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_userimage`
--

LOCK TABLES `upload_userimage` WRITE;
/*!40000 ALTER TABLE `upload_userimage` DISABLE KEYS */;
INSERT INTO `upload_userimage` VALUES (3,'profile_pics/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_ZGPowTc.jpg'),(4,'profile_pics/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_GVyrVGv.jpg'),(5,'profile_pics/slide-1-638.jpg'),(6,'profile_pics/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_uLN2f8T.jpg'),(7,'profile_pics/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_jEedB8v.jpg'),(8,'profile_pics/61538256_2246740812078884_3562455993692454912_n.jpg'),(9,'profile_pics/media_cache_29_21_2921e284c72c34f3a67f39c07980919f_c1OZwYS.jpg'),(10,'profile_pics/Yu-Chen_Huang.jpg');
/*!40000 ALTER TABLE `upload_userimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `introduction` longtext,
  `picture_id` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `personal_url` varchar(555) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `users_user_picture_id_bb3d2ab6` (`picture_id`),
  CONSTRAINT `users_user_picture_id_bb3d2ab6_fk_upload_userimage_id` FOREIGN KEY (`picture_id`) REFERENCES `upload_userimage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$150000$t66fqTHi30QW$3JHJOuJ81QG+gU69n243lfs7wc9yMaqfxMzQ4ov6Zlo=','2020-06-13 13:51:10.703371',1,'root','','','rot@google.com',1,1,'2020-05-27 13:12:01.594755','mr1','Frontend Engineer','I am lily Huang',10,'Newyork',NULL,NULL,NULL,'2020-05-27 13:12:01.730512','2020-06-13 18:47:04.163868',NULL,NULL),(2,'pbkdf2_sha256$150000$44BQBdmLjZF6$xYwLt4iI8onQuFhzpj/1oFqQ7Ks0j+X2k8DMKx7zv/w=','2020-06-06 09:12:34.255559',1,'vistor','','','tesla_bro@tesla.co',1,1,'2020-05-27 13:12:11.741545','mr2','Frontend Engineer',NULL,NULL,'Seattle',NULL,NULL,NULL,'2020-05-27 13:12:11.878582','2020-06-11 14:45:23.803245',NULL,NULL),(3,'pbkdf2_sha256$150000$mON50O1QNWuv$UfvqAQ6IHj+4X33umle5oN1+tJq6wkyMf6SSSEAnKW4=',NULL,1,'samuel','','','aunt_susan@gmail.com',1,1,'2020-05-27 18:33:28.451103','mr3','Manager',NULL,NULL,'Sandiego',NULL,NULL,NULL,'2020-05-27 18:33:28.586537','2020-05-27 18:33:28.586555',NULL,NULL),(4,'pbkdf2_sha256$150000$Dovro7oOtiAX$MBN8L63WEXK4qp5YK04cZCyoMf3Awu0qjGvKUMJwiV4=',NULL,1,'richard','','','richard_diamond@trendmicro.com',1,1,'2020-05-27 18:35:51.149684',NULL,'Product Manager',NULL,NULL,'Silicon Valley',NULL,NULL,NULL,'2020-05-27 18:35:51.285757','2020-05-27 18:35:51.285776',NULL,NULL),(5,'pbkdf2_sha256$150000$IRhLXQKbM7oB$KYP8N5i0/7AMdzfGJJEbJKoDX5SRgSOTPY2u6Zah9hQ=',NULL,1,'quina','','','questioner@nccu.edu.tw',1,1,'2020-05-27 18:39:33.752943',NULL,'Student',NULL,NULL,'Santa Clara',NULL,NULL,NULL,'2020-05-27 18:39:33.887628','2020-05-27 18:39:33.887646',NULL,NULL),(6,'pbkdf2_sha256$150000$8QjZqyZIUNYC$sP7pqBIhjOzgvWTsgUegtFNzpqqC+0jaxCimGXF/m58=',NULL,1,'beeman','','','best_student@ntu.edu.tw',1,1,'2020-05-27 18:40:42.749267',NULL,'Student',NULL,NULL,'West Virginia',NULL,NULL,NULL,'2020-05-27 18:40:42.884814','2020-05-27 18:40:42.884846',NULL,NULL),(10,'!NLQU7oO8GyIWKF4t9kiKvKk4Dc7vBRzhrb0p5YZL','2020-06-13 18:58:24.513888',0,'r06725028','','','',0,1,'2020-06-13 18:58:24.404469',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-13 18:58:24.404913','2020-06-13 18:58:24.404936',NULL,NULL);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 17:18:34
