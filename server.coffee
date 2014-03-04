# require
vertx = require("vertx")
console = require("vertx/console")

# conf
port = 7777

# functions
log = console.log

rm = new vertx.RouteMatcher()

# match all requests
rm.noMatch (req) ->
	req.dataHandler (data) ->
		
		log '-- Received ' + req.method() + ' ' + req.uri() + ' ' + req.remoteAddress() + ' ('+ data.length() + ' bytes) --'

		# dump headers
		req.headers().forEach (key, value) ->
			log "Header | " + key + ": " + value

		log "Method | " + req.method()
		log "URI    | " + req.uri()
		log "Path   | " + req.path()
		log "Query  | " + req.query()
		log "Length | " + data.length() + ' bytes'
		log "Datas  | " + data
		log "-- End --"

	# send HTTP 200
	req.response.end()

vertx.createHttpServer().requestHandler(rm).listen port

log "Listening on port " + port