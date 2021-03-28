#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

extern int
main(void) {
  const char *lang = getenv("LANG");

  char langfilepath[] = "scr/lang/xx_XX.lua";
  memcpy(&langfilepath[9], lang, 5);

  FILE *langscript = fopen(langfilepath, "r");
  if (langscript) { // File exists
    fclose(langscript);
  } else {
    memcpy(&langfilepath[9], "en_US", 5);
  }

  lua_State *L = luaL_newstate();
  luaL_openlibs(L);

  if (luaL_dofile(L, langfilepath) != LUA_OK) {
    puts(lua_tostring(L, -1));
    lua_close(L);
    return 1;
  }

  if (luaL_dofile(L, "scr/main.lua") != LUA_OK) {
    puts(lua_tostring(L, -1));
    lua_close(L);
    return 1;
  }

  lua_close(L);
  return 0;
}
