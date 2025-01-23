//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float rcolor;
uniform float gcolor;
uniform float bcolor;

void main(){
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    gl_FragColor.r = rcolor;
    gl_FragColor.g = gcolor;
    gl_FragColor.b = bcolor;
    
}