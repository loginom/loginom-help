# Основная таблица

Таблица отображает статистические показатели по кластерам (см. Рис 1).

![Основная таблица.](./images/cluster-profilies-main-table.png)

Таблицу условно можно разделить на 2 области:

1. [Колонки легенды](#kolonki-legendy);
2. [Колонки данных](#kolonki-dannykh).

## Колонки легенды

*Колонки легенды* состоят из следующих колонок:

1. Кластеры в строках:
   * **#** — номер строки;
   * **Метка кластера** — порядковый номер кластера и кластер *Итого*, который содержит общую информацию по кластерам, если для текущего индикатора общее значение можно рассчитать;
   * **Поддержка** — отношение количества строк данных в кластере к общему числу строк данных.
2. Кластеры в столбцах:
   * **#** — номер строки;
   * **Метка поля** — метка поля из исходного набора данных;
   * **Тип** — вид данных поля.

>Примечание: *Колонки легенды* откреплять нельзя, за исключением колонки *Поддержка*.

## Колонки данных

*Колонки данных* состоят из следующих колонок:

1. Кластеры в строках:
   * **Метка поля** — метка поля из исходного набора данных.
2. Кластеры в столбцах:
   * **Метка кластера** — порядковый номер кластера и кластер *Итого*, который содержит общую информацию по кластерам, если для текущего индикатора общее значение можно рассчитать;
   * **Поддержка** — отношение количества строк данных в кластере к общему числу строк данных.

## Действия в таблице

* **Одиночная сортировка** — сортировать колонку по текущему *Индикатору*. Тип сортировки можно выбрать двумя способами: через заголовочное меню выбранной колонки по клику на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg) и непосредственным кликом на колонку. При клике на колонку сортировка циклически меняется между следующими типами:
  * ![По возрастанию](../../images/icons/toolbar-controls/low-to-hight_default.svg) По возрастанию;
  * ![По убыванию](../../images/icons/toolbar-controls/hight-to-low_default.svg) По убыванию;
  * Сбросить сортировку.
* **Перетаскивание колонок** — сменить расположение колонок друг относительно друга, для этого необходимо зажать левую кнопку мыши на метке колонки, которую необходимо перетащить, затем переместить курсор мыши в нужное место и отпустить левую кнопку мыши.
* **Закрепление/открепление колонки** — закрепить/открепить колонку, для этого необходимо в заголовочном меню колонки по клику на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg) выбрать пункт меню ![Снять закрепление столбца](../../images/icons/grid/hmenu-unlock.svg) *Снять закрепление столбца* или ![Закрепить столбец](../../images/icons/grid/hmenu-lock.svg) *Закрепить столбец*.
* **Сокрытие/отображение столбцов легенды** — показать/скрыть столбцы легенды, для этого необходимо в их заголовочном меню по клику на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg) выбрать пункт меню ![Столбцы](../../images/icons/grid/columns.svg) *Столбцы* и снять/установить галочки на столбцах, которые необходимо скрыть или показать.
* **Выделение ячеек** — выделить ячейки таблицы. Есть 2 режима выделения:
    * **Одиночное** — сбрасывает все существующее выделение и выделяет только текущую ячейку. Выделение можно перемещать с помощью кнопок клавиатуры %kbd Up %, %kbd Down %, %kbd Left %, %kbd Right %.
    * **Множественное** — выделяет сразу несколько ячеек, для множественного выделения необходимо при клике зажать клавишу %kbd Ctrl %, которая добавляет в выделение ячейку или удаляет ячейку из него. Если выделено несколько ячеек, то возможна смена текущего поля:
      * Кнопками %kbd Up %, %kbd Down %, если поля в строках.
      * Кнопками %kbd Left %, %kbd Right %, если поля в колонках.

>Примечание: Можно выделять только ячейки в пределах одного поля и одновременно может быть выделено не более 7 ячеек.

## Гистограммы

Гистограммы содержат 3 типа столбцов:

1. **Null столбец** — столбец с пропусками в дискретных гистограммах. Видимость столбца можно изменить с помощью кнопки ![Показывать null столбец в гистограммах](../../images/icons/toolbar-controls/null-count_default.svg) *Показывать null столбец в гистограммах* на [*Панели инструментов*](./toolbar.md).
2. **Основные столбцы** — гистограмма, отображающая столбцы у дискретных гистограмм и сплошную заливку под непрерывной гладкой кривой у непрерывных.
3. **Столбец "Прочие"** — столбец с аккумулированными значениями не уместившихся столбцов в дискретных гистограммах. Видимость столбца можно изменить с помощью кнопки ![Показывать столбец "Прочие" в гистограммах](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/residue-count_default.svg) *Показывать столбец "Прочие" в гистограммах* на *Панели инструментов*.

>Примечание: Текущее ограничение на количество столбцов для дискретной гистограммы в ячейке — 12.
