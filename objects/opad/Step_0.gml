if (place_meeting(x, y, owall)) {
    instance_create_layer(random_range(320, 5680), random_range(320, 5680), "Instances", opad)
    instance_destroy(self)
}
if (place_meeting(x, y, oplayer) && instance_exists(opack) && mouse_button == mb_right) {
    instance_destroy(opack)
    instance_create_layer(random_range(320, 5680), random_range(320, 5680), "Instances", opad)
    instance_create_layer(x + 80, y - 80, "Instances", ocoin)
    oplayer.holding--
    oplayer.coin++
    instance_destroy(self)
}