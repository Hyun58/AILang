# 🎯 AILang 템플릿 모음

**초보자도 쉽게 시작하는 AILang 프로젝트 템플릿**

Python의 간결함 + TypeScript의 안전성 + Rust의 신뢰성을 한 번에!

## 📋 사용 가능한 템플릿

### 🏠 **basic** - 기본 템플릿
**초보자 첫 프로젝트로 완벽!** 간단한 홈페이지와 카운터
- ✅ 읽기 쉬운 문법 체험
- ✅ 컴포넌트 기본 구조 학습
- ✅ 상태 관리 기초

```bash
al setup my-project --template basic
```

### 📝 **blog** - 블로그 템플릿  
**CRUD 기초를 배우기 좋은** 완전한 블로그 시스템
- ✅ **Python 스타일**: 명확한 단계별 로직
- ✅ **TypeScript 스타일**: 타입 안전한 데이터 처리
- ✅ **Rust 스타일**: 안전한 에러 처리

```bash
al setup my-blog --template blog
```
**학습 포인트:**
- API와 프론트엔드 연동
- 데이터 검증 및 에러 처리
- 컴포넌트 간 상태 전달

### 🛒 **ecommerce** - 쇼핑몰 템플릿
**실전 프로젝트 수준의** 전자상거래 애플리케이션
- ✅ **복잡한 상태 관리**: 장바구니, 주문 처리
- ✅ **데이터 필터링**: Python 스타일 체이닝
- ✅ **타입 안전성**: 상품 데이터 구조화

```bash
al setup my-shop --template ecommerce
```
**고급 개념:**
- 복잡한 객체 구조 관리
- 비즈니스 로직 구현
- 실시간 상태 동기화

### 💬 **chat** - 실시간 채팅 템플릿
**고급 개발자를 위한** 실시간 통신 시스템
- ✅ **Rust 스타일**: 안전한 메모리 관리 개념
- ✅ **비동기 처리**: 실시간 데이터 흐름
- ✅ **이벤트 처리**: 소켓 생명주기 관리

```bash
al setup my-chat --template chat
```
**전문 기술:**
- WebSocket 프로토콜 이해
- 실시간 상태 동기화
- 이벤트 기반 아키텍처

## 🚀 사용법

### 1. 프로젝트 생성
```bash
# 기본 템플릿
al setup my-project

# 특정 템플릿 사용
al setup my-project --template blog
```

### 2. 개발 서버 시작
```bash
cd my-project
al test
```

### 3. 프로덕션 빌드
```bash
al build
```

### 4. 배포
```bash
al deploy
```

## 📚 추가 학습 예제

`AILang_Examples/` 폴더에서 더 많은 실습 예제를 확인하세요:

- **todo-app** - **입문자 추천**: CRUD 기초 완전 정복
- **weather-app** - **API 연동**: 외부 서비스와 데이터 통신

## 🎓 학습 로드맵

### **1단계: 기초 문법** (basic 템플릿)
- `whatis` 함수 정의 익히기
- `object...end` 데이터 구조 이해
- `imagine` UI 설명 방식 체험

### **2단계: 실전 개발** (blog 템플릿)  
- API와 프론트엔드 연동
- `success/error` 에러 처리 패턴
- 단계별 데이터 처리 (step1, step2...)

### **3단계: 고급 기능** (ecommerce 템플릿)
- 복잡한 상태 관리
- `mutable` 소유권 개념
- `match...when` 패턴 매칭

### **4단계: 전문 기술** (chat 템플릿)
- 실시간 통신
- 비동기 처리 (`async whatis`)
- 이벤트 기반 프로그래밍

## 🛠️ CLI 명령어

- `al list` - 사용 가능한 템플릿 목록
- `al help` - 상세한 사용법 안내
- `al test` - 개발 서버 시작 (실시간 리로딩)
- `al build` - 프로덕션 빌드
- `al deploy` - 배포

## 📝 템플릿 구조

모든 템플릿은 다음과 같은 구조를 따릅니다:

```
my-project/
├── main.al              # 진입점
├── package.json         # 프로젝트 설정
├── back/               # 백엔드 코드
│   ├── api/           # REST API
│   └── socket/        # 웹소켓 (필요시)
└── front/             # 프론트엔드 코드
    ├── components/    # UI 컴포넌트
    └── router/        # 라우팅
```

## 🤝 기여하기

새로운 템플릿 아이디어가 있으시면 언제든지 제안해주세요!
