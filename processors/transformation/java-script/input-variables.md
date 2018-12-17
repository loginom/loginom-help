# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к входным переменным

Для доступа к входным переменным используются объект `InputVariables`, для которого определены следующие свойства:

```javascript
readonly Items: IVariableItems;     // переменные входного порта
readonly Count: number;             // количество переменных входного порта
```

подробное описание которых см. в [Полное описание API](./api-description.md).

Примеры:

```javascript
// Перебор переменных входного порта и вывод в консоль их свойств:
for (var i = 0; i < InputVariables.Count; i++) {
    // Обращение к переменной по индексу
    let variable = InputVariables.Items[i];
    console.log(variable.Value);
    console.log(variable.Name);
    console.log(variable.Index);
    console.log(variable.DisplayName);
    console.log(variable.DataType);
    console.log(variable.IsNull);
};

// Другой вариант перебора:
for (var xVariable of InputVariables.Items) {
    console.log(xVariable.Name);
    console.log(xVariable.Value);
};

// Еще вариант перебора:
var varArray = Array.from(InputVariables.Items);
varArray.forEach(xVariable => {
    console.log(xVariable.Name);
    console.log(xVariable.Value);
});

// Обращение к переменной по имени:
console.log(InputVariables.Items["CLASS"].Value);
console.log(InputVariables.Items.CLASS.Value);

// Вывод свойств переменных:
for (var prop in InputVariables.Items) {
    console.log(prop);
};

// Вывод свойств переменной с индексом 0:
for (var prop in InputVariables.Items[0]) {
    console.log(prop);
};

// Проверка существования переменной 'MyVar'
if (InputVariables.Items.MyVar) {
    console.log("Переменная существует");
};

```