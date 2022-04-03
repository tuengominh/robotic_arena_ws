def init_markers():
    robot_markerId = "0"
    food_markerIds = ["100", "101", "102", "103", "104"]  # list all markers used as food  
    water_markerIds = ["110", "111", "112", "113", "114"]  # list all markers used as water
    return robot_markerId, food_markerIds, water_markerIds

def convert_coors(cX, cY, cZ):
    # TODO: re-calibrate
    min_x = -540
    max_x = 200
    min_y = -880
    max_y = 260
    
    x = cX
    y = cY
    z = cZ
    
    x = max_x if x > max_x else x
    x = min_x if x < min_x else x
    y = max_y if y > max_y else y
    y = min_y if y < min_y else y
    
    x = map_val(x, max_x, min_x, 0, max_x - min_x)
    y = map_val(y, max_y, min_y, 0, max_y - min_y)  
    
    return x, y, z
    
def map_val(value, istart, istop, ostart, ostop):
    return ostart + (ostop - ostart) * ((value - istart) / (istop - istart))
    

