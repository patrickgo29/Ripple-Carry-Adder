library verilog;
use verilog.vl_types.all;
entity fourbitRCAdder is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sum             : out    vl_logic_vector(3 downto 0);
        carry           : out    vl_logic
    );
end fourbitRCAdder;
