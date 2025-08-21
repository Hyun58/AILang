component BlogDetail
    name post = empty object
    name postId = route.params.id
    
    whatis loadPost()
        post = fetch("/posts/" + postId)
    end
    
    whatis onMount()
        loadPost()
    end

    show()
        imagine "블로그 포스트 상세 페이지. 큰 제목과 본문 내용, 작성자 정보, 작성 날짜를 보기 좋게 표시한다. 뒤로가기 버튼도 포함한다."
    end
end

out BlogDetail
