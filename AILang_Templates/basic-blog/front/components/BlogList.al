component BlogList
    name posts = []
    
    whatis loadPosts()
        posts = fetch("/posts")
    end
    
    whatis onMount()
        loadPosts()
    end

    show()
        imagine "블로그 포스트 목록을 카드 형태로 보여주는 페이지. 각 카드에는 제목, 내용 미리보기, 작성자, 날짜가 표시되고, 클릭하면 상세 페이지로 이동한다."
    end
end

out BlogList
