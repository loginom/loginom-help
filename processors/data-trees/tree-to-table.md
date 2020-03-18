# ![](../../images/icons/components/tree-to-data_default.svg) Дерево в таблицу

Обработчик преобразует данные, представленные в иерархической древовидной форме, в таблицу. Отмеченные узлы будут выведены в колонки выходного набора данных.

### Вход
![](../../images/icons/app/node/ports/inputs/tree_inactive.svg) **Входное дерево** — набор данных в иерархической древовидной форме.

### Выход

![](../../images/icons/app/node/ports/outputs/table_inactive.svg) **Выходной набор данных** — таблица данных.

## Мастер настройки

### Настройка входных узлов

В списке Входное дерево отображаются поля принятого портом набора данных, которые следует сопоставить с полями набора, подаваемого портом на обработку — Выходное дерево (подробнее см. [Порты](../../scenario/ports/README.md)).

Для сопоставления полей необходимо задать между ними связи. Это можно сделать нажав кнопку ![](../../images/icons/toolbar-controls/auto-connect_default.svg)**Связать автоматически**. Входные и выходные поля будут связаны, если у них совпадают имена и тип данных. 
Связи также можно установить вручную, с помощью метода *Drag-and-drop* путем перетаскивания элемента из левого списка на элемент из правого списка. В этом случае имена полей не важны, однако типы данных должны совпадать.

Связи между узлами можно удалять: 
* с помощью кнопки  ![](../../images/icons/toolbar-controls/remove-all-links_default.svg) **Удалить все связи** — удаляет все связи;
* нажатием на кнопку ![Удалить связь](../../images/icons/link-grid/remove-link_selected.svg) на линии связи (при наведении курсора кнопка меняет вид на ![Удалить связь](../../images/icons/link-grid/remove-link_hover.svg)).


Панель инструментов и контекстное меню списка Входное дерево содержит следующие команды:

* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Выбрать все** — помечает все узлы.
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Снять выделение со всех** — снимает выделение со всех узлов.
* ![](../../images/icons/toolbar-controls/reverse-check_default.svg) **Инвертировать выделение** — поменять выбранные узлы на невыбранные и наоборот.

Для списка Выходное дереево на панели инструментов и в контекстном меню доступны команды:

* ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавить дочерний узел** — позволяет добавить к корневому узлу дочерний узел.
* ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавить соседний узел** — позволяет создать узел того же уровня иерархии, что и выбранный.
* ![](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать...** — позволяет вызвать окно редактирования и изменить значения полей для выбранного узла (команду также можно вызвать горячей клавишей *F2*).
* ![](../../images/icons/toolbar-controls/moveup_default.svg) **Переместить вверх**  и  ![](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вниз** — позволяют менять порядок узлов, при этом корневой узел **Root** переместить нельзя (команды также доступны по комбинации горячих клавиш *Ctrl+Up* и *Ctrl+Down* соответственно).
* ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Синхронизировать поля** — синхронизируется список выходных полей порта со списком входных (алгоритм синхронизации см. [автоматическая синхронизация полей](../../scenario/ports/field-synchronization.md)).
* ![](../../images/icons/toolbar-controls/auto-sync-columns_default.svg) **Автоматическая синхронизация** — при включении данного режима команда  ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Синхронизировать поля** будет выполняться автоматически при выполнении узла (включена по умолчанию).
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Удалить** — удаляет дочерний узел дерева, иконка этой команды высвечивается при наведении курсора на узел (команду также можно вызвать горячей клавишей *Delete*).
* ![](../../images/icons/toolbar-controls/delete-all_default.svg)**Удалить все...** — удаляет все дочерние узлы (комбинация горячих клавиш *Shift+Delete*).

> **Примечание:** Удалить корневой узел **Root** нельзя.

При выполнении команд ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавить дочерний узел**, ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавить соседний узел**, ![](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать...** задаются значения полей:
* **Имя** — уникальное наименование столбца в рамках одного набора данных. Может состоять из:
  * Заглавных или строчных латинских букв;
  * Символов подчеркивания;
  * Цифр (не может быть первым символом).
* **Метка** — произвольное описание поля.
* **Тип данных** — один из возможных [типов данных](./../../data/datatype.md).
* **Вид данных** — один из возможных [видов данных](./../../data/datakind.md)
.

Кроме того, можно установить следующие признаки:
* **Массив** — при установке флага выбранный дочерний узел будет определен как упорядоченное множество (массив) данных одного типа.
* **Контейнер** — если флаг установлен, выбранный дочерний узел будет являться корневым узлом для других создаваемых дочерних узлов разных типов.

Записи в списках Входное дерево и Выходное дерево можно отфильтровать с помощью команды ![](../../images/icons/toolbar-controls/filter_default.svg)**Фильтрация** на соответствующей панели инструментов.

### Выбор узлов дерева

Мастер настройки представляет собой отображение дерева с возможностью выбора некоторых или всех узлов дерева. Отмеченные узлы будут выведены в колонки выходного набора данных.

Доступные действия представлены в виде кнопок на панели инструментов и в меню таблицы с отображением дерева данных:

* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Выбрать все** – помечает все узлы.
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Снять выделение со всех** – снимает выделение со всех узлов.
* ![](../../images/icons/toolbar-controls/reverse-check_default.svg) **Инвертировать выделение** – меняет выбранные узлы на невыбранные и наоборот.

Логика выбора узлов:

* При выборе узла выбираются так же и его родители, вплоть до корня.
* При снятии выделения с ветки выделение снимается и со всех потомков.
* Глобальный индекс узла - узел отсутствует в древовидной структуре данных, однако он появляется в отображении дерева и указывает на индекс, используемый в узле-массиве. Его можно выбрать, при этом также выбирается и узел массива.
Узел получает индекс -1, который учитывается при сортировке.
При выборе узла для него формируется колонка с именем узла массива с добавлением  "_global_index" и меткой узла массива с добавлением "|Глобальный индекс".

> **Важно:** Компонент будет выдавать ошибку при выходе со страницы настройки или при выполнении, если у него нет ни одного выбранного узла.

**Дублировать значения родительских узлов** – если в структуре имеется родительский узел и последовательность потомков, значение родительского узла будет продублировано для каждой строки, образованной из последовательности потомков.

**Генерировать составные метки полей** – при наличии данного флага используется составная метка узла массива: в метках полей будет отражена иерархия относительно корневого элемента.