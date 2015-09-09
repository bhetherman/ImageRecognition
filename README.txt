Image Recognition

How To Run
First you will need to change the directories where everything is pointing, these can be seen in the contructor. They chould be pulled out and made into launch file parameters but I ran out of time. Once those changes are made you can use the public methods to load an existing set of BOWs and ANN if they exist, or you can train a new set if they dont. You can also test the trained/loaded ANN on the test set of images. 

The image recognizer will also subscribe to the segmented objects list and will test any objects that are published to the topic. Currently it will just print the results to the terminal. There is also a parameter called "saveNewImages" which determines if new images should be saved.

Collecting Data
Set the "saveNewImages" value to be 1 and then there is a sipmle bash script that you can run called "repeat_srv_call.sh" in the include directory. This script will call the segment service every 10 seconds with an audible que to let you know when an image was take. I recomment running the script on Carl. New images will be saved to the new images directory to be sorted.

Adding New Objects
Create a folder with the object name into the images directory. Place images of the object in the folder. Run the image recognition node. Call the "trainImageRecognizer()" function. Wait... It will then save the new ANN and new BOW files to the save file directory.
