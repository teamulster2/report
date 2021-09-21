# Results and discussion

In this project, a new application has been implemented that is 
based on the results of the report from [4]. As described in the 
Methodology (3) chapter, a Flutter application is available, that is 
initially geared and adapted to an Android application. This app can 
easily be expanded to an iOS or web application with the same code base. 
In addition, a server is available for evaluation purposes to which 
the data can be transmitted.

Above all, the results of the pvt and spatial-span-task in combination 
with the current mood and current activity should be able to provide 
meaningful results to the people, who are responsible for the study. 
In addition, the storage of the data from the questionnaire has been 
optimized and the questions can be exchanged.

Interchangeability is particularly important for the final result 
of the report. The app is not only designed for a single study, so 
the values ​​can be adjusted. In addition, privacy was kept in mind while
designing the whole system, even though it is technically possible to track
people over there public ip-address, no mechanism has been implemented to
collect this or other research unrelated data. Both the client
application and the server side were designed to be interchangeable 
and adaptable.

Possible further steps would now be to design an admin page so that 
changes to the config of a study do not have to be made via a terminal 
window, but at best can be made via a desktop application or a website. 
The existing access via http can be expanded and adapted for 
this purpose.