#!/usr/bin/env ruby
require 'gtk3'

class MyWindow < Gtk::Window
  def initialize
    super  
    set_title "Hello World"
    # or super("Hello World")
    
    button = Gtk::Button.new(label: "Click Here")
    button.signal_connect('clicked') { on_button_click(button) }
    # or
    #button.signal_connect('clicked', &method(:on_button_click))
    
    add button
  end

  def on_button_click(button)
    puts "Hello World"
  end
end

win = MyWindow.new
win.signal_connect('delete-event') { Gtk.main_quit }
win.show_all
Gtk.main
