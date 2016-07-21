# Node.js + npm + git

This is a portable distribution of node.js in combination with npm (which depends on git).
Usually you would ship the portable msysgit version (on which this package is based on),
but thats way too oversized for this usecase (since npm uses just a pretty small part of git).

In this package instead is a heavily shrinked portable msysgit (removed the unused stuff), the portable version of node
and the portable version of npm.

Resources:
* Node.js v6.2.1 https://nodejs.org/dist/latest-v6.x/
* npm v3.9.3 (included in the Node.js windows packages)
* PortableGit 1.9.5 https://github.com/msysgit/msysgit/releases
* inexor-game/platform https://github.com/inexor-game/platform/tree/master/bin/windows



# How to Use

* Clone or download and unzip it to any directory you want. 
* Cd to path\to\standalong_node_with_npm
* Click to run create_hardlink_to_node_x64.cmd or create_hardlink_to_node_x86.cmd to create a node.exe hard link.
* Click to run run_this_node.cmd to start a Windows command prompt
* Now you can start to use node and npm inside the command window as usual.



# How to Create Portable Node 

* Download the node.exe stand-alone from nodejs.org
* Grab the corresponding NPM release zip off of github 
* https://github.com/npm/npm/releases
* Create a folder named: node_modules in the same folder as node.exe
* Extract the NPM zip into the node_modules folder
* Rename the extracted npm folder to npm and remove any versioning ie: npm-x.y.z –> npm.
* Copy npm.cmd out of the /npm/bin/ folder into the root folder with node.exe
* Run create_hardlink_to_node_x64.cmd or create_hardlink_to_node_x86.cmd to create hardlink
* Run run_this_node.cmd to start a command prompt with proper system varibles being set.
* Or open a command prompt in the node.exe directory (shift right-click “Open command window here”), iside it call run_this_node.cmd

Now you will be able to run your npm installers ie:
npm install -g express
npm install express --save

Reference:
https://codyswartz.us/wp/finds/node-js-stand-alone-portable-with-npm