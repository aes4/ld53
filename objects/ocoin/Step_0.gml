if start < length {
    y -= 4
    x += 1.5
    start++
} else {
    instance_destroy(self)
}