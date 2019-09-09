# ![](../../images/icons/view_types/linregressreport_default.svg) Отчет по линейной регрессии

Визуализатор *Отчет по регрессии* компонента *Линейная регрессия* отображает статистические параметры и результаты статистических тестов для анализа регрессионных моделей.

Данный визуализатор состоит из трех областей:

* [Информации о модели](#informatsiya-o-modeli);
* [Коэффициентов регрессии](#koeffitsienty-regressii);
* [Шагов построения](#shagi-postroeniya).

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
|![Логический](../../images/icons/datatype_18/datatype_default-04.svg) Константа|Зависимая переменная|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) -2 Log Likelihood|-2 Логарифма [функции правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) R^2|[Коэффициент детерминации](https://wiki.loginom.ru/articles/coefficient-of-determination.html)|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) R^2 корр.|Коэффициент детерминации скорректированный|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html)|Критерий согласия для проверки гипотезы о законе распределения исследуемой случайной величины|
|![Целый](../../images/icons/datatype_18/datatype_default-02.svg) Число степеней свободы|Число независимо варьируемых значений признака|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) [Значимость](https://wiki.loginom.ru/articles/significance-regr.html)|Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) AIC|Информационный критерий Акаике|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) AICc|Информационный критерий Акаике скорректированный|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) BIC|Информационный критерий Байеса|
|![Вещественный](../../images/icons/datatype_18/datatype_default-03.svg) HQC|Информационный критерий Ханнана-Квина|