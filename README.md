##Mojo-Ecrawler

 Mojo-Ecrawler(易爬) - A easy html page crawler.
 

## INSTALLATION

To install this module, run the following commands:

	perl Makefile.PL
	make
	make test
	make install

## SYNOPSIS 使用方法
 
   use Mojo::Ecrawler;

   $lurl='http://www.oschina.net';
   $re1="div.TodayNews";#范围特征
   $re2="li a";#内容行特征

   my $pcontent=geturlcontent($lurl);
   my $pcout1=getdiv($pcontent,$re1,$re2);
   print $pcout1;

## Result,抓取oschina资讯部分的实例

    阿里巴巴向 Apache 基金会捐赠移动开发框架 Weex  /news/80036/alibaba-donate-weex-to-apache-foundation
    雅虎第二次大规模数据泄露 超过 10 亿帐户被盗  /news/80033/yahoo-data-leaked-twice
    众包平台上线“店铺”功能，打造用户的服务品牌  https://my.oschina.net/u/3109498/blog/806241
    2016 OSC 源创会年终盛典全部视频奉上，干货满满  https://my.oschina.net/osccreate/blog/805923
    JavaScript 的开源功能插件和框架集锦  https://my.oschina.net/u/2903254/blog/806029
    OSC 高手问答 —— 关于 OpenStack 运维部署  https://www.oschina.net/question/2720166_2213030
    每日一博 | Java 压缩算法性能比较  https://my.oschina.net/OutOfMemory/blog/805427
    协作翻译 | 前端优化：9 个技巧，提高 Web 性能  https://www.oschina.net/translate/front-end-optimization
    码云项目推荐 | 基于 Java 的持久层框架 tangyuan  https://git.oschina.net/xsonorg/tangyuan
    OSS-Fuzz —— Google 模糊测试服务  /p/oss-fuzz
    OSChina 周四乱弹 —— 梦见个女子，不让抱  https://my.oschina.net/xxiaobian/blog/806116
    斯坦福大学 NLP 组开放神经机器翻译代码库  /news/80014/stanford-nlp-open-neural-machine-translation-code
    IBM：今年勒索软件增 60 倍，赎金规模达 10 亿  /news/80010/extortion-software-increased-60-times
    谷歌报复，推出“一键迁移 iPhone 数据到安卓”  /news/80009/iphone-switching-android-eeasier-than-ever
    中国移动首个 NFV 容器开源项目正式立项  /news/79999/first-nfv-container-open-source-project
    Google 推出测试版开源安全工具 OSS-Fuzz  /news/79995/google--launched-open-source-security-tools
    没有 Angular 3 ，Angular 4 计划2017年3月发布  /news/79990/angular-4-plan-to-release-in-march-2017
    Galera 将死 — MySQL Group Replication 发布  /news/79983/galera-will-die-mysql-group-replication-realease
    专访｜从程序员到架构师：交流和分享最能让技术人进步  /news/79974/programmer-to-architects-make-technical-progress
    深圳移动技术年度盛典火热报名中  https://www.oschina.net/event/2211192
    2017 年你应该学习的编程语言、框架和工具  https://my.oschina.net/hardbone/blog/805349
    协作翻译 | Rust vs. C++：性能大比拼  https://www.oschina.net/translate/rust-vs-cpp
    每日一博 | LuaScriptCore 让 Lua 与 iOS 进行交互  https://my.oschina.net/vimfung/blog/805037#comment-list
    码云项目推荐 | 仿 Mina 2.0 网络开发框架 CxxMina  https://git.oschina.net/cxxjava/CxxMina
    Embedding Projector —— 高维数据可视化工具  /p/embedding-projector
    OSChina 周三乱弹 —— 我求婚，你敢答应吗  https://my.oschina.net/xxiaobian/blog/805484
    一封写给 JavaScript 女神的信  /news/79961/a-letter-for-javascript
    安全专家警告停止使用 NetGear 的路由器  /news/79958/security-experts-warn-stop-using-netgear-router
    Cortana 进军物联网界，挑战 Echo 和 Google Home？  /news/79956/cortana-into-the-internet-of-things
    想写出跟知名开源库一样的代码，首先你要知道  https://my.oschina.net/SLambert/blog/805024
    OTP 19.2 发布，Erlang 应用服务器  /news/80038/otp-19-2
    MariaDB Columnstore 1.0.6 GA 发布  /news/80037/mariadb-columnstore-1-0-6-ga
    Visual Studio Code 1.8 发布  /news/80034/visual-studio-code-1-8
    基于 Web 的 Go 语言 IDE - Wide 1.5.2 发布  /news/80031/wide-1-5-2
    AOSuite V2.4 发布，JavaEE 开发套件  /news/80029/aosuite-2-4
    要的就是速度，Angular 4.0.0 beta0 发布  /news/80028/angular-4-0-0-beta-0
    OHSCE_V0.1.25 发布，跨平台高可靠性通信框架  /news/80027/ohsce-v-0-1-25
    BFS-百度文件系统 v0.4.1 发布  /news/80026/bfs-0-4-1
    Element-UI 1.0.7 发布，Vue 2.0 桌面 UI 元素  /news/80018/element-ui-1-0-7
    MyBatis Ignite 1.0.3 发布，MyBatis 缓存插件  /news/80017/mybatis-ignite-1-0-3
    PyCharm 2016.3.1 发布，Python 集成开发环境  /news/80015/pycharm-2016-3-1
    图像处理器 Krita 3.1 发布，正式支持 OSX  /news/80013/krita-3-1
    Privacy Badger 2.0 发布，浏览器隐私插件  /news/80012/privacy-badger-2-0
    Plotly.js 1.21.0 发布，JavaScript 图表库  /news/80011/plotly-js-1-21-0
    Openfire 4.1.0 Beta 发布，即时消息传输平台  /news/80008/openfire-4-1-0-beta
    Qt 5.7.1 发布， C++跨平台界面库  /news/80007/qt-5-7-1
    Redisson 2.7.1 和 3.2.1 发布，Redis 客户端  /news/80006/redisson-2-7-1-and-3-2-1
    Requests 2.12.4 发布，Python 的 HTTP 客户端库  /news/80005/requests-2-12-4
    jQuery EasyUI 1.5.1 发布，用户界面插件集合  /news/80004/jquery-easyuii-1-5-1
    Ember.js 2.10.1 发布，JavaScript 框架  /news/80002/ember-js-2-10-1
    Highlight.js 9.9.0 发布，JavaScript 语法高亮库  /news/80001/highlight-js-9-9-0
    IntelliJ IDEA 2016.3.1 发布，Java 开发工具  /news/79996/intellij-idea-2016-3-1
    DBShop V0.9.3 发布，开源商城系统  /news/79994/dbshop-0-9-3
    lygit 1.0.0 发布，基于 ThinkPHP 的 git 控制系统  /news/79993/lygit-1-0-0
    间隔7年后再更新，Pygame 1.9.2 正式发布  /news/79992/pygame-1-9-2
    Linux 下禅道和 SVN、GIT 集成插件发布  /news/79991/zentao- and-svn-git-plug-ins-release
    Phalcon7 1.2.1 发布，C 开发的 PHP 7 框架  /news/79988/phalcon-1-2-1
    苹果正式发布 macOS Sierra 10.12.2 系统更新  /news/79986/macos-sierra-10-12-2
    Apache Qpid Proton 0.16.0，轻量通信库  /news/79985/apache-qpid-proton-0-16-0
    Proxmox VE 4.4 发布，新 Ceph 仪表盘上线  /news/79984/proxmox-ve-4-4

##SUPPORT AND DOCUMENTATION

After installing, you can find documentation for this module with the
perldoc command.

    perldoc Mojo::Ecrawler

You can also look for information at:

    RT, CPAN's request tracker (report bugs here)
        http://rt.cpan.org/NoAuth/Bugs.html?Dist=Mojo-Ecrawler

    AnnoCPAN, Annotated CPAN documentation
        http://annocpan.org/dist/Mojo-Ecrawler

    CPAN Ratings
        http://cpanratings.perl.org/d/Mojo-Ecrawler

    Search CPAN
        http://search.cpan.org/dist/Mojo-Ecrawler/


##LICENSE AND COPYRIGHT

Copyright (C) 2016 ORANGE

This program is released under the following license: Perl

