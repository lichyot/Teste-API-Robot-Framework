*** Settings ***
Library      RequestsLibrary

Resource    ../Resources/requests/get_order.robot
Resource    ../Resources/asserts/assert_get_orders.robot

Force Tags    get_order



*** Test Cases ***
Cenário: Buscando Pedido de Venda Existente
    [Tags]    get_order_1

    ${response}    requests.get.orders    order_id=${1}    status_code=200
    asserts.get.orders    response=${response}


Cenário: Buscando Pedido de Venda Inexistente
    [Tags]    get_order_2

    ${response}    requests.get.orders    order_id=${999}    status_code=404

    asserts.get.orders    response=${response}



