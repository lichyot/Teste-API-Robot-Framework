*** Settings ***
Library     JSONLibrary

Resource    ../requests/get_order.robot



*** Keywords ***
asserts.get.orders
    [Arguments]
    ...    ${response}

    IF    ${response.status_code} == ${200}
        Should Be Equal As Numbers    ${response.json()['userId']}    1
        Should Be Equal As Numbers    ${response.json()['id']}        1
        Should Be Equal As Strings    ${response.json()['title']}     sunt aut facere repellat provident occaecati excepturi optio reprehenderit
        Should Be Equal As Strings    ${response.json()['body']}      quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto
    ELSE
        Should Be Empty    ${response.json()}
    END
    

