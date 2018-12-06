# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используется объект OutputTable, для которого определены следующие свойства и методы:

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

Примеры:

```javascript
// Добавление строки в выходной набор данных
OutputTable.Append();
// В поле с именем 'ColBool' записывается true
OutputTable.Set("ColBool", true);
// В поле с индексом 1 записываются текущие Дата/Время
OutputTable.Set(1, new Date());
// Запись количества строк выходного набора
OutputTable.Set(2, OutputTable.RowCount);
// Запись числа столбцов выходного набора
OutputTable.Set(3, OutputTable.ColumnCount);
// Запись имени столбца выходного набора
OutputTable.Set(4, OutputTable.Columns[4].Name);
// Запись Null
OutputTable.Set(5, undefined);

// Добавление следующей строки в выходной набор
OutputTable.Append();
// Считывание значений полей первой строки выходного набора
var xBool = OutputTable.Get(0, 0);
var xDate = OutputTable.Get(0, 1);
var xFloat   = OutputTable.Get(0, 2);
var xInt     = OutputTable.Get(0, 3);
var xString  = OutputTable.Get(0, 4);
var xVariant = OutputTable.Get(0, 5);
// Запись полученных значений во вторую строку выходного набора
OutputTable.Set(0, xBool);
OutputTable.Set(1, xDate);
OutputTable.Set(2, xFloat);
OutputTable.Set(3, xInt);
OutputTable.Set(4, xString);
// Проверка значения поля на Null
OutputTable.Set(5, OutputTable.IsNull(0, 5));

// Добавление следующей строки в выходной набор
OutputTable.Append();
// Получение коллекции столбцов выходного набора
var xColumns = OutputTable.Columns;
// Обращение к столбцам по индексу и имени
var xColumn4 = xColumns[xColumns[4].Name];
// Проверка типа данных столбца выходного набора
OutputTable.Set(0, xColumn4.DataType == DataType.String);
// Получение количества столбцов
OutputTable.Set(3, xColumns.Count);
// Получение имени по значению перечисления
OutputTable.Set(4, UsageType[xColumn4.DefaultUsageType]);
// Получение типа данных столбца
OutputTable.Set(5, xColumn4.DataType);

```