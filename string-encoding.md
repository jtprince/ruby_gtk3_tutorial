# 4 How to Deal With Strings

Gtk uses UTF-8 encoding.  This means that for the fewest surprises, your
strings should be in UTF-8 when you pass them into Gtk, and you should expect
UTF-8 when receiving strings from Gtk.

The default encoding for Ruby >= 2.0 is UTF-8, so it should be trivial to work
with encodings and Gtk.

If you need to, you can always change encodings to be compatible.  For
instance, here we change from UTF-16 to UTF-8:

```ruby
"some string in LATIN-1 encoding".encode(:UTF8
```
