void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 resolution=iResolution.xy;
      float frequency=4.;
      float amplitude=.5;
      float time=iTime;
      float x=fragCoord.x/resolution.x;
      float y=.5+amplitude*sin(6.2832*frequency*(x-.5-.1*time));
      fragColor=vec4(vec3(y),1.);
}
