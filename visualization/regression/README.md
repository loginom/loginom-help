# Отчет по регрессии

## Описание

Визуализатор "Отчет по регрессии" отображает статистические параметры и результаты статистических тестов для анализа регрессионных моделей.

Данный визуализатор состоит из трех областей:

* [Информации о модели](#informatsiya-o-modeli);
* [Коэффициентов регрессии](#koeffitsienty-regressii);
* [Шагов построения](#shagi-postroeniya).

Подробно о том как включить данный визуализатор смотри [статью](../README.md).

>**Примечание:** визуализатор "Отчет по регрессии" может использоваться  с узлами ["Линейная регрессия"]() и ["Логистическая регрессия"](../../processors/datamining/logistic-regression.md).

## Интерфейс

### Операции

#### Область "Информация о модели"

* ![](./charts-button-3.png) **Информация о модели** — отображение/скрытие [информации о модели](#informatsiya-o-modeli).

#### Область "Коэффициенты регрессии"

* ![](./charts-button-1.png) **Таблица** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид "Таблица";
* ![](./charts-button-2.png) **Дерево** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид "Дерево";
* ![](./charts-button-4.png) **Нулевые значения** — отображение/скрытие нулевых значений.

#### Область "Шаги построения"

* ![](./charts-button-5.png) **Шаги построения** — отображение/скрытие [шагов построения](#shagi-postroeniya) модели.

### Области визуализатора

#### Информация о модели

Описание показателей модели представлено в таблице:

| Показатель | Описание |
|:------------------------|:-----------------------------------------------|
| <span title="Логический"><img src="../../images/icons/datatype_18/datatype_default-04.svg"></span> Константа | Зависимая переменная |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> [-2 Log Likelihood](https://wiki.loginom.ru/articles/plausibility-function.html) | -2 Логарифма функции правдоподобия |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> [R2](https://wiki.loginom.ru/articles/coefficient-of-determination.html) | Коэффициент детерминации |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> R2 корр. | Коэффициент детерминации скорректированный |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html) | Критерий согласия для проверки гипотезы о законе распределения исследуемой случайной величины |
| <span title="Целый"><img src="../../images/icons/datatype_18/datatype_default-02.svg"></span> Число степеней свободы | Число независимо варьируемых значений признака  |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> [Значимость](https://wiki.loginom.ru/articles/significance-regr.html) | Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> AIC | Информационный критерий Акаике  |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> AICc | Информационный критерий Акаике скорректированный |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> BIC | Информационный критерий Байеса |
| <span title="Вещественный"><img src="../../images/icons/datatype_18/datatype_default-03.svg"></span> HQC | Информационный критерий Ханнана-Квина |

#### Коэффициенты регрессии

Описание коэффициентов представлено в таблице:

| Коэффициент | Описание |
|:--------------------|:----------|
| Коэффициент | Характеристика связи между зависимой $$y$$ и независимой переменной $$x$$ |
| [Стандартная ошибка](https://wiki.loginom.ru/articles/standard-estimation-error.html) | Мера разброса данных наблюдений от смоделированных значений |
| [Коэффициент Вальда](https://wiki.loginom.ru/articles/wald-test.html) | Оценка значимости коэффициента при независимой переменной модели  |
| [Значимость](https://wiki.loginom.ru/articles/significance-regr.html) | Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели |
| [Отношение шансов](https://wiki.loginom.ru/articles/odds-ratio.html) | Отношение вероятности того, что событие произойдет к вероятности того, что событие не произойдет |
| [Нижняя граница ДИ](https://wiki.loginom.ru/articles/confidence-interval.html) | Нижняя граница доверительного интервала |
| [Верхняя граница ДИ](https://wiki.loginom.ru/articles/confidence-interval.html) | Верхняя граница доверительного интервала |
| [Порог значимости](https://wiki.loginom.ru/articles/confidence-interval.html) | Степень статистической связи между входной (набором входных) и выходной переменными регрессионной модели |

Коэффициенты регрессии могут быть представлены в виде ![](./charts-button-1.png) "Таблицы" (см. рисунок 1) или ![](./charts-button-2.png) "Дерева" (см. рисунок 2). 

![Режим отображения "Таблица".](./readme-1.png)

![Режим отображения "Дерево".](./readme-2.png)

#### Шаги построения

Область ![](./charts-button-5.png) "Шаги построения" имеет смысл включать только в том случае, если при настройке узла "Логистическая регрессия" в параметре "Отбор факторов и защита от переобучения" был выбран алгоритм, который подразумевает режим обработки фактов.

Область ![](./charts-button-5.png) "Шаги построения" состоит из следующих полей:

| Поле | Описание |
|:----------------|:----------------------------------------------------------------------------|
| Модель | Дерево моделей, в котором отображаются созданные алгоритмом модели в процессе обучения. Оно появляется тогда, когда отбираются факты. Для алгоритмов, которые не поддерживают обработку фактов, в этом поле будет только одна финальная модель. Выбрав левой кнопкой мыши модель, в нижней части окна отобразится [информация о выбранной модели](#informatsiya-o-modeli) (если нажата соответствующая кнопка), а также [коэффициенты регрессии](#koeffitsienty-regressii). |
| Показатель | Значение выбранного показателя для текущей модели. |
| Изменение поля | Отображает добавлен или удален был факт ("+" показывает, что факт был добавлен в модель, а "-", что удален из модели) |
| Поля | Текущие поля модели |

Существует три вида моделей:

* **Нулевая модель** — начальная модель работы алгоритма;
* **Промежуточная модель** — модель, которую создал алгоритм в процессе обучения;
* **Финальная модель** — модель, которую алгоритм посчитал наилучшей и дальнейшие действия не приведут к улучшению модели.

Доступные для выбора показатели:

* [-2 Log Likelihood](https://wiki.loginom.ru/articles/plausibility-function.html);
* AIC;
* AICc;
* BIC;
* HQC.