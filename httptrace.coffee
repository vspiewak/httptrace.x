# require
vertx = require("vertx")
console = require("vertx/console")

# conf
port = 7777

# functions
log = console.log

# match all requests
rm = new vertx.RouteMatcher()
rm.noMatch (req) ->
	
	# dump headers
	req.headers().forEach (key, value) ->
		log "Header | " + key + ": " + value

	log "Method | " + req.method()
	log "URI    | " + req.uri()
	log "Path   | " + req.path()
	log "Query  | " + req.query()

	# dump body request
	req.dataHandler (data) ->
		log "Length | " + data.length() + ' bytes'	
		log "Datas  | " + data
		
	# send HTTP 200
	req.response.end()

vertx.createHttpServer().requestHandler(rm).listen port

log "Listening on port " + port