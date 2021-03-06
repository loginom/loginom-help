# ![Выражение](../../../images/icons/calcdata/expression_default.svg) Выражение

Выражение может содержать:

* ссылки на другие поля набора данных в виде наименования полей или ранее вычисленных выражений;
* ссылки на переменные входного порта;
* скобки, определяющие порядок выполнения операций;
* знаки математических операций и отношений;
* логические операции (`and`, `or`, `not`, `xor`) и значения (`true` или `1`, `false` или `0`);
* функции в соответствии с синтаксическим описанием (см. далее [Список функций](../../func/calc-func/README.md)).
* строковые выражения в кавычках ("строковое выражение");
* целые и вещественные числа;
* однострочные и многострочные комментарии.

В выражении возможно использовать ссылки на ранее вычисленные выражения, т.е. находящиеся выше в списке выражений. В связи с этим неверная позиция в списке может приводить к ошибке.

>Примечание: при проведении математических операций над типом ["Дата/время"](./../../../data/datatype.md) (сложение, вычитание и т.д.) в результате может получиться вещественное число с дробной частью. По умолчанию результат операции будет равен количеству дней (целая часть) и количеству часов (дробная часть). Например: после операции вида `02.01.2020 12:00 - 01.01.2020 00:00` результат будет равен `1.5` - один целый день (24 часа) и еще половина дня (12 часов).

## Кэширование

[Кэширование](../../../scenario/caching.md) необходимо включать в выражениях *Калькулятора* в случае использования функции `Data()` при рекурсивном вычислении значений.

Рекомендуется применять *Кэширование* при использовании функций, результат которых зависит от момента времени, в которое происходит это вычисление, например: `Random()`, `Today()` и других.

## Панель быстрого доступа

На панели расположены кнопки, по нажатию на которые в область кода выражения вставляется заготовка либо шаблон.

Логические операции:

* **AND** — операция Логическое "И";
* **OR** — операция Логическое "ИЛИ";
* **NOT** — операция Логическое "НЕ";
* **XOR** — операция Логическое "исключающее ИЛИ".

Операторы сравнения:

* **=** — Равно;
* **<>** — Не равно;
* **<** — Меньше;
* **>** — Больше;
* **<=** — Меньше или равно;
* **>=** — Больше или равно.

Шаблоны:

* ![Вещественное число](../../../images/icons/toolbar-controls/type-float_default.svg) — для ввода вещественного числа, будет вставлено `0.0`;
* ![Строка](../../../images/icons/toolbar-controls/type-string_default.svg) — для ввода строки, будет вставлено `""`;
* ![Дата](../../../images/icons/toolbar-controls/type-date_default.svg) — для ввода даты, будет вставлено `StrToDate("____-__-__", "YYYY-MM-DD")`;
* ![Время](../../../images/icons/toolbar-controls/type-time_default.svg) — для ввода времени, будет вставлено `StrToDate("__:__:__", "HH:NN:SS")`.

Логические значения:

* **FALSE** — Ложь;
* **TRUE** — Истина.

## Комментарии

Для пояснения полученного выражения калькулятор поддерживает два типа комментария:

* Однострочный комментарий — начинается символами `//` (два слеша) и продолжается до конца строки;
* Многострочный комментарий — им считаются все символы, содержащиеся между `/*` (слеш-звездочка) и `*/` (звездочка-слеш).

%spoiler%Пример комментария:%spoiler%

```java
// Пример однострочного комментария.

IF(IsNull(gate_one),gate_two,gate_one) // однострочный комментарий продолжается до конца строки.

/* Многострочным комментарием
   считаются все символы,
   содержащиеся между (слеш-звездочка)
   и (звездочка-слеш). */
```

%/spoiler%
