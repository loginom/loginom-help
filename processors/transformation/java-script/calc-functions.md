# ![](../../../media/app/icons/component-18/component-default-55.svg) Импорт функций Калькулятора

В коде JavaScript возможно использование [функций Калькулятора](../../func/calc-func/README.md). Для этого используется встроенный модуль `builtIn/Calc`. Доступны все функции, включая реализованные в плагинах, за исключением следующих:

- IF, IFF — имеется аналог в JS: `if (<условие>) {...}`;
- функций работы со входными данными (`Data`, `RowNum`, `RowCount`, `DisplayName`, `CumulativeSum`) — имеются аналоги в [API](./api-description.md) (`RowCount`, `DisplayName`) или легко реализуются кодом JS.

Примеры использования функций:

```javascript
/* Импорт всех функций */
import calc from 'builtIn/Calc';
import * as calcNS from 'builtIn/Calc';
OutputTable.Append();
OutputTable.Set(0, calc.Val("1"));
OutputTable.Set(1, calc.Str(1e6));
OutputTable.Append();
OutputTable.Set(0, calcNS.Count("AAA"));
OutputTable.Set(1, calcNS.Lower("AAA"));

/* Импорт конкретных функций */
import { RegExMatchCount, RegExMatchedExp } from 'builtIn/Calc';
OutputTable.Append();
OutputTable.Set(0, RegExMatchCount("a+?", "aaa"));
OutputTable.Set(1, RegExMatchedExp("a+", "aaa"));


/* Динамический импорт */
import("builtIn/Calc").then(calc => {
    OutputTable.Append();
    OutputTable.Set(0, calc.Repeat(1, 10));
    // Можно использовать функции из дополнительных плагинов Калькулятора
    OutputTable.Set(1, calc.MyFunction(1, 1));
});
```