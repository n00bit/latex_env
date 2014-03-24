def GET
  if @env["rack.request.query_string"] == query_string
    @env["rack.request.query_hash"]
  else
    p = parse_query(query_string)
    @env["rack.request.query_string"] = query_string
    @env["rack.request.query_hash"]   = p
  end
end