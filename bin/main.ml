open Dream

let handle_hello (_ : request) = html Hello.En.v
let handle_bar (_ : request) = html "bar"
let () = run (router [ get "/hello" handle_hello; get "/bar" handle_bar ])
