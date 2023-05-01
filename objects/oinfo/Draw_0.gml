draw_text_transformed(oplayer.x - 800, oplayer.y - 480, oplayer.coin, 1.4, 1.4, 0)
draw_text_transformed(oplayer.x - 800, oplayer.y - 380, oplayer.holding, 1.4, 1.4, 0)
if (oplayer.shopopen) {
    draw_text_transformed(oscard.x, oscard.y + 74, oplayer.speedprice, 1.4, 1.4, 0)
    draw_text_transformed(occard.x, occard.y + 74, oplayer.capacityprice, 1.4, 1.4, 0)
}