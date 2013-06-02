# 4 How to Deal With Strings

Gtk uses UTF-8 encoding.  This means that for the fewest surprises, your
strings should be in UTF-8 when you pass them into Gtk, and you should expect
UTF-8 when receiving strings from Gtk.

Fortunately, the default encoding for Ruby >= 2.0 is UTF-8, so it should be
trivial to work with string encodings and Gtk.  Most of the time, you don't
need to do anything.

If you are working with other encodings, it is trivial to ensure
compatibility.  Assuming ruby is already aware of the encoding your string is
in, you can merely issue this line of code:

```ruby
string_in_utf8 = "some string in UTF-16BE encoding".encode('UTF-8')
```
