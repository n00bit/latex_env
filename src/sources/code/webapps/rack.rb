req = Rack::Request.new(env)
req.post?
req.params["data"]

response = Rack::Response.new
response.header['Content-Type'] = 'text/html'
response.write view
response.finish