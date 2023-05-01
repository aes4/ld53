draw_text_transformed(camera_get_view_x(view_get_camera(0)) + 140, camera_get_view_y(view_get_camera(0)) + 60, oplayer.coin, 1.4, 1.4, 0)
draw_text_transformed(camera_get_view_x(view_get_camera(0)) + 140, camera_get_view_y(view_get_camera(0)) + 160, oplayer.holding, 1.4, 1.4, 0)
if (oplayer.shopopen) {
    draw_text_transformed(oscard.x, oscard.y + 74, oplayer.speedprice, 1.4, 1.4, 0)
    draw_text_transformed(occard.x, occard.y + 74, oplayer.capacityprice, 1.4, 1.4, 0)
}