<?php


class AuthController
{
    public function index()
    {
        $data = Security::protectData($_POST);

        $userInfo = UsersTable::getByEmail($data['email'])[0];

        if (empty($userInfo)) {
            $controller = new ErrorController();
            $controller->userNotFound();

            return;
        }

        $user = new User($userInfo['email'], $userInfo['password']);

        if ($user->getPassword() === $data['password']) {
            $_SESSION['auth'] = true;
            $_SESSION['email'] = $user->getEmail();
            $_SESSION['password'] = $user->getPassword();
        }

        header("Refresh: 5; /?time=minutes");
        $view = new View("status/auth");
    }
}