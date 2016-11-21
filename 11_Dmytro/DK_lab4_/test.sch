<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DK_CLK" />
        <signal name="DK_RESET" />
        <signal name="DK_A(7:0)" />
        <signal name="DK_B(7:0)" />
        <signal name="DK_D(7:0)" />
        <signal name="DK_OUT(15:0)" />
        <port polarity="Input" name="DK_CLK" />
        <port polarity="Input" name="DK_RESET" />
        <port polarity="Input" name="DK_A(7:0)" />
        <port polarity="Input" name="DK_B(7:0)" />
        <port polarity="Input" name="DK_D(7:0)" />
        <port polarity="Output" name="DK_OUT(15:0)" />
        <blockdef name="dk_pipeline_mult2">
            <timestamp>2016-10-15T20:41:9</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="dk_pipeline_mult2" name="XLXI_7">
            <blockpin signalname="DK_CLK" name="dk_clk" />
            <blockpin signalname="DK_RESET" name="dk_reset" />
            <blockpin signalname="DK_A(7:0)" name="dk_a(7:0)" />
            <blockpin signalname="DK_B(7:0)" name="dk_b(7:0)" />
            <blockpin signalname="DK_D(7:0)" name="dk_d(7:0)" />
            <blockpin signalname="DK_OUT(15:0)" name="dk_y(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="2400" name="XLXI_7" orien="R0">
        </instance>
        <branch name="DK_CLK">
            <wire x2="496" y1="2112" y2="2112" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2112" name="DK_CLK" orien="R180" />
        <branch name="DK_RESET">
            <wire x2="496" y1="2176" y2="2176" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2176" name="DK_RESET" orien="R180" />
        <branch name="DK_A(7:0)">
            <wire x2="496" y1="2240" y2="2240" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2240" name="DK_A(7:0)" orien="R180" />
        <branch name="DK_B(7:0)">
            <wire x2="496" y1="2304" y2="2304" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2304" name="DK_B(7:0)" orien="R180" />
        <branch name="DK_D(7:0)">
            <wire x2="496" y1="2368" y2="2368" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2368" name="DK_D(7:0)" orien="R180" />
        <branch name="DK_OUT(15:0)">
            <wire x2="912" y1="2112" y2="2112" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="2112" name="DK_OUT(15:0)" orien="R0" />
    </sheet>
</drawing>