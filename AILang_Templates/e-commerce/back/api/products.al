api products
    get "/products"
        return
            products: list
                object
                    id: 1
                    name: "AILang 티셔츠"
                    price: 25000
                    description: "편안한 AILang 로고 티셔츠"
                    image: "/images/tshirt.jpg"
                    category: "의류"
                end
                object
                    id: 2
                    name: "프로그래밍 머그컵"
                    price: 15000
                    description: "코딩할 때 필수 아이템"
                    image: "/images/mug.jpg"
                    category: "생활용품"
                end
                object
                    id: 3
                    name: "개발자 노트북 스티커"
                    price: 5000
                    description: "귀여운 개발 관련 스티커 세트"
                    image: "/images/stickers.jpg"
                    category: "액세서리"
                end
            end
        end
    end
    
    get "/products/:id"
        id = need.id
        
        return
            product: object
                id: id
                name: "샘플 상품"
                price: 10000
                description: "샘플 상품 설명"
                image: "/images/sample.jpg"
                category: "기타"
            end
        end
    end
    
    get "/categories"
        return
            categories: list
                "의류"
                "생활용품"
                "액세서리"
                "도서"
            end
        end
    end
end

out products
