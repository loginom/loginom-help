# Инсталляция

## Loginom Server

Аналитический сервер, выполняет задачи загрузки, расчетов, построения моделей, визуализации, управления правами и прочее. Ключевой элемент платформы, необходимый для коллективной работы. С Loginom Server взаимодействуют остальные компоненты, кроме компонента Desktop.

* Операционная система – Windows Server 2012 (64 bit) и выше;
* Ограничения на ОЗУ – зависят от [редакции](./README.md);
* Ограничения на ядра – зависят от редакции;
* Ограничение на количество пользователей – зависят от редакции.

### Инструкции и скрипты для установки Loginom Server

* [install-loginom-server.pdf](./files/install-loginom-server.pdf);
* [iis-install-for-studio.bat](./files/iis-install-for-studio.bat).

## Loginom Integrator

Функционирует в виде службы Microsoft IIS и позволяет публиковать собственные веб-сервисы, реализующие логику, разработанную в сценариях на Loginom Server. Loginom Integrator дает возможность реализовать архитектуру, обеспечивающую отказоустойчивость, балансировку нагрузки и горизонтальное масштабирование.

* Операционная система – Microsoft Windows Server 2012 и выше;
* Среда исполнения – Microsoft IIS 7.5 и выше.

### Инструкции и скрипты для установки Loginom Integrator

* [install-loginom-integrator.pdf](./files/install-loginom-integrator.pdf);
* [iis-install-for-integrator.bat](./files/iis-install-for-integrator.bat);
* [web.config.zip](./files/web.config.zip).
