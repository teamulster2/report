## Client server communication

For the communication protocol between client and server we had a closer look at three posibilities.

The first one was gRPC in combination with the proto specifcation as data format. This solution provides the benefit of having the same data structur on both sides by design. But it comes with the downside of disproportionate overhead for our usecase because it offers a lot more features than needed. For that reasons it didn't seem suitable for us.

On the other hand, we dropped a simple plain tcp approach, for that would have confronted us with very basic communication issues, like the transmission of the message's lenght information.

Finally we decided to use http with json body. This solution is simple, easily expandable, widly used and not overpowered for the specific use caseat hand. 

