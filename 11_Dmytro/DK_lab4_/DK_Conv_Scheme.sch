<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_39" />
        <signal name="ONE" />
        <signal name="c_mul_c(15:0)" />
        <signal name="buf_A_stage1(7:0)" />
        <signal name="buf_B_stage1(7:0)" />
        <signal name="from_mul_one_to_buf(15:0)" />
        <signal name="buf_B_stage2(7:0)" />
        <signal name="from_buf_to_sub_C(15:0)" />
        <signal name="buf_A_stage2(7:0)" />
        <signal name="buf_B_stage3(7:0)" />
        <signal name="buf_B_stage4(7:0)" />
        <signal name="XLXN_51(7:0)" />
        <signal name="DK_OUT2(31:0)" />
        <signal name="DK_C(7:0)" />
        <signal name="DK_D(7:0)" />
        <signal name="DK_A(7:0)" />
        <signal name="DK_B(7:0)" />
        <signal name="buf_C_stage0(15:0)" />
        <signal name="MUL2_OUT(31:0)" />
        <signal name="XLXN_59(31:0)" />
        <signal name="ADDER_OUT(31:0)" />
        <signal name="ADDER_B(31:0)" />
        <signal name="ADDER_A(31:0)" />
        <signal name="MUL2_B(31:0)" />
        <signal name="XLXN_64(31:0)" />
        <signal name="from_buf_to_sub_D(7:0)" />
        <signal name="XLXN_66(7:0)" />
        <signal name="ZERO" />
        <signal name="XLXN_68" />
        <signal name="C" />
        <signal name="MUL2_A(31:0)" />
        <signal name="SUB_A(31:0)" />
        <signal name="SUB_B(31:0)" />
        <signal name="buf_A_stage3(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="CE" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="SUB_OUT(31:0)" />
        <signal name="XLXN_101(31:0)" />
        <signal name="CLR" />
        <signal name="XLXN_17" />
        <signal name="XLXN_104(7:0)" />
        <port polarity="Input" name="ONE" />
        <port polarity="Output" name="DK_OUT2(31:0)" />
        <port polarity="Input" name="DK_C(7:0)" />
        <port polarity="Input" name="DK_D(7:0)" />
        <port polarity="Input" name="DK_A(7:0)" />
        <port polarity="Input" name="DK_B(7:0)" />
        <port polarity="Input" name="ZERO" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="CLR" />
        <blockdef name="mult_Core">
            <timestamp>2016-10-21T16:22:8</timestamp>
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
        <blockdef name="MUL32">
            <timestamp>2016-11-6T16:23:42</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
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
        <blockdef name="BUS_16_32_CONV">
            <timestamp>2016-11-12T9:23:16</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="BUS_8_16_CONV">
            <timestamp>2016-11-12T9:40:2</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <blockdef name="BUS_8_32_CONV">
            <timestamp>2016-11-9T16:9:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="DK_register32">
            <timestamp>2016-11-14T9:54:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="ADDER_32" name="XLXI_200">
            <blockpin signalname="ADDER_A(31:0)" name="a(31:0)" />
            <blockpin signalname="ADDER_B(31:0)" name="b(31:0)" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="ONE" name="add" />
            <blockpin signalname="XLXN_14" name="ce" />
            <blockpin signalname="ADDER_OUT(31:0)" name="s(31:0)" />
        </block>
        <block symbolname="MUL32" name="XLXI_199">
            <blockpin signalname="MUL2_A(31:0)" name="a(31:0)" />
            <blockpin signalname="MUL2_B(31:0)" name="b(31:0)" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="MUL2_OUT(31:0)" name="p(31:0)" />
        </block>
        <block symbolname="BUS_16_32_CONV" name="XLXI_244">
            <blockpin signalname="from_buf_to_sub_C(15:0)" name="data_in(15:0)" />
            <blockpin signalname="SUB_A(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="ADDER_32" name="XLXI_252">
            <blockpin signalname="SUB_B(31:0)" name="a(31:0)" />
            <blockpin signalname="SUB_A(31:0)" name="b(31:0)" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="ZERO" name="add" />
            <blockpin signalname="XLXN_13" name="ce" />
            <blockpin signalname="SUB_OUT(31:0)" name="s(31:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_79">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="XLXN_32" name="CLR" />
            <blockpin signalname="buf_C_stage0(15:0)" name="D(15:0)" />
            <blockpin signalname="c_mul_c(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="BUS_8_16_CONV" name="XLXI_234">
            <blockpin signalname="DK_C(7:0)" name="data_in(7:0)" />
            <blockpin signalname="buf_C_stage0(15:0)" name="data_out(15:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_255">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_5" name="CE" />
            <blockpin signalname="XLXN_23" name="CLR" />
            <blockpin signalname="DK_A(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_A_stage1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_256">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_15" name="CE" />
            <blockpin signalname="XLXN_22" name="CLR" />
            <blockpin signalname="buf_A_stage1(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_A_stage2(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_257">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_16" name="CE" />
            <blockpin signalname="XLXN_31" name="CLR" />
            <blockpin signalname="buf_A_stage2(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_A_stage3(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_258">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_6" name="CE" />
            <blockpin signalname="XLXN_24" name="CLR" />
            <blockpin signalname="DK_B(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_B_stage1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_259">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="XLXN_25" name="CLR" />
            <blockpin signalname="buf_B_stage1(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_B_stage2(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_260">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_8" name="CE" />
            <blockpin signalname="XLXN_26" name="CLR" />
            <blockpin signalname="buf_B_stage2(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_B_stage3(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_261">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_9" name="CE" />
            <blockpin signalname="XLXN_27" name="CLR" />
            <blockpin signalname="buf_B_stage3(7:0)" name="D(7:0)" />
            <blockpin signalname="buf_B_stage4(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_262">
            <blockpin signalname="buf_B_stage4(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="ADDER_A(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_263">
            <blockpin signalname="from_buf_to_sub_D(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="SUB_B(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="BUS_8_32_CONV" name="XLXI_265">
            <blockpin signalname="buf_A_stage3(7:0)" name="in_sig(7:0)" />
            <blockpin signalname="MUL2_B(31:0)" name="out_sig(31:0)" />
        </block>
        <block symbolname="mult_Core" name="XLXI_76">
            <blockpin signalname="c_mul_c(15:0)" name="a(15:0)" />
            <blockpin signalname="c_mul_c(15:0)" name="b(15:0)" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="from_mul_one_to_buf(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="fd16ce" name="buf_c_mul_c">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_2" name="CE" />
            <blockpin signalname="XLXN_33" name="CLR" />
            <blockpin signalname="from_mul_one_to_buf(15:0)" name="D(15:0)" />
            <blockpin signalname="from_buf_to_sub_C(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_266">
            <blockpin signalname="XLXN_2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_267">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_253">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="XLXN_20" name="CLR" />
            <blockpin signalname="DK_D(7:0)" name="D(7:0)" />
            <blockpin name="Q(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_269">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_270">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_271">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_272">
            <blockpin signalname="XLXN_7" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_273">
            <blockpin signalname="XLXN_8" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_275">
            <blockpin signalname="XLXN_9" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_276">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_280">
            <blockpin signalname="XLXN_14" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_281">
            <blockpin signalname="XLXN_15" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_282">
            <blockpin signalname="XLXN_16" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_283">
            <blockpin signalname="XLXN_17" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_287">
            <blockpin signalname="XLXN_24" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_288">
            <blockpin signalname="XLXN_25" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_289">
            <blockpin signalname="XLXN_23" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_290">
            <blockpin signalname="XLXN_22" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_291">
            <blockpin signalname="XLXN_26" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_292">
            <blockpin signalname="XLXN_27" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_295">
            <blockpin signalname="XLXN_31" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_297">
            <blockpin signalname="XLXN_32" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_298">
            <blockpin signalname="XLXN_33" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_286">
            <blockpin signalname="XLXN_20" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_279">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_277">
            <blockpin signalname="XLXN_11" name="P" />
        </block>
        <block symbolname="DK_register32" name="XLXI_301">
            <blockpin signalname="CE" name="ld" />
            <blockpin signalname="CLR" name="clr" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="ADDER_OUT(31:0)" name="d(31:0)" />
            <blockpin signalname="DK_OUT2(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="DK_register32" name="XLXI_302">
            <blockpin signalname="XLXN_10" name="ld" />
            <blockpin signalname="CLR" name="clr" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="MUL2_OUT(31:0)" name="d(31:0)" />
            <blockpin signalname="ADDER_B(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="DK_register32" name="XLXI_303">
            <blockpin signalname="XLXN_11" name="ld" />
            <blockpin signalname="CLR" name="clr" />
            <blockpin signalname="C" name="clk" />
            <blockpin signalname="SUB_OUT(31:0)" name="d(31:0)" />
            <blockpin signalname="MUL2_A(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_254">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_17" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="D(7:0)" />
            <blockpin signalname="from_buf_to_sub_D(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_284">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_353">
            <blockpin name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(7:0)" />
            <blockpin name="Q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="2" width="6400" height="6400">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ONE">
            <wire x2="4416" y1="3840" y2="3840" x1="4256" />
            <wire x2="4432" y1="3824" y2="3824" x1="4416" />
            <wire x2="4416" y1="3824" y2="3840" x1="4416" />
        </branch>
        <branch name="c_mul_c(15:0)">
            <wire x2="1520" y1="1824" y2="1824" x1="1504" />
            <wire x2="1520" y1="1824" y2="1920" x1="1520" />
            <wire x2="1520" y1="1920" y2="1984" x1="1520" />
            <wire x2="1552" y1="1984" y2="1984" x1="1520" />
            <wire x2="1552" y1="1920" y2="1920" x1="1520" />
        </branch>
        <branch name="buf_A_stage1(7:0)">
            <wire x2="1792" y1="3152" y2="3152" x1="1552" />
        </branch>
        <branch name="buf_B_stage1(7:0)">
            <wire x2="1808" y1="3696" y2="3696" x1="1536" />
        </branch>
        <branch name="from_mul_one_to_buf(15:0)">
            <wire x2="2224" y1="1920" y2="1920" x1="2128" />
        </branch>
        <branch name="buf_B_stage2(7:0)">
            <wire x2="2208" y1="3696" y2="3696" x1="2192" />
            <wire x2="2704" y1="3696" y2="3696" x1="2208" />
        </branch>
        <branch name="from_buf_to_sub_C(15:0)">
            <wire x2="2624" y1="1920" y2="1920" x1="2608" />
            <wire x2="2624" y1="1920" y2="2240" x1="2624" />
            <wire x2="2720" y1="2240" y2="2240" x1="2624" />
        </branch>
        <branch name="buf_A_stage2(7:0)">
            <wire x2="2192" y1="3152" y2="3152" x1="2176" />
            <wire x2="2192" y1="3152" y2="3344" x1="2192" />
            <wire x2="2240" y1="3344" y2="3344" x1="2192" />
        </branch>
        <branch name="buf_B_stage3(7:0)">
            <wire x2="3104" y1="3696" y2="3696" x1="3088" />
            <wire x2="3104" y1="3696" y2="3760" x1="3104" />
            <wire x2="3280" y1="3760" y2="3760" x1="3104" />
            <wire x2="3296" y1="3760" y2="3760" x1="3280" />
        </branch>
        <instance x="4432" y="3648" name="XLXI_200" orien="R0">
        </instance>
        <branch name="buf_B_stage4(7:0)">
            <wire x2="3696" y1="3760" y2="3760" x1="3680" />
            <wire x2="3872" y1="3728" y2="3728" x1="3696" />
            <wire x2="3696" y1="3728" y2="3760" x1="3696" />
        </branch>
        <branch name="DK_OUT2(31:0)">
            <wire x2="5488" y1="3568" y2="3568" x1="5296" />
        </branch>
        <branch name="DK_C(7:0)">
            <wire x2="528" y1="1824" y2="1824" x1="496" />
        </branch>
        <branch name="DK_D(7:0)">
            <wire x2="1264" y1="2496" y2="2496" x1="432" />
        </branch>
        <branch name="DK_A(7:0)">
            <wire x2="1168" y1="3152" y2="3152" x1="464" />
        </branch>
        <branch name="DK_B(7:0)">
            <wire x2="1152" y1="3696" y2="3696" x1="432" />
        </branch>
        <branch name="buf_C_stage0(15:0)">
            <wire x2="1120" y1="1824" y2="1824" x1="960" />
        </branch>
        <branch name="MUL2_OUT(31:0)">
            <wire x2="3872" y1="4304" y2="4304" x1="3856" />
            <wire x2="3856" y1="4304" y2="4416" x1="3856" />
            <wire x2="4400" y1="4416" y2="4416" x1="3856" />
            <wire x2="4400" y1="3264" y2="3264" x1="3952" />
            <wire x2="4400" y1="3264" y2="4416" x1="4400" />
        </branch>
        <branch name="ADDER_OUT(31:0)">
            <wire x2="4912" y1="3760" y2="3760" x1="4720" />
        </branch>
        <branch name="ADDER_B(31:0)">
            <wire x2="4336" y1="4112" y2="4112" x1="4256" />
            <wire x2="4336" y1="3760" y2="4112" x1="4336" />
            <wire x2="4432" y1="3760" y2="3760" x1="4336" />
        </branch>
        <branch name="ADDER_A(31:0)">
            <wire x2="4432" y1="3728" y2="3728" x1="4256" />
        </branch>
        <branch name="MUL2_B(31:0)">
            <wire x2="3104" y1="3344" y2="3344" x1="3088" />
            <wire x2="3376" y1="3328" y2="3328" x1="3104" />
            <wire x2="3104" y1="3328" y2="3344" x1="3104" />
        </branch>
        <branch name="from_buf_to_sub_D(7:0)">
            <wire x2="2592" y1="2512" y2="2512" x1="2528" />
            <wire x2="2608" y1="2416" y2="2416" x1="2592" />
            <wire x2="2592" y1="2416" y2="2512" x1="2592" />
        </branch>
        <branch name="ZERO">
            <wire x2="3392" y1="2336" y2="2336" x1="3312" />
        </branch>
        <branch name="C">
            <wire x2="992" y1="1952" y2="1952" x1="816" />
            <wire x2="1088" y1="1952" y2="1952" x1="992" />
            <wire x2="1088" y1="1952" y2="2080" x1="1088" />
            <wire x2="1376" y1="2080" y2="2080" x1="1088" />
            <wire x2="1552" y1="2080" y2="2080" x1="1376" />
            <wire x2="1376" y1="2080" y2="2304" x1="1376" />
            <wire x2="2192" y1="2304" y2="2304" x1="1376" />
            <wire x2="1120" y1="1952" y2="1952" x1="1088" />
            <wire x2="992" y1="1952" y2="2624" x1="992" />
            <wire x2="1008" y1="2624" y2="2624" x1="992" />
            <wire x2="1104" y1="2624" y2="2624" x1="1008" />
            <wire x2="1104" y1="2624" y2="2976" x1="1104" />
            <wire x2="1648" y1="2976" y2="2976" x1="1104" />
            <wire x2="2336" y1="2976" y2="2976" x1="1648" />
            <wire x2="2336" y1="2976" y2="3200" x1="2336" />
            <wire x2="2656" y1="3200" y2="3200" x1="2336" />
            <wire x2="2656" y1="3200" y2="3424" x1="2656" />
            <wire x2="3376" y1="3424" y2="3424" x1="2656" />
            <wire x2="2512" y1="2976" y2="2976" x1="2336" />
            <wire x2="2912" y1="2976" y2="2976" x1="2512" />
            <wire x2="1648" y1="2976" y2="3280" x1="1648" />
            <wire x2="1680" y1="3280" y2="3280" x1="1648" />
            <wire x2="1792" y1="3280" y2="3280" x1="1680" />
            <wire x2="1680" y1="3280" y2="3472" x1="1680" />
            <wire x2="1680" y1="3472" y2="3824" x1="1680" />
            <wire x2="1712" y1="3824" y2="3824" x1="1680" />
            <wire x2="1808" y1="3824" y2="3824" x1="1712" />
            <wire x2="1712" y1="3824" y2="4432" x1="1712" />
            <wire x2="3712" y1="4432" y2="4432" x1="1712" />
            <wire x2="4800" y1="4432" y2="4432" x1="3712" />
            <wire x2="2208" y1="3472" y2="3472" x1="1680" />
            <wire x2="2240" y1="3472" y2="3472" x1="2208" />
            <wire x2="2208" y1="3472" y2="3824" x1="2208" />
            <wire x2="2464" y1="3824" y2="3824" x1="2208" />
            <wire x2="2704" y1="3824" y2="3824" x1="2464" />
            <wire x2="2464" y1="3824" y2="3984" x1="2464" />
            <wire x2="3152" y1="3984" y2="3984" x1="2464" />
            <wire x2="1184" y1="2624" y2="2624" x1="1104" />
            <wire x2="1264" y1="2624" y2="2624" x1="1184" />
            <wire x2="1184" y1="2624" y2="2784" x1="1184" />
            <wire x2="1712" y1="2784" y2="2784" x1="1184" />
            <wire x2="1008" y1="2624" y2="3280" x1="1008" />
            <wire x2="1040" y1="3280" y2="3280" x1="1008" />
            <wire x2="1168" y1="3280" y2="3280" x1="1040" />
            <wire x2="1040" y1="3280" y2="3824" x1="1040" />
            <wire x2="1152" y1="3824" y2="3824" x1="1040" />
            <wire x2="1712" y1="2720" y2="2784" x1="1712" />
            <wire x2="2144" y1="2720" y2="2720" x1="1712" />
            <wire x2="2144" y1="2640" y2="2720" x1="2144" />
            <wire x2="2192" y1="2048" y2="2304" x1="2192" />
            <wire x2="2224" y1="2048" y2="2048" x1="2192" />
            <wire x2="2512" y1="2304" y2="2976" x1="2512" />
            <wire x2="3392" y1="2304" y2="2304" x1="2512" />
            <wire x2="3152" y1="3888" y2="3984" x1="3152" />
            <wire x2="3296" y1="3888" y2="3888" x1="3152" />
            <wire x2="3712" y1="4240" y2="4432" x1="3712" />
            <wire x2="3744" y1="4240" y2="4240" x1="3712" />
            <wire x2="3872" y1="4240" y2="4240" x1="3744" />
            <wire x2="4432" y1="3792" y2="3792" x1="3744" />
            <wire x2="3744" y1="3792" y2="4240" x1="3744" />
            <wire x2="4800" y1="3696" y2="4432" x1="4800" />
            <wire x2="4912" y1="3696" y2="3696" x1="4800" />
        </branch>
        <instance x="3376" y="3184" name="XLXI_199" orien="R0">
        </instance>
        <branch name="MUL2_A(31:0)">
            <wire x2="3360" y1="2848" y2="2848" x1="3296" />
            <wire x2="3360" y1="2848" y2="3264" x1="3360" />
            <wire x2="3376" y1="3264" y2="3264" x1="3360" />
        </branch>
        <instance x="2720" y="2272" name="XLXI_244" orien="R0">
        </instance>
        <branch name="SUB_A(31:0)">
            <wire x2="3168" y1="2240" y2="2240" x1="3152" />
            <wire x2="3168" y1="2240" y2="2272" x1="3168" />
            <wire x2="3392" y1="2272" y2="2272" x1="3168" />
        </branch>
        <branch name="SUB_B(31:0)">
            <wire x2="3216" y1="2416" y2="2416" x1="2992" />
            <wire x2="3216" y1="2240" y2="2416" x1="3216" />
            <wire x2="3392" y1="2240" y2="2240" x1="3216" />
        </branch>
        <instance x="3392" y="2160" name="XLXI_252" orien="R0">
        </instance>
        <instance x="1120" y="2080" name="XLXI_79" orien="R0" />
        <instance x="528" y="1856" name="XLXI_234" orien="R0">
        </instance>
        <instance x="1168" y="3408" name="XLXI_255" orien="R0" />
        <instance x="1792" y="3408" name="XLXI_256" orien="R0" />
        <instance x="2240" y="3600" name="XLXI_257" orien="R0" />
        <instance x="1152" y="3952" name="XLXI_258" orien="R0" />
        <instance x="1808" y="3952" name="XLXI_259" orien="R0" />
        <instance x="2704" y="3952" name="XLXI_260" orien="R0" />
        <instance x="3296" y="4016" name="XLXI_261" orien="R0" />
        <instance x="3872" y="3760" name="XLXI_262" orien="R0">
        </instance>
        <instance x="2608" y="2448" name="XLXI_263" orien="R0">
        </instance>
        <instance x="2704" y="3376" name="XLXI_265" orien="R0">
        </instance>
        <branch name="buf_A_stage3(7:0)">
            <wire x2="2704" y1="3344" y2="3344" x1="2624" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2224" y1="1984" y2="1984" x1="2208" />
        </branch>
        <instance x="1552" y="1840" name="XLXI_76" orien="R0">
        </instance>
        <instance x="2224" y="2176" name="buf_c_mul_c" orien="R0" />
        <instance x="2208" y="2048" name="XLXI_266" orien="R270" />
        <branch name="XLXN_3">
            <wire x2="1120" y1="1888" y2="1888" x1="1088" />
        </branch>
        <instance x="1088" y="1952" name="XLXI_267" orien="R270" />
        <instance x="1264" y="2752" name="XLXI_253" orien="R0" />
        <instance x="1248" y="2624" name="XLXI_269" orien="R270" />
        <branch name="XLXN_4">
            <wire x2="1264" y1="2560" y2="2560" x1="1248" />
        </branch>
        <instance x="1152" y="3280" name="XLXI_270" orien="R270" />
        <branch name="XLXN_5">
            <wire x2="1168" y1="3216" y2="3216" x1="1152" />
        </branch>
        <instance x="1136" y="3824" name="XLXI_271" orien="R270" />
        <branch name="XLXN_6">
            <wire x2="1152" y1="3760" y2="3760" x1="1136" />
        </branch>
        <instance x="1776" y="3824" name="XLXI_272" orien="R270" />
        <branch name="XLXN_7">
            <wire x2="1808" y1="3760" y2="3760" x1="1776" />
        </branch>
        <instance x="2688" y="3824" name="XLXI_273" orien="R270" />
        <branch name="XLXN_8">
            <wire x2="2704" y1="3760" y2="3760" x1="2688" />
        </branch>
        <instance x="3280" y="3888" name="XLXI_275" orien="R270" />
        <branch name="XLXN_9">
            <wire x2="3296" y1="3824" y2="3824" x1="3280" />
        </branch>
        <instance x="3856" y="4176" name="XLXI_276" orien="R270" />
        <branch name="XLXN_10">
            <wire x2="3872" y1="4112" y2="4112" x1="3856" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2912" y1="2848" y2="2848" x1="2896" />
        </branch>
        <branch name="CE">
            <wire x2="4896" y1="3568" y2="3568" x1="4688" />
            <wire x2="4912" y1="3568" y2="3568" x1="4896" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="3392" y1="2400" y2="2400" x1="3296" />
        </branch>
        <instance x="4416" y="3952" name="XLXI_280" orien="R270" />
        <branch name="XLXN_14">
            <wire x2="4432" y1="3888" y2="3888" x1="4416" />
        </branch>
        <instance x="1776" y="3280" name="XLXI_281" orien="R270" />
        <branch name="XLXN_15">
            <wire x2="1792" y1="3216" y2="3216" x1="1776" />
        </branch>
        <instance x="2208" y="3472" name="XLXI_282" orien="R270" />
        <branch name="XLXN_16">
            <wire x2="2240" y1="3408" y2="3408" x1="2208" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2144" y1="2736" y2="2816" x1="2144" />
            <wire x2="2176" y1="2816" y2="2816" x1="2144" />
            <wire x2="2176" y1="2816" y2="2832" x1="2176" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1264" y1="2720" y2="2848" x1="1264" />
        </branch>
        <instance x="1072" y="4192" name="XLXI_287" orien="R0" />
        <instance x="1760" y="4176" name="XLXI_288" orien="R0" />
        <instance x="1088" y="3584" name="XLXI_289" orien="R0" />
        <instance x="1712" y="3648" name="XLXI_290" orien="R0" />
        <instance x="2640" y="4224" name="XLXI_291" orien="R0" />
        <instance x="3248" y="4208" name="XLXI_292" orien="R0" />
        <instance x="2256" y="3760" name="XLXI_295" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1792" y1="3376" y2="3376" x1="1776" />
            <wire x2="1776" y1="3376" y2="3520" x1="1776" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1168" y1="3376" y2="3376" x1="1152" />
            <wire x2="1152" y1="3376" y2="3456" x1="1152" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1152" y1="3920" y2="3920" x1="1136" />
            <wire x2="1136" y1="3920" y2="4064" x1="1136" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1808" y1="3920" y2="4032" x1="1808" />
            <wire x2="1824" y1="4032" y2="4032" x1="1808" />
            <wire x2="1824" y1="4032" y2="4048" x1="1824" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2704" y1="3920" y2="4080" x1="2704" />
            <wire x2="2704" y1="4080" y2="4096" x1="2704" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="3296" y1="3984" y2="4032" x1="3296" />
            <wire x2="3312" y1="4032" y2="4032" x1="3296" />
            <wire x2="3312" y1="4032" y2="4080" x1="3312" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2240" y1="3568" y2="3600" x1="2240" />
            <wire x2="2320" y1="3600" y2="3600" x1="2240" />
            <wire x2="2320" y1="3600" y2="3632" x1="2320" />
        </branch>
        <instance x="992" y="2288" name="XLXI_297" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1120" y1="2048" y2="2048" x1="1056" />
            <wire x2="1056" y1="2048" y2="2160" x1="1056" />
        </branch>
        <instance x="2176" y="2368" name="XLXI_298" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="2224" y1="2144" y2="2192" x1="2224" />
            <wire x2="2240" y1="2192" y2="2192" x1="2224" />
            <wire x2="2240" y1="2192" y2="2240" x1="2240" />
        </branch>
        <instance x="1200" y="2976" name="XLXI_286" orien="R0" />
        <instance x="3296" y="2464" name="XLXI_279" orien="R270" />
        <branch name="SUB_OUT(31:0)">
            <wire x2="2800" y1="3040" y2="3104" x1="2800" />
            <wire x2="3760" y1="3104" y2="3104" x1="2800" />
            <wire x2="2912" y1="3040" y2="3040" x1="2800" />
            <wire x2="3760" y1="2272" y2="2272" x1="3680" />
            <wire x2="3760" y1="2272" y2="3104" x1="3760" />
        </branch>
        <instance x="2896" y="2912" name="XLXI_277" orien="R270" />
        <branch name="CLR">
            <wire x2="2704" y1="2672" y2="2672" x1="2640" />
            <wire x2="2768" y1="2672" y2="2672" x1="2704" />
            <wire x2="2768" y1="2672" y2="2912" x1="2768" />
            <wire x2="2912" y1="2912" y2="2912" x1="2768" />
            <wire x2="2704" y1="2624" y2="2672" x1="2704" />
            <wire x2="3344" y1="2624" y2="2624" x1="2704" />
            <wire x2="3344" y1="2624" y2="2688" x1="3344" />
            <wire x2="4128" y1="2688" y2="2688" x1="3344" />
            <wire x2="4128" y1="2688" y2="3632" x1="4128" />
            <wire x2="4912" y1="3632" y2="3632" x1="4128" />
            <wire x2="3344" y1="2688" y2="3648" x1="3344" />
            <wire x2="3776" y1="3648" y2="3648" x1="3344" />
            <wire x2="3776" y1="3648" y2="4176" x1="3776" />
            <wire x2="3872" y1="4176" y2="4176" x1="3776" />
        </branch>
        <instance x="4912" y="3792" name="XLXI_301" orien="R0">
        </instance>
        <instance x="3872" y="4336" name="XLXI_302" orien="R0">
        </instance>
        <instance x="2912" y="3072" name="XLXI_303" orien="R0">
        </instance>
        <instance x="2112" y="2960" name="XLXI_284" orien="R0" />
        <iomarker fontsize="28" x="816" y="1952" name="C" orien="R180" />
        <iomarker fontsize="28" x="5488" y="3568" name="DK_OUT2(31:0)" orien="R0" />
        <iomarker fontsize="28" x="496" y="1824" name="DK_C(7:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="2496" name="DK_D(7:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="3152" name="DK_A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="3696" name="DK_B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="4256" y="3840" name="ONE" orien="R180" />
        <iomarker fontsize="28" x="3312" y="2336" name="ZERO" orien="R180" />
        <iomarker fontsize="28" x="2640" y="2672" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="4688" y="3568" name="CE" orien="R180" />
        <instance x="2144" y="2768" name="XLXI_254" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="2128" y1="2784" y2="2784" x1="2032" />
            <wire x2="2144" y1="2576" y2="2576" x1="2128" />
            <wire x2="2128" y1="2576" y2="2784" x1="2128" />
        </branch>
        <instance x="2032" y="2848" name="XLXI_283" orien="R270" />
        <instance x="1696" y="2688" name="XLXI_353" orien="R0" />
    </sheet>
</drawing>