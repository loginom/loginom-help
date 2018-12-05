# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к входным наборам данных

Для доступа к данным портов "Входной источник данных[N]" используются объекты:

- InputTable — источник данных с первого порта;
- InputTables[] — массив входных источников данных;

Для входных источников определены следующие свойства и методы:

```javascript
    readonly Columns: IColumns;         // Столбцы источника данных
    readonly ColumnCount: number;       // Количество столбцов источника данных
    readonly RowCount: number;          // Количество строк источника данных
    
    // Метод Get возвращает значение заданного поля в заданной строке
    Get(row: number, col: number | string): boolean | number | string | Date | undefined;
    // Метод IsNull проверяет на Null значение заданного поля в заданной строке
    IsNull(row: number, col: number | string): boolean;
```

подробное описание которых см. в [Полное описание API](./api_description.md).

Примеры:

```javascript
var xInputDataSource = InputTables;                     // Источник данных с порта №1
var xInputDataSource0 = InputTables[0];                 // Источник данных с порта №1
var xInputDataSource1 = InputTables[1];                 // Источник данных с порта №2
var xOutlookCol = xInputDataSource0.Columns.OUTLOOK;    // Получение ссылки на столбец по имени
var xOutlookCol = InputTable.Columns["OUTLOOK"]);       // тоже самое
var xOutlookCol = InputTable.Columns[0]);               // Получение ссылки на столбец по индексу

// Перебор столбцов и вывод их свойств в консоль
var colArray = Array.from(InputTable.Columns);
colArray.forEach(column => {
  console.log(column.Index);
  console.log(column.Name);
  console.log(column.DisplayName);
  console.log(column.DataType);
  console.log(column.DataKind);
  console.log(column.DefaultUsageType);
  console.log(column.RowCount);
});

// Перебор значений столбца с именем 'CLASS'
var array = Array.from(InputTable.Columns["CLASS"]);
array.forEach(val => {
  console.log(val);
});

// Использование метода Get
var InputTableRowCount = InputTable.RowCount;
for (var i = 0; i < InputTableRowCount; i++) {
console.log(InputTable.Get(i, 0));          // Вывод значений столбца с индексом 0
console.log(InputTable.Get(i, "CLASS"));    // Вывод значений столбца с именем 'CLASS'
}

```