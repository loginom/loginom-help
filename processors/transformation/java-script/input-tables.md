# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к входным наборам данных

Для доступа к данным портов `Входной источник данных[N]` используются объекты:

- `InputTable` — источник данных с первого порта;
- `InputTables[]` — массив входных источников данных;

## Свойства источников данных

### Columns

Содержит доступную для чтения коллекцию столбцов. Возвращает объект типа `IColumns` (см. [Полное описание API](./api-description.md)).

### ColumnCount

Содержит доступное для чтения количество столбцов.  Возвращает значение типа `number`.

### RowCount

Содержит доступное для чтения количество строк. Возвращает значение типа `number`.

## Методы источников данных

### Get(row, col)

Возвращает значение заданного поля в заданной строке. Возвращаемое значение может иметь тип `boolean`, `number`, `string`, `Date`, `undefined`.

Аргументы:

- row — индекс строки. Принимает значение типа number.
- col — индекс или имя столбца. Принимает значение типа number или string.

### IsNull(row, col)

Возвращает булево значение `true` если столбец в заданной строке имеет пропущенное значение. В противном случае возвращается `false`.

Аргументы:

- row — индекс строки. Принимает значение типа number.
- col — индекс или имя поля. Принимает значение типа number или string.

%spoiler%Предыдущее описание свойств и методов:%spoiler%

```javascript
readonly Columns: IColumns;         // Столбцы источника данных
readonly ColumnCount: number;       // Количество столбцов источника данных
readonly RowCount: number;          // Количество строк источника данных
    
// Метод Get возвращает значение заданного поля в заданной строке
Get(row: number, col: number | string): boolean | number | string | Date | undefined;
// Метод IsNull проверяет на Null значение заданного поля в заданной строке
IsNull(row: number, col: number | string): boolean;
```

подробное описание которых см. в [Полное описание API](./api-description.md).

%/spoiler%

## Примеры

```javascript
import { InputTable, InputTables } from "builtIn/Data";

let inputTable0 = InputTables[0],              // Источник данных с порта №1
    inputTable1 = InputTables[1];              // Источник данных с порта №2
let colOutlook0 = inputTable0.Columns.OUTLOOK, // Получение ссылки на столбец по имени
    colOutlook1 = inputTable1.Columns[1];      // Получение ссылки на столбец по индексу

// Получение из объекта Columns массива столбцов
let arrayOfColumns = Array.from(InputTable.Columns);
// Вывод значений свойств столбцов в консоль
arrayOfColumns.forEach(column => {
    console.log("Index: ", column.Index);
    console.log("Name: ", column.Name);
    console.log("DisplayName: ", column.DisplayName);
    console.log("DataType: ", column.DataType);
    console.log("DataKind: ", column.DataKind);
    console.log("DefaultUsageType: ", column.DefaultUsageType);
    console.log("RowCount: ", column.RowCount);
    console.log("");
});

// Получение из столбца "CLASS" массива значений
let arrayOfColumnValues = Array.from(InputTable.Columns["CLASS"]);
// Вывод значений столбца "CLASS"
arrayOfColumnValues.forEach((value, index) => {
    console.log(index, ":", value);
});

// Чтение значений из входной таблицы методом Get
for (let i = 0, с = InputTable.RowCount; i < с; i++) {
    // Вывод значений столбца с индексом 0
    console.log(`InputTable.Get(${i}, 0) = `, InputTable.Get(i, 0));
    // Вывод значений столбца с именем "CLASS"
    console.log(`InputTable.Get(${i}, "CLASS") = `, InputTable.Get(i, "CLASS"));
}

```