#pragma once
#include <vector>
#include "Matrix4D.h"
#include "Vector4D.h"
#include "core/app.h"
#include "render/window.h"
#include "config.h"
class MeshResource {
public:
	MeshResource() {
	}

	~MeshResource() {
	}

	float bufferdata[32]{
		// pos            // colors           // tex coords
	 0.5f,  0.5f, 0.0f,   1.0f, 0.0f, 0.0f,   1.0f, 1.0f, // top right
	 0.5f, -0.5f, 0.0f,   0.0f, 1.0f, 0.0f,   1.0f, 0.0f, // bottom right
	-0.5f, -0.5f, 0.0f,   0.0f, 0.0f, 1.0f,   0.0f, 0.0f, // bottom left
	-0.5f,  0.5f, 0.0f,   1.0f, 1.0f, 0.0f,   0.0f, 1.0f  // top left

	
	};

	unsigned int indicies[6]{
		0,1,3, //first triangle 
		1,2,3  //secound triangle
	};


	unsigned int vertexarray;
	unsigned int vertexbuffer;
	unsigned int indexbuffer;

	void setattrib();

	void genvertexarray();

	void genvertexbuffer();

	void genindexbuffer();

};