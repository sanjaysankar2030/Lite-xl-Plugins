# ABOUT THE PLUGINS 
1. Gofmt.lua
  - basic formatting for go files.
  - uses go mod only works when go mod is initialized.
  - Files are formatted when the command is used.
2. JavaFmt.lua
  - Used to format java files using googlejavaformat.jar
  - download the java jar file and set the jar to the enviroinment path in windows.
  - paste the javafmt.lua in the plugins directory
  - then copy the javafmt.cmd file in the same folder where the .jar file is placed ( so that the dir need not be added to path again ).
  - Java files are formatted when the command is used . Note that the pop up might trigger proceed to give yes ( if the .java file needs to be formatted then the file is formatted if not then the file erases from the text buffer ).
    
3.Gruber Tsoding theme
  - This is the unofficial spinoff lua port for the gruber darker theme of [Rexim Tsoding](https://github.com/rexim/gruber-darker-theme)
  - Place it in the colors directory of the lite-xl which is usually in 
    ```
    C:\Users\(username)\AppData\Roaming\lite-xl\colors\
    ```
  - Then use the theme in the Settings -> Themes in the lite-xl application.

---

# HOW TO USE 
- Go to the plugins directory 
  - It will be in the
    ```
    C:/User/{USER_NAME}/.config/lite-xl/plugins // or wherever you placed it
    ```  
  - Paste the gofmt and javafmt.lua files
  - Install google-java-format.jar in your computer 
  - Place the javafmt.cmd command somewhere in the folder and create a System Path for the executable and change the path in the .cmd file accordingly  
-Restart Lite-Xl
