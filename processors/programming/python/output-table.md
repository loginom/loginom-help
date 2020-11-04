# ![](../../../images/icons/components/python_default.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используется объект `OutputTable`.

## Свойства OutputTable

%spoiler%Columns%spoiler%

**Columns**

Содержит доступную для чтения итерируемую коллекцию столбцов. Реализует протоколы *Mapping* и *Sequence*.  Возвращает значение типа `ColumnsClass`. Доступ к элементам может осуществляться через скобочную нотацию [] по именам и по индексам. При установке флага *Разрешить формировать выходные столбцы из кода* элементы коллекции имеют тип `ConfigurableOutputColumnClass`, иначе — `OutputColumnClass`. Оба этих типа унаследованны от `ColumnClass` и реализуют протокол *Sequence*. (см. [Полное описание API](./api-description.md)).


%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

Содержит доступное для чтения количество столбцов выходного набора данных.  Возвращает значение типа `int`.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

Содержит доступное для чтения количество строк выходного набора данных.  Возвращает значение типа `int`.

%/spoiler%

## Методы OutputTable

%spoiler%Get%spoiler%

**Get(row, col)**

- row — индекс строки. Принимает значение типа `int`.
- col — индекс или имя столбца. Принимает значение типов `int` или `str`.

Метод возвращает значение заданного столбца в заданной строке. Возвращаемое значение может иметь типы: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row — индекс строки. Принимает значение типа `int`.
- col — индекс или имя столбца. Принимает значение типов `int` или `str`.

Метод возвращает булево значение `true`, если столбец в заданной строке имеет пропущенное значение. В противном случае возвращается `false`.

%/spoiler%

%spoiler%AssignColumn%spoiler%

**GetColumn(col)**

- col — индекс или имя столбца. Принимает значение типов `int` или `str`.
При установке флага *Разрешить формировать выходные столбцы из кода* возвращается значение типа `ConfigurableOutputColumnClass`, в иначе — `OutputColumnClass`. Оба этих типа унаследованны от `ColumnClass` и реализуют протокол *Sequence*. (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

Метод добавляет новую строку в выходной набор данных. Не имеет аргументов.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col — индекс или имя столбца. Принимает значение типов `int` или `str`.
- value — значение. Принимает значения следующих типов: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

Метод задает значение заданного столбца в строке, добавленной методом `Append()`.

%/spoiler%

%spoiler%AssignColumns%spoiler%

**AssignColumns(array)**

- array — итерируемый объект, содержащий значения типа ColumnInfo (см. [Полное описание API](./api-description.md)).
Метод создает столбцы выходного набора из коллекции элементов типа ColumnInfo.

%/spoiler%

%spoiler%AddColumn%spoiler%

**AddColumn(columninfo)**

- columninfo — значениe типа string или объект, реализующий интерфейс IColumnInfo (см. [Полное описание API](./api-description.md)). Необязательный аргумент.
Метод добовляет столбец в конец списка столбцов выходного набора, принимая в качестве аргумента имя столбца или объект, реализующий интерфейс IColumnInfo. Возвращает объект, реализующий интерфейс IOutputColumn (см. Полное описание API).

%/spoiler%

%spoiler%InsertColumn%spoiler%

**InsertColumn(col, columninfo)**

- col — индекса столбца. Принимает значениe типа number.
- columninfo — объект, реализующий интерфейс ColumnInfo (см. [Полное описание API](./api-description.md)). Необязательный аргумент.
Метод вставляет столбец по заданному индексу в выходной набор. Возвращает объект, реализующий интерфейс OutputColumn.

%/spoiler%

%spoiler%DeleteColumn%spoiler%

**DeleteColumn(col)**

- col — индекс или имя столбца. Принимает значение типов `int` или `str`.
Метод удаляет столбец по имени или индексу.

%/spoiler%

%spoiler%ClearColumns%spoiler%

**ClearColumns()**

Не имеет аргументов. Метод очищает список столбцов.

%/spoiler%

## Примеры

### Пример №1

```python
from builtin_data import InputTable, OutputTable, DataType, DataKind, UsageType
import numpy as np, pandas as pd, datetime

#Копирование столбцов входного набора
OutputTable.AssignColumns(InputTable.Columns)
#Удаление столбца по индексу
OutputTable.DeleteColumn(0)
#даление столбца по имени
OutputTable.DeleteColumn("Test1")
#Удаление всего списка столбцов
OutputTable.ClearColumns()
#Добавление столбца в конец списка столбцов выходного набора
OutputTable.AddColumn(Name="COL0",
                      DisplayName="Дата/Время",
                      DataType=DataType.DateTime,
                      DataKind=DataKind.Continuous,
                      DefaultUsageType=UsageType.Active)
#Вставка столбца по заданному индексу в список столбцов выходного набора
OutputTable.InsertColumn(Index=0,
                         Name="COL1",
                         DisplayName="Признак",
                         DataType=DataType.Boolean)
#Получение ссылки на столбец по имени
COL0 = OutputTable.GetColumn("COL0")
COL1 = OutputTable.GetColumn("COL1")
#Вывод значений свойств столбца
print("Index: ", COL1.Index)
print("Name: ", COL1.Name)
print("DisplayName: ", COL1.DisplayName)
print("DataType: ", COL1.DataType)
print("DataKind: ", COL1.DataKind)
print("DefaultUsageType: ", COL1.DefaultUsageType)

#Добавление строки в выходной набор данных
OutputTable.Append()
#В поле с индексом 0 записываются текущие Дата/Время
OutputTable.Columns[1].Set(datetime.datetime.now())
#В поле с индексом 1 записывается значение true
OutputTable.GetColumn(0).Set(True)
#Копирование значений первой строки во вторую
OutputTable.Append()
for i in range(OutputTable.ColumnCount):
    value = OutputTable.Get(0, i)
    OutputTable.Set(i, value)

#Проверка, что значение в строке с индексом 0 в столбце с индексом 1 не определено
print(OutputTable.IsNull(0, 1))
print(OutputTable.Get(0, 1) is None)

print("RowCount = ", OutputTable.RowCount)
#Вывод: RowCount =  2

```

### Пример №2

Применение модуля builtin_pandas_support

```python
from builtin_data import InputTable, OutputTable, ConfigurableOutputTableClass
from builtin_pandas_utils import to_data_frame, prepare_compatible_table, fill_table

#Входной порт необязательный и может не содержать данные
if InputTable:
    #Создать pd.DataFrame по входному набору
    input_frame = to_data_frame(InputTable)
    #Группировка input_frame
    output_frame = input_frame.groupby(["Class"]).sum()
    #Если включена опция "Разрешить формировать выходные столбцы из кода",
    #структуру выходного набора можно подготовить по pd.DataFrame
    if isinstance(OutputTable, ConfigurableOutputTableClass):
        prepare_compatible_table(OutputTable, output_frame, with_index=True)
        ill_table(OutputTable, output_frame, with_index=True)

```