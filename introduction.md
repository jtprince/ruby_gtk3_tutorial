# Getting Started

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

## 2.2 Extended Example

For something a little more useful, here’s the classic “Hello World” program.

[[images/hello_world_output.png|alt=hello_world_output]]

```ruby:apps/hello_world.rb```

This example differs from the simple example as we sub-class Gtk::Window to define our own MyWindow class.

```ruby
class MyWindow < Gtk::Window
```

In the class’s constructor we have to call super to setup any necessary code
in the super-class. In addition, we tell it to set the value of the property
title to Hello World.

```ruby
super  
title = "Hello World"
# or super("Hello World")
```

The next three lines are used to create a button widget, connect to its clicked signal and add it as child to the top-level window.

```ruby
button = Gtk::Button.new(label: "Click Here")
button.signal_connect('clicked') { puts "Hello World!" }
add button
```

The block of code is executed when the button is clicked.  We could just as
easily have bound it to a method in our window class.  What would that have
looked like?

```ruby
button.signal_connect('clicked') { on_button_click(button) }
# alternatively, if you prefer
button.signal_connect('clicked', &method(:on_button_click))
...

# within the MyWindow class
def on_button_click(button)
  puts "Hello World"
end
```

The last block, outside of the class, is very similar to the simple example above, but instead of creating an instance of the generic Gtk.Window class, we create an instance of MyWindow.

