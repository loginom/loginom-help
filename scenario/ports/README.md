# Порты

**Порт** — способ коммуникации между узлами. В зависимости от структуры передаваемых/принимаемых данных различают следующие типы портов:

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Табличные данные;
* ![ ](../../images/icons/app/node/ports/inputs/variable_inactive.svg) Переменные;
* ![ ](../../images/icons/app/node/ports/inputs/tree_inactive.svg) Данные в иерархической древовидной форме;
* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) Параметры подключения к источнику данных;
* ![ ](../../images/icons/app/node/ports/inputs/model_inactive.svg) Структура данных не определена.

Узлы Сценария принимают данные через входные порты, а отдают через выходные. Входные порты на пиктограмме узла сценария располагаются слева, а выходные — справа (см. рисунок 1).

![Узел сценария с двумя входными и одним выходным портом.](ports-1.png)

Данные перед обработкой узлом попадают в его входной порт, где они могут быть предварительно модифицированы.

Внутри порта (см. рисунок 2) данные так же представлены в виде входного и выходного наборов полей или [переменных](../variables/README.md), в зависимости от типа порта. Входной набор представляет данные, которые порт принимает. Выходной набор представляет данные, которые порт отдает. При настройке порта пользователь имеет возможность:

* задать произвольную структуру выходного набора — его перечень и параметры полей/переменных;
* сопоставить поля (или переменные) входного набора порта с полями выходного.

Для узла, принимающего и отдающего набор данных (таблицу), схему движения данных можно представить следующим образом (см. рисунок 2):

![Схема движения данных для узла, принимающего и отдающего набор данных (таблицу).](ports-2.svg)

Таким образом, для узла, схема движения данных которого представлена на рисунке 2, данные проходят следующие этапы преобразований:

1. Изменение структуры данных во входном порту и передача их на обработку.
1. Обработка алгоритмом узла. В результате обработки формируются новые данные, которые поступают в выходной порт.
1. Изменение структуры данных в выходном порту.

Внутри порта возможно произвести следующие изменения структуры данных:

* изменение имен полей/переменных;
* изменение меток полей/переменных;
* задание порядка полей в таблице;
* удаление ненужных полей/переменных;
* задание назначения полей (см. [параметры поля набора данных](../../data/datasetfieldoptions.md)).

Эти действия, а также возможные способы реагирования порта на изменение структуры поступающих в порт данных, задаются в настройках порта.

>**Важно:** порты используются не только для передачи данных, но и для [синхронизации](../ports/field-synchronization.md).

Одиночным кликом мыши по порту можно открыть диалог для последующего выбора одной из доступных команд:

* **Быстрый просмотр…** — открывает визуализатор [Быстрый просмотр](../../visualization/preview/quick-view.md). Доступно только для выходных портов.
* **Настроить порт…** — открывает мастер настройки порта.
* **Редактирование метки порта…** — позволяет изменить текущую метку порта на любую другую.

Метка порта будет отображаться в Мастерах некоторых узлов, где по логике возможен выбор входных наборов. Она также будет отображаться и на панели выбора визуализаторов для выходных портов (но сами визуализаторы переименовывать нужно отдельно).

## Настройка порта

Командой **Настроить порт…** открывается окно настройки входных или выходных данных в зависимости от типа порта.

В случае, если структура входных данных, подаваемых в порт, еще неизвестна (например, если к входному порту связь не установлена), то интерфейс настройки порта предоставляет возможность задать только структуру выходных данных порта.

Если структура входных данных известна, то в интерфейсе настройки порта можно задать структуру выходных данных порта и сопоставить поля (или переменные) входного набора порта с выходным. В этом случае для сопоставления можно выбрать два различных интерфейса:

[Связи](../ports/interface-relations.md) — графически отображающий связи между полями/переменными входного и выходного наборов порта;

[Таблица](../ports/interface-table.md) — сопоставление осуществляется путем выбора входных полей/переменных в таблице.

>**Важно:** по умолчанию при создании нового узла в его портах включена опция [*Автоматическая синхронизация полей*](../ports/field-synchronization.md). Действие этой опции приводит к автоматическому конфигурированию (настройке) порта, в результате чего выходной набор порта полностью повторяет структуру входного набора. Опция автоматической синхронизации отключается при удалении пользователем любого из полей/переменных выходного набора порта.

## Механизм сокрытия портов

В Loginom существует механизм сокрытия [портов порядка выполнения](../ports/service-ports.md) и [портов управляющих переменных](../variables/control-variables.md), т.е. по умолчанию они скрыты от пользователя:

* Для отображения портов порядка выполнения необходимо воспользоваться кнопкой ![ ](../../images/icons/toolbar-controls/order_default.svg)
панели инструментов области построения сценариев;
* Для отображения портов управляющих переменных необходимо в контекстном меню узла выбрать пункт *Показать порт управляющих переменных*.

## Цветовая индикация портов

В Loginom существует цветовая индикация портов. Порты с сплошной линией являются обязательными портами, т.е. для их работы необходима связь с другими портами. Рассмотрим цветовую индикацию на примере [*интерфейса Таблица*](./interface-table.md).

* ![ ](../../images/icons/app/node/ports/inputs/table_active.svg) — порт выполняется;
* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) — порт сконфигурирован, но не выполняется;
* ![ ](../../images/icons/app/node/ports/inputs/table_error.svg) — порт не сконфигурирован или содержит ошибку;
* ![ ](../../images/icons/app/node/ports/inputs/table_warning.svg) — порт частично сконфигурирован.

Необязательный порт отображается пунктиром (цветовая индикация для них аналогична обязательным портам)
![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg)
. Для такого порта может и не быть связи с другим портом.

>**Примечание**: цветовая индикация для портов переменных, подключений и портов, с неопределенной структурой данных является аналогичной рассмотренной выше.

## Связывание портов

Для связывания портов необходимо навести курсор мыши на порт и зажать левую кнопку мыши, после этого вести курсор к тому порту, с которым надо связать, и отпустить левую кнопку мыши.

При выделение порта появляется пунктирная линия с началом в исходном порту и концом в позиции курсора мыши, на его конце для удобства отображается тип порта с которым можно связать исходный порт (см. рисунок 3):

![Соединение портов.](ports-3.png)

>**Важно**: можно соединять только порты одного типа, то есть порт *Таблица* может быть соединен только с одноименным портом. Также нельзя соединять выходной порт узла с его же входным портом. Циклические связи запрещены!
