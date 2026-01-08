= №9 Исключения. Описание собственных исключений.
*Опр*. Исключение - механизм обработки нештатных или ошибочных ситуаций, возникающих во время выполнения программы. \
_Описание собственных исключений_:
В `Standard ML`: \
```sml
exception <название исключения> of <тип дополнительной информации об исключении>:
  exception Head of string
```
В `Ruby`:
```rb
data <название исключения> = <название исключения> String deriving (Show)
```
*Опр*. Поднятие исключения - прерывание программы и последующий вывод исключения. \
_Поднятие исключения_: \
В `Standard ML`: \
```sml
fun fRaise [] = raise Head "Error head."
  | fRaise (x::_) = x
```
В `Ruby`: \
```rb
begin
  a = 1/ 0
  puts a
  rescue
    puts "Произошла ошибка."
  end
```
*Опр*. Перехват исключения - изменение обработки данного исключения
_Перехват исключения_: \
В `Standard ML`: \
```sml
fun fHandle lst = fRaise lst handle Head x => x
                                       | _ => ""
```
В `Ruby`:
```rb
begin
  a = 1/0
  puts a
  rescue Exception => exception
    puts e 
end
```
