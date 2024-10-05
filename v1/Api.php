<?php

require_once '../includes/DbOperation.php';

$response = array();

if (isset($_GET['apicall'])) {
    switch ($_GET['apicall']) {

        case 'getConstrutores':
            $db = new DbOperation();
            $response['error'] = false;
            $response['message'] = 'Construtores obtidos com sucesso';
            $response['construtores'] = $db->getConstrutores();
            break;

        case 'getReguladores':
            $db = new DbOperation();
            $response['error'] = false;
            $response['message'] = 'Reguladores obtidos com sucesso';
            $response['reguladores'] = $db->getReguladores();
            break;

        case 'getEnergeticos':
            $db = new DbOperation();
            $response['error'] = false;
            $response['message'] = 'Energéticos obtidos com sucesso';
            $response['energeticos'] = $db->getEnergeticos();
            break;
        
        case 'getSnacks':
            $db = new DbOperation();
            $response['error'] = false;
            $response['message'] = 'Snacks obtidos com sucesso';
            $response['snacks'] = $db->getSnacks();
            break;

        default:
            $response['error'] = true;
            $response['message'] = 'Chamada de API inválida';
    }
} else {
    $response['error'] = true;
    $response['message'] = 'Chamada de API inválida';
}

echo json_encode($response);
?>