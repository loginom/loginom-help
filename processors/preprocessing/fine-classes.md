# ![](../../media/app/icons/vendors/coarseclasses.svg) Конечные классы

## Описание

Обработчик [Конечные классы](https://basegroup.ru/deductor/function/algorithm/final-class) предназначен для решения следующих задач.

* Преобразование непрерывных и дискретных входных полей, используемых для построения моделей бинарной классификации, путем квантования на основе метода совокупности доказательств или [WoE-анализа](https://basegroup.ru/deductor/function/algorithm/final-class) (weights of evidence, WoE). В результате каждое исходное значение признака заменяется на метку интервала квантования, в который данное значение попало. Использование результатов такого преобразования для построения моделей бинарной классификации (например, логистической регрессии), позволяет повысить их точность и устойчивость к изменению входных данных.
* Сокращение размерности данных за счет исключения признаков с низкой значимостью, снижения разнообразия значений признаков.
* Восстановление пропусков, когда пропуски образуют отдельную метку интервала квантования или объединяются с соседним, близким по значению WoE-индекса.
* Борьба с выбросами и экстремальными значениями - формирование меток интервала квантования при дискретизации непрерывного поля или объединение редких уникальных значений в одну категорию позволяет решить проблему экстремальных значений и выбросов.
* Упрощение описания исследуемых объектов.

Результатом работы обработчика Конечные классы является преобразование входных столбцов в последовательность интервалов, называемых конечными классами, каждому из которых присваивается определенная метка. Кроме этого, для каждого входного столбца может быть вычислен уровень значимости (отсутствует, очень низкая, низкая, средняя, высокая и очень высокая), на основе которого может производиться отбор переменных в модели бинарной классификации.

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных). 
* ![](../../media/app/icons/toolbar-18/add-inactive.svg) Добавление еще одного порта. Внешние диапазоны квантования (таблица данных). 

### Выход

* ![](../../media/app/icons/ports/table-inactive.svg) Выходной набор данных (таблица данных).

%spoiler%Структура данных:%spoiler%

  * **Поля исходного набора данных** (значения не изменяются).
  * ![](../../media/app/icons/datatype-18/datatype-default-02.svg)**Поле «<Метка столбца> Номер класса»** – идентификатор конечного класса, целое число (начиная с 0) – столбец создается всегда.
  * ![](../../media/app/icons/datatype-18/datatype-default-01.svg)**Поле «<Метка столбца> Метка»** – метка конечного класса, полученная автоматическим путем (числовые границы, если это непрерывная переменная, или перечисление уникальных значений через «;», если переменная дискретная).
  * ![](../../media/app/icons/datatype-18/datatype-default-03.svg)**Поле «<Метка столбца> Значимость».**

%/spoiler%


* ![](../../media/app/icons/ports/table-inactive.svg) Параметры классов (таблица данных).

%spoiler%Структура данных:%spoiler%

* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Группа** – номер группы, к которой относится запись в таблице. Каждая группа записей ассоциирована с признаком (полем) исходного набора данных, являющимся входным для узла Конечные классы. Количество записей в группе соответствует числу конечных классов исходного столбца.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Идентификатор** – имя столбца, под которым он будет обрабатываться в наборе данных. Число столбцов равно числу входных полей узла Конечные классы.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Метка столбца** – мнемоническое обозначение входного столбца, под которым он будет виден пользователю в базе или хранилище данных. По умолчанию устанавливается название, под которым данный столбец виден в исходном наборе данных.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Номер класса** – порядковый номер, присвоенный классу в при его формировании в узле Конечные классы.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Уник.значение** – для дискретных полей отображает их уникальные значения.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Метка класса** – идентификатор класса, присвоенный ему при формировании в узле конечные классы. Для числовых столбцов метка класса состоит из верхней и нижней границ класса (для нулевого класса указывается только нижняя граница с предлогом «от…», для класса с максимальным номером указывается верхняя граница с предлогом «до…»). Для категориальных полей, если каждый класс формируется для отдельной категории, то в качестве метки указывается эта категория. Если класс включает несколько категорий, то в метке перечисляются все, вошедшие в класс категории.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Число событий** – количество наблюдений в классе, для которых выходное значение – событие.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Число не-событий** – количество наблюдений в классе, для которых выходное значение – не-событие.
* ![](../../media/app/icons/datatype-18/datatype-default-06.svg) **Нижняя граница** – для числовых признаков указывается нижняя граница интервала числом. Для категориальных признаков нижняя граница обозначается двумя категориями – верхней категорией предыдущего класса и нижней категорией текущего.
* ![](../../media/app/icons/datatype-18/datatype-default-06.svg) **Верхняя граница** – для числовых признаков указывается верхняя граница интервала числом. Для категориальных признаков верхняя граница обозначается двумя категориями – нижней категорией следующего класса и верхней категорией текущего.
* ![](../../media/app/icons/datatype-18/datatype-default-03.svg) **Вес доказательства** – коэффициент WoE для каждого класса.
* ![](../../media/app/icons/datatype-18/datatype-default-03.svg) **Информационный индекс** – указываются значения информационных индексов IV, вычисленные по каждому входному столбцу. Сумма частных информационных индексов по каждому классу дает общий информационный индекс признака, по которому определяется его значимость.
* ![](../../media/app/icons/datatype-18/datatype-default-03.svg) **Доля класса** – отношение количества наблюдений в классе к общему числу наблюдений.
* ![](../../media/app/icons/datatype-18/datatype-default-04.svg) Верхняя граница диапазонов открыта.
* ![](../../media/app/icons/datatype-18/datatype-default-04.svg) **Предквантование** – показывает применялось ли предквантование в процессе формирования конечных классов.

%/spoiler%

* ![](../../media/app/icons/ports/table-inactive.svg) Значимости столбцов (таблица данных).

%spoiler%Структура данных:%spoiler%

* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Имя столбца** – идентификатор столбца, под которым он будет обрабатываться в наборе данных. Число столбцов равно числу входных полей узла Конечные классы.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Метка столбца** – мнемоническое обозначение входного столбца, под которым он будет виден пользователю в базе или хранилище данных. По умолчанию устанавливается название, под которым данный столбец виден в исходном наборе данных.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Число событий** – количество событий, попавших в данный класс.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Число не-событий** – количество не-событий, попавших в данный класс.
* ![](../../media/app/icons/datatype-18/datatype-default-02.svg) **Всего** – общее число наблюдений в классе.
* ![](../../media/app/icons/datatype-18/datatype-default-03.svg) **Информационный индекс** – указываются значения информационных индексов IV, вычисленные по каждому входному столбцу.
* ![](../../media/app/icons/datatype-18/datatype-default-01.svg) **Значимость столбца** – уровень значимости входного столбца, определенный на основе информационного индекса. Может принимать значения: отсутствует, очень низкая, низкая, средняя, высокая и очень высокая.

%/spoiler%

## Мастер настройки

Мастер настройки состоит из следующих шагов:

* **[Настройка внешнего разбиения](./fine-classes/configuring-an-external-partition.md)** - появляется, если задан порт *Внешние диапазоны квантования*. Позволяет настроить параметры заранее настроенного внешнего разбиения.

* **[Настройка назначений столбцов](./fine-classes/configure-column-assignments.md)** - позволяет задать назначение столбцам, настройки входного и выходного полей, внешнего разбиения, а также настройки алгоритма для формирования конечных классов входных полей.

* **[Настройка конечных классов](./fine-classes/configuring-the-finite-classes.md)** - позволяет просматривать начальные классы и результаты формирования конечных классов. Предназначена для внесения ручной корректировки в границы (или множества) сформированных конечных классов с целью достижения лучших результатов.