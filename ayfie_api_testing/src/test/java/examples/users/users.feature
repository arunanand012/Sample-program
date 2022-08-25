Feature: Ayfie com api test

  Scenario: General status/health endpoint for the API routing/gateway service.
    Given url 'https://portal.ayfie.com/api/health'
    Given header content-type = 'application/json'
    Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
    When method get
    Then status 200
    * print response

    Scenario: Extract entities from the provided text.
      Given url 'https://portal.ayfie.com/api/lingo'
      Given header content-type = 'application/json'
      Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
      And request body = {"extractor": "auto" , "text": "string"}
      When method post
      Then status 201
      * print response

  Scenario: Extract keywords from the provided text.
    Given url 'https://portal.ayfie.com/api/keyword'
    Given header content-type = 'application/json'
    Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
    And request body = {"text": "string","top_n": 5,"ngram_range": [1,1],"diversify": false,"diversity": 0.7}
    When method post
    Then status 201
    * print response

  Scenario: Infer/Predict the sentiment of a provided text (range from negative to positive).
    Given url 'https://portal.ayfie.com/api/sentiments'
    Given header content-type = 'application/json'
    Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
    And request body = {"language": "en","text": "string"}
    When method post
    Then status 201
    * print response

  Scenario: Create a summary of the provided text. Works best for texts of some length.
    Given url 'https://portal.ayfie.com/api/summarize'
    Given header content-type = 'application/json'
    Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
    And request body = {"language": "auto","text": "string","min_length": 5,"max_length": 100}
    When method post
    Then status 201
    * print response

  Scenario: Translate the provided text into the chosen language. The input language is auto-detected.
    Given url 'https://portal.ayfie.com/api/translate'
    Given header content-type = 'application/json'
    Given header Authorization = 'Bearer hucPWOJCCufJheFfZBigXRsZjtOhlhrJvleYvURVDRVmlpFKux'
    And request body = {"language": "en","text": "string"}
    When method post
    Then status 201
    * print response

