//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform float dist;

void main(){
	vec2 pPos = v_vPosition.xy;
	vec2 pos = vec2(250.0, 250.0);
	vec2 dif = pPos - pos;
	
	float dis = sqrt((dif.x*dif.x) + (dif.y*dif.y));
	
	float vx = v_vPosition.x;
	float vy = v_vPosition.y;
	
	/*vec2 va = vec2(v_vTexcoord.x+dis/100000.0, v_vTexcoord.y+dis/100000.0);
	vec2 vb = vec2(v_vTexcoord.x+dis/100000.0, v_vTexcoord.y-dis/100000.0);
	vec2 vc = vec2(v_vTexcoord.x-dis/100000.0, v_vTexcoord.y+dis/100000.0);
	vec2 vd = vec2(v_vTexcoord.x-dis/100000.0, v_vTexcoord.y-dis/100000.0);
	vec4 Color2;
	if(v_vPosition.x > 250.0 && v_vPosition.y > 250.0){
		Color2 = texture2D( gm_BaseTexture, va);
	}
	if(v_vPosition.x > 250.0 && v_vPosition.y < 250.0){
		Color2 = texture2D( gm_BaseTexture, vb);
	}
	if(v_vPosition.x < 250.0 && v_vPosition.y > 250.0){
		Color2 = texture2D( gm_BaseTexture, vc);
	}
	if(v_vPosition.x < 250.0 && v_vPosition.y < 250.0){
		Color2 = texture2D( gm_BaseTexture, vd);
	}*/
	float va = v_vTexcoord.x+dis/100000.0;
	float vb = v_vTexcoord.x-dis/100000.0;
	float vc = v_vTexcoord.y+dis/100000.0;
	float vd = v_vTexcoord.y-dis/100000.0;
	vec2 col;
	vec4 Color2;
	if(v_vPosition.x > 250.0){
		col.x = va;
	}
	if(v_vPosition.x < 250.0){
		col.x = vb;
	}
	if(v_vPosition.y > 250.0){
		col.y = vc;
	}
	if(v_vPosition.y < 250.0){
		col.y = vd;
	}
	Color2 = texture2D( gm_BaseTexture, col);
	
	va = v_vTexcoord.x-dis/100000.0;
	vb = v_vTexcoord.x+dis/100000.0;
	vc = v_vTexcoord.y-dis/100000.0;
	vd = v_vTexcoord.y+dis/100000.0;
	if(v_vPosition.x > 250.0){
		col.x = va;
	}
	if(v_vPosition.x < 250.0){
		col.x = vb;
	}
	if(v_vPosition.y > 250.0){
		col.y = vc;
	}
	if(v_vPosition.y < 250.0){
		col.y = vd;
	}
	vec4 Color3 = texture2D( gm_BaseTexture, col);
	
	
	vec4 Color1 = texture2D( gm_BaseTexture, v_vTexcoord )/3.0;
	//vec4 Color2 = texture2D( gm_BaseTexture, v_vTexcoord+dis/100000.0);
	//vec4 Color3 = texture2D( gm_BaseTexture, v_vTexcoord);
	Color1 *= 2.0;
	Color2.g = 0.0;
	Color2.b = 0.0;
	Color3.r = 0.0;
		
	vec4 apply = Color1 + Color2 + Color3;
	apply.a /= 3.0;
	vec4 new_col = v_vColour * apply;
	gl_FragColor = new_col;
	//gl_FragColor.r = 0.0;
	
}

