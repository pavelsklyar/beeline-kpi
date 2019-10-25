<?php


class View
{
    private $data = array();
    private $render = false;
    private $title;

    /**
     * View constructor.
     * @param $template
     * @param array $dataArray
     */
    public function __construct($template, $dataArray = [])
    {
        $file = VIEWS . strtolower($template) . ".php";

        if (file_exists($file)) {
            $this->render = $file;
        }
        else {
            echo "template not found!";
            return;
        }

        foreach ($dataArray as $variable => $value) {
            $this->data[$variable] = $value;
        }
    }

    public function __destruct()
    {
        if ($this->render) {
            extract($this->data);
            include $this->render;
        }
    }
}