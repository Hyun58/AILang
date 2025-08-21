# 🤖 AI를 위한 AILang 생성 가이드

## 🎯 목표  
**초보자가 읽기 쉽고, AI가 생성하기 쉬운** 완벽한 조화

### 세 언어의 장점 융합
- **🐍 Python처럼**: 단계별로 명확한 로직 (`step1`, `step2`, `step3`)
- **⚡ TypeScript처럼**: 타입 안전한 데이터 구조 (`String`, `Number`, `Boolean`)  
- **⚙️ Rust처럼**: 안전한 에러 처리 (`success/error`, `match...when`)

### AI 생성 우선순위
1. **가독성 최우선**: 초보자가 이해할 수 있는 코드
2. **패턴 일관성**: 동일한 구조는 항상 동일한 방식
3. **명확한 의도**: 코드만 봐도 무엇을 하는지 명확

## 📐 핵심 원칙

### 1. **완전한 문법 일관성**
모든 구조는 `keyword ~ end` 패턴을 따름

### 2. **예측 가능한 키워드**
AI가 문맥에 따라 올바른 키워드를 선택할 수 있도록 명확한 역할 정의

### 3. **중첩 구조의 일관성**
어떤 깊이든 동일한 들여쓰기와 블록 구조 유지

## 🔤 표준화된 키워드 체계

### **모듈 시스템**
```ailang
// 가져오기 (항상 맨 위)
in ModuleName from "path"

// 내보내기 (항상 맨 아래)
out ModuleName
```

### **API 정의**
```ailang
api apiName
    method "endpoint"
        // 로직
        return
            key: value
        end
    end
end
```

### **컴포넌트 정의**
```ailang
component ComponentName
    name variableName = defaultValue
    
    whatis functionName()
        // 함수 로직
    end
    
    show()
        imagine "UI 설명"
    end
end
```

### **데이터 구조**
```ailang
// 객체
name data = object
    key: value
end

// 배열
name items = list
    item1
    item2
end

// 빈 구조
name emptyObj = empty object
name emptyList = empty list
```

### **제어 구조**
```ailang
// 조건문
if condition
    // 코드
else if condition2
    // 코드
else
    // 코드
end

// 반복문
for item in items
    // 코드
end

while condition
    // 코드
end
```

### **HTTP 요청**
```ailang
// GET
result = get "/endpoint"

// POST/PUT/DELETE with data
result = method "/endpoint" with
    key: value
end
```

## 🎨 AI 생성 패턴 예제

### **패턴 1: CRUD API**
```ailang
api resourceApi
    get "/resources"
        return
            data: resourceList
            count: resourceList.length
        end
    end
    
    post "/resources"
        newResource = object
            id: generateId()
            name: need.name
            createdAt: now()
        end
        
        resourceList.push(newResource)
        
        return
            status: "created"
            data: newResource
        end
    end
    
    put "/resources/:id"
        resource = resourceList.find(r => r.id == need.id)
        
        if resource
            resource.name = need.name
            resource.updatedAt = now()
            
            return
                status: "updated"
                data: resource
            end
        else
            return
                error: "Resource not found"
            end
        end
    end
    
    delete "/resources/:id"
        resourceList = resourceList.filter(r => r.id != need.id)
        
        return
            status: "deleted"
        end
    end
end

out resourceApi
```

### **패턴 2: 상태 관리 컴포넌트**
```ailang
component StateComponent
    name data = empty list
    name loading = false
    name error = null
    
    whatis loadData()
        loading = true
        error = null
        
        try
            data = fetch "/api/data"
            loading = false
        catch err
            error = err.message
            loading = false
        end
    end
    
    whatis onCreate()
        loadData()
    end
    
    show()
        if loading
            imagine "로딩 스피너"
        else if error
            imagine "에러 메시지: " + error
        else
            imagine "데이터 목록을 카드 형태로 표시"
        end
    end
end

out StateComponent
```

### **패턴 3: 폼 처리**
```ailang
component FormComponent
    name formData = object
        name: ""
        email: ""
        message: ""
    end
    name isSubmitting = false
    name errors = empty object
    
    whatis validateForm()
        errors = empty object
        
        if formData.name.trim() == ""
            errors.name = "이름을 입력해주세요"
        end
        
        if !isValidEmail(formData.email)
            errors.email = "올바른 이메일을 입력해주세요"
        end
        
        return Object.keys(errors).length == 0
    end
    
    whatis submitForm()
        if !validateForm()
            return
        end
        
        isSubmitting = true
        
        result = post "/api/submit" with
            name: formData.name
            email: formData.email
            message: formData.message
        end
        
        isSubmitting = false
        
        if result.status == "success"
            formData = object
                name: ""
                email: ""
                message: ""
            end
            alert("전송이 완료되었습니다!")
        else
            errors.submit = result.error
        end
    end
    
    show()
        imagine "폼 필드들과 전송 버튼이 있는 양식. 에러가 있으면 빨간색으로 표시"
    end
end

out FormComponent
```

## 🔍 AI 생성시 체크리스트

### **구조적 일관성**
- [ ] 모든 블록이 `keyword ~ end`로 닫혔는가?
- [ ] 들여쓰기가 일관되는가?
- [ ] `in`과 `out`이 올바른 위치에 있는가?

### **키워드 사용**
- [ ] API는 `api ~ end`로 감쌌는가?
- [ ] 컴포넌트는 `component ~ end`로 감쌌는가?
- [ ] 함수는 `whatis ~ end`로 정의했는가?
- [ ] 객체는 `object ~ end`로 생성했는가?

### **데이터 흐름**
- [ ] HTTP 요청에 적절한 `with ~ end` 사용했는가?
- [ ] 반환값이 명확한 구조인가?
- [ ] 에러 처리가 포함되어 있는가?

### **AI 친화적 네이밍**
- [ ] 변수명이 명확하고 예측 가능한가?
- [ ] 함수명이 동작을 명확히 표현하는가?
- [ ] 컴포넌트명이 역할을 나타내는가?

## 🚀 AI 생성 최적화 팁

1. **패턴 인식**: 비슷한 구조는 동일한 패턴으로 생성
2. **키워드 우선순위**: 문맥에 맞는 가장 명확한 키워드 선택
3. **에러 방지**: 닫히지 않은 블록, 잘못된 들여쓰기 방지
4. **가독성**: 사람이 읽기 쉬운 코드가 AI도 생성하기 쉬움
