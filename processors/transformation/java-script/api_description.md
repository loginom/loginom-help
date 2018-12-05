# ![](../../../media/app/icons/component-18/component-default-55.svg) Полное описание API

```javascript
const InputTable: IDataSource;      // Источник данных с первого порта
const InputTables: IDataSource[];   // Массив входных источников данных
const OutputTable: IOutputTable;    // Выходной набор данных
const InputVariables: IVariables;   // Входные переменные

// Перечисления, описывающие метаданные полей и переменных
enum DataType { None, Boolean, DateTime, Float, Integer, String, Variant }  // Тип данных
enum DataKind { Undefined, Continuous, Discrete }                           // Вид данных
enum UsageType { Unspecified, Excluded, Useless, Active,                    // Назначение полей
                 Predicted, Key, Group, Value, Transaction, Item }

// Представление столбцов наборов данных
interface IColumn extends Iterable<boolean | number | string | Date | undefined> {
    readonly Index: number;                                                 // Индекс
    readonly Name: string;                                                  // Имя
    readonly DisplayName: string;                                           // Метка
    readonly DataType: DataType;                                            // Тип данных
    readonly DataKind: DataKind;                                            // Вид данных
    readonly DefaultUsageType: UsageType;                                   // Назначение поля
    readonly RowCount: number;                                              // Количество значений

    // Метод Get возвращает значение столбца по индексу
    Get(row: number): boolean | number | string | Date | undefined;
    // Метод IsNull проверяет на Null значение столбца
    IsNull(row: number): boolean;
}

// Доступ к итерабельному списку столбцов по имени и индексу
interface IColumns extends Iterable<IColumn> {
    [name: string]: IColumn;
    [index: number]: IColumn;
}

// Свойства и методы набора данных
interface IDataSource {
    readonly Columns: IColumns;                                             // Список столбцов
    readonly ColumnCount: number;                                           // Количество столбцов
    readonly RowCount: number;                                              // Количество строк

    // Метод Get возвращает значение заданной строки в заданном столбце
    Get(row: number, col: number | string): boolean | number | string | Date | undefined;
    // Метод IsNull проверяет на Null значение заданной строки в заданном столбце
    IsNull(row: number, col: number | string): boolean;
}

// Для выходного набора определены дополнительные методы
interface IOutputTable extends IDataSource {
    // Метод Append добавляет запись в набор
    Append(): void;
    // Метод Set задает значение заданного поля в записи, созданной методом Append
    Set(col: number | string, value: boolean | number | string | Date | null | undefined): void;
}

// Представление входной переменной
interface IVariable {
    readonly Index: number;                                                 // Индекс
    readonly Name: string;                                                  // Имя
    readonly DisplayName: string;                                           // Метка
    readonly DataType: DataType;                                            // Тип данных
    readonly Value: boolean | number | string | Date | undefined;           // Значение
    readonly IsNull: boolean;                                               // Проверка на Null
}

// Доступ к итерабельному списку входных переменных по имени и индексу
interface IVariableItems extends Iterable<Variable> {
    [name: string]: IVariable;
    [index: number]: IVariable;
}

// Представление переменных входного порта
interface IVariables {
    readonly Items: IVariableItems;
    readonly Count: number;
}
```