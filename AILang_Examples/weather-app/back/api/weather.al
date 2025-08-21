api weather
    get "/weather/:city"
        city = need.city
        
        // 실제로는 외부 날씨 API 호출
        weatherData = object
            city: city
            temperature: 22
            description: "맑음"
            humidity: 65
            windSpeed: 3.2
            icon: "sunny"
        end
        
        return
            weather: weatherData
        end
    end
    
    get "/forecast/:city"
        city = need.city
        
        forecast = list
            object
                date: "2024-01-01"
                temp: 22
                desc: "맑음"
                icon: "sunny"
            end
            object
                date: "2024-01-02"
                temp: 18
                desc: "흐림"
                icon: "cloudy"
            end
            object
                date: "2024-01-03"
                temp: 15
                desc: "비"
                icon: "rainy"
            end
            object
                date: "2024-01-04"
                temp: 20
                desc: "맑음"
                icon: "sunny"
            end
            object
                date: "2024-01-05"
                temp: 25
                desc: "맑음"
                icon: "sunny"
            end
        end
        
        return
            city: city
            forecast: forecast
        end
    end
end

out weather
