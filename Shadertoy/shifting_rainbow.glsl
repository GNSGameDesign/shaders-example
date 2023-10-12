void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec3 rainbowColors[7];
      rainbowColors[0]=vec3(1.,0.,0.);// red
      rainbowColors[1]=vec3(1.,.5,0.);// orange
      rainbowColors[2]=vec3(1.,1.,0.);// yellow
      rainbowColors[3]=vec3(0.,1.,0.);// green
      rainbowColors[4]=vec3(0.,0.,1.);// blue
      rainbowColors[5]=vec3(.3,0.,.5);// indigo
      rainbowColors[6]=vec3(.5,0.,.5);// purple?
      float time=iTime;
      float rainbowCycleDuration=6.;
      float rainbowPosition=mod(time,rainbowCycleDuration)/rainbowCycleDuration;
      vec3 currentColor=rainbowColors[int(rainbowPosition*6.)];
      fragColor=vec4(currentColor,1.);
}
