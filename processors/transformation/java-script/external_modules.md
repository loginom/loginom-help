# ![](../../../media/app/icons/component-18/component-default-55.svg) Импорт внешних модулей

Поддерживаются динамический и статический импорт модулей.

%spoiler%Примеры:%spoiler%

```javascript
// статический импорт
import { cube, sayHello } from 'foo/foo.js';
OutputTable.Append();                   // добавляем строку в выходной набор
OutputTable.Set('ID', cube(3));         // устанавливаем значение поля 'ID' равным результату импортированной функции cube(3)
OutputTable.Set('Str', sayHello());     // устанавливаем значение поля 'Str' равным результату импортированной функции sayHello()

// динамический импорт
(async () => {
     try {
        const mod = await import("foo/foo.js");
        OutputTable.Append();
        OutputTable.Set(0, mod.cube(3));
        OutputTable.Set(1, mod.sayHello());
     } catch(e) {
        OutputTable.Append();
        OutputTable.Set(1, e);
     }
})();

import("foo/foo.js").then(mod => {
     OutputTable.Append();
     OutputTable.Set(0, mod.cube(3));
     OutputTable.Set(1, mod.sayHello());
}).catch(error => {                             // При использовании Promise неперехваченные в блоке **catch**
      OutputTable.Append();                     // ошибки записываются в лог сервера, но выполнение узла при этом
      OutputTable.Set(1, error.message);        // продолжается без сообщений об ошибке.
});
```

%/spoiler%

Пути импорта внешних модулей могут быть относительными или абсолютными внутри файлового хранилища.

## На сервере Loginom

Абсолютный путь обязательно начинается с "/" и считается от каталога пользователя.

Пример:

```javascript
import { cube, foo, sayHello } from '/user/data/JavaScript/foo/foo.js'; // импортируем функции из внешнего модуля foo.js
```

Если путь не начинается с "/", то он интерпритируется как относительный путь и указывается относительно пакета, содержащего данный узел.

Пример:

```javascript
import { cube, foo, sayHello } from 'foo/foo.js'; // относительный путь (относительно пакета)
```

## В Desktop версии

Абсолютный путь файла в системе (основной способ). Пример:

```javascript
import { cube, foo, sayHello } from 'C:/Users/Administrator/Desktop/JavaScript/foo/foo.js'; // абсолютный путь. В пути используется только прямой слеш - "/"
```

URI вида "file:///<абсолютный путь>". Пример:

```javascript
import { cube, foo, sayHello } from 'file:///C:/Users/Administrator/Desktop/JavaScript/foo/foo.js'; // абсолютный путь. В пути используется только прямой слеш - "/"
```

Относительный путь (относительно пакета). Пример:

```javascript
import { cube, foo, sayHello } from 'foo/foo.js'; // относительный путь (относительно пакета). Так же возможен вариант './foo/foo.js'
```

## Иерархический импорт модулей

Из загружаемых модулей так же может производится импорт других модулей. При этом используются описанные выше правила.

Пример:

```javascript
// исполняемый в узле код (корневой модуль)
import { cube, foo, sayHello } from '/user/data/JavaScript/foo/foo.js';     // импортируем функции из внешнего модуля foo.js
OutputTable.Append();                   // добавляем строку в выходной набор
OutputTable.Set('ID', cube(3));         // устанавливаем значение поля 'ID' равным результату импортированной функции cube(3)
OutputTable.Set('Str', sayHello());     // устанавливаем значение поля 'Str' равным результату импортированной функции sayHello()

// код модуля foo.js
import { sayHello } from "./module/module.js";  // путь относительно расположения модуля foo.js
function cube(x) {
  return x * x * x;
}
const foo = Math.PI + Math.SQRT2;
export { cube, foo, sayHello };

// код модуля module.js
function sayHello() {
  return "Hello";
}
export { sayHello };
```

> **Примечание:**
>
>При использовании относительных путей для корневого модуля (скрипта):
>
>- Если пакет сохранен, то относительный путь указывается от расположения пакета.
>- Если пакет не сохранен, то относительный путь указывается от каталога пользователя.
>
>Для других модулей относительный путь указывается от расположения импортирующего модуля.