if (keyboard_check(ord("W"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    if (!place_meeting(x, y - vel, owall)) { y -= vel }
	dir = 0
    sprite_index = sdroneu
}
if (keyboard_check(ord("S"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    if (!place_meeting(x, y + vel, owall)) { y += vel }
	dir = 2
    sprite_index = sdroned
}
if (keyboard_check(ord("A"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    if (!place_meeting(x - vel, y, owall)) { x -= vel }
	dir = 3
    sprite_index = sdronel
}
if (keyboard_check(ord("D"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	if (!place_meeting(x + vel, y, owall)) { x += vel }
	dir = 1
    sprite_index = sdroner
}
if (mouse_button == mb_right && place_meeting(x, y, ocharge)) {
    if (holding < capacity) {
        audio_play_sound(aup, 3, false, opersistent.vol)
        instance_create_layer(x, y, "Instances", opack)
        holding++
    }
}
if (keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("F"))) {
    if (!shopopen) {
        audio_play_sound(aopen, 1, false, opersistent.vol)
        instance_create_layer(x, y, "Instances", oscard)
        instance_create_layer(x, y, "Instances", occard)
        shopopen = true
    } else {
        audio_play_sound(aopen, 1, false, opersistent.vol)
        instance_destroy(oscard)
        instance_destroy(occard)
        shopopen = false
    }
}
if (!instance_exists(opack) && holding >= 1) {
    instance_create_layer(x, y, "Instances", opack)
}