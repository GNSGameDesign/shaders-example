void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
    float time=iTime;
    vec3 color=.5+.5*cos(time+fragCoord.xyx*vec3(1.,2.,3.));
    fragColor=vec4(color,1.);
}

