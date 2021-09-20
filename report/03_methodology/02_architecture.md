## Architecture

In this part of the report, the architecture of the application is described in more detail.

### Architecture overview

Overall, the application is divided into two completely independent part. 
On the one hand, there is the stand-alone client app, which contains the self-test and a questionnaire. 
On the other hand there is the server application that gives an export functionality with the user data.

#### Stand-alone client application

The client app includes the self-test, which is supposed to give reliable data about the test person several times a day after it has been carried out. 
The *Psychomotor vigilance task* and *Spatial span task* are two tasks included in the self-test. 
There is also a questionnaire, which is supposed to record the current condition of the subject at longer intervals. 
This happens via a certain number of questions with four choices each. 
There should also be a notification for the self-test, which asks the user up to three times a day to also carry out the test. 
In addition, the current mood and current activity of the test person is saved before each self-test so that the data can also be reliably interpreted. 
Last but not least, the client application also offers a settings page with options for client-server communication and to control this in a targeted manner.

As the client application is written in *dart* with the *Flutter* framework you can create multiple cross platform apps out of a single codebase [6]. 
This means that the client side is not limited to a single platform or operating system and the code does not have to be extended for other end devices.

#### Server application

// TODO

### User, client and server communication

For the communication between the user, the client an the server, one can say that the user only communicates with the client app. 
The client app then forwards the data to the server at a suitable time.
The first time the app is used it gets a config file from the server, which initially load the information for the user. 
This architecture has the advantage that the user does not necessarily have to rely on a stable internet connection when carrying out the self-test or the questionnaire, and the data can also be transmitted later. 
At the same time, the low level of data exchange also ensures that the user only receives relevant information to save on his own device. 
In addition, the user is always aked whether the data should really be transmitted to the server. 
In figure 1 you can see the communication between user, client and server in detail.

![Communication between user, client and server](../diagrams/implementation/sq_user_client_server.jpg "Communication between user, client and server")