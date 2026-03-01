----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2026 06:36:35 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
--declare component
component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
     end component sevenseg_decoder;
  
--declare dignals
    signal w_button : std_logic_vector(3 downto 0):= "0000";
    signal w_display :std_logic_vector(6 downto 0):= "0000000";
begin

    sevenseg_decoder_uut: sevenseg_decoder port map(
        i_Hex => w_button(3 downto 0),
        o_seg_n => w_display(6 downto 0)
        );
test_process : process
begin 
   --w_button <= "0000"; wait for 10 ns;
        --assert (w_display = "1111110") report "bad 0" severity failure;
  -- w_button <= "1010"; wait for 10 ns;
        --assert (w_display = "1110111") report "bad A" severity failure; 
   --w_button <= "1111"; wait for 10 ns;
        --assert (w_display = "1000111") report "bad F" severity failure;    
   --w_button <= "1100"; wait for 10 ns;
        --assert (w_display = "0001101") report "bad C" severity failure; 
   --w_button <= "0011"; wait for 10 ns;
        --assert (w_display = "1111001") report "bad 3" severity failure;      
end process;

end Behavioral;
