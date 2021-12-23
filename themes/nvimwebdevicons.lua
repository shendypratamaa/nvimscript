-- this is example where the function set_icon work for custom color or change default icon behaviour
-- overiding default icons 

require("nvim-web-devicons").set_icon {
  zsh = {
    icon = "",
    color = "#f11111",
    cterm_color = "65",
    name = "Zsh"
  }
}
