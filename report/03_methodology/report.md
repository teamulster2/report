# Methodology

This section deals with the development process and how the project
topic was approached, as well as the decisions made in relation to the
programming languages and environments.

Furthermore, we deal with the architecture of the application, that is
divided into stand-alone client area and a server architecture. The data
exchange and export plays an important role here, which is also
discussed in this chapter and later in the implementation part of the
report.

## Project management

Overall, the project took place within five weeks and five participants
who worked full time on the project. The decisions in the area of
project management are described in more detail below.

### Agile project development with scrum

The project management method SCRUM in a simplified version was chosen
for the project. This had the advantage that, on the one hand,
programming was agile under certain rules, on the other hand some times
and some overhead were reduced.

The Daily Scrum Meeting was an important part of the daily routine,
which was occasionally expanded to talk about the current status and
follow up on the relevant issues. Due to the limited project time of
five weeks, it was decided against the use of sprints and the additional
overhead.

A retrospective meeting was also held once a week, which should contain
the current problems and suggestions for improvement, but also positive
aspects of the project. That helped the project flow and the
satisfaction of the participants.

### Open Source Software

The soTired project emerged as a university project in which all
participants decided to implement an open source solution. This means
that both, so the client application code and the server code are
publicly available under the license \* insert license here \*. This
means that everyone can view the code, edit it and use it for their own
purposes if it can still be made available as an open source solution.
This has the advantage that the study participants can see the code and
which data is used and stored. This ensures data security. In addition,
the code used here is made available to the science and can be further
developed. Since the study project is very limited in time, there are
some areas of the app that can be added and adapted later on. This can
increase the quality of the code in some way.

## Architecture

In this part of the report, the architecture of the application is
described in more detail.

### Architecture overview

Overall, the application is divided into two completely independent
part. On the one hand, there is the stand-alone client app, which
contains the self-test and a questionnaire. On the other hand there is
the server application that gives an export functionality with the user
data.

#### Stand-alone client application

The client app includes the self-test, which is supposed to give
reliable data about the test person several times a day after it has
been carried out. The *Psychomotor vigilance task* and *Spatial span
task* are two tasks included in the self-test. There is also a
questionnaire, which is supposed to record the current condition of the
subject at longer intervals. This happens via a certain number of
questions with four choices each. There should also be a notification
for the self-test, which asks the user up to three times a day to also
carry out the test. In addition, the current mood and current activity
of the test person is saved before each self-test so that the data can
also be reliably interpreted. Last but not least, the client application
also offers a settings page with options for client-server communication
and to control this in a targeted manner.

As the client application is written in *dart* with the *Flutter*
framework you can create multiple cross platform apps out of a single
codebase \[6\]. This means that the client side is not limited to a
single platform or operating system and the code does not have to be
extended for other end devices.

#### Server application

// TODO

### User, client and server communication

For the communication between the user, the client an the server, one
can say that the user only communicates with the client app. The client
app then forwards the data to the server at a suitable time. The first
time the app is used it gets a config file from the server, which
initially load the information for the user. This architecture has the
advantage that the user does not necessarily have to rely on a stable
internet connection when carrying out the self-test or the
questionnaire, and the data can also be transmitted later. At the same
time, the low level of data exchange also ensures that the user only
receives relevant information to save on his own device. In addition,
the user is always aked whether the data should really be transmitted to
the server. In figure 1 you can see the communication between user,
client and server in detail.

![Communication between user, client and
server](../diagrams/implementation/sq_user_client_server.jpg "Communication between user, client and server")

## Database management

The soTired application is known divided into two areas, the stand-alone
client side as well as the server side with options for evaluation and
export. In order to make both areas independent of each other and also
to ensure that the values are always available, even if there is no
network connection at a certain point of use, it was agreed to create
and manage an independet database on both sides.

### Client database

As described above, the client side is written with the helf of the
cross platform framework Flutter and the programming language Dart. Hive
describes itself as a 'Fast, Enjoyable & Secure NoSQL Database' \[5\].
That makes it easy to store database objects in boxes and access them
again. Hive in conjunction with Flutter also promises great support in
terms of use, as this has been specially adapted to it \[5\].

In addition, a NoSQL database was chosen because it is more flexible in
terms of the variety of data in the area of research results and the
speed required for storing such a large amount of data. Espically when
thinking of adding additional functionality like audio or video
recognition and using artificial intelligence to get information out of
that. This is particularly suitable for this, as the data is only saved
and not read out within the app. In this way, all data that is available
can be collected without loss and no information is lost through a rigid
relational form and can be sent to the server side.

### Server database

In contrast to this, a relational database is used on the server side in
order to be able to organize the results and export them later
evaluated, if necessary. We decided on the lightweight, relational
database SQlite that describes itself as an 'small, fast,
self-contained, hight-reliability, full-featured, SQL database engine.
This rather traditional, but well-known approach to storing large
amounts of data promises above all a very structured distribution on the
data, from wicht an export can later be made available via a .json file.

Overall, it can be said that the data structure on the server side looks
like described in Figure 2. Therefore the main focus is on the study
with the corresponding information and settings. The users assigned to a
respective study are also stored in a separate table with the associated
primary key for the study. This is where the assignment between user and
study takes place. Then there are two tables that contain the log
structure of the self test and the questionnaire. Inside the log tables
you have all the information that need to be exported afterwards. At the
same time, the questions of a specific study and the associated
questionnaire are saved together with the selectable answers so that
they can be accessed in the study.

![ER diagram](../diagrams/database/ER_diragramm.drawio.png "er-diagram")

## User interface

The user interface in the app should be kept as simple as possible in
order to be accessible to everyone. That means there is a start page
with the logo and four options. From there, the settings lead to a
subpage that provides certain functions for the client-server function.
The study URL can be selected here and data transfer can be ordered
(Figure 3). There is also the sub-item of audio detection, which,
however, has not yet been implemented due to time constraints and the
limitations of the project. The two points above are the self-test and
the questionnaire, which are illustrated in more detail below.

![Home & Settings
Page](../diagrams/implementation/ui_1.png "Home and settings page")

As described in Figure 4, the self test first depicts the current mood
and activity of the test person by asking the test person 2 questions.
To illustrate this, emojis have been used that should be known to
everyone. The PVT test starts immediately after the self-assessment. As
described in Chapter 2, this includes a test of reaction speed and
attention span. Then the spatial span task starts (Figure 5). This in
turn shows the respondent's attention span in which boxes that light up
must be noted. It becomes more and more difficult depending on the
level, as more boxes light up that the test person has to remember.

Some pop-up dialogs were used to display the current game status, which
guide the player through the various tasks. In addition, all tests
contain an overview of the current level and the score. This should give
the user the feeling of knowing where you are in the game and how many
tasks and areas are still to be expected.

![Self
Assessment](../diagrams/implementation/ui_3.png "Self Assessment")

![PVT and Spacial span
task](../diagrams/implementation/ui_2.png "PVT and Spacial span task")

Another feature of the app is the questionnaire, which starts
immediately after clicking the button and can be answered intuitively.
There is one question and four options for each question, which can be
staggered. A progress widget is also available, which shows which
question you are currently dealing with.

![Questionnaire](../diagrams/implementation/ui_4.png "Questionnaire")

Overall, the user interface is kept in dark mode and adapted to
smartphones, as the app was initially tested and improved on Android.
Thanks to the cross-platform accessibility, the app can also be accessed
via the web and the areas can be controlled and edited. The color scheme
is kept very subtle in pleasant shades of blue, the primary color is a
bit detached with a light turquoise and is primarily intended to
highlight things. The accent colors represent warmer tones and warning
colors.

## Client server communication

// TODO: Protokolle für die Kommunikation, was wird ausgetauscht? Format
== JSON? Worauf muss geachtet werden? Braucht es Adapter / sonstige
Besonderheiten?
