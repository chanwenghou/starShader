#pragma transparent;
uniform float a = 1.0;
uniform float frequency = 0.0;
float timer = 1.0;
float brightness = 0.0;
brightness = max( ( cos(u_time) * 0.5 + sin(u_time) * 0.5 ), 0.1);
vec2 fPosition = _surface.diffuseTexcoord;
vec2 sp = -1.0 + 2.0 * fPosition;
sp *= ( 2.0 - 1.0 * 0.5 );
float r = dot(sp,sp);
float f = (0.001)/(r);

if(frequency==0.0) timer = 1.0; else timer = sin(u_time*frequency);
f = f*(abs(timer)) * a;

_output.color.rgba = vec4(f,f,f,0);
