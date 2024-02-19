open Dream

let handleHello (_:request) = html Hello.En.v


let handleBar (_:request) = html "bar"


let () = run (router [ 
  get "/hello" handleHello;
  get "/bar" handleBar
])



