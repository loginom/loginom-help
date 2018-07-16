# ![ ](../../media/app/icons/component_18/component_default-33.svg) Заполнение пропусков

## Описание

Данный обработчик предназначен для автоматического заполнения пропущенных значений в наборах данных.
Для каждого столбца исходного набора данных пользователь может выбрать наиболее подходящий метод заполнения пропусков. Пропусками считаются Null-значения.

## Порты

### Вход

* ![](../../media/app/icons/ports/output_table_inactive.svg).

### Выход

* ![](../../media/app/icons/ports/output_table_inactive.svg).

* ![](../../media/app/icons/ports/output_table_inactive.svg).

## Мастер настройки

* **Исходные данные упорядочены** - установку данного флага следует производить в том случае, когда известно, что данные являются упорядоченными. Например, временной или иной ряд, значения которого упорядочены по возрастанию или убыванию (например, по дате или времени). Для упорядоченных и неупорядоченных данных могут применяться различные методы заполнения пропусков.

* **Допустимый процент пропусков** - принимает значение в процентах и определяет порог, после которого заполнение пропусков не происходит. Например, если этому параметру задано значение 50, то поля, содержащие более 50% пропусков, заполняться не будут.

* **Область настройки методов обработки пропусков** - содержит список полей доступных для обработки. Для каждого поля можно выставить флаг, задающий необходимость обработки, и затем выставить метод заполнения пропусков.

Доступны следующие методы обработки:

* оставить без изменения - выявленные пропуски заполняться не будут;

* удалять записи - строки с выявленными пропусками исключаются из набора данных;

* заменять случайными значениями - выявленные пропуски заменяются случайным значением столбца;

* заменять средним - выявленные пропуски заменяются средним значением столбца;

* заменять медианой - выявленные пропуски заменяются медианой, вычисленной по столбцу;

* заменять наиболее вероятным - выявленные пропуски заменяются наиболее вероятным значением по столбцу, замена производится на среднее значение из наиболее вероятного интервала, число интервалов варьируется в зависимости от объема выборки - чем она больше, тем больше интервалов;

* заменять значением "Не задано" - выявленные пропуски заменяются значением "Не задано";

* интерполировать - выявленные пропуски заменяются расчетным значением по столбцу.

Для каждого поля спектр доступных методов определяется тремя характеристиками данных одновременно:

* Упорядоченностью;

* Типом;

* Видом.

Таблица применимости по этим характеристикам:

 | Метод | Неупорядоченный набор | | Упорядоченный набор | |
 | ---- | ---- | --- | --- | --- |
 | |![](../../media/app/icons/datatype_18/datatype_default-09.svg) Дискретный | ![](../../media/app/icons/datatype_18/datatype_default-08.svg) Непрерывный | ![](../../media/app/icons/datatype_18/datatype_default-09.svg) Дискретный | ![](../../media/app/icons/datatype_18/datatype_default-08.svg) Непрерывный |
 | Оставить без изменения | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | | |
 | Удалять записи | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | | |
 | Заменять случайными значениями | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) |
 | Заменять средним | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) |
 | Заменять медианой | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) |
 | Заменять наиболее вероятным | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) |
 | Заменять значением «Не задано» | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | | ![](../../media/app/icons/datatype_18/datatype_default-04.svg) ![](../../media/app/icons/datatype_18/datatype_default-01.svg) | |
 | Интерполировать | | | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) | ![](../../media/app/icons/datatype_18/datatype_default-05.svg) ![](../../media/app/icons/datatype_18/datatype_default-03.svg) ![](../../media/app/icons/datatype_18/datatype_default-02.svg) |

----

**Смотри также:**

* [Редактирование выбросов](../../processors/preprocessing/editing_of_emissions.md)
