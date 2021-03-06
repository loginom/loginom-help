# ![ ](../../../images/icons/data-sources/db-firebird_default.svg) Подключение Firebird

Используется для подключения и работы с базой данных Firebird.

## Параметры подключения

При настройке подключения задаются следующие параметры:

* **Метка** — содержит задаваемое пользователем имя подключения.
* **Строка подключения** — настраивается в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Поддерживается два типа подключения.
  * **локальное** — подключение без использования сервера Firebird, указывается только путь к БД.
  * **удаленное** — подключение с использованием сервера Firebird.
    * **сервер** — хост сервера Firebird.
    * **протокол** — протокол, используемый сервером для взаимодействия с клиентом.
* **Протестировать подключение** — тест указанных настроек подключения.
* **Логин** — логин пользователя БД. Если логин не указан, то используется доменная авторизация.
* **Пароль** — пароль пользователя БД.
* **Сохранять пароль** — при установке этого флага логин и пароль будут сохранены в текущих настройках подключения.
* **Показывать системные таблицы** — при установке этого флага в мастере импорта, использующего данное подключение, становятся видимы доступные пользователю системные таблицы БД.
* **Обрамлять имена кавычками** — если имена объектов базы данных (например, имена таблиц, полей) содержат пробелы или зарезервированные символы, то необходимо использовать обрамляющие символы, фиксирующие начало и конец имени.
* **Настройка кавычек** — является информационным полем, указывающим, какие именно обрамляющие символы используются в подключении к данной БД. Для Firebird – двойные кавычки.
* **Значение кодировки** — задает кодировку символов, в которой будут трактоваться данные с сервера.
* **Не использовать клиент СУБД** —  для Firebird изменение этого параметра не доступно.
* **Очищать пул при деактивации** — очищает пул часто используемых в пакетной обработке и пакетов Loginom Integrator, сохраненных для быстрого вызова, после деактивации узла. По умолчанию этот параметр отключен.
* **Описание** — в этой форме можно оставить любую справочную информацию о подключении.

> **Примечание:** Для подключения к базе данных необходима установка файлов клиентской библиотеки (DLL) той же разрядности, что и разрядность приложения/сервера Loginom.

В случае, если используется многопользовательский доступ к БД, рекомендуется использовать сервер Firebird для избежания блокировок доступа.

> **Важно:** Доменная авторизация осуществляется от имени пользователя, под которым запущен сервер Loginom.

## Совместимость

Начиная с версии Firebird 2.5 и выше.

**Смотри также:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/Firebird);
* [Официальный сайт разработчика](https://firebirdsql.org/);
* [Документация по SQL синтаксису](https://www.firebirdsql.org/file/documentation/reference_manuals/fblangref25-en/html/fblangref25-dml.html).
