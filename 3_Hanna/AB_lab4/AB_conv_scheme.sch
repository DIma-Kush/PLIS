<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="AB_const_5(7:0)" />
        <signal name="AB_A(7:0)" />
        <signal name="MUL1_A(7:0)" />
        <signal name="MUL1_B(7:0)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="AB_B(7:0)" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="AB_C(7:0)" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="AB_D(7:0)" />
        <signal name="B_stage1(7:0)" />
        <signal name="C_stage1(7:0)" />
        <signal name="D_stage1(7:0)" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="MUL1_OUT(15:0)" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="MUL2_B(15:0)" />
        <signal name="MUL2_A(15:0)" />
        <signal name="XLXN_175" />
        <signal name="XLXN_174" />
        <signal name="MUL3_OUT(15:0)" />
        <signal name="ADD_A(19:0)" />
        <signal name="ADD_B(19:0)" />
        <signal name="ADD_OUT(19:0)" />
        <signal name="CE" />
        <signal name="CLR" />
        <signal name="AB_RES(19:0)" />
        <signal name="XLXN_207(15:0)" />
        <signal name="XLXN_212(7:0)" />
        <signal name="XLXN_213(7:0)" />
        <signal name="MUL2_OUT(19:0)" />
        <signal name="XLXN_193" />
        <signal name="CLK" />
        <signal name="XLXN_211" />
        <signal name="XLXN_209" />
        <signal name="XLXN_235(7:0)" />
        <signal name="XLXN_236(7:0)" />
        <signal name="XLXN_237" />
        <signal name="XLXN_238" />
        <signal name="XLXN_241" />
        <signal name="XLXN_242" />
        <signal name="XLXN_239" />
        <signal name="XLXN_240" />
        <signal name="D_stage2(7:0)" />
        <signal name="MUL3_B(7:0)" />
        <signal name="MUL3_A(7:0)" />
        <signal name="C_stage2(7:0)" />
        <signal name="XLXN_251" />
        <signal name="XLXN_252" />
        <signal name="XLXN_254" />
        <port polarity="Input" name="AB_const_5(7:0)" />
        <port polarity="Input" name="AB_A(7:0)" />
        <port polarity="Input" name="AB_B(7:0)" />
        <port polarity="Input" name="AB_C(7:0)" />
        <port polarity="Input" name="AB_D(7:0)" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="AB_RES(19:0)" />
        <port polarity="Input" name="CLK" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="AB_MUL_8_16">
            <timestamp>2016-11-21T14:59:56</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="BUS_8_16_CONV">
            <timestamp>2016-11-21T15:12:42</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="AB_MUL_16_16">
            <timestamp>2016-11-21T16:14:14</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="AB_register20">
            <timestamp>2016-11-21T16:9:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="BUS_16_20_CONV">
            <timestamp>2016-11-21T16:26:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AB_ADDER_16_32">
            <timestamp>2016-11-21T16:29:46</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="256" y1="112" y2="112" style="linewidth:W" x1="288" />
        </blockdef>
        <block symbolname="fd8ce" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_74" name="CE" />
            <blockpin signalname="XLXN_73" name="CLR" />
            <blockpin signalname="AB_const_5(7:0)" name="D(7:0)" />
            <blockpin signalname="MUL1_A(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_73" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_74" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_12">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_76" name="CE" />
            <blockpin signalname="XLXN_75" name="CLR" />
            <blockpin signalname="AB_A(7:0)" name="D(7:0)" />
            <blockpin signalname="MUL1_B(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_13">
            <blockpin signalname="XLXN_75" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="XLXN_76" name="P" />
        </block>
        <block symbolname="AB_MUL_8_16" name="XLXI_39">
            <blockpin signalname="MUL1_A(7:0)" name="a(7:0)" />
            <blockpin signalname="MUL1_B(7:0)" name="b(7:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL1_OUT(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_15">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_78" name="CE" />
            <blockpin signalname="XLXN_77" name="CLR" />
            <blockpin signalname="AB_B(7:0)" name="D(7:0)" />
            <blockpin signalname="B_stage1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="XLXN_77" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="XLXN_78" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_18">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_80" name="CE" />
            <blockpin signalname="XLXN_79" name="CLR" />
            <blockpin signalname="AB_C(7:0)" name="D(7:0)" />
            <blockpin signalname="C_stage1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_79" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="XLXN_80" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_21">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_82" name="CE" />
            <blockpin signalname="XLXN_81" name="CLR" />
            <blockpin signalname="AB_D(7:0)" name="D(7:0)" />
            <blockpin signalname="D_stage1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_22">
            <blockpin signalname="XLXN_81" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_82" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_76">
            <blockpin signalname="XLXN_138" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_78">
            <blockpin signalname="XLXN_137" name="G" />
        </block>
        <block symbolname="fd16ce" name="XLXI_79">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_138" name="CE" />
            <blockpin signalname="XLXN_137" name="CLR" />
            <blockpin signalname="MUL1_OUT(15:0)" name="D(15:0)" />
            <blockpin signalname="MUL2_A(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_58">
            <blockpin signalname="XLXN_118" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_59">
            <blockpin signalname="XLXN_119" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_60">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_122" name="CE" />
            <blockpin signalname="XLXN_121" name="CLR" />
            <blockpin signalname="C_stage1(7:0)" name="D(7:0)" />
            <blockpin signalname="C_stage2(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_61">
            <blockpin signalname="XLXN_121" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_62">
            <blockpin signalname="XLXN_122" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_63">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_125" name="CE" />
            <blockpin signalname="XLXN_124" name="CLR" />
            <blockpin signalname="D_stage1(7:0)" name="D(7:0)" />
            <blockpin signalname="D_stage2(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_64">
            <blockpin signalname="XLXN_124" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_65">
            <blockpin signalname="XLXN_125" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_66">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_119" name="CE" />
            <blockpin signalname="XLXN_118" name="CLR" />
            <blockpin signalname="B_stage1(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_212(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="BUS_8_16_CONV" name="XLXI_91">
            <blockpin signalname="XLXN_213(7:0)" name="data_in(7:0)" />
            <blockpin signalname="MUL2_B(15:0)" name="data_out(15:0)" />
        </block>
        <block symbolname="AB_MUL_8_16" name="XLXI_104">
            <blockpin signalname="MUL3_A(7:0)" name="a(7:0)" />
            <blockpin signalname="MUL3_B(7:0)" name="b(7:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL3_OUT(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_110">
            <blockpin signalname="XLXN_174" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_109">
            <blockpin signalname="XLXN_175" name="P" />
        </block>
        <block symbolname="fd16ce" name="XLXI_108">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_175" name="CE" />
            <blockpin signalname="XLXN_174" name="CLR" />
            <blockpin signalname="MUL3_OUT(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_207(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="AB_MUL_16_16" name="XLXI_135">
            <blockpin signalname="MUL2_A(15:0)" name="a(15:0)" />
            <blockpin signalname="MUL2_B(15:0)" name="b(15:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL2_OUT(19:0)" name="p(19:0)" />
        </block>
        <block symbolname="AB_register20" name="XLXI_136">
            <blockpin signalname="CE" name="ld" />
            <blockpin signalname="CLR" name="clr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL2_OUT(19:0)" name="d(19:0)" />
            <blockpin signalname="ADD_A(19:0)" name="q(19:0)" />
        </block>
        <block symbolname="AB_register20" name="XLXI_138">
            <blockpin signalname="CE" name="ld" />
            <blockpin signalname="CLR" name="clr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="ADD_OUT(19:0)" name="d(19:0)" />
            <blockpin signalname="AB_RES(19:0)" name="q(19:0)" />
        </block>
        <block symbolname="BUS_16_20_CONV" name="XLXI_139">
            <blockpin signalname="XLXN_207(15:0)" name="in_sig(15:0)" />
            <blockpin signalname="ADD_B(19:0)" name="out_sig(19:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_128">
            <blockpin signalname="XLXN_193" name="P" />
        </block>
        <block symbolname="AB_ADDER_16_32" name="XLXI_141">
            <blockpin signalname="ADD_A(19:0)" name="a(19:0)" />
            <blockpin signalname="ADD_B(19:0)" name="b(19:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_193" name="ce" />
            <blockpin signalname="ADD_OUT(19:0)" name="s(19:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_133">
            <blockpin signalname="XLXN_211" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_134">
            <blockpin signalname="XLXN_209" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_132">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_211" name="CE" />
            <blockpin signalname="XLXN_209" name="CLR" />
            <blockpin signalname="XLXN_212(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_213(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_147">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_242" name="CE" />
            <blockpin signalname="XLXN_241" name="CLR" />
            <blockpin signalname="C_stage2(7:0)" name="D(7:0)" />
            <blockpin signalname="MUL3_A(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_148">
            <blockpin signalname="XLXN_242" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_149">
            <blockpin signalname="XLXN_241" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_144">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_240" name="CE" />
            <blockpin signalname="XLXN_239" name="CLR" />
            <blockpin signalname="D_stage2(7:0)" name="D(7:0)" />
            <blockpin signalname="MUL3_B(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_146">
            <blockpin signalname="XLXN_239" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_145">
            <blockpin signalname="XLXN_240" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="6400" height="6400">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="800" y="608" name="XLXI_5" orien="R0" />
        <branch name="XLXN_73">
            <wire x2="800" y1="576" y2="608" x1="800" />
        </branch>
        <instance x="736" y="736" name="XLXI_10" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="800" y1="416" y2="416" x1="768" />
        </branch>
        <instance x="768" y="352" name="XLXI_11" orien="M90" />
        <instance x="816" y="1264" name="XLXI_12" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="816" y1="1232" y2="1264" x1="816" />
        </branch>
        <instance x="752" y="1392" name="XLXI_13" orien="R0" />
        <branch name="XLXN_76">
            <wire x2="816" y1="1072" y2="1072" x1="784" />
        </branch>
        <instance x="784" y="1008" name="XLXI_14" orien="M90" />
        <branch name="AB_const_5(7:0)">
            <wire x2="800" y1="352" y2="352" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="352" name="AB_const_5(7:0)" orien="R180" />
        <branch name="AB_A(7:0)">
            <wire x2="816" y1="1008" y2="1008" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="1008" name="AB_A(7:0)" orien="R180" />
        <instance x="1440" y="496" name="XLXI_39" orien="R0">
        </instance>
        <branch name="MUL1_A(7:0)">
            <wire x2="1312" y1="352" y2="352" x1="1184" />
            <wire x2="1312" y1="352" y2="576" x1="1312" />
            <wire x2="1440" y1="576" y2="576" x1="1312" />
        </branch>
        <branch name="MUL1_B(7:0)">
            <wire x2="1312" y1="1008" y2="1008" x1="1200" />
            <wire x2="1312" y1="640" y2="1008" x1="1312" />
            <wire x2="1440" y1="640" y2="640" x1="1312" />
        </branch>
        <instance x="864" y="1776" name="XLXI_15" orien="R0" />
        <branch name="XLXN_77">
            <wire x2="864" y1="1744" y2="1776" x1="864" />
        </branch>
        <instance x="800" y="1904" name="XLXI_16" orien="R0" />
        <branch name="XLXN_78">
            <wire x2="864" y1="1584" y2="1584" x1="832" />
        </branch>
        <instance x="832" y="1520" name="XLXI_17" orien="M90" />
        <branch name="AB_B(7:0)">
            <wire x2="864" y1="1520" y2="1520" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1520" name="AB_B(7:0)" orien="R180" />
        <instance x="816" y="2304" name="XLXI_18" orien="R0" />
        <branch name="XLXN_79">
            <wire x2="816" y1="2272" y2="2304" x1="816" />
        </branch>
        <instance x="752" y="2432" name="XLXI_19" orien="R0" />
        <branch name="XLXN_80">
            <wire x2="816" y1="2112" y2="2112" x1="784" />
        </branch>
        <instance x="784" y="2048" name="XLXI_20" orien="M90" />
        <branch name="AB_C(7:0)">
            <wire x2="816" y1="2048" y2="2048" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="2048" name="AB_C(7:0)" orien="R180" />
        <instance x="832" y="2800" name="XLXI_21" orien="R0" />
        <branch name="XLXN_81">
            <wire x2="832" y1="2768" y2="2800" x1="832" />
        </branch>
        <instance x="768" y="2928" name="XLXI_22" orien="R0" />
        <branch name="XLXN_82">
            <wire x2="832" y1="2608" y2="2608" x1="800" />
        </branch>
        <instance x="800" y="2544" name="XLXI_23" orien="M90" />
        <branch name="AB_D(7:0)">
            <wire x2="832" y1="2544" y2="2544" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="2544" name="AB_D(7:0)" orien="R180" />
        <branch name="B_stage1(7:0)">
            <wire x2="1472" y1="1520" y2="1520" x1="1248" />
        </branch>
        <branch name="C_stage1(7:0)">
            <wire x2="1536" y1="2048" y2="2048" x1="1200" />
        </branch>
        <branch name="D_stage1(7:0)">
            <wire x2="1552" y1="2544" y2="2544" x1="1216" />
        </branch>
        <branch name="MUL1_OUT(15:0)">
            <wire x2="2032" y1="576" y2="576" x1="2016" />
            <wire x2="2032" y1="576" y2="592" x1="2032" />
            <wire x2="2256" y1="592" y2="592" x1="2032" />
        </branch>
        <instance x="2256" y="848" name="XLXI_79" orien="R0" />
        <branch name="XLXN_138">
            <wire x2="2256" y1="656" y2="656" x1="2176" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="2256" y1="816" y2="960" x1="2256" />
        </branch>
        <instance x="2192" y="1088" name="XLXI_78" orien="R0" />
        <instance x="2176" y="592" name="XLXI_76" orien="M90" />
        <branch name="XLXN_119">
            <wire x2="1472" y1="1584" y2="1584" x1="1440" />
        </branch>
        <instance x="1536" y="2304" name="XLXI_60" orien="R0" />
        <branch name="XLXN_121">
            <wire x2="1536" y1="2272" y2="2304" x1="1536" />
        </branch>
        <instance x="1472" y="2432" name="XLXI_61" orien="R0" />
        <branch name="XLXN_122">
            <wire x2="1536" y1="2112" y2="2112" x1="1504" />
        </branch>
        <instance x="1504" y="2048" name="XLXI_62" orien="M90" />
        <instance x="1552" y="2800" name="XLXI_63" orien="R0" />
        <branch name="XLXN_124">
            <wire x2="1552" y1="2768" y2="2800" x1="1552" />
        </branch>
        <instance x="1488" y="2928" name="XLXI_64" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="1552" y1="2608" y2="2608" x1="1520" />
        </branch>
        <instance x="1520" y="2544" name="XLXI_65" orien="M90" />
        <branch name="MUL2_B(15:0)">
            <wire x2="2864" y1="1456" y2="1456" x1="2800" />
            <wire x2="2880" y1="1232" y2="1232" x1="2864" />
            <wire x2="2864" y1="1232" y2="1456" x1="2864" />
        </branch>
        <branch name="MUL2_A(15:0)">
            <wire x2="2656" y1="592" y2="592" x1="2640" />
            <wire x2="2656" y1="592" y2="1168" x1="2656" />
            <wire x2="2880" y1="1168" y2="1168" x1="2656" />
        </branch>
        <instance x="3600" y="2688" name="XLXI_110" orien="R0" />
        <instance x="3584" y="2192" name="XLXI_109" orien="M90" />
        <branch name="XLXN_175">
            <wire x2="3648" y1="2256" y2="2256" x1="3584" />
        </branch>
        <branch name="XLXN_174">
            <wire x2="3648" y1="2416" y2="2544" x1="3648" />
            <wire x2="3664" y1="2544" y2="2544" x1="3648" />
            <wire x2="3664" y1="2544" y2="2560" x1="3664" />
        </branch>
        <branch name="ADD_B(19:0)">
            <wire x2="4608" y1="2192" y2="2192" x1="4496" />
            <wire x2="4608" y1="1520" y2="2192" x1="4608" />
            <wire x2="4736" y1="1520" y2="1520" x1="4608" />
        </branch>
        <branch name="ADD_OUT(19:0)">
            <wire x2="5232" y1="1520" y2="1520" x1="5024" />
        </branch>
        <branch name="AB_RES(19:0)">
            <wire x2="5696" y1="1328" y2="1328" x1="5616" />
        </branch>
        <iomarker fontsize="28" x="608" y="480" name="CLK" orien="R180" />
        <instance x="3648" y="2448" name="XLXI_108" orien="R0" />
        <instance x="2368" y="1488" name="XLXI_91" orien="R0">
        </instance>
        <instance x="1440" y="1520" name="XLXI_59" orien="M90" />
        <instance x="1408" y="1904" name="XLXI_58" orien="R0" />
        <instance x="2880" y="1088" name="XLXI_135" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5120" y="1328" name="CE" orien="R180" />
        <iomarker fontsize="28" x="5120" y="1392" name="CLR" orien="R180" />
        <instance x="5232" y="1552" name="XLXI_138" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5696" y="1328" name="AB_RES(19:0)" orien="R0" />
        <instance x="4544" y="1584" name="XLXI_128" orien="M90" />
        <instance x="4736" y="1408" name="XLXI_141" orien="R0">
        </instance>
        <branch name="XLXN_193">
            <wire x2="4736" y1="1648" y2="1648" x1="4544" />
        </branch>
        <branch name="XLXN_207(15:0)">
            <wire x2="4112" y1="2192" y2="2192" x1="4032" />
        </branch>
        <instance x="4112" y="2224" name="XLXI_139" orien="R0">
        </instance>
        <branch name="ADD_A(19:0)">
            <wire x2="4624" y1="1168" y2="1168" x1="4016" />
            <wire x2="4624" y1="1168" y2="1488" x1="4624" />
            <wire x2="4736" y1="1488" y2="1488" x1="4624" />
        </branch>
        <branch name="MUL2_OUT(19:0)">
            <wire x2="3472" y1="1168" y2="1168" x1="3456" />
            <wire x2="3472" y1="1168" y2="1360" x1="3472" />
            <wire x2="3632" y1="1360" y2="1360" x1="3472" />
        </branch>
        <branch name="CLR">
            <wire x2="5136" y1="1072" y2="1072" x1="3584" />
            <wire x2="5136" y1="1072" y2="1392" x1="5136" />
            <wire x2="5232" y1="1392" y2="1392" x1="5136" />
            <wire x2="3584" y1="1072" y2="1232" x1="3584" />
            <wire x2="3632" y1="1232" y2="1232" x1="3584" />
            <wire x2="5136" y1="1392" y2="1392" x1="5120" />
        </branch>
        <branch name="CE">
            <wire x2="5152" y1="1056" y2="1056" x1="3568" />
            <wire x2="5152" y1="1056" y2="1328" x1="5152" />
            <wire x2="5232" y1="1328" y2="1328" x1="5152" />
            <wire x2="3568" y1="1056" y2="1168" x1="3568" />
            <wire x2="3632" y1="1168" y2="1168" x1="3568" />
            <wire x2="5152" y1="1328" y2="1328" x1="5120" />
        </branch>
        <instance x="3632" y="1392" name="XLXI_136" orien="R0">
        </instance>
        <branch name="XLXN_118">
            <wire x2="1472" y1="1744" y2="1776" x1="1472" />
        </branch>
        <instance x="1472" y="1776" name="XLXI_66" orien="R0" />
        <branch name="XLXN_213(7:0)">
            <wire x2="2352" y1="1552" y2="1552" x1="2336" />
            <wire x2="2352" y1="1456" y2="1552" x1="2352" />
            <wire x2="2368" y1="1456" y2="1456" x1="2352" />
        </branch>
        <branch name="XLXN_212(7:0)">
            <wire x2="1904" y1="1520" y2="1520" x1="1856" />
            <wire x2="1904" y1="1520" y2="1552" x1="1904" />
            <wire x2="1952" y1="1552" y2="1552" x1="1904" />
        </branch>
        <branch name="XLXN_211">
            <wire x2="1952" y1="1616" y2="1616" x1="1920" />
        </branch>
        <instance x="1920" y="1552" name="XLXI_133" orien="M90" />
        <branch name="XLXN_209">
            <wire x2="1952" y1="1776" y2="1808" x1="1952" />
        </branch>
        <instance x="1888" y="1936" name="XLXI_134" orien="R0" />
        <instance x="1952" y="1808" name="XLXI_132" orien="R0" />
        <branch name="MUL3_OUT(15:0)">
            <wire x2="3632" y1="1920" y2="1920" x1="3424" />
            <wire x2="3632" y1="1920" y2="2192" x1="3632" />
            <wire x2="3648" y1="2192" y2="2192" x1="3632" />
        </branch>
        <branch name="CLK">
            <wire x2="720" y1="592" y2="592" x1="544" />
            <wire x2="544" y1="592" y2="1136" x1="544" />
            <wire x2="816" y1="1136" y2="1136" x1="544" />
            <wire x2="544" y1="1136" y2="1648" x1="544" />
            <wire x2="864" y1="1648" y2="1648" x1="544" />
            <wire x2="544" y1="1648" y2="1776" x1="544" />
            <wire x2="544" y1="1776" y2="2176" x1="544" />
            <wire x2="816" y1="2176" y2="2176" x1="544" />
            <wire x2="544" y1="2176" y2="2304" x1="544" />
            <wire x2="544" y1="2304" y2="2672" x1="544" />
            <wire x2="832" y1="2672" y2="2672" x1="544" />
            <wire x2="544" y1="2672" y2="2784" x1="544" />
            <wire x2="1280" y1="2784" y2="2784" x1="544" />
            <wire x2="560" y1="2304" y2="2304" x1="544" />
            <wire x2="560" y1="2304" y2="2432" x1="560" />
            <wire x2="1280" y1="2432" y2="2432" x1="560" />
            <wire x2="1312" y1="1776" y2="1776" x1="544" />
            <wire x2="1328" y1="1776" y2="1776" x1="1312" />
            <wire x2="720" y1="480" y2="480" x1="608" />
            <wire x2="720" y1="480" y2="592" x1="720" />
            <wire x2="800" y1="480" y2="480" x1="720" />
            <wire x2="1280" y1="2304" y2="2304" x1="1216" />
            <wire x2="1280" y1="2304" y2="2432" x1="1280" />
            <wire x2="1216" y1="2304" y2="2416" x1="1216" />
            <wire x2="2016" y1="2416" y2="2416" x1="1216" />
            <wire x2="2048" y1="2416" y2="2416" x1="2016" />
            <wire x2="2640" y1="2416" y2="2416" x1="2048" />
            <wire x2="2640" y1="2416" y2="2592" x1="2640" />
            <wire x2="3536" y1="2592" y2="2592" x1="2640" />
            <wire x2="2016" y1="2416" y2="2672" x1="2016" />
            <wire x2="2160" y1="2672" y2="2672" x1="2016" />
            <wire x2="1536" y1="2176" y2="2176" x1="1280" />
            <wire x2="1280" y1="2176" y2="2304" x1="1280" />
            <wire x2="1280" y1="2672" y2="2784" x1="1280" />
            <wire x2="1552" y1="2672" y2="2672" x1="1280" />
            <wire x2="1312" y1="1312" y2="1648" x1="1312" />
            <wire x2="1312" y1="1648" y2="1776" x1="1312" />
            <wire x2="1472" y1="1648" y2="1648" x1="1312" />
            <wire x2="1360" y1="1312" y2="1312" x1="1312" />
            <wire x2="2080" y1="1312" y2="1312" x1="1360" />
            <wire x2="1328" y1="1328" y2="1776" x1="1328" />
            <wire x2="1968" y1="1328" y2="1328" x1="1328" />
            <wire x2="2640" y1="1328" y2="1328" x1="1968" />
            <wire x2="2880" y1="1328" y2="1328" x1="2640" />
            <wire x2="1968" y1="1328" y2="1424" x1="1968" />
            <wire x2="1440" y1="736" y2="736" x1="1360" />
            <wire x2="1360" y1="736" y2="1312" x1="1360" />
            <wire x2="1968" y1="1424" y2="1424" x1="1936" />
            <wire x2="1936" y1="1424" y2="1680" x1="1936" />
            <wire x2="1952" y1="1680" y2="1680" x1="1936" />
            <wire x2="2176" y1="2112" y2="2112" x1="2048" />
            <wire x2="2048" y1="2112" y2="2416" x1="2048" />
            <wire x2="2080" y1="720" y2="1312" x1="2080" />
            <wire x2="2256" y1="720" y2="720" x1="2080" />
            <wire x2="2640" y1="1040" y2="1328" x1="2640" />
            <wire x2="3520" y1="1040" y2="1040" x1="2640" />
            <wire x2="4656" y1="1040" y2="1040" x1="3520" />
            <wire x2="5024" y1="1040" y2="1040" x1="4656" />
            <wire x2="5024" y1="1040" y2="1456" x1="5024" />
            <wire x2="5232" y1="1456" y2="1456" x1="5024" />
            <wire x2="4656" y1="1040" y2="1552" x1="4656" />
            <wire x2="4736" y1="1552" y2="1552" x1="4656" />
            <wire x2="3520" y1="1040" y2="1296" x1="3520" />
            <wire x2="3632" y1="1296" y2="1296" x1="3520" />
            <wire x2="2848" y1="2080" y2="2080" x1="2640" />
            <wire x2="2640" y1="2080" y2="2416" x1="2640" />
            <wire x2="3536" y1="2320" y2="2592" x1="3536" />
            <wire x2="3648" y1="2320" y2="2320" x1="3536" />
        </branch>
        <instance x="2848" y="1840" name="XLXI_104" orien="R0">
        </instance>
        <instance x="2176" y="2240" name="XLXI_147" orien="R0" />
        <instance x="2144" y="1984" name="XLXI_148" orien="M90" />
        <branch name="XLXN_241">
            <wire x2="2176" y1="2208" y2="2224" x1="2176" />
            <wire x2="2176" y1="2224" y2="2240" x1="2176" />
        </branch>
        <branch name="XLXN_242">
            <wire x2="2176" y1="2048" y2="2048" x1="2144" />
        </branch>
        <instance x="2096" y="2912" name="XLXI_146" orien="R0" />
        <branch name="XLXN_239">
            <wire x2="2160" y1="2768" y2="2784" x1="2160" />
        </branch>
        <branch name="D_stage2(7:0)">
            <wire x2="2160" y1="2544" y2="2544" x1="1936" />
        </branch>
        <branch name="MUL3_B(7:0)">
            <wire x2="2832" y1="2544" y2="2544" x1="2544" />
            <wire x2="2848" y1="1984" y2="1984" x1="2832" />
            <wire x2="2832" y1="1984" y2="2544" x1="2832" />
        </branch>
        <branch name="MUL3_A(7:0)">
            <wire x2="2672" y1="1984" y2="1984" x1="2560" />
            <wire x2="2672" y1="1920" y2="1984" x1="2672" />
            <wire x2="2848" y1="1920" y2="1920" x1="2672" />
        </branch>
        <branch name="C_stage2(7:0)">
            <wire x2="1920" y1="1984" y2="2048" x1="1920" />
            <wire x2="2176" y1="1984" y2="1984" x1="1920" />
        </branch>
        <instance x="2160" y="2800" name="XLXI_144" orien="R0" />
        <branch name="XLXN_240">
            <wire x2="2160" y1="2608" y2="2608" x1="2128" />
        </branch>
        <instance x="2112" y="2368" name="XLXI_149" orien="R0" />
        <instance x="2128" y="2544" name="XLXI_145" orien="M90" />
    </sheet>
</drawing>