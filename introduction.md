## 2.1. Simple Example

To start with our tutorial we create the simplest program possible. This program will create an empty 200 x 200 pixel window.

[[images/simple_example_output.png|alt=simple_example_output]]

```ruby:apps/simple_example.rb```

We will now explain each line of the example.

```ruby
#!/usr/bin/env ruby
```

The first line of all Ruby programs should start with #! followed by the path to the Ruby interpreter you want to invoke.  Usually, we let the env program (i.e., the user's environment) dictate which Ruby that is.

```ruby
require 'gtk3'
```
In order to access GTK+ classes and functions we first must require the sourcefile containing Gtk code. The next line creates an empty window.

```ruby
win = Gtk::Window.new
```

Followed by connecting to the window’s delete event to ensure that the application is terminated if we click on the x to close the window.  (I'm using a tiling window manager, so no bar with an 'x' is actually being shown.  Just imagine it, though)

```ruby
win.signal_connect('delete-event') { Gtk.main_quit }
```

In the next step we display the window.


```ruby
win.show_all
```

Finally, we start the GTK+ processing loop which we quit when the window is closed.

```ruby
Gtk.main
```

To run the program, open a terminal, change to the directory of the file, and enter:

```bash
ruby simple_example.rb
```

