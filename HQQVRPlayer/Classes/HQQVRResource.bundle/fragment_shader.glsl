uniform sampler2D u_Texture;

varying lowp vec2 v_TexCoord;

void main()
{
    gl_FragColor = texture2D(u_Texture, v_TexCoord);
}
