<?php

namespace FSi\Bundle\AdminTranslatableBundle\Behat\Context;

use Behat\Behat\Context\BehatContext;

class FeatureContext extends BehatContext
{
    public function __construct(array $parameters)
    {
        $this->useContext('admin', new AdminContext($parameters));
    }
}
