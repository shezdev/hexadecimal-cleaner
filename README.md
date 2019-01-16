# hexadecimal-cleaner

The purpose of this ruby script is to help clean up some hexadecimal code I needed to decode to plain text.

I have substituted that hex code for some test hex code (see hex_only.txt) to quickly demonstate here.

The dirty hex code looks like this:
```
=576=56c=6c2=064=6f6=e65=210=d0a=
=596=f75=277=665=206=46f=6e6=520=697=421=0d0=a=
=3a=2d=29=0d=0a
```
Ideally it should look like:
```
57 65 6c 6c 20 64 6f 6e 65 21 0d 0a 59 6f 75 27 76 65 20 64 6f 6e 65 20 69 74 21 0d 0a 3a 2d 29 0d 0a
```
or, I was willing to settle for this, removing any `=` or spaces generated:

```
57656c6c20646f6e65210d0a
596f7527766520646f6e65206974210d0a
3a2d290d0a
```

## Cleaning up the hex code
In `hex.rb` I have shown my thought process to get to the solution.

Run from command line using `ruby hex.rb hex_only.txt`

## Converting the sanitised hex to plain text
Many hexadecimal to plain text tools on the web didn't work on the messy hex code properly apart from http://www.unit-conversion.info/texttools/hexadecimal/ I'll make my own one next time. :-)
