---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-04 15:13 +0400'
identifier: ref_7AqEDxwd
title: Creating custom Doctrine function
order: 100
published: false
---
## Introduction

X-Cart uses Doctrine to {% link "work with database" ref_uAv5ETfx %} and although it has a lot of advantages, the drawback is that not all default MySQL functions are implemented in Doctrine.

However, Doctrine allows to create custom functions to overcome the problem and this article is about that.

Example: you want to pull random products from the database. In native MySQL you would do something like this:

```mysql
SELECT * FROM xc_products ORDER BY RAND() LIMIT 10;
```

but RAND() function is not available in Doctrine by default. This article will show how to create the function.

{% note info %}
There is a guide about the same topic in Doctrine documentation:
<https://www.doctrine-project.org/projects/doctrine-orm/en/2.6/cookbook/dql-user-defined-functions.html>

This article is about how to apply the same approach to X-Cart.
{% endnote %}

{% toc Table of Contents %}

## Implementation

We start with {% link "creating a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **CustomDoctrineFunction**.

Then, we create a class with our implementation of 'RAND()' function. For that we create `classes/XLite/Module/XCExample/Custom/DoctrineFunction/Core/Doctrine/RandFunction.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\CustomDoctrineFunction\Core\Doctrine;

use Doctrine\ORM\Query\Lexer;
use Doctrine\ORM\Query\Parser;
use Doctrine\ORM\Query\SqlWalker;

class RandFunction extends \Doctrine\ORM\Query\AST\Functions\FunctionNode
{
    public function parse(Parser $parser)
    {
        $parser->match(Lexer::T_IDENTIFIER);
        $parser->match(Lexer::T_OPEN_PARENTHESIS);
        $parser->match(Lexer::T_CLOSE_PARENTHESIS);
    }

    public function getSql(SqlWalker $sqlWalker)
    {
        return 'RAND()';
    }
}
```

and then we need to register this class as an implementation of 'rand' Doctrine function. For that we {% link "decorate" ref_AF6bmvL6 %} `\XLite\Core\Database` class and create `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Database` class with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\CustomDoctrineFunction\Core;

/**
 * Database
 */
abstract class Database extends \XLite\Core\Database implements \XLite\Base\IDecorator
{
    public function connect()
    {
        parent::connect();

        $this->configuration->addCustomStringFunction(
        	'rand',
            '\\XLite\\Module\\XCExample\\CustomDoctrineFunction\\Core\\Doctrine\\RandFunction'
        );
    }
}
```

Let us have a close look at how these two classes actually work.

1. We register a handler of 'rand' operator in `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Database` class:

	```php
            $this->configuration->addCustomStringFunction(
        	'rand',
            '\\XLite\\Module\\XCExample\\CustomDoctrineFunction\\Core\\Doctrine\\RandFunction'
        );
    ```
    
    Obviously, handler of 'rand' operator is defined by the `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Doctrine\RandFunction` class.
    
2. `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Doctrine\RandFunction::parse()` method is used to recognize our function in DQL code.

	```php
    public function parse(Parser $parser)
    {
        $parser->match(Lexer::T_IDENTIFIER);
        $parser->match(Lexer::T_OPEN_PARENTHESIS);
        $parser->match(Lexer::T_CLOSE_PARENTHESIS);
    }
    ```
    
    In our case, once we bump into construction of `rand()`, we know this is our function. `$parser->match(Lexer::T_IDENTIFIER);` defines a string that passed as a 1st parameter to `addCustomStringFunction()` function in `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Database::connect()` method.
    
3. Once we found `rand()` phrase in DQL, it will be replaced with string from `getSql()` method of our function implementation. In our case, it will be replaced with `RAND()` string, when query is sent to MySQL server.
  
Let us check this code in action. Activate the module and create the following `test.php` script in X-Cart root:

```php
<?php

// test.php

//X-Cart initializtion
require_once 'top.inc.php';

$result = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder('p')
    ->orderBy('rand()')
    ->setMaxResults(5)
    ->getResult()
    ;

foreach ($result as $product) {
    echo $product->getProductId() . '<br />';
}
```

If you run this script, you will see different product IDs each time. If you disable the module and try to run the script, you will see error message like this:

```php
Error (code: 0): [Syntax Error] line 0, col 266: Error: Expected known function, got 'rand'
```

### Implementation of ROUND() function

The example above is rather simple, because `RAND()` function does not require any parameters. 

Let us have a look at more complex example: `ROUND()` function. It takes two parameters: the first one is the number to be rounded, the second one is the precision.

In this case, our version of `\XLite\Module\XCExample\CustomDoctrineFunction\Core\Database::connect()` method would be very similar:

```php
    public function connect()
    {
        parent::connect();

        $this->configuration->addCustomStringFunction(
            'round', 
            '\\XLite\\Module\\XCExample\\CustomDoctrineFunction\\Core\\Doctrine\\RoundFunction'
        );
    }
```

The only difference is that we register 'round' function instead of 'rand'. But implementation of the function would be a bit more complex:

```php
<?php

namespace XLite\Module\XCExample\CustomDoctrineFunction\Core\Doctrine;

use Doctrine\ORM\Query\Lexer;
use Doctrine\ORM\Query\Parser;
use Doctrine\ORM\Query\SqlWalker;

/**
 * ROUND (3.1415, 2) = 3.14
 */

class RoundFunction extends \Doctrine\ORM\Query\AST\Functions\FunctionNode
{
    public function parse(Parser $parser)
    {
        $parser->match(Lexer::T_IDENTIFIER);

        $parser->match(Lexer::T_OPEN_PARENTHESIS);

        $this->value = $parser->ArithmeticPrimary();

        $parser->match(Lexer::T_COMMA);

        $this->precision = $parser->ArithmeticPrimary();        

        $parser->match(Lexer::T_CLOSE_PARENTHESIS);
    }

    /**
     * Get SQL query part
     * 
     * @param \Doctrine\ORM\Query\SqlWalker $sqlWalker SQL walker
     *  
     * @return string
     */
    public function getSql(SqlWalker $sqlWalker)
    {
        return 'ROUND(' .
            $this->value->dispatch($sqlWalker) . ', ' .
            $this->precision->dispatch($sqlWalker) .
            ')';
    }
}
```

`parse()` method will look for the following string in DQL: `round( NUMBER, NUMBER )` and it will save first number into `$this->value` variable and the second one into `$this->precision` one.

Similarly, we would build actual MySQL code using these values in `getSql()` method:

```php
    public function getSql(SqlWalker $sqlWalker)
    {
        return 'ROUND(' .
            $this->value->dispatch($sqlWalker) . ', ' .
            $this->precision->dispatch($sqlWalker) .
            ')';
    }
```

## Module example
You can download this module example from here: <https://www.dropbox.com/s/5ws6xubhbu27i5k/XCExample-CustomDoctrineFunction-v5_3_0.tar>