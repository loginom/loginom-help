# Веб-сервисы

В Loginom имеются инструменты для обмена данными с внешними веб-сервисами и публикации своих собственных. Благодаря этому решения, созданные на базе Loginom, могут быть легко встроены в IT-ландшафт любой сложности.

> **Важно:** Инструменты работы с веб-сервисами доступны только в редакциях [Loginom Standard](https://loginom.ru/platform/pricing#edition-standard) и [Loginom Enterprise](https://loginom.ru/platform/pricing#edition-enterprise).

Интеграция и работа с веб-сервисами требует наличия следующих компонентов платформы Loginom:

* [Server](https://loginom.ru/platform/pricing#component-server) — основной компонент платформы. Выполняет задачи загрузки, расчетов, построения моделей, визуализации, управления правами и прочее.
* [Integrator](https://loginom.ru/platform/pricing#component-integrator) — компонент, отвечающий за публикацию собственных веб-сервисов на основе созданных в Loginom пакетов. Работает в связке с [IIS](https://ru.wikipedia.org/wiki/Internet_Information_Services), создавая в нем отдельное приложение.
* [Adapter](https://loginom.ru/platform/pricing#component-adapter) — необязательный компонент. Требуется для взаимодействия с нестандартными веб-сервисами, например, с бюро кредитных историй.

## Работа с веб-сервисами

### Интеграция с внешними веб-сервисами

Платформа Loginom предоставляет возможность интеграции с [SOAP](https://ru.wikipedia.org/wiki/SOAP) и [REST](https://ru.wikipedia.org/wiki/REST) сервисами.
Для этого сначала [создается](../connections/README.md#nastroyka-podklyucheniya) соответствующее подключение:

- [Подключение веб-сервиса](../connections/list/web-service.md) (SOAP-сервис);
- [Подключение REST-сервиса](../connections/list/rest-service.md) (REST-сервис).

В дальнейшем выходные данные созданного подключения используются соответствующим узлом вызова сервиса:

- [Вызов веб-сервиса](../../processors/integration/calling-web-service.md) — вызов SOAP-сервиса.
- [Вызов REST-сервиса](../../processors/integration/calling-rest-service.md) — вызов REST-сервиса.

> **Важно:** Ряд сервисов предоставляет ответ в виде вложенного XML. Для его преобразования в табличный вид предназначен компонент [Извлечение XML](../../processors/integration/extracting-xml.md). Для преобразования ответа, полученного в виде JSON, возможно использование конструкции [JSON.parse()](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse) в компоненте [Java-script](../../processors/transformation/java-script).

### Создание собственных веб-сервисов

Имеется возможность [создания собственных SOAP и REST сервисов](../../integration/web-services/publishing-web-service.md). При этом в публикуемом в качестве веб-сервиса узле пакета реализуется логика обработки данных запроса к веб-сервису. Чаще всего таким узлом является [подмодель](../../processors/control/submodel.md), поскольку в ней возможно реализовать произвольную логику обработки. Входные [порты](../../scenario/ports/README.md) подмодели задают структуру запроса к сервису, а выходные — структуру ответа.

> **Примечание:** Возможна публикация нескольких подмоделей(узлов) в различных пакетах. Для каждой из них создается отдельный метод SOAP-сервиса и URL REST-сервиса.
