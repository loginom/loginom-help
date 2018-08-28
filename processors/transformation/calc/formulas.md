# Формулы

## Область кода выражения

В области кода задается формула расчета выражения.

Формула выражения может содержать:

* Ссылки на другие поля набора данных в виде наименования полей или ранее вычисленных выражений;
* Ссылки на переменные входного порта;
* Скобки, определяющие порядок выполнения операций;
* Знаки математических операций и отношений;
* Логические операции (and, or, not, xor) и значения (true или 1, false или 0);
* Функции в соответствии с синтаксическим описанием (см. далее ["Список функций"](../calc-func/README.md)).
* Строковые выражения в кавычках ("строковое выражение");
* Целые и вещественные числа;
* Однострочные и многострочные комментарии.

При использовании в формуле функций, результат вычисления которых зависит от момента времени, в которое это вычисление происходит (например, RND(), TODAY() и др.) применяется ["Кэширование"](../../scenario/caching.md).

Однострочный комментарий начинается символами // (два слеша) и продолжается до конца строки. Многострочным комментарием считаются все символы, содержащиеся между /\* (слеш-звездочка) и \*/ (звездочка-слеш).

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

----

**Примечание:** В формуле выражения возможно использовать ссылки только на ранее вычисленные выражения, т.е. находящиеся выше по списку. В связи с этим неверная позиция в списке может приводить к ошибке.