#pragma once
#include "core/app.h"
#include "render/window.h"
#include "config.h"
class TextureResource {
public:

	TextureResource() {
		width = 0;
		height = 0;
		nChannels = 0;

	}


	float texData[12]{
		0.5f,	0.5f,	0.0f,			// top right
		0.5f,  -0.5f,	0.0f,			// bottom right
	   -0.5f,  -0.5f,	0.0f,			// bottom left
	   -0.5f,	0.5f,	0.0f,			// top left
	};

	float borderColor[4] = { 1.0f, 1.0f, 0.0f, 1.0f };

	void setTexParam();
	void bindTex();
	void loadTex(unsigned char* texData);

	int width;
	int height;
	int nChannels;

	unsigned int texID;
	unsigned char* texPictureData;
	
};
