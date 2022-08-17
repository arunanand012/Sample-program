Feature: sample karate test script

Scenario:
  Given url 'https://api.spotify.com/'
  Given path 'v1/recommendations/available-genre-seeds'
  Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
  When method get
  Then status 200
  * print response


  Scenario: Get Several Browse Categories
    Given url 'https://api.spotify.com/'
    Given path 'v1/browse/categories'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario: Get Single Browse Category
    Given url 'https://api.spotify.com/'
    Given path 'v1/browse/categories/'
    Given param category_id = 'pop'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario:Get Featured Playlists
    Given url 'https://api.spotify.com/'
    Given path 'v1/browse/featured-playlists/'
    Given param country = 'IN'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario:Get Featured Playlists
    Given url 'https://api.spotify.com/'
    Given path 'v1/browse/new-releases/'
    Given param country = 'IN'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario:Get Several artists
    Given url 'https://api.spotify.com/'
    Given path 'v1/artists/'
    Given param ids = '4zCH9qm4R2DADamUHMCa6O'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response


  Scenario:Get the track
    Given url 'https://api.spotify.com/'
    Given path 'v1/tracks/'
    Given param ids = '4zCH9qm4R2DADamUHMCa6O'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response


  Scenario:Get add the track to playlist
    Given url 'https://api.spotify.com/'
    Given header Content-type = 'application/json'
    Given path 'v1/playlists/2Yqn9NufyHWQhoxVgChBHy/tracks'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    And request {uris: '6kekHWEQ4SyMe5EjYAlveP'}
    When method post
    Then status 201
    * print response

  Scenario: Get Current User’s Profile
    Given url 'https://api.spotify.com/'
    Given path 'v1/me'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario: Get Current User’s Profile
    Given url 'https://api.spotify.com/'
    Given path 'v1/users/31hcqw3foaqexknn5wghgdytfh4a'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario: Get Track’s Audio Analysis
    Given url 'https://api.spotify.com/'
    Given path 'v1/audio-analysis/5jXrULyYKHjkAMk4TXZFoG'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response


  Scenario: Get Track’s Audio Analysis
    Given url 'https://api.spotify.com/'
    Given path 'v1/audio-features'
    Given param ids = '5jXrULyYKHjkAMk4TXZFoG'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response

  Scenario:  Get Available Markets
    Given url 'https://api.spotify.com/'
    Given path 'v1/markets'
    Given header Authorization = 'Bearer BQDC0yrIOnors4oHK7Wr4UD79qQTsJoTtyZhuRf3PH1FOzdWFvBohU3WOjw5wU9X6piICGZsdF-tzG189o6G3WZSxIbgn0X8HLnor5zXFOhrw60WK5ysCCzEJx3-FVLpVasmJBXY_o0T7MVWwWX88nkAKbdLg5ObnMEzs08QGWF6kvtd0q_kdMXP6NG79ixScXIbfCQ3VPmkBEymeA3Hv979tV6hEDL0_mVsSlB6yeLGxJrvH2xNqpwTTdCptSY_yQszsh5SHpatZg'
    When method get
    Then status 200
    * print response





