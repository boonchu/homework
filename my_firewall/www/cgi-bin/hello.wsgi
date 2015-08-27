#! /usr/bin/env python

def application(environ, start_response):
    """Simplest possible application object"""
    status = '200 OK'
    response_headers = [('Content-type', 'text/html'), ('X-foo', 'bar')]
    start_response(status, response_headers)
    return ['Hello world!<br><img src="/images/wsgi-snake.jpg">\n']
