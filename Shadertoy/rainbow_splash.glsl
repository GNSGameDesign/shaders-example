void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec3 rainbowColors[7];
      rainbowColors[0]=vec3(1.,0.,0.);// red
      rainbowColors[1]=vec3(1.,.5,0.);// orange
      rainbowColors[2]=vec3(1.,1.,0.);// yellow
      rainbowColors[3]=vec3(0.,1.,0.);// green
      rainbowColors[4]=vec3(0.,0.,1.);// blue
      rainbowColors[5]=vec3(.5,0.,1.);// indigo
      rainbowColors[6]=vec3(1.,0.,1.);// violet
      vec2 p=(2.*fragCoord-iResolution.xy)/min(iResolution.y,iResolution.x);
      float angle=atan(p.y,p.x);
      float normalizedAngle=(angle+3.14159265359)/(2.*3.14159265359);
      int colorIndex=int(mod(normalizedAngle*7.,7.));
      fragColor=vec4(rainbowColors[colorIndex],1.);
}
