# ![](../../../media/app/icons/component-18/component-default-55.svg) Перечисления встроенных сущностей Loginom

В контекст выполнения JavaScript встроены следующие перечисления, описывающие метаданные полей и переменных:

```javascript
enum DataType { None, Boolean, DateTime, Float, Integer, String, Variant }    // Типы данных
enum DataKind { Undefined, Continuous, Discrete }                             // Виды данных
enum UsageType { Unspecified, Excluded, Useless, Active,                      // Назначение полей
                Predicted, Key, Group, Value, Transaction, Item }
```

Где:

<table>
<tr><th colspan="2" align="center">UsageType</th><th colspan="2" align="center">DataType</th><th colspan="2" align="center">DataKind</th></tr>
<tr><th>Значение</th><th>Описание</th><th>Значение</th><th>Описание</th><th>Значение</th><th>Описание</th></tr>
<tr><td>Unspecified</td><td>Назначение не задано</td><td>None</td><td>Тип данных не задан</td><td>Undefined</td><td>Вид данных не задан</td></tr>
<tr><td>Excluded</td><td>Исключенное</td><td>Boolean</td><td>Логический</td><td>Continuous</td><td>Непрерывный</td></tr>
<tr><td>Useless</td><td>Непригодное</td><td>DateTime</td><td>Дата/Время</td><td>Discrete</td><td>Дискретный</td></tr>
<tr><td>Active</td><td>Используемое</td><td>Float</td><td>Вещественный</td><td></td><td></td></tr>
<tr><td>Predicted</td><td>Предсказываемое</td><td>Integer</td><td>Целый</td><td></td><td></td></tr>
<tr><td>Key</td><td>Ключ</td><td>String</td><td>Строковый</td><td></td><td></td></tr>
<tr><td>Group</td><td>Группа</td><td>Variant</td><td>Переменный</td><td></td><td></td></tr>
<tr><td>Value</td><td>Показатель</td><td></td><td></td><td></td><td></td></tr>
<tr><td>Transaction</td><td>Транзакция</td><td></td><td></td><td></td><td></td></tr>
<tr><td>Item</td><td>Элемент</td><td></td><td></td><td></td><td></td></tr>
</table>

Примеры использования перечислений:

```javascript
import { OutputTable, DataType, UsageType } from "builtIn/Data";

let col0 = OutputTable.Columns[0];
// Проверка значения свойства с типом "перечисление"
if (col0.DataType == DataType.String) {
    // Что-то делаем
}

// Вывод числового представления значения перечисления
console.log(col0.DefaultUsageType);
// Вывод строкового представления значения перечисления
console.log(UsageType[col0.DefaultUsageType]);
```