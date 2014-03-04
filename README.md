HTTP Trace (Vert).x
===================

Vert.x HTTP trace tool

    vertx run server.coffee
    
# Sample

	-- Received PUT /api/persons?param1=value1 /0:0:0:0:0:0:0:1:59783 (57 bytes) --
	Header | Accept: application/json
	Header | Accept-Encoding: gzip,deflate,sdch
	Header | Accept-Language: fr-FR,fr;q=0.8,en-US;q=0.6,en;q=0.4
	Header | Authorization: Basic ************************
	Header | Cache-Control: no-cache
	Header | Connection: keep-alive
	Header | Content-Length: 57
	Header | Content-Type: text/plain;charset=UTF-8
	Header | Cookie: SPRING_SECURITY_REMEMBER_ME_COOKIE=************************
	Header | Host: localhost:7777
	Header | Origin: chrome-extension://fdmmgilgnpjigdojojpjoooidkmcomcm
	Header | User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.146 Safari/537.36
	Method | PUT
	URI    | /api/persons?param1=value1
	Path   | /api/persons
	Query  | param1=value1
	Length | 57 bytes
	Datas  | "person": { 
	  "firstname": "john",
	  "lastname": "doe"
	}
	-- End --

