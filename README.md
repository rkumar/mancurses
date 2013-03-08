# Mancurses

Browse manpages inside ncurses. Jump around to other man pages


## Installation

    $ gem install mancurses

## Usage

Use Alt-c to enter program name to search such as "grep", "strcmp" etc.
Use "/" to search for strings within the page displayed.

Use '?' to see bindings.

## General

This gem is not really gonna make much difference to you. It's faster to just type `man grep` on the 
command line and 'q' to get out. It's not like you keep manning pages one after another.

I am writing this to test out a new text widget which uses a pad. I hope to replace the current
text widgets such as textview and list and maybe tabular and tree in rbcurse-core with this. 

Currently, using a window requires a lot of work each time one scrolls around. Too much string creation , truncation, sanitizing and gc going on repeatedly. Using a pad simplifies all this.

However, pad is not without its issues. If I have two pads on the screen, and a popup is displayed,
then a black rectangle is left on the other pad. I would have to tab there and scroll for a `prefresh` to happen. Otherwise, the app needs to do some book-keeping of underlying pads created and refresh them when a messagebox or window closes.

If i cannot manage that reliably, then i cannot include this in the main rbcurse-core.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

https://rubygems.org/profiles/rkumar
