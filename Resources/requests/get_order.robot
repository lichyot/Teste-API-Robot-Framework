*** Settings ***
Library     RequestsLibrary
Library     FakerLibrary
Library     JSONLibrary
Library     Collections

Resource    ../session/order_session.robot



*** Keywords ***
requests.get.orders
    [Arguments]
    ...  ${order_id}
    ...  ${status_code}
    [Return]
    ...    ${response}

    ${alias}    session.orders

    ${response}  GET On Session
    ...  alias=${alias}
    ...  url=/posts/${order_id}
    ...  expected_status=${status_code}
    ...  msg=Falha ao realizar requisição GET
