// While Loop (Repeat While Loop)
// Pętla while i repeat-while



import UIKit





/*

1. Czasami się zdarza, że nie wiemy ile razy nasza pętla się wykona. Innym przykładem może być stan gdzie pętla ma się tak długo wykonywać aż jakiś warunek zostanie spełniony. W przypadku pętli "for-in" od samego początku wiemy ile razy pętla ma się wykonać, gdyż sami to ustalamy.

2. Pętla While (ang. While Loop) napierw sprawdza czy dane kryterium jest spełnione a następnie uruchamia pętlę

3. Jeśli dany warunek nie zostanie spełniony, pętla nigdy się nie uruchomi/nie wykona

*/



//na poniższym przykładzie ustalamy wartość inicjującą 0, następnie do jakiej wartości pętla ma się wykonywać czyli do 100 oraz parametr o ile ma następować zwiększanie



var zwiększanie = 1
var naszCel = 100
var wartość = 0

while wartość < naszCel       //to jest kryterium pętli. Pętla najpierw sprawdza czy to kryterium jest spełnione, jeśli tak - wykonuje to co znajduje się w nawiasie klamrowym poniżej (w "body" pętli). Jeśli kryterium nie zostanie spełnione, pętla nigdy nie przejdzie do jej wykonania


{
    
    wartość = wartość + zwiększanie   //to jest body pętli, poprawny jest również zapis             wartość+=zwiększenie
    
}





/*

1. Kolejną pętlą jest Repeat While, która w Swift 1 miało określenie Do While.

2. Pętla ta wykonuje najpierw tzw. body pętli, czyli kod między nawiasami klamrowymi, a następnie sprawdza czy warunek został spełniony

3. Pętla taka, wykona się co najmniej 1 raz

4. Używamy jej właśnie wtedy, jeśli chcemy aby pętla się wykonała chociaż jeden raz

*/



repeat
{

wartość = wartość + zwiększanie
// lub wartość+=zwiększenie

}

while wartość < naszCel







