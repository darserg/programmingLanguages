= №17 Модули. Преимущества модульного программирования. Определение модулей на Standard ML.
*Опр*. Модули - логически организованная единица кода, которая инкапсулирует типы, константы, функции. \
_Преимущества модального программирования_: \
- Программа разбивается на меньшие, более понятные части. \
- Позволяет использовать в нескольких проектах с малейшими изменениями. \ 
- Модуль предоставляет интерфейс для использования, позволяя пользователю не разбираться во внутреннем устройстве модуля. \
- Позволяет вести параллельную разработку, делигируя командам разработку разных модулей. \
Определение модулей на `Standard ML`: \
```sml
signature VECTOR = sig 
  type vector 
  
  val vec3: real * real * real -> vector

  val xCoor : vector -> real
  val yCoor : vector -> real
  val zCoor : vector -> real
end

structure vector :> VECTOR = struct 

datatype vector = vec3 of real * real * real 

fun xCoor vect =
  let 
    val vec3 (x, _, _) = vect
  in
    x 
  end

fun yCoor vect =
  let 
    val vec3 (_, y, _) = vect 
  in 
    y 
  end

fun zCoor vect =
  let 
    val vec3 (_, _, z) = vect 
  in 
    z 
  end
```
