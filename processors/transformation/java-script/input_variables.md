# ![](../../../media/app/icons/component-18/component-default-55.svg) Доступ к входным переменным

Для доступа к входным переменным используются объект InputVariables, для которого определены следующие свойства:

```javascript
readonly Items: IVariableItems;     // переменные входного порта
readonly Count: number;             // количество переменных входного порта
```

подробное описание которых см. в [Полное описание API](./api_description.md).

Примеры:

```javascript
// Перебор переменных входного порта и вывод в консоль их значений и свойств:
for (var i = 0; i < InputVariables.Count; i++) {
    // Обращение к переменной по индексу
    console.log(InputVariables.Items[i].Value);
    console.log(InputVariables.Items[i].Name);
    console.log(InputVariables.Items[i].Index);
    console.log(InputVariables.Items[i].DisplayName);
    console.log(InputVariables.Items[i].DataType);
    console.log(InputVariables.Items[i].IsNull);
    // Обращение к переменной по имени
    var xName = InputVariables.Items[i].Name;
    console.log(InputVariables.Items[xName].Value);
};

// Другой вариант перебора:
for (var Variable of InputVariables.Items) {
    console.log(Variable.Name);
    console.log(Variable.Value);
};

// Еще вариант перебора:
var varArray = Array.from(InputVariables.Items);
varArray.forEach(variable => {
    console.log(variable.Name);
    console.log(Variable.Value);
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