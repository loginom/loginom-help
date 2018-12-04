# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используются объект OutputTable, для которого определены следующие методы:

```javascript
    Append(): void; // Метод добавляет новую запись в выходной набор
    Set(col: number | string, value: boolean | number | string | Date | null | undefined): void; // Метод задает значение заданного поля в записи, добавленной мотодом Append()
```

Примеры:

```javascript
// Добавляет 2 строки в выходной набор и устанавливает в них значения полей
Var val = new Date();
OutputTable.Append();
OutputTable.Set("Date", val);           // Обращение к полю по имени
OutputTable.Set(0, "Дата");             // Обращение к полю по индексу
OutputTable.Append();
OutputTable.Set("Date", val);
OutputTable.Set(0, "Дата");

```