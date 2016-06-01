# Portal Fortunes

This little project intends to create [Unix Fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) databases based on Portal characters quotes.  
It features fortunes for GLaDOS, Wheatley, Cave Johnson and Chell.

## Installing

Make sure `make` and `strfile` are installed, and type:

```
sudo make install
```

## Usage

Once installed, just run `fortune`, with the fortune files you want to be
randomly picked (see `man fortune` for more info).

For example, to get one quote from any of the characters:

	> fortune glados wheatley cave_johnson
	Finally! I had almost given up hope of ever testing again.
                    -- GLaDOS
