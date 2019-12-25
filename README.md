# BeYou

A Flutter application for Bennett Community.

## Getting Started
Please make sure to Setup the Flutter SDK amd install 
the Dart Package inside Android Studio.
[Flutter Installation](https://flutter.dev/docs/get-started/install)

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## Dependencies
Following packages have been including in the project: 

    cupertino_icons: ^0.1.2 : 
    url_launcher: 4.1.0
    image_picker: 0.4.12
    barcode_scan: "^0.0.4"  

Whenever you are trying to clone the project, make sure to 
install all the dependencies. 
In case of upgrading the version of the packages, please make
sure that the version is below AndroidX SDK.

For getting help in version of packages, please visit
[Flutter AndroidX](https://flutter.dev/docs/development/packages-and-plugins/androidx-compatibility).

## Assets:

All the Images and custom fonts used are present inside the /assets Directory.

    flutter:
      assets:
        - assets/Images/trending.png
        - assets/Images/profile.png
        - assets/Images/newsfeed.png
        - assets/image_01.png
        - assets/image_02.jpg
        - assets/image_03.jpg
        - assets/image_04.jpg
        - assets/Images/previous.png
        - assets/Images/map.png
        - assets/Images/calendar.png
        - assets/Images/hourglass.png
        - assets/Images/feedback.png
        - assets/Images/scanner.png
        - assets/Images/register.png
        - assets/Images/reset.png
        - assets/Images/login.png
        
  **Above code should be mentioned inside _pubspec.yaml_ along with the content.**
  
## Dart Files:

All the Files are stored inside the /lib Directory.

There are 12 Dart Files.
    
    1.main.dart : 
        - It contains all the Page routes as well as starts the app code. 

    2. HomePage.dart : 
        - The code of the Main screen lies inside this dart file. 
        - PageView Widget is used to create a much better User Experience 

    3. Menu.dart : 
        - It has the larger view of the Functions of the Application. 

    4.ChatBot.dart : 
        - A machine learning based Bot made with the help of the 
          DialogFlow to have a human-like interaction with the Users.
        - Url_Launcher package has been used inside this file. 

    5.EvenScan.dart: 
        - A screen that helps you to scan any QR or BarCode and 
          provides you with the entire detauls of the upcoming event.
        - barcode_scan package has been used in this screen.
    
    6.Articles.dart: 
        - A screen that contains threee different views of the 
             Event details. It is directly linked to EvenScanner as well 
             as the homepage. 
             
    7.Options.dart: 
        -  A screen that refers you to various options such as Creating a Account,
        Login In and in case you have forgot the passsword.
    
     8.Trending.dart: 
        - All the upcoming events are being shown inside this screen with
        the ability to swipe left or right to view the events.  
    
    9. Details.dart: 
        - It contains the values in form of Collections and Lists for the Events.
         
     The Files Login.dart, SignUp.dart, ForgotPassword.dart are in the phase of
     the development but the user Interface is complete.
        
     **The code for the firebase integreation is left only.**        
        
## ChatBot 

We have used [DialogFlow](https://dialogflow.com/) to create the ChatBot for your application.

To have a human like interaction with our application, Please visit our [BeYou](https://bot.dialogflow.com/BeYouChatBot) ChatBot.

We have used **Google Cloud Platform (GCP) Services** to deploy our ChatBot.

## Event Scanner

We have used [Event_Scanner](https://pub.dartlang.org/packages/barcode_scan) package to scar barcode and qr images.

To Obtain the details of the entire event all you have to do is Scan the Code and the application 
would be able to showcase the details.  

##  Bugs and Issues:

    The Integration of FireBase with the other packages has been one of the biggest 
    issue since the starting of the Project.
    
    Reasons: 
        1. The version of the FireBase packages should be below the 
        Android X compatibility which leads to breaking of the application.
        
        2. Even if you migrate the version of the Application to AndroidX,
           then the bug with the KotLin based package BarCodeScanner arises.
      
 ## Screenshots
 
 ![Screenshot HomePage 1](https://github.com/Parizval/BeYou/blob/master/img/First.jpg)
 
 ![Screenshot HomePage 2](https://github.com/Parizval/BeYou/blob/master/img/Second.jpg)
 
 ![Screenshot HomePage 3](https://github.com/Parizval/BeYou/blob/master/img/Third.jpg)
 
 
    
