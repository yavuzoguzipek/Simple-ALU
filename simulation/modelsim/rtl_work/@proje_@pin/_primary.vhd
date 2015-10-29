library verilog;
use verilog.vl_types.all;
entity Proje_Pin is
    port(
        hex0            : out    vl_logic_vector(6 downto 0);
        led             : out    vl_logic_vector(9 downto 0);
        sw              : in     vl_logic_vector(9 downto 0)
    );
end Proje_Pin;
