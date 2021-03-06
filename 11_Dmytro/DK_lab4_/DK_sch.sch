<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MUL_OUT_RAM2_RAM4(31:0)" />
        <signal name="MUX1_MUL_A(31:0)" />
        <signal name="CU_bus(23:0)" />
        <signal name="XLXN_90(3:0)" />
        <signal name="CU_bus(23)" />
        <signal name="CU_bus(21)" />
        <signal name="CU_bus(20)" />
        <signal name="MUX2(31:0)" />
        <signal name="RAM1(31:0)" />
        <signal name="MUX3(31:0)" />
        <signal name="RAM3_MUL_B(31:0)" />
        <signal name="RAM4(31:0)" />
        <signal name="MUX4(31:0)" />
        <signal name="CU_bus(22)" />
        <signal name="ZERO(3:0)" />
        <signal name="ZERO_bit" />
        <signal name="CU_bus(19)" />
        <signal name="CU_bus(18)" />
        <signal name="CU_bus(17)" />
        <signal name="CU_bus(16)" />
        <signal name="CU_bus(15:12)" />
        <signal name="CU_bus(11:8)" />
        <signal name="CU_bus(7:4)" />
        <signal name="CLK" />
        <signal name="XLXN_91(31:0)" />
        <signal name="XLXN_92(31:0)" />
        <signal name="XLXN_93(31:0)" />
        <signal name="XLXN_94(31:0)" />
        <signal name="DK_D(7:0)" />
        <signal name="DK_C(7:0)" />
        <signal name="DK_B(7:0)" />
        <signal name="DK_A(7:0)" />
        <signal name="CE" />
        <signal name="RAM2(31:0)" />
        <signal name="CU_bus(0)" />
        <signal name="ADDER_OUT(31:0)" />
        <signal name="DK_RES(31:0)" />
        <signal name="CU_bus(2)" />
        <signal name="CU_bus(1)" />
        <port polarity="Output" name="CU_bus(23:0)" />
        <port polarity="Input" name="ZERO(3:0)" />
        <port polarity="Input" name="ZERO_bit" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="DK_D(7:0)" />
        <port polarity="Input" name="DK_C(7:0)" />
        <port polarity="Input" name="DK_B(7:0)" />
        <port polarity="Input" name="DK_A(7:0)" />
        <port polarity="Input" name="CE" />
        <port polarity="Output" name="DK_RES(31:0)" />
        <blockdef name="ADDER_32">
            <timestamp>2016-11-6T16:18:28</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="256" y1="112" y2="112" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="MUL32">
            <timestamp>2016-11-6T16:23:42</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="DK_counter">
            <timestamp>2016-11-6T19:55:31</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="ROM_DK">
            <timestamp>2016-11-8T19:7:24</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="BUS_8_32_CONV">
            <timestamp>2016-11-9T16:9:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DK_register32">
            <timestamp>2016-11-12T9:36:18</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="MUX_32">
            <timestamp>2016-11-14T9:0:40</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="RAM_32">
            <timestamp>2016-11-12T16:9:9</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <block symbolname="MUL32" name="MUL">
            <blockpin signalname="MUX1_MUL_A(31:0)" name="a(31:0)" />
            <blockpin signalname="RAM3_MUL_B(31:0)" name="b(31:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MUL_OUT_RAM2_RAM4(31:0)" name="p(31:0)" />
        </block>
        <block symbolname="DK_counter" name="CNT">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_90(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="ROM_DK" name="ROM">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_90(3:0)" name="A(3:0)" />
            <blockpin signalname="CU_bus(23:0)" name="D(23:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_9">
            <blockpin signalname="DK_A(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_10">
            <blockpin signalname="DK_C(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="XLXN_92(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_12">
            <blockpin signalname="DK_B(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="XLXN_93(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_13">
            <blockpin signalname="DK_D(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="XLXN_94(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="ADDER_32" name="XLXI_15">
            <blockpin signalname="RAM4(31:0)" name="a(31:0)" />
            <blockpin signalname="RAM2(31:0)" name="b(31:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="CU_bus(0)" name="add" />
            <blockpin signalname="CE" name="ce" />
            <blockpin signalname="ADDER_OUT(31:0)" name="s(31:0)" />
        </block>
        <block symbolname="DK_register32" name="XLXI_17">
            <blockpin signalname="CU_bus(2)" name="ld" />
            <blockpin signalname="CU_bus(1)" name="clr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="ADDER_OUT(31:0)" name="d(31:0)" />
            <blockpin signalname="DK_RES(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="MUX_32" name="XLXI_18">
            <blockpin signalname="CU_bus(23)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RAM3_MUL_B(31:0)" name="data1(31:0)" />
            <blockpin signalname="RAM1(31:0)" name="data2(31:0)" />
            <blockpin signalname="MUX1_MUL_A(31:0)" name="data_o(31:0)" />
        </block>
        <block symbolname="MUX_32" name="XLXI_19">
            <blockpin signalname="CU_bus(22)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_93(31:0)" name="data1(31:0)" />
            <blockpin signalname="MUL_OUT_RAM2_RAM4(31:0)" name="data2(31:0)" />
            <blockpin signalname="MUX2(31:0)" name="data_o(31:0)" />
        </block>
        <block symbolname="MUX_32" name="XLXI_20">
            <blockpin signalname="CU_bus(21)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_92(31:0)" name="data1(31:0)" />
            <blockpin signalname="ADDER_OUT(31:0)" name="data2(31:0)" />
            <blockpin signalname="MUX3(31:0)" name="data_o(31:0)" />
        </block>
        <block symbolname="MUX_32" name="XLXI_21">
            <blockpin signalname="CU_bus(20)" name="s0" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_94(31:0)" name="data1(31:0)" />
            <blockpin signalname="MUL_OUT_RAM2_RAM4(31:0)" name="data2(31:0)" />
            <blockpin signalname="MUX4(31:0)" name="data_o(31:0)" />
        </block>
        <block symbolname="RAM_32" name="XLXI_26">
            <blockpin signalname="ZERO_bit" name="WE" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CU_bus(19)" name="OE" />
            <blockpin signalname="ZERO(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="DI(31:0)" />
            <blockpin signalname="RAM1(31:0)" name="DQ(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="RAM_32" name="XLXI_27">
            <blockpin signalname="ZERO_bit" name="WE" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CU_bus(18)" name="OE" />
            <blockpin signalname="CU_bus(15:12)" name="A(3:0)" />
            <blockpin signalname="MUX2(31:0)" name="DI(31:0)" />
            <blockpin signalname="RAM2(31:0)" name="DQ(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="RAM_32" name="XLXI_30">
            <blockpin signalname="ZERO_bit" name="WE" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CU_bus(17)" name="OE" />
            <blockpin signalname="CU_bus(11:8)" name="A(3:0)" />
            <blockpin signalname="MUX3(31:0)" name="DI(31:0)" />
            <blockpin signalname="RAM3_MUL_B(31:0)" name="DQ(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="RAM_32" name="XLXI_34">
            <blockpin signalname="ZERO_bit" name="WE" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CU_bus(16)" name="OE" />
            <blockpin signalname="CU_bus(7:4)" name="A(3:0)" />
            <blockpin signalname="MUX4(31:0)" name="DI(31:0)" />
            <blockpin signalname="RAM4(31:0)" name="DQ(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="6400" height="6400">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="4144" y="3184" name="MUL" orien="R0">
        </instance>
        <branch name="MUX1_MUL_A(31:0)">
            <wire x2="4144" y1="3264" y2="3264" x1="3936" />
        </branch>
        <branch name="CU_bus(23:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1552" type="branch" />
            <wire x2="1680" y1="1072" y2="1072" x1="1456" />
            <wire x2="1680" y1="1072" y2="1248" x1="1680" />
            <wire x2="1680" y1="1248" y2="1344" x1="1680" />
            <wire x2="1680" y1="1344" y2="1408" x1="1680" />
            <wire x2="1680" y1="1408" y2="1520" x1="1680" />
            <wire x2="1680" y1="1520" y2="1552" x1="1680" />
            <wire x2="1680" y1="1552" y2="1744" x1="1680" />
            <wire x2="1680" y1="1744" y2="1872" x1="1680" />
            <wire x2="1680" y1="1872" y2="1984" x1="1680" />
            <wire x2="1680" y1="1984" y2="2080" x1="1680" />
            <wire x2="1680" y1="2080" y2="2192" x1="1680" />
            <wire x2="1680" y1="2192" y2="2304" x1="1680" />
            <wire x2="1680" y1="2304" y2="2448" x1="1680" />
            <wire x2="1680" y1="2448" y2="2784" x1="1680" />
            <wire x2="1680" y1="2784" y2="2880" x1="1680" />
            <wire x2="1680" y1="2880" y2="2976" x1="1680" />
            <wire x2="1680" y1="2976" y2="2992" x1="1680" />
            <wire x2="1680" y1="2992" y2="2992" x1="1664" />
            <wire x2="1664" y1="2992" y2="3024" x1="1664" />
            <wire x2="1680" y1="3024" y2="3024" x1="1664" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="1652" y="3152">A</text>
        <text style="fontsize:64;fontname:Arial" x="4052" y="2688">C</text>
        <bustap x2="1776" y1="2976" y2="2976" x1="1680" />
        <branch name="CU_bus(23)">
            <wire x2="2656" y1="1248" y2="1248" x1="1776" />
            <wire x2="2656" y1="1248" y2="3264" x1="2656" />
            <wire x2="3552" y1="3264" y2="3264" x1="2656" />
        </branch>
        <branch name="CU_bus(20)">
            <wire x2="1824" y1="1520" y2="1520" x1="1776" />
            <wire x2="1824" y1="1520" y2="2976" x1="1824" />
            <wire x2="4592" y1="2976" y2="2976" x1="1824" />
            <wire x2="4592" y1="2752" y2="2976" x1="4592" />
            <wire x2="5264" y1="2752" y2="2752" x1="4592" />
        </branch>
        <branch name="MUX2(31:0)">
            <wire x2="3024" y1="2528" y2="2528" x1="3008" />
            <wire x2="3008" y1="2528" y2="2640" x1="3008" />
            <wire x2="3408" y1="2640" y2="2640" x1="3008" />
            <wire x2="3408" y1="2640" y2="2880" x1="3408" />
            <wire x2="3408" y1="2880" y2="2880" x1="3344" />
        </branch>
        <branch name="RAM1(31:0)">
            <wire x2="2496" y1="3184" y2="3184" x1="2432" />
            <wire x2="2496" y1="3184" y2="3392" x1="2496" />
            <wire x2="3552" y1="3392" y2="3392" x1="2496" />
        </branch>
        <branch name="MUX3(31:0)">
            <wire x2="4096" y1="2576" y2="2672" x1="4096" />
            <wire x2="4576" y1="2672" y2="2672" x1="4096" />
            <wire x2="4576" y1="2672" y2="2752" x1="4576" />
            <wire x2="4128" y1="2576" y2="2576" x1="4096" />
            <wire x2="4576" y1="2752" y2="2752" x1="4512" />
        </branch>
        <branch name="RAM3_MUL_B(31:0)">
            <wire x2="3488" y1="3152" y2="3328" x1="3488" />
            <wire x2="3552" y1="3328" y2="3328" x1="3488" />
            <wire x2="3488" y1="3328" y2="3488" x1="3488" />
            <wire x2="4000" y1="3488" y2="3488" x1="3488" />
            <wire x2="4640" y1="3152" y2="3152" x1="3488" />
            <wire x2="4000" y1="3328" y2="3488" x1="4000" />
            <wire x2="4144" y1="3328" y2="3328" x1="4000" />
            <wire x2="4640" y1="2320" y2="2320" x1="4512" />
            <wire x2="4640" y1="2320" y2="3152" x1="4640" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="5172" y="2656">D</text>
        <branch name="MUX4(31:0)">
            <wire x2="5232" y1="2560" y2="2656" x1="5232" />
            <wire x2="5712" y1="2656" y2="2656" x1="5232" />
            <wire x2="5712" y1="2656" y2="2752" x1="5712" />
            <wire x2="5264" y1="2560" y2="2560" x1="5232" />
            <wire x2="5712" y1="2752" y2="2752" x1="5648" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="2936" y="2688">B</text>
        <branch name="CU_bus(22)">
            <wire x2="2928" y1="1344" y2="1344" x1="1776" />
            <wire x2="2928" y1="1344" y2="2880" x1="2928" />
            <wire x2="2960" y1="2880" y2="2880" x1="2928" />
        </branch>
        <bustap x2="1776" y1="1248" y2="1248" x1="1680" />
        <bustap x2="1776" y1="1344" y2="1344" x1="1680" />
        <bustap x2="1776" y1="1408" y2="1408" x1="1680" />
        <bustap x2="1776" y1="1520" y2="1520" x1="1680" />
        <branch name="ZERO(3:0)">
            <wire x2="2048" y1="3376" y2="3376" x1="1840" />
        </branch>
        <branch name="ZERO_bit">
            <wire x2="2048" y1="3184" y2="3184" x1="1968" />
            <wire x2="1968" y1="3184" y2="3552" x1="1968" />
            <wire x2="2480" y1="3552" y2="3552" x1="1968" />
            <wire x2="2480" y1="2272" y2="2272" x1="2304" />
            <wire x2="2576" y1="2272" y2="2272" x1="2480" />
            <wire x2="3024" y1="2272" y2="2272" x1="2576" />
            <wire x2="2480" y1="2272" y2="3552" x1="2480" />
            <wire x2="2576" y1="2176" y2="2272" x1="2576" />
            <wire x2="3472" y1="2176" y2="2176" x1="2576" />
            <wire x2="3472" y1="2176" y2="2320" x1="3472" />
            <wire x2="4128" y1="2320" y2="2320" x1="3472" />
            <wire x2="4576" y1="2176" y2="2176" x1="3472" />
            <wire x2="4576" y1="2176" y2="2304" x1="4576" />
            <wire x2="5264" y1="2304" y2="2304" x1="4576" />
        </branch>
        <iomarker fontsize="28" x="2304" y="2272" name="ZERO_bit" orien="R180" />
        <bustap x2="1776" y1="1744" y2="1744" x1="1680" />
        <bustap x2="1776" y1="1872" y2="1872" x1="1680" />
        <bustap x2="1776" y1="1984" y2="1984" x1="1680" />
        <bustap x2="1776" y1="2080" y2="2080" x1="1680" />
        <branch name="CU_bus(19)">
            <wire x2="1888" y1="1744" y2="1744" x1="1776" />
            <wire x2="1888" y1="1744" y2="3312" x1="1888" />
            <wire x2="2048" y1="3312" y2="3312" x1="1888" />
        </branch>
        <branch name="CU_bus(18)">
            <wire x2="2400" y1="1872" y2="1872" x1="1776" />
            <wire x2="2400" y1="1872" y2="2400" x1="2400" />
            <wire x2="3024" y1="2400" y2="2400" x1="2400" />
        </branch>
        <branch name="CU_bus(17)">
            <wire x2="3488" y1="1984" y2="1984" x1="1776" />
            <wire x2="3488" y1="1984" y2="2448" x1="3488" />
            <wire x2="4128" y1="2448" y2="2448" x1="3488" />
        </branch>
        <branch name="CU_bus(16)">
            <wire x2="4656" y1="2080" y2="2080" x1="1776" />
            <wire x2="4656" y1="2080" y2="2432" x1="4656" />
            <wire x2="5264" y1="2432" y2="2432" x1="4656" />
        </branch>
        <bustap x2="1776" y1="2192" y2="2192" x1="1680" />
        <bustap x2="1776" y1="2304" y2="2304" x1="1680" />
        <bustap x2="1776" y1="2448" y2="2448" x1="1680" />
        <branch name="CU_bus(15:12)">
            <wire x2="2384" y1="2192" y2="2192" x1="1776" />
            <wire x2="2384" y1="2192" y2="2464" x1="2384" />
            <wire x2="3024" y1="2464" y2="2464" x1="2384" />
        </branch>
        <branch name="CU_bus(11:8)">
            <wire x2="1856" y1="2304" y2="2304" x1="1776" />
            <wire x2="1856" y1="2304" y2="2624" x1="1856" />
            <wire x2="3472" y1="2624" y2="2624" x1="1856" />
            <wire x2="3472" y1="2512" y2="2624" x1="3472" />
            <wire x2="4128" y1="2512" y2="2512" x1="3472" />
        </branch>
        <branch name="CU_bus(7:4)">
            <wire x2="1840" y1="2448" y2="2448" x1="1776" />
            <wire x2="1840" y1="2448" y2="2704" x1="1840" />
            <wire x2="4592" y1="2704" y2="2704" x1="1840" />
            <wire x2="4592" y1="2496" y2="2704" x1="4592" />
            <wire x2="5264" y1="2496" y2="2496" x1="4592" />
        </branch>
        <branch name="XLXN_90(3:0)">
            <wire x2="1072" y1="1136" y2="1136" x1="1056" />
            <wire x2="1056" y1="1136" y2="1216" x1="1056" />
            <wire x2="1536" y1="1216" y2="1216" x1="1056" />
            <wire x2="1536" y1="1216" y2="1408" x1="1536" />
            <wire x2="1536" y1="1408" y2="1408" x1="1376" />
        </branch>
        <instance x="1072" y="1168" name="ROM" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1840" y="3376" name="ZERO(3:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="1344" name="CLK" orien="R180" />
        <branch name="XLXN_91(31:0)">
            <wire x2="2048" y1="3440" y2="3440" x1="1632" />
        </branch>
        <instance x="1248" y="3472" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_92(31:0)">
            <wire x2="4128" y1="2816" y2="2816" x1="4016" />
        </branch>
        <instance x="3632" y="2848" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_93(31:0)">
            <wire x2="2944" y1="2848" y2="2848" x1="2848" />
            <wire x2="2944" y1="2848" y2="2944" x1="2944" />
            <wire x2="2960" y1="2944" y2="2944" x1="2944" />
        </branch>
        <branch name="XLXN_94(31:0)">
            <wire x2="5264" y1="2816" y2="2816" x1="5184" />
        </branch>
        <instance x="4800" y="2848" name="XLXI_13" orien="R0">
        </instance>
        <branch name="DK_D(7:0)">
            <wire x2="4800" y1="2816" y2="2816" x1="4768" />
        </branch>
        <iomarker fontsize="28" x="4768" y="2816" name="DK_D(7:0)" orien="R180" />
        <branch name="DK_C(7:0)">
            <wire x2="3632" y1="2816" y2="2816" x1="3600" />
        </branch>
        <iomarker fontsize="28" x="3600" y="2816" name="DK_C(7:0)" orien="R180" />
        <instance x="2464" y="2880" name="XLXI_12" orien="R0">
        </instance>
        <branch name="DK_B(7:0)">
            <wire x2="2464" y1="2848" y2="2848" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2432" y="2848" name="DK_B(7:0)" orien="R180" />
        <branch name="DK_A(7:0)">
            <wire x2="1248" y1="3440" y2="3440" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="3440" name="DK_A(7:0)" orien="R180" />
        <branch name="CE">
            <wire x2="1952" y1="2720" y2="3248" x1="1952" />
            <wire x2="2048" y1="3248" y2="3248" x1="1952" />
            <wire x2="3920" y1="2720" y2="2720" x1="1952" />
            <wire x2="2944" y1="1888" y2="2336" x1="2944" />
            <wire x2="3024" y1="2336" y2="2336" x1="2944" />
            <wire x2="3792" y1="1888" y2="1888" x1="2944" />
            <wire x2="3792" y1="1888" y2="1920" x1="3792" />
            <wire x2="3792" y1="1920" y2="2384" x1="3792" />
            <wire x2="4128" y1="2384" y2="2384" x1="3792" />
            <wire x2="3792" y1="1776" y2="1776" x1="3696" />
            <wire x2="3792" y1="1776" y2="1888" x1="3792" />
            <wire x2="3920" y1="1776" y2="1776" x1="3792" />
            <wire x2="3920" y1="1776" y2="2720" x1="3920" />
            <wire x2="3984" y1="1776" y2="1776" x1="3920" />
            <wire x2="3792" y1="1920" y2="1920" x1="3776" />
            <wire x2="3776" y1="1920" y2="2000" x1="3776" />
            <wire x2="4560" y1="2000" y2="2000" x1="3776" />
            <wire x2="4560" y1="2000" y2="2368" x1="4560" />
            <wire x2="5264" y1="2368" y2="2368" x1="4560" />
        </branch>
        <iomarker fontsize="28" x="1680" y="3024" name="CU_bus(23:0)" orien="R0" />
        <branch name="CLK">
            <wire x2="640" y1="1344" y2="1344" x1="464" />
            <wire x2="640" y1="1344" y2="1472" x1="640" />
            <wire x2="800" y1="1472" y2="1472" x1="640" />
            <wire x2="640" y1="1344" y2="1664" x1="640" />
            <wire x2="640" y1="1664" y2="1760" x1="640" />
            <wire x2="2496" y1="1760" y2="1760" x1="640" />
            <wire x2="2496" y1="1760" y2="2048" x1="2496" />
            <wire x2="4080" y1="2048" y2="2048" x1="2496" />
            <wire x2="4080" y1="2048" y2="3424" x1="4080" />
            <wire x2="4144" y1="3424" y2="3424" x1="4080" />
            <wire x2="640" y1="1664" y2="2016" x1="640" />
            <wire x2="4336" y1="2016" y2="2016" x1="640" />
            <wire x2="640" y1="2016" y2="3072" x1="640" />
            <wire x2="2000" y1="3072" y2="3072" x1="640" />
            <wire x2="2752" y1="3072" y2="3072" x1="2000" />
            <wire x2="2752" y1="3072" y2="3472" x1="2752" />
            <wire x2="3072" y1="3472" y2="3472" x1="2752" />
            <wire x2="3072" y1="3472" y2="3680" x1="3072" />
            <wire x2="4800" y1="3680" y2="3680" x1="3072" />
            <wire x2="2800" y1="3072" y2="3072" x1="2752" />
            <wire x2="2960" y1="3072" y2="3072" x1="2800" />
            <wire x2="2800" y1="3072" y2="3136" x1="2800" />
            <wire x2="2000" y1="3072" y2="3088" x1="2000" />
            <wire x2="1072" y1="1072" y2="1072" x1="640" />
            <wire x2="640" y1="1072" y2="1344" x1="640" />
            <wire x2="2000" y1="3088" y2="3088" x1="1984" />
            <wire x2="1984" y1="3088" y2="3504" x1="1984" />
            <wire x2="2048" y1="3504" y2="3504" x1="1984" />
            <wire x2="2192" y1="2592" y2="3136" x1="2192" />
            <wire x2="2800" y1="3136" y2="3136" x1="2192" />
            <wire x2="3024" y1="2592" y2="2592" x1="2192" />
            <wire x2="3984" y1="1680" y2="1680" x1="2496" />
            <wire x2="2496" y1="1680" y2="1760" x1="2496" />
            <wire x2="3072" y1="3456" y2="3472" x1="3072" />
            <wire x2="3200" y1="3456" y2="3456" x1="3072" />
            <wire x2="3552" y1="3456" y2="3456" x1="3200" />
            <wire x2="3200" y1="3440" y2="3456" x1="3200" />
            <wire x2="3408" y1="3440" y2="3440" x1="3200" />
            <wire x2="3408" y1="2944" y2="3440" x1="3408" />
            <wire x2="3952" y1="2944" y2="2944" x1="3408" />
            <wire x2="4128" y1="2944" y2="2944" x1="3952" />
            <wire x2="3952" y1="2944" y2="2960" x1="3952" />
            <wire x2="4048" y1="2960" y2="2960" x1="3952" />
            <wire x2="4048" y1="2640" y2="2960" x1="4048" />
            <wire x2="4128" y1="2640" y2="2640" x1="4048" />
            <wire x2="4336" y1="1776" y2="2016" x1="4336" />
            <wire x2="4512" y1="1776" y2="1776" x1="4336" />
            <wire x2="4800" y1="2944" y2="3680" x1="4800" />
            <wire x2="5168" y1="2944" y2="2944" x1="4800" />
            <wire x2="5264" y1="2944" y2="2944" x1="5168" />
            <wire x2="5168" y1="2928" y2="2944" x1="5168" />
            <wire x2="5248" y1="2928" y2="2928" x1="5168" />
            <wire x2="5248" y1="2624" y2="2928" x1="5248" />
            <wire x2="5264" y1="2624" y2="2624" x1="5248" />
        </branch>
        <instance x="800" y="1264" name="CNT" orien="R0">
        </instance>
        <branch name="RAM2(31:0)">
            <wire x2="3408" y1="2256" y2="2272" x1="3408" />
            <wire x2="3712" y1="2256" y2="2256" x1="3408" />
            <wire x2="3712" y1="1648" y2="2256" x1="3712" />
            <wire x2="3984" y1="1648" y2="1648" x1="3712" />
        </branch>
        <branch name="CU_bus(0)">
            <wire x2="1792" y1="2976" y2="2976" x1="1776" />
            <wire x2="3984" y1="1712" y2="1712" x1="1792" />
            <wire x2="1792" y1="1712" y2="2976" x1="1792" />
        </branch>
        <branch name="RAM4(31:0)">
            <wire x2="3920" y1="1488" y2="1616" x1="3920" />
            <wire x2="3984" y1="1616" y2="1616" x1="3920" />
            <wire x2="5664" y1="1488" y2="1488" x1="3920" />
            <wire x2="5664" y1="1488" y2="2304" x1="5664" />
            <wire x2="5664" y1="2304" y2="2304" x1="5648" />
        </branch>
        <iomarker fontsize="28" x="3696" y="1776" name="CE" orien="R180" />
        <instance x="3984" y="1536" name="XLXI_15" orien="R0">
        </instance>
        <branch name="ADDER_OUT(31:0)">
            <wire x2="4064" y1="2224" y2="2880" x1="4064" />
            <wire x2="4128" y1="2880" y2="2880" x1="4064" />
            <wire x2="4384" y1="2224" y2="2224" x1="4064" />
            <wire x2="4384" y1="1648" y2="1648" x1="4272" />
            <wire x2="4384" y1="1648" y2="2224" x1="4384" />
            <wire x2="4448" y1="1648" y2="1648" x1="4384" />
            <wire x2="4448" y1="1648" y2="1840" x1="4448" />
            <wire x2="4512" y1="1840" y2="1840" x1="4448" />
        </branch>
        <branch name="DK_RES(31:0)">
            <wire x2="5008" y1="1648" y2="1648" x1="4896" />
        </branch>
        <iomarker fontsize="28" x="5008" y="1648" name="DK_RES(31:0)" orien="R0" />
        <instance x="4512" y="1872" name="XLXI_17" orien="R0">
        </instance>
        <bustap x2="1776" y1="2880" y2="2880" x1="1680" />
        <bustap x2="1776" y1="2784" y2="2784" x1="1680" />
        <branch name="CU_bus(2)">
            <wire x2="1808" y1="2784" y2="2784" x1="1776" />
            <wire x2="1808" y1="2160" y2="2784" x1="1808" />
            <wire x2="4496" y1="2160" y2="2160" x1="1808" />
            <wire x2="4496" y1="1648" y2="2160" x1="4496" />
            <wire x2="4512" y1="1648" y2="1648" x1="4496" />
        </branch>
        <branch name="CU_bus(1)">
            <wire x2="1920" y1="2880" y2="2880" x1="1776" />
            <wire x2="1920" y1="2208" y2="2880" x1="1920" />
            <wire x2="4320" y1="2208" y2="2208" x1="1920" />
            <wire x2="4320" y1="1712" y2="2208" x1="4320" />
            <wire x2="4512" y1="1712" y2="1712" x1="4320" />
        </branch>
        <instance x="3552" y="3424" name="XLXI_18" orien="R0">
        </instance>
        <instance x="2960" y="3040" name="XLXI_19" orien="R0">
        </instance>
        <instance x="4128" y="2912" name="XLXI_20" orien="R0">
        </instance>
        <instance x="5264" y="2912" name="XLXI_21" orien="R0">
        </instance>
        <instance x="2048" y="3408" name="XLXI_26" orien="R0">
        </instance>
        <instance x="3024" y="2496" name="XLXI_27" orien="R0">
        </instance>
        <instance x="4128" y="2544" name="XLXI_30" orien="R0">
        </instance>
        <branch name="MUL_OUT_RAM2_RAM4(31:0)">
            <wire x2="2960" y1="3008" y2="3008" x1="2880" />
            <wire x2="2880" y1="3008" y2="3120" x1="2880" />
            <wire x2="4960" y1="3120" y2="3120" x1="2880" />
            <wire x2="4960" y1="3120" y2="3296" x1="4960" />
            <wire x2="4720" y1="3264" y2="3296" x1="4720" />
            <wire x2="4960" y1="3296" y2="3296" x1="4720" />
            <wire x2="5264" y1="2880" y2="2880" x1="4960" />
            <wire x2="4960" y1="2880" y2="3120" x1="4960" />
        </branch>
        <branch name="CU_bus(21)">
            <wire x2="2016" y1="1408" y2="1408" x1="1776" />
            <wire x2="2016" y1="1408" y2="2992" x1="2016" />
            <wire x2="2032" y1="2992" y2="2992" x1="2016" />
            <wire x2="3424" y1="2992" y2="2992" x1="2032" />
            <wire x2="3424" y1="2752" y2="2992" x1="3424" />
            <wire x2="4128" y1="2752" y2="2752" x1="3424" />
        </branch>
        <instance x="5264" y="2528" name="XLXI_34" orien="R0">
        </instance>
    </sheet>
</drawing>