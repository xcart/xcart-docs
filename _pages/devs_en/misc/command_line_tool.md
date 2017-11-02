---
title: X-Cart Command Line Tool
lang: en
layout: article_with_sidebar
updated_at: 2017-10-03 15:31 +0400
identifier: ref_eg4htFFH
order: 100
version: X-Cart 5.3.3.4
---

X-Cart command line (CLI) tool is the collection of helpful commands for your use while developing your modules. This tool is included with X-Cart starting from 5.3.3.4 version and is a direct replacement for the deprecated {% link "X-Cart SDK" ref_HvrXVNvJ %}. It is driven by the powerful Symfony Console component.

## Usage

To run the CLI tool, you should switch to the X-Cart working directory and run:

```
php xc5 <command> <arguments>
```

{% note %}
To run X-Cart commands from any directory, add `<your X-Cart install dir>` to your system PATH.

Because shells have differing syntax, consult a reference like [unix.stackexchange.com](http://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables).

bash shell example for CentOS:

```
export PATH=$PATH:/var/www/html/xcart
```

{% endnote %}

### Listing All Available Commands

To view a list of all available X-Cart commands, you may use the list command:

```
php xc5 list
```

Current available command reference:

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

### Viewing The Help Screen For A Command

Every command also includes a "help" screen which displays and describes the command's available arguments and options. To view a help screen, simply precede the name of the command with help:

```
php xc5 help utils:loadYaml
```

This command will output:

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

### Displaying Your Current X-Cart Version

You may also view the current version of your X-Cart installation using the `--version` option:

```
php xc5 --version
```
