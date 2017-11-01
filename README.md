# Assembly-Simple-Keygen
First time using Ollydbg for Reverse Engineering

prog4.exe : Program to use Ollydbg on.

KEYGEN.exe : My keygen for the program based on user's name.

keygenbyfabian folder : VS folder.


# Ollydbg
Opened prog4.exe on Ollydbg and steped through the code until after I reached the name and key input.

After inputting username it called steps that reversed the name input (by push through stack, I assume)

After the key, it calls steps which then used XOR on the reversed string, char-by-char to make a key based on name.


# Assembly
I made a program that gets user input for name, reversed it through stack, and XOR'd 01Dh unto name character (1D in hex)

# Problems
I'm not quite sure what the character "b" represents (7F in ASCII iirc) since it isn't a space, so I assume just some whitespace
