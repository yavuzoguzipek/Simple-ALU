library verilog;
use verilog.vl_types.all;
entity Adder1 is
    port(
        x               : in     vl_logic;
        y               : in     vl_logic;
        result          : out    vl_logic;
        carryOut        : out    vl_logic;
        carryIn         : in     vl_logic
    );
end Adder1;
