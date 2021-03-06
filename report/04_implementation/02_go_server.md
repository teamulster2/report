## Go server

*Golang* is an open source programming language designed by Google developers in 2009[11].
Because it was developed for distributed systems, it's simplicity and readability
it is a perfect match for the programming language choice on the server side of the application.
Additionailly there is an advanced information structure for the language, like *Go by 
Example*[12] and *The Go Playground*[13] due to the open source character and community support.
Unfortunately the Go tooling appears to be not very verbose and intuitive.
We faced this circumstance by creating an extensive Makefile to work with.

The *GORM*[14] library supported the implementation of the server side database with a 
full-featured object-relational mapping. For that reason, model creation as well as database 
interaction is easy and developer-friendly, although the error handling was not straightforward 
at every point.

The *Cobra*[15] framework was used to provide a powerful and user-friendly command line 
interface for the server. Cobra is built on a structure of commands, arguments & flags.
As result, the server can be started with the command *./sotiserver run*. Default flags 
for ip address, port, database file path and configuration file path are set and can be 
exchanged or provided within the command.
