#include "TextureResource.h"


// sets all texture parameters
void TextureResource::setTexParam() {
	//texture wrapping
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
}

///binds the textures and sets a id
void TextureResource::bindTex() {
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);
	

}
///takes texture data from stbi and generates mipmaps
void TextureResource::loadTex(unsigned char* texData) {
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, texData);
	glGenerateMipmap(GL_TEXTURE_2D);
}

