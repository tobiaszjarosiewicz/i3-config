## Auto assign workspaces

1. Run app
2. Check `class` with `xprop` (click anywhere)
3. Copy second field from `xprop` output line beginning with `WM_CLASS(STRING) =`
4. Assign using syntax: \
  `assign [class="<xprop output"] <workspace number>`

Example: \
`assign [class="Pidgin"] $ws3`
