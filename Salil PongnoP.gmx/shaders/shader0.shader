Matrix4 M4PickMatrix(GLfloat x, GLfloat y, GLfloat width, GLfloat height, GLint* viewport)
{
    float sx = viewport[2] / width;
    float sy = viewport[3] / height;
    float tx = (viewport[2] + 2.f * (viewport[0] - x)) / width;
    float ty = (viewport[3] + 2.f * (viewport[1] - y)) / height;
    Matrix4 m;
    m.col0.x = sx; m.col0.y = 0.f; m.col0.z = 0.f; m.col0.w = tx;
    m.col1.x = 0.f; m.col1.y = sy; m.col1.z = 0.f; m.col1.w = ty;
    m.col2.x = 0.f; m.col2.y = 0.f; m.col2.z = 1.f; m.col2.w = 0.f;
    m.col3.x = 0.f; m.col3.y = 0.f; m.col3.z = 0.f; m.col3.w = 1.f;
    return m;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~
