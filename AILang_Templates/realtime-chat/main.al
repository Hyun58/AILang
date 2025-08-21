in auth from "back/api/auth"
in chat from "back/socket/chat"
in url from "front/router/url"

start auth
start chat
startApp url into "#app"
