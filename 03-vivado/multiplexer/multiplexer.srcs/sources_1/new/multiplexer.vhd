----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 12:07:41 PM
-- Design Name: 
-- Module Name: multiplexer - Behavioral
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

entity multiplexer is
port(
a_i : in std_logic_vector(3 - 1 downto 0);
b_i : in std_logic_vector(3 - 1 downto 0);
c_i : in std_logic_vector(3 - 1 downto 0);
d_i : in std_logic_vector(3 - 1 downto 0);

sel_i : in std_logic_vector(2 - 1 downto 0);

f : out std_logic

);
end multiplexer;

architecture Behavioral of multiplexer is
begin

with sel_i select
    f <= a_i when "00",
         b_i when "01",
         c_i when "10",
         d_i when others;


end Behavioral;
