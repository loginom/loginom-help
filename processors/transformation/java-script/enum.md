# ![](../../../media/app/icons/component-18/component-default-55.svg) Перечисления встроенных сущностей Loginom

В контекст выполнения JavaScript встроены перечисления, описывающие метаданные полей и переменных.

## Описание перечислений

### DataType

Представляет [типы данных](../../../data/datatype.md). Элементы перечисления:

| Элемент   |  Тип данных |
| :-------- | :------ |
| None      | ![](../../../images/icons/usage-types/unspecified_default.svg) Тип данных не задан |
| Boolean   | ![](../../../images/icons/datatype_18/datatype_default-04.svg) Логический |
| DateTime  | ![](../../../images/icons/datatype_18/datatype_default-05.svg) Дата/время |
| Float     | ![](../../../images/icons/datatype_18/datatype_default-03.svg) Вещественный |
| Integer   | ![](../../../images/icons/datatype_18/datatype_default-02.svg) Целый |
| String    | ![](../../../images/icons/datatype_18/datatype_default-01.svg) Строковый |
| Variant   | ![](../../../images/icons/datatype_18/datatype_default-06.svg) Переменный |

### DataKind

Представляет [виды данных](../../../data/datakind.md). Элементы перечисления:

| Элемент   | Вид данных |
| :-------- | :------ |
| Undefined  | ![](../../../images/icons/usage-types/unspecified_default.svg) Вид данных не задан |
| Continuous | ![](../../../images/icons/datatype_18/datatype_default-08.svg) Непрерывный |
| Discrete   | ![](../../../images/icons/datatype_18/datatype_default-09.svg) Дискретный |

### UsageType

Представляет [назначение полей](../../../data/datasetfieldoptions.md). Элементы перечисления:

| Элемент   | Назначение поля |
| :-------- | :------ |
| Unspecified | ![](../../../images/icons/usage-types/unspecified_default.svg) Назначение не задано |
| Excluded    | ![](../../../images/icons/usage-types/unused_default.svg) Исключенное |
| Useless     | ![](../../../images/icons/usage-types/useless_default.svg) Непригодное |
| Active      | ![](../../../images/icons/usage-types/active_default.svg) Используемое |
| Predicted   | ![](../../../images/icons/usage-types/predicted_default.svg) Предсказываемое |
| Key         | ![](../../../images/icons/usage-types/source_default.svg) Ключ |
| Group       | ![](../../../images/icons/usage-types/group_default.svg) Группа |
| Value       | ![](../../../images/icons/usage-types/value_default.svg) Показатель |
| Transaction | ![](../../../images/icons/usage-types/transaction_default.svg) Транзакция |
| Item        | ![](../../../images/icons/usage-types/item_default.svg) Элемент |

## Примеры использования

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