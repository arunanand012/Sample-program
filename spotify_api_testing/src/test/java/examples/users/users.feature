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


    #19.08.2022

  Scenario:  Get following list
    Given url 'https://api.spotify.com/'
    Given path 'v1/me/following'
    Given header Authorization = 'Bearer BQAUSCJReuJ1Sxbb0vKuBpzR2o81EpnfCyGVbzjERKbviIRJdjpssitpLys7YrFQHV3TazNIj9iB0msszbhxUEo_LVnYyC04PObCT3UHZmWGWA9MLXmSfgPYJXUtpPytRNqsPRicoL7tg7YW4NXJbzJgciJn6hS_w1-NNnxI6DxQU7qhH6Y77FR-BqpBwtX4LV3KxLTUEXqONv1lqwuVJyy_-3c-wH-EKDbcj6p-KUzyNI-CMXfSjPGRVnBBcf26anY'
    Given param type = 'artist'
    And param ids = '6VuMaDnrHyPL1p4EHjYLi7'
    When method delete
    Then status 204
    * print response


  Scenario:  Save albums
    Given url 'https://api.spotify.com/'
    Given path 'vv1/me/albums'
    Given param ids = '6wU1YErvKuSBg9qQsybwUz,5bFJ5DOKAg32Lg84f1eVYg,1mnPDLW0l0ahapG5OXbgJe'
    Given header Authorization = 'Bearer BQAUSCJReuJ1Sxbb0vKuBpzR2o81EpnfCyGVbzjERKbviIRJdjpssitpLys7YrFQHV3TazNIj9iB0msszbhxUEo_LVnYyC04PObCT3UHZmWGWA9MLXmSfgPYJXUtpPytRNqsPRicoL7tg7YW4NXJbzJgciJn6hS_w1-NNnxI6DxQU7qhH6Y77FR-BqpBwtX4LV3KxLTUEXqONv1lqwuVJyy_-3c-wH-EKDbcj6p-KUzyNI-CMXfSjPGRVnBBcf26anY'
    Given header Accept = 'text/html'
    When method put
    Then status 201
    * print response


  Scenario:  create new playlist
    Given url 'https://api.spotify.com/'
    Given path 'v1/users/31hcqw3foaqexknn5wghgdytfh4a/playlists'
    Given header Authorization = 'Bearer BQAUSCJReuJ1Sxbb0vKuBpzR2o81EpnfCyGVbzjERKbviIRJdjpssitpLys7YrFQHV3TazNIj9iB0msszbhxUEo_LVnYyC04PObCT3UHZmWGWA9MLXmSfgPYJXUtpPytRNqsPRicoL7tg7YW4NXJbzJgciJn6hS_w1-NNnxI6DxQU7qhH6Y77FR-BqpBwtX4LV3KxLTUEXqONv1lqwuVJyy_-3c-wH-EKDbcj6p-KUzyNI-CMXfSjPGRVnBBcf26anY'
   And request {name:'Testing playlist' , description: 'New playlist description' , public: 'false'}
    When method post
    Then status 201
    * print response

  Scenario:  update the playlist
    Given url 'https://api.spotify.com/'
    Given path 'v1/users/playlists/2Yqn9NufyHWQhoxVgChBHy'
    Given header Authorization = 'Bearer BQCkPJt8lHdslFiVFIfWSMNsCC0h-wAl2QYgnnd1Tn3XCCkgIGMx9Ktvx5rSO2fO1SO-NIPns8sC3GnEVjlBpE7HOou04wR-7BXNAdPVWSukg5j8UrTgYYqoEKCJAYeERGD-9KWkgjfaegFaKCXHbBwQdJvk2O60Z-g2-xfEcES2DK1NqNaxjmfPHJzsnRCT5E2_5x4u9ENZDN7EMMmPT4d_YG1TegU_pB625jEZrjl82kWCjECUVIjKmdoz6n9WZHA'
    And request {name:'Updated playlist' , description: 'New playlist description' , public: 'false'}
    When method post
    Then status 201
    * print response


  Scenario:  remove the playlist
    Given url 'https://api.spotify.com/'
    Given path 'v1/playlists/7aublSTaZehKfgRfwdMo6/tracks'
    Given header Authorization = 'Bearer BQCkPJt8lHdslFiVFIfWSMNsCC0h-wAl2QYgnnd1Tn3XCCkgIGMx9Ktvx5rSO2fO1SO-NIPns8sC3GnEVjlBpE7HOou04wR-7BXNAdPVWSukg5j8UrTgYYqoEKCJAYeERGD-9KWkgjfaegFaKCXHbBwQdJvk2O60Z-g2-xfEcES2DK1NqNaxjmfPHJzsnRCT5E2_5x4u9ENZDN7EMMmPT4d_YG1TegU_pB625jEZrjl82kWCjECUVIjKmdoz6n9WZHA'
    When method delete
    Then status 204
    * print response

  Scenario:  Get available devices
    Given url 'https://api.spotify.com/'
    Given path 'v1/me/player/devices'
    Given header Authorization = ' Bearer BQCp3VbolJZzAph2U-zKeiyRSoasg3snQM1a2VEPHbvZrr60wSFHp2LCwBKoLo-hK3_T-Z6ZoGDRpoJBNO34dt79DC8NEpN499T3SB6SO5H4YBQ5UTv-cj5gJHGhDSI7N_CDVtsMQ8G6okxJiD1dLZeJ2Opfu-RcDtkIsg3G7G9Wy6avu_KSX03dyGiQgsCwlxLu7poetviKX8ELyOCRaff12zQP71w_9dY0kvR8hDs-cHBmatxTmdQRHoM0vargsVc'
    When method get
    Then status 200
    * print response


  Scenario:  Get playback state
    Given url 'https://api.spotify.com/'
    Given path 'v1/me/player'
    Given header Authorization = ' Bearer BQCp3VbolJZzAph2U-zKeiyRSoasg3snQM1a2VEPHbvZrr60wSFHp2LCwBKoLo-hK3_T-Z6ZoGDRpoJBNO34dt79DC8NEpN499T3SB6SO5H4YBQ5UTv-cj5gJHGhDSI7N_CDVtsMQ8G6okxJiD1dLZeJ2Opfu-RcDtkIsg3G7G9Wy6avu_KSX03dyGiQgsCwlxLu7poetviKX8ELyOCRaff12zQP71w_9dY0kvR8hDs-cHBmatxTmdQRHoM0vargsVc'
    When method get
    Then status 200
    * print response


  Scenario:  Get Currently Playing Track
    Given url 'https://api.spotify.com/'
    Given path 'v1/me/player/currently-playing'
    Given header Authorization = ' Bearer BQCp3VbolJZzAph2U-zKeiyRSoasg3snQM1a2VEPHbvZrr60wSFHp2LCwBKoLo-hK3_T-Z6ZoGDRpoJBNO34dt79DC8NEpN499T3SB6SO5H4YBQ5UTv-cj5gJHGhDSI7N_CDVtsMQ8G6okxJiD1dLZeJ2Opfu-RcDtkIsg3G7G9Wy6avu_KSX03dyGiQgsCwlxLu7poetviKX8ELyOCRaff12zQP71w_9dY0kvR8hDs-cHBmatxTmdQRHoM0vargsVc'
    When method get
    Then status 200
    * print response


  Scenario:  Get Recently Played Tracks
    Given url 'https://api.spotify.com/'
    Given path 'v1/me/player/recently-played'
    Given header Authorization = 'Bearer +  AccessToken'
    When method get
    Then status 200
    * print response





