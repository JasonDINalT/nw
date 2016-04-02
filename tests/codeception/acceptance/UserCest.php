<?php
use \AcceptanceTester;

class UserCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
    public function userPage(AcceptanceTester $I){
        $I->amOnPage('http://einfach.kaufen/');
        $I->see('Vertrauen, das verbindet!');
        $I->see('Copyright © 2016');
        $I->wantTo('Test login(1.4)');
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("button[data-target='#LoginModal']");
        $I->fillField("LoginFormFrontend[email]", "tester123@gmail.com");
        $I->fillField("LoginFormFrontend[password]","010203");
        $I->click('input[value="Anmelden"]');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see("Mein Konto");
        $I->click("#login-menu");
        $I->click('a[href="/user/index/"]');
        $I->see('Diese Funktion steht zur Zeit nicht zur Verfügung!');
    }
    
    public function changeRegData(AcceptanceTester $I){
        $I->click('a[href="/user/settings"]');
        $I->amOnPage('http://einfach.kaufen/user/settings');
        $I->fillField("User[email]", "tester111@gmail.com");
        $I->fillField("User[firstname]", "tester111");
        $I->fillField("User[lastname]", "tester222");
        $I->click("yt0");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see("Mein Konto");
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("a[href='/auth/logout/']");
        $I->see("Anmelden");
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("button[data-target='#LoginModal']");
        $I->fillField("LoginFormFrontend[email]", "tester111@gmail.com");
        $I->fillField("LoginFormFrontend[password]","010203");
        $I->click('input[value="Anmelden"]');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see("Mein Konto");
        $I->click("#login-menu");
        $I->click('a[href="/user/index/"]');
        $I->see('Diese Funktion steht zur Zeit nicht zur Verfügung!');
        $I->click('a[href="/user/settings"]');
        $I->amOnPage('http://einfach.kaufen/user/settings');
        $I->seeInField("User[email]", "tester111@gmail.com");     
        $I->seeInField("User[firstname]", "tester111");
        $I->seeInField("User[lastname]", "tester222");
        $I->fillField("User[email]", "tester123@gmail.com");
        $I->fillField("User[firstname]", "tester123");
        $I->fillField("User[lastname]", "tester321");
        $I->click("yt0");
        $I->see("Mein Konto");
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("a[href='/auth/logout/']");
    }
}