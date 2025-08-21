api blog
    get "/posts"
        return
            posts: list
                object
                    id: 1
                    title: "AILang으로 블로그 만들기"
                    content: "AILang은 정말 쉬운 언어입니다!"
                    author: "admin"
                    date: "2024-01-01"
                end
                object
                    id: 2
                    title: "자연어로 UI 만들기"
                    content: "imagine 키워드로 UI를 자연어로 설명할 수 있어요"
                    author: "admin"
                    date: "2024-01-02"
                end
            end
        end
    end
    
    post "/posts"
        title = need.title
        content = need.content
        author = need.author
        
        return
            status: "created"
            post: object
                id: 3
                title: title
                content: content
                author: author
                date: "2024-01-03"
            end
        end
    end
    
    get "/posts/:id"
        id = need.id
        
        return
            post: object
                id: id
                title: "샘플 포스트"
                content: "이것은 샘플 포스트입니다."
                author: "admin"
                date: "2024-01-01"
            end
        end
    end
end

out blog
