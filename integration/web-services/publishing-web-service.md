# Публикация веб-сервиса

## Описание

В Loginom имеется возможность публиковать созданные пользователем пакеты в сети как веб-сервисы и в дальнейшем обращаться к ним по стандарту SOAP и REST. Эта возможность доступна, если только настроен и запущен LI (Loginom Integrator).

## Настройка

Для настройки веб-сервиса необходимо публиковать пакеты, которые будут участвовать в его работе.
Чтобы опубликовать пакет, в дереве навигации необходимо кликнуть на нужном пакете правой кнопкой мыши и в контекстном меню выбрать пункт «Публикация пакетов».

Параметры окна настроек:

* **Опубликованные пакеты** - список уже опубликованных пакетов.

* **Путь к файлу пакета** - указывается вручную или выбирается из выпадающего списка.

* **Выбрать пространство имен**:
  * *использовать пространство имен LI*;
  * *генерировать уникальное для пакета*;
  * *генерировать уникальное для каждой версии пакета*;
  * *задать вручную*.

**ВАЖНО**: В работе веб-сервиса могут участвовать только узлы, у которых предварительно установлен [модификатор доступа](../../scenario/access_modifier.md) "Опубликованный".

## Обращение

К созданному веб-сервису можно обращаться по двум стандартам:

**SOAP** - протокол обмена структурированными сообщениями. Общение по данному протоколу осуществляется при помощи языка описания веб-сервисов  WSDL, который основан на языке XML. Информацию о WSDL веб-сервиса можно получать по ссылке:

`http://<Server>/lgi/service.svc?wsdl`

**REST** - способ взаимодействия клиентских приложений и сервисов, который использует стандарты: HTTP, URL, JSON и XML. Информацию о формировании REST-запросов и ответов можно получить по ссылке:

`http://<Server>/lgi/service.svc/rest/help`