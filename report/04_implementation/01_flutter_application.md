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

