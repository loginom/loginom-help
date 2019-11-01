# ![Отчет по регрессии](../../images/icons/view_types/logregressreport_default.svg)/![Отчет по регрессии](../../images/icons/view_types/linregressreport_default.svg) Отчет по регрессии

Визуализатор *Отчет по регрессии* отображает статистические параметры и результаты статистических тестов для анализа регрессионных моделей.

Данный визуализатор состоит из трех областей:

* [Информации о модели](#informatsiya-o-modeli);
* [Коэффициентов регрессии](#koeffitsienty-regressii);
* [Шагов построения](#shagi-postroeniya).

Подробно о том, как включить данный визуализатор, можно прочитать в [статье](../README.md).

>**Примечание:** визуализатор *Отчет по регрессии* может использоваться с узлами [*Линейная регрессия*](../../processors/datamining/linear-regression) и [*Логистическая регрессия*](../../processors/datamining/logistic-regression/README.md).

## Интерфейс

### Операции

#### Область Информация о модели

* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_info_default.svg) **Информация о модели** — отображение/скрытие [информации о модели](#informatsiya-o-modeli).

#### Область Коэффициенты регрессии

* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_table-view_default.svg) **Таблица** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид *Таблица*;
* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_tree_default.svg) **Дерево** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид *Дерево*;
* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_zero_default.svg) **Нулевые значения** — отображение/скрытие нулевых значений.

#### Область Шаги построения

* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_building-steps_default.svg) **Шаги построения** — отображение/скрытие [шагов построения](#shagi-postroeniya) модели.

### Области визуализатора

#### Информация о модели

Описание показателей модели представлено в таблице:

|Показатель|Описание|
|:------------------------|:-----------------------------------------------|
|![Логический](../../images/icons/datatype_18/datatype_default-04.svg) Константа|[Зависимая переменная](https://wiki.loginom.ru/articles/output-variable.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) -2 Log Likelihood|-2 Логарифма [функции правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) R^2|[Коэффициент детерминации](https://wiki.loginom.ru/articles/coefficient-of-determination.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) R^2 корр.|[Коэффициент детерминации скорректированный](https://wiki.loginom.ru/articles/coefficient-determ-adj.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html)|[Критерий согласия](https://wiki.loginom.ru/articles/fitting-criterion.html) для проверки гипотезы о законе распределения исследуемой случайной величины|
|![Целый](../../images/icons/datatype_18/datatype_default-02.svg) [Число степеней свободы](https://wiki.loginom.ru/articles/degrees-of-freedom.html)|Число независимо варьируемых значений признака|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) [Значимость](https://wiki.loginom.ru/articles/significance-regr.html)|Степень статистической связи между [входной](https://wiki.loginom.ru/articles/degrees-of-freedom.html) (набором входных) и [выходной переменными](https://wiki.loginom.ru/articles/output-variable.html)  регрессионной модели|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) AIC|[Информационный критерий Акаике](https://wiki.loginom.ru/articles/aic.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) AICc|[Информационный критерий Акаике скорректированный](https://wiki.loginom.ru/articles/aicc.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) BIC|[Информационный критерий Байеса](https://wiki.loginom.ru/articles/bic.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) HQC|[Информационный критерий Ханнана-Квина](https://wiki.loginom.ru/articles/hq.html)|

#### Коэффициенты регрессии

Описание коэффициентов представлено в таблице:

|Коэффициент|Описание|
|:--------------------|:----------|
|Коэффициент|Характеристика связи между зависимой *y* и [независимой переменной](https://wiki.loginom.ru/articles/input-variable.html) *x*|
|[Стандартная ошибка](https://wiki.loginom.ru/articles/standard-estimation-error.html)|Мера разброса данных наблюдений от смоделированных значений|
|[Коэффициент Вальда](https://wiki.loginom.ru/articles/wald-test.html)|Оценка значимости коэффициента при независимой переменной модели|
|[Значимость](https://wiki.loginom.ru/articles/significance-regr.html)|Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели|
|[Отношение шансов](https://wiki.loginom.ru/articles/odds-ratio.html)|Отношение вероятности того, что событие произойдет к вероятности того, что событие не произойдет|
|Нижняя граница ДИ|Нижняя граница [доверительного интервала](https://wiki.loginom.ru/articles/confidence-interval.html)|
|Верхняя граница ДИ|Верхняя граница доверительного интервала|
|Порог значимости|Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели|

Коэффициенты регрессии могут быть представлены в виде ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_table-view_default.svg) *Таблицы* (см. рисунок 1) или ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_tree_default.svg) *Дерева* (см. рисунок 2). 

![Режим отображения Таблица.](./readme-1.png)

![Режим отображения Дерево.](./readme-2.png)

#### Шаги построения

Область ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_building-steps_default.svg) *Шаги построения* имеет смысл включать только в том случае, если при настройке узла *Логистическая регрессия* в параметре *Отбор факторов и защита от переобучения* был выбран алгоритм, который подразумевает режим обработки [фактов](https://wiki.loginom.ru/articles/fact.html).

Область ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_building-steps_default.svg) *Шаги построения* состоит из следующих полей:

|Поле|Описание|
|:----------------|:----------------------------------------------------------------------------|
|Модель|Дерево моделей, в котором отображаются созданные алгоритмом модели в процессе обучения. Оно появляется тогда, когда отбираются факты. Для алгоритмов, которые не поддерживают обработку фактов, в этом поле будет только одна финальная модель. Выбрав левой кнопкой мыши модель, в нижней части окна отобразится [информация о выбранной модели](#informatsiya-o-modeli) (если нажата соответствующая кнопка), а также [коэффициенты регрессии](#koeffitsienty-regressii).|
|Показатель|Значение выбранного показателя для текущей модели|
|Изменение поля|Отображает добавлен или удален был факт ("+" показывает, что факт был добавлен в модель, а "-" означает, что факт удален из модели)|
|Поля|Текущие поля модели|

Существует три вида моделей:

* **Нулевая модель** — начальная модель работы алгоритма;
* **Промежуточная модель** — модель, которую создал алгоритм в процессе обучения;
* **Финальная модель** — модель, которую алгоритм посчитал наилучшей, и дальнейшие действия не приведут к улучшению модели.

Доступные для выбора показатели:

* -2 Log Likelihood;
* AIC;
* AICc;
* BIC;
* HQC.