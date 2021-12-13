local iron = require('iron')

iron.core.add_repl_definitions {
  python = {
    mycustom = {
      command = {"mycmd"}
    }
  }
}

iron.core.set_config {
  repl_open_cmd = 'rightbelow 25 split',
  preferred = {
    python = "ipython"
  }
}
