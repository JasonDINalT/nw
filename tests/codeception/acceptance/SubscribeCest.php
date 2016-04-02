<?php
use \AcceptanceTester;

class SubscribeCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    protected $helper;

    /**
     * @param \Codeception\Module\MainHelper $H
     */
    protected function _inject(\Codeception\Module\MainHelper $H)
    {
        $this->helper = $H;
    }
    
    // tests
    public function loadSubscribe(AcceptanceTester $I)
    {
        $I->wantTo('Test subscribe from main page(1.2)');
        $I->amOnPage('http://einfach.kaufen/');
        $I->see('Vertrauen, das verbindet!');
        $I->see('Copyright © 2016');
        $I->fillField("foot_subscribe_email","subscriber@mail.mail");
        $I->click('Jetzt abonnieren');
        $I->see('Deine kostenlose Club-Anmeldung');
    }
    
    public function subsribeValidation(AcceptanceTester $I)
    {
        $I->wantTo("test subscribe validation");
        $I->fillField("Subscribers[email]", "");
        $I->see("Bitte Vornamen eintragen");
        $I->see("Bitte Nachnamen eintragen");
        $I->see("Bitte akzeptieren Sie die Datenschutzerklärung");
        $I->see("Bitte Email Adresse eintragen");
        
        
        
    }
    
    public function subsribeValidationForExistEmail(AcceptanceTester $I){
        $I->wantTo("test subscribe validation for exist email");
        $I->fillField("Subscribers[email]", "SubsrcibeTest@mail.mail");
        $I->fillField("Subscribers[first_name]", "firstname");
        $I->fillField("Subscribers[second_name]", "lastname");
        $I->checkOption("Subscribers[agree]");
        $I->click("Jetzt anmelden");
        $I->see("Nur noch ein Klick entfernt. Wir haben den Aktivierungslink per E-Mail verschickt.");
    }
    
    public function subsribe(AcceptanceTester $I){
        $I->wantTo("test subscribe");
        
        $I->wantTo('Test registration(1.5)');
        $this->helper->uniqueLogin = "usrName";
        $loginData = $this->helper->getLoginData();
        $login =  $loginData["Login"];
        $mail = $loginData['Email'];
        
        $I->fillField("Subscribers[email]", $mail);
        $I->fillField("Subscribers[first_name]", $login);
        $I->fillField("Subscribers[second_name]", $login."l");
        $I->checkOption("Subscribers[agree]");
        $I->click("Jetzt anmelden");
        $I->see("Nur noch ein Klick entfernt. Wir haben den Aktivierungslink per E-Mail verschickt.");
    }
    
    public function categoriesList(AcceptanceTester $I){
        $I->click('a[href="http://einfach.kaufen/elektronik"]');
        $I->see("",'.breadcrumbs a[href="http://einfach.kaufen/elektronik"]');
    }
}