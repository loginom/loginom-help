# Рабочее пространство
Рабочее пространство состоит из панели компонентов, области построения Сценария и панели инструментов (см. рисунок 1).

![Рабочее пространство.](./workspace.png)

Cлева находится панель компонентов, состоящая из следующих категорий:

* Компоненты — стандартная библиотека базовых компонентов Loginom;
* [Производные компоненты](../scenario/derived-component.md) — создаваемые пользователями компоненты на основе базовых;
* [Подключения](../integration/connections/README.md) — источники данных.

По центру расположена область построения Сценария — полотно, содержащее узлы Сценария и связи между ними.  

Сверху расположена панель инструментов, содержащая следующие операции для манипуляции с областью построения и ее составляющими:
* ![](../images/icons/toolbar-controls/arrow-rr_default.svg) Показать/![](../images/icons/toolbar-controls/arrow-ll_default.svg) Скрыть панель компонентов — позволяет открыть или закрыть панель компонентов;
* ![](../images/icons/toolbar-controls/cursor_default.svg) Режим выбора объекта — режим, использующийся для построения Сценария с помощью стандартных манипуляций;
* ![](../images/icons/toolbar-controls/hand_default.svg) Режим навигации по сценарию —  режим, использующийся для перемещения по области построения Сценария с помощью мышки;
* ![](../images/icons/toolbar-controls/workflow_default.svg) Показать в виде сценария — отображает Сценарий  в стандартном виде (в виде направленного графа);
* ![](../images/icons/toolbar-controls/table_default.svg) Показать в виде таблицы — компактное отображение Сценария в виде таблицы, содержащей используемые элементы;
* Вертикальное/Горизонтальное выравнивание — позволяет выровнять узлы Сценария на области построения. Данное действие доступно для выделенных узлов. Имеются следующие виды выравнивания:
    * ![](../images/icons/toolbar-controls/v-align-left_default.svg) По левому краю;
    * ![](../images/icons/toolbar-controls/v-align-center_default.svg) По середине;
    * ![](../images/icons/toolbar-controls/v-align-right_default.svg) По правому краю;
    * ![](../images/icons/toolbar-controls/h-align-top_default.svg) По верхнему краю;
    * ![](../images/icons/toolbar-controls/h-align-center_default.svg) По центру;
    * ![](../images/icons/toolbar-controls/h-align-bottom_default.svg) По нижнему краю.
* ![](../images/icons/toolbar-controls/layout_default.svg) Автоматическое упорядочивание узлов — автоматическое расположение узлов на области Сценария в соответствии с их последовательностью обработки данных;
* ![](../images/icons/toolbar-controls/move-front_default.svg) Переместить выделенные узлы — выставляет выделенные узлы и их подписи на:
  * Передний план;
  * Задний план.
* ![](../images/icons/toolbar-controls/order_default.svg) [Настроить порядок выполнения](../scenario/run-order.md) — позволяет задать собственный порядок выполнения узлов;
* ![](../images/icons/toolbar-controls/run-all_default.svg) Выполнить все — выполнить все узлы Сценария;
* ![](../images/icons/toolbar-controls/run-current_default.svg) Активировать/![](../images/icons/toolbar-controls/stop_default.svg) Деактивировать узел;
* ![](../images/icons/toolbar-controls/retrain_default.svg) [Переобучить узел](../scenario/training-processors.md);
* ![](../images/icons/toolbar-controls/setup_default.svg) Настроить узел — заходит в настройки выделенного узла;
* ![](../images/icons/toolbar-controls/batch-mode_default.svg) [Настроить режим активации узла](../scenario/setting-batch-processing-mode.md);
* ![](../images/icons/toolbar-controls/cut_default.svg) Вырезать — копирует данные в оперативную память с одновременным их удалением с места текущего расположения;
* ![](../images/icons/toolbar-controls/copy_default.svg) Копировать — помещает копию выделенных данных в буфер обмена;
* ![](../images/icons/toolbar-controls/paste_default.svg) Вставить — вставляет содержимое буфера обмена в место назначения;
* ![](../images/icons/toolbar-controls/clone_default.svg) Клонировать узел — клонирование выделенного узла с сохранением настроек и связей, идущих к нему;
* ![](../images/icons/toolbar-controls/compose-generic-model_default.svg) Развернуть/Свернуть [подмодель](../processors/control/submodel.md) — позволяет свернуть выделенные узлы в Подмодель или развернуть выделенную Подмодель на составные узлы;
* ![](../images/icons/toolbar-controls/delete_default.svg) Удалить выбранное — удаляет выделенные узлы/связи Сценария;
* ![](../images/icons/toolbar-controls/derive-node_default.svg) Создать производный компонент — создает Производный компонент на основе выделенного узла;
* ![](../images/icons/toolbar-controls/show-derived-nodes_default.svg) Показать родительские узлы для производных — при наличии производных узлов показывает родительские узлы;
* ![](../images/icons/toolbar-controls/show-reference-links_default.svg) Показать исходные узлы для [Узлов-ссылок](../processors/control/unit-link.md) — при наличии Узлов-ссылок показывает узлы, на основе которых они создавались;
* ![](../images/icons/toolbar-controls/preview_default.svg) Показать карту сценария — для навигации открывается уменьшенная копия области построения Сценария с возможностью масштабирования;
* ![](../images/icons/toolbar-controls/info_default.svg) Показать/скрыть [инспектор свойств](../interface/property-inspector.md) — разворачивает/сворачивает окно *Инспектора свойств*. Эта кнопка всегда находится в крайней правой позиции на  панели инструментов.

> **Примечание:** при открытом окне *Инспектора свойств* часть кнопок на панели инструментов может не помещаться. В этом случае на панели инструментов появляется кнопка ![](../images/icons/toolbar-controls/system-panel-more_default.svg) с выпадающим списком,  в котором будут находиться все непоместившиеся на панели кнопки.