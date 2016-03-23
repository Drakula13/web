def wsgi_application(environ, start_response):
	status = '200 OK'
	headers = [('Content-Type', 'text/plain')]
	start_response(status, headers)
	return [environ['QUERY_STRING'].replace('&', '\n')]