# ![ ](../../media/app/icons/component-18/component-default-27.svg) Разбиение на множества

## Описание

Разбиение на множества применяется в случае, когда задача анализа требует разделить исходный набор данных на обучающую и тестовую выборки. Размер этих выборок можно настроить, а отбор записей для них производится на основе выбранного метода сэмплинга. Сначала отбираются записи для обучающей выборки, оставшиеся используются для тестовой (этот порядок можно изменить в мастере настройки обработчика).

## Порты

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных). 

### Выход

* ![](../../media/app/icons/ports/table-inactive.svg). Содержит все строки, которые были взяты для обеих выборок. Добавляется поле "тестовое множество": в этом поле значение "true" свидетельствует о том, что запись попала в тестовую выборку, а значение "false" - в обучающую.

* ![](../../media/app/icons/ports/table-inactive.svg) Обучающий выходной набор (таблица данных). 

* ![](../../media/app/icons/ports/table-inactive.svg) Тестовый выходной набор (таблица данных). 

## Мастер настройки

* **Состояние входа** - строка состояния.
* **Общее число записей** - число записей таблицы входного источника данных.
* **Область настройки количества строк для обучающей и тестовой выборок**.

Размер каждой выборки задается вручную; счетная кнопка "способ" предоставляет выбор - непосредственно указать количество строк или задать его в процентах от размера исходной таблицы. Сумма строк выборок не может быть больше, чем количество строк в исходной таблице.

* **Метод сэмплинга**:
  * *Случайный* - записи случайным образом выбираются из исходного набора данных и помещаются в результирующую выборку.
  * *Равномерный случайный* - все записи исходного набора данных разделяются на группы и затем из каждой группы случайным образом выбираются и помещаются в результирующую выборку. Размерность группы задается в параметрах метода.
  * *Стратифицированный* - все записи исходного набора данных разделяются на однородные группы (страты), после чего из каждой группы случайным образом выбираются и помещаются в результирующую выборку. Поля, определяющие страты, задаются в параметрах метода с помощью флажков.
  * *Последовательный* - из исходного набора данных последовательно выбираются записи и помещаются в результирующую выборку. Размеры сэмплированного и неиспользованного множеств настраиваются в параметрах метода.
  * *Отбор со смещением* - в исходном наборе данных сокращается или увеличивается количество записей с выбранными уникальными значениями перед обработкой. В параметрах этого метода коэффициент увеличения задается в поле "фактор" напротив каждого уникального значения выбранного столбца исходной таблицы, также число записей для каждого уникального значения можно ввести вручную.

* **Приоритет тестового множества (необязательный флаг)**.

Активация данного флага приводит к тому, что сначала отбираются записи для тестовой выборки, а оставшиеся используются для обучающей. Эта опция недоступна при выборе последовательного метода сэмплинга.

Имеется три режима отбора, определяемые параметром "Положение приоритетного тестового множества":

* *Определяется алгоритмом* - записи будут отобраны в соответствии с выбранным ранее методом сэмплинга;
* *В начале набора* - в качестве тестовой выборки будут использованы строки из начала набора, взятые в том же порядке, что и в исходной таблице;
* *В конце набора* - в качестве тестовой выборки будут использованы строки из конца набора, взятые в том же порядке, что и в исходной таблице.