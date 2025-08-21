component WeatherApp
    name currentWeather = null
    name forecast = []
    name city = "서울"
    name loading = false
    
    whatis searchWeather()
        loading = true
        currentWeather = fetch("/weather/" + city)
        forecast = fetch("/forecast/" + city).forecast
        loading = false
    end
    
    whatis onMount()
        searchWeather()
    end

    show()
        imagine "날씨 앱 인터페이스. 상단에 도시 검색 입력창이 있고, 그 아래에 현재 날씨 정보가 큰 카드로 표시된다 (온도, 날씨 설명, 습도, 풍속). 하단에는 5일간의 날씨 예보가 작은 카드들로 나열된다."
    end
end

out WeatherApp
