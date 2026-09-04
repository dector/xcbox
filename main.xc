@main
fn main() {
  match xc.os.Args[0] ?? "" {
    "true" -> applet_true()
    "false" -> applet_false()
    _ -> xc.os.exitProcess(1)
  }
}

fn applet_true() {}

fn applet_false() {
  xc.os.exitProcess(1)
}
