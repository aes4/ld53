if (place_meeting(x, y, owall)) {
    instance_create_layer(random_range(320, 5680), random_range(320, 5680), "Instances", opad)
    instance_destroy(self)
}
if (place_meeting(x, y, oplayer) && instance_exists(opack) && mouse_button == mb_right) {
    audio_play_sound(adown, 2, false, opersistent.vol)
    instance_destroy(opack)
    instance_create_layer(random_range(320, 5680), random_range(320, 5680), "Instances", opad)
    instance_create_layer(x + 80, y - 80, "Instances", ocoin)
    instance_create_layer(x + (random_range(-20, 20)), y + (random_range(-20, 20)), "Instances", odialog)
    oplayer.holding--
    oplayer.coin++
    instance_destroy(self)
}