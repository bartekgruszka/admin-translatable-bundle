<?php

namespace FSi\Bundle\AdminTranslatableBundle\Behat\Context\Page\Element;

use SensioLabs\Behat\PageObjectExtension\PageObject\Element;

class Grid extends Element
{
    protected $selector = array('css' => 'table.table.table-hover.table-striped.table-bordered');

    public function hasColumn($columnName)
    {
        return $this->has('css', sprintf('th span:contains("%s")', $columnName));
    }

    public function hasEventNameCellWithValue($value)
    {
        return $this->has('css', sprintf('tr td div#admin_event_name:contains("%s")', $value));
    }

    public function editOnlyEvent()
    {
        $this->find('css', 'tr td:nth-child(3)')->clickLink('Edit');
    }

    public function getRowsCount()
    {
        return count($this->findAll('css', 'tbody tr'));
    }
}
