# ![Переменные в таблицу](../../images/icons/components/variablestodata_default.svg) Переменные в таблицу

Обработчик преобразовывает список переменных в таблицу. Значения переменных можно расположить в строках, либо в столбцах результирующей таблицы.

## Порты

### Вход

* ![Входные переменные](../../images/icons/ports/optional_input_variable_inactive.svg) **Входные переменные** — список переменных, подлежащий преобразованию в таблицу.

### Выход

* ![Выходной набор данных](../../images/icons/ports/output_table_inactive.svg) **Выходной набор данных** — таблица данных.

## Мастер настройки

В окне мастера настройки предоставляется два варианта записи переменных:

* **в столбцы** — каждой переменной будет соответствовать отдельное поле таблицы;
* **в строки** — каждой переменной будет соответствовать отдельная запись таблицы.

%spoiler%Пример:%spoiler%

Имеется список переменных:

| Имя | Значение |
| :-- | --: |
| a   |  5 |
| b   |  7 |
| c   | 10 |
| d   |  2 |

Результат преобразования списка переменных:

* В столбцы

| a(сумма) | b(сумма) | c(сумма) | d(сумма) |
| ---: | ---: | ---: | ---: |
| 5 | 7 | 10 | 2 |

* В строки

| Имя | Метка | Значение |
| :-- | :-- | --: |
| a | a(сумма) | 5 |
| b | b(сумма) | 7 |
| c | c(сумма) | 10 |
| d | d(сумма) | 2 |

%/spoiler%