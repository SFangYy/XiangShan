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


  export "DPI-C" function get_clockxxPfBDHO7EfNI;
  export "DPI-C" function set_clockxxPfBDHO7EfNI;
  export "DPI-C" function get_resetxxPfBDHO7EfNI;
  export "DPI-C" function set_resetxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_exitxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_stepxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_perfCtrl_cleanxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_perfCtrl_cleanxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_perfCtrl_dumpxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_perfCtrl_dumpxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_logCtrl_beginxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_logCtrl_beginxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_logCtrl_endxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_logCtrl_endxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_logCtrl_levelxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_logCtrl_levelxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_uart_out_validxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_uart_out_chxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_uart_in_validxxPfBDHO7EfNI;
  export "DPI-C" function get_difftest_uart_in_chxxPfBDHO7EfNI;
  export "DPI-C" function set_difftest_uart_in_chxxPfBDHO7EfNI;


  function void get_clockxxPfBDHO7EfNI;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxPfBDHO7EfNI;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxPfBDHO7EfNI;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxPfBDHO7EfNI;
    input logic  value;
    reset=value;
  endfunction

  function void get_difftest_exitxxPfBDHO7EfNI;
    output logic [63:0] value;
    value=difftest_exit;
  endfunction

  function void get_difftest_stepxxPfBDHO7EfNI;
    output logic [63:0] value;
    value=difftest_step;
  endfunction

  function void get_difftest_perfCtrl_cleanxxPfBDHO7EfNI;
    output logic  value;
    value=difftest_perfCtrl_clean;
  endfunction

  function void set_difftest_perfCtrl_cleanxxPfBDHO7EfNI;
    input logic  value;
    difftest_perfCtrl_clean=value;
  endfunction

  function void get_difftest_perfCtrl_dumpxxPfBDHO7EfNI;
    output logic  value;
    value=difftest_perfCtrl_dump;
  endfunction

  function void set_difftest_perfCtrl_dumpxxPfBDHO7EfNI;
    input logic  value;
    difftest_perfCtrl_dump=value;
  endfunction

  function void get_difftest_logCtrl_beginxxPfBDHO7EfNI;
    output logic [63:0] value;
    value=difftest_logCtrl_begin;
  endfunction

  function void set_difftest_logCtrl_beginxxPfBDHO7EfNI;
    input logic [63:0] value;
    difftest_logCtrl_begin=value;
  endfunction

  function void get_difftest_logCtrl_endxxPfBDHO7EfNI;
    output logic [63:0] value;
    value=difftest_logCtrl_end;
  endfunction

  function void set_difftest_logCtrl_endxxPfBDHO7EfNI;
    input logic [63:0] value;
    difftest_logCtrl_end=value;
  endfunction

  function void get_difftest_logCtrl_levelxxPfBDHO7EfNI;
    output logic [63:0] value;
    value=difftest_logCtrl_level;
  endfunction

  function void set_difftest_logCtrl_levelxxPfBDHO7EfNI;
    input logic [63:0] value;
    difftest_logCtrl_level=value;
  endfunction

  function void get_difftest_uart_out_validxxPfBDHO7EfNI;
    output logic  value;
    value=difftest_uart_out_valid;
  endfunction

  function void get_difftest_uart_out_chxxPfBDHO7EfNI;
    output logic [7:0] value;
    value=difftest_uart_out_ch;
  endfunction

  function void get_difftest_uart_in_validxxPfBDHO7EfNI;
    output logic  value;
    value=difftest_uart_in_valid;
  endfunction

  function void get_difftest_uart_in_chxxPfBDHO7EfNI;
    output logic [7:0] value;
    value=difftest_uart_in_ch;
  endfunction

  function void set_difftest_uart_in_chxxPfBDHO7EfNI;
    input logic [7:0] value;
    difftest_uart_in_ch=value;
  endfunction



  initial begin
    $dumpfile("xs.fst");
    $dumpvars(0, SimTop_top);
  end

  export "DPI-C" function finish_PfBDHO7EfNI;
  function void finish_PfBDHO7EfNI;
    $finish;
  endfunction


endmodule
