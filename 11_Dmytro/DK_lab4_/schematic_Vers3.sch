<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CE" />
        <signal name="DK_C(7:0)" />
        <signal name="XLXN_49(7:0)" />
        <signal name="ZERO" />
        <signal name="ONE" />
        <signal name="XLXN_71(7:0)" />
        <signal name="DK_A(7:0)" />
        <signal name="DK_OUT(7:0)" />
        <signal name="XLXN_9(7:0)" />
        <signal name="DK_B(7:0)" />
        <signal name="XLXN_116(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_117(7:0)" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_115" />
        <signal name="XLXN_124(7:0)" />
        <signal name="C" />
        <signal name="XLXN_74(7:0)" />
        <signal name="XLXN_19(7:0)" />
        <signal name="XLXN_72(7:0)" />
        <signal name="XLXN_21(7:0)" />
        <signal name="DK_D(7:0)" />
        <signal name="XLXN_85(7:0)" />
        <signal name="XLXN_89(7:0)" />
        <signal name="XLXN_25" />
        <signal name="CLR" />
        <signal name="DK_OUT2(7:0)" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="DK_C(7:0)" />
        <port polarity="Input" name="ZERO" />
        <port polarity="Input" name="ONE" />
        <port polarity="Input" name="DK_A(7:0)" />
        <port polarity="Input" name="DK_B(7:0)" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="DK_D(7:0)" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="DK_OUT2(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="DK_Conventer2">
            <timestamp>2016-10-16T16:17:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <blockdef name="adsu8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_41">
            <blockpin signalname="XLXN_115" name="G" />
        </block>
        <block symbolname="DK_Conventer2" name="XLXI_44">
            <blockpin signalname="CLR" name="DK_reset" />
            <blockpin signalname="XLXN_49(7:0)" name="DK_a(7:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="DK_b(7:0)" />
            <blockpin signalname="XLXN_71(7:0)" name="DK_y(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_46">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="DK_A(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_85(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_47">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="DK_B(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_116(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_48">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_74(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_49">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="DK_D(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_72(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_51">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="C" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_124(7:0)" name="D(7:0)" />
            <blockpin signalname="DK_OUT2(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_52">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="DK_OUT(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_117(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="add8" name="XLXI_53">
            <blockpin signalname="XLXN_116(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_117(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_115" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_124(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="adsu8" name="XLXI_56">
            <blockpin signalname="XLXN_72(7:0)" name="A(7:0)" />
            <blockpin signalname="ZERO" name="ADD" />
            <blockpin signalname="XLXN_71(7:0)" name="B(7:0)" />
            <blockpin signalname="ONE" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_74(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="DK_Conventer2" name="XLXI_45">
            <blockpin signalname="CLR" name="DK_reset" />
            <blockpin signalname="XLXN_89(7:0)" name="DK_a(7:0)" />
            <blockpin signalname="XLXN_85(7:0)" name="DK_b(7:0)" />
            <blockpin signalname="DK_OUT(7:0)" name="DK_y(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_55">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="DK_C(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="Q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CE">
            <wire x2="464" y1="224" y2="224" x1="144" />
            <wire x2="464" y1="224" y2="896" x1="464" />
            <wire x2="480" y1="896" y2="896" x1="464" />
            <wire x2="480" y1="896" y2="1248" x1="480" />
            <wire x2="1024" y1="1248" y2="1248" x1="480" />
            <wire x2="1024" y1="1248" y2="1552" x1="1024" />
            <wire x2="1040" y1="1552" y2="1552" x1="1024" />
            <wire x2="1104" y1="1552" y2="1552" x1="1040" />
            <wire x2="1040" y1="1552" y2="2096" x1="1040" />
            <wire x2="1088" y1="2096" y2="2096" x1="1040" />
            <wire x2="1120" y1="2096" y2="2096" x1="1088" />
            <wire x2="1088" y1="2096" y2="2288" x1="1088" />
            <wire x2="2208" y1="2288" y2="2288" x1="1088" />
            <wire x2="1696" y1="1248" y2="1248" x1="1024" />
            <wire x2="560" y1="896" y2="896" x1="480" />
            <wire x2="512" y1="224" y2="224" x1="464" />
            <wire x2="528" y1="224" y2="224" x1="512" />
        </branch>
        <branch name="DK_C(7:0)">
            <wire x2="512" y1="160" y2="160" x1="256" />
            <wire x2="528" y1="160" y2="160" x1="512" />
        </branch>
        <branch name="XLXN_49(7:0)">
            <wire x2="944" y1="160" y2="160" x1="912" />
            <wire x2="944" y1="160" y2="544" x1="944" />
            <wire x2="944" y1="544" y2="608" x1="944" />
            <wire x2="1040" y1="608" y2="608" x1="944" />
            <wire x2="1040" y1="544" y2="544" x1="944" />
        </branch>
        <branch name="ZERO">
            <wire x2="1664" y1="944" y2="944" x1="1648" />
        </branch>
        <branch name="ONE">
            <wire x2="1664" y1="560" y2="560" x1="1632" />
        </branch>
        <branch name="XLXN_71(7:0)">
            <wire x2="1504" y1="480" y2="480" x1="1424" />
            <wire x2="1504" y1="480" y2="816" x1="1504" />
            <wire x2="1664" y1="816" y2="816" x1="1504" />
        </branch>
        <branch name="DK_A(7:0)">
            <wire x2="1104" y1="1488" y2="1488" x1="240" />
        </branch>
        <branch name="DK_OUT(7:0)">
            <wire x2="2128" y1="2096" y2="2224" x1="2128" />
            <wire x2="2208" y1="2224" y2="2224" x1="2128" />
            <wire x2="2544" y1="2096" y2="2096" x1="2128" />
            <wire x2="2544" y1="1680" y2="1680" x1="2528" />
            <wire x2="2544" y1="1680" y2="2096" x1="2544" />
        </branch>
        <branch name="DK_B(7:0)">
            <wire x2="1120" y1="2032" y2="2032" x1="240" />
        </branch>
        <branch name="XLXN_116(7:0)">
            <wire x2="1520" y1="2032" y2="2032" x1="1504" />
            <wire x2="2784" y1="1952" y2="1952" x1="1520" />
            <wire x2="1520" y1="1952" y2="2032" x1="1520" />
        </branch>
        <branch name="XLXN_117(7:0)">
            <wire x2="2608" y1="2224" y2="2224" x1="2592" />
            <wire x2="2784" y1="2080" y2="2080" x1="2608" />
            <wire x2="2608" y1="2080" y2="2224" x1="2608" />
        </branch>
        <branch name="XLXN_115">
            <wire x2="2784" y1="1808" y2="1808" x1="2672" />
            <wire x2="2784" y1="1808" y2="1824" x1="2784" />
            <wire x2="2672" y1="1808" y2="1824" x1="2672" />
        </branch>
        <branch name="XLXN_124(7:0)">
            <wire x2="2720" y1="1104" y2="1312" x1="2720" />
            <wire x2="2784" y1="1312" y2="1312" x1="2720" />
            <wire x2="3472" y1="1104" y2="1104" x1="2720" />
            <wire x2="3472" y1="1104" y2="2016" x1="3472" />
            <wire x2="3472" y1="2016" y2="2016" x1="3232" />
        </branch>
        <branch name="C">
            <wire x2="416" y1="288" y2="288" x1="128" />
            <wire x2="416" y1="288" y2="960" x1="416" />
            <wire x2="544" y1="960" y2="960" x1="416" />
            <wire x2="544" y1="960" y2="1312" x1="544" />
            <wire x2="960" y1="1312" y2="1312" x1="544" />
            <wire x2="1648" y1="1312" y2="1312" x1="960" />
            <wire x2="1648" y1="1312" y2="1440" x1="1648" />
            <wire x2="1648" y1="1440" y2="1616" x1="1648" />
            <wire x2="2032" y1="1616" y2="1616" x1="1648" />
            <wire x2="2208" y1="1440" y2="1440" x1="1648" />
            <wire x2="1696" y1="1312" y2="1312" x1="1648" />
            <wire x2="960" y1="1312" y2="1616" x1="960" />
            <wire x2="992" y1="1616" y2="1616" x1="960" />
            <wire x2="1104" y1="1616" y2="1616" x1="992" />
            <wire x2="992" y1="1616" y2="2160" x1="992" />
            <wire x2="1024" y1="2160" y2="2160" x1="992" />
            <wire x2="1120" y1="2160" y2="2160" x1="1024" />
            <wire x2="1024" y1="2160" y2="2352" x1="1024" />
            <wire x2="2208" y1="2352" y2="2352" x1="1024" />
            <wire x2="560" y1="960" y2="960" x1="544" />
            <wire x2="512" y1="288" y2="288" x1="416" />
            <wire x2="528" y1="288" y2="288" x1="512" />
            <wire x2="2032" y1="1472" y2="1616" x1="2032" />
            <wire x2="2784" y1="1472" y2="1472" x1="2032" />
            <wire x2="2208" y1="1376" y2="1440" x1="2208" />
            <wire x2="2784" y1="1376" y2="1376" x1="2208" />
            <wire x2="2784" y1="1440" y2="1472" x1="2784" />
        </branch>
        <branch name="XLXN_74(7:0)">
            <wire x2="2192" y1="1056" y2="1056" x1="1632" />
            <wire x2="1632" y1="1056" y2="1184" x1="1632" />
            <wire x2="1696" y1="1184" y2="1184" x1="1632" />
            <wire x2="2192" y1="752" y2="752" x1="2112" />
            <wire x2="2192" y1="752" y2="1056" x1="2192" />
        </branch>
        <instance x="2608" y="1952" name="XLXI_41" orien="R0" />
        <branch name="XLXN_72(7:0)">
            <wire x2="1200" y1="832" y2="832" x1="944" />
            <wire x2="1664" y1="688" y2="688" x1="1200" />
            <wire x2="1200" y1="688" y2="832" x1="1200" />
        </branch>
        <branch name="DK_D(7:0)">
            <wire x2="560" y1="832" y2="832" x1="240" />
        </branch>
        <instance x="1040" y="640" name="XLXI_44" orien="R0">
        </instance>
        <branch name="XLXN_85(7:0)">
            <wire x2="1504" y1="1488" y2="1488" x1="1488" />
            <wire x2="1504" y1="1488" y2="1808" x1="1504" />
            <wire x2="2144" y1="1808" y2="1808" x1="1504" />
        </branch>
        <branch name="XLXN_89(7:0)">
            <wire x2="2096" y1="1184" y2="1184" x1="2080" />
            <wire x2="2096" y1="1184" y2="1744" x1="2096" />
            <wire x2="2144" y1="1744" y2="1744" x1="2096" />
        </branch>
        <branch name="CLR">
            <wire x2="352" y1="384" y2="384" x1="160" />
            <wire x2="528" y1="384" y2="384" x1="352" />
            <wire x2="528" y1="384" y2="480" x1="528" />
            <wire x2="1040" y1="480" y2="480" x1="528" />
            <wire x2="352" y1="384" y2="1056" x1="352" />
            <wire x2="560" y1="1056" y2="1056" x1="352" />
            <wire x2="608" y1="1056" y2="1056" x1="560" />
            <wire x2="608" y1="1056" y2="1408" x1="608" />
            <wire x2="880" y1="1408" y2="1408" x1="608" />
            <wire x2="1696" y1="1408" y2="1408" x1="880" />
            <wire x2="880" y1="1408" y2="1712" x1="880" />
            <wire x2="912" y1="1712" y2="1712" x1="880" />
            <wire x2="1104" y1="1712" y2="1712" x1="912" />
            <wire x2="912" y1="1712" y2="2256" x1="912" />
            <wire x2="928" y1="2256" y2="2256" x1="912" />
            <wire x2="1120" y1="2256" y2="2256" x1="928" />
            <wire x2="928" y1="2256" y2="2448" x1="928" />
            <wire x2="1600" y1="2448" y2="2448" x1="928" />
            <wire x2="1856" y1="2448" y2="2448" x1="1600" />
            <wire x2="2208" y1="2448" y2="2448" x1="1856" />
            <wire x2="1600" y1="1680" y2="2448" x1="1600" />
            <wire x2="2144" y1="1680" y2="1680" x1="1600" />
            <wire x2="2784" y1="1536" y2="1536" x1="1856" />
            <wire x2="1856" y1="1536" y2="2448" x1="1856" />
        </branch>
        <instance x="1104" y="1744" name="XLXI_46" orien="R0" />
        <instance x="1120" y="2288" name="XLXI_47" orien="R0" />
        <instance x="1696" y="1440" name="XLXI_48" orien="R0" />
        <instance x="560" y="1088" name="XLXI_49" orien="R0" />
        <branch name="DK_OUT2(7:0)">
            <wire x2="3168" y1="1296" y2="1312" x1="3168" />
            <wire x2="3200" y1="1296" y2="1296" x1="3168" />
        </branch>
        <instance x="2784" y="1568" name="XLXI_51" orien="R0" />
        <instance x="2208" y="2480" name="XLXI_52" orien="R0" />
        <instance x="2784" y="2272" name="XLXI_53" orien="R0" />
        <instance x="1664" y="1008" name="XLXI_56" orien="R0" />
        <iomarker fontsize="28" x="256" y="160" name="DK_C(7:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="224" name="CE" orien="R180" />
        <iomarker fontsize="28" x="128" y="288" name="C" orien="R180" />
        <iomarker fontsize="28" x="240" y="832" name="DK_D(7:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="384" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="1632" y="560" name="ONE" orien="R180" />
        <iomarker fontsize="28" x="1648" y="944" name="ZERO" orien="R180" />
        <iomarker fontsize="28" x="240" y="1488" name="DK_A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="2032" name="DK_B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="3200" y="1296" name="DK_OUT2(7:0)" orien="R0" />
        <instance x="2144" y="1840" name="XLXI_45" orien="R0">
        </instance>
        <instance x="528" y="416" name="XLXI_55" orien="R0" />
    </sheet>
</drawing>