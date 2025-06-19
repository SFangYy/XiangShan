module SimTop_top;

  wire  clock;
  wire  reset;
  wire [63:0] difftest_exit;
  wire [63:0] difftest_step;
  wire  difftest_perfCtrl_clean;
  wire  difftest_perfCtrl_dump;
  wire [63:0] difftest_logCtrl_begin;
  wire [63:0] difftest_logCtrl_end;
  wire [63:0] difftest_logCtrl_level;
  wire  difftest_uart_out_valid;
  wire [7:0] difftest_uart_out_ch;
  wire  difftest_uart_in_valid;
  wire [7:0] difftest_uart_in_ch;


 SimTop SimTop(
    .clock(clock),
    .reset(reset),
    .difftest_exit(difftest_exit),
    .difftest_step(difftest_step),
    .difftest_perfCtrl_clean(difftest_perfCtrl_clean),
    .difftest_perfCtrl_dump(difftest_perfCtrl_dump),
    .difftest_logCtrl_begin(difftest_logCtrl_begin),
    .difftest_logCtrl_end(difftest_logCtrl_end),
    .difftest_logCtrl_level(difftest_logCtrl_level),
    .difftest_uart_out_valid(difftest_uart_out_valid),
    .difftest_uart_out_ch(difftest_uart_out_ch),
    .difftest_uart_in_valid(difftest_uart_in_valid),
    .difftest_uart_in_ch(difftest_uart_in_ch)
 );


endmodule
