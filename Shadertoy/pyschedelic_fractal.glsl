vec3 hsvTorgb(vec3 c)
{
      vec4 K=vec4(1.,2./3.,1./3.,3.);
      vec3 p=abs(fract(c.xxx+K.xyz)*6.-K.www);
      return c.z*mix(K.xxx,clamp(p-K.xxx,0.,1.),c.y);
}

void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 p=(2.*fragCoord-iResolution.xy)/min(iResolution.y,iResolution.x);
      vec2 z=p;
      int iterations=100;
      float bailout=4.;
      vec3 rainbow=vec3(1.,0.,0.);
      float timeFactor=sin(iTime);
      int i;
      for(i=0;i<iterations;i++)
      {
            z=vec2(z.x*z.x-z.y*z.y,2.*z.x*z.y)+p;
            if(length(z)>bailout)
            break;
      }
      float hue=float(i)/float(iterations)+timeFactor;
      vec3 color=hsvTorgb(vec3(hue,1.,1.));
      fragColor=vec4(color,1.);
}

