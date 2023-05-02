#Projekt VHDL : Kodér a dekodér Morseovy abecedy

## Členové teamu

* Lukáš Faltys
* Lukáš Jílek
* Jan Brokeš

## Teoretický popis a funkčnost

Celkové naše řešení kodéru zkráceně spočívá v tom, že pro každé písmenko nastavíme určitou kombinaci, kterou provádíme pomocí SW (switch), a to tak, že je máme rozdělené po dvou a když je jenom jedna ze dvou sepnutá, tak to značí tečku, když jsou obě sepnuté, tak to značí čárku. Takto my definujeme určité písmenko a to poté pomocí tlačítka BTNC odešleme a dalším tlačítkem BTNU resetujeme. Odeslaný signál je přiveden na pin jako signál, ve kterém je tečka dlouhá 2s, čárka 4s a mezera 6s.

Dekodér je řešen tak, že snímáme ve vstupním signálu jak dlouhé jsou úseky a podle toho určíme jestli se jedná o tečku, čárku či mezeru.

## Popis hardwaru

Pro realizaci tohoto projektu byla použity dvě desky Nexys A7 50T (Jedna pro kodér, druhá pro dekodér), které jsou kabelem propojeny mezi sebou.

![12710_01_11](https://user-images.githubusercontent.com/124742212/235750577-99b7e4e4-fb02-4e7f-acf2-aba43c1d1875.png)



### Vnitřní schéma kodéru:

![image](https://user-images.githubusercontent.com/124742212/235740401-d74fb1d0-9c74-4a3d-91b8-5748d14141f3.png)

### Vnitřní schéma dekodéru:

![image](https://user-images.githubusercontent.com/124742212/235740480-2eea7b35-88c7-456b-aedd-b8b195320f13.png)


## Popis softwaru

Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in `src` and `sim` folders. 

## Simulace

V simulaci jsme použili jako testovací kombinaci písmenko Q a poté písmenko A, viz. spodní obrázek. Na vrchním obrázku můžeme vidět výstupní signály.

![image](https://user-images.githubusercontent.com/124742212/235743084-db3f3026-a3d9-4f3f-a50b-3695f625b376.png)

## Instrukce pro použití

Pro použití naší verze řešení je třeba do obou desek správně nahrát příslušné programy. Poté V desce (kodér) nastavujeme písmenko (viz. Teoretický popis a funkčnost), a tlačítkem BTNC odešleme. Po každým poslání písmenka JE NUTNÉ vyresertovat desku tlačítkem BTNU, abychom mohli nastavovat další kombinace pro další písmenko.Po odeslání se nám na dekodéru objeví odeslaná kombinace.

## Použité materiály a inspirace

1. [https://github.com/tomas-fryza/digital-electronics-1](https://github.com/tomas-fryza/digital-electronics-1)
2. [https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual)
