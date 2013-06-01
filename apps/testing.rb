#!/usr/bin/env ruby

require 'gtk3'

win = Gtk::Window.new
win.signal_connect('delete-event') { Gtk.main_quit }
label = Gtk::Label.new( 'Hello World' )
label.set_angle 25 #, halign: Gtk::Alignment.new ::END )
win.add label

win.show_all

Gtk.main
