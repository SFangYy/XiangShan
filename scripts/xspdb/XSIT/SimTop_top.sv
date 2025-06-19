module SimTop_top();

/*verilator public_flat_rw_on*/
  logic  clock;
  logic  reset;
  logic [63:0] difftest_exit;
  logic [63:0] difftest_step;
  logic  difftest_perfCtrl_clean;
  logic  difftest_perfCtrl_dump;
  logic [63:0] difftest_logCtrl_begin;
  logic [63:0] difftest_logCtrl_end;
  logic [63:0] difftest_logCtrl_level;
  logic  difftest_uart_out_valid;
  logic [7:0] difftest_uart_out_ch;
  logic  difftest_uart_in_valid;
  logic [7:0] difftest_uart_in_ch;
/*verilator public_off*/


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


  export "DPI-C" function get_clockxxPfBDHPPZEux;
  export "DPI-C" function set_clockxxPfBDHPPZEux;
  export "DPI-C" function get_resetxxPfBDHPPZEux;
  export "DPI-C" function set_resetxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_exitxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_stepxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_perfCtrl_cleanxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_perfCtrl_cleanxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_perfCtrl_dumpxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_perfCtrl_dumpxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_logCtrl_beginxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_logCtrl_beginxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_logCtrl_endxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_logCtrl_endxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_logCtrl_levelxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_logCtrl_levelxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_uart_out_validxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_uart_out_chxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_uart_in_validxxPfBDHPPZEux;
  export "DPI-C" function get_difftest_uart_in_chxxPfBDHPPZEux;
  export "DPI-C" function set_difftest_uart_in_chxxPfBDHPPZEux;


  function void get_clockxxPfBDHPPZEux;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxPfBDHPPZEux;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxPfBDHPPZEux;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxPfBDHPPZEux;
    input logic  value;
    reset=value;
  endfunction

  function void get_difftest_exitxxPfBDHPPZEux;
    output logic [63:0] value;
    value=difftest_exit;
  endfunction

  function void get_difftest_stepxxPfBDHPPZEux;
    output logic [63:0] value;
    value=difftest_step;
  endfunction

  function void get_difftest_perfCtrl_cleanxxPfBDHPPZEux;
    output logic  value;
    value=difftest_perfCtrl_clean;
  endfunction

  function void set_difftest_perfCtrl_cleanxxPfBDHPPZEux;
    input logic  value;
    difftest_perfCtrl_clean=value;
  endfunction

  function void get_difftest_perfCtrl_dumpxxPfBDHPPZEux;
    output logic  value;
    value=difftest_perfCtrl_dump;
  endfunction

  function void set_difftest_perfCtrl_dumpxxPfBDHPPZEux;
    input logic  value;
    difftest_perfCtrl_dump=value;
  endfunction

  function void get_difftest_logCtrl_beginxxPfBDHPPZEux;
    output logic [63:0] value;
    value=difftest_logCtrl_begin;
  endfunction

  function void set_difftest_logCtrl_beginxxPfBDHPPZEux;
    input logic [63:0] value;
    difftest_logCtrl_begin=value;
  endfunction

  function void get_difftest_logCtrl_endxxPfBDHPPZEux;
    output logic [63:0] value;
    value=difftest_logCtrl_end;
  endfunction

  function void set_difftest_logCtrl_endxxPfBDHPPZEux;
    input logic [63:0] value;
    difftest_logCtrl_end=value;
  endfunction

  function void get_difftest_logCtrl_levelxxPfBDHPPZEux;
    output logic [63:0] value;
    value=difftest_logCtrl_level;
  endfunction

  function void set_difftest_logCtrl_levelxxPfBDHPPZEux;
    input logic [63:0] value;
    difftest_logCtrl_level=value;
  endfunction

  function void get_difftest_uart_out_validxxPfBDHPPZEux;
    output logic  value;
    value=difftest_uart_out_valid;
  endfunction

  function void get_difftest_uart_out_chxxPfBDHPPZEux;
    output logic [7:0] value;
    value=difftest_uart_out_ch;
  endfunction

  function void get_difftest_uart_in_validxxPfBDHPPZEux;
    output logic  value;
    value=difftest_uart_in_valid;
  endfunction

  function void get_difftest_uart_in_chxxPfBDHPPZEux;
    output logic [7:0] value;
    value=difftest_uart_in_ch;
  endfunction

  function void set_difftest_uart_in_chxxPfBDHPPZEux;
    input logic [7:0] value;
    difftest_uart_in_ch=value;
  endfunction



  initial begin
    $dumpfile("xs.fst");
    $dumpvars(0, SimTop_top);
  end

  export "DPI-C" function finish_PfBDHPPZEux;
  function void finish_PfBDHPPZEux;
    $finish;
  endfunction


endmodule
