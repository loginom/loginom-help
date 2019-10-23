# Функции агрегации

**Функции агрегации** - статистические функции, которые работают с множеством значений. Возвращают одно значение, характеризующее это множество.

В таблице ниже представлены функции агрегации:

|Вид агрегации|![](../../images/icons/data-types/string_default.svg)|![](../../images/icons/data-types/integer_default.svg)|![](../../images/icons/data-types/float_default.svg)|![](../../images/icons/data-types/boolean_default.svg)|![](../../images/icons/data-types/datetime_default.svg)|![](../../images/icons/data-types/variant_default.svg)|Комментарий|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|:-|
|![](../../images/icons/aggregations_18x18/aggregations-sum_default.svg) Сумма||**•**|**•**||||Суммирует значение всех ячеек в столбце.
|![](../../images/icons/aggregations_18x18/aggregations-count_default.svg) Количество|**•**|**•**|**•**|**•**|**•**|**•**|Показывает общее количество записей в наборе данных, в том числе пустые записи и записи без значения (*`<null>`*).|
|![](../../images/icons/aggregations_18x18/aggregations-min_default.svg) Минимум|**•**|**•**|**•**|**•**|**•**|**•**|Выводит наименьшее значение по столбцу. Пустые записи в агрегации не участвуют, кроме типа ![](../../images/icons/data-types/string_default.svg) Строковый, где пустая запись является наименьшей. Записи с *`<null>`* в агрегации не участвуют вовсе.|
|![](../../images/icons/aggregations_18x18/aggregations-max_default.svg) Максимум|**•**|**•**|**•**|**•**|**•**|**•**|Выводит наибольшее значение по столбцу. Для ![](../../images/icons/data-types/string_default.svg) Строкового типа порядок к максимуму такой: "Пустое значение → Символы → Цифры → латинский алфавит в нижнем регистре → Латинский в верхнем → Русский в нижнем → Русский в верхнем регистре".|
|![](../../images/icons/aggregations_18x18/aggregations-avg_default.svg) Среднее||**•**|**•**||||Выводит среднее значение всех ячеек столбца. В расчетах участвуют те поля, которые не пустые, и не *`<null>`*.|
|![](../../images/icons/aggregations_18x18/aggregations-median_default.svg) [Медиана](https://wiki.loginom.ru/articles/median.html)||**•**|**•**||||Выводит значение медианы по столбцу. Участвующие в агрегации поля как у агрегации Среднее.|
|![](../../images/icons/aggregations_18x18/aggregations-stddev_default.svg) [Стандартное отклонение](https://wiki.loginom.ru/articles/mean-square-deviation.html)||**•**|**•**||||Выводит среднеквадратическое отклонение по столбцу. Участвующие в агрегации поля как у агрегации Среднее.|
|![](../../images/icons/aggregations_18x18/aggregations-unique_count_default.svg) Количество уникальных|**•**|**•**|**•**|**•**|**•**|**•**|Показывает количество уникальных значений записей. При подсчете не учитываются записи с пустым значением, со значением *`<null>`* или значением не соответствующим типу данных. Кроме типа данных ![](../../images/icons/data-types/string_default.svg) Строковый где не учитываются записи только со значением *`<null>`*.|
|![](../../images/icons/aggregations_18x18/aggregations-null-count_default.svg) Количество пропусков|**•**|**•**|**•**|**•**|**•**|**•**|Показывает количество записей с пустыми значениями, со значением *`<null>`* или со значениями не соответствующими типу данных. Кроме типа данных ![](../../images/icons/data-types/string_default.svg) Строковый, где пропусками считаются записи со значением *`<null>`*.|
|![](../../images/icons/aggregations_18x18/aggregations-stat-first_default.svg) Первый|**•**|**•**|**•**|**•**|**•**|**•**|Выводит значение первой записи в наборе данных.|
|![](../../images/icons/aggregations_18x18/aggregations-stat-last_default.svg) Последний|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|Выводит значение последней записи наборе данных.|


> **Примечание:** Тип данных ![](../../images/icons/data-types/variant_default.svg) Переменный следует методу агрегации того типа данных который был выбран в мастере настройки перед ним.
