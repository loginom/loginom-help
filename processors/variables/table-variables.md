# ![](../../media/app/icons/component-18/component-default-40.svg) Таблица в переменные

## Описание

Обработчик позволяет преобразовать табличные данные в переменные. Из данных каждого поля таблицы формируется переменная. У переменной может быть только одно значение, поэтому для его расчета к данным поля применяются различные [функции агрегации](../aggregation-functions.md).

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных). 

### Выход

* ![](../../media/app/icons/ports/output-variable-inactive.svg) Выходные переменные.

## Мастер настройки

Окно мастера поделено на две области:  доступные  поля (слева) и выбранные поля (справа):

* область "Доступные поля"  содержит список полей входного набора данных;

* область "Выбранные поля" является списком полученных переменных.

При перемещении полей из левой области в правую по каждому полю формируется переменная:

* *имя переменной* - формируется из метки поля;
* *значение переменной* - формируется из всех значений поля, агрегированных какой-либо функцией.

Выбор [функций агрегации](../aggregation-functions.md) осуществляется в окне, открывающемся двойным кликом по переменной.

Каждому варианту агрегации на выходе будет соответствовать отдельная переменная.