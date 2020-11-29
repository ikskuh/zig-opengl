



all: gl_3v3.zig

gl_3v3.zig: generator.exe
	mono generator.exe /home/felix/projects/OpenGL-Registry/xml/gl.xml $@ GL_VERSION_3_3 GL_ARB_direct_state_access

generator.exe: src/main.cs
	csc /debug:full "/out:$@" /r:System.Xml.Serialization.dll $^