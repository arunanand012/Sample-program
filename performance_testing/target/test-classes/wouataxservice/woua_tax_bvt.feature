Feature: Sample performance testing
  Background:
    * def pre = read('wouataxservice/pre_request.json')
    * def Request = read('wouataxservice/request.json')
    * def Response = read('wouataxservice/response.json')
    * url pre.url
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * configure headers = null
    * def fun = read('classpath:wouataxservice/headers.js')
    * def req_headers = fun()
    * remove req_headers.Content_Type
    * set req_headers.Content-Type = 'application/json'
    * print 'headers.................',req_headers

  Scenario: Trigger Signup API with valid parameter
    Given path pre.signup_path
    And headers req_headers
    * set Request.signup.emailId = 'karthi177@gmail.com'
    And request Request.signup
    When method post
    Then status 200
    And match response contains Response.sign_up_response

  Scenario: Trigger Customer login API with valid parameter

    Given path pre.login_path
    And headers req_headers
    And request Request.login
    When method post
    Then status 200
    And match response contains Response.login_response

  Scenario: Trigger Service Request API  with valid parameter

    Given path pre.tax_Service_Request_path
    And headers req_headers
    And request Request.register_request
    When method post
    Then status 200
    And match response contains Response.service_response

  Scenario: Trigger update password API with valid parameter

    Given path pre.update_Password_path + '/' + pre.user_id
    And headers req_headers
    And request Request.update_password
    When method put
    Then status 200
    And match response contains Response.update_password_response

  Scenario: Trigger Get service API with valid params

    Given path pre.get_Service_Request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_service_response

  Scenario: Trigger Get User API with valid parameter

    Given path pre.get_user_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_user_response

  Scenario: Trigger Update payment status API with valid parameters

    Given path pre.update_payment_status_path + '/' + pre.request_id
    And headers req_headers
    And request Request.update_payment_status
    When method put
    Then status 200
    And match response contains Response.update_payment_status_response

  Scenario: Trigger incomplete user API  with valid parameter

    Given path pre.incomplete_user_path
    And headers req_headers
    And request Request.incomplete_user
    When method post
    Then status 200
    And match response contains Response.incomplete_response

  Scenario: Trigger Service Modification Request API  with valid parameter

    Given path pre.modification_request_path
    And headers req_headers
    And request Request.modification_request
    When method post
    Then status 200
    And match response contains Response.service_modification_response

  Scenario: Trigger upload Media file API with valid parameters

    Given path pre.modification_media_file_path
    And headers req_headers
    And form field media = 'word.doc'
    When method post
    Then status 200
    And match response contains Response.upload_media_file_response

  Scenario: Trigger Get Modification Request API with valid parameter

    Given path pre.modification_get_request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_modification_request_response

  Scenario: Trigger Update payment status API with valid parameters

    Given path pre.modification_payment_status_update_path + '/' + pre.request_id
    And headers req_headers
    And request Request.update_payment_status
    When method put
    Then status 200
    And match response contains Response.update_payment_status_response

  Scenario: Trigger Tax Filling Request API  with valid parameter

    Given path pre.filling_request_path
    And headers req_headers
    And request Request.filling_request
    When method post
    Then status 200
    And match response contains Response.tax_filling_request_response

  Scenario: Trigger Get filling Request API with valid params

    Given path pre.get_filling_request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.tax_filling_request_response

  Scenario: Trigger Filling Update payment status API with valid parameters

    Given path pre.filling_update_payment_status_path + '/' + pre.request_id
    And headers req_headers
    And request Request.update_payment_status
    When method put
    Then status 200
    And match response contains Response.update_payment_status_response

  Scenario: Trigger Filling upload Media file API with valid parameters

    Given path pre.filling_media_file_upload_path
    And headers req_headers
    And form field media = 'word.doc'
    When method post
    Then status 200
    And match response contains Response.upload_media_file_response

  Scenario: Trigger Get All Service Register Request API with valid params

    Given path pre.get_all_ServiceRegister_Request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_all_service_register_request_response

  Scenario: Trigger Get All Service modification Request API with valid params

    Given path pre.get_All_ServiceModification_Request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_all_service_modification_request_response

  Scenario: Trigger Get All Service filling Request API with valid params

    Given path pre.get_All_ServiceFiling_Request_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_all_service_filling_request_response

  Scenario: Trigger Get All incomplete user API with valid params

    Given path pre.get_all_incomplete_Users_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_all_incomplete_user_response

  Scenario: Trigger Get completed History API with valid params

    Given path pre.get_Completed_History_path
    And headers req_headers
    When method get
    Then status 200
    And match response contains Response.get_all_completed_history_response

  Scenario: Trigger Register Application Status Update API with valid parameter

    Given path pre.register_Application_Status_update_path + '/' + pre.request_id
    And headers req_headers
    And request Request.register_request_status_update
    When method put
    Then status 200
    And match response contains Response.register_request_status_update

  Scenario: Trigger Register Application Status Update API with valid parameter

    Given path pre.modify_Application_Status_update_path + '/' + pre.request_id
    And headers req_headers
    And request Request.modification_request_status_update
    When method put
    Then status 200
    And match response contains Response.register_request_status_update


  Scenario: Trigger Register Application Status Update API with valid parameter

    Given path pre.filing_Application_Status_update_path + '/' + pre.request_id
    And headers req_headers
    And request Request.filling_request_status_update
    When method put
    Then status 200
    And match response contains Response.register_request_status_update







