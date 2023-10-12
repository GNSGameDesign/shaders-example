float hash21(vec2 p)
{
      p=fract(p*vec2(5.3983,5.4427));
      p+=dot(p.yx,p.xy+19.19);
      return fract(p.x*p.y*95.4337);
}

float noise(vec2 p,float time)
{
      return hash21(p+time);
}

void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 p=fragCoord/iResolution.xy;
      float t=iTime;
      float n=noise(p,t);
      vec3 color=vec3(n);
      fragColor=vec4(color,1.);
}
