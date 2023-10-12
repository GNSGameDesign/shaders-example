void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
      vec2 resolution=iResolution.xy;
      float aspectRatio=resolution.x/resolution.y;
      float time=iTime;
      vec2 p=(2.*fragCoord-resolution)/min(resolution.y,resolution.x)+vec2(0.,-.5);
      float zoom=2.;
      p.x/=zoom;
      p.y/=zoom;
      p+=vec2(0.,-.5);
      float zoomSpeed=.2;
      p=p*cos(time*zoomSpeed)+p*sin(time*zoomSpeed)*1.5;
      p+=vec2(.5,.5);
      // mandelbrot
      vec2 z=p;
      int iter=0;
      int maxIter=100;
      for(;iter<maxIter;++iter)
      {
            z=vec2(z.x*z.x-z.y*z.y,2.*z.x*z.y)+p;
            if(length(z)>2.)
            break;
      }
      float color=float(iter)/float(maxIter);
      fragColor=vec4(vec3(color),1.);
}
