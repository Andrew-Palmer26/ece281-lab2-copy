----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 07:15:23 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegDecoder_tb is
  --Port ( i_D : in STD_LOGIC_VECTOR (3 downto 0 );
       --  o_S : out STD_LOGIC_VECTOR (6 downto 0));
end sevenSegDecoder_tb;

architecture Behavioral of sevenSegDecoder_tb is
component sevenSegDecoder is
    port (
    o_S : out std_logic_vector(6 downto 0);
    i_D : in std_logic_vector(3 downto 0)
    );
    end component sevenSegDecoder;
signal w_sw : std_logic_vector(3 downto 0) := x"0";
signal w_seg: std_logic_vector(7 downto 0) := x"00";
begin

sevenSegDecoder_inst: sevenSegDecoder
port map(
i_D => w_sw,
o_S => w_seg(6 downto 0)
);
test_process : process
    begin
    w_seg(7) <= '0';
        w_sw <= x"0"; wait for 10 ns;
            assert w_seg = x"40" report "bad x0" severity error;
        w_sw <= x"1"; wait for 10 ns;
            assert w_seg = x"79" report "bad x1" severity error;
        w_sw <= x"2"; wait for 10 ns;
            assert w_seg = x"24" report "bad x2" severity error;
        w_sw <= x"3"; wait for 10 ns;
            assert w_seg = x"30" report "bad x3" severity error;
        w_sw <= x"4"; wait for 10 ns;
            assert w_seg = x"19" report "bad x4" severity error;
        w_sw <= x"5"; wait for 10 ns;
            assert w_seg = x"12" report "bad x5" severity error;
        w_sw <= x"6"; wait for 10 ns;
            assert w_seg = x"02" report "bad x6" severity error;
        w_sw <= x"7"; wait for 10 ns;
            assert w_seg = x"78" report "bad x7" severity error;    
        w_sw <= x"8"; wait for 10 ns;
            assert w_seg = x"00" report "bad x8" severity error;
        w_sw <= x"9"; wait for 10 ns;
            assert w_seg = x"18" report "bad x9" severity error;
        w_sw <= x"A"; wait for 10 ns;
            assert w_seg = x"08" report "bad xA" severity error;
        w_sw <= x"B"; wait for 10 ns;
            assert w_seg = x"03" report "bad xB" severity error;  
        w_sw <= x"C"; wait for 10 ns;
            assert w_seg = x"27" report "bad xC" severity error;
        w_sw <= x"D"; wait for 10 ns;
            assert w_seg = x"21" report "bad xD" severity error;  
        w_sw <= x"E"; wait for 10 ns;
            assert w_seg = x"06" report "bad xE" severity error;
        w_sw <= x"F"; wait for 10 ns;
            assert w_seg = x"0E" report "bad xF" severity error;
        wait;
   end process;       
end Behavioral;
