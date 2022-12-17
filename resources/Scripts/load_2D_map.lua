require("TMP_libs.TMP_core")
require("TMP_libs.TMP_objects")
require("TMP_libs.TMP_stystems")
require("TMP_libs.TMP_input")
require("math")
require("io")
json = require "libs.json"

function load_2D_map(tile_map_path,tile_set_path,tile_set_images_folder,father_object)
    ret = {map_info={},map_object=""}

    --info
    file = assert(io.open(tile_map_path, "rb"))
    file_content = file:read("*all")
    file:close()
    print(file_content)
    ret.map_info = json.decode(file_content)

    --object
    map_obj_ptr = ""
    if father_object ~= "" then
        map_obj_ptr = create_object(father_object)
    else
        map_obj_ptr = create_object()
    end
    ret.map_object = game_object:new(map_obj_ptr)
    ret.map_object:add_component(components.transform)
    ret.map_object:add_component(components.render_tile_map)
    ret.map_object.components[components.render_tile_map].render_only_tilemap_layer = 0
    ret.map_object.components[components.render_tile_map].tile_map_local = tile_map_path
    ret.map_object.components[components.render_tile_map].tile_set_local = tile_set_path
    ret.map_object.components[components.render_tile_map].tile_set_image_folder = tile_set_images_folder
    ret.map_object.components[components.render_tile_map].material.shader = "resources/Shaders/sprite"
    ret.map_object.components[components.render_tile_map]:set()

    

    return ret
end

