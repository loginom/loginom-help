# ![](../../media/app/processors/default-10.svg) Параметры полей

## Описание

Узел позволяет изменить следующие параметры полей набора данных:

* Имя

* Метку

* Тип данных

* Вид данных

* Назначение по умолчанию - указанное для поля назначение в последующих обработчиках будет использоваться по умолчанию.

Подробнее о параметрах полей см. ["Параметры поля набора данных"](../../data/datasetfieldoptions.md)

----

**Важно:** Узел не накладывает ограничений при изменении типа данных поля. По возможности, при преобразовании типа сохраняется полнота информации, но в некоторых случаях изменение типа может привести к потере информации. Пользователь должен иметь в виду данное обстоятельство при принятии решения о преобразовании типа данных.

----

Так же узел позволяет [кэшировать](../../scenario/caching.md) набор данных целиком, либо отдельные его поля.

### Вход

* ![](../../media/app/icons/ports/table-inactive.svg) Входной источник данных (таблица данных).

### Выход

* ![](../../media/app/icons/ports/table-inactive.svg) Выходной набор данных (таблица данных).

## Мастер настройки

* **Кэшировать** - параметры кэширования выходного набора данных. Предоставляется выбор из следующих вариантов:
  * Отключено - кэширование не будет производится. Используется по умолчанию;
  * При активации - при активации узла будет производится кэширование всего набора данных;
  * При обращении - будет производится кэширование тех полей выходного набора, данные которых запрошены последующими узлами сценария или визуализатором;
  * Выбранные поля - параметры кэширования устанавливаются для каждого поля в отдельности;

* **Список параметров полей** - в табличном виде представлены параметры полей набора данных. Двойным кликом по выбранному полю вызывается диалог редактирования его параметров. В диалоге помимо редактирования [стандартных параметров](../../data/datasetfieldoptions.md) поля задается параметр кэширования. Данная опция доступна в случае установки для всего узла режима кэширования "Выбранные поля". Предоставляется выбор из следующих вариантов:
  * Отключено - кэширование не будет производится. Используется по умолчанию;
  * При активации - при активации узла будет производится кэширование поля набора данных;
  * При обращении - будет производится кэширование поля при первом запросе его данных последующими узлами сценария или визуализатором;