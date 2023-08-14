# fortunes
My custom (and collected) fortune cookie files, as packaged for BSD fortune(6).

## Using
To print a fortune from a specified cookie file, run `fortune <cookiefile>`, where `<cookiefile>` is the name of the cookie file to use.
Example:

```shell
% fortune misc
Bludgeoning.  Bludgeoning is key.
```

There's a `fortunes` and a corresponding `fortunes.dat` file so that all these fortunes can be added to the pool of fortunes available to the system when running `fortune(6)`. To accomplish this, just drop them in `/usr/local/share/games/fortune` or wherever your system looks for locally-installed fortunes. To rebuild the collection (e.g. to change the excludes, include others, or build for non-BSD fortune programs), run

```shell
make clean && make
```

## Adding your own

To add your own fortunes, simply edit a file ("misc" is a good one for this) and rerun `make`. To add a new cookie file, just add the file and `make` will pick it up. To exclude a file without deleting it entirely, add it to the `EXCLUDES` list in the Makefile and run `make clean && make`.

## Attribution

Some of these are mine, some are quotes from colleagues, some are from various comic strips, and some are from ancient fortune cookies I found in old archives. Feel free to use/share/remix/whatever. I licensed it as BSD-3-clause because I know that some of them came from the old BSD-NET-2 tapes and I think that's what that code is currently licensed under.
