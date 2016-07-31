NeatoWrite
==========

Write text with your Neato bot

The code is in bash 4 (using associative arrays) and allow you to type a message that the bot will write.

<h3>GNU LINUX</h3>
The code is in pure bash 4 so it can be executed 'as is' by most of the recent distros of GNU LINUX.

Just type <pre>bash NeatoWrite.bash</pre>

<h3>MAC OSX</h3>
OS X uses Bash 3 so you need to update your bash. 

If you have homebrew, type this in your terminal : 
<pre>brew update && brew install bash</pre>
Once it is done you just have to execute the bash file in the 'Mac_OSX' directory. 

The only difference between mac and linux come from the /dev/ path to the port that differs. To connect and have a response on the serial port you need to use cu* and not tty* port for mac. (More info on tty/cu for mac <a target="_blank" href="http://pbxbook.com/other/mac-tty.html">here</a>)

This is why the script checks the kernel first.

<h3>Windows</h3>
For Windows, first you will need to get the drivers here :
<ul>
<li><a target="_blank" href="http://www.neatoroboticsupdates.com/NeatoInstaller/NeatoUpdaterToolInstaller_x86.exe">Windows 32</a></li>
<li><a target="_blank" href="http://www.neatoroboticsupdates.com/NeatoInstaller/NeatoUpdaterToolInstaller_x64.exe">Windows 64</a></li>
</ul>

Then you have the choice : 
<ul>
<li>you can try to get a bash shell on Windows and execute the bash code</li>
<li>you can download <a target="_blank" href="https://ttssh2.osdn.jp/index.html.en">Teraterm</a> which allows you to communicate with the bot. You can then create a macro (.ttl) (launch ttpmacro; then choose the .ttl file). 
An example of a macro is in the 'Windows' directory but at this point it is quite easier to install a Gnu-Linux distro imo because the ttl syntax is not very well known.</li>
</ul>

<h3>Hardware</h3>
For the hardware part you need a mini-usb cable, a pen and a scotch tape to fix the pen on the back part of the bot.

<h3>Software</h3>
The script is quite simple : 
<ol>
<li>It checks the kernel to determine the OS between Gnu-Linux and MacOS</li>
<li>It tries to get the last connected and corresponding serial port (last 10 mins) and to connect to it.</li>
<li>It it fails you have to type the path to the port.</li>
<li>Once it has succedeed, you type the string of characters you want to write.</li>
<li>Once the string is written the testmode is turned to off and the script ends.</li>
</ol>

Be careful of not typing characters that are not împlemented yet. Be also warned of the fact that if you remove your usb cable before the end, the bot will not leave the TestMode correctly.

<h3>Instructions and writing</h3>
The full programmer's guide is available <a target="_blank" href="https://www.neatorobotics.com/resources/programmersmanual_20140305.pdf">here</a>.

The basic instruction used to move the bot is <pre>setmotor leftWheelDistance rightWheelDistance globalSpeed</pre>

For turning, the good angle will depend on the use of the two wheels. 
If you want to make a 360° turn on itself you can use :<pre>setmotor 360 -360 200</pre>
If you want to make a 360° turn to draw a circular arc you will prefer :<pre>setmotor 720 0 200</pre>

<h3>Neato compatibility</h3>
The script has been tested with :
<ol>
<li>Neato XV</li>
</ol>

<h3>Alphabet</h3>
At the moment only some characters can be written : 

A B C D E F G <del>H</del> I <del>J</del> <del>K</del> <del>L</del> M <del>N</del> O P <del>Q</del> R <del>S</del> <del>T</del> <del>U</del> <del>V</del> <del>W</del> <del>X</del> <del>Y</del> <del>Z</del>
<del>0</del> <del>1</del> <del>2</del> <del>3</del> <del>4</del> <del>5</del> <del>6</del> <del>7</del> <del>8</del> <del>9</del> 

<h3>Todo list</h3>
<ul>
<li>Complete the set of character that can be written</li>
<li><del>Add a check on the OS at the begining to merge the GNU LINUX and MAC versions</del></li>
<li>Add the possibility to define an handicap for a wheel at the beginning (mine has to be corrected by 5° for 1° on the right wheel)</li>
</ul>

<h3>License</h3>
Licensed under MIT license, <a target="_blank" href="https://github.com/novastra/NeatoWrite/blob/master/LICENSE">check here</a>.
