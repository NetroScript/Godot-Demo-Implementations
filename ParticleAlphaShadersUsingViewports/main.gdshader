shader_type canvas_item;

uniform vec4 inner_color : source_color = vec4(1.0, 0.4, 0.0, 1.0);
uniform vec4 outer_color : source_color = vec4(0.9, 0.7, 0.0, 1.0);

void fragment() {
	// Get the current alpha
	float alpha = COLOR.a;
	
	// Depending on the alpha, either show a transparent color, an inner or outer color
	if (alpha < 0.5) {
		COLOR = vec4(0.0);
	} else if (alpha >= 0.5 && alpha <= 0.7) {
		COLOR = outer_color;
	} else {
		COLOR = inner_color;
	}
}
