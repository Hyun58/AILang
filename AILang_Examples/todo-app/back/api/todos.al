api todos
    name todoList = list
        object
            id: 1
            text: "AILang 문법 익히기"
            completed: false
        end
        object
            id: 2
            text: "첫 번째 프로젝트 만들기"
            completed: true
        end
        object
            id: 3
            text: "imagine으로 UI 디자인하기"
            completed: false
        end
    end
    
    get "/todos"
        return
            todos: todoList
        end
    end
    
    post "/todos"
        text = need.text
        newTodo = object
            id: todoList.length + 1
            text: text
            completed: false
        end
        
        todoList.push(newTodo)
        
        return
            status: "created"
            todo: newTodo
        end
    end
    
    put "/todos/:id"
        id = need.id
        todo = todoList.find(t => t.id == id)
        
        if todo
            todo.completed = need.completed
            return
                status: "updated"
                todo: todo
            end
        else
            return
                error: "Todo not found"
            end
        end
    end
    
    delete "/todos/:id"
        id = need.id
        todoList = todoList.filter(t => t.id != id)
        
        return
            status: "deleted"
        end
    end
end

out todos
