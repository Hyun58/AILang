component ProductList
    name products = []
    name categories = []
    name selectedCategory = "전체"
    
    whatis loadProducts()
        products = fetch("/products")
    end
    
    whatis loadCategories()
        categories = fetch("/categories")
    end
    
    whatis filterByCategory(category)
        selectedCategory = category
        if category == "전체"
            loadProducts()
        else
            products = products.filter(p => p.category == category)
        end
    end
    
    whatis onMount()
        loadProducts()
        loadCategories()
    end

    show()
        imagine "상품 목록 페이지. 상단에 카테고리 필터 버튼들이 있고, 그 아래에 상품들이 그리드 형태로 배치된다. 각 상품 카드에는 이미지, 이름, 가격, 간단한 설명이 표시된다."
    end
end

out ProductList
