component Cart
    name cartItems = []
    name totalPrice = 0
    
    whatis addToCart(product)
        existingItem = cartItems.find(item => item.id == product.id)
        
        if existingItem
            existingItem.quantity = existingItem.quantity + 1
        else
            newItem = object
                id: product.id
                name: product.name
                price: product.price
                quantity: 1
            end
            cartItems.push(newItem)
        end
        
        calculateTotal()
    end
    
    whatis removeFromCart(productId)
        cartItems = cartItems.filter(item => item.id != productId)
        calculateTotal()
    end
    
    whatis calculateTotal()
        totalPrice = cartItems.reduce((sum, item) => sum + (item.price * item.quantity), 0)
    end
    
    whatis checkout()
        order = post "/orders" with
            items: cartItems
            total: totalPrice
        end
        
        if order.status == "success"
            cartItems = []
            totalPrice = 0
            alert("주문이 완료되었습니다!")
        end
    end

    show()
        imagine "장바구니 페이지. 담긴 상품들이 목록으로 표시되고, 각 항목마다 수량 조절 버튼과 삭제 버튼이 있다. 하단에 총 금액과 주문하기 버튼이 있다."
    end
end

out Cart
