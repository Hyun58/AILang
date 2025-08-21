# 📐 AILang 문법 일관성 규칙

## 🎯 목표
**초보자도 이해하기 쉽고, AI도 생성하기 쉬운** 완벽히 일관된 문법 체계

### 핵심 철학
- **Python의 명확성**: 영어처럼 읽히는 자연스러운 문법
- **TypeScript의 안전성**: 예측 가능한 타입과 에러 처리  
- **Rust의 신뢰성**: 안전한 메모리 관리 개념
- **AI 친화성**: 100% 예측 가능한 패턴

## 🔒 절대 규칙 (Absolute Rules)

### **1. 블록 구조 규칙**
```ailang
// ✅ 올바른 형태
keyword
    content
end

// ❌ 잘못된 형태 (괄호 사용 금지)
keyword { content }
keyword(content)
```

### **2. 키워드 위치 규칙**
```ailang
// ✅ 모듈 구조
in ModuleName from "path"    // 맨 위
// ... 코드 ...
out ModuleName               // 맨 아래

// ✅ API 구조
api apiName
    method "endpoint"
        // 로직
    end
end

// ✅ 컴포넌트 구조
component ComponentName
    // 상태 변수들
    // 함수들
    show()
        // 렌더링
    end
end
```

### **3. 데이터 구조 규칙**
```ailang
// ✅ 객체 생성
name data = object
    key: value
    nested: object
        innerKey: innerValue
    end
end

// ✅ 배열 생성
name items = list
    item1
    object
        key: value
    end
end

// ✅ 빈 구조
name emptyObj = empty object
name emptyList = empty list
```

### **4. HTTP 요청 규칙**
```ailang
// ✅ 데이터 없는 요청
result = get "/endpoint"
result = delete "/endpoint"

// ✅ 데이터 있는 요청
result = post "/endpoint" with
    key: value
    nested: object
        innerKey: innerValue
    end
end
```

## 🔄 표준화된 패턴

### **패턴 1: 변수 선언**
```ailang
// 기본값 있는 변수
name variableName = defaultValue

// 객체 변수
name objectVar = object
    property: value
end

// 배열 변수
name arrayVar = list
    item1
    item2
end

// 빈 변수
name emptyVar = empty object
name emptyList = empty list
```

### **패턴 2: 함수 정의**
```ailang
// 함수 정의 (항상 whatis 사용)
whatis functionName(param1, param2)
    // 로직
    return result
end

// 컴포넌트 내 생명주기
whatis onMount()
    // 마운트시 실행
end

whatis onCreate()
    // 생성시 실행
end
```

### **패턴 3: 조건문/반복문**
```ailang
// 조건문 (항상 end로 닫기)
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

### **패턴 4: 에러 처리**
```ailang
// try-catch 패턴
try
    // 위험한 코드
catch error
    // 에러 처리
end

// 조건부 에러 처리
if result.status == "error"
    return
        error: result.message
    end
end
```

## 🎨 컨텍스트별 표준 패턴

### **API 서버 패턴**
```ailang
api serviceName
    get "/endpoint"
        // 조회 로직
        return
            data: result
            status: "success"
        end
    end
    
    post "/endpoint"
        // 생성 로직
        newItem = object
            id: generateId()
            data: need.data
            createdAt: now()
        end
        
        return
            status: "created"
            data: newItem
        end
    end
end

out serviceName
```

### **프론트엔드 컴포넌트 패턴**
```ailang
component ComponentName
    // 상태 변수들 (name으로 시작)
    name data = empty list
    name loading = false
    name error = null
    
    // 함수들 (whatis로 정의)
    whatis loadData()
        loading = true
        data = fetch "/api/data"
        loading = false
    end
    
    // 생명주기
    whatis onMount()
        loadData()
    end
    
    // 렌더링 (항상 show() 사용)
    show()
        imagine "UI 설명"
    end
end

out ComponentName
```

### **데이터 처리 패턴**
```ailang
whatis processData(rawData)
    processedData = list
    
    for item in rawData
        processed = object
            id: item.id
            name: item.name
            formatted: formatValue(item.value)
        end
        
        processedData.push(processed)
    end
    
    return processedData
end
```

## 🤖 AI 생성 가이드라인

### **1. 키워드 선택 우선순위**
1. `api` - REST API 정의시
2. `component` - UI 컴포넌트시
3. `whatis` - 함수 정의시
4. `object` - 객체 생성시
5. `list` - 배열 생성시

### **2. 네이밍 컨벤션**
- **변수**: `name variableName`
- **함수**: `whatis functionName()`
- **컴포넌트**: `component ComponentName`
- **API**: `api serviceName`

### **3. 구조 순서**
1. 모듈 가져오기 (`in`)
2. 메인 코드 블록
3. 모듈 내보내기 (`out`)

### **4. 에러 방지 체크**
- 모든 블록이 `end`로 닫혔는지 확인
- 들여쓰기가 일관된지 확인
- 키워드 순서가 올바른지 확인

## 🎯 AI 친화성 검증

### **구조 검증**
```
✅ 블록 구조가 완전한가?
✅ 키워드가 올바른 순서인가?
✅ 들여쓰기가 일관된가?
✅ 모든 블록이 닫혔는가?
```

### **의미 검증**
```
✅ 변수명이 명확한가?
✅ 함수명이 동작을 나타내는가?
✅ 컴포넌트명이 역할을 나타내는가?
✅ API 엔드포인트가 RESTful한가?
```

이러한 규칙을 따르면 **모든 AI가 동일한 방식으로 AILang을 이해하고 생성**할 수 있습니다!
