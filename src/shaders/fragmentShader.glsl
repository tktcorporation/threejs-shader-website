uniform float time;
varying vec3 vColor;

void main() {
    vec2 center = gl_PointCoord - 0.5;
    float dist = length(center);
    
    // Create a soft, circular point
    float strength = 1.0 - smoothstep(0.0, 0.5, dist);
    
    // Add twinkling effect
    strength *= 0.8 + 0.2 * sin(time * 5.0 + vColor.r * 10.0);
    
    gl_FragColor = vec4(vColor, strength);
}