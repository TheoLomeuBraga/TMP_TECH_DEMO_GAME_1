require("TMP_libs.TMP_objects")
require("TMP_libs.TMP_core")
layers_table = {}
function layers_table:new()
    ret = {}
    ret.camera = {}
    ret.back_ground_image = {}
    ret.back_ground_3D = {}
    ret.back_ground_cenary = {}
    ret.cenary = {}
    ret.charter = {}
    ret.top = {}
    ret.hud = {}
    function ret:create()
        self.camera = game_object:new(create_object())
        self.back_ground_image = game_object:new(create_object())
        self.back_ground_3D = game_object:new(create_object())
        self.back_ground_cenary = game_object:new(create_object())
        self.cenary = game_object:new(create_object())
        self.charter = game_object:new(create_object())
        self.top = game_object:new(create_object())
        self.hud = game_object:new(create_object())
    end
    return ret
end