// AILang - 입문자 친화적이면서 세 언어 장점 융합

// === Python의 간결함 + 명확한 의도 표현 ===
name username = "홍길동"
name age = 30  
name isActive = true

// === TypeScript의 타입 안전성 (명시적으로) ===
name user = object
    name: String = "홍길동"
    age: Number = 30
    email: String? = null  // 옵셔널 타입
    createdAt: Date = now()
end

// === Rust의 에러 처리 (Result 타입) ===
whatis getUserSafely(id)
    result = fetch("/users/" + id)
    
    if result.success
        return success
            data: result.user
        end
    else
        return error
            message: "사용자를 찾을 수 없습니다"
            code: 404
        end
    end
end

// === Python의 표현력 (체이닝을 명확하게) ===
whatis processUserList(users)
    step1 = users.filter(user => user.isActive == true)
    step2 = step1.map(user => user.name)
    step3 = step2.sort()
    
    return step3
end

// === TypeScript의 제네릭 (입문자가 이해하기 쉽게) ===
whatis createList(itemType)
    name items = empty list of itemType
    
    whatis add(item)
        if item.type == itemType
            items.push(item)
            return success
                message: "아이템이 추가되었습니다"
            end
        else
            return error
                message: "타입이 맞지 않습니다"
            end
        end
    end
    
    whatis getAll()
        return items
    end
    
    return object
        add: add
        getAll: getAll
    end
end

// === Rust의 소유권 개념 (명시적으로) ===
name userList = mutable list
    object
        name: "사용자1"
        email: "user1@example.com"
    end
    object
        name: "사용자2" 
        email: "user2@example.com"
    end
end

whatis transferOwnership(fromList, toList, userId)
    user = fromList.findAndRemove(u => u.id == userId)
    
    if user exists
        toList.add(user)
        return success
            message: "사용자가 이동되었습니다"
        end
    else
        return error
            message: "사용자를 찾을 수 없습니다"
        end
    end
end

// === 비동기 처리 (명확한 단계) ===
async whatis loadUserData(userId)
    name loadingState = true
    name errorState = null
    name userData = null
    
    try
        step1 = await fetch("/users/" + userId)
        step2 = await validateUser(step1.data)
        step3 = await enrichUserData(step2)
        
        userData = step3
        loadingState = false
        
        return success
            data: userData
        end
        
    catch errorInfo
        errorState = errorInfo.message
        loadingState = false
        
        return error
            message: errorState
        end
    end
end

// === 컴포넌트 (React 스타일이지만 명확하게) ===
component UserProfile
    // 상태 정의 (TypeScript 타입 안전성)
    name user = object
        name: String = ""
        email: String = ""
        avatar: String? = null
    end
    
    name isLoading = Boolean = false
    name errorMessage = String? = null
    
    // Python의 명확한 함수 정의
    whatis loadUserData()
        isLoading = true
        errorMessage = null
        
        result = await getUserSafely(userId)
        
        if result.type == "success"
            user = result.data
            isLoading = false
        else
            errorMessage = result.message
            isLoading = false
        end
    end
    
    // 생명주기 (명확한 이름)
    whatis onComponentMount()
        loadUserData()
    end
    
    // Rust 패턴 매칭 (명시적으로)
    whatis renderContent()
        match currentState
            when "loading"
                return imagine "로딩 중... 스피너가 돌고 있습니다"
            when "error"
                return imagine "에러 메시지: " + errorMessage + "와 재시도 버튼"
            when "success"
                return imagine "사용자 프로필 카드: 이름, 이메일, 아바타 이미지"
            when "empty"
                return imagine "사용자 정보가 없습니다 메시지"
        end
    end
    
    show()
        currentState = determineState()
        content = renderContent()
        return content
    end
    
    whatis determineState()
        if isLoading
            return "loading"
        else if errorMessage exists
            return "error"
        else if user.name != ""
            return "success"
        else
            return "empty"
        end
    end
end

// === API 정의 (Express + FastAPI 스타일이지만 명확하게) ===
api UserAPI
    // 모든 사용자 조회
    get "/users"
        allUsers = database.users.findAll()
        
        return success
            data: allUsers
            count: allUsers.length
            message: "사용자 목록을 성공적으로 가져왔습니다"
        end
    end
    
    // 사용자 생성 (유효성 검사 포함)
    post "/users"
        // 입력 데이터 검증 (TypeScript 스타일)
        requiredFields = list "name" "email" end
        
        validation = validateRequiredFields(request.body, requiredFields)
        
        if validation.isValid == false
            return error
                message: "필수 필드가 누락되었습니다"
                missingFields: validation.missingFields
            end
        end
        
        // 이메일 중복 검사
        existingUser = database.users.findByEmail(request.body.email)
        
        if existingUser exists
            return error
                message: "이미 존재하는 이메일입니다"
                field: "email"
            end
        end
        
        // 새 사용자 생성
        newUser = object
            id: generateUniqueId()
            name: request.body.name
            email: request.body.email
            createdAt: getCurrentTimestamp()
            isActive: true
        end
        
        savedUser = database.users.create(newUser)
        
        return success
            data: savedUser
            message: "사용자가 성공적으로 생성되었습니다"
        end
    end
    
    // 인증 미들웨어 (명확한 단계)
    middleware requireAuthentication
        authHeader = request.headers.authorization
        
        if authHeader is empty
            return error
                message: "인증 토큰이 필요합니다"
                statusCode: 401
            end
        end
        
        token = extractTokenFromHeader(authHeader)
        tokenValidation = verifyToken(token)
        
        if tokenValidation.isValid == false
            return error
                message: "유효하지 않은 토큰입니다"
                statusCode: 401
            end
        end
        
        request.currentUser = tokenValidation.user
        continue
    end
end

// === 에러 처리 (Rust 스타일이지만 입문자 친화적) ===
whatis safeProcessUser(userData)
    // 단계별 검증
    step1 = validateUserAge(userData.age)
    if step1.type == "error"
        return step1
    end
    
    step2 = validateUserEmail(userData.email)
    if step2.type == "error"
        return step2
    end
    
    step3 = processUserData(userData)
    if step3.type == "error"
        return step3
    end
    
    return success
        data: step3.result
        message: "사용자 처리가 완료되었습니다"
    end
end

// 모듈 내보내기
out UserAPI
out UserProfile
out safeProcessUser
