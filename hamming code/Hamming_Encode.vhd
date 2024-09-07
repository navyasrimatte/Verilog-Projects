


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Hamming_Encode is
    Port (
        data_in : in  STD_LOGIC_VECTOR (3 downto 0);
        code_out : out STD_LOGIC_VECTOR (6 downto 0)
    );
end Hamming_Encode;

architecture Behavioral of Hamming_Encode is
begin
    process(data_in)
        variable d : STD_LOGIC_VECTOR(3 downto 0);
        variable p : STD_LOGIC_VECTOR(2 downto 0);
    begin
        d := data_in;
        p(0) := d(0) xor d(1) xor d(2) xor d(3); 
        p(1) := d(0) xor d(1) xor d(2);           
        p(2) := d(0) xor d(1) xor d(3);          
        
        code_out(6) <= p(0);
        code_out(5) <= p(1);
        code_out(4) <= d(0);
        code_out(3) <= p(2);
        code_out(2) <= d(1);
        code_out(1) <= d(2);
        code_out(0) <= d(3);
    end process;
end Behavioral;


