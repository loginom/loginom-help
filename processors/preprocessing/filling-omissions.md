# ![ ](../../media/app/icons/component-18/component-default-33.svg) Заполнение пропусков

## Описание

Данный обработчик предназначен для автоматического заполнения пропущенных значений в наборах данных.
Для каждого столбца исходного набора данных пользователь может выбрать наиболее подходящий метод заполнения пропусков. Пропусками считаются Null-значения.

## Порты

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных). 

### Выход

* ![](../../media/app/icons/ports/table-inactive.svg) Выходной набор данных (таблица данных). 

* ![](../../media/app/icons/ports/table-inactive.svg) Пропуски (таблица строк, содержащих пропуски). 

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

<table>
<tr><th valign=top align=center rowspan=2>Метод</th><th align=center colspan=2>Неупорядоченный набор</th><th align=center colspan=2>Упорядоченный набор</th></tr>
<tr><th align=center><img src=../../media/app/icons/datatype-18/datatype-default-09.svg> Дискретный</th><th align=center><img src=../../media/app/icons/datatype-18/datatype-default-08.svg> Непрерывный</th><th align=center><img src=../../media/app/icons/datatype-18/datatype-default-09.svg> Дискретный</th><th align=center><img src=../../media/app/icons/datatype-18/datatype-default-08.svg> Непрерывный</th></tr>
<tr><td align=left>Оставить без изменения</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td></td><td></td></tr>
<tr><td align=left>Удалять записи</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center></td><td align=center></td></tr>
<tr><td align=left>Заменять случайными значениями</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td></tr>
<tr><td align=left>Заменять средним</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg></td><td align=center> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td></tr>
<tr><td align=left>Заменять медианой</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td></tr>
<tr><td align=left>Заменять наиболее вероятным</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td></tr>
<tr><td align=left>Заменять значением «Не задано»</td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-04.svg> <img src=../../media/app/icons/datatype-18/datatype-default-01.svg></td><td></td></tr>
<tr><td align=left>Интерполировать</td><td></td><td></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td><td align=center><img src=../../media/app/icons/datatype-18/datatype-default-05.svg> <img src=../../media/app/icons/datatype-18/datatype-default-03.svg> <img src=../../media/app/icons/datatype-18/datatype-default-02.svg></td></tr>
</table>


**Смотри также:**

* [Редактирование выбросов](./editing-of-emissions.md)
