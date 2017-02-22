require 'rack'


# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPRequest.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPResponse.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/Cookie.html

# Rack::Server.start(
#   app: Proc.new do |env|
#     [ '200', { 'Content-Type' => 'text/html' }, [ 'hello world' ] ]
#   end
#                   )


app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/plain'
  res.write("Hello World!")
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
