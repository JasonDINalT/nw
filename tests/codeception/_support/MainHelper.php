<?php
namespace Codeception\Module;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

use Codeception\Module;

class MainHelper extends Module
{
    var $loginNumber = 0;
    var $uniqueLogin = admin;

    function generateLogin()
    {
        $this->loginNumber = $this->loginNumber++;
        $rez[] = ["name"=>$this->uniqueLogin.$this->loginNumber.$this->rndString(rand(3,10))];
        return $this->uniqueLogin.$this->loginNumber;
    }

    function rndString($length = 8){
        $chars = 'abdefhiknrstyzABDEFGHKNQRSTYZ23456789';
        $numChars = strlen($chars);
        $string = '';
        for ($i = 0; $i < $length; $i++) {
            $string .= substr($chars, rand(1, $numChars) - 1, 1);
        }
        return $string;
    }

    function getRandEmail(){
        $email = $this->generateLogin()."gmail.com";
        return $email;
    }

    function getLoginData(){
        return ["Login"=>$this->generateLogin(),
            "Pass"=>$this->rndString(rand(8,15)),
            "Email"=>$this->getRandEmail()];
}
}
