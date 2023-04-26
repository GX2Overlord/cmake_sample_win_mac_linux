# cmake_sample_win_mac_linux
Simple example of how to have CMake create an IDE project on different platforms from the same code base

Here is what you will need on each platform to be able build and run your C++ code:

All Platforms:
https://cmake.org/download/

Windows:
https://visualstudio.microsoft.com/vs/community/

MacOS:
https://developer.apple.com/xcode/

Linux:
https://codelite.org/

Once you have installed all the required software you can run the included script for each platform.
(I recommend rebooting your machine after installing any of above)

The .sh scripts on Mac and Linux will need to be made executable if you wish to be able to run/double-click them.

Linux: 
https://youtu.be/LlgIFWy1O5E 

MacOS:
https://youtu.be/RxlNDnFY4PA

Once you run the appropriate IDE script it should generate the IDE solution/project/workspace for you in "build".
This is just scratching the surface of what CMake can do.
If your project needs/creates static libraires, dlls/dynlibs, external dependencies, etc. CMake has you covered.

*REMEMBER* The "build" folder is considered disposable, don't put any code in there and don't add it to source control. 
CMake can and should regenerate it anytime it needs to. "build" is only valid on this machine and in that location.
If you clone the project to another machine or even move it on the same machine, delete "build" & re-run the build script.

This basic sample was created with some assistance using Chat GPT-4