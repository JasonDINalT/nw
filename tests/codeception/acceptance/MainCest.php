<?php



class MainCest
{
    protected $helper;

    /**
     * @param \Codeception\Module\MainHelper $H
     */
    protected function _inject(\Codeception\Module\MainHelper $H)
    {
        $this->helper = $H;
    }

    public function _before(AcceptanceTester $I)
    {

    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
    public function main(AcceptanceTester $I)
    {
        $I->amOnPage('http://einfach.kaufen/');
        $I->see('Vertrauen, das verbindet!');
        $I->see('Copyright © 2016');
    }

    /**
     * @before main
     * @param \AcceptanceTester $I
     */

    public function login(AcceptanceTester $I){

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
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("a[href='/auth/logout/']");
        $I->see("Anmelden");
    }

    /**
     * @before main
     * @param AcceptanceTester $I
     */
    public function loginValidation(AcceptanceTester $I){
        $I->wantTo('Test login validation(1.4)');
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click("button[data-target='#LoginModal']");
        $I->fillField("LoginFormFrontend[email]", "incorrectMail@mail.mail");
        $I->fillField("LoginFormFrontend[password]","incorrectPass");
        $I->click('input[value="Anmelden"]');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->see("Jetzt Anmelden");
    }


    /**
     * @before main
     * @param \AcceptanceTester $I
     */
    public function registerValidation(AcceptanceTester $I){
        $I->wantTo('Test register validation(1.5)');
        $nonValidUsers[][] = [
            [
                'firstname'=>'',
                'lastname'=>'',
                'email'=>'notValid.Mail',
                'pass'=>'short'
            ],
            [
                'firstname'=>'',
                'lastname'=>'',
                'email'=>'notValid@Mail',
                'pass'=>'12345'
            ],
            [
                'firstname'=>'',
                'lastname'=>'',
                'email'=>'',
                'pass'=>''
            ]
        ];
        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click('a[data-target="#RegisterModal"]');
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click('#User_is_agree');
        foreach ($nonValidUsers as $nonValidUser){

            $I->fillField('User[firstname]',$nonValidUser['firstname']);
            $I->fillField('User[lastname]',$nonValidUser['lastname']);
            $I->fillField('User[email]',$nonValidUser['email']);
            $I->fillField('User[password]',$nonValidUser['pass']);
            $I->click('#register-form-button');
            if (method_exists($I, 'wait')) {
                $I->wait(3); // only for selenium
            }
            $I->see('.register-login-red[name="User[firstname]');
            $I->see('.register-login-red[name="User[lastname]');
            $I->see('.register-login-red[name="User[email]');
            $I->see('.register-login-red[name="User[password]');
        }


    }

    /**
     * @before main
     * @param \AcceptanceTester $I
     */
    public function register(AcceptanceTester $I){
//        /** @var mainTestHelper $loginDataClass */
//        $loginDataClass = new mainTestHelper();
        $I->wantTo('Test registration(1.5)');
        $this->helper->uniqueLogin = "usrName";
        $loginData = $this->helper->getLoginData();
        $login =  $loginData["Login"];
        $pass = $loginData['Pass'];
        $mail = $loginData['Email'];


        $I->click("#login-menu");
        if (method_exists($I, 'wait')) {
            $I->wait(10); // only for selenium
        }
        $I->click('a[data-target="#RegisterModal"]');
        $I->fillField('User[firstname]',$login);
        $I->fillField('User[lastname]',$login."u");
        $I->fillField('User[email]',$mail);
        $I->fillField('User[password]',$pass);
        $I->click('#User_is_agree');
        $I->click('#register-form-button');
        if (method_exists($I, 'wait')) {
            $I->wait(3); // only for selenium
        }
        $I->see("Vielen Dank für Ihre Anmeldung im Review Club!");
        $I->click('#RegisterModal span[aria-hidden="true"]');

    }


    /**
     * @before main
     * @param AcceptanceTester $I
     */
    public function subscribe(AcceptanceTester $I){
        $I->wantTo('Test subscribe(1.2)');
        $I->click("Jetzt abonnieren");
        $I->see("Geben Sie bitte eine gültige E-Mail ein");
        $I->fillField("foot_subscribe_email","subscriber@mail.mail");
        $I->click("Jetzt abonnieren");
        $I->see("Deine kostenlose Club-Anmeldung");
        $I->click('img[alt="einfach.kaufen – Vertrauen das verbindet"]');
    }

}
