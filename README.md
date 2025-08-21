# AILang

**The Next Human-Friendly Programming Language**
*Combining the best of Python, TypeScript, and Rust*

AILang is designed for **coding beginners** and **AI collaboration**, merging the simplicity of Python, type safety of TypeScript, and memory safety concepts of Rust into a readable, English-like syntax.

---

## 🎯 Core Philosophy

- **Beginner-First**: Every syntax element reads like English
- **AI-Friendly**: Consistent patterns for easy AI code generation  
- **Three Language Fusion**: Best practices from Python + TypeScript + Rust
- **Production-Ready**: Real-world application development support

## 🌟 Key Features

### **🐍 Python's Simplicity**
- Natural language-like syntax (`whatis` instead of `function`)
- Step-by-step processing (step1, step2, step3)
- Clear intent expression

### **⚡ TypeScript's Safety**  
- Optional type annotations (`String`, `Number`, `Boolean`)
- Explicit error handling (`success` / `error` returns)
- Null safety (`String?` for optionals)

### **⚙️ Rust's Reliability**
- Memory safety through ownership concepts (`mutable`)
- Pattern matching (`match...when` statements)
- Safe error propagation

### **🤖 AI Collaboration**
- Completely consistent syntax patterns
- Predictable code structure for AI generation
- Human-readable AI-generated code

---

## 🚀 Getting Started

### 1. Install the CLI

```bash
npm install -g ailang-cli
```

### 2. Create a New Project

```bash
# Choose from beginner-friendly templates
al setup my-project --template basic     # Simple counter app
al setup my-blog --template blog         # Blog with CRUD
al setup my-shop --template ecommerce    # Shopping cart
al setup my-chat --template chat         # Real-time chat

cd my-project
al test  # Start development server with hot reload
```

### 3. Your First AILang Code

```ailang
// Clean, readable syntax that beginners love
component HelloWorld
    name message = "Welcome to AILang!"
    name count = 0
    
    whatis increment()
        count = count + 1
    end
    
    show()
        imagine "A welcome card with a counter button that shows: " + message + " (clicked " + count + " times)"
    end
end
```

## 💡 Why AILang?

### **For Beginners**
```ailang
// Instead of confusing syntax...
function getUserData(id, callback) {
  fetch(`/api/users/${id}`)
    .then(response => response.json())
    .then(data => callback(null, data))
    .catch(error => callback(error, null));
}

// AILang reads like English!
whatis getUserData(id)
    result = fetch("/api/users/" + id)
    
    if result.success
        return success
            data: result.user
        end
    else
        return error
            message: "Could not fetch user data"
        end
    end
end
```

### **For AI Collaboration**
- Every function follows `whatis...end` pattern
- All objects use `object...end` structure  
- Consistent error handling with `success/error`
- AI can predict and generate perfect AILang code

### **Three Languages, One Syntax**
- **Python's clarity**: Step-by-step logic, readable names
- **TypeScript's safety**: Optional typing, null checks
- **Rust's reliability**: Ownership concepts, pattern matching

## 🤝 Contributing

We welcome PRs, issues, and suggestions!
Help us create the most beginner-friendly yet powerful programming language.

## 📜 License

This project is licensed under the MIT License.

## ⚡ Quick Start

```bash
npm install -g ailang-cli
al setup my-first-project
cd my-first-project
al test
```
