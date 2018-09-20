# Статистические показатели

Доступность показателя для определенного поля зависит от типа и вида данных этого поля. Например, очевидно, что показатель "максимальная длина строки" не будет доступен для поля числового или логического типов.

Статистические показатели:

|Показатель|Необходимый тип данных поля|Описание|
|:----|:----|:----|
|[Гистограмма](https://wiki.loginom.ru/articles/histogram.html)|Все типы данных|Диаграмма, использующаяся для оценивания плотности распределения.|
 |Диаграмма размаха|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Диаграмма, компактно показывающая статистические паказатели.| 
 |Минимум|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Минимальное значение поля.|
 |Максимум|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Максимальное значение поля.|
 |Среднее|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Среднее значение поля.
 |[Стандартное отклонение](https://wiki.loginom.ru/articles/mean-square-deviation.html)|Все типы данных|Статистическая характеристика, показывающая среднюю степень разброса значений величины относительно ее среднего.|
 |Несмещенная дисперсия|Все типы данных, кроме ![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Статистическая характеристика, которая описывает меру разброса значений случайной величины относительно ее среднего.|
 |Нижний квартиль|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,25. Значение, ниже которого находится 25% совокупности данных.|
 |[Медиана](https://wiki.loginom.ru/articles/median.html)|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,5. Значение, делящее данные на две равные части. Одна половина данных по своему значению меньше медианы, а другая половина — больше.|
 |Верхний квартиль|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,75. Значение, ниже которого находится 75% совокупности данных.|
 |Межквартильный размах|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Разница между верхним и нижним квартилями.|
 |Медианное абсолютное отклонение|![](../../media/app/icons/datatype-18/datatype-default-02.svg) Целый <nobr>![](../../media/app/icons/datatype-18/datatype-default-03.svg) Вещественный </nobr>![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Мера колебаний случайной величины. Более [робастный](https://wiki.loginom.ru/articles/robustness.html) показатель, чем дисперсия. Используется для нивелирования высокогого влияния [аномальных значений](https://wiki.loginom.ru/articles/outlier.html).|
 |Сумма|Все типы данных, кроме ![](../../media/app/icons/datatype-18/datatype-default-05.svg) Дата/Время|Сумма всех элементов поля.|
 |Размах|Все типы данных|Разница между максимальным и минимальным значениями.|
 |Пропуски|Все типы данных|Количество пропусков в поле.|
 |Значения|Все типы данных|Количество непустых значений в поле.|
 |Уникальные|![](../../media/app/icons/datatype-18/datatype-default-01.svg) Строковый  ![](../../media/app/icons/datatype-18/datatype-default-04.svg) Логический|Количество уникальных значений в поле.|
 |Минимальная длина строки|![](../../media/app/icons/datatype-18/datatype-default-01.svg) Строковый|Минимальная длина строки из всей совокупности строк.|
 |Максимальная длина строки|![](../../media/app/icons/datatype-18/datatype-default-01.svg) Строковый|Максимальная длина строки из всей совокупности строк.|
 |Средняя длина строки|![](../../media/app/icons/datatype-18/datatype-default-01.svg) Строковый|Средняя длина строки, основанная на всей совокупности строк поля.|