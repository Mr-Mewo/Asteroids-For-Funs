//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform float dist;

void main()
{	
	vec4 Color1 = texture2D( gm_BaseTexture, v_vTexcoord )/3.0;
	vec4 Color2 = texture2D( gm_BaseTexture, v_vTexcoord+0.002*dist/2.0 )/3.0;
	vec4 Color3 = texture2D( gm_BaseTexture, v_vTexcoord-0.002*dist/2.0 )/3.0;
	Color1 *= 2.0;
	Color2.g = 0.0;
	Color2.b = 0.0;
	Color3.r = 0.0;
		
	vec4 new_col = v_vColour * (Color1 + Color2 + Color3);
	gl_FragColor = new_col;
	
}
