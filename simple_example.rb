#!/usr/bin/env ruby

require 'gtk3'

win = Gtk::Window.new
win.signal_connect('delete-event') { Gtk.main_quit }
win.show_all
Gtk.main
