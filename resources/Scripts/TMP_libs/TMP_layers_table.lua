require("TMP_libs.TMP_objects")
require("TMP_libs.TMP_core")
layers_table = {}
function layers_table:new()
    ret = {}
    ret.camera = ""
    ret.background_image = ""
    ret.background_3D = ""
    ret.background_cenary = ""
    ret.cenary = ""
    ret.charter = ""
    ret.top = ""
    ret.hud = ""
    function ret:create_2D_layer()
        self.camera = create_object()
        self.background_image = create_object()
        self.background_3D = create_object()
        self.background_cenary = create_object()
        self.cenary = create_object()
        self.charter = create_object()
        self.top = create_object()
        self.hud = create_object()
    end
    return ret
end