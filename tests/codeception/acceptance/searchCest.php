<?php
use \AcceptanceTester;

class searchCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
//    /**
//     * @param \AcceptanceTester $I
//     */
//    public function main(AcceptanceTester $I)
//    {
//
//    }

    /**
     * @param \AcceptanceTester $I
     */
    public function searchFromMain(AcceptanceTester $I){
        $I->wantTo('Test search from main page(1.3)');
        $I->amOnPage('http://einfach.kaufen/');
        $I->see('Vertrauen, das verbindet!');
        $I->see('Copyright © 2016');
        $I->fillField('text', 'Iphone');
        $I->click('#global_search_butt');
        $I->amOnPage('http://einfach.kaufen/search?q=iphone');

    }

    /**
     * @before searchFromMain
     * @param \AcceptanceTester $I
     */
    public function search(AcceptanceTester $I){

    }

    /**
     * @before searchFromMain
     * @param \AcceptanceTester $I
     */
    public function viewItems(AcceptanceTester $I){
        $I->wantTo('Test displaying of elements(5.2)');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');
        $I->click('.fa-bars');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.product-tile-list .col-sm-7');
        $I->dontSee('','.col-xs-12 .col-sm-4');
        $I->click('.fa-th');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->dontSee('','.product-tile-list .col-sm-7');
        $I->see('','.col-xs-12 .col-sm-4');
    }

    /**
     * @before searchFromMain
     * @param \AcceptanceTester $I
     */
    public function filters(AcceptanceTester $I){
        $I->wantTo('Test filters(5.2)');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->executeJS('$("#filter_review").val("70;100")');
        $I->click('#applyFilters');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');
        $I->executeJS('$("#filter_review").val("0;30")');
        $I->click('#applyFilters');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');
        $I->executeJS('$("#filter_review").val("0;100")');
        $I->click('#applyFilters');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');
        $I->executeJS('$("#filter_price").val("0;50")');
        $I->click('#applyFilters');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');
        $I->executeJS('$("#filter_price").val("#filter_price").val("300;1000")');
        $I->click('#applyFilters');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see('','.col-xs-12 .col-sm-4');

    }

}