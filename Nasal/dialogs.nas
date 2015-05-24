var EFB = gui.Dialog.new("/sim/gui/dialogs/EFB/dialog",
        "Aircraft/707-320/Systems/EFB-dlg.xml");
var Radio = gui.Dialog.new("/sim/gui/dialogs/radios/dialog",
        "Aircraft/707-320/Systems/tranceivers.xml");
var ap_settings = gui.Dialog.new("/sim/gui/dialogs/autopilot/dialog",
        "Aircraft/707-320/Systems/autopilot-dlg.xml");
var tiller_steering = gui.Dialog.new("/sim/gui/dialogs/tiller_steering/dialog",
		"Aircraft/707-320/Systems/tiller_steering.xml");
var yokechart = gui.Dialog.new("/sim/gui/dialogs/yokechart/dialog",
		"Aircraft/707-320/Systems/yokechart-dialog.xml");

var doors =
 {
 new: func(name, transit_time)
  {
  doors[name] = aircraft.door.new("sim/model/door-positions/" ~ name, transit_time);
  },
 toggle: func(name)
  {
  doors[name].toggle();
  },
 open: func(name)
  {
  doors[name].open();
  },
 close: func(name)
  {
  doors[name].close();
  },
 setpos: func(name, value)
  {
  doors[name].setpos(value);
  }
 };
doors.new("cater_pos", 30);
