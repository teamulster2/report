## Flutter application

*Flutter* is a open source framework developed by Google. 
*Flutter* gives you the ability to create several applications (iOS, Android,
web application) with a single code base. 
Because of this, the development does not take place platform-specifically,
but in one programming language and environment.

The programming language used with *Flutter* is *dart*. 
*Dart* is an object oriented programming language that is very similar to C#
or Java. 

// TODO: Mehr Informationen zu DART / Flutter


All in all we tried to set up a reusable folder and file structure with
seperation of concerns between the frontend / user interface and the business
logic.

### Config

### Database

### Exceptions

### Notifications

The app is able to send reminder notifications to the user.
The researcher can configure specific times, when notifications will be triggered. In this way, 
the study participant can be specifically reminded to use the app. The setting 
options can be found in the config, here both the desired notification times in 
UTC and the notification text can be set. The heading of each notification is 
the set study name. Further methods have been implemented which can be used to 
send notifications to the user at intervals or after certain events. These 
methods were only added to make the app easier to expand and do not play a role 
in the current version.  

### User Interface

The user interface (ui) part of the code is divided in a core, models and
modules folder. 

The core folder contains all files that have to do with the home page and
navigation bar, basically everything that has to be reached from inside the
application.

The modules folder contains all seperate parts that act independently. There
is also a folder and a widget for the questionnaire, the spatial span task,
the pvt test and the settings page.

Each module contains a dart file with the main Scaffold or Container that
contains all the contents of the specific subpage. Then you have a widget
folder with all seperate smaller parts of the application. So there is for
example a QuestionnaireAnswer widget that is used for each answer of a
specific question.

On one hand, this precise separation ensures, that the code is much clearer
and should also be less redundant. In addition, the areas of responsibility
are clearly separated from each other so that errors or changes only have to
be carried out once and not several times. In addition, the individual areas
should be easy to find by other programmers.

