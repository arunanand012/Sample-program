Feature: sample karate test script


  Scenario: Returns basic information about all countries within a specified region.
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/countries/ASI'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    When method get
    Then status 200
    * print response

  Scenario: Returns basic information about all regions.
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/regions/'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    When method get
    Then status 200
    * print response
    * match response[0] == { ID: 'AFR' , LocalizedName:'Africa',EnglishName :'Africa' }


  Scenario: Returns basic information about administrative areas in the specified country
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/adminareas/IN'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    And param language = 'ta-in'
    When method get
    Then status 200
    * print response

  Scenario: Returns information for the top 50, 100, or 150 cities, worldwide
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/topcities/150'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    When method get
    Then status 200
    * print response


  Scenario: Returns information about neighboring cities, by location key. You must know the location key to perform this query.
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/cities/neighbors/2944547'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    And param language = 'ta-in'
    When method get
    Then status 200
    * print response

  Scenario: Returns information about a specific location, by location key. You must know the location key to perform this query.
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/cities/2944547'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    And param language = 'ta-in'
    When method get
    Then status 200
    * print response


  Scenario: Returns information about a specific location, by GeoPosition (Latitude and Longitude).
    Given url 'http://dataservice.accuweather.com/'
    Given path 'locations/v1/cities/geoposition/search'
    Given param apikey = 'ofDdUP3KiCFJsj4GolGdKsHyGzPTZliR'
    And param language = 'ta-in'
    And param q = '13.082,80.2707'
    When method get
    Then status 200
    * print response








