use xc.os/Argv

@main
fn main() {
  applet := Argv[0] ?? ""
  dispatch(applet)
}

fn dispatch(applet str) {
  match applet {
    "true" -> applet_true()
    "false" -> applet_false()
    _ -> unknown_applet()
  }
}

fn applet_true() {}

fn applet_false() {
  xc.os.exitProcess(1)
}

fn unknown_applet() {
  xc.os.exitProcess(1)
}
