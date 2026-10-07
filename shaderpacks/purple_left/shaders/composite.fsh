#version 150

uniform sampler2D colortex0;

in vec2 texCoord;

out vec4 fragColor;

void main() {
    vec4 color = texture(colortex0, texCoord);

    if (texCoord.x < 0.5) {
        color.rgb *= vec3(0.35, 0.05, 0.45);
    }

    fragColor = color;
}
