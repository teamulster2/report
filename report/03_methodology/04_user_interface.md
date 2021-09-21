## User interface

The user interface in the app should be kept as simple as possible in order to
be accessible to everyone. This means that there is a start page with the
logo and four menu options. From there, the settings lead to a subpage that
provides certain functions for the client-server function. The study URL can
be selected here and data transfer can be ordered (Figure 3). There is also
the sub-item of audio detection, which, however, has not yet been implemented
due to time constraints and the limitations of the project. The two points
above are the self-test and the questionnaire, which are illustrated in more
detail below.

![Home & Settings Page](../diagrams/implementation/ui_1.png "Home and settings page")


As described in Figure 4, the self-test first depicts the current mood and
activity of the test person by asking the test person 2 questions. To
illustrate this, emojis were used, which people from most countries of the
world should be familiar with. The PVT test starts immediately after the
self-assessment. As described in Chapter 2, this includes a test of reaction
speed and attention span. Then the spatial span task starts (Figure 5). This
shows the respondent's attention span in which boxes that light up must be
noted. It becomes more and more difficult depending on the level, as more
boxes light up that the test person has to remember.

Some pop-up dialogs were used to display the current game status, which guide
the player through the various tasks. In addition, all tests contain an
overview of the current level and the score. This should give the user the
feeling of knowing where he is in the game and how many tasks and areas are
still to be expected.

![Self Assessment](../diagrams/implementation/ui_3.png "Self Assessment")


![PVT and Spacial span task](../diagrams/implementation/ui_2.png "PVT and Spacial span task")


Another feature of the app is the questionnaire, which starts immediately
after clicking the button and can be answered intuitively. There is one
question and four options for each question, which can be staggered. A
progress widget is also available, which shows which question you are
currently dealing with.

![Questionnaire](../diagrams/implementation/ui_4.png "Questionnaire")


Overall, the user interface is kept in dark mode and adapted to smartphones,
as the app was initially tested and improved on Android. Thanks to the
cross-platform accessibility, the app can also be accessed via the web and the
areas can be controlled and edited. The color scheme is kept very subtle in
pleasant shades of blue, the primary color is a bit detached with a light
turquoise and is primarily intended to highlight things. The accent colors
represent warmer tones and warning colors.

