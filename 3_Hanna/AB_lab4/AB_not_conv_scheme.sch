<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MUX4_OUT(19:0)" />
        <signal name="MUX3_OUT(19:0)" />
        <signal name="MUX1_OUT(19:0)" />
        <signal name="MUX2_OUT(19:0)" />
        <signal name="AB_const_5(7:0)" />
        <signal name="RAM1_OUT(19:0)" />
        <signal name="RAM2_OUT_ADDER_A(19:0)" />
        <signal name="RAM4_OUT(19:0)" />
        <signal name="MUL_OUT_ADDER_B(19:0)" />
        <signal name="ADDER_OUT(19:0)" />
        <signal name="AB_RES(19:0)" />
        <signal name="XLXN_55" />
        <signal name="XLXN_57" />
        <signal name="XLXN_59" />
        <signal name="XLXN_61" />
        <signal name="XLXN_52(3:0)" />
        <signal name="CU(19:0)" />
        <signal name="ZERO(3:0)" />
        <signal name="CU(17)" />
        <signal name="CU(16)" />
        <signal name="CU(19)" />
        <signal name="CU(18)" />
        <signal name="CU(15)" />
        <signal name="CU(14)" />
        <signal name="CU(13)" />
        <signal name="CU(12)" />
        <signal name="CU(11:8)" />
        <signal name="CU(7:4)" />
        <signal name="CU(0)" />
        <signal name="CLK" />
        <signal name="const_buf(19:0)" />
        <signal name="RAM3_OUT(19:0)" />
        <signal name="MUX5_OUT(19:0)" />
        <signal name="CU(3)" />
        <signal name="CU(1)" />
        <signal name="CU(2)" />
        <signal name="XLXN_100(19:0)" />
        <signal name="AB_C(7:0)" />
        <signal name="XLXN_102(19:0)" />
        <signal name="AB_D(7:0)" />
        <signal name="XLXN_105(19:0)" />
        <signal name="AB_B(7:0)" />
        <signal name="XLXN_107(19:0)" />
        <signal name="AB_A(7:0)" />
        <port polarity="Input" name="AB_const_5(7:0)" />
        <port polarity="Output" name="AB_RES(19:0)" />
        <port polarity="Output" name="CU(19:0)" />
        <port polarity="Input" name="ZERO(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="AB_C(7:0)" />
        <port polarity="Input" name="AB_D(7:0)" />
        <port polarity="Input" name="AB_B(7:0)" />
        <port polarity="Input" name="AB_A(7:0)" />
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
        <blockdef name="ROM_AB">
            <timestamp>2016-11-21T20:38:30</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="AB_Counter">
            <timestamp>2016-11-21T22:41:24</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="MUX_20">
            <timestamp>2016-11-21T20:7:48</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="AB_RAM">
            <timestamp>2016-11-21T20:9:25</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="MUL_20">
            <timestamp>2016-11-21T20:11:55</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="BUS_8_20_CONV">
            <timestamp>2016-11-21T20:57:32</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="AB_RAM" name="XLXI_14">
            <blockpin signalname="XLXN_59" name="WE" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin signalname="CU(14)" name="OE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CU(7:4)" name="A(3:0)" />
            <blockpin signalname="MUX4_OUT(19:0)" name="DI(19:0)" />
            <blockpin signalname="RAM2_OUT_ADDER_A(19:0)" name="DQ(19:0)" />
        </block>
        <block symbolname="AB_RAM" name="XLXI_15">
            <blockpin signalname="XLXN_57" name="WE" />
            <blockpin signalname="XLXN_57" name="CE" />
            <blockpin signalname="CU(13)" name="OE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ZERO(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_100(19:0)" name="DI(19:0)" />
            <blockpin signalname="RAM3_OUT(19:0)" name="DQ(19:0)" />
        </block>
        <block symbolname="AB_RAM" name="XLXI_16">
            <blockpin signalname="XLXN_55" name="WE" />
            <blockpin signalname="XLXN_55" name="CE" />
            <blockpin signalname="CU(12)" name="OE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ZERO(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_102(19:0)" name="DI(19:0)" />
            <blockpin signalname="RAM4_OUT(19:0)" name="DQ(19:0)" />
        </block>
        <block symbolname="AB_RAM" name="XLXI_13">
            <blockpin signalname="XLXN_61" name="WE" />
            <blockpin signalname="XLXN_61" name="CE" />
            <blockpin signalname="CU(15)" name="OE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CU(11:8)" name="A(3:0)" />
            <blockpin signalname="MUX3_OUT(19:0)" name="DI(19:0)" />
            <blockpin signalname="RAM1_OUT(19:0)" name="DQ(19:0)" />
        </block>
        <block symbolname="MUX_20" name="XLXI_11">
            <blockpin signalname="CU(17)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_107(19:0)" name="data1(19:0)" />
            <blockpin signalname="MUL_OUT_ADDER_B(19:0)" name="data2(19:0)" />
            <blockpin signalname="MUX3_OUT(19:0)" name="data_o(19:0)" />
        </block>
        <block symbolname="MUX_20" name="XLXI_12">
            <blockpin signalname="CU(16)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_105(19:0)" name="data1(19:0)" />
            <blockpin signalname="MUL_OUT_ADDER_B(19:0)" name="data2(19:0)" />
            <blockpin signalname="MUX4_OUT(19:0)" name="data_o(19:0)" />
        </block>
        <block symbolname="MUX_20" name="XLXI_29">
            <blockpin signalname="CU(19)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MUX5_OUT(19:0)" name="data1(19:0)" />
            <blockpin signalname="RAM2_OUT_ADDER_A(19:0)" name="data2(19:0)" />
            <blockpin signalname="MUX1_OUT(19:0)" name="data_o(19:0)" />
        </block>
        <block symbolname="MUL_20" name="XLXI_27">
            <blockpin signalname="MUX1_OUT(19:0)" name="a(19:0)" />
            <blockpin signalname="MUX2_OUT(19:0)" name="b(19:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL_OUT_ADDER_B(19:0)" name="p(19:0)" />
        </block>
        <block symbolname="MUX_20" name="XLXI_30">
            <blockpin signalname="CU(18)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RAM1_OUT(19:0)" name="data1(19:0)" />
            <blockpin signalname="RAM4_OUT(19:0)" name="data2(19:0)" />
            <blockpin signalname="MUX2_OUT(19:0)" name="data_o(19:0)" />
        </block>
        <block symbolname="AB_ADDER_16_32" name="XLXI_28">
            <blockpin signalname="RAM2_OUT_ADDER_A(19:0)" name="a(19:0)" />
            <blockpin signalname="MUL_OUT_ADDER_B(19:0)" name="b(19:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="CU(2)" name="ce" />
            <blockpin signalname="ADDER_OUT(19:0)" name="s(19:0)" />
        </block>
        <block symbolname="AB_register20" name="XLXI_55">
            <blockpin signalname="CU(1)" name="ld" />
            <blockpin signalname="CU(0)" name="clr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="ADDER_OUT(19:0)" name="d(19:0)" />
            <blockpin signalname="AB_RES(19:0)" name="q(19:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_56">
            <blockpin signalname="XLXN_55" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_58">
            <blockpin signalname="XLXN_57" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_59">
            <blockpin signalname="XLXN_59" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_60">
            <blockpin signalname="XLXN_61" name="P" />
        </block>
        <block symbolname="AB_Counter" name="XLXI_9">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_52(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="ROM_AB" name="XLXI_2">
            <blockpin name="CLK" />
            <blockpin signalname="XLXN_52(3:0)" name="A(3:0)" />
            <blockpin signalname="CU(19:0)" name="D(19:0)" />
        </block>
        <block symbolname="MUX_20" name="XLXI_64">
            <blockpin signalname="CU(3)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="const_buf(19:0)" name="data1(19:0)" />
            <blockpin signalname="RAM3_OUT(19:0)" name="data2(19:0)" />
            <blockpin signalname="MUX5_OUT(19:0)" name="data_o(19:0)" />
        </block>
        <block symbolname="BUS_8_20_CONV" name="XLXI_65">
            <blockpin signalname="AB_const_5(7:0)" name="data_in(7:0)" />
            <blockpin signalname="const_buf(19:0)" name="data_out(19:0)" />
        </block>
        <block symbolname="BUS_8_20_CONV" name="XLXI_66">
            <blockpin signalname="AB_C(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_100(19:0)" name="data_out(19:0)" />
        </block>
        <block symbolname="BUS_8_20_CONV" name="XLXI_67">
            <blockpin signalname="AB_D(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_102(19:0)" name="data_out(19:0)" />
        </block>
        <block symbolname="BUS_8_20_CONV" name="XLXI_69">
            <blockpin signalname="AB_B(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_105(19:0)" name="data_out(19:0)" />
        </block>
        <block symbolname="BUS_8_20_CONV" name="XLXI_70">
            <blockpin signalname="AB_A(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_107(19:0)" name="data_out(19:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="6400" height="6400">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2624" y="2640" name="XLXI_14" orien="R0">
        </instance>
        <instance x="2608" y="3152" name="XLXI_15" orien="R0">
        </instance>
        <instance x="2592" y="3696" name="XLXI_16" orien="R0">
        </instance>
        <instance x="2624" y="2112" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1952" y="2064" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1936" y="2544" name="XLXI_12" orien="R0">
        </instance>
        <branch name="MUX4_OUT(19:0)">
            <wire x2="2464" y1="2320" y2="2320" x1="2320" />
            <wire x2="2464" y1="2320" y2="2608" x1="2464" />
            <wire x2="2624" y1="2608" y2="2608" x1="2464" />
        </branch>
        <branch name="MUX3_OUT(19:0)">
            <wire x2="2352" y1="1840" y2="1840" x1="2336" />
            <wire x2="2352" y1="1840" y2="2080" x1="2352" />
            <wire x2="2624" y1="2080" y2="2080" x1="2352" />
        </branch>
        <instance x="4448" y="2432" name="XLXI_29" orien="R0">
        </instance>
        <instance x="5232" y="2448" name="XLXI_27" orien="R0">
        </instance>
        <instance x="4432" y="3056" name="XLXI_30" orien="R0">
        </instance>
        <branch name="MUX1_OUT(19:0)">
            <wire x2="5024" y1="2208" y2="2208" x1="4832" />
            <wire x2="5024" y1="2208" y2="2528" x1="5024" />
            <wire x2="5232" y1="2528" y2="2528" x1="5024" />
        </branch>
        <branch name="MUX2_OUT(19:0)">
            <wire x2="5024" y1="2832" y2="2832" x1="4816" />
            <wire x2="5232" y1="2592" y2="2592" x1="5024" />
            <wire x2="5024" y1="2592" y2="2832" x1="5024" />
        </branch>
        <branch name="AB_const_5(7:0)">
            <wire x2="3456" y1="2000" y2="2000" x1="3376" />
            <wire x2="3504" y1="2000" y2="2000" x1="3456" />
        </branch>
        <instance x="4400" y="3488" name="XLXI_28" orien="R0">
        </instance>
        <text style="fontsize:40;fontname:Arial" x="3016" y="2212">B</text>
        <text style="fontsize:40;fontname:Arial" x="3024" y="1644">A</text>
        <text style="fontsize:40;fontname:Arial" x="2992" y="2724">C</text>
        <text style="fontsize:40;fontname:Arial" x="2972" y="3240">D</text>
        <branch name="RAM1_OUT(19:0)">
            <wire x2="3200" y1="1760" y2="1760" x1="3008" />
            <wire x2="3200" y1="1760" y2="2960" x1="3200" />
            <wire x2="4432" y1="2960" y2="2960" x1="3200" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="3328" y="1676">5*A</text>
        <branch name="RAM2_OUT_ADDER_A(19:0)">
            <wire x2="3040" y1="2288" y2="2288" x1="3008" />
            <wire x2="3040" y1="2288" y2="2400" x1="3040" />
            <wire x2="4320" y1="2400" y2="2400" x1="3040" />
            <wire x2="4448" y1="2400" y2="2400" x1="4320" />
            <wire x2="4320" y1="2400" y2="3568" x1="4320" />
            <wire x2="4400" y1="3568" y2="3568" x1="4320" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="3232" y="2348">5*A*B</text>
        <branch name="RAM4_OUT(19:0)">
            <wire x2="3696" y1="3344" y2="3344" x1="2976" />
            <wire x2="3696" y1="3024" y2="3344" x1="3696" />
            <wire x2="4432" y1="3024" y2="3024" x1="3696" />
        </branch>
        <branch name="MUL_OUT_ADDER_B(19:0)">
            <wire x2="1600" y1="1456" y2="2032" x1="1600" />
            <wire x2="1600" y1="2032" y2="2512" x1="1600" />
            <wire x2="1936" y1="2512" y2="2512" x1="1600" />
            <wire x2="1952" y1="2032" y2="2032" x1="1600" />
            <wire x2="5872" y1="1456" y2="1456" x1="1600" />
            <wire x2="5872" y1="1456" y2="2528" x1="5872" />
            <wire x2="5872" y1="2528" y2="3344" x1="5872" />
            <wire x2="5872" y1="3344" y2="3344" x1="4256" />
            <wire x2="4256" y1="3344" y2="3600" x1="4256" />
            <wire x2="4400" y1="3600" y2="3600" x1="4256" />
            <wire x2="5872" y1="2528" y2="2528" x1="5808" />
        </branch>
        <instance x="4960" y="3712" name="XLXI_55" orien="R0">
        </instance>
        <branch name="ADDER_OUT(19:0)">
            <wire x2="4816" y1="3600" y2="3600" x1="4688" />
            <wire x2="4816" y1="3600" y2="3680" x1="4816" />
            <wire x2="4960" y1="3680" y2="3680" x1="4816" />
        </branch>
        <branch name="AB_RES(19:0)">
            <wire x2="5376" y1="3488" y2="3488" x1="5344" />
        </branch>
        <iomarker fontsize="28" x="5376" y="3488" name="AB_RES(19:0)" orien="R0" />
        <instance x="2528" y="3408" name="XLXI_56" orien="R270" />
        <branch name="XLXN_55">
            <wire x2="2560" y1="3344" y2="3344" x1="2528" />
            <wire x2="2592" y1="3344" y2="3344" x1="2560" />
            <wire x2="2560" y1="3344" y2="3408" x1="2560" />
            <wire x2="2592" y1="3408" y2="3408" x1="2560" />
        </branch>
        <instance x="2576" y="2864" name="XLXI_58" orien="R270" />
        <branch name="XLXN_57">
            <wire x2="2592" y1="2800" y2="2800" x1="2576" />
            <wire x2="2608" y1="2800" y2="2800" x1="2592" />
            <wire x2="2592" y1="2800" y2="2864" x1="2592" />
            <wire x2="2608" y1="2864" y2="2864" x1="2592" />
        </branch>
        <instance x="2592" y="2352" name="XLXI_59" orien="R270" />
        <branch name="XLXN_59">
            <wire x2="2608" y1="2288" y2="2288" x1="2592" />
            <wire x2="2624" y1="2288" y2="2288" x1="2608" />
            <wire x2="2608" y1="2288" y2="2352" x1="2608" />
            <wire x2="2624" y1="2352" y2="2352" x1="2608" />
        </branch>
        <instance x="2592" y="1824" name="XLXI_60" orien="R270" />
        <branch name="XLXN_61">
            <wire x2="2608" y1="1760" y2="1760" x1="2592" />
            <wire x2="2624" y1="1760" y2="1760" x1="2608" />
            <wire x2="2608" y1="1760" y2="1824" x1="2608" />
            <wire x2="2624" y1="1824" y2="1824" x1="2608" />
        </branch>
        <instance x="160" y="1344" name="XLXI_9" orien="R0">
        </instance>
        <instance x="656" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_52(3:0)">
            <wire x2="656" y1="1120" y2="1120" x1="592" />
            <wire x2="592" y1="1120" y2="1232" x1="592" />
            <wire x2="800" y1="1232" y2="1232" x1="592" />
            <wire x2="800" y1="1232" y2="1488" x1="800" />
            <wire x2="800" y1="1488" y2="1488" x1="736" />
        </branch>
        <branch name="CU(19:0)">
            <wire x2="1136" y1="1056" y2="1056" x1="1040" />
            <wire x2="1136" y1="1056" y2="1216" x1="1136" />
            <wire x2="1136" y1="1216" y2="1280" x1="1136" />
            <wire x2="1136" y1="1280" y2="1344" x1="1136" />
            <wire x2="1136" y1="1344" y2="1408" x1="1136" />
            <wire x2="1136" y1="1408" y2="1632" x1="1136" />
            <wire x2="1136" y1="1632" y2="1712" x1="1136" />
            <wire x2="1136" y1="1712" y2="1792" x1="1136" />
            <wire x2="1136" y1="1792" y2="1872" x1="1136" />
            <wire x2="1136" y1="1872" y2="2080" x1="1136" />
            <wire x2="1136" y1="2080" y2="2224" x1="1136" />
            <wire x2="1136" y1="2224" y2="2512" x1="1136" />
            <wire x2="1136" y1="2512" y2="2608" x1="1136" />
            <wire x2="1136" y1="2608" y2="2688" x1="1136" />
            <wire x2="1136" y1="2688" y2="2768" x1="1136" />
            <wire x2="1136" y1="2768" y2="3088" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1136" y="3088" name="CU(19:0)" orien="R90" />
        <branch name="ZERO(3:0)">
            <wire x2="2416" y1="3056" y2="3056" x1="2304" />
            <wire x2="2416" y1="3056" y2="3600" x1="2416" />
            <wire x2="2592" y1="3600" y2="3600" x1="2416" />
            <wire x2="2608" y1="3056" y2="3056" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2304" y="3056" name="ZERO(3:0)" orien="R180" />
        <bustap x2="1232" y1="1216" y2="1216" x1="1136" />
        <bustap x2="1232" y1="1280" y2="1280" x1="1136" />
        <bustap x2="1232" y1="1344" y2="1344" x1="1136" />
        <bustap x2="1232" y1="1408" y2="1408" x1="1136" />
        <bustap x2="1232" y1="1632" y2="1632" x1="1136" />
        <bustap x2="1232" y1="1712" y2="1712" x1="1136" />
        <bustap x2="1232" y1="1792" y2="1792" x1="1136" />
        <bustap x2="1232" y1="1872" y2="1872" x1="1136" />
        <bustap x2="1232" y1="2080" y2="2080" x1="1136" />
        <bustap x2="1232" y1="2224" y2="2224" x1="1136" />
        <bustap x2="1232" y1="2512" y2="2512" x1="1136" />
        <bustap x2="1232" y1="2688" y2="2688" x1="1136" />
        <bustap x2="1232" y1="2768" y2="2768" x1="1136" />
        <branch name="CU(17)">
            <wire x2="1456" y1="1344" y2="1344" x1="1232" />
            <wire x2="1456" y1="1344" y2="1840" x1="1456" />
            <wire x2="1952" y1="1840" y2="1840" x1="1456" />
        </branch>
        <branch name="CU(16)">
            <wire x2="1520" y1="1408" y2="1408" x1="1232" />
            <wire x2="1520" y1="1408" y2="2320" x1="1520" />
            <wire x2="1936" y1="2320" y2="2320" x1="1520" />
        </branch>
        <branch name="CU(19)">
            <wire x2="4448" y1="1216" y2="1216" x1="1232" />
            <wire x2="4448" y1="1216" y2="2208" x1="4448" />
        </branch>
        <branch name="CU(18)">
            <wire x2="4384" y1="1280" y2="1280" x1="1232" />
            <wire x2="4384" y1="1280" y2="2832" x1="4384" />
            <wire x2="4432" y1="2832" y2="2832" x1="4384" />
        </branch>
        <branch name="CU(15)">
            <wire x2="2432" y1="1632" y2="1632" x1="1232" />
            <wire x2="2432" y1="1632" y2="1888" x1="2432" />
            <wire x2="2624" y1="1888" y2="1888" x1="2432" />
        </branch>
        <branch name="CU(14)">
            <wire x2="2416" y1="1712" y2="1712" x1="1232" />
            <wire x2="2416" y1="1712" y2="2416" x1="2416" />
            <wire x2="2624" y1="2416" y2="2416" x1="2416" />
        </branch>
        <branch name="CU(13)">
            <wire x2="1408" y1="1792" y2="1792" x1="1232" />
            <wire x2="1408" y1="1792" y2="2928" x1="1408" />
            <wire x2="2608" y1="2928" y2="2928" x1="1408" />
        </branch>
        <branch name="CU(12)">
            <wire x2="1360" y1="1872" y2="1872" x1="1232" />
            <wire x2="1360" y1="1872" y2="3472" x1="1360" />
            <wire x2="2592" y1="3472" y2="3472" x1="1360" />
        </branch>
        <branch name="CU(11:8)">
            <wire x2="1296" y1="2080" y2="2080" x1="1232" />
            <wire x2="1296" y1="2080" y2="2144" x1="1296" />
            <wire x2="2608" y1="2144" y2="2144" x1="1296" />
            <wire x2="2624" y1="2016" y2="2016" x1="2608" />
            <wire x2="2608" y1="2016" y2="2144" x1="2608" />
        </branch>
        <branch name="CU(7:4)">
            <wire x2="1456" y1="2224" y2="2224" x1="1232" />
            <wire x2="1456" y1="2224" y2="2448" x1="1456" />
            <wire x2="1456" y1="2448" y2="2576" x1="1456" />
            <wire x2="2624" y1="2576" y2="2576" x1="1456" />
            <wire x2="2624" y1="2544" y2="2576" x1="2624" />
        </branch>
        <branch name="CU(0)">
            <wire x2="1312" y1="2768" y2="2768" x1="1232" />
            <wire x2="1312" y1="2768" y2="3216" x1="1312" />
            <wire x2="4768" y1="3216" y2="3216" x1="1312" />
            <wire x2="4768" y1="3216" y2="3552" x1="4768" />
            <wire x2="4960" y1="3552" y2="3552" x1="4768" />
        </branch>
        <iomarker fontsize="28" x="1600" y="3920" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="3376" y="2000" name="AB_const_5(7:0)" orien="R180" />
        <instance x="3568" y="2752" name="XLXI_64" orien="R0">
        </instance>
        <instance x="3504" y="2032" name="XLXI_65" orien="R0">
        </instance>
        <branch name="const_buf(19:0)">
            <wire x2="3568" y1="2656" y2="2656" x1="3488" />
            <wire x2="3488" y1="2656" y2="2800" x1="3488" />
            <wire x2="4016" y1="2800" y2="2800" x1="3488" />
            <wire x2="4016" y1="2000" y2="2000" x1="3936" />
            <wire x2="4016" y1="2000" y2="2800" x1="4016" />
        </branch>
        <branch name="RAM3_OUT(19:0)">
            <wire x2="3280" y1="2800" y2="2800" x1="2992" />
            <wire x2="3280" y1="2720" y2="2800" x1="3280" />
            <wire x2="3568" y1="2720" y2="2720" x1="3280" />
        </branch>
        <branch name="MUX5_OUT(19:0)">
            <wire x2="4192" y1="2528" y2="2528" x1="3952" />
            <wire x2="4192" y1="2336" y2="2528" x1="4192" />
            <wire x2="4448" y1="2336" y2="2336" x1="4192" />
        </branch>
        <branch name="CU(3)">
            <wire x2="1312" y1="2512" y2="2512" x1="1232" />
            <wire x2="1312" y1="2192" y2="2512" x1="1312" />
            <wire x2="3072" y1="2192" y2="2192" x1="1312" />
            <wire x2="3072" y1="2192" y2="2528" x1="3072" />
            <wire x2="3568" y1="2528" y2="2528" x1="3072" />
        </branch>
        <bustap x2="1248" y1="2608" y2="2608" x1="1136" />
        <branch name="CU(1)">
            <wire x2="3088" y1="2688" y2="2688" x1="1232" />
            <wire x2="3088" y1="2688" y2="3488" x1="3088" />
            <wire x2="4960" y1="3488" y2="3488" x1="3088" />
        </branch>
        <branch name="CU(2)">
            <wire x2="1264" y1="2608" y2="2608" x1="1248" />
            <wire x2="1264" y1="2608" y2="3728" x1="1264" />
            <wire x2="4400" y1="3728" y2="3728" x1="1264" />
        </branch>
        <branch name="XLXN_100(19:0)">
            <wire x2="2592" y1="3184" y2="3184" x1="2368" />
            <wire x2="2608" y1="3120" y2="3120" x1="2592" />
            <wire x2="2592" y1="3120" y2="3184" x1="2592" />
        </branch>
        <instance x="1936" y="3216" name="XLXI_66" orien="R0">
        </instance>
        <branch name="AB_C(7:0)">
            <wire x2="1936" y1="3184" y2="3184" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="3184" name="AB_C(7:0)" orien="R180" />
        <branch name="XLXN_102(19:0)">
            <wire x2="2576" y1="3632" y2="3632" x1="2336" />
            <wire x2="2576" y1="3632" y2="3664" x1="2576" />
            <wire x2="2592" y1="3664" y2="3664" x1="2576" />
        </branch>
        <instance x="1904" y="3664" name="XLXI_67" orien="R0">
        </instance>
        <branch name="AB_D(7:0)">
            <wire x2="1904" y1="3632" y2="3632" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1872" y="3632" name="AB_D(7:0)" orien="R180" />
        <branch name="CLK">
            <wire x2="160" y1="1552" y2="1552" x1="112" />
            <wire x2="112" y1="1552" y2="3760" x1="112" />
            <wire x2="1744" y1="3760" y2="3760" x1="112" />
            <wire x2="1744" y1="3760" y2="3920" x1="1744" />
            <wire x2="1920" y1="3920" y2="3920" x1="1744" />
            <wire x2="2464" y1="3920" y2="3920" x1="1920" />
            <wire x2="3104" y1="3920" y2="3920" x1="2464" />
            <wire x2="4384" y1="3920" y2="3920" x1="3104" />
            <wire x2="4704" y1="3920" y2="3920" x1="4384" />
            <wire x2="1648" y1="3920" y2="3920" x1="1600" />
            <wire x2="1744" y1="3920" y2="3920" x1="1648" />
            <wire x2="1952" y1="1904" y2="1904" x1="1648" />
            <wire x2="1648" y1="1904" y2="3920" x1="1648" />
            <wire x2="1936" y1="2384" y2="2384" x1="1920" />
            <wire x2="1920" y1="2384" y2="2416" x1="1920" />
            <wire x2="1920" y1="2416" y2="3696" x1="1920" />
            <wire x2="1920" y1="3696" y2="3920" x1="1920" />
            <wire x2="2624" y1="1952" y2="1952" x1="2448" />
            <wire x2="2448" y1="1952" y2="2480" x1="2448" />
            <wire x2="2624" y1="2480" y2="2480" x1="2448" />
            <wire x2="2448" y1="2480" y2="2992" x1="2448" />
            <wire x2="2448" y1="2992" y2="3536" x1="2448" />
            <wire x2="2464" y1="3536" y2="3536" x1="2448" />
            <wire x2="2592" y1="3536" y2="3536" x1="2464" />
            <wire x2="2464" y1="3536" y2="3920" x1="2464" />
            <wire x2="2608" y1="2992" y2="2992" x1="2448" />
            <wire x2="4448" y1="2272" y2="2272" x1="3104" />
            <wire x2="3104" y1="2272" y2="2592" x1="3104" />
            <wire x2="3104" y1="2592" y2="2896" x1="3104" />
            <wire x2="3104" y1="2896" y2="3920" x1="3104" />
            <wire x2="4432" y1="2896" y2="2896" x1="3104" />
            <wire x2="3456" y1="2592" y2="2592" x1="3104" />
            <wire x2="3568" y1="2592" y2="2592" x1="3456" />
            <wire x2="4400" y1="3632" y2="3632" x1="4384" />
            <wire x2="4384" y1="3632" y2="3920" x1="4384" />
            <wire x2="4704" y1="3616" y2="3920" x1="4704" />
            <wire x2="4880" y1="3616" y2="3616" x1="4704" />
            <wire x2="4960" y1="3616" y2="3616" x1="4880" />
            <wire x2="5232" y1="2688" y2="2688" x1="4880" />
            <wire x2="4880" y1="2688" y2="3616" x1="4880" />
        </branch>
        <instance x="1424" y="2464" name="XLXI_69" orien="R0">
        </instance>
        <branch name="XLXN_105(19:0)">
            <wire x2="1888" y1="2432" y2="2432" x1="1856" />
            <wire x2="1888" y1="2432" y2="2448" x1="1888" />
            <wire x2="1936" y1="2448" y2="2448" x1="1888" />
        </branch>
        <branch name="AB_B(7:0)">
            <wire x2="1424" y1="2432" y2="2432" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="2432" name="AB_B(7:0)" orien="R180" />
        <branch name="XLXN_107(19:0)">
            <wire x2="1952" y1="1968" y2="1968" x1="1920" />
        </branch>
        <instance x="1488" y="2000" name="XLXI_70" orien="R0">
        </instance>
        <branch name="AB_A(7:0)">
            <wire x2="1488" y1="1968" y2="1968" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1456" y="1968" name="AB_A(7:0)" orien="R180" />
    </sheet>
</drawing>