#!/usr/bin/env ruby

require 'gtk3'

class Gtk::Label
  alias_method :old_init, :initialize
  def initialize(arg=nil)
    if arg.is_a?(String)
      old_init(arg)
    else
      super(arg)
    end
  end
end

class RubyApp < Gtk::Window

  def initialize
    super
    set_title "hello"

    signal_connect "destroy" do 
      Gtk.main_quit 
    end

    vbox = Gtk::Box.new(:vertical, 5)
    self.add vbox
    label = Gtk::Label.new("Hello World")
    label.angle = 25
    label.justify = :right
    vbox.add label

    label2 = Gtk::Label.new(label:"Hello World", angle:48, justify: :right)
    vbox.add label2
    
    #button = Gtk::Button.new(label: "Button")
    #button.size_request = [80, 35]
    #button.set_tooltip_text "Button widget"
#
#    set_tooltip_text "Window widget"
#    set_default_size 250, 200
#    set_window_position Gtk::Window::POS_CENTER

    show_all
  end
end

Gtk.init
window = RubyApp.new
Gtk.main
