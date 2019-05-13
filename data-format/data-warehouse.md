# Deductor Warehouse

**Deductor Warehouse** — это собственный формат [Хранилища данных](https://wiki.loginom.ru/articles/data-warehouse.html), специально разработанный для использования с *Loginom* и *Deductor*. Является многомерным Хранилищем данных и позволяет аккумулировать всю необходимую для анализа предметной области информацию.

Использование единого хранилища позволяет обеспечить непротиворечивость данных и централизованное хранение, а также автоматически обеспечивает всю необходимую поддержку процесса анализа данных. При работе с хранилищем от пользователя не требуется знания структуры хранения данных и языка запросов. Он оперирует привычными терминами бизнес-среды, например, такими как: отгрузка, товар, клиент.

> **Важно:** в аналитической платформе *Loginom*, на текущий момент, возможно лишь импортировать данные из Хранилища данных *Deductor Warehouse*. Полная поддержка этого формата есть в аналитической платформе *Deductor*.

## Принцип работы Хранилища данных

### Физический уровень

На физическом уровне *Deductor Warehouse* представляет собой реляционную базу данных на платформе Firebird, MS SQL или Oracle, поэтому работа с хранилищем на этом уровне ничем не отличается от обслуживания любой СУБД. Для обслуживания хранилища на низком уровне могут использоваться утилиты сторонних разработчиков для СУБД Firebird, MS SQL, Oracle, а также инструменты, поставляемые разработчиками соответствующих баз данных.

Для корректной работы *Deductor Warehouse* обязательным требованием является полноценная поддержка базой данных стандарта **`SQL'92`**, поэтому имеются ограничения на версии СУБД:

* **Firebird** — версия 2.5 и выше;
* **Microsoft SQL** – версия 2000 и выше;
* **Oracle** – начиная с версии 9i.

Поддержка нескольких различных по стоимости и производительности СУБД в качестве платформы хранилища позволяет в каждом конкретном случае использовать наиболее пригодную для данного случая базу данных.

*Deductor Warehouse* проводит все необходимые операции по подключению к реляционной СУБД и выборке нужной информации прозрачно для пользователя. Кросс-платформенное Хранилище данных является удобной базой для создания распределенных хранилищ данных, витрин данных и т.п.

### Логический уровень

На логическом уровне разрабатывается схема хранилища, т.е. устанавливается соответствие между *объектами предметной области*: *процессами*, *измерениями* и *фактами* хранилища:

* **Процесс** — совокупность измерений, фактов и атрибутов. Он описывает определенное действие, например, продажи товара, отгрузки и прочее.
* **Измерения** — это категориальные, дискретные атрибуты, наименования и свойства объектов, участвующих в некотором бизнес-процессе. Например, это могут быть названия фирм-поставщиков, идентификационный номер товаров, ФИО людей и т.д.
* **Факты** — это данные, количественно описывающие бизнес-процесс, непрерывные по своему характеру, то есть они могут принимать бесконечное множество значений. Примеры фактов — цена товара или изделия, их количество, сумма продаж или закупок, зарплата сотрудников, сумма кредита, страховое вознаграждение и т.д.
* **Атрибут** — это свойство измерения, помогающее пользователю полнее описать исследуемое измерение. Например, для измерения *Товар* атрибутами могут выступать *Цвет*, *Вес*, *Габариты*.

Логическая структура проектируется, прежде всего, с учетом задач предметной области.

### Семантический слой

*Семантический слой* — это специальный механизм, позволяющий аналитику пользоваться данными посредством бизнес-терминов предметной области. Он реализован поверх реляционной базы данных.

Благодаря этому слою, пользователь оперирует не полями и колонками таблиц базы данных, а многомерными понятиями, например, такими как измерение или факт. А система автоматически производит все требуемые манипуляции, необходимые для работы с реляционной СУБД. Таким образом, этот слой дает пользователю возможность сосредоточиться на анализе и не задумываться о механизмах получения данных.

Deductor Warehouse реализует универсальное многомерное хранение, т.е. может содержать множество процессов с различным количеством измерений и фактов.

Пока что настройка процессов, задание измерений, атрибутов и фактов может осуществляться с помощью редактора метаданных, встроенного в Deductor Studio.