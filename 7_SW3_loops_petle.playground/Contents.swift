// Loops
// Pętle



import UIKit



/*

1. Kiedy mówiliśmy o iteracji w przypadku Tablice i Słowniki, to jak pamiętamy użyta tam była forma pętli, gdzie badaliśmy każdy indeks lub parę key/value (klucz/wartość). Innymi słowy iteracja to wykonywanie tej samej funkcji w pętli.

2. W tej części omówimy bardziej zaawansowanie na temat pętli

3. Pętla powoduje, że kompilator wykonuje serię powtarzalnych komend przez stosowną ilość czasu. Jako programista musisz wiedzieć ile razy Twoja pętla zostanie wykonana, inaczej może być tak, że nigdy się nie skończy i będzie wykonywana nieskończenie wiele razy.

*/








/*

1. W poniższym przykładzie, pętla "licznikPętli" ustalamy minimalną wartość 1 i maksymalną 10 i przechodzi przez nie każdą z wartości. Punktem startowym jest wartość 1 a końcowym 10.

2. Trzy kropki (...) definiują zasięg.

3. W pierwszej kolejności należy zainicjować zmienną (ważne) i nadać jest wartość. W tym przypadku 0. Bez tej czynności, nie można później użyć jej w pętli.

4. To co drukujemy to wynik mnożenia poszczególnej wartości przez siebie (mnożenie do kawadratu)

*/



var licznikPętli: Int = 0

for licznikPętli in 1...10
    
    {
    
    print("\(licznikPętli) pomnożone przez \(licznikPętli) równa się \(licznikPętli * licznikPętli)")
        
    }






/*

1. W kolejnym przykładzie, pętla wykona się tylko do momentu gdy będzie mniejsza od 10. Oznacza to, że wykona się 9 razy.

2. możliwe operatory:

< mniejsze od
> większe od
== równe (== to nie to samo co = które oznacza przypisanie jakiejś wartości)
<= mniejsze lub równe
>= większe lub równe
!= nie równe


*/




for index in 1..<7

    {
    
    print("\(index) pomnożone przez \(index), równa się \(index * index)")
        
    }






/*

1. Poniżej widzimy, gdy "kolejnyLicznikPętli" sprawdza każdy indeks w tablicy i pokazuje wartość tego indeksu


*/


let liczbyTablicy = [1, 3, 19, 21, 12, 89, 1100, 13, 16]

for index in 0..<9
{
    
    print("wartość indeksu \(index) ma wartość \(liczbyTablicy[index])")
    
}



