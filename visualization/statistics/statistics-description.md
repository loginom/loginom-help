# Описание статистических показателей

Доступность показателя для определенного поля зависит от типа или вида данных этого поля.

Статистические показатели:

|Показатель|Тип данных поля (Доступность)|Описание|
|:----|:----|:----|
|[Гистограмма](https://wiki.loginom.ru/articles/histogram.html)|Все типы данных|Диаграмма, использующаяся для графического представления распределения вероятностей значений некоторой случайной величины. По горизонтальной оси гистограммы откладывается диапазон наблюдаемых значений, разбитый на определенное число интервалов, а по вертикальной – вероятность или частота ее попадания в каждый из них.|
 |Диаграмма размаха|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Диаграмма, компактно показывающая статистические паказатели: медиана; нижний и верхний квартили; выбросы; наблюдаемые минимум и максимум.| 
 |Минимум|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Минимальное значение поля.|
 |Максимум|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Максимальное значение поля.|
 |Среднее|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Среднее значение поля.|
 |[Стандартное отклонение](https://wiki.loginom.ru/articles/mean-square-deviation.html)|Все типы данных|Статистическая характеристика, показывающая среднюю степень разброса значений величины относительно ее среднего.|
 |Несмещенная дисперсия|Все типы данных, кроме ![](../../media/app/icons/datatype-18/datatype-default-05.svg)Дата/Время|Статистическая характеристика, которая описывает меру разброса значений случайной величины относительно ее среднего.|
 |Нижний квартиль|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,25. Значение, ниже которого находится 25% совокупности данных.|
 |[Медиана](https://wiki.loginom.ru/articles/median.html)|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,5. Значение, делящее данные на две равные части. Т.е. одна половина данных по своему значению меньше медианы, а другая половина — больше.|
 |Верхний квартиль|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|[Квантиль](https://wiki.loginom.ru/articles/quantile.html) порядка 0,75. Значение, ниже которого находится 75% совокупности данных.|
 |Межквартильный размах|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Разница между верхними и нижним квартилями.|
 |Медианное абсолютное отклонение|Целый<br>![](../../media/app/icons/datatype-18/datatype-default-02.svg)<br>Вещественный![](../../media/app/icons/datatype-18/datatype-default-03.svg)<br> Дата/Время<br>![](../../media/app/icons/datatype-18/datatype-default-05.svg)<br>|Это медиана абсолютного значения разницы для каждого значения поля минус медиана. Более [робастно](https://wiki.loginom.ru/articles/robustness.html). Используется для нивелирования высого влияния выбросов.|
 |Сумма|Все типы данных, кроме ![](../../media/app/icons/datatype-18/datatype-default-05.svg)Дата/Время|Сумма всех элементов поля.|
 |Размах|Все типы данных|Разница между максимальным и минимальным значениями.|
 |Пропуски|Все типы данных|Количество пропусков в поле.|
 |Значения|Все типы данных|Количество непустых значений в поле.|
 |Уникальные|Строковый<br>![](../../media/app/icons/datatype-18/datatype-default-01.svg)<br> Логический<br>![](../../media/app/icons/datatype-18/datatype-default-04.svg)|Количество уникальных значений в поле.|
 |Минимальная длина строки|Строковый<br>![](../../media/app/icons/datatype-18/datatype-default-01.svg)|Минимальная длина строки из всей совокупности строк.|
 |Максимальная длина строки|Строковый<br>![](../../media/app/icons/datatype-18/datatype-default-01.svg)|Максимальная длина строки из всей совокупности строк.|
 |Средняя длина строки|Строковый<br>![](../../media/app/icons/datatype-18/datatype-default-01.svg)|Средняя длина строки, основанная на всей совокупности строк.|