# P4 
## Git Repository [On GitHub](http://github.com/jpedroza/p4i.aacax.net.git)
##Website on Digital Ocean [Project 4](http://p4i.aacax.net)

#P4 Planning Doc (v3)
###[Project 4 Planning Doc v1](http://p4i.aacax.net/pd1.doc)
###[Project 4 Planning Doc v2](http://p4i.aacax.net/pd2.doc)
##App Title: Laravel Video Books 
##Purpose: To Make A Functional Video Repository
This Web Application is being constructed as a generic functional prototype to assist those individuals like myself with learning and memory problems resulting from Traumatic Brain Injury. For me, it is always a challenge to stay on track with schedules, appointments, and deadlines; however, the more challenging parts are the simple things like remembering to shut doors, names, putting things away, turning off lights, etc. The iPhone Appointment Reminders, paper calendars, and lots of "Post-It Notes" help out significantly, but for academics and learning, I get a lot of benefit by being able to watch and replay short video segments I leave myself like a "video diary." Many of the common tasks I learn, I write down, scribble over and over on post-it-notes, put in notebooks or files, but of course I put these away in the most secure places so I don't lose them - so secure, I can find them myself. As Reading is not my fastest or preferred way, a video of just showing myself how I started and uploaded my files to Github is pricess to me in that it saves time and frustration.     
##Description
My Web Application is to be a small video repository for people that need visual animated walk-throughs, demonstrations, and refreshers to help guide people through functional processes or tasks. This unique implementation will hold various media file demonstrating how to put together a Laravel website.
##Essential Features
*users must be able to create an account and login
*users must be able to play mp4 videos
*users should be able to submit comments and suggestions
##Non-essential Features
*users should be able to search for videos
*users can send sms text notices to site administrators
*users can send sms text requests for help
##To do
[ ] Complete this document 
[ ] Create new Laravel project locally
[ ] Version Control
[ ] Initiate project as a new git repo
[ ] Create a new repo on Github.com
[ ] Connect your project to this new repo on Github
[ ] Set up local server to point to this project, whether it be just pointing your localhost doc root to the project, or setting up a local domain to run it.
[ ] Add necessary controllers
[ ] Build routes, connecting to Controllers. For now, just echo out some simple strings from your controller methods so you can just test that all your routes are working.
[ ] Database
[ ] Create your local database
[ ] Fill in your local db credentials in .env
[ ] Set up and run your Migrations to build your database tables
[ ] Set up and run your Seeders to fill your database tables with sample data
[ ] Deploy your project to DigitalOcean (do this early, so any issues can be addressed sooner rather than later)
[ ] Set up a new DNS for the project in Namecheap
[ ] Git clone the project into /var/www/html/
[ ] Run `composer install` to pull in vendors
[ ] Set up your production .env file
[ ] Make necessary permission changes to storage/ and bootstrap/cache/
[ ] Update your 000-default.conf file to add a new VirtualHost block for this project. Restart apache.
[ ] Test your project is working on DigitalOcean.
[ ] Database
[ ] Create a database
[ ] Update your live .env file with the appropriate database credentials
[ ] Run your migrations and seeders
[ ] Build a starting master layout view including the essentials, for ex, doctype, head, body, place for navigation, etc. Don't focus too much on design yet.
[ ] Maintain a continuous feedback communication loop with advisors/stakeholders
[ ] Interview students, Teaching Assistants, and Instructor to see what common problems can be addressed to plan out what users will see value in from positive user experience
[ ] Conduct and record research leveraging Course Discussion Boards, Piazza, and Slack Chat to converge on to perform a needs gap analysis
[ ] Consolidate and streamline essential objectives - "understanding that the user is not me"
[ ] Build a backward planning document with sub-objectives and tentative dates 
[ ] Leverage a design-build-test-revamp process to expedite smaller objective/productive builds
[ ] Plan and out CRUD functionality for Messaging <=========== P4 Table 1
[ ] Sketch-out and define function interactions with tables fields and methods
[ ] Generate Mockups, Get User Feedback, and Adjust Accordingly
[ ] Create user table to hold usernames, password, hashes, and session tokens
[ ] Create Landing Page
[ ] Create Sign-up/in Form - the features are already built it
[ ] Draft out process steps to create an account and login
[ ] Integrate functionality with Laravel
[ ] Design/Build the Database Structures needed to hold media file links<=========== P4 Table 2
[ ] Generate Mockups, Get User Feedback, and Adjust Accordingly
[ ] Sketch-out and define function interactions with tables fields and methods
[ ] Build sample flash mock up material
[ ] Create the search functionality for topics
[ ] Plan and out CRUD functionality
[ ] Build functionality
[ ] Test, Correct, Integrate, Test, Verify, Record Configuration, Conduct Future Planning
[ ] Generate Mockups, Get User Feedback, and Adjust Accordingly
[ ] Sketch-out and define function interactions with tables fields and methods
[ ] Create the play functionality for topics
[ ] Plan and out functionality implementation to play
[ ] Build functionality
[ ] Test, Correct, Integrate, Test, Verify, Record Configuration, Conduct Future Planning
[ ] Based on time left decide on further implementation on non-essential features. 
[ ] Generate Mockups, Get User Feedback, and Adjust Accordingly
[ ] Work on polishing the design/CSS/interface. 
[ ] Generate Mockups, Get User Feedback, and Adjust Accordingly
[ ] Update DigitalOcean version of project with final changes. Run any new migrations/seeders as needed.
[ ] Have a friend or family member use your site to test for any bugs or usage issues.
[ ] Make any needed adjustments and re-deploy any changes.
[ ] Submit Github URL in Canvas to complete your project.

##Route Plan
*Purpose	Method	URI
*Homepage as a User	GET	/video/index
*Homepage as a User to Comment	POST	/video/comment
*View Videos as an Admin	GET	/video/login
*Add Videos as an Admin	GET	/video/add
*Add Videos as an Admin	POST	/video/add
*Edit Videos as an Admin	GET	/video/edit
*Edit Videos as an Admin	POST	/video/add
*Delete Videos as an Admin	GET	/video/delete
*Delete Videos as an Admin	POST	/video/delete
##Database sketch

###Table name: videos
Description: This table holds all video files 
Fields:
*(int, primary key, auto_increment) id
*(timestamp) created_at
*(timestamp) updated_at 
*(text) title
*(text) description
*(text) link
*(text) thumbnail
*(text) author

###Table name: authors
Description: This table holds info on contributors
Fields:
*(int, primary key, auto_increment) id
*(timestamp) created_at
*(timestamp) updated_at 
*(text) firstname
*(text) lastname

###Table name: metadata
Description: This table holds info on contributors
Fields:
*(int, primary key, auto_increment) id
*(timestamp) created_at
*(timestamp) updated_at 
*(text) searchterm

##Misc
The identified persona that this is intended for, is someone with learning disabilities or complex memory problems. Within the last 25 years, new advancements to body armor for military and vehicle armor have made it possible for service members to survive catastrophic injuries that would have been fatal about 25 years ago.

For example, long after the wounds of war have healed from the physical injuries, outside of prosthetics, bandages, pins, screws, and leaving the hospital, the world is now different and changed for those suffering from Traumatic Brain Injury.

Even today, football players have joined together to bring to the front unique injuries that you really can't see. In many cases, as it is not readily apparent, the hidden injuries walk among us, in confusion and in a cloud. There is even a movie about Brain Injury and its impacts. The movie is called "Concussion" and start Will Smith, coming out on Christmas Day I think. 

It is a challenge for me today, as I once served as an officer in the military, and to this day I still have not recovered my memory of who I am or was at one time. I was found by a medical board more than 20 years ago to be "Mentally Incompetent" and was separated from service. Despite the time, I still work and push as best I can to maintain what capacities I have, and the very best things that work for me are visual, audio, and animations. I still can't read or type very well, but I can manage, if I have the right tools and materials when I have them.

Sometime ago I graduated, from West Point, I was an Electrical Engineer, a Professor, and an Officer. Today, I am proud to have done all those things, but I don't remember doing them. Despite all this I am happy and appreciative, that I am alive for a little bit longer - Always Optimistic, as so many others suffer in poverty, and it can always be worse. Thank You for Your time and Consideration. Have A Great Day! 

