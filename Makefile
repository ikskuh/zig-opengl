REGISTRY=OpenGL-Registry/xml/gl.xml

all: \
		 exports/gl_1v1.zig \
		 exports/gl_1v2.zig \
		 exports/gl_1v3.zig \
		 exports/gl_1v4.zig \
		 exports/gl_1v5.zig \
		 exports/gl_2v0.zig \
		 exports/gl_2v1.zig \
		 exports/gl_3v0.zig \
		 exports/gl_3v1.zig \
		 exports/gl_3v2.zig \
		 exports/gl_3v3.zig \
     exports/gl_4v0.zig \
		 exports/gl_4v2.zig \
		 exports/gl_4v3.zig \
		 exports/gl_4v4.zig \
		 exports/gl_4v5.zig \
		 exports/gl_4v6.zig

exports/gl_%.zig: generator.exe $(REGISTRY)
	mono generator.exe $(REGISTRY) $@ GL_VERSION_$(subst exports/gl_,,$(subst v,_,${@:.zig=})) 
	zig fmt $@

generator.exe: src/main.cs
	csc /debug:full "/out:$@" /r:System.Xml.Serialization.dll $^