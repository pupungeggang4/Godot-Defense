extends Node

func save_data():
    var f = FileAccess.open("user://pupungeggang4_defense_save.txt", FileAccess.WRITE)
    f.store_string(str(GVar.save))
    f.close()
    
func load_data():
    var f = FileAccess.open("user://pupungeggang4_defense_save.txt", FileAccess.READ)
    if f:
        GVar.save = JSON.parse_string(f.get_as_text())
        f.close()
    else:
        f = FileAccess.open("user://pupungeggang4_defense_save.txt", FileAccess.WRITE)
        f.store_string(str(GVar.EMPTY_SAVE))
        f.close()
        f = FileAccess.open("user://pupungeggang4_defense_save.txt", FileAccess.READ)
        GVar.save = JSON.parse_string(f.get_as_text())
        f.close()

func erase_data():
    var f = FileAccess.open("user://pupungeggang4_defense_save.txt", FileAccess.WRITE)
    f.store_string(str(GVar.EMPTY_SAVE))
    f.close()
