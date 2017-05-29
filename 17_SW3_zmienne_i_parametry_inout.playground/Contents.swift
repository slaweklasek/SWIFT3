import UIKit

// Zmienne i parametry (argumenty) inout funkcji

/*
 
 Jeśli definiujemy argumenty funkcji poza jej ciałem to są one stałe. Nie można ich zmienić przez przypadek. Próbując je zmienić w ciele metody, natrafimy na błąd kompilacji. Jeśli chciałbyś aby funkcja modyfikowała te wartości i były one ustalone po tym jak funkcja zostanie wywołana, należy podać parametr "in-out".
 
 Wartości są zdefinowane poza funkcją, są jej przekazane, zmienione, zaktualizowane poza funkcją.

 
 */


func zamianaDwochWartosci(a: inout Int, b: inout Int)
{
   
    let tymczasoweA = a
    
    a = b
    b = tymczasoweA
}

//powyższa funkcja służy do prostej zamiany wartości

/*
 
 można powyższą funkcję wywołać, przekazując jakieś dowolne wartości jako jej argumenty. Np. jakasLiczba1 i jakasLiczba2. Zwrócić należy jednak uwagę na fakty: wartości muszą być poprzedzone znakiem "&"  a także że wartości var zostaną zmienione nawet wtedy hdy są zainicjalizowane poza ciałem funkcji
 
 */
var jakasLiczba1 = 33
var jakasLiczba2 = 22
zamianaDwochWartosci(a: &jakasLiczba1, b: &jakasLiczba2)


print("Mimo, że jakasLiczba1 jest zadeklarowana poza funkcją i ma oryginalnie wartość 33 to po wywołaniu funkcji zamianaDwochWartosci, ma wartość: \(jakasLiczba1). Natomiast jakasLiczba2 powinna mieć wartość 22 a ma wartość \(jakasLiczba2)")



