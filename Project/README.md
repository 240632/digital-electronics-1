# Projekt VHDL : Kodér a dekodér Morseovy abecedy

## Členové teamu

* Lukáš Faltys
* Lukáš Jílek
* Jan Brokeš

## Teoretický popis a funkčnost

Celkové naše řešení kodéru zkráceně spočívá v tom, že pro každé písmenko nastavíme určitou kombinaci, kterou provádíme pomocí SW (switch), a to tak, že je máme rozdělené po dvou a když je jenom jedna ze dvou sepnutá, tak to značí tečku, když jsou obě sepnuté, tak to značí čárku. Takto my definujeme určité písmenko a to poté pomocí tlačítka BTNC odešleme a dalším tlačítkem BTNU resetujeme. Odeslaný signál je přiveden na pin jako signál, ve kterém je tečka dlouhá 2s, čárka 4s a mezera 6s.

Dekodér je řešen tak, že snímáme ve vstupním signálu jak dlouhé jsou úseky a podle toho určíme jestli se jedná o tečku, čárku či mezeru.

## Popis hardwaru

Pro realizaci tohoto projektu byla použity dvě desky Nexys A7 50T (Jedna pro kodér, druhá pro dekodér), které jsou kabelem propojeny mezi sebou.

![12710_01_11](https://user-images.githubusercontent.com/124742212/235751287-b5311984-bb20-4c73-9829-ad586a8019ed.png)




### Vnitřní schéma kodéru:

![image](https://user-images.githubusercontent.com/124742212/235740401-d74fb1d0-9c74-4a3d-91b8-5748d14141f3.png)

### Vnitřní schéma dekodéru:

![image](https://user-images.githubusercontent.com/124742212/235740480-2eea7b35-88c7-456b-aedd-b8b195320f13.png)


## Popis softwaru

Design source: [zde](https://github.com/240632/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/morse_try.vhd)
Testbench source: [zde](https://github.com/240632/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sim_1/new/morse_TB.vhd)
Top file: [zde](https://github.com/240632/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/TOP.vhd)
Constrain file: [zde](https://github.com/240632/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/constrs_1/new/cnst.xdc)




## Simulace

V simulaci jsme použili jako testovací kombinaci písmenko Q a poté písmenko A, viz. spodní obrázek. Na vrchním obrázku můžeme vidět výstupní signály.

![image](https://user-images.githubusercontent.com/124742212/235743084-db3f3026-a3d9-4f3f-a50b-3695f625b376.png)

## Instrukce pro použití

Pro použití naší verze řešení je třeba do obou desek správně nahrát příslušné programy. Poté V desce (kodér) nastavujeme písmenko (viz. Teoretický popis a funkčnost), a tlačítkem BTNC odešleme. Po každým poslání písmenka JE NUTNÉ vyresertovat desku tlačítkem BTNU, abychom mohli nastavovat další kombinace pro další písmenko.Po odeslání se nám na dekodéru objeví odeslaná kombinace.

## Použité materiály a inspirace

1. [https://github.com/tomas-fryza/digital-electronics-1](https://github.com/tomas-fryza/digital-electronics-1)
2. [https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual)
