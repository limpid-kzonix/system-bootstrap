-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.jj" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.crystal" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.markdown" },
  -- import/override with your plugins folder
}
