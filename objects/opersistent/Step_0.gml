if (keyboard_check(vk_escape)) {
    game_end()
}
if trt {
    tr = audio_play_sound(m, 0, true, opersistent.vol)
    trt = false
}