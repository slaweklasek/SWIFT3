
//IF ELSE Statement
// Instrukcja warunkowa "If Else"


import UIKit


/*

IF ELSE - instrukcja badająca jakiś stan, pewien warunek. Jeśli jest on spełniony (ma wartość "prawda", ang. true) to zostaje wykonany kod zawarty w nawiasie klamrowym (zaraz po "If").

Jeśli warunek w pierwszym nawiasie ma stan "false - fałsz" to zostaje wykonany kod w nawiasie klamrowym "Else"

*/




/*

1. Przykładem mogą być światła na skrzyżowaniu. Jeśli światło jest CZERWONE, to pokaże się STOP. Jeśli nie, pokaże się JEDŹ.
2. Nie mogą być spełnione dwa warunki jednocześnie - musi być tylko jeden spełniony

*/


//poniżej inicjalizujemy zmienną "swiatlaSkrzyzowania" z wartością ZIELONE
var swiatlaSkrzyzowania = "Zielone"

if swiatlaSkrzyzowania == "Czerwone"
{
    
    print("Stop")
    
}


else
{
    
    print("Jedź")
    
}





/*

1. W kolejnym przykładzie porównujemy dwie liczby

*/


var numer1: Int = 190
var numer2: Int = 200

if numer1 >= numer2
{
    
    print("numer 1 jest większy lub równy numerowi 2")
    
}

else
{
    
    print("numer 1 NIE jest większy lub równy numerowi2")
    
}





/*

1. W języku Swift, występują następujące operatory porównania:

== równy (nie mylić z "=")
!= nie równy
> większy od
< mniejszy od
<= mniejszy lub równy od
>= większy lub równy od

*/





/*

1. Zagnieżdżone instrukcje warunkowe - występuje gdy jedna instrukcja "if" jest zagnieżdżona w drugiej

2. Jeśli warunek "IF" pierwszej instrukcji jest spełniony, wykonuje kod w nawiasie klamrowym "true" w którym przechodzimy do drugiego warunku "IF", który jeśli jest spełniony, to wykonuje kod "true" a jeśli nie to "false"

3. instrukcje "IF" można zanieżdżać wiele razy, ale w takim wypadku stosuje się inną instrukcję "SWITCH - napiszę o niej w odrębnym tutorialu"

*/

//inicjalizujemy zmienną "numerA" typu Int (liczba całkowita) i nadajemy jej wartość początkową 25
var numerA: Int = 30

if numerA >= 50
{
    
    if numerA < 75
    {
        
        print("wytypowana liczba jest między 50 a 74")
        
    }
    
    else
    {
        
        print("wytypowana liczba jest między 75 a 100")
        
    }
    
}

else
{
    
    if numerA <= 25
    {
        
        print("ta liczba jest między 0 i mniejsza lub równa 25")
        
    }
    
    else
    {
        
        print("ta liczba jest między 26 a 49")
        
    }
    
}
