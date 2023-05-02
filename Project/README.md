# Recommended README.md file structure

### Team members

* Lukáš Faltys
* Lukáš Jílek
* Jan Brokeš

## Theoretical description and explanation

Celkové naše řešení kodéru zkráceně spočívá v tom, že pro každé písmenko nastavíme určitou kombinaci, kterou provádíme pomocí SW (switch), a to tak, že je máme rozdělené po dvou a když je jenom jedna ze dvou sepnutá, tak to značí tečku, když jsou obě sepnuté, tak to značí čárku. Takto my definujeme určité písmenko a to poté pomocí tlačítka BTNC odešleme a dalším tlačítkem BTNU resetujeme. Odeslaný signál je přiveden na pin jako signál, ve kterém je tečka dlouhá 2s, čárka 4s a mezera 6s.

Dekodér je řešen tak, že snímáme ve vstupním signálu jak dlouhé jsou úseky a podle toho určíme jestli se jedná o tečku, čárku či mezeru.

## Hardware description of demo application

Insert descriptive text and schematic(s) of your implementation.

## Software description

Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in `src` and `sim` folders. 

### Component(s) simulation

Write descriptive text and simulation screenshots of your components.

## Instructions

Write an instruction manual for your application, including photos or a link to a video.

## References

1. Put here the literature references you used.
2. ...
