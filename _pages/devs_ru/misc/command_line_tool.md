---
title: Инструмент командной строки X-Cart
lang: ru
layout: article_with_sidebar
updated_at: 2017-10-12 17:05 +0400
identifier: ref_kC6eLh5V
order: 100
---

Инструмент командной строки X-Cart - это набор команд, применимых в процессе разработки модуля.  Основа инструмента - фреймворк Symphony.

## Применение

Чтобы начать использовать утилиту, перейдите в директорию, где установлен X-Cart, и запустите команду

```
php xc5 <command> <arguments>
```

{% note %}

Для запуска команд из любой директории, впишите название директории установки магазина (`<your X-Cart install dir>`) в системную переменную PATH. 

Т.к. командные оболочки имеют различный синтакс, будет полезно обратиться, например, к ресурсам [https://unix.stackexchange.com](http://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables) за вспомогательной информацией.

Пример командной оболочки bash для CentOS:

```
export PATH=$PATH:/var/www/html/xcart
```

{% endnote %}

### Вывод всех доступных команд

Чтобы получить список всех доступных команд X-Cart, запустите команду

```
php xc5 list
```

Актуальный указатель доступных команд:

```
generate:all               Generate entities
generate:category          Generate categories
generate:product           Generate products
other:checkRepo            Find model classes without repository class
other:checkYaml            Check yaml files for errors
other:storeDataToYaml      Generate yaml file with the products and categories present in the store
scaffolding:formModel      Generate a FormModel and related classes for the given entity
scaffolding:itemsList      Generate an ItemsList and related files for the given entity.
scaffolding:page           Generate a page (in admin or customer zone)
utils:loadYaml             Load fixtures from a yaml file
utils:rebuildViewLists     Recalculate view lists
utils:reloadModuleInstall  Load install.yaml file of the given module
utils:runHook              Run upgrade hook
```

### Справка по командам

По каждой команде можно получить справочную информацию, ознакомиться с аргументами и опциями команды. Для просмотра справочной страницы, просто запустите команду вида 

```
php xc5 help utils:loadYaml
```

Эта команда выдаст следующий результат:

```
Usage:
  utils:loadYaml [options] [--] [<files>]...

Arguments:
  files                                List of yaml files to load

Options:
  -a, --allowedModels=ALLOWEDMODELS    List of allowed models, separated with comma (multiple values allowed)
  -d, --excludedModels=EXCLUDEDMODELS  List of excluded models, separated with comma (multiple values allowed)
  -h, --help                           Display this help message
  -q, --quiet                          Do not output any message
  -V, --version                        Display this application version
      --ansi                           Force ANSI output
      --no-ansi                        Disable ANSI output
  -n, --no-interaction                 Do not ask any interactive question
  -v|vv|vvv, --verbose                 Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Help:
 Loads fixtures from a yaml file
```

### Отображение текущей версии X-Cart

Узнать версию установки X-Cart поможет опция

```
php xc5 --version
```
