# ![Панель сравнения кластеров](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/scales_default.svg) Панель сравнения кластеров

Содержит сравнительную информацию по [кластерам](https://wiki.loginom.ru/articles/cluster.html), выделенным в [*Основной таблице*](./main-table.md). Цветовое кодирование и порядок кластеров совпадает с цветами и порядком выделения ячеек в *Основной таблице*.

![Панель сравнения кластеров.](./images/cluster-profilies-comparison-panel.png)

*Панель сравнения кластеров* условно можно разделить на две области (см. Рис 1):

1. **Верхняя часть панели** — содержит сравнительную гистограмму кластеров, в одной области совмещены гистограммы кластеров и [генеральной совокупности](https://wiki.loginom.ru/articles/general-population.html). Верхняя часть панели содержит единственную настройку гистограммы в дополнении к общим настройкам гистограмм на [*Панели инструментов*](./toolbar.md):
   * ![Накопительная диаграмма](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/stacked-histogram_default.svg) **Накопительная диаграмма** — отображает один составной столбец, разбитый на цветные области, соответствующие кластерам.
2. **Нижняя часть панели** — содержит сводную таблицу значений *Индикаторов* по выбранным кластерам в *Основной таблице*.

>Примечание: Если одновременно включен режим *Накопительная гистограмма* и выбрана ячейка кластера *Итого*, то в данные из этого не будут добавлены в накопительную гистограмму (поскольку они соответствуют генеральной совокупности).

&nbsp;
>Примечание: Режим *Накопительная гистограмма* может быть включен, когда гистограммы имеют формат *Абсолютные частоты* или *Относительные частоты*, в формате *Плотность вероятности* опция отключается и недоступна.

Гистограмма может быть двух видов:

* **Непрерывная гистограмма** — сплошная заливка под непрерывной гладкой кривой, совпадает с таковой в ячейке таблицы;
* **Дискретная гистограмма** — представляет собой таблицу со следующими колонками:
  * **№** — номер уникального значения.
  *  **Метка** — метка уникального значения.
  *  **Доля** — колонка с столбцами горизонтальной гистограммы.
  *  **Итого** — колонка с количеством значений в колонках гистограммы генеральной совокупности. Отображается при включенной опции *Показывать генеральную совокупность в гистограммах* в *Панели инструментов*.
  *  **Метка кластера** — колонки с количеством значений в колонках гистограмм кластеров.

>Примечание: Все колонки, кроме колонки *Доля*, можно сортировать.
