component TodoApp
    name todos = []
    name newTodo = ""
    name filter = "all"
    
    whatis loadTodos()
        todos = fetch("/todos")
    end
    
    whatis addTodo()
        if newTodo.trim() != ""
            result = post "/todos" with
                text: newTodo
            end
            if result.status == "created"
                todos.push(result.todo)
                newTodo = ""
            end
        end
    end
    
    whatis toggleTodo(id)
        todo = todos.find(t => t.id == id)
        if todo
            todo.completed = !todo.completed
            put "/todos/" + id with
                completed: todo.completed
            end
        end
    end
    
    whatis deleteTodo(id)
        result = delete("/todos/" + id)
        if result.status == "deleted"
            todos = todos.filter(t => t.id != id)
        end
    end
    
    whatis getFilteredTodos()
        if filter == "active"
            return todos.filter(t => !t.completed)
        else if filter == "completed"
            return todos.filter(t => t.completed)
        else
            return todos
        end
    end
    
    whatis onMount()
        loadTodos()
    end

    show()
        imagine "할 일 관리 앱. 상단에 새 할 일을 입력할 수 있는 입력창이 있고, 그 아래에 할 일 목록이 표시된다. 각 할 일은 체크박스, 텍스트, 삭제 버튼으로 구성된다. 하단에는 전체/진행중/완료됨 필터 버튼이 있다."
    end
end

out TodoApp
