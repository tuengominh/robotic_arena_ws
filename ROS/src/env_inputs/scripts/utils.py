def convert_coors(cX, cY, cZ):
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
    

