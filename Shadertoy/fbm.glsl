float random(in vec2 st)
{
      return fract(sin(dot(st.xy,vec2(12.9898,78.233)))*43758.5453123);
}

// Based on Morgan McGuire @morgan3d
// https://www.shadertoy.com/view/4dS3Wd
float noise(in vec2 st)
{
      vec2 i=floor(st);
      vec2 f=fract(st);
      float a=random(i);
      float b=random(i+vec2(1.,0.));
      float c=random(i+vec2(0.,1.));
      float d=random(i+vec2(1.,1.));

      vec2 u=f*f*(3.-2.*f);

      return mix(a,b,u.x)+
      (c-a)*u.y*(1.-u.x)+
      (d-b)*u.x*u.y;
}

#define OCTAVES 6
float fbm(in vec2 st)
{
      float value=0.;
      float amplitude=.5;
      float frequency=0.;
      for(int i=0;i<OCTAVES;i++){
            value+=amplitude*noise(st);
            st*=2.;
            amplitude*=.5;
      }
      return value;
}

void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 st=fragCoord/iResolution.xy;
      st.x*=iResolution.x/iResolution.y;

      vec3 color=vec3(0.);
      color+=fbm(st*3.);

      fragColor=vec4(color,1.);
}
