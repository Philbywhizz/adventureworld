Design:
=======

Just some notes on the design with the translation of the game to modern hardware

Original Microbee details:
--------------------------
* Text Characters were 8 pixels wide, 16 pixels high. Since the original game used PCG graphics (remapped characters to create a font) for its tiles, then the tiles were also 8x16 pixels.

* Screen display was 64 characters wide, and 16 characters high. With the above character pixel info then we can infere that the screen resolution was 512x256

Remake details:
---------------
* Screen resolution: 512x256 looks rather small on modern hardware so I am going to double the size of all the graphics so the screen is now 1024x512 and the tiles are 16x32
