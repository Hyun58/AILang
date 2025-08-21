api auth
    post "/login"
        username = need.username
        password = need.password

        if username == "admin" and password == "blog123"
            return
                token: "blog_token_abc"
                user: username
            end
        else
            return
                error: "잘못된 로그인 정보입니다"
            end
        end
    end
    
    post "/register"
        username = need.username
        email = need.email
        password = need.password
        
        return
            status: "registered"
            message: "회원가입이 완료되었습니다"
        end
    end
end

out auth
