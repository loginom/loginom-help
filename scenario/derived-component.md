# Производный компонент

## Описание

**Производный компонент** — создаваемый пользователем компонент, который может применяться в Сценариях наравне со стандартными, предоставляемыми платформой компонентами. Алгоритм обработки данных, входные и выходные порты производного компонента задаются *базовым узлом*.

Базовым узлом может выступать любой узел за исключением *Цикла*, *Выполнения узла*, *Узла-ссылки*, ссылки и производного узла на *Подключение*. Но, как правило, используется [Подмодель](../processors/control/submodel.md). Поскольку в Подмодели можно реализовать произвольную логику обработки данных и задать необходимые входные и выходные порты, то на ее основе пользователь имеет возможность создать Производный компонент с универсальной функциональностью, пригодной для многократного использования в различных аналитических задачах. Таким образом, набор средств для реализации различной логики обработки данных не ограничивается стандартными компонентами платформы и может быть расширен самим пользователем. Подобный подход является важным инструментом в реализации структурного подхода в проектировании сложных решений (см. [инструментарий проектирования](../quick-start/design-principles.md)).

Особенностью производного компонента являются его следующие свойства:

* **Наследование** — означает, что изменение базового узла повлечет за собой изменение Производного компонента и, соответственно, всех созданных на базе этого компонента узлов Сценария;
* **Переопределение** — модификация производного узла без изменения Производного компонента, из которого он создан.

Из *Производных компонентов* создаются *производные узлы* — наследники базового узла.
Наследование осуществляется механизмом обновления производных узлов при изменении базового. При внесении изменений в базовый узел во всех отнаследованных от него производных узлах появится оповещение ![](../images/icons/informer/error_warning.svg) "Базовый узел изменился...". Эти изменения будут применены к производным узлам:
  * при выборе в контекстном меню производного узла пункта меню *Обновить конфигурацию узла*;
  * при активации, переобучении, вызове мастера настройки производного узла или его портов.

При переопределении свойств и настроек производных узлов базовый узел остается неизменным. Если в базовом узле изменять настройки, то в производном узле будут обновлены только те настройки, которые не были переопределены пользователем. Перечень запрещенных изменений при переопределении производного узла приведен ниже.

Перечень запрещенных изменений при переопределении производного узла:

 | Наследуемый узел | Объект | Список запрещенных операций |
 | :-------- |:-------- | :-------- |
 | Все узлы | Столбцы и переменные во входных и выходных портах | <ul> <li>Удаление</li> <li>Изменение типа данных</li> <li>Изменение имени</li> </ul> |
 | Подмодель | Узлы Подмодели | <ul> <li>Замена узла подключения отнаследованным узлом</li> </ul>|
 | | Подключения | <ul><li>Удаление</li></ul> |
 | | Производные компоненты |<ul><li>Удаление, замена базового узла</li></ul> |
 | Узлы с переменным числом портов, в том числе Подмодель | Входные и выходные порты | <ul><li>Удаление</li> <li>Изменение типа</li> <li>Изменение имени</li></ul> |

 Чтобы принудительно сбросить все внесенные в производный узел изменения и сделать производный и базовый узлы идентичными, следует в контекстном меню производного узла выбрать пункт *Восстановить исходную конфигурацию узла*.

 >**Важно:** При переопределении и наследовании настроек базового узла необходимо учитывать что именно является атомарным объектом переопределения и наследования. Например, в условии фильтрации `< 01.01.2020` присутствуют две атомарные части: `<` и `01.01.2020`. В этом случае к каждой из этих частей механизмы переопределения и наследования применяются отдельно, а не ко всему условию в целом. Это означает, что при переопределении одной из них, другая может быть изменена механизмом наследования при изменении базового узла.
 >
 >В разных компонентах атомарными могут быть как отдельные настройки, так и группы настроек.

## Создание и настройка производного компонента

Для создания Производного компонента необходимо выбрать базовый узел (Подмодель) и в его контекстном меню выбрать пункт ![](../images/icons/toolbar-controls/derive-node_default.svg) *Создать производный компонент*. Та же команда доступна на панели инструментов области построения Сценариев.

Откроется окно *Настройка производного компонента*, где определяются:

* **Метка** — наименование производного компонента;
* **Описание** — дополнительная информация по компоненту;
* **Область видимости** — доступность Производного компонента на разных уровнях Пакета, задается радиокнопкой:
  * Закрытый (доступен только внутри текущего Модуля);
  * Частично закрытый (доступен только внутри текущего Модуля и его Подмоделей);
  * Внутренний (доступен только внутри текущего Пакета);
  * Открытый (доступен во всех пакетах) — для использования Производного компонента из другого пакета необходимо создать Ссылку на Пакет (см. [модификатор доступа](./access-modifier.md)), в котором Производный компонент был создан.

После сохранения настроек Производный компонент будет доступен в панели *Производные компоненты*. Для создания на его основе узла Сценария его необходимо перенести в область построения Сценария. На созданных таким образом узлах отображается кнопка ![](../images/icons/toolbar-controls/show-derived-nodes_default.svg)
"Показать базовый узел", которая позволяет найти базовый узел (в случае, если он расположен в пределах текущей области построения Сценария).

Отредактировать настройки созданных в пакете Производных компонентов можно в разделе *Компоненты панели навигации*: Панель Навигация -> Пакеты -> Текущий пакет -> Компоненты. При выборе данного раздела открывается окно со списком Производных компонентов, в котором доступны следующие действия:

* **Действия панели инструментов раздела:**
  * ![](../images/icons/toolbar-controls_18x18\toolbar-controls_18x18_group-list_default.svg) Группировать (Alt+G) — список Производных компонентов группируется по типу базового узла (*Импорт, Трансформация, Управление, Исследования и т.д.*);
  * ![](../images/icons/toolbar-controls/setup_default.svg) Настроить — открывается окно настройки выделенного в списке Производного компонента;
  * ![](../images/icons/toolbar-controls/delete_default.svg) Удалить — удаление выделенного в списке Производного компонента.
* **Действия контекстного меню элементов списка:**
  * ![](../images/icons/toolbar-controls/setup_default.svg) Настроить — открывается окно настройки выбранного Производного компонента;
  * ![](../images/icons/toolbar-controls/delete_default.svg) Удалить — удаление выбранного Производного компонента.
  * Перейти к базовому узлу — осуществляется переход к расположению базового узла в сценарии.
  * Обновить — обновляется список Производных компонентов.
