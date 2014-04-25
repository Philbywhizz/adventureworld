return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 64,
  height = 15,
  tilewidth = 16,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "tileset15",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../res/tileset15.png",
      imagewidth = 240,
      imageheight = 32,
      properties = {},
      tiles = {
        {
          id = 0,
          properties = {
            ["type"] = "NULL"
          }
        },
        {
          id = 1,
          properties = {
            ["type"] = "BRICK"
          }
        },
        {
          id = 2,
          properties = {
            ["type"] = "WOODS"
          }
        },
        {
          id = 3,
          properties = {
            ["type"] = "MOUNTAIN1"
          }
        },
        {
          id = 4,
          properties = {
            ["type"] = "PATH"
          }
        },
        {
          id = 5,
          properties = {
            ["type"] = "SWAMP"
          }
        },
        {
          id = 6,
          properties = {
            ["type"] = "TOWN"
          }
        },
        {
          id = 7,
          properties = {
            ["type"] = "CHARACTER"
          }
        },
        {
          id = 8,
          properties = {
            ["type"] = "ICHARACTER"
          }
        },
        {
          id = 9,
          properties = {
            ["type"] = "GATE"
          }
        },
        {
          id = 10,
          properties = {
            ["type"] = "MAPEDGE"
          }
        },
        {
          id = 11,
          properties = {
            ["type"] = "PORTAL"
          }
        },
        {
          id = 12,
          properties = {
            ["type"] = "FOREST"
          }
        },
        {
          id = 13,
          properties = {
            ["type"] = "MOUNTAIN2"
          }
        },
        {
          id = 14,
          properties = {
            ["type"] = "LAMP"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Map1",
      x = 0,
      y = 0,
      width = 64,
      height = 15,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 5, 2, 2, 2, 2, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 15, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2,
        2, 5, 5, 5, 5, 5, 5, 2, 5, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 5, 2, 2, 5, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 5, 2, 2, 5, 2, 5, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 15, 2,
        2, 5, 2, 2, 2, 2, 5, 2, 5, 2, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 5, 2, 5, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 5, 5, 5, 5, 2, 5, 2, 5, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 5, 2, 5, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2,
        2, 5, 2, 2, 2, 2, 5, 2, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 15, 2, 5, 2, 5, 2, 5, 2, 2, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2,
        2, 5, 2, 5, 5, 5, 5, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 5, 2, 5, 2, 2, 5, 2, 5, 2, 2, 2, 2, 2, 2, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2,
        2, 2, 2, 5, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2,
        2, 12, 5, 5, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 5, 2, 2, 2, 5, 2, 5, 2, 2, 2, 2, 5, 2, 5, 2, 2, 2, 2, 5, 5, 5, 5, 5, 15, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 2,
        2, 2, 2, 2, 5, 5, 5, 5, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 2, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 5, 2, 5, 2,
        2, 2, 2, 2, 5, 2, 2, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 2, 5, 2, 5, 2,
        2, 5, 2, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5, 5, 2, 2, 2, 5, 2, 5, 2, 5, 2,
        2, 5, 2, 5, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 5, 2, 5, 2, 5, 2,
        2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 15, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 15, 5, 5, 5, 5, 5, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    }
  }
}