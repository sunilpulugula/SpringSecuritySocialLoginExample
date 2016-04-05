# SpringSecuritySocialLoginExample

## Introduction
This project is an example of how to implement social login feature using spring framework.Here is the [Blog](http://sunilkumarpblog.blogspot.in/2016/04/social-login-with-spring-security.html) of this application for precise explination.This application supprts

1) Form Login : This is classic login,where there will be a form accepting username and password.User need to submit his/her user details.

2) Social Login (Facebook,twitter & linkedin) : Here social user can signin in the application using their Facebook/Twitter/linkedin accounts. Then we add support for current users to associate their social accounts with their accounts in the application,it is also called mapping social user with local user.


## Prerequisites

This application assumes that you have already created the Facebook,Twitter and Linkedin application used by this application. Once you registered application with social provider developer site,you will api key  and secret as follows

#### facebook provider details :

facebook.api.key=781512165315051

facebook.api.secret=376f760458f2411bb9dd9a57b2a16fd9

#### twitter provider details

twitter.api.key=kBcdXhCEQcTE8wz5zxliQCJX6

twitter.api.secret=6qiXptqIR1rHyWirlK1Alrk2FXiccyOk0dc2paZRUyjkJqI1IL

#### linkedin provider details

linkedin.api.key=75ileo93c5xmr5

linkedin.api.secret=pUdw0kH9ggnj9QQE

## Build :

mvn clean install

## Deploy :
deploy spring-security-social-login-example.war in web server(Tomcat).

