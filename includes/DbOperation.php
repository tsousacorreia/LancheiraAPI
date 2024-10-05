<?php

class DbOperation
{
    private $con;

    function __construct()
    {
        require_once dirname(__FILE__) . '/DbConnect.php';
        $db = new DbConnect();
        $this->con = $db->connect();
    }

    // Obter construtores
    function getConstrutores()
    {
        $stmt = $this->con->prepare("SELECT id, nome, descricao, imagem_url FROM tbConstrutores");
        $stmt->execute();
        $stmt->bind_result($id, $nome, $descricao, $imagem_url);
        $construtores = array();

        while ($stmt->fetch()) {
            $construtor = array(
                'id' => $id,
                'nome' => $nome,
                'descricao' => $descricao,
                'imagem_url' => $imagem_url
            );
            array_push($construtores, $construtor);
        }
        return $construtores;
    }

    // Obter reguladores
    function getReguladores()
    {
        $stmt = $this->con->prepare("SELECT id, nome, descricao, imagem_url FROM tbReguladores");
        $stmt->execute();
        $stmt->bind_result($id, $nome, $descricao, $imagem_url);
        $reguladores = array();

        while ($stmt->fetch()) {
            $regulador = array(
                'id' => $id,
                'nome' => $nome,
                'descricao' => $descricao,
                'imagem_url' => $imagem_url
            );
            array_push($reguladores, $regulador);
        }
        return $reguladores;
    }

    // Obter energéticos
    function getEnergeticos()
    {
        $stmt = $this->con->prepare("SELECT id, nome, descricao, imagem_url FROM tbEnergeticos");
        $stmt->execute();
        $stmt->bind_result($id, $nome, $descricao, $imagem_url);
        $energeticos = array();

        while ($stmt->fetch()) {
            $energetico = array(
                'id' => $id,
                'nome' => $nome,
                'descricao' => $descricao,
                'imagem_url' => $imagem_url
            );
            array_push($energeticos, $energetico);
        }
        return $energeticos;
    }

    // Obter snacks
    function getSnacks()
    {
        $stmt = $this->con->prepare("SELECT id, nome, descricao, imagem_url FROM tbSnacks");
        $stmt->execute();
        $stmt->bind_result($id, $nome, $descricao, $imagem_url);
        $snacks = array();

        while ($stmt->fetch()) {
            $snack = array(
                'id' => $id,
                'nome' => $nome,
                'descricao' => $descricao,
                'imagem_url' => $imagem_url
            );
            array_push($snacks, $snack);
        }
        return $snacks;
    }
}
?>