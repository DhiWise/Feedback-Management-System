  

# Feedback Management

  

  

<div>

  

<h3  align="left">Manage Feedback using DhiWise, Salesforce and Canny</h1>

  

<strong>

  

Generated with ❤️ from [DhiWise](https://www.dhiwise.com)

  

</strong>

  

<p>

  

This is the documentation of Flutter Applications.

  

</p>

  

</div>

  
  

### About App

It is difficult to handle two platforms in a single app. As a result, this software helps in the connection between Canny and the Salesforce app. It implies that feedback may be stored straight from Canny to the Salesforce app.

  

### Features

- Add feedback

- List of feedback

- Navigation Support

- search feedback

  

### Third party packages Used

1. fluttertoast

  

### Screenshots

![alt text](https://raw.githubusercontent.com/kajal1598/image_01/master/Feedback-management.png)

  
  

### Table of Contents

  

- [System Requirements](#system-requirements)

  

- [Figma design guideline for better accuracy](#figma-design-guideline-for-better-accuracy)

  

- [App Navigations](#app-navigations)

  

- [Project Structure](#project-structure)

  

- [How you can do code formatting?](#how-you-can-do-code-formatting)

  

  

### System Requirements

  

- Dart SDK Version 2.17.0 or greater.

- Flutter SDK Version 3.0.0 or greater.

  

  

### Figma design guideline for better accuracy

  

  

Read our guidelines to increase the accuracy of design conversion to code by optimizing Figma designs.

  

https://docs.dhiwise.com/knowledgehub/reference-guide-and-tools/figma

  

  

### App Navigations

  

Check your app's UI from the AppNavigation screen of your app.

  
  

### Project Structure

  

  

After successful build, your application structure should look like this:

  

  

```

  

├── android - contains files and folders required for running the application on an Android operating system.

  

├── assets - contains all images and fonts of your application.

  

├── ios - contains files required by the application to run the dart code on iOS platforms.

  

├── lib - Most important folder in the project, used to write most of the Dart code.

  

├── main.dart - starting point of the application

  

├── core

  

│ ├── app_export.dart - contains commonly used file imports

  

│ ├── constants - contains all constants classes

  

│ ├── errors - contains error handling classes

  

│ ├── network - contains network related classes

  

│ └── utils - contains common files and utilities of project

  

├── data

  

│ ├── apiClient - contains API calling methods

  

│ ├── models - contains request/response models

  

│ └── repository - network repository

  

├── localization - contains localization classes

  

├── presentation - contains all screens and screen controllers

  

│ └── screens - contains all screens

  

├── routes - contains all the routes of application

  

└── theme - contains app theme and decoration classes

  

└── widgets - contains all custom widget classes

```

  

  
  

### How you can do code formatting?

  

  

- if your code is not formatted then run following command in your terminal to format code

  

```
dart format .
```

### How to run

- Add SalesforceToken,Canny's API key and required Ids(BoardId, AuthorId) in TokenConstant file.

- Add your Salesforce URL(SALESFORCE_URL) api_clinet.dart file.

  
  
  
  
  

### MIT License

  

Copyright (c) 2022 DhiWise

  

Permission is hereby granted, free of charge, to any person obtaining a copy

of this software and associated documentation files (the "Software"), to deal

in the Software without restriction, including without limitation the rights

to use, copy, modify, merge, publish, distribute, sublicense, and/or sell

copies of the Software, and to permit persons to whom the Software is

furnished to do so, subject to the following conditions:

  

The above copyright notice and this permission notice shall be included in all

copies or substantial portions of the Software.

  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,

OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

SOFTWARE.

  

## Join our community

  

- [DhiWise Discord Community](https://discord.gg/hTuNauNjyJ)

- [Github](https://github.com/DhiWise)
