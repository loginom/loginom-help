# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к входным переменным

Для доступа к входным переменным используются объект `InputVariables`, для которого определены следующие свойства:

```javascript
readonly Items: IVariableItems;     // переменные входного порта
readonly Count: number;             // количество переменных входного порта
```

подробное описание которых см. в [Полное описание API](./api-description.md).

Примеры:

```javascript
import { InputVariables } from "builtIn/Data";

// Перебор входных переменных и вывод в консоль значений их свойств:
for (let i = 0, c = InputVariables.Count; i < c; i++) {
    // Обращение к переменной по индексу
    let variable = InputVariables.Items[i];
    console.log("Index: ", variable.Index);
    console.log("Name: ", variable.Name);
    console.log("DisplayName: ", variable.DisplayName);
    console.log("DataType: ", variable.DataType);
    console.log("DataKind: ", variable.IsNull);
    console.log("DefaultUsageType: ", variable.Value);
    console.log("");
}

// Перебор входных переменных с использованием итератора
for (let variable of InputVariables.Items)
    console.log(variable.Name, " = ", variable.Value);

// Получение из объекта Items массива переменных
let arrayOfVariables = Array.from(InputVariables.Items);
// Вывод значений переменных в консоль
arrayOfVariables.forEach(variable => {
    console.log(variable.Name, " = ", variable.Value);
});

// Обращение к переменной по имени
console.log(InputVariables.Items["Var0"].Value);
console.log(InputVariables.Items.Var0.Value);

// Вывод свойств переменных
for (let prop in InputVariables.Items)
    console.log(prop);

// Вывод свойств переменной
for (let prop in InputVariables.Items[0])
    console.log(prop);

// Проверка существования переменной "MyVar"
if (InputVariables.Items.MyVar)
    console.log("Переменная существует");

```