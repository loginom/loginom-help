# ![](../../../media/app/icons/component-18/component-default-55.svg) Импорт внешних модулей

## Модульные системы

Поддерживаются модульные системы ES6 (ECMAScript 6) и CommonJS. Код обработчика является корневым модулем системы ES6.
В модулях ES6 поддерживается статический и динамический импорт модулей ES6, для импорта модулей CommonJS применяется функция `require` (см. [Полное описание API](./api-description.md)).

%spoiler%Примеры:%spoiler%

```javascript
/* Модульная система ECMAScript 6 */

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
      // При использовании Promise неперехваченные ошибки
      // записываются в лог сервера, но выполнение узла при этом
      // продолжается без сообщений об ошибке.
}).catch(error => {
      OutputTable.Append();
      OutputTable.Set(1, error.message);  
});

/* Модульная система CommonJS */

// Исполняемый код:
var inc = require('foo/increment.js').increment;
var a = 1;
OutputTable.Append();
OutputTable.Set(1, inc(a));  

// модуль increment.js:
var add = require('./module/mymath.js').add;
exports.increment = function(val) {
    return add(val, 1);
};

// модуль mymath.js:
exports.add = function() {
    var sum = 0, i = 0, args = arguments, l = args.length;
    while (i < l) {
        sum += args[i++];
    }
    return sum;
};
```

%/spoiler%

Внешние модули могут быть в кодировке `UTF-8` или `UTF-16 Little Endian с BOM`.

Работа модулей CommonJS реализована в соответствии со [спецификацией](http://wiki.commonjs.org/wiki/Modules/1.1.1), за следующими отличиями:

- Необязательные свойства `require.main`, `require.paths` и `module.uri` отсутствуют;
- Добавлены необязательные свойства `require.resolve` и `require.cache` (как в NodeJS).
- Объект модуля имеет свойства `parent`, `loaded` и `filename` (как в NodeJS).
- Из модуля доступна глобальная переменная `__filename`, хранящая абсолютный путь к модулю внутри файлового хранилища.

%spoiler%Пример%spoiler%

```javascript
// Исполняемый код:
// require.resolve:
// - на сервере Loginom возвращает полный путь модуля в файловом хранилище
// - в Desktop версии возвращает полный путь модуля в файловой системе
let xPath = require.resolve('child_module.js');
console.log(xPath);
// Вызов модуля системы CommonJS
let xChildModule = require('child_module.js');
console.log(xChildModule.filename);
console.log(xChildModule.parent);
console.log(xChildModule.loaded);
// Очищается кэш модуля 'child_module.js'
delete require.cache[path];
// и модуль вызывается повторно,
// в результате чего повторно выводится "Hello! I am ... ".
// Без очистки кэша этого не происходит
require('child_module.js');

// child_module.js:
console.log("Hello! I am " + __filename);
exports.filename = module.filename; // возвращает полный путь к child_module.js
exports.parent = module.parent.id;  // возвращает идентификатор вызывающего модуля
exports.loaded = module.loaded;     // возвращает true или false - был ли загружен модуль
```

%/spoiler%

Из модулей CommonJS можно загружать только модули CommonJS.

## Пути импорта внешних модулей

Пути импорта могут быть относительными или абсолютными внутри файлового хранилища. При использовании относительных путей в корневом модуле (скрипте, исполняемом в узле):

- Если пакет сохранен, то относительный путь указывается от расположения пакета.
- Если пакет не сохранен, то относительный путь указывается от каталога пользователя.

Для других модулей относительный путь указывается от расположения импортирующего модуля.

%spoiler%Пример%spoiler%

```javascript
/* Иерархический импорт модулей */

/* исполняемый в узле код (корневой модуль) */

// импортируем функции из внешнего модуля foo.js
// путь относительно расположения пакета, если пакет сохранен
// или относительно каталога пользователя, если пакет не сохранен
import { cube, foo, sayHello } from 'foo/foo.js';
// добавляем строку в выходной набор
OutputTable.Append();
// устанавливаем значение поля 'ID' равным результату импортированной функции cube(3)
OutputTable.Set('ID', cube(3));
// устанавливаем значение поля 'Str' равным результату импортированной функции sayHello()
OutputTable.Set('Str', sayHello());

/* код модуля foo.js */

import { sayHello } from "./module/module.js";  // путь относительно расположения модуля foo.js
function cube(x) {
    return x * x * x;
};
const foo = Math.PI + Math.SQRT2;
export { cube, foo, sayHello };

/* код модуля module.js */

function sayHello() {
    return "Hello";
};
export { sayHello };
```

%/spoiler%

### На сервере Loginom

Если путь не начинается с "/", то он интерпретируется как относительный путь.

Пример:

```javascript
// относительный путь (относительно пакета)
import { cube, foo, sayHello } from 'foo/foo.js';
```

Абсолютный путь обязательно начинается с "/" и считается от каталога пользователя.

Пример:

```javascript
// импортируем функции из внешнего модуля foo.js
import { cube, foo, sayHello } from '/user/data/JavaScript/foo/foo.js';
```

### В Desktop версии

Относительный путь. Пример:

```javascript
// Так же возможен вариант './foo/foo.js'
import { cube, foo, sayHello } from 'foo/foo.js';
```

Абсолютный путь файла в системе. Пример:

```javascript
  import { cube, foo, sayHello } from 'C:/Users/Administrator/Desktop/JavaScript/foo/foo.js';
```

URI вида "file:///<абсолютный путь>". Пример:

```javascript
import { cube, foo, sayHello } from 'file:///C:/Users/Administrator/Desktop/JavaScript/foo/foo.js';
```

> **Примечание:** В Desktop версии и на сервере Loginom вместо прямого слеша ("/") в пути можно применять обратный ("\\"), однако обратный слеш должен быть экранирован.
> Примеры:
>
> Абсолютный путь: `'\\user\\data\\JavaScript\\foo\\foo.js'`
>
> Относительный путь: `'foo\\foo.js'`