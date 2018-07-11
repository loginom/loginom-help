# Предопределенные переменные

## Переменные пакета

Основной кейс использования - [производные компоненты](../derived_component.md). Переменные предоставляют информацию о пакете, в котором создан производный компонент.

 | Имя | Описание | Пример |
 | ------ | ---------------- | ------------ |
 | **Параметры пакета, в котором создан используемый производный компонент** | | |
 | PackageName | Имя пакета | FunctionLibrary |
 | PackageVersion | Версия пакета | 1.0.0 |
 | PackageGuid | Идентификатор пакета | {D9AD3962-94A5-4CE0-8909-64D0747B0E9C} |
 | PackageFileName | Файл пакета | /user/ProjectName/scripts/FunctionLibrary.lgp |
 | PackageFilePath | Путь к файлу пакета | /user/ProjectName/scripts/ |
 | **Параметры пакета, в котором используется производный компонент** | | |
 | DerivedPackageName | Имя пакета | main |
 | DerivedPackageVersion | Версия пакета | 1.0.0 |
 | DerivedPackageGuid | Идентификатор пакета | {38A56938-93B6-4981-A5DA-70053DB575EE} |
 | DerivedPackageFileName | Файл пакета | /user/ProjectName/scripts/main.lgp |
 | DerivedPackageFilePath | Путь к файлу пакета | /user/ProjectName/scripts/ |

## Переменные сессии

| Имя | Описание | Пример |
| ------ | ---------------- | ------------ |
| UserName | Логин пользователя, открывший данный сценарий | user |
| SessionGuid | Идентификатор текущей сессии на сервере Loginom | {AA037666-56F9-4B06-AE6F-AE3E2E00052F} |
