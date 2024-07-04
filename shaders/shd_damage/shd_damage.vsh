attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] *     vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
}


/// yeah, at some point in development I wasn't gonna cheap out and use image_blend to indicate damage.
/// I can't believe it either!! - dt