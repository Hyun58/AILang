in auth from "back/api/auth"
in products from "back/api/products"
in cart from "back/api/cart"
in orders from "back/api/orders"
in url from "front/router/url"

start auth
start products
start cart
start orders
startApp url into "#app"
