#Projekt VHDL : Kodér a dekodér Morseovy abecedy

## Členové teamu

* Lukáš Faltys
* Lukáš Jílek
* Jan Brokeš

## Teoretický popis a funkčnost.

Celkové naše řešení kodéru zkráceně spočívá v tom, že pro každé písmenko nastavíme určitou kombinaci, kterou provádíme pomocí SW (switch), a to tak, že je máme rozdělené po dvou a když je jenom jedna ze dvou sepnutá, tak to značí tečku, když jsou obě sepnuté, tak to značí čárku. Takto my definujeme určité písmenko a to poté pomocí tlačítka BTNC odešleme a dalším tlačítkem BTNU resetujeme. Odeslaný signál je přiveden na pin jako signál, ve kterém je tečka dlouhá 2s, čárka 4s a mezera 6s.

Dekodér je řešen tak, že snímáme ve vstupním signálu jak dlouhé jsou úseky a podle toho určíme jestli se jedná o tečku, čárku či mezeru.

## Popis hardwaru

Pro realizaci tohoto projektu byla použity dvě desky Nexys A7 50T (Jedna pro kodér, druhá pro dekodér), které jsou kabelem propojeny mezi sebou.

Vnitřní schéma kodéru:

![image](https://user-images.githubusercontent.com/124742212/235740401-d74fb1d0-9c74-4a3d-91b8-5748d14141f3.png)

Vnitřní schéma dekodéru:

![image](https://user-images.githubusercontent.com/124742212/235740480-2eea7b35-88c7-456b-aedd-b8b195320f13.png)


## Popis softwaru

Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in `src` and `sim` folders. 

## Simulace

Write descriptive text and simulation screenshots of your components.

## Instrukce pro použití

Write an instruction manual for your application, including photos or a link to a video.

## Použité materiály a inspirace

1. [https://github.com/tomas-fryza/digital-electronics-1](https://github.com/tomas-fryza/digital-electronics-1)
2. [https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual)
