# ![](../../../media/app/icons/component-18/component-default-55.svg) Перечисления встроенных сущностей Loginom

В контекст выполнения JavaScript встроены перечисления, описывающие метаданные полей и переменных.

## Описание перечислений

### DataType

Представляет [типы данных](../../../data/datatype.md). Элементы перечисления:

| Элемент   |                                                                   | Представляемый тип данных |
| :-------- | ------: | :------ |
| None      |                                                                   | Тип данных не задан |
| Boolean   | ![](../../../images/icons/datatype_18/datatype_default-04.svg) | Логический |
| DateTime  | ![](../../../images/icons/datatype_18/datatype_default-05.svg) | Дата/время |
| Float     | ![](../../../images/icons/datatype_18/datatype_default-03.svg) | Вещественный |
| Integer   | ![](../../../images/icons/datatype_18/datatype_default-02.svg) | Целый |
| String    | ![](../../../images/icons/datatype_18/datatype_default-01.svg) | Строковый |
| Variant   | ![](../../../images/icons/datatype_18/datatype_default-06.svg) | Переменный |

### DataKind

Представляет [виды данных](../../../data/datakind.md). Элементы перечисления:

| Элемент   |                                                                    | Представляемый вид данных |
| :-------- | ------: | :------ |
| Undefined  |                                                                   | Вид данных не задан |
| Continuous | ![](../../../images/icons/datatype_18/datatype_default-08.svg) | Непрерывный |
| Discrete   | ![](../../../images/icons/datatype_18/datatype_default-09.svg) | Дискретный |

### UsageType

Представляет [назначение полей](../../../data/datasetfieldoptions.md). Элементы перечисления:

| Элемент   |                                                           | Представляемое назначение поля |
| :-------- | ------: | :------ |
| Unspecified |                                                                   | Назначение не задано |
| Excluded    |  | Исключенное |
| Useless     |  | Непригодное |
| Active      |  | Используемое |
| Predicted   |  | Предсказываемое |
| Key         |  | Ключ |
| Group       |  | Группа |
| Value       |  | Показатель |
| Transaction |  | Транзакция |
| Item        |  | Элемент |

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