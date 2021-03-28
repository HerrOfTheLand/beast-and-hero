target("build")
  set_basename("beast_and_hero")
  set_kind("binary")
  add_files("src/*.c")
  set_warnings("everything", "error")
  set_optimize("fastest")
  set_languages("c99")
  if is_plat("linux", "macosx") then
    add_links("lua", "m", "dl")
  end

target("resources")
  set_kind("phony")
  on_build(function (target)
    os.cp("$(scriptdir)/scr", "$(buildir)/$(os)/$(arch)/$(mode)/scr")
  end)

target("beast_and_hero")
  add_deps("build", "resources")
