# Пакетное выполнение сценариев

**Пакетный режим** — исполнение Сценариев Пакета без отображения какого-либо пользовательского интерфейса и вывода сообщений на экран. Обычно результатом выполнения Пакета при этом является формирование итоговых данных и передача их в стороннюю систему (например, в хранилище данных или другую учетную систему).

Пакетное выполнение Сценариев осуществляется при помощи утилиты BatchLauncher, поставляемой в комплекте с сервером Loginom версий [Team](https://loginom.ru/platform/pricing#edition-team), [Standart](https://loginom.ru/platform/pricing#edition-standard), [Enterprise](https://loginom.ru/platform/pricing#edition-enterprise). При установке по умолчанию утилита располагается по пути:

`"C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe"`.

Для запуска пакетного выполнения по расписанию можно использовать сторонний планировщик заданий, например, планировщик заданий Windows.

Синтаксис строки запуска в пакетном режиме:

```cmd
BatchLauncher /Package=<FileName> [/Teach] [/Node=<NodeName>] [/Address=<Address>] [/Port=<Port>] [/UserName=<UserName> [/Password=<Password>]]
```

Где:

*/Package*, */Teach*, */Node*, */Address*, */Port*, */UserName*, */Password* — параметры запуска в пакетном режиме.

Несколько параметров в строке запуска разделяются символом пробела.

Пример:

```cmd
 "C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe" /Package=test.lgp /Teach
 ```

## Описание параметров

### Package

Путь к файлу Пакета внутри [Файлового хранилища](..\location_user_files.md). Обязательный параметр.

Примеры:

```cmd
BatchLauncher /Package=/user/test.lgp
BatchLauncher "/Package=/user/test and log.lgp"
```

### Node

Имя узла, который необходимо выполнить. При этом выполняются указанный узел и все предшествующие ему узлы — то есть все узлы, которые необходимо выполнить для формирования его входных данных. Узел не должен находиться в Подмодели. Если параметр не указан, то выполняются все узлы Пакета, для которых заданы необходимые настройки [режима активации](./setting-batch-processing-mode.md).

>**Примечание:** имя узла задается при настройке [модификатора доступа](./access-modifier.md).

Примеры:

```cmd
BatchLauncher /Package=/user/test.lgp "/Node=Экспорт в SQL"
BatchLauncher /Package=/user/test.lgp /Node=Экспорт_в_txt
```

### Teach

Запуск пакета в режиме [«Обучение»](https://wiki.loginom.ru/articles/training.html). Если параметр не указан, то пакет запускается в режиме «Выполнение».

Пример:

```cmd
BatchLauncher /Package=/user/test.lgp /Teach
```

### Address

IP адрес или имя хоста сервера Loginom. По умолчанию используется localhost.

Пример:

```cmd
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95
```

### Port

Порт, по которому происходит обращение к серверу Loginom. По умолчанию используется *4386*.

Пример:

```cmd
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95 /Port=4555
```

### UserName

Имя пользователя. Если параметр не указан, то используется пользователь по умолчанию.

Пример:

`BatchLauncher /Package=/user/test.lgp /UserName=user`

### Password

Пароль пользователя. Если параметр не указан, то используется пустой пароль.

Пример:

```cmd
BatchLauncher /Package=/user/test.lgp /UserName=user /Password=12345
```

>**Примечание:** при использовании русскоязычных символов в имени Пакета или пути к Пакету требуется предварительное выполнение команды `chcp 1251`.

Пример:

```cmd
chcp 1251
"C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe" /Package=/user/Обучение_квантования/Квантование.lgp /Teach
```

При использовании пробельных символов в выражении, задающем значение параметра, все выражение необходимо заключить в двойные кавычки.

Пример:

```cmd
chcp 1251
"C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe" "/Package=/user/Обучение квантования/Квантование.lgp" /Teach
```
