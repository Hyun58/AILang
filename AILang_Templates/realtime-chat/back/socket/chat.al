socket chat
    name users = []
    name messages = []
    
    on "join"
        username = data.username
        newUser = object
            id: socket.id
            username: username
        end
        users.push(newUser)
        
        broadcast "user_joined" to all
            username: username
            userCount: users.length
        end
        
        send "welcome" to socket
            message: username + "님, 채팅방에 오신 것을 환영합니다!"
            users: users
        end
    end
    
    on "message"
        username = data.username
        message = data.message
        timestamp = now()
        
        newMessage = object
            id: generateId()
            username: username
            message: message
            timestamp: timestamp
        end
        
        messages.push(newMessage)
        
        broadcast "new_message" to all
            message: newMessage
        end
    end
    
    on "disconnect"
        user = users.find(u => u.id == socket.id)
        if user
            users = users.filter(u => u.id != socket.id)
            
            broadcast "user_left" to all
                username: user.username
                userCount: users.length
            end
        end
    end
end

out chat
