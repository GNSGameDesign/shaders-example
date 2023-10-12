void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 p=(2.*fragCoord-iResolution.xy)/min(iResolution.y,iResolution.x);
      float angle=iTime;
      mat2 rotation=mat2(cos(angle),-sin(angle),sin(angle),cos(angle));
      p*=rotation;
      float size=.5;
      float border=.03;
      float edge=size-border;
      vec3 color=vec3(1.,0.,0.);
      if(abs(p.x)<edge&&abs(p.y)<edge)
      color=vec3(1.);
      else if(abs(p.x)<size&&abs(p.y)<size)
      color=vec3(0.,0.,0.);
      fragColor=vec4(color,1.);
}
