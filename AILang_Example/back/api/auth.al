api auth
    post "/login"
        username = need.username
        password = need.password

        if username == "admin" and password == "1234"
            return
                token: "abc123"
            end
        else
            return
                error: "Invalid credentials"
            end
        end
    end
end

out auth