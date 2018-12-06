# ![](../../../media/app/icons/component-18/component-default-55.svg) Консоль

По умолчанию в окне предпросмотра консоль свернута. Для ее отображения/сворачивания используются кнопки ![](../../../media/app/icons/toolbar-18/toolbar-18-21.svg) и ![](../../../media/app/icons/toolbar-18/toolbar-18-20.svg).

Сообщения консоли записываются в лог сервера, если уровень логирования соответствует типу сообщения (информация, предупреждение или ошибка).

Пример кода вывода сообщений в консоль:

```javascript
function f() { return "something"; }

console.info("Information");
console.warn("Warning!");
console.error("Error!!!");
console.log(1, 2, 3);
console.log(OutputTable);
console.log(OutputTable.Append);
console.log(Math);
console.log(f);
console.log(undefined);
console.log(null);
console.log(new RegExp("a+"));
console.log(new Error("Err"));
console.log(new String("Str"));
console.log(new Boolean(true));
console.log(new Date());
console.log(new ArrayBuffer(10));
console.log(Symbol());
console.log(Symbol("aaa"));
console.log(Object(Symbol()));
console.log(new Proxy({}, {}));
console.log([1, InputTables, /^[0..9]+$/]);
console.assert();
console.assert(0 == 0);
console.assert(1 == 0);
console.assert(1 == 0, "1 != 0");
console.assert(1 == 0, "lie", "1 != 0");
```

Результат вывода данного кода в консоль:

```
Information
Warning!
Error!!!
1 2 3
[object Object]
function Append() { [native code] }
[object Math]
function f() { return "something"; }
undefined
null
/a+/
Error: Err
[object String]
[object Boolean]
Thu Nov 29 2018 14:26:43 GMT+0300 (RTZ 2 (зима))
[object ArrayBuffer]
Symbol()
Symbol(aaa)
[object Symbol]
[object Proxy]
1,,/^[0..9]+$/
Assertion failed:
Assertion failed:
Assertion failed: 1 != 0
Assertion failed: lie 1 != 0
```