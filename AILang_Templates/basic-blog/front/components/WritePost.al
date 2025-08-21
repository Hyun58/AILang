component WritePost
    name title = ""
    name content = ""
    name author = "guest"
    
    whatis submitPost()
        result = post "/posts" with
            title: title
            content: content
            author: author
        end
        
        if result.status == "created"
            navigate("/")
        end
    end

    show()
        imagine "글 작성 폼. 제목 입력란, 내용 입력란(큰 텍스트 에리어), 작성자 입력란이 있고, 하단에 '작성하기'와 '취소' 버튼이 있다."
    end
end

out WritePost
