# ![](../../media/app/icons/component-18/component-default-04.svg) Кросс-таблица

## Описание

Обработчик создает сводную таблицу на основе исходного набора. При создании таблицы:

* часть полей исходного набора остается без изменений, образуя **строки** сводной таблицы;
* значения ячеек другой группы полей образуют **колонки** сводной таблицы, задавая их заголовки;
* данные третьей группы полей участвуют в расчете **фактов** - [агрегированных значений](../aggregation-functions.md) на пересечении строк и колонок сводной таблицы.

%spoiler%Пример:%spoiler%

Исходная таблица:

| Дата | Товар | Количество продаж |
| -------- | -------- | -------- |
| 05.02.2017 | Обои | 2000 |
| 05.02.2017 | Затирка | 300 |
| 07.02.2017 | Обои | 2000 |
| 07.02.2017 | Герметик | 750 |
| 07.02.2017 | Грунтовка | 400 |
| 10.02.2017 | Грунтовка | 400 |
| 10.02.2017 | Обои | 3000 |
| 11.02.2017 | Герметик | 250 |

Преобразуем исходную таблицу со следующими параметрами: колонки - "Товар", строки - "Дата", факты - "Количество продаж". По полю "Количество продаж" выберем функцию агрегации "сумма".

Выходной набор данных:

| Дата | Герметик | Грунтовка | Затирка | Обои |
| -------- | -------- | -------- | -------- | -------- |
| 05.02.2017 | 750 | | 300 | 4000 |
| 07.02.2017 | 250 | 800 | | 3000 |

После обработки значения поля "Товар" перешли в заголовки новых столбцов, значения поля "Дата" остались в строках, а значения поля "Количество продаж" просуммированы по датам.

%/spoiler%

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных). 

### Выход

* ![](../../media/app/icons/ports/table-inactive.svg) Выходной набор данных (таблица данных).

## Мастер настройки

Окно мастера поделено на две области: доступные поля (слева) и выбранные поля (справа).

* Область «Доступные поля» содержит поля входного набора данных.

* Область «Выбранные поля» делится на группы:
  * ![](../../media/app/icons/view-types-18/columns.svg)   Колонки;
  * ![](../../media/app/icons/view-types-18/strings.svg)   Строки;
  * ![](../../media/app/icons/view-types-18/facts.svg)  Факты.

В области «Доступные поля» помимо полей входного набора данных всегда присутствует синтетическое поле "Количество", оно может быть добавлено только в группу "Факты". В нем будет подсчитано, сколько раз в исходном наборе данных встречается каждая комбинация из колонок и строк.

### Колонки

Значения этих полей станут заголовками столбцов. Поля в данной группе обязательно должны иметь дискретный [вид данных](../../data/datatype.md)

При работе с кросс-таблицей может возникнуть ситуация, когда в полях, по которым были сформированы колонки, появляются новые значения. В обработчике имеется два подхода к решению этой проблемы:

* **Скользящие уникальные значения** - заново создает колонки из уникальных значений поля (полей). При изменении значений исходного набора данных вся структура результирующей таблицы полностью перестроится с учетом новых уникальных значений. Также можно установить минимальное число значений поля, из которых будут созданы колонки. Но в этом случае в результирующей таблице сохранится столбец с оставшимися значениями.
* **Группа значений** - если в исходном поле с момента последней настройки узла появятся новые значения, то при включенном флаге "Прочие" факты для таких значений будут агрегироваться в столбце "Прочие". Установленный флаг "Пропущенные" обеспечивает  отображение в выходном наборе данных полей с пропущенными значениями. Факты для них будут агрегироваться в столбце "Пропущенные значения".

Также флаг "Скользящие уникальные значения" и настройку "Ограничение количества значений" (минимальное число значений) можно установить сразу для всех колонок.

С помощью кнопок ![](../../media/app/icons/toolbar-18/top.svg) и ![](../../media/app/icons/toolbar-18/down.svg) можно менять порядок полей в группе. То, в каком порядке расположены поля, влияет на структуру результирующей таблицы.

%spoiler%Пример:%spoiler%

Порядок полей: Товар, Точка продажи.

<table>
<tr><th colspan="2" align="center">Обои</th><th colspan="2" align="center">Плитка</th><th colspan="2" align="center">Герметик</th></tr>
<tr><th>СтройРынок</th><th>Павильон</th><th>СтройРынок</th><th>Павильон</th><th>СтройРынок</th><th>Павильон</th></tr>
<tr><td>300</td><td>600</td><td>400</td><td>100</td><td>200</td><td>300</td></tr>
</table>

Порядок полей: Точка продажи, Товар.

<table>
<tr><th colspan="3" align="center">СтройРынок</th><th colspan="3" align="center">Павильон</th></tr>
<tr><th>Обои</th><th>Плитка</th><th>Герметик</th><th>Обои</th><th>Плитка</th><th>Герметик</th></tr>
<tr><td>300</td><td>400</td><td>200</td><td>600</td><td>100</td><td>300</td></tr>
</table>

%/spoiler%

### Строки

Из значений полей  сформируются строки в кросс-таблице. Одинаковые значения поля (полей) будут сгруппированы таким же образом, как это происходит в обработчике [Группировка](../../processors/transformation/grouping.md).

Порядок полей в данной группе влияет на порядок сортировки данных в результирующей таблице по этим полям.

### Факты

Данные полей в этой группе обрабатываются в соответствии с [функциями агрегации](../aggregation-functions.md). Получившиеся значения отображаются на пересечении колонок и строк. По умолчанию для числовых типов выбрана функция "Сумма", а для всех остальных "Количество".

Чтобы выбрать другие функции агрегации, необходимо дважды кликнуть по полю. При выборе нескольких вариантов функций, каждая из них будет рассчитана в отдельном столбце.

В группе "Факты" порядок полей не имеет значения.