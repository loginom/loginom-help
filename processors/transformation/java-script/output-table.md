# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используется объект `OutputTable`, для которого определены следующие свойства и методы:

```javascript
readonly Columns: IColumns;                                             // Список столбцов
readonly ColumnCount: number;                                           // Количество столбцов
readonly RowCount: number;                                              // Количество строк

// Метод Get возвращает значение заданной строки в заданном столбце
Get(row: number, col: number | string): boolean | number | string | Date | undefined;
// Метод IsNull проверяет на Null значение заданной строки в заданном столбце
IsNull(row: number, col: number | string): boolean;
// Метод Append добавляет новую запись в выходной набор
Append(): void;
// Метод Set задает значение заданного поля в записи, добавленной мотодом Append()
Set(col: number | string, value: boolean | number | string | Date | null | undefined): void;
```

подробное описание которых см. в [Полное описание API](./api-description.md).

Примеры:

```javascript
import { OutputTable } from "builtIn/Data";

// Добавление строки в выходной набор данных
OutputTable.Append();
// В поле с именем "COL0" записывается значение true
OutputTable.Set("COL0", true);
// В поле с индексом 1 записываются текущие Дата/Время
OutputTable.Set(1, new Date());

// Проверка, что значение в столбце №2 не определено
console.assert(OutputTable.IsNull(0, 2));
console.assert(typeof OutputTable.Get(0, 2) == "undefined");

// Копирование значений первой строки во вторую
OutputTable.Append();
for (let i = 0, c = OutputTable.ColumnCount; i < c; i++) {
    let value = OutputTable.Get(0, i);
    OutputTable.Set(i, value);
}

console.log("RowCount = ", OutputTable.RowCount);
// Вывод: RowCount =  2

```