
// Arrays
// Tablice, Macierze, drukowanie na konsolę, pętla for in

import UIKit



/*

1. Tablica (ang. Array) to uporządkowana lista wartości, pewnej długości tego samego typu

2. Wartości tablicy muszą być tego samego typu, czyli np. Int, Float, String, etc. Jeśli chcemy je ze sobą mieszać, musimy zastosować tablicę w innej tablicy

3. Tablica jest typem zbioru (ang. collection).
    Innym typem zbioru jest Słownik (ang. Dictionary) o którym porozmawiamy w kolejnych odcinkach

*/


/*

1. Poniżej jako przykład deklarujemy Tablicę nazwaną "słodkieCukierki", typu String czyli łańcuch znaków, który to typ jest identyfikowany na podstawie wartości w tym przypadku ciągu znaków w cudzysłowiu . Używając słowa "let" deklarujemy stałą wartość, której nie można zmienić w tablicy (ang. immutable)

2. Każda wartość w tablicy ma swój indeks. [0] jest pierwszą wartością, [1] jest drugą, itd.

3. Tablica zaczyna się nawiasem kwadratowym i nim kończy

*/



// w tym przykładzie inicjujemy stałą typu String "słodkieCukierki". Nie określamy typu danych, ponieważ kompilator sam identyfikuje typ klasy String po łańcuchu znaków.

let słodkieCukierki = ["kukułki", "ptasie mleczko", "żelki", "mmmsy"]




/*

1. Każda wartość tablicy jest indeksowana

2. Dostęp do każdej wartości, następuje podczas wywoływania jej indeksu

*/

słodkieCukierki
słodkieCukierki[0]
słodkieCukierki[1]
słodkieCukierki[2]





/*

1. W kolejnym przykładzie deklarujemy nową tablicę "noweSłodkieCukierki" z wartościami typu String

2. Słowo "var" oznacza, że możemy dodawać nowe wartości do tablicy lub je dowolnie zmianiać (ang. mutable array)

3. Zmiana (podmiana) danych tablicy jest prosta. Wywołujemy zmienną/stałą poprzez wpisanie jej nazwy oraz indeksu pod którym chcemy umieścić nową wartość. Poprzednia wartość zostaje zastępiona nową.

*/


var noweSłodkieCukierki = ["czekoladowe", "kakaowe", "landrynki"]


noweSłodkieCukierki[0]
noweSłodkieCukierki[1]
noweSłodkieCukierki[2]


noweSłodkieCukierki[1] = "lody"

noweSłodkieCukierki







/*

1. Możemy w prosty sposób dodawać nowe wartości do tablicy. Metoda "append", dodaje kolejne wartości. 

2. Wywołujemy zmienną wpisując jej nazwę i dodajemy ".append("nowa wartość") ", gdzie nowa wartość to kolejny element w tabeli. Taka wartość zostanie dodana na koniec tabeli stając się jej ostatnim elementem 

3. Dodana nowa wartość nie będzie uporządkowana np. alfabetycznie. Każda nowa wartość zostanie dodana na końcu tablicy

*/


noweSłodkieCukierki

noweSłodkieCukierki.append("słodka guma")

noweSłodkieCukierki.append("gorzka guma")

noweSłodkieCukierki.append("nijaka guma")





/*

1. Możemy również w prosty sposób usuwać nowe wartości z tablicy. Metoda "remove(at: )", usuwa wartości wg indeksu.

2. Wywołujemy zmienną wpisując jej nazwę i dodajemy ".remove(at: 1)", gdzie 1 to indeks w tabeli. Wartość indeksu 1 zostanie usunięta z tabeli a pozostałe wartości przesuną się w stronę indeksu 0.

*/

noweSłodkieCukierki

noweSłodkieCukierki.remove(at: 1)

noweSłodkieCukierki






/*

1. Zdarza się czasami, że nie jest wiadome ile wartości jest zawartych w tabeli podczas gdy chcemy usunąć ostatni indeks. Z pomocą przychodzi metoda "removeLast()"

*/

noweSłodkieCukierki

noweSłodkieCukierki.removeLast()

noweSłodkieCukierki






/*

1. Jeśli chcemy, możemy dodać nową wartość do tablicy w dowolnym miejscu. Posłużyć się należy metodą ".insert("xx", at: y)", gdzie "xx" to nowa wartość a "y" to na którym indeksie tablicy ma zostać ona dodana.
    Pozostałe elementy zostaną przesunięte o kolejny indeks w górę

*/

noweSłodkieCukierki

noweSłodkieCukierki.insert("galaretki", at: 0)







/*

1. Jeśli chcemy, możemy także połączyć 2 tablice i utworzyć jedną.

2. Inicjujemy nową zmienną i poprzez zastosowanie operatora "+", dodajemy poprzednie dwie tablice.

3. Utowrzona nowa tablica nie jest uporządkowana np. alfabetycznie

*/

słodkieCukierki
noweSłodkieCukierki


var połączoneDwieTablice = słodkieCukierki + noweSłodkieCukierki







/*

1. Może się zdarzyć, że będziemy chcieli utworzyć nową tablicę bez wartości i dodać je późniejszym miejscu naszego kodu. Chcemy utworzyć pustą tablicę z góry zadeklarowanym typem liczb całkowitych Int.

2. Poniżej są 2 przykłady jak się je tworzy

3. Tworzymy zmienną var, ponieważ pusta tablica będzie później uzupełniona przez nowe wartości więc nie może być stałą let

*/



var mojaInnaPustaTablica: Array <Int> = []

var mojaPustaTablica = [Int] ()

//noweSłodkieCukierki
//noweSłodkieCukierki = []
//noweSłodkieCukierki

mojaPustaTablica = []



// to na tyle jeśli chodzi o Tablice Arrays :)








/*

1. Drukowanie danych na ekranie wywołujemy metodą "print"

2. Poniżej przykład

*/


print("tekst jakiś tam")
print ("to jest moja wiadomość do Ciebie:)) 😅. Nie mam pojęcia dlaczego Playground pokazuje \n")





/*

1. Drukowanie zmiennych.

2. Deklarujemy nową zmienną o nazwie "numer1" o wartości 9.

3. Drukujemy linię poprzez metodę "print" i w nawiasie podajemy nazwę zmiennej, którą chcemy wydrukować

*/



var numer1 = 9

print (numer1)

var numer2 = 10.33




/*

1. Drukowanie zmiennych i tekstu.


*/



print("ten liczba to = \(numer1)")

print("a to jest nasza nowa zmienna \(numer2)")




/*

1. "Array Iteration" (iterowanie po tablicy) wykonuje funkcję jeden raz na każdy element tablicy

2. w poniższym kodzie, patrzymy na każdy indeks w tablicy i wykazujemy wartość tego indeksu. Identyfikator "cukierki" może mieć jakąkolwiek inną nazwę

3. Playground wykonuje funkcję "For-In" 3 razy ponieważ w tablicy jest 5 elementów

*/

noweSłodkieCukierki


for cukierki in noweSłodkieCukierki

{
    
    print (cukierki)
    
}




/*

1. Poniższy program drukuje numer indeksu i wartość każdego elementu w tablicy.

2. Identyfikatory "indeks" i "cukierki" mogą mieć obojętną nazwę

*/

noweSłodkieCukierki


for (indeks, cukierki) in noweSłodkieCukierki.enumerated()
    
{
    print("Cukierki \(cukierki) są w indeksie \(indeks) tej tablicy")
}

