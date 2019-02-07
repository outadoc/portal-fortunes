# Portal Fortunes

This little project intends to create [Unix Fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) databases based on Portal characters quotes.

## In the package
Quotes from: 
- GLaDOS
- Wheatley
- Cave Johnson
- Announcer
- Chell

## Prerequisites
Make sure `make` and `strfile` are installed.

You also need to install `fortune` since this repository only provides data files to be used by it. This will vary depending on your Unix flavor and distribution.

On macOS, use `brew install fortune`.

## Installing
```
make install
```

This will compile the text databases into binary, random-access optimized data files and copy them where `fortune` lives.

Grant root priviledges if required.

## Usage
Once installed, just run `fortune`, with the fortune files you want to be
randomly picked (see `man fortune` for more info).

For example, to get one quote from any of the characters:

```bash
> fortune glados wheatley cave_johnson announcer
Finally! I had almost given up hope of ever testing again.
```

To get a quote from Wheatley only:

```bash
> fortune wheatley
Just say 'Apple'. Classic. Very simple.
```

To get a quote from GLaDOS, with a 70% chance, or the Announcer:
```bash
> fortune 70% glados announcer
To ensure that sufficient power remains for core testing protocols, all safety
devices have been disabled. The Enrichment Center respects your right to have
questions or concerns about this policy.
```

Again, read `man fortune` for more options!
