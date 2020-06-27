# MP3

This repo contains MDB mini-project 3, "MDP Socials".

The app streamlines the organization of group social events. After creating an account, a user gains access to events created and shared by other users in their social group. The user may RVSP "Interested" to any already-created socail. Or. . . they can create a social themselves. Doing so involves (1) selecting a photo for the event from either the camera roll or taking one with the device camera, (2) providing a name, (3) providing an optional description, and (4) selecting a time using the DatePicker. Once the user fills out this information, the social will automatically appear in the feeds of everyone in their social circle, inviting them to RSVP. Each time a user indicates their interest, everyone's feed is instantaneously updated. 


<p align="center">
  <img width="100%" src=screenshots.png/>
</p>

Everything is powered on the backend by Firebase: Firebase Authentication manages user sign ups and logins; Firebase Realtime Database contains data on users and socials; and Firebase Storage stores image data (for socials).

Note: to run the project, you may need to download the cocoapod dependencies listed in the Podfile.
