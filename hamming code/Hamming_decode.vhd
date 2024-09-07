

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Hamming_Decode is
    Port (
        code_in : in  STD_LOGIC_VECTOR (6 downto 0);
        data_out : out STD_LOGIC_VECTOR (3 downto 0);
        error_detected : out STD_LOGIC;
        corrected_code : out STD_LOGIC_VECTOR (6 downto 0)
    );
end Hamming_Decode;

architecture Behavioral of Hamming_Decode is
begin
    process(code_in)
        variable c : STD_LOGIC_VECTOR(6 downto 0);
        variable p : STD_LOGIC_VECTOR(2 downto 0);
        variable p_unsign : unsigned(2 downto 0);
        variable error_pos : integer;
    begin
        c := code_in;

        p(0) := c(6) xor c(4) xor c(2) xor c(0); -- p1
        p(1) := c(5) xor c(4) xor c(1) xor c(0); -- p2
        p(2) := c(3) xor c(2) xor c(1) xor c(0); -- p3
        p_unsign := unsigned(p);
        error_pos := to_integer(p_unsign);

        if error_pos /= 0 and error_pos <= 7 then
          
            c(error_pos - 1) := not c(error_pos - 1);
            error_detected <= '1';
        else
            error_detected <= '0';
        end if;
        corrected_code <= c;
        data_out <= c(4 downto 1) & c(0);
    end process;
end Behavioral;
