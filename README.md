# Portal Fortunes

This little project intends to create [Unix Fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) databases based on Portal characters quotes.  
It features databases for GLaDOS, Wheatley, Cave Johnson and Chell.

## Installing

To install the fortunes, just copy them to `/usr/share/games/fortunes/`.

## Usage

Once installed, just run `fortune`, with the databases you want (see `man fortune` for more info).

For example, to get one quote from any of the characters:

	> fortune glados wheatley cave_johnson
	It appears you're developing human traits. The worst human traits. -- GLaDOS

## Compiling

The fortune tool needs a database (.dat) file for every quotes file, and they must have the same name. If for some reason you need to update the text file, to add more quotes, for example, just run `strfile <text file>`, and the new dat file should be created.

