//------------------------------------------------------------------------------
// exampleapp.cc
// (C) 2015-2018 Individual contributors, see AUTHORS file
//------------------------------------------------------------------------------
#include "config.h"
#include "exampleapp.h"
#include <cstring>
#include "Matrix4D.h"
#include "Vector4D.h"
#include "stb_image.h"

const GLchar* vs =
"#version 430\n"
"layout(location=0) in vec3 pos;\n"
"layout(location=1) in vec4 color;\n"
"layout(location=2) in vec2 texCoord;\n"
"uniform mat4 model;\n"
"uniform mat4 view;\n"
"uniform mat4 projection;\n"
"out vec2 TexCoord;\n"
"out vec4 FragColor;\n"
"void main()\n"
"{\n"
"	gl_Position = projection * view * model * vec4(pos, 1.0);\n"
"	FragColor = color;\n"
"   TexCoord = texCoord;\n"
"}\n";

const GLchar* ps =
"#version 430\n"
"out vec4 FragColor;\n"
"in vec4 color;\n"
"in vec2 TexCoord;"
"layout(location=1) uniform sampler2D texture1;\n"
"void main()\n"
"{\n"
"	FragColor = texture(texture1, TexCoord);\n"
"}\n";

using namespace Display;
namespace Example
{

	//------------------------------------------------------------------------------
	/**
	*/
	ExampleApp::ExampleApp()
	{
		// empty
	}

	//------------------------------------------------------------------------------
	/**
	*/
	ExampleApp::~ExampleApp()
	{
		// empty
	}

	//------------------------------------------------------------------------------
	/**
	*/
	bool
		ExampleApp::Open()
	{
		App::Open();
		this->window = new Display::Window;
		window->SetKeyPressFunction([this](int32, int32, int32, int32)
		{
			this->window->Close();
		});

		

		GLfloat buf[] =
		{
			-0.5f,	-0.5f,	-1,			// pos 0
			1,		0,		0,		1,	// color 0
			0,		0.5f,	-1,			// pos 1
			0,		1,		0,		1,	// color 0
			0.5f,	-0.5f,	-1,			// pos 2
			0,		0,		1,		1	// color 0
		};
		if (this->window->Open())
		{
			// set clear color to gray
			glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
			
			// setup vertex shader
			this->vertexShader = glCreateShader(GL_VERTEX_SHADER);
			GLint length = static_cast<GLint>(std::strlen(vs));
			glShaderSource(this->vertexShader, 1, &vs, &length);
			glCompileShader(this->vertexShader);

			// get error log
			GLint shaderLogSize;
			glGetShaderiv(this->vertexShader, GL_INFO_LOG_LENGTH, &shaderLogSize);
			if (shaderLogSize > 0)
			{
				GLchar* buf = new GLchar[shaderLogSize];
				glGetShaderInfoLog(this->vertexShader, shaderLogSize, NULL, buf);
				printf("[SHADER COMPILE ERROR]: %s", buf);
				delete[] buf;
			}

			// setup pixel shader
			this->pixelShader = glCreateShader(GL_FRAGMENT_SHADER);
			length = static_cast<GLint>(std::strlen(ps));
			glShaderSource(this->pixelShader, 1, &ps, &length);
			glCompileShader(this->pixelShader);

			// get error log
			shaderLogSize;
			glGetShaderiv(this->pixelShader, GL_INFO_LOG_LENGTH, &shaderLogSize);
			if (shaderLogSize > 0)
			{
				GLchar* buf = new GLchar[shaderLogSize];
				glGetShaderInfoLog(this->pixelShader, shaderLogSize, NULL, buf);
				printf("[SHADER COMPILE ERROR]: %s", buf);
				delete[] buf;
			}

			// create a program object
			this->program = glCreateProgram();
			glAttachShader(this->program, this->vertexShader);
			glAttachShader(this->program, this->pixelShader);
			glLinkProgram(this->program);
			glGetProgramiv(this->program, GL_INFO_LOG_LENGTH, &shaderLogSize);
			if (shaderLogSize > 0)
			{
				GLchar* buf = new GLchar[shaderLogSize];
				glGetProgramInfoLog(this->program, shaderLogSize, NULL, buf);
				printf("[PROGRAM LINK ERROR]: %s", buf);
				delete[] buf;
			}

			//// setup vbo
			
			//glGenBuffers(1, &this->triangle);
			//glBindBuffer(GL_ARRAY_BUFFER, this->triangle);
			//glBufferData(GL_ARRAY_BUFFER, sizeof(buf), buf, GL_STATIC_DRAW);
			//glBindBuffer(GL_ARRAY_BUFFER, 0);
			return true;
		}
		return false;
	}

	//------------------------------------------------------------------------------
	/**
	*/
	void
		ExampleApp::Run()
	{
		glUseProgram(this->program);
		mesh.genvertexarray();
		mesh.genvertexbuffer();
		mesh.genindexbuffer();
		mesh.setattrib();
		
		tex.bindTex();
		tex.setTexParam();
		tex.texPictureData = stbi_load("./resources/container.jpg", &tex.width, &tex.height, &tex.nChannels, 0);
		if (tex.texPictureData) {
			tex.loadTex(tex.texPictureData);
			std::cout << "Hey you actually hit something" << "\n";
		}
		else {
			std::cout << stbi_failure_reason() << "\n";
			std::cout << "Nice shootin' Tex" << "\n";
		}
		stbi_image_free(tex.texPictureData);



		while (this->window->IsOpen())
		{
			glClear(GL_COLOR_BUFFER_BIT);
			this->window->Update();

			///     _             _          __  __ 
			///    | |           | |        / _|/ _|
			///  __| | ___    ___| |_ _   _| |_| |_ 
			/// / _` |/ _ \  / __| __| | | |  _|  _|
			///| (_| | (_) | \__ \ |_| |_| | | | |  
			/// \__,_|\___/  |___/\__|\__,_|_| |_|  
			

			//glBindVertexArray(mesh.vertexarray);
			//mesh.genvertexarray();
			//glActiveTexture(GL_TEXTURE0);
			//glBindTexture(GL_TEXTURE_2D, tex.texID);

			
			
			Matrix4D rotation;
			Matrix4D translation;
			Matrix4D model;
			//rotation = rotation.rotz((float)glfwGetTime() * 0.5f);
			//rotation.print();
			translation = translation.translation(Vector4D(cos(glfwGetTime()) / 5, sin(glfwGetTime() / 5), 2, 0));
			model = translation * rotation;

			Matrix4D view;
			view.translation(Vector4D(0.0, 0.0, 3.0, 0.0));

			Matrix4D projection;
			projection.perspective(0.0f, 800.0f, 0.0f, 600.0f, 0.1f, 100.0f);

			unsigned int modelLoc = glGetUniformLocation(this->program, "model");
			unsigned int viewLoc = glGetUniformLocation(this->program, "view");
			unsigned int projectionLoc = glGetUniformLocation(this->program, "projection");

			std::cout << modelLoc << "\n";

			glUniformMatrix4fv(modelLoc, 1, GL_FALSE, &model.mxarr[0][0]);
			glUniformMatrix4fv(viewLoc, 1, GL_FALSE, &view.mxarr[0][0]);
			glUniformMatrix4fv(projectionLoc, 1, GL_FALSE, &projection.mxarr[0][0]);
			glActiveTexture(GL_TEXTURE0);
			glBindTexture(GL_TEXTURE_2D, tex.texID);
			

			glBindVertexArray(mesh.vertexarray);
			glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

			/*glEnableVertexAttribArray(0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float32) * 7, NULL);
			glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(float32) * 7, (GLvoid*)(sizeof(float32) * 3));
			glDrawArrays(GL_TRIANGLES, 0, 3);
			glBindBuffer(GL_ARRAY_BUFFER, 0);*/
			//glEnableVertexAttribArray(0);

			/*glBindVertexArray(mesh.vertexarray);
			glBindBuffer(GL_ARRAY_BUFFER, mesh.vertexbuffer);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh.indexbuffer);
			glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);
			glUseProgram(this->program);*/
			
			
			/*glDrawArrays(GL_TRIANGLES, 0, 3);
			glBindBuffer(GL_ARRAY_BUFFER, 0);*/
			//
			//glBindBuffer(GL_ARRAY_BUFFER, 0);
			this->window->SwapBuffers();
		}
		glDeleteVertexArrays(1, &mesh.vertexarray);
		glDeleteBuffers(1, &mesh.vertexbuffer);
		glDeleteBuffers(1, &mesh.indexbuffer);
		glfwTerminate();
	}
}// namespace Example