#!/usr/bin/env ruby

require 'gtk3'

class RubyApp < Gtk::Window

  def initialize
    super
    set_title "hello"
    signal_connect "destroy" do 
      Gtk.main_quit 
    end

    fixed = Gtk::Fixed.new
    add fixed

    button = Gtk::Button.new "Button"
    button.set_size_request 80, 35
    button.set_tooltip_text "Button widget"

    fixed.put button, 50, 50

    set_tooltip_text "Window widget"
    set_default_size 250, 200
    set_window_position Gtk::Window::POS_CENTER

    show
  end
end

Gtk.init
window = RubyApp.new
Gtk.main
