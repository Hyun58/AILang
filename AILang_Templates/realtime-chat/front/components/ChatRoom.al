component ChatRoom
    name messages = []
    name users = []
    name currentMessage = ""
    name username = "Guest"
    name socket = null
    
    whatis connectSocket()
        socket = connect("ws://localhost:3000")
        
        socket.on("welcome") (data)
            systemMessage = object
                type: "system"
                message: data.message
            end
            messages.push(systemMessage)
            users = data.users
        end
        
        socket.on("new_message") (data)
            messages.push(data.message)
        end
        
        socket.on("user_joined") (data)
            joinMessage = object
                type: "system"
                message: data.username + "님이 입장했습니다."
            end
            messages.push(joinMessage)
        end
        
        socket.on("user_left") (data)
            leaveMessage = object
                type: "system"
                message: data.username + "님이 퇴장했습니다."
            end
            messages.push(leaveMessage)
        end
        
        socket.emit "join" with
            username: username
        end
    end
    
    whatis sendMessage()
        if currentMessage.trim() != ""
            socket.emit "message" with
                username: username
                message: currentMessage
            end
            currentMessage = ""
        end
    end
    
    whatis onMount()
        username = prompt("사용할 닉네임을 입력하세요:")
        connectSocket()
    end

    show()
        imagine "실시간 채팅방 인터페이스. 왼쪽에는 접속 중인 사용자 목록, 오른쪽에는 채팅 메시지들이 표시된다. 하단에 메시지 입력창과 전송 버튼이 있다."
    end
end

out ChatRoom
