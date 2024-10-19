uniform float time;
attribute float size;
attribute vec3 color;
varying vec3 vColor;

void main() {
    vColor = color;
    vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
    gl_PointSize = size * (300.0 / -mvPosition.z);
    gl_Position = projectionMatrix * mvPosition;
    
    // Add a slight wobble effect
    gl_Position.x += sin(time * 2.0 + position.y) * 0.01;
    gl_Position.y += cos(time * 2.0 + position.x) * 0.01;
}