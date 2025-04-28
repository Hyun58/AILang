api contact
    post "/contact"
        name = need.name
        email = need.email
        message = need.message

        return
            status: "received"
            name: name
        end
    end
end

out contact