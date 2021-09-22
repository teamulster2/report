## Client server communication

For the communication protocol between client and server we had a closer look at three posibilities.
The first one was gRPC in combination with the proto specification as data format. This solution 
provides the benefit of having the same data structure on both sides by design. But it comes with 
the downside of disproportionate overhead for our usecase because it offers a lot more features than 
needed. For that reasons it didn't seem suitable for us.
On the other hand, we dropped a simple plain tcp approach, that would have confronted us with very 
basic communication issues, like the transmission of the message's length information.
Finally we decided to use the protocol *HTTP* with transmitting a *JSON* body. This solution is simple, easily expandable, widely used 
and not overpowered for the specific use case at hand.
