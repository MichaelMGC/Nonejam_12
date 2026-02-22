raw_self()
draw_set_font(fnt_menu)
// alinhar texto
draw_set_halign(1)
draw_set_valign(1)
draw_set_colour(c_white)

// alterando tamanho do texto
draw_text_transformed(x,y, texto,size,size,0)
// resetando o draw set
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)