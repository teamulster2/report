## Flutter application

Flutter is a open source framwork developed by Google. With Flutter you can create several applications (iOS, Android, web application) with just one code base. So the development does not take place platform-specifically, but in one programming language and environment.

The programming language used with Flutter is DART. DART ist a object oriented programming language that is very similar to C# or Java. 

// TODO: Mehr Informationen zu DART / Flutter


All in all we tried to set up a reusable folder and file structure with some seperation of concerns between the frontend / user interface and the business logic.

### Config

### Database

### Exceptions

### Notifications

### User Interface

The user interface (ui) part of the code is divided in a core, models and modules folder. 

The core folder contains all files that have to do with the home page and navigation bar. So everything that has to be reached from everywhere inside the application.

The modules folder containes all seperate parts that act independently. So there is a folder and widget for the questionnaire, the spatial span task, the pvt test and the settings page for example.

Each module contains a dart file with the main Scaffold or Container that contains all the contents of the specific subpage. Then you have a widget folder with all seperate smaller parts of the application. So there is for example a QuestionnaireAnswer widget that is used for each answer of a specific question.

This precise separation ensures, on the one hand, that the code is much clearer and should also be less redundant. This avoids repetitions. In addition, the areas of responsibility are clearly separated from each other so that errors or changes only have to be carried out once and not several times. In addition, the individual areas should be easy to find by other programmers.