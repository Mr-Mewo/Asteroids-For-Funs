varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

vec2 sz = vec2(500., 500.);

void main(){
	vec4 new_color = v_vColour * texture2D( gm_BaseTexture, vec2(v_vTexcoord.x, 
																v_vTexcoord.y + 
																pow( (v_vPosition.x - sz.x / 2.0) / 100.0, 2.0) 
																/ (sz.y / 2.0 - v_vPosition.y) / 1.) );
	
    gl_FragColor = new_color;
}
