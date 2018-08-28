# ![](../media/app/vendors/calcdata.svg) Java Script

## Область кода выражения

В области кода задается JavaScript.

Рассмотрим использование JavaScript в калькуляторе на примере вычисления степени числа. На вход калькулятора поступает набор данных представленный на рисунке 1.

![](./javascript-1.png)

*Рисунок 1. Пример входного набора данных*

Функция для вычисления степени числа:

```javascript
//Вычисление степени числа
function pow(x, n) {
  if (n != 1) {
    return x * pow(x, n - 1);
  } else {
    return x;
  }
}
```

Для использования функции, написанной выше, необходимо ее вызвать с нужными аргументами и перед ней написать `return` для вывода результатов в новое поле.

```javascript
return pow(NUM, 3);
```

Где **NUM** — поле из входного набора данных.

>**Важно:** Скрипт необходимо завершать командой `return`, иначе скрипт будет выполнен, но на выходе обработчика никаких результатов не будет.

Общий скрипт в области кода выражения представлен на рисунке 2.

![](./javascript-2.png)

*Рисунок 2. Пример вычисления степени числа*

В результате получим выходной набор данных, представленный на рисунке 3.

![](./javascript-3.png)

*Рисунок 3. Результат вычисления степени числа*