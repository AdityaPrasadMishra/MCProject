﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Recognition of Affective Prosody</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/tasks.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptMgr" runat="server" EnablePageMethods="true" ScriptMode="Release" LoadScriptsBeforeUI="true"></asp:ScriptManager>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#tasks">Tasks</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Recognition of Affective Prosody
                <small><span id="welcome"></span></small></h1>
            </div>
        </div>

        <div id="user" hidden></div>

        <div class="row">

            <div class="col-md-8">
                <video playsinline autoplay muted loop id="bgvid" width="768" height="432">
                    <source src="videos/banner.mp4" type="video/mp4">
                </video>
            </div>

            <div class="col-md-4 project">
                <h3>Project Description</h3>
                <p class="description">
                    Isolating processes within the brain that are specific to human behavior is a key goal for social neuroscience. The current research was an attempt to test whether recent findings of enhanced negative ERPs in response to unexpected human gaze are unique to eye gaze stimuli by comparing the effects of gaze cues with the effects of an arrow cue. An enhanced negative ERP (N300) will be recorded in response to negative stimulations. The findings will interpreted as reflecting a domain general mechanism for detecting unexpected events specially in terms of syntax and semantics.
                </p>
                <h3>Team Members<small> (Team 5)</small></h3>
                <ul>
                    <li>Aditya Prasad Mishra</li>
                    <li>Ananth Mudumba</li>
                    <li>Kishore Madhava Muruganandan</li>
                    <li>Pavan Kumar Akilla</li>
                </ul>
            </div>

        </div>

        <div class="row tasks" id="tasks">

            <div class="col-lg-12">
                <h3 class="page-header">Tasks</h3>
            </div>

            <div class="col-sm-3" id="populateTasks"></div>

            <script>
                function myTasks(arr) {
                    var out = '<ul class="no-list-style">';
                    var i;
                    for (i = 0; i < arr.length; i++) {
                        out += ' <li> <p>' + arr[i].description + '</p> ';
                        out += ' <p><a class="btn btn-primary" href="' + arr[i].videoUrl + '" role="button" target="show"';
                        out += ' onclick="setPopup(\'' + arr[i].tid + '\', \'' + arr[i].name + '\', ' + arr[i].duration + '); ';
                        out += ' return true;">' + arr[i].name + '</a></p> ';
                        out += ' </li> ';
                    }
                    out += '</ul>';
                    document.getElementById("populateTasks").innerHTML = out;
                }
            </script>

            <div class="row col-sm-9">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="images/brain.jpg" name="show" id="show"></iframe>
                </div>
            </div>

        </div>

    </div>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script src="js/json.js"></script>
    <script src="js/tasks.js"></script>
        <asp:HiddenField ID="ReturnValue" runat="server" />
    </form>
</body>
</html>
