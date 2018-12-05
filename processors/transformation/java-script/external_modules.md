# ![](../../../media/app/icons/component-18/component-default-55.svg) Импорт внешних модулей

Поддерживаются динамический и статический импорт модулей.

%spoiler%Примеры:%spoiler%

```javascript
// Статический импорт
import { cube, sayHello } from 'foo/foo.js';
// добавляем строку в выходной набор
OutputTable.Append();
// устанавливаем значение поля 'ID' равным результату импортированной функции cube(3)
OutputTable.Set('ID', cube(3));
// устанавливаем значение поля 'Str' равным результату импортированной функции sayHello()
OutputTable.Set('Str', sayHello());

// Динамический импорт
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
}).catch(error => {                       // При использовании Promise неперехваченные в блоке **catch**
      OutputTable.Append();               // ошибки записываются в лог сервера, но выполнение узла при этом
      OutputTable.Set(1, error.message);  // продолжается без сообщений об ошибке.
});
```

%/spoiler%

Пути импорта внешних модулей могут быть относительными или абсолютными внутри файлового хранилища.

## На сервере Loginom

Абсолютный путь обязательно начинается с "/" и считается от каталога пользователя.

Пример:

```javascript
// импортируем функции из внешнего модуля foo.js
import { cube, foo, sayHello } from '/user/data/JavaScript/foo/foo.js';
```

Если путь не начинается с "/", то он интерпритируется как относительный путь и указывается относительно пакета, содержащего данный узел.

Пример:

```javascript
// относительный путь (относительно пакета)
import { cube, foo, sayHello } from 'foo/foo.js';
```

## В Desktop версии

Абсолютный путь файла в системе (основной способ). Пример:

```javascript
 // В пути используется только прямой слеш - "/"
 import { cube, foo, sayHello } from 'C:/Users/Administrator/Desktop/JavaScript/foo/foo.js';
```

URI вида "file:///<абсолютный путь>". Пример:

```javascript
// В пути используется только прямой слеш - "/"
import { cube, foo, sayHello } from 'file:///C:/Users/Administrator/Desktop/JavaScript/foo/foo.js';
```

Относительный путь (относительно пакета). Пример:

```javascript
// Так же возможен вариант './foo/foo.js'
import { cube, foo, sayHello } from 'foo/foo.js';
```

## Иерархический импорт модулей

Из загружаемых модулей так же может производится импорт других модулей. При этом используются описанные выше правила.

Пример:

```javascript
// исполняемый в узле код (корневой модуль)
// импортируем функции из внешнего модуля foo.js
import { cube, foo, sayHello } from '/user/data/JavaScript/foo/foo.js';
// добавляем строку в выходной набор
OutputTable.Append();
// устанавливаем значение поля 'ID' равным результату импортированной функции cube(3)
OutputTable.Set('ID', cube(3));
// устанавливаем значение поля 'Str' равным результату импортированной функции sayHello()
OutputTable.Set('Str', sayHello());

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