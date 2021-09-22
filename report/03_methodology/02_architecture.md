## Architecture

In this part of the report, the architecture of the application is described
in more detail.

### Architecture overview

Overall, the application is divided into two completely independent parts. On
one hand, there is the stand-alone client app, which contains the self-test
and a questionnaire. On the other hand, there is the server application that
gives an export functionality for the collected research data.

#### Stand-alone client application

The client app includes the self-test, which is supposed to give reliable data
about the test person several times a day after it has been carried out. The
*Psychomotor vigilance task* and *Spatial span task* are two tasks included in
the self-test. There is also a questionnaire which is supposed to record the
current condition of the subject at longer intervals. This happens via a
certain number of questions with four choices each. Notifications encourage
the user to open the app and take the self-test. The Default value for the notification Interval is three times a day. In
addition to that, the current mood and current activity of the test person is
saved before each self-test so that the data can also be interpreted
reliably. Last but not least, the client application offers a settings page
with options for client-server communication and to control this in a targeted
manner.

As the client application is written in *dart* with the *Flutter* framework
you can create multiple cross platform apps out of a single codebase [6].
This results in the client side not being limited to a single platform or
operating system and the source code not having to be extended for other
devices.

#### Server application

The server command line application playes the role of the data study control
and data collection component. The researcher can set up the config file there
for a study and export the collected data for further analysis.

Thus the server is a simple http server which listens for data-posts from the 
clients and on request supplies the clients also with the study config in which 
they are participating. To store the collected data from the clients the server 
saves the information in a SQLite-database.

### User, client and server communication

For the communication between the user, the client and the server, one can say
that the user only communicates with the client app. The client app then
forwards the data to the server if the user agrees to share them. The first
time the app is used the user needs to enter the study server URL so the app
can fetch a config file from the server. This file initializes the app with
all necessary information. Architecture designs like this offer the advantage
that the user does not necessarily have to rely on a stable internet
connection when carrying out the self-test or the questionnaire, and the data
can also be transmitted after a later session. At the same time, the low
level of data exchange also ensures that the user only receives relevant
information to save on his own device. Additionally, after every completed
self-test, the user is asked whether or not the data should be transmitted to
the server. In figure 1 you can see the communication between user, client
and server in detail.

![Communication between user, client and server](../diagrams/implementation/sq_user_client_server.jpg "Communication between user, client and server")

