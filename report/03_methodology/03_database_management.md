## Database management

The soTired application is known divided into two areas, the stand-alone client side as well as the server side with options for evaluation and export. In order to make both areas independent of each other and also to ensure that the values are always available, even if there is no network connection at a certain point of use, it was agreed to create and manage an independet database on both sides.

### Client database

As described above, the client side is written with the helf of the cross platform framework Flutter and the programming language Dart. Hive describes itself as a 'Fast, Enjoyable & Secure NoSQL Database' [5]. That makes it easy to store database objects in boxes and access them again. Hive in conjunction with Flutter also promises great support in terms of use, as this has been specially adapted to it [5]. 

In addition, a NoSQL database was chosen because it is more flexible in terms of the variety of data in the area of research results and the speed required for storing such a large amount of data. Espically when thinking of adding additional functionality like audio or video recognition and using artificial intelligence to get information out of that. This is particularly suitable for this, as the data is only saved and not read out within the app. In this way, all data that is available can be collected without loss and no information is lost through a rigid relational form and can be sent to the server side.

### Server database

In contrast to this, a relational database is used on the server side in order to be able to organize the results and export them later evaluated, if necessary. We decided on the lightweight, relational database SQlite that describes itself as an 'small, fast, self-contained, hight-reliability, full-featured, SQL database engine. This rather traditional, but well-known approach to storing large amounts of data promises above all a very structured distribution on the data, from wicht an export can later be made available via a .json file.  

Overall, it can be said that the data structure on the server side looks like described in Figure 2. Therefore the main focus is on the study with the corresponding information and settings. The users assigned to a respective study are also stored in a separate table with the associated primary key for the study. This is where the assignment between user and study takes place. Then there are two tables that contain the log structure of the self test and the questionnaire. Inside the log tables you have all the information that need to be exported afterwards. At the same time, the questions of a specific study and the associated questionnaire are saved together with the selectable answers so that they can be accessed in the study.

![ER diagram](../diagrams/database/ER_diragramm.drawio.png "er-diagram")
