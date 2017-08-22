# **9.1**

**Release 0: **

* What are some common HTTP status codes?

1xx: Informational  
2xx: Success  
3xx: Redirection  
4xx: Client Error  
5xx: Server Error  

200 OK - request successful
400 Bad Request - HTTP request sent as invalid syntax  
401 Unauthorized - unauthorized user attempting to access protected resource (user must provide credentials)  
403 Forbidden - user makes valid request but server is refusing request because no user permissions  
404 Not Found - user can communicate with server but can't locate requested file/resource  
503 Service Unavailable - server is overloaded/under maintenance, but should be available later  
504 Gateway Timeout - server is not receiving response from backend servers within a period of time (poor connection)

* What's the difference between GET and POST requests?  
GET requests data and POST submits data. GET has length restriction, can be cached, bookmarked, and be saved in browser history, but POST is the opposite (POST is not cached, can't be bookmarked, no data length restriction, doesn't save in browser history). Therefore, POST is used for sending especially sensitive data.

* What is a cookie, how does it relate to HTTP requests?  
Server will also send and receive files known as cookies which are files often stored in the user's browser. Cookies can contain any information that the server-side deems necessary, even sensitive data.
