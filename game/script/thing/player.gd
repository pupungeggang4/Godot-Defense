extends Node2D

var level_gen: int = 1
var level_gen_max: int = 5
var energy = 2.0
var energy_max = 6.0
var energy_upgrade = 5
var energy_gen_speed = 1.0
var life = 20
var life_max = 20

var level

func _process(delta):
    if GVar.menu == false:
        if GVar.state == 'battle':
            energy_gen(delta)
    
func energy_gen(delta):
    energy += energy_gen_speed * delta
    if energy > energy_max:
        energy = energy_max

func upgrade():
    if level_gen < level_gen_max and energy >= energy_upgrade:
        energy -= energy_upgrade
        energy_gen_speed += 0.1
        energy_max += 2.0
        energy_upgrade += 2
        level_gen += 1
