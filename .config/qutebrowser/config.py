# search engines and start page
#-------------------------------------------------------------------------------
c.url.searchengines = { 
         "DEFAULT": "https://duckduckgo.com/?q={}",
         "r"      : "https://reddit.com/r/{}",
         "g"      : "https://google.com/search?q={}",
         "aw"     : "https://wiki.archlinux.org/index.php/{}",
         "w"      : "https://en.wikipedia.org/wiki/{}",
         "js"     : "https://jisho.org/search/{}",
         "leo"    : "https://dict.leo.org/german-english/{}",
         "y"      : "https://youtube.com/results?search_query={}" }

# bindings
#-------------------------------------------------------------------------------
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {url}')
config.bind(';M', 'hint --rapid links spawn mpv {url}')

# tab behavior
#-------------------------------------------------------------------------------
c.tabs.indicator.width = 0
c.tabs.last_close = "close"
c.tabs.show = "switching"
c.tabs.position = "left"
c.tabs.show_switching_delay = 1500
c.tabs.width = 35
c.tabs.padding = {"bottom": 7, "left": 5, "right": 3, "top": 7}
c.statusbar.show = "in-mode"
c.completion.shrink = True
c.scrolling.bar = "never"

# colors
#-------------------------------------------------------------------------------
base00 = "#1d2021"
base01 = "#3c3836"
base02 = "#504945"
base03 = "#665c54"
base04 = "#bdae93"
base05 = "#d5c4a1"
base06 = "#ebdbb2"
base07 = "#fbf1c7"
base08 = "#fb4934"
base09 = "#fe8019"
base0A = "#fabd2f"
base0B = "#b8bb26"
base0C = "#8ec07c"
base0D = "#83a598"
base0E = "#d3869b"
base0F = "#d65d0e"
purple = "#8f3f71"
c.colors.completion.fg = base05
c.colors.completion.odd.bg = base00
c.colors.completion.even.bg = base00
c.colors.completion.category.fg = base0B
c.colors.completion.category.bg = base00
c.colors.completion.category.border.top = base01
c.colors.completion.category.border.bottom = base00
c.colors.completion.item.selected.fg = base00
c.colors.completion.item.selected.bg = base05
c.colors.completion.item.selected.border.top = base02
c.colors.completion.item.selected.border.bottom = base02
c.colors.completion.item.selected.match.fg = base08
c.colors.completion.match.fg = base0B
c.colors.completion.scrollbar.fg = base05
c.colors.completion.scrollbar.bg = base00
c.colors.contextmenu.disabled.bg = base01
c.colors.contextmenu.disabled.fg = base04
c.colors.contextmenu.menu.bg = base00
c.colors.contextmenu.menu.fg =  base05
c.colors.contextmenu.selected.bg = base02
c.colors.contextmenu.selected.fg = base05
c.colors.downloads.bar.bg = base00
c.colors.downloads.start.fg = base00
c.colors.downloads.start.bg = base0D
c.colors.downloads.stop.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.error.fg = base08
c.colors.hints.fg = base00
c.colors.hints.bg = purple
c.colors.hints.match.fg = base05
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = base00
c.colors.messages.error.fg = base00
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.warning.fg = base00
c.colors.messages.warning.bg = base0E
c.colors.messages.warning.border = base0E
c.colors.messages.info.fg = base05
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00
c.colors.prompts.fg = base05
c.colors.prompts.border = base00
c.colors.prompts.bg = base00
c.colors.prompts.selected.bg = base02
c.colors.statusbar.normal.fg = base0B
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.insert.fg = base00
c.colors.statusbar.insert.bg = base0D
c.colors.statusbar.passthrough.fg = base00
c.colors.statusbar.passthrough.bg = base0C
c.colors.statusbar.private.fg = base00
c.colors.statusbar.private.bg = base01
c.colors.statusbar.command.fg = base05
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.private.fg = base05
c.colors.statusbar.command.private.bg = base00
c.colors.statusbar.caret.fg = base00
c.colors.statusbar.caret.bg = base0E
c.colors.statusbar.caret.selection.fg = base00
c.colors.statusbar.caret.selection.bg = base0D
c.colors.statusbar.progress.bg = base0D
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.error.fg = base08
c.colors.statusbar.url.hover.fg = base05
c.colors.statusbar.url.success.http.fg = base0C
c.colors.statusbar.url.success.https.fg = base00
c.colors.statusbar.url.warn.fg = base0E
c.colors.tabs.bar.bg = base00
c.colors.tabs.indicator.start = base0D
c.colors.tabs.indicator.stop = base0C
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = base05
c.colors.tabs.odd.bg = base01
c.colors.tabs.even.fg = base05
c.colors.tabs.even.bg = base01
c.colors.tabs.pinned.even.bg = base0C
c.colors.tabs.pinned.even.fg = base07
c.colors.tabs.pinned.odd.bg = base0B
c.colors.tabs.pinned.odd.fg = base07
c.colors.tabs.pinned.selected.even.bg = base02
c.colors.tabs.pinned.selected.even.fg = base05
c.colors.tabs.pinned.selected.odd.bg = base02
c.colors.tabs.pinned.selected.odd.fg = base05
c.colors.tabs.selected.odd.fg = base00
c.colors.tabs.selected.odd.bg = base04
c.colors.tabs.selected.even.fg = base00
c.colors.tabs.selected.even.bg = base04
