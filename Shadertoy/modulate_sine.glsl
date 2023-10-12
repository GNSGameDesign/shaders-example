void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      // thanks to shaderbook
      vec2 p=(2.*fragCoord-iResolution.xy)/min(iResolution.y,iResolution.x);
      float amplitude=1.;
      float frequency=1.;
      float x=p.x;
      float y=sin(x*frequency);
      float t=.01*(-iTime*130.);
      y+=sin(x*frequency*2.1+t)*4.5;
      y+=sin(x*frequency*1.72+t*1.121)*4.;
      y+=sin(x*frequency*2.221+t*.437)*5.;
      y+=sin(x*frequency*3.1122+t*4.269)*2.5;
      y*=amplitude*.06;
      fragColor=vec4(vec3(y),1.);
}
