const std = @import("std");
const log = std.log.scoped(.OpenGL);

pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLbyte = i8;
pub const GLubyte = u8;
pub const GLshort = i16;
pub const GLushort = u16;
pub const GLint = c_int;
pub const GLuint = c_uint;
pub const GLclampx = i32;
pub const GLsizei = c_int;
pub const GLfloat = f32;
pub const GLclampf = f32;
pub const GLdouble = f64;
pub const GLclampd = f64;
pub const GLeglClientBufferEXT = void;
pub const GLeglImageOES = void;
pub const GLchar = u8;
pub const GLcharARB = u8;

pub const GLhandleARB = if (std.builtin.os.tag == .macos) *c_void else c_uint;

pub const GLhalf = u16;
pub const GLhalfARB = u16;
pub const GLfixed = i32;
pub const GLintptr = usize;
pub const GLintptrARB = usize;
pub const GLsizeiptr = isize;
pub const GLsizeiptrARB = isize;
pub const GLint64 = i64;
pub const GLint64EXT = i64;
pub const GLuint64 = u64;
pub const GLuint64EXT = u64;

pub const GLsync = *opaque {};

pub const _cl_context = opaque {};
pub const _cl_event = opaque {};

pub const GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;
pub const GLDEBUGPROCARB = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;
pub const GLDEBUGPROCKHR = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;

pub const GLDEBUGPROCAMD = fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = fn () callconv(.C) void;

pub const DEPTH_BUFFER_BIT = 0x00000100;
pub const STENCIL_BUFFER_BIT = 0x00000400;
pub const COLOR_BUFFER_BIT = 0x00004000;
pub const FALSE = 0;
pub const TRUE = 1;
pub const POINTS = 0x0000;
pub const LINES = 0x0001;
pub const LINE_LOOP = 0x0002;
pub const LINE_STRIP = 0x0003;
pub const TRIANGLES = 0x0004;
pub const TRIANGLE_STRIP = 0x0005;
pub const TRIANGLE_FAN = 0x0006;
pub const ZERO = 0;
pub const ONE = 1;
pub const SRC_COLOR = 0x0300;
pub const ONE_MINUS_SRC_COLOR = 0x0301;
pub const SRC_ALPHA = 0x0302;
pub const ONE_MINUS_SRC_ALPHA = 0x0303;
pub const DST_ALPHA = 0x0304;
pub const ONE_MINUS_DST_ALPHA = 0x0305;
pub const DST_COLOR = 0x0306;
pub const ONE_MINUS_DST_COLOR = 0x0307;
pub const SRC_ALPHA_SATURATE = 0x0308;
pub const FUNC_ADD = 0x8006;
pub const BLEND_EQUATION = 0x8009;
pub const BLEND_EQUATION_RGB = 0x8009;
pub const BLEND_EQUATION_ALPHA = 0x883D;
pub const FUNC_SUBTRACT = 0x800A;
pub const FUNC_REVERSE_SUBTRACT = 0x800B;
pub const BLEND_DST_RGB = 0x80C8;
pub const BLEND_SRC_RGB = 0x80C9;
pub const BLEND_DST_ALPHA = 0x80CA;
pub const BLEND_SRC_ALPHA = 0x80CB;
pub const CONSTANT_COLOR = 0x8001;
pub const ONE_MINUS_CONSTANT_COLOR = 0x8002;
pub const CONSTANT_ALPHA = 0x8003;
pub const ONE_MINUS_CONSTANT_ALPHA = 0x8004;
pub const BLEND_COLOR = 0x8005;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const STREAM_DRAW = 0x88E0;
pub const STATIC_DRAW = 0x88E4;
pub const DYNAMIC_DRAW = 0x88E8;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const CURRENT_VERTEX_ATTRIB = 0x8626;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const FRONT_AND_BACK = 0x0408;
pub const TEXTURE_2D = 0x0DE1;
pub const CULL_FACE = 0x0B44;
pub const BLEND = 0x0BE2;
pub const DITHER = 0x0BD0;
pub const STENCIL_TEST = 0x0B90;
pub const DEPTH_TEST = 0x0B71;
pub const SCISSOR_TEST = 0x0C11;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const OUT_OF_MEMORY = 0x0505;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const LINE_WIDTH = 0x0B21;
pub const ALIASED_POINT_SIZE_RANGE = 0x846D;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const STENCIL_BACK_FUNC = 0x8800;
pub const STENCIL_BACK_FAIL = 0x8801;
pub const STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
pub const STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
pub const STENCIL_BACK_REF = 0x8CA3;
pub const STENCIL_BACK_VALUE_MASK = 0x8CA4;
pub const STENCIL_BACK_WRITEMASK = 0x8CA5;
pub const VIEWPORT = 0x0BA2;
pub const SCISSOR_BOX = 0x0C10;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_ALIGNMENT = 0x0D05;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const SUBPIXEL_BITS = 0x0D50;
pub const RED_BITS = 0x0D52;
pub const GREEN_BITS = 0x0D53;
pub const BLUE_BITS = 0x0D54;
pub const ALPHA_BITS = 0x0D55;
pub const DEPTH_BITS = 0x0D56;
pub const STENCIL_BITS = 0x0D57;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const GENERATE_MIPMAP_HINT = 0x8192;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const INT = 0x1404;
pub const UNSIGNED_INT = 0x1405;
pub const FLOAT = 0x1406;
pub const FIXED = 0x140C;
pub const DEPTH_COMPONENT = 0x1902;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const LUMINANCE = 0x1909;
pub const LUMINANCE_ALPHA = 0x190A;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const FRAGMENT_SHADER = 0x8B30;
pub const VERTEX_SHADER = 0x8B31;
pub const MAX_VERTEX_ATTRIBS = 0x8869;
pub const MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
pub const MAX_VARYING_VECTORS = 0x8DFC;
pub const MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
pub const MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
pub const MAX_TEXTURE_IMAGE_UNITS = 0x8872;
pub const MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
pub const SHADER_TYPE = 0x8B4F;
pub const DELETE_STATUS = 0x8B80;
pub const LINK_STATUS = 0x8B82;
pub const VALIDATE_STATUS = 0x8B83;
pub const ATTACHED_SHADERS = 0x8B85;
pub const ACTIVE_UNIFORMS = 0x8B86;
pub const ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
pub const ACTIVE_ATTRIBUTES = 0x8B89;
pub const ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
pub const SHADING_LANGUAGE_VERSION = 0x8B8C;
pub const CURRENT_PROGRAM = 0x8B8D;
pub const NEVER = 0x0200;
pub const LESS = 0x0201;
pub const EQUAL = 0x0202;
pub const LEQUAL = 0x0203;
pub const GREATER = 0x0204;
pub const NOTEQUAL = 0x0205;
pub const GEQUAL = 0x0206;
pub const ALWAYS = 0x0207;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
pub const INVERT = 0x150A;
pub const INCR_WRAP = 0x8507;
pub const DECR_WRAP = 0x8508;
pub const VENDOR = 0x1F00;
pub const RENDERER = 0x1F01;
pub const VERSION = 0x1F02;
pub const EXTENSIONS = 0x1F03;
pub const NEAREST = 0x2600;
pub const LINEAR = 0x2601;
pub const NEAREST_MIPMAP_NEAREST = 0x2700;
pub const LINEAR_MIPMAP_NEAREST = 0x2701;
pub const NEAREST_MIPMAP_LINEAR = 0x2702;
pub const LINEAR_MIPMAP_LINEAR = 0x2703;
pub const TEXTURE_MAG_FILTER = 0x2800;
pub const TEXTURE_MIN_FILTER = 0x2801;
pub const TEXTURE_WRAP_S = 0x2802;
pub const TEXTURE_WRAP_T = 0x2803;
pub const TEXTURE = 0x1702;
pub const TEXTURE_CUBE_MAP = 0x8513;
pub const TEXTURE_BINDING_CUBE_MAP = 0x8514;
pub const TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
pub const TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
pub const TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
pub const TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
pub const MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
pub const TEXTURE0 = 0x84C0;
pub const TEXTURE1 = 0x84C1;
pub const TEXTURE2 = 0x84C2;
pub const TEXTURE3 = 0x84C3;
pub const TEXTURE4 = 0x84C4;
pub const TEXTURE5 = 0x84C5;
pub const TEXTURE6 = 0x84C6;
pub const TEXTURE7 = 0x84C7;
pub const TEXTURE8 = 0x84C8;
pub const TEXTURE9 = 0x84C9;
pub const TEXTURE10 = 0x84CA;
pub const TEXTURE11 = 0x84CB;
pub const TEXTURE12 = 0x84CC;
pub const TEXTURE13 = 0x84CD;
pub const TEXTURE14 = 0x84CE;
pub const TEXTURE15 = 0x84CF;
pub const TEXTURE16 = 0x84D0;
pub const TEXTURE17 = 0x84D1;
pub const TEXTURE18 = 0x84D2;
pub const TEXTURE19 = 0x84D3;
pub const TEXTURE20 = 0x84D4;
pub const TEXTURE21 = 0x84D5;
pub const TEXTURE22 = 0x84D6;
pub const TEXTURE23 = 0x84D7;
pub const TEXTURE24 = 0x84D8;
pub const TEXTURE25 = 0x84D9;
pub const TEXTURE26 = 0x84DA;
pub const TEXTURE27 = 0x84DB;
pub const TEXTURE28 = 0x84DC;
pub const TEXTURE29 = 0x84DD;
pub const TEXTURE30 = 0x84DE;
pub const TEXTURE31 = 0x84DF;
pub const ACTIVE_TEXTURE = 0x84E0;
pub const REPEAT = 0x2901;
pub const CLAMP_TO_EDGE = 0x812F;
pub const MIRRORED_REPEAT = 0x8370;
pub const FLOAT_VEC2 = 0x8B50;
pub const FLOAT_VEC3 = 0x8B51;
pub const FLOAT_VEC4 = 0x8B52;
pub const INT_VEC2 = 0x8B53;
pub const INT_VEC3 = 0x8B54;
pub const INT_VEC4 = 0x8B55;
pub const BOOL = 0x8B56;
pub const BOOL_VEC2 = 0x8B57;
pub const BOOL_VEC3 = 0x8B58;
pub const BOOL_VEC4 = 0x8B59;
pub const FLOAT_MAT2 = 0x8B5A;
pub const FLOAT_MAT3 = 0x8B5B;
pub const FLOAT_MAT4 = 0x8B5C;
pub const SAMPLER_2D = 0x8B5E;
pub const SAMPLER_CUBE = 0x8B60;
pub const VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
pub const VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
pub const VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
pub const VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
pub const VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
pub const VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
pub const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
pub const IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
pub const IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
pub const COMPILE_STATUS = 0x8B81;
pub const INFO_LOG_LENGTH = 0x8B84;
pub const SHADER_SOURCE_LENGTH = 0x8B88;
pub const SHADER_COMPILER = 0x8DFA;
pub const SHADER_BINARY_FORMATS = 0x8DF8;
pub const NUM_SHADER_BINARY_FORMATS = 0x8DF9;
pub const LOW_FLOAT = 0x8DF0;
pub const MEDIUM_FLOAT = 0x8DF1;
pub const HIGH_FLOAT = 0x8DF2;
pub const LOW_INT = 0x8DF3;
pub const MEDIUM_INT = 0x8DF4;
pub const HIGH_INT = 0x8DF5;
pub const FRAMEBUFFER = 0x8D40;
pub const RENDERBUFFER = 0x8D41;
pub const RGBA4 = 0x8056;
pub const RGB5_A1 = 0x8057;
pub const RGB565 = 0x8D62;
pub const DEPTH_COMPONENT16 = 0x81A5;
pub const STENCIL_INDEX8 = 0x8D48;
pub const RENDERBUFFER_WIDTH = 0x8D42;
pub const RENDERBUFFER_HEIGHT = 0x8D43;
pub const RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
pub const RENDERBUFFER_RED_SIZE = 0x8D50;
pub const RENDERBUFFER_GREEN_SIZE = 0x8D51;
pub const RENDERBUFFER_BLUE_SIZE = 0x8D52;
pub const RENDERBUFFER_ALPHA_SIZE = 0x8D53;
pub const RENDERBUFFER_DEPTH_SIZE = 0x8D54;
pub const RENDERBUFFER_STENCIL_SIZE = 0x8D55;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
pub const COLOR_ATTACHMENT0 = 0x8CE0;
pub const DEPTH_ATTACHMENT = 0x8D00;
pub const STENCIL_ATTACHMENT = 0x8D20;
pub const NONE = 0;
pub const FRAMEBUFFER_COMPLETE = 0x8CD5;
pub const FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
pub const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
pub const FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;
pub const FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
pub const FRAMEBUFFER_BINDING = 0x8CA6;
pub const RENDERBUFFER_BINDING = 0x8CA7;
pub const MAX_RENDERBUFFER_SIZE = 0x84E8;
pub const INVALID_FRAMEBUFFER_OPERATION = 0x0506;
pub const READ_BUFFER = 0x0C02;
pub const UNPACK_ROW_LENGTH = 0x0CF2;
pub const UNPACK_SKIP_ROWS = 0x0CF3;
pub const UNPACK_SKIP_PIXELS = 0x0CF4;
pub const PACK_ROW_LENGTH = 0x0D02;
pub const PACK_SKIP_ROWS = 0x0D03;
pub const PACK_SKIP_PIXELS = 0x0D04;
pub const COLOR = 0x1800;
pub const DEPTH = 0x1801;
pub const STENCIL = 0x1802;
pub const RED = 0x1903;
pub const RGB8 = 0x8051;
pub const RGBA8 = 0x8058;
pub const RGB10_A2 = 0x8059;
pub const TEXTURE_BINDING_3D = 0x806A;
pub const UNPACK_SKIP_IMAGES = 0x806D;
pub const UNPACK_IMAGE_HEIGHT = 0x806E;
pub const TEXTURE_3D = 0x806F;
pub const TEXTURE_WRAP_R = 0x8072;
pub const MAX_3D_TEXTURE_SIZE = 0x8073;
pub const UNSIGNED_INT_2_10_10_10_REV = 0x8368;
pub const MAX_ELEMENTS_VERTICES = 0x80E8;
pub const MAX_ELEMENTS_INDICES = 0x80E9;
pub const TEXTURE_MIN_LOD = 0x813A;
pub const TEXTURE_MAX_LOD = 0x813B;
pub const TEXTURE_BASE_LEVEL = 0x813C;
pub const TEXTURE_MAX_LEVEL = 0x813D;
pub const MIN = 0x8007;
pub const MAX = 0x8008;
pub const DEPTH_COMPONENT24 = 0x81A6;
pub const MAX_TEXTURE_LOD_BIAS = 0x84FD;
pub const TEXTURE_COMPARE_MODE = 0x884C;
pub const TEXTURE_COMPARE_FUNC = 0x884D;
pub const CURRENT_QUERY = 0x8865;
pub const QUERY_RESULT = 0x8866;
pub const QUERY_RESULT_AVAILABLE = 0x8867;
pub const BUFFER_MAPPED = 0x88BC;
pub const BUFFER_MAP_POINTER = 0x88BD;
pub const STREAM_READ = 0x88E1;
pub const STREAM_COPY = 0x88E2;
pub const STATIC_READ = 0x88E5;
pub const STATIC_COPY = 0x88E6;
pub const DYNAMIC_READ = 0x88E9;
pub const DYNAMIC_COPY = 0x88EA;
pub const MAX_DRAW_BUFFERS = 0x8824;
pub const DRAW_BUFFER0 = 0x8825;
pub const DRAW_BUFFER1 = 0x8826;
pub const DRAW_BUFFER2 = 0x8827;
pub const DRAW_BUFFER3 = 0x8828;
pub const DRAW_BUFFER4 = 0x8829;
pub const DRAW_BUFFER5 = 0x882A;
pub const DRAW_BUFFER6 = 0x882B;
pub const DRAW_BUFFER7 = 0x882C;
pub const DRAW_BUFFER8 = 0x882D;
pub const DRAW_BUFFER9 = 0x882E;
pub const DRAW_BUFFER10 = 0x882F;
pub const DRAW_BUFFER11 = 0x8830;
pub const DRAW_BUFFER12 = 0x8831;
pub const DRAW_BUFFER13 = 0x8832;
pub const DRAW_BUFFER14 = 0x8833;
pub const DRAW_BUFFER15 = 0x8834;
pub const MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
pub const MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
pub const SAMPLER_3D = 0x8B5F;
pub const SAMPLER_2D_SHADOW = 0x8B62;
pub const FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
pub const PIXEL_PACK_BUFFER = 0x88EB;
pub const PIXEL_UNPACK_BUFFER = 0x88EC;
pub const PIXEL_PACK_BUFFER_BINDING = 0x88ED;
pub const PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
pub const FLOAT_MAT2x3 = 0x8B65;
pub const FLOAT_MAT2x4 = 0x8B66;
pub const FLOAT_MAT3x2 = 0x8B67;
pub const FLOAT_MAT3x4 = 0x8B68;
pub const FLOAT_MAT4x2 = 0x8B69;
pub const FLOAT_MAT4x3 = 0x8B6A;
pub const SRGB = 0x8C40;
pub const SRGB8 = 0x8C41;
pub const SRGB8_ALPHA8 = 0x8C43;
pub const COMPARE_REF_TO_TEXTURE = 0x884E;
pub const MAJOR_VERSION = 0x821B;
pub const MINOR_VERSION = 0x821C;
pub const NUM_EXTENSIONS = 0x821D;
pub const RGBA32F = 0x8814;
pub const RGB32F = 0x8815;
pub const RGBA16F = 0x881A;
pub const RGB16F = 0x881B;
pub const VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
pub const MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
pub const MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
pub const MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
pub const MAX_VARYING_COMPONENTS = 0x8B4B;
pub const TEXTURE_2D_ARRAY = 0x8C1A;
pub const TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
pub const R11F_G11F_B10F = 0x8C3A;
pub const UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
pub const RGB9_E5 = 0x8C3D;
pub const UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
pub const TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;
pub const TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
pub const TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
pub const TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
pub const TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
pub const TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;
pub const RASTERIZER_DISCARD = 0x8C89;
pub const MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;
pub const INTERLEAVED_ATTRIBS = 0x8C8C;
pub const SEPARATE_ATTRIBS = 0x8C8D;
pub const TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
pub const TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
pub const RGBA32UI = 0x8D70;
pub const RGB32UI = 0x8D71;
pub const RGBA16UI = 0x8D76;
pub const RGB16UI = 0x8D77;
pub const RGBA8UI = 0x8D7C;
pub const RGB8UI = 0x8D7D;
pub const RGBA32I = 0x8D82;
pub const RGB32I = 0x8D83;
pub const RGBA16I = 0x8D88;
pub const RGB16I = 0x8D89;
pub const RGBA8I = 0x8D8E;
pub const RGB8I = 0x8D8F;
pub const RED_INTEGER = 0x8D94;
pub const RGB_INTEGER = 0x8D98;
pub const RGBA_INTEGER = 0x8D99;
pub const SAMPLER_2D_ARRAY = 0x8DC1;
pub const SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
pub const SAMPLER_CUBE_SHADOW = 0x8DC5;
pub const UNSIGNED_INT_VEC2 = 0x8DC6;
pub const UNSIGNED_INT_VEC3 = 0x8DC7;
pub const UNSIGNED_INT_VEC4 = 0x8DC8;
pub const INT_SAMPLER_2D = 0x8DCA;
pub const INT_SAMPLER_3D = 0x8DCB;
pub const INT_SAMPLER_CUBE = 0x8DCC;
pub const INT_SAMPLER_2D_ARRAY = 0x8DCF;
pub const UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
pub const UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
pub const UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
pub const UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
pub const BUFFER_ACCESS_FLAGS = 0x911F;
pub const BUFFER_MAP_LENGTH = 0x9120;
pub const BUFFER_MAP_OFFSET = 0x9121;
pub const DEPTH_COMPONENT32F = 0x8CAC;
pub const DEPTH32F_STENCIL8 = 0x8CAD;
pub const FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
pub const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;
pub const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;
pub const FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;
pub const FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;
pub const FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;
pub const FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;
pub const FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;
pub const FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;
pub const FRAMEBUFFER_DEFAULT = 0x8218;
pub const FRAMEBUFFER_UNDEFINED = 0x8219;
pub const DEPTH_STENCIL_ATTACHMENT = 0x821A;
pub const DEPTH_STENCIL = 0x84F9;
pub const UNSIGNED_INT_24_8 = 0x84FA;
pub const DEPTH24_STENCIL8 = 0x88F0;
pub const UNSIGNED_NORMALIZED = 0x8C17;
pub const DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
pub const READ_FRAMEBUFFER = 0x8CA8;
pub const DRAW_FRAMEBUFFER = 0x8CA9;
pub const READ_FRAMEBUFFER_BINDING = 0x8CAA;
pub const RENDERBUFFER_SAMPLES = 0x8CAB;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
pub const MAX_COLOR_ATTACHMENTS = 0x8CDF;
pub const COLOR_ATTACHMENT1 = 0x8CE1;
pub const COLOR_ATTACHMENT2 = 0x8CE2;
pub const COLOR_ATTACHMENT3 = 0x8CE3;
pub const COLOR_ATTACHMENT4 = 0x8CE4;
pub const COLOR_ATTACHMENT5 = 0x8CE5;
pub const COLOR_ATTACHMENT6 = 0x8CE6;
pub const COLOR_ATTACHMENT7 = 0x8CE7;
pub const COLOR_ATTACHMENT8 = 0x8CE8;
pub const COLOR_ATTACHMENT9 = 0x8CE9;
pub const COLOR_ATTACHMENT10 = 0x8CEA;
pub const COLOR_ATTACHMENT11 = 0x8CEB;
pub const COLOR_ATTACHMENT12 = 0x8CEC;
pub const COLOR_ATTACHMENT13 = 0x8CED;
pub const COLOR_ATTACHMENT14 = 0x8CEE;
pub const COLOR_ATTACHMENT15 = 0x8CEF;
pub const COLOR_ATTACHMENT16 = 0x8CF0;
pub const COLOR_ATTACHMENT17 = 0x8CF1;
pub const COLOR_ATTACHMENT18 = 0x8CF2;
pub const COLOR_ATTACHMENT19 = 0x8CF3;
pub const COLOR_ATTACHMENT20 = 0x8CF4;
pub const COLOR_ATTACHMENT21 = 0x8CF5;
pub const COLOR_ATTACHMENT22 = 0x8CF6;
pub const COLOR_ATTACHMENT23 = 0x8CF7;
pub const COLOR_ATTACHMENT24 = 0x8CF8;
pub const COLOR_ATTACHMENT25 = 0x8CF9;
pub const COLOR_ATTACHMENT26 = 0x8CFA;
pub const COLOR_ATTACHMENT27 = 0x8CFB;
pub const COLOR_ATTACHMENT28 = 0x8CFC;
pub const COLOR_ATTACHMENT29 = 0x8CFD;
pub const COLOR_ATTACHMENT30 = 0x8CFE;
pub const COLOR_ATTACHMENT31 = 0x8CFF;
pub const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
pub const MAX_SAMPLES = 0x8D57;
pub const HALF_FLOAT = 0x140B;
pub const MAP_READ_BIT = 0x0001;
pub const MAP_WRITE_BIT = 0x0002;
pub const MAP_INVALIDATE_RANGE_BIT = 0x0004;
pub const MAP_INVALIDATE_BUFFER_BIT = 0x0008;
pub const MAP_FLUSH_EXPLICIT_BIT = 0x0010;
pub const MAP_UNSYNCHRONIZED_BIT = 0x0020;
pub const RG = 0x8227;
pub const RG_INTEGER = 0x8228;
pub const R8 = 0x8229;
pub const RG8 = 0x822B;
pub const R16F = 0x822D;
pub const R32F = 0x822E;
pub const RG16F = 0x822F;
pub const RG32F = 0x8230;
pub const R8I = 0x8231;
pub const R8UI = 0x8232;
pub const R16I = 0x8233;
pub const R16UI = 0x8234;
pub const R32I = 0x8235;
pub const R32UI = 0x8236;
pub const RG8I = 0x8237;
pub const RG8UI = 0x8238;
pub const RG16I = 0x8239;
pub const RG16UI = 0x823A;
pub const RG32I = 0x823B;
pub const RG32UI = 0x823C;
pub const VERTEX_ARRAY_BINDING = 0x85B5;
pub const R8_SNORM = 0x8F94;
pub const RG8_SNORM = 0x8F95;
pub const RGB8_SNORM = 0x8F96;
pub const RGBA8_SNORM = 0x8F97;
pub const SIGNED_NORMALIZED = 0x8F9C;
pub const PRIMITIVE_RESTART_FIXED_INDEX = 0x8D69;
pub const COPY_READ_BUFFER = 0x8F36;
pub const COPY_WRITE_BUFFER = 0x8F37;
pub const COPY_READ_BUFFER_BINDING = 0x8F36;
pub const COPY_WRITE_BUFFER_BINDING = 0x8F37;
pub const UNIFORM_BUFFER = 0x8A11;
pub const UNIFORM_BUFFER_BINDING = 0x8A28;
pub const UNIFORM_BUFFER_START = 0x8A29;
pub const UNIFORM_BUFFER_SIZE = 0x8A2A;
pub const MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
pub const MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
pub const MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
pub const MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
pub const MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
pub const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
pub const MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;
pub const UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;
pub const ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35;
pub const ACTIVE_UNIFORM_BLOCKS = 0x8A36;
pub const UNIFORM_TYPE = 0x8A37;
pub const UNIFORM_SIZE = 0x8A38;
pub const UNIFORM_NAME_LENGTH = 0x8A39;
pub const UNIFORM_BLOCK_INDEX = 0x8A3A;
pub const UNIFORM_OFFSET = 0x8A3B;
pub const UNIFORM_ARRAY_STRIDE = 0x8A3C;
pub const UNIFORM_MATRIX_STRIDE = 0x8A3D;
pub const UNIFORM_IS_ROW_MAJOR = 0x8A3E;
pub const UNIFORM_BLOCK_BINDING = 0x8A3F;
pub const UNIFORM_BLOCK_DATA_SIZE = 0x8A40;
pub const UNIFORM_BLOCK_NAME_LENGTH = 0x8A41;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;
pub const UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;
pub const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
pub const INVALID_INDEX = 0xFFFFFFFF;
pub const MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;
pub const MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;
pub const MAX_SERVER_WAIT_TIMEOUT = 0x9111;
pub const OBJECT_TYPE = 0x9112;
pub const SYNC_CONDITION = 0x9113;
pub const SYNC_STATUS = 0x9114;
pub const SYNC_FLAGS = 0x9115;
pub const SYNC_FENCE = 0x9116;
pub const SYNC_GPU_COMMANDS_COMPLETE = 0x9117;
pub const UNSIGNALED = 0x9118;
pub const SIGNALED = 0x9119;
pub const ALREADY_SIGNALED = 0x911A;
pub const TIMEOUT_EXPIRED = 0x911B;
pub const CONDITION_SATISFIED = 0x911C;
pub const WAIT_FAILED = 0x911D;
pub const SYNC_FLUSH_COMMANDS_BIT = 0x00000001;
pub const TIMEOUT_IGNORED = 0xFFFFFFFFFFFFFFFF;
pub const VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
pub const ANY_SAMPLES_PASSED = 0x8C2F;
pub const ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;
pub const SAMPLER_BINDING = 0x8919;
pub const RGB10_A2UI = 0x906F;
pub const TEXTURE_SWIZZLE_R = 0x8E42;
pub const TEXTURE_SWIZZLE_G = 0x8E43;
pub const TEXTURE_SWIZZLE_B = 0x8E44;
pub const TEXTURE_SWIZZLE_A = 0x8E45;
pub const GREEN = 0x1904;
pub const BLUE = 0x1905;
pub const INT_2_10_10_10_REV = 0x8D9F;
pub const TRANSFORM_FEEDBACK = 0x8E22;
pub const TRANSFORM_FEEDBACK_PAUSED = 0x8E23;
pub const TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;
pub const TRANSFORM_FEEDBACK_BINDING = 0x8E25;
pub const PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257;
pub const PROGRAM_BINARY_LENGTH = 0x8741;
pub const NUM_PROGRAM_BINARY_FORMATS = 0x87FE;
pub const PROGRAM_BINARY_FORMATS = 0x87FF;
pub const COMPRESSED_R11_EAC = 0x9270;
pub const COMPRESSED_SIGNED_R11_EAC = 0x9271;
pub const COMPRESSED_RG11_EAC = 0x9272;
pub const COMPRESSED_SIGNED_RG11_EAC = 0x9273;
pub const COMPRESSED_RGB8_ETC2 = 0x9274;
pub const COMPRESSED_SRGB8_ETC2 = 0x9275;
pub const COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;
pub const COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;
pub const COMPRESSED_RGBA8_ETC2_EAC = 0x9278;
pub const COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;
pub const TEXTURE_IMMUTABLE_FORMAT = 0x912F;
pub const MAX_ELEMENT_INDEX = 0x8D6B;
pub const NUM_SAMPLE_COUNTS = 0x9380;
pub const TEXTURE_IMMUTABLE_LEVELS = 0x82DF;

pub fn activeTexture(_texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(_texture);
}

pub fn attachShader(_program: GLuint, _shader: GLuint) void {
    return (function_pointers.glAttachShader orelse @panic("glAttachShader was not bound."))(_program, _shader);
}

pub fn bindAttribLocation(_program: GLuint, _index: GLuint, _name: [*c]const GLchar) void {
    return (function_pointers.glBindAttribLocation orelse @panic("glBindAttribLocation was not bound."))(_program, _index, _name);
}

pub fn bindBuffer(_target: GLenum, _buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(_target, _buffer);
}

pub fn bindFramebuffer(_target: GLenum, _framebuffer: GLuint) void {
    return (function_pointers.glBindFramebuffer orelse @panic("glBindFramebuffer was not bound."))(_target, _framebuffer);
}

pub fn bindRenderbuffer(_target: GLenum, _renderbuffer: GLuint) void {
    return (function_pointers.glBindRenderbuffer orelse @panic("glBindRenderbuffer was not bound."))(_target, _renderbuffer);
}

pub fn bindTexture(_target: GLenum, _texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(_target, _texture);
}

pub fn blendColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glBlendColor orelse @panic("glBlendColor was not bound."))(_red, _green, _blue, _alpha);
}

pub fn blendEquation(_mode: GLenum) void {
    return (function_pointers.glBlendEquation orelse @panic("glBlendEquation was not bound."))(_mode);
}

pub fn blendEquationSeparate(_modeRGB: GLenum, _modeAlpha: GLenum) void {
    return (function_pointers.glBlendEquationSeparate orelse @panic("glBlendEquationSeparate was not bound."))(_modeRGB, _modeAlpha);
}

pub fn blendFunc(_sfactor: GLenum, _dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(_sfactor, _dfactor);
}

pub fn blendFuncSeparate(_sfactorRGB: GLenum, _dfactorRGB: GLenum, _sfactorAlpha: GLenum, _dfactorAlpha: GLenum) void {
    return (function_pointers.glBlendFuncSeparate orelse @panic("glBlendFuncSeparate was not bound."))(_sfactorRGB, _dfactorRGB, _sfactorAlpha, _dfactorAlpha);
}

pub fn bufferData(_target: GLenum, _size: GLsizeiptr, _data: ?*const c_void, _usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(_target, _size, _data, _usage);
}

pub fn bufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const c_void) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(_target, _offset, _size, _data);
}

pub fn checkFramebufferStatus(_target: GLenum) GLenum {
    return (function_pointers.glCheckFramebufferStatus orelse @panic("glCheckFramebufferStatus was not bound."))(_target);
}

pub fn clear(_mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(_mask);
}

pub fn clearColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(_red, _green, _blue, _alpha);
}

pub fn clearDepthf(_d: GLfloat) void {
    return (function_pointers.glClearDepthf orelse @panic("glClearDepthf was not bound."))(_d);
}

pub fn clearStencil(_s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(_s);
}

pub fn colorMask(_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(_red, _green, _blue, _alpha);
}

pub fn compileShader(_shader: GLuint) void {
    return (function_pointers.glCompileShader orelse @panic("glCompileShader was not bound."))(_shader);
}

pub fn compressedTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _imageSize, _data);
}

pub fn compressedTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data);
}

pub fn copyTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void {
    return (function_pointers.glCopyTexImage2D orelse @panic("glCopyTexImage2D was not bound."))(_target, _level, _internalformat, _x, _y, _width, _height, _border);
}

pub fn copyTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage2D orelse @panic("glCopyTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _x, _y, _width, _height);
}

pub fn createProgram() GLuint {
    return (function_pointers.glCreateProgram orelse @panic("glCreateProgram was not bound."))();
}

pub fn createShader(_type: GLenum) GLuint {
    return (function_pointers.glCreateShader orelse @panic("glCreateShader was not bound."))(_type);
}

pub fn cullFace(_mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(_mode);
}

pub fn deleteBuffers(_n: GLsizei, _buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(_n, _buffers);
}

pub fn deleteFramebuffers(_n: GLsizei, _framebuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteFramebuffers orelse @panic("glDeleteFramebuffers was not bound."))(_n, _framebuffers);
}

pub fn deleteProgram(_program: GLuint) void {
    return (function_pointers.glDeleteProgram orelse @panic("glDeleteProgram was not bound."))(_program);
}

pub fn deleteRenderbuffers(_n: GLsizei, _renderbuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteRenderbuffers orelse @panic("glDeleteRenderbuffers was not bound."))(_n, _renderbuffers);
}

pub fn deleteShader(_shader: GLuint) void {
    return (function_pointers.glDeleteShader orelse @panic("glDeleteShader was not bound."))(_shader);
}

pub fn deleteTextures(_n: GLsizei, _textures: [*c]const GLuint) void {
    return (function_pointers.glDeleteTextures orelse @panic("glDeleteTextures was not bound."))(_n, _textures);
}

pub fn depthFunc(_func: GLenum) void {
    return (function_pointers.glDepthFunc orelse @panic("glDepthFunc was not bound."))(_func);
}

pub fn depthMask(_flag: GLboolean) void {
    return (function_pointers.glDepthMask orelse @panic("glDepthMask was not bound."))(_flag);
}

pub fn depthRangef(_n: GLfloat, _f: GLfloat) void {
    return (function_pointers.glDepthRangef orelse @panic("glDepthRangef was not bound."))(_n, _f);
}

pub fn detachShader(_program: GLuint, _shader: GLuint) void {
    return (function_pointers.glDetachShader orelse @panic("glDetachShader was not bound."))(_program, _shader);
}

pub fn disable(_cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(_cap);
}

pub fn disableVertexAttribArray(_index: GLuint) void {
    return (function_pointers.glDisableVertexAttribArray orelse @panic("glDisableVertexAttribArray was not bound."))(_index);
}

pub fn drawArrays(_mode: GLenum, _first: GLint, _count: GLsizei) void {
    return (function_pointers.glDrawArrays orelse @panic("glDrawArrays was not bound."))(_mode, _first, _count);
}

pub fn drawElements(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(_mode, _count, _type, _indices);
}

pub fn enable(_cap: GLenum) void {
    return (function_pointers.glEnable orelse @panic("glEnable was not bound."))(_cap);
}

pub fn enableVertexAttribArray(_index: GLuint) void {
    return (function_pointers.glEnableVertexAttribArray orelse @panic("glEnableVertexAttribArray was not bound."))(_index);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn framebufferRenderbuffer(_target: GLenum, _attachment: GLenum, _renderbuffertarget: GLenum, _renderbuffer: GLuint) void {
    return (function_pointers.glFramebufferRenderbuffer orelse @panic("glFramebufferRenderbuffer was not bound."))(_target, _attachment, _renderbuffertarget, _renderbuffer);
}

pub fn framebufferTexture2D(_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void {
    return (function_pointers.glFramebufferTexture2D orelse @panic("glFramebufferTexture2D was not bound."))(_target, _attachment, _textarget, _texture, _level);
}

pub fn frontFace(_mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(_mode);
}

pub fn genBuffers(_n: GLsizei, _buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(_n, _buffers);
}

pub fn generateMipmap(_target: GLenum) void {
    return (function_pointers.glGenerateMipmap orelse @panic("glGenerateMipmap was not bound."))(_target);
}

pub fn genFramebuffers(_n: GLsizei, _framebuffers: [*c]GLuint) void {
    return (function_pointers.glGenFramebuffers orelse @panic("glGenFramebuffers was not bound."))(_n, _framebuffers);
}

pub fn genRenderbuffers(_n: GLsizei, _renderbuffers: [*c]GLuint) void {
    return (function_pointers.glGenRenderbuffers orelse @panic("glGenRenderbuffers was not bound."))(_n, _renderbuffers);
}

pub fn genTextures(_n: GLsizei, _textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(_n, _textures);
}

pub fn getActiveAttrib(_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void {
    return (function_pointers.glGetActiveAttrib orelse @panic("glGetActiveAttrib was not bound."))(_program, _index, _bufSize, _length, _size, _type, _name);
}

pub fn getActiveUniform(_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniform orelse @panic("glGetActiveUniform was not bound."))(_program, _index, _bufSize, _length, _size, _type, _name);
}

pub fn getAttachedShaders(_program: GLuint, _maxCount: GLsizei, _count: [*c]GLsizei, _shaders: [*c]GLuint) void {
    return (function_pointers.glGetAttachedShaders orelse @panic("glGetAttachedShaders was not bound."))(_program, _maxCount, _count, _shaders);
}

pub fn getAttribLocation(_program: GLuint, _name: [*c]const GLchar) GLint {
    return (function_pointers.glGetAttribLocation orelse @panic("glGetAttribLocation was not bound."))(_program, _name);
}

pub fn getBooleanv(_pname: GLenum, _data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(_pname, _data);
}

pub fn getBufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFloatv(_pname: GLenum, _data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(_pname, _data);
}

pub fn getFramebufferAttachmentParameteriv(_target: GLenum, _attachment: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetFramebufferAttachmentParameteriv orelse @panic("glGetFramebufferAttachmentParameteriv was not bound."))(_target, _attachment, _pname, _params);
}

pub fn getIntegerv(_pname: GLenum, _data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(_pname, _data);
}

pub fn getProgramiv(_program: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetProgramiv orelse @panic("glGetProgramiv was not bound."))(_program, _pname, _params);
}

pub fn getProgramInfoLog(_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void {
    return (function_pointers.glGetProgramInfoLog orelse @panic("glGetProgramInfoLog was not bound."))(_program, _bufSize, _length, _infoLog);
}

pub fn getRenderbufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetRenderbufferParameteriv orelse @panic("glGetRenderbufferParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getShaderiv(_shader: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetShaderiv orelse @panic("glGetShaderiv was not bound."))(_shader, _pname, _params);
}

pub fn getShaderInfoLog(_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void {
    return (function_pointers.glGetShaderInfoLog orelse @panic("glGetShaderInfoLog was not bound."))(_shader, _bufSize, _length, _infoLog);
}

pub fn getShaderPrecisionFormat(_shadertype: GLenum, _precisiontype: GLenum, _range: [*c]GLint, _precision: [*c]GLint) void {
    return (function_pointers.glGetShaderPrecisionFormat orelse @panic("glGetShaderPrecisionFormat was not bound."))(_shadertype, _precisiontype, _range, _precision);
}

pub fn getShaderSource(_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _source: [*c]GLchar) void {
    return (function_pointers.glGetShaderSource orelse @panic("glGetShaderSource was not bound."))(_shader, _bufSize, _length, _source);
}

pub fn getString(_name: GLenum) ?[*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(_name);
}

pub fn getTexParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getUniformfv(_program: GLuint, _location: GLint, _params: [*c]GLfloat) void {
    return (function_pointers.glGetUniformfv orelse @panic("glGetUniformfv was not bound."))(_program, _location, _params);
}

pub fn getUniformiv(_program: GLuint, _location: GLint, _params: [*c]GLint) void {
    return (function_pointers.glGetUniformiv orelse @panic("glGetUniformiv was not bound."))(_program, _location, _params);
}

pub fn getUniformLocation(_program: GLuint, _name: [*c]const GLchar) GLint {
    return (function_pointers.glGetUniformLocation orelse @panic("glGetUniformLocation was not bound."))(_program, _name);
}

pub fn getVertexAttribfv(_index: GLuint, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetVertexAttribfv orelse @panic("glGetVertexAttribfv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribiv(_index: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribiv orelse @panic("glGetVertexAttribiv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribPointerv(_index: GLuint, _pname: GLenum, _pointer: ?*?*c_void) void {
    return (function_pointers.glGetVertexAttribPointerv orelse @panic("glGetVertexAttribPointerv was not bound."))(_index, _pname, _pointer);
}

pub fn hint(_target: GLenum, _mode: GLenum) void {
    return (function_pointers.glHint orelse @panic("glHint was not bound."))(_target, _mode);
}

pub fn isBuffer(_buffer: GLuint) GLboolean {
    return (function_pointers.glIsBuffer orelse @panic("glIsBuffer was not bound."))(_buffer);
}

pub fn isEnabled(_cap: GLenum) GLboolean {
    return (function_pointers.glIsEnabled orelse @panic("glIsEnabled was not bound."))(_cap);
}

pub fn isFramebuffer(_framebuffer: GLuint) GLboolean {
    return (function_pointers.glIsFramebuffer orelse @panic("glIsFramebuffer was not bound."))(_framebuffer);
}

pub fn isProgram(_program: GLuint) GLboolean {
    return (function_pointers.glIsProgram orelse @panic("glIsProgram was not bound."))(_program);
}

pub fn isRenderbuffer(_renderbuffer: GLuint) GLboolean {
    return (function_pointers.glIsRenderbuffer orelse @panic("glIsRenderbuffer was not bound."))(_renderbuffer);
}

pub fn isShader(_shader: GLuint) GLboolean {
    return (function_pointers.glIsShader orelse @panic("glIsShader was not bound."))(_shader);
}

pub fn isTexture(_texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(_texture);
}

pub fn lineWidth(_width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(_width);
}

pub fn linkProgram(_program: GLuint) void {
    return (function_pointers.glLinkProgram orelse @panic("glLinkProgram was not bound."))(_program);
}

pub fn pixelStorei(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(_pname, _param);
}

pub fn polygonOffset(_factor: GLfloat, _units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(_factor, _units);
}

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(_x, _y, _width, _height, _format, _type, _pixels);
}

pub fn releaseShaderCompiler() void {
    return (function_pointers.glReleaseShaderCompiler orelse @panic("glReleaseShaderCompiler was not bound."))();
}

pub fn renderbufferStorage(_target: GLenum, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glRenderbufferStorage orelse @panic("glRenderbufferStorage was not bound."))(_target, _internalformat, _width, _height);
}

pub fn sampleCoverage(_value: GLfloat, _invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(_value, _invert);
}

pub fn scissor(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(_x, _y, _width, _height);
}

pub fn shaderBinary(_count: GLsizei, _shaders: [*c]const GLuint, _binaryFormat: GLenum, _binary: ?*const c_void, _length: GLsizei) void {
    return (function_pointers.glShaderBinary orelse @panic("glShaderBinary was not bound."))(_count, _shaders, _binaryFormat, _binary, _length);
}

pub fn shaderSource(_shader: GLuint, _count: GLsizei, _string: [*c]const [*c]const GLchar, _length: [*c]const GLint) void {
    return (function_pointers.glShaderSource orelse @panic("glShaderSource was not bound."))(_shader, _count, _string, _length);
}

pub fn stencilFunc(_func: GLenum, _ref: GLint, _mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(_func, _ref, _mask);
}

pub fn stencilFuncSeparate(_face: GLenum, _func: GLenum, _ref: GLint, _mask: GLuint) void {
    return (function_pointers.glStencilFuncSeparate orelse @panic("glStencilFuncSeparate was not bound."))(_face, _func, _ref, _mask);
}

pub fn stencilMask(_mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(_mask);
}

pub fn stencilMaskSeparate(_face: GLenum, _mask: GLuint) void {
    return (function_pointers.glStencilMaskSeparate orelse @panic("glStencilMaskSeparate was not bound."))(_face, _mask);
}

pub fn stencilOp(_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(_fail, _zfail, _zpass);
}

pub fn stencilOpSeparate(_face: GLenum, _sfail: GLenum, _dpfail: GLenum, _dppass: GLenum) void {
    return (function_pointers.glStencilOpSeparate orelse @panic("glStencilOpSeparate was not bound."))(_face, _sfail, _dpfail, _dppass);
}

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _format, _type, _pixels);
}

pub fn texParameterf(_target: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glTexParameterf orelse @panic("glTexParameterf was not bound."))(_target, _pname, _param);
}

pub fn texParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glTexParameterfv orelse @panic("glTexParameterfv was not bound."))(_target, _pname, _params);
}

pub fn texParameteri(_target: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glTexParameteri orelse @panic("glTexParameteri was not bound."))(_target, _pname, _param);
}

pub fn texParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexParameteriv orelse @panic("glTexParameteriv was not bound."))(_target, _pname, _params);
}

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels);
}

pub fn uniform1f(_location: GLint, _v0: GLfloat) void {
    return (function_pointers.glUniform1f orelse @panic("glUniform1f was not bound."))(_location, _v0);
}

pub fn uniform1fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform1fv orelse @panic("glUniform1fv was not bound."))(_location, _count, _value);
}

pub fn uniform1i(_location: GLint, _v0: GLint) void {
    return (function_pointers.glUniform1i orelse @panic("glUniform1i was not bound."))(_location, _v0);
}

pub fn uniform1iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform1iv orelse @panic("glUniform1iv was not bound."))(_location, _count, _value);
}

pub fn uniform2f(_location: GLint, _v0: GLfloat, _v1: GLfloat) void {
    return (function_pointers.glUniform2f orelse @panic("glUniform2f was not bound."))(_location, _v0, _v1);
}

pub fn uniform2fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform2fv orelse @panic("glUniform2fv was not bound."))(_location, _count, _value);
}

pub fn uniform2i(_location: GLint, _v0: GLint, _v1: GLint) void {
    return (function_pointers.glUniform2i orelse @panic("glUniform2i was not bound."))(_location, _v0, _v1);
}

pub fn uniform2iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform2iv orelse @panic("glUniform2iv was not bound."))(_location, _count, _value);
}

pub fn uniform3f(_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat) void {
    return (function_pointers.glUniform3f orelse @panic("glUniform3f was not bound."))(_location, _v0, _v1, _v2);
}

pub fn uniform3fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform3fv orelse @panic("glUniform3fv was not bound."))(_location, _count, _value);
}

pub fn uniform3i(_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint) void {
    return (function_pointers.glUniform3i orelse @panic("glUniform3i was not bound."))(_location, _v0, _v1, _v2);
}

pub fn uniform3iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform3iv orelse @panic("glUniform3iv was not bound."))(_location, _count, _value);
}

pub fn uniform4f(_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat, _v3: GLfloat) void {
    return (function_pointers.glUniform4f orelse @panic("glUniform4f was not bound."))(_location, _v0, _v1, _v2, _v3);
}

pub fn uniform4fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform4fv orelse @panic("glUniform4fv was not bound."))(_location, _count, _value);
}

pub fn uniform4i(_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint, _v3: GLint) void {
    return (function_pointers.glUniform4i orelse @panic("glUniform4i was not bound."))(_location, _v0, _v1, _v2, _v3);
}

pub fn uniform4iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform4iv orelse @panic("glUniform4iv was not bound."))(_location, _count, _value);
}

pub fn uniformMatrix2fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2fv orelse @panic("glUniformMatrix2fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix3fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3fv orelse @panic("glUniformMatrix3fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix4fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4fv orelse @panic("glUniformMatrix4fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn useProgram(_program: GLuint) void {
    return (function_pointers.glUseProgram orelse @panic("glUseProgram was not bound."))(_program);
}

pub fn validateProgram(_program: GLuint) void {
    return (function_pointers.glValidateProgram orelse @panic("glValidateProgram was not bound."))(_program);
}

pub fn vertexAttrib1f(_index: GLuint, _x: GLfloat) void {
    return (function_pointers.glVertexAttrib1f orelse @panic("glVertexAttrib1f was not bound."))(_index, _x);
}

pub fn vertexAttrib1fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib1fv orelse @panic("glVertexAttrib1fv was not bound."))(_index, _v);
}

pub fn vertexAttrib2f(_index: GLuint, _x: GLfloat, _y: GLfloat) void {
    return (function_pointers.glVertexAttrib2f orelse @panic("glVertexAttrib2f was not bound."))(_index, _x, _y);
}

pub fn vertexAttrib2fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib2fv orelse @panic("glVertexAttrib2fv was not bound."))(_index, _v);
}

pub fn vertexAttrib3f(_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glVertexAttrib3f orelse @panic("glVertexAttrib3f was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttrib3fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib3fv orelse @panic("glVertexAttrib3fv was not bound."))(_index, _v);
}

pub fn vertexAttrib4f(_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void {
    return (function_pointers.glVertexAttrib4f orelse @panic("glVertexAttrib4f was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttrib4fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib4fv orelse @panic("glVertexAttrib4fv was not bound."))(_index, _v);
}

pub fn vertexAttribPointer(_index: GLuint, _size: GLint, _type: GLenum, _normalized: GLboolean, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glVertexAttribPointer orelse @panic("glVertexAttribPointer was not bound."))(_index, _size, _type, _normalized, _stride, _pointer);
}

pub fn viewport(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(_x, _y, _width, _height);
}

pub fn readBuffer(_src: GLenum) void {
    return (function_pointers.glReadBuffer orelse @panic("glReadBuffer was not bound."))(_src);
}

pub fn drawRangeElements(_mode: GLenum, _start: GLuint, _end: GLuint, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void {
    return (function_pointers.glDrawRangeElements orelse @panic("glDrawRangeElements was not bound."))(_mode, _start, _end, _count, _type, _indices);
}

pub fn texImage3D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexImage3D orelse @panic("glTexImage3D was not bound."))(_target, _level, _internalformat, _width, _height, _depth, _border, _format, _type, _pixels);
}

pub fn texSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexSubImage3D orelse @panic("glTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _pixels);
}

pub fn copyTexSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage3D orelse @panic("glCopyTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _x, _y, _width, _height);
}

pub fn compressedTexImage3D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexImage3D orelse @panic("glCompressedTexImage3D was not bound."))(_target, _level, _internalformat, _width, _height, _depth, _border, _imageSize, _data);
}

pub fn compressedTexSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexSubImage3D orelse @panic("glCompressedTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _imageSize, _data);
}

pub fn genQueries(_n: GLsizei, _ids: [*c]GLuint) void {
    return (function_pointers.glGenQueries orelse @panic("glGenQueries was not bound."))(_n, _ids);
}

pub fn deleteQueries(_n: GLsizei, _ids: [*c]const GLuint) void {
    return (function_pointers.glDeleteQueries orelse @panic("glDeleteQueries was not bound."))(_n, _ids);
}

pub fn isQuery(_id: GLuint) GLboolean {
    return (function_pointers.glIsQuery orelse @panic("glIsQuery was not bound."))(_id);
}

pub fn beginQuery(_target: GLenum, _id: GLuint) void {
    return (function_pointers.glBeginQuery orelse @panic("glBeginQuery was not bound."))(_target, _id);
}

pub fn endQuery(_target: GLenum) void {
    return (function_pointers.glEndQuery orelse @panic("glEndQuery was not bound."))(_target);
}

pub fn getQueryiv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetQueryiv orelse @panic("glGetQueryiv was not bound."))(_target, _pname, _params);
}

pub fn getQueryObjectuiv(_id: GLuint, _pname: GLenum, _params: [*c]GLuint) void {
    return (function_pointers.glGetQueryObjectuiv orelse @panic("glGetQueryObjectuiv was not bound."))(_id, _pname, _params);
}

pub fn unmapBuffer(_target: GLenum) GLboolean {
    return (function_pointers.glUnmapBuffer orelse @panic("glUnmapBuffer was not bound."))(_target);
}

pub fn getBufferPointerv(_target: GLenum, _pname: GLenum, _params: ?*?*c_void) void {
    return (function_pointers.glGetBufferPointerv orelse @panic("glGetBufferPointerv was not bound."))(_target, _pname, _params);
}

pub fn drawBuffers(_n: GLsizei, _bufs: [*c]const GLenum) void {
    return (function_pointers.glDrawBuffers orelse @panic("glDrawBuffers was not bound."))(_n, _bufs);
}

pub fn uniformMatrix2x3fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2x3fv orelse @panic("glUniformMatrix2x3fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix3x2fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3x2fv orelse @panic("glUniformMatrix3x2fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix2x4fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2x4fv orelse @panic("glUniformMatrix2x4fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix4x2fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4x2fv orelse @panic("glUniformMatrix4x2fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix3x4fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3x4fv orelse @panic("glUniformMatrix3x4fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn uniformMatrix4x3fv(_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4x3fv orelse @panic("glUniformMatrix4x3fv was not bound."))(_location, _count, _transpose, _value);
}

pub fn blitFramebuffer(_srcX0: GLint, _srcY0: GLint, _srcX1: GLint, _srcY1: GLint, _dstX0: GLint, _dstY0: GLint, _dstX1: GLint, _dstY1: GLint, _mask: GLbitfield, _filter: GLenum) void {
    return (function_pointers.glBlitFramebuffer orelse @panic("glBlitFramebuffer was not bound."))(_srcX0, _srcY0, _srcX1, _srcY1, _dstX0, _dstY0, _dstX1, _dstY1, _mask, _filter);
}

pub fn renderbufferStorageMultisample(_target: GLenum, _samples: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glRenderbufferStorageMultisample orelse @panic("glRenderbufferStorageMultisample was not bound."))(_target, _samples, _internalformat, _width, _height);
}

pub fn framebufferTextureLayer(_target: GLenum, _attachment: GLenum, _texture: GLuint, _level: GLint, _layer: GLint) void {
    return (function_pointers.glFramebufferTextureLayer orelse @panic("glFramebufferTextureLayer was not bound."))(_target, _attachment, _texture, _level, _layer);
}

pub fn mapBufferRange(_target: GLenum, _offset: GLintptr, _length: GLsizeiptr, _access: GLbitfield) ?*c_void {
    return (function_pointers.glMapBufferRange orelse @panic("glMapBufferRange was not bound."))(_target, _offset, _length, _access);
}

pub fn flushMappedBufferRange(_target: GLenum, _offset: GLintptr, _length: GLsizeiptr) void {
    return (function_pointers.glFlushMappedBufferRange orelse @panic("glFlushMappedBufferRange was not bound."))(_target, _offset, _length);
}

pub fn bindVertexArray(_array: GLuint) void {
    return (function_pointers.glBindVertexArray orelse @panic("glBindVertexArray was not bound."))(_array);
}

pub fn deleteVertexArrays(_n: GLsizei, _arrays: [*c]const GLuint) void {
    return (function_pointers.glDeleteVertexArrays orelse @panic("glDeleteVertexArrays was not bound."))(_n, _arrays);
}

pub fn genVertexArrays(_n: GLsizei, _arrays: [*c]GLuint) void {
    return (function_pointers.glGenVertexArrays orelse @panic("glGenVertexArrays was not bound."))(_n, _arrays);
}

pub fn isVertexArray(_array: GLuint) GLboolean {
    return (function_pointers.glIsVertexArray orelse @panic("glIsVertexArray was not bound."))(_array);
}

pub fn getIntegeri_v(_target: GLenum, _index: GLuint, _data: [*c]GLint) void {
    return (function_pointers.glGetIntegeri_v orelse @panic("glGetIntegeri_v was not bound."))(_target, _index, _data);
}

pub fn beginTransformFeedback(_primitiveMode: GLenum) void {
    return (function_pointers.glBeginTransformFeedback orelse @panic("glBeginTransformFeedback was not bound."))(_primitiveMode);
}

pub fn endTransformFeedback() void {
    return (function_pointers.glEndTransformFeedback orelse @panic("glEndTransformFeedback was not bound."))();
}

pub fn bindBufferRange(_target: GLenum, _index: GLuint, _buffer: GLuint, _offset: GLintptr, _size: GLsizeiptr) void {
    return (function_pointers.glBindBufferRange orelse @panic("glBindBufferRange was not bound."))(_target, _index, _buffer, _offset, _size);
}

pub fn bindBufferBase(_target: GLenum, _index: GLuint, _buffer: GLuint) void {
    return (function_pointers.glBindBufferBase orelse @panic("glBindBufferBase was not bound."))(_target, _index, _buffer);
}

pub fn transformFeedbackVaryings(_program: GLuint, _count: GLsizei, _varyings: [*c]const [*c]const GLchar, _bufferMode: GLenum) void {
    return (function_pointers.glTransformFeedbackVaryings orelse @panic("glTransformFeedbackVaryings was not bound."))(_program, _count, _varyings, _bufferMode);
}

pub fn getTransformFeedbackVarying(_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLsizei, _type: [*c]GLenum, _name: [*c]GLchar) void {
    return (function_pointers.glGetTransformFeedbackVarying orelse @panic("glGetTransformFeedbackVarying was not bound."))(_program, _index, _bufSize, _length, _size, _type, _name);
}

pub fn vertexAttribIPointer(_index: GLuint, _size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glVertexAttribIPointer orelse @panic("glVertexAttribIPointer was not bound."))(_index, _size, _type, _stride, _pointer);
}

pub fn getVertexAttribIiv(_index: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribIiv orelse @panic("glGetVertexAttribIiv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribIuiv(_index: GLuint, _pname: GLenum, _params: [*c]GLuint) void {
    return (function_pointers.glGetVertexAttribIuiv orelse @panic("glGetVertexAttribIuiv was not bound."))(_index, _pname, _params);
}

pub fn vertexAttribI4i(_index: GLuint, _x: GLint, _y: GLint, _z: GLint, _w: GLint) void {
    return (function_pointers.glVertexAttribI4i orelse @panic("glVertexAttribI4i was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttribI4ui(_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint, _w: GLuint) void {
    return (function_pointers.glVertexAttribI4ui orelse @panic("glVertexAttribI4ui was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttribI4iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI4iv orelse @panic("glVertexAttribI4iv was not bound."))(_index, _v);
}

pub fn vertexAttribI4uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI4uiv orelse @panic("glVertexAttribI4uiv was not bound."))(_index, _v);
}

pub fn getUniformuiv(_program: GLuint, _location: GLint, _params: [*c]GLuint) void {
    return (function_pointers.glGetUniformuiv orelse @panic("glGetUniformuiv was not bound."))(_program, _location, _params);
}

pub fn getFragDataLocation(_program: GLuint, _name: [*c]const GLchar) GLint {
    return (function_pointers.glGetFragDataLocation orelse @panic("glGetFragDataLocation was not bound."))(_program, _name);
}

pub fn uniform1ui(_location: GLint, _v0: GLuint) void {
    return (function_pointers.glUniform1ui orelse @panic("glUniform1ui was not bound."))(_location, _v0);
}

pub fn uniform2ui(_location: GLint, _v0: GLuint, _v1: GLuint) void {
    return (function_pointers.glUniform2ui orelse @panic("glUniform2ui was not bound."))(_location, _v0, _v1);
}

pub fn uniform3ui(_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint) void {
    return (function_pointers.glUniform3ui orelse @panic("glUniform3ui was not bound."))(_location, _v0, _v1, _v2);
}

pub fn uniform4ui(_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint, _v3: GLuint) void {
    return (function_pointers.glUniform4ui orelse @panic("glUniform4ui was not bound."))(_location, _v0, _v1, _v2, _v3);
}

pub fn uniform1uiv(_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void {
    return (function_pointers.glUniform1uiv orelse @panic("glUniform1uiv was not bound."))(_location, _count, _value);
}

pub fn uniform2uiv(_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void {
    return (function_pointers.glUniform2uiv orelse @panic("glUniform2uiv was not bound."))(_location, _count, _value);
}

pub fn uniform3uiv(_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void {
    return (function_pointers.glUniform3uiv orelse @panic("glUniform3uiv was not bound."))(_location, _count, _value);
}

pub fn uniform4uiv(_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void {
    return (function_pointers.glUniform4uiv orelse @panic("glUniform4uiv was not bound."))(_location, _count, _value);
}

pub fn clearBufferiv(_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLint) void {
    return (function_pointers.glClearBufferiv orelse @panic("glClearBufferiv was not bound."))(_buffer, _drawbuffer, _value);
}

pub fn clearBufferuiv(_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLuint) void {
    return (function_pointers.glClearBufferuiv orelse @panic("glClearBufferuiv was not bound."))(_buffer, _drawbuffer, _value);
}

pub fn clearBufferfv(_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLfloat) void {
    return (function_pointers.glClearBufferfv orelse @panic("glClearBufferfv was not bound."))(_buffer, _drawbuffer, _value);
}

pub fn clearBufferfi(_buffer: GLenum, _drawbuffer: GLint, _depth: GLfloat, _stencil: GLint) void {
    return (function_pointers.glClearBufferfi orelse @panic("glClearBufferfi was not bound."))(_buffer, _drawbuffer, _depth, _stencil);
}

pub fn getStringi(_name: GLenum, _index: GLuint) ?[*:0]const GLubyte {
    return (function_pointers.glGetStringi orelse @panic("glGetStringi was not bound."))(_name, _index);
}

pub fn copyBufferSubData(_readTarget: GLenum, _writeTarget: GLenum, _readOffset: GLintptr, _writeOffset: GLintptr, _size: GLsizeiptr) void {
    return (function_pointers.glCopyBufferSubData orelse @panic("glCopyBufferSubData was not bound."))(_readTarget, _writeTarget, _readOffset, _writeOffset, _size);
}

pub fn getUniformIndices(_program: GLuint, _uniformCount: GLsizei, _uniformNames: [*c]const [*c]const GLchar, _uniformIndices: [*c]GLuint) void {
    return (function_pointers.glGetUniformIndices orelse @panic("glGetUniformIndices was not bound."))(_program, _uniformCount, _uniformNames, _uniformIndices);
}

pub fn getActiveUniformsiv(_program: GLuint, _uniformCount: GLsizei, _uniformIndices: [*c]const GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetActiveUniformsiv orelse @panic("glGetActiveUniformsiv was not bound."))(_program, _uniformCount, _uniformIndices, _pname, _params);
}

pub fn getUniformBlockIndex(_program: GLuint, _uniformBlockName: [*c]const GLchar) GLuint {
    return (function_pointers.glGetUniformBlockIndex orelse @panic("glGetUniformBlockIndex was not bound."))(_program, _uniformBlockName);
}

pub fn getActiveUniformBlockiv(_program: GLuint, _uniformBlockIndex: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetActiveUniformBlockiv orelse @panic("glGetActiveUniformBlockiv was not bound."))(_program, _uniformBlockIndex, _pname, _params);
}

pub fn getActiveUniformBlockName(_program: GLuint, _uniformBlockIndex: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _uniformBlockName: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniformBlockName orelse @panic("glGetActiveUniformBlockName was not bound."))(_program, _uniformBlockIndex, _bufSize, _length, _uniformBlockName);
}

pub fn uniformBlockBinding(_program: GLuint, _uniformBlockIndex: GLuint, _uniformBlockBinding: GLuint) void {
    return (function_pointers.glUniformBlockBinding orelse @panic("glUniformBlockBinding was not bound."))(_program, _uniformBlockIndex, _uniformBlockBinding);
}

pub fn drawArraysInstanced(_mode: GLenum, _first: GLint, _count: GLsizei, _instancecount: GLsizei) void {
    return (function_pointers.glDrawArraysInstanced orelse @panic("glDrawArraysInstanced was not bound."))(_mode, _first, _count, _instancecount);
}

pub fn drawElementsInstanced(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void, _instancecount: GLsizei) void {
    return (function_pointers.glDrawElementsInstanced orelse @panic("glDrawElementsInstanced was not bound."))(_mode, _count, _type, _indices, _instancecount);
}

pub fn fenceSync(_condition: GLenum, _flags: GLbitfield) GLsync {
    return (function_pointers.glFenceSync orelse @panic("glFenceSync was not bound."))(_condition, _flags);
}

pub fn isSync(_sync: GLsync) GLboolean {
    return (function_pointers.glIsSync orelse @panic("glIsSync was not bound."))(_sync);
}

pub fn deleteSync(_sync: GLsync) void {
    return (function_pointers.glDeleteSync orelse @panic("glDeleteSync was not bound."))(_sync);
}

pub fn clientWaitSync(_sync: GLsync, _flags: GLbitfield, _timeout: GLuint64) GLenum {
    return (function_pointers.glClientWaitSync orelse @panic("glClientWaitSync was not bound."))(_sync, _flags, _timeout);
}

pub fn waitSync(_sync: GLsync, _flags: GLbitfield, _timeout: GLuint64) void {
    return (function_pointers.glWaitSync orelse @panic("glWaitSync was not bound."))(_sync, _flags, _timeout);
}

pub fn getInteger64v(_pname: GLenum, _data: [*c]GLint64) void {
    return (function_pointers.glGetInteger64v orelse @panic("glGetInteger64v was not bound."))(_pname, _data);
}

pub fn getSynciv(_sync: GLsync, _pname: GLenum, _count: GLsizei, _length: [*c]GLsizei, _values: [*c]GLint) void {
    return (function_pointers.glGetSynciv orelse @panic("glGetSynciv was not bound."))(_sync, _pname, _count, _length, _values);
}

pub fn getInteger64i_v(_target: GLenum, _index: GLuint, _data: [*c]GLint64) void {
    return (function_pointers.glGetInteger64i_v orelse @panic("glGetInteger64i_v was not bound."))(_target, _index, _data);
}

pub fn getBufferParameteri64v(_target: GLenum, _pname: GLenum, _params: [*c]GLint64) void {
    return (function_pointers.glGetBufferParameteri64v orelse @panic("glGetBufferParameteri64v was not bound."))(_target, _pname, _params);
}

pub fn genSamplers(_count: GLsizei, _samplers: [*c]GLuint) void {
    return (function_pointers.glGenSamplers orelse @panic("glGenSamplers was not bound."))(_count, _samplers);
}

pub fn deleteSamplers(_count: GLsizei, _samplers: [*c]const GLuint) void {
    return (function_pointers.glDeleteSamplers orelse @panic("glDeleteSamplers was not bound."))(_count, _samplers);
}

pub fn isSampler(_sampler: GLuint) GLboolean {
    return (function_pointers.glIsSampler orelse @panic("glIsSampler was not bound."))(_sampler);
}

pub fn bindSampler(_unit: GLuint, _sampler: GLuint) void {
    return (function_pointers.glBindSampler orelse @panic("glBindSampler was not bound."))(_unit, _sampler);
}

pub fn samplerParameteri(_sampler: GLuint, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glSamplerParameteri orelse @panic("glSamplerParameteri was not bound."))(_sampler, _pname, _param);
}

pub fn samplerParameteriv(_sampler: GLuint, _pname: GLenum, _param: [*c]const GLint) void {
    return (function_pointers.glSamplerParameteriv orelse @panic("glSamplerParameteriv was not bound."))(_sampler, _pname, _param);
}

pub fn samplerParameterf(_sampler: GLuint, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glSamplerParameterf orelse @panic("glSamplerParameterf was not bound."))(_sampler, _pname, _param);
}

pub fn samplerParameterfv(_sampler: GLuint, _pname: GLenum, _param: [*c]const GLfloat) void {
    return (function_pointers.glSamplerParameterfv orelse @panic("glSamplerParameterfv was not bound."))(_sampler, _pname, _param);
}

pub fn getSamplerParameteriv(_sampler: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetSamplerParameteriv orelse @panic("glGetSamplerParameteriv was not bound."))(_sampler, _pname, _params);
}

pub fn getSamplerParameterfv(_sampler: GLuint, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetSamplerParameterfv orelse @panic("glGetSamplerParameterfv was not bound."))(_sampler, _pname, _params);
}

pub fn vertexAttribDivisor(_index: GLuint, _divisor: GLuint) void {
    return (function_pointers.glVertexAttribDivisor orelse @panic("glVertexAttribDivisor was not bound."))(_index, _divisor);
}

pub fn bindTransformFeedback(_target: GLenum, _id: GLuint) void {
    return (function_pointers.glBindTransformFeedback orelse @panic("glBindTransformFeedback was not bound."))(_target, _id);
}

pub fn deleteTransformFeedbacks(_n: GLsizei, _ids: [*c]const GLuint) void {
    return (function_pointers.glDeleteTransformFeedbacks orelse @panic("glDeleteTransformFeedbacks was not bound."))(_n, _ids);
}

pub fn genTransformFeedbacks(_n: GLsizei, _ids: [*c]GLuint) void {
    return (function_pointers.glGenTransformFeedbacks orelse @panic("glGenTransformFeedbacks was not bound."))(_n, _ids);
}

pub fn isTransformFeedback(_id: GLuint) GLboolean {
    return (function_pointers.glIsTransformFeedback orelse @panic("glIsTransformFeedback was not bound."))(_id);
}

pub fn pauseTransformFeedback() void {
    return (function_pointers.glPauseTransformFeedback orelse @panic("glPauseTransformFeedback was not bound."))();
}

pub fn resumeTransformFeedback() void {
    return (function_pointers.glResumeTransformFeedback orelse @panic("glResumeTransformFeedback was not bound."))();
}

pub fn getProgramBinary(_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _binaryFormat: [*c]GLenum, _binary: ?*c_void) void {
    return (function_pointers.glGetProgramBinary orelse @panic("glGetProgramBinary was not bound."))(_program, _bufSize, _length, _binaryFormat, _binary);
}

pub fn programBinary(_program: GLuint, _binaryFormat: GLenum, _binary: ?*const c_void, _length: GLsizei) void {
    return (function_pointers.glProgramBinary orelse @panic("glProgramBinary was not bound."))(_program, _binaryFormat, _binary, _length);
}

pub fn programParameteri(_program: GLuint, _pname: GLenum, _value: GLint) void {
    return (function_pointers.glProgramParameteri orelse @panic("glProgramParameteri was not bound."))(_program, _pname, _value);
}

pub fn invalidateFramebuffer(_target: GLenum, _numAttachments: GLsizei, _attachments: [*c]const GLenum) void {
    return (function_pointers.glInvalidateFramebuffer orelse @panic("glInvalidateFramebuffer was not bound."))(_target, _numAttachments, _attachments);
}

pub fn invalidateSubFramebuffer(_target: GLenum, _numAttachments: GLsizei, _attachments: [*c]const GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glInvalidateSubFramebuffer orelse @panic("glInvalidateSubFramebuffer was not bound."))(_target, _numAttachments, _attachments, _x, _y, _width, _height);
}

pub fn texStorage2D(_target: GLenum, _levels: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glTexStorage2D orelse @panic("glTexStorage2D was not bound."))(_target, _levels, _internalformat, _width, _height);
}

pub fn texStorage3D(_target: GLenum, _levels: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei) void {
    return (function_pointers.glTexStorage3D orelse @panic("glTexStorage3D was not bound."))(_target, _levels, _internalformat, _width, _height, _depth);
}

pub fn getInternalformativ(_target: GLenum, _internalformat: GLenum, _pname: GLenum, _count: GLsizei, _params: [*c]GLint) void {
    return (function_pointers.glGetInternalformativ orelse @panic("glGetInternalformativ was not bound."))(_target, _internalformat, _pname, _count, _params);
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*c_void) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(?function_signatures.glActiveTexture, proc);
    } else {
        log.emerg("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAttachShader")) |proc| {
        function_pointers.glAttachShader = @ptrCast(?function_signatures.glAttachShader, proc);
    } else {
        log.emerg("entry point glAttachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindAttribLocation")) |proc| {
        function_pointers.glBindAttribLocation = @ptrCast(?function_signatures.glBindAttribLocation, proc);
    } else {
        log.emerg("entry point glBindAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(?function_signatures.glBindBuffer, proc);
    } else {
        log.emerg("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFramebuffer")) |proc| {
        function_pointers.glBindFramebuffer = @ptrCast(?function_signatures.glBindFramebuffer, proc);
    } else {
        log.emerg("entry point glBindFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindRenderbuffer")) |proc| {
        function_pointers.glBindRenderbuffer = @ptrCast(?function_signatures.glBindRenderbuffer, proc);
    } else {
        log.emerg("entry point glBindRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(?function_signatures.glBindTexture, proc);
    } else {
        log.emerg("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendColor")) |proc| {
        function_pointers.glBlendColor = @ptrCast(?function_signatures.glBlendColor, proc);
    } else {
        log.emerg("entry point glBlendColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquation")) |proc| {
        function_pointers.glBlendEquation = @ptrCast(?function_signatures.glBlendEquation, proc);
    } else {
        log.emerg("entry point glBlendEquation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquationSeparate")) |proc| {
        function_pointers.glBlendEquationSeparate = @ptrCast(?function_signatures.glBlendEquationSeparate, proc);
    } else {
        log.emerg("entry point glBlendEquationSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(?function_signatures.glBlendFunc, proc);
    } else {
        log.emerg("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFuncSeparate")) |proc| {
        function_pointers.glBlendFuncSeparate = @ptrCast(?function_signatures.glBlendFuncSeparate, proc);
    } else {
        log.emerg("entry point glBlendFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferData")) |proc| {
        function_pointers.glBufferData = @ptrCast(?function_signatures.glBufferData, proc);
    } else {
        log.emerg("entry point glBufferData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferSubData")) |proc| {
        function_pointers.glBufferSubData = @ptrCast(?function_signatures.glBufferSubData, proc);
    } else {
        log.emerg("entry point glBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCheckFramebufferStatus")) |proc| {
        function_pointers.glCheckFramebufferStatus = @ptrCast(?function_signatures.glCheckFramebufferStatus, proc);
    } else {
        log.emerg("entry point glCheckFramebufferStatus not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(?function_signatures.glClear, proc);
    } else {
        log.emerg("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColor")) |proc| {
        function_pointers.glClearColor = @ptrCast(?function_signatures.glClearColor, proc);
    } else {
        log.emerg("entry point glClearColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthf")) |proc| {
        function_pointers.glClearDepthf = @ptrCast(?function_signatures.glClearDepthf, proc);
    } else {
        log.emerg("entry point glClearDepthf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(?function_signatures.glClearStencil, proc);
    } else {
        log.emerg("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(?function_signatures.glColorMask, proc);
    } else {
        log.emerg("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompileShader")) |proc| {
        function_pointers.glCompileShader = @ptrCast(?function_signatures.glCompileShader, proc);
    } else {
        log.emerg("entry point glCompileShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(?function_signatures.glCompressedTexImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(?function_signatures.glCompressedTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(?function_signatures.glCopyTexImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(?function_signatures.glCopyTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateProgram")) |proc| {
        function_pointers.glCreateProgram = @ptrCast(?function_signatures.glCreateProgram, proc);
    } else {
        log.emerg("entry point glCreateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateShader")) |proc| {
        function_pointers.glCreateShader = @ptrCast(?function_signatures.glCreateShader, proc);
    } else {
        log.emerg("entry point glCreateShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(?function_signatures.glCullFace, proc);
    } else {
        log.emerg("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(?function_signatures.glDeleteBuffers, proc);
    } else {
        log.emerg("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteFramebuffers")) |proc| {
        function_pointers.glDeleteFramebuffers = @ptrCast(?function_signatures.glDeleteFramebuffers, proc);
    } else {
        log.emerg("entry point glDeleteFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteProgram")) |proc| {
        function_pointers.glDeleteProgram = @ptrCast(?function_signatures.glDeleteProgram, proc);
    } else {
        log.emerg("entry point glDeleteProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteRenderbuffers")) |proc| {
        function_pointers.glDeleteRenderbuffers = @ptrCast(?function_signatures.glDeleteRenderbuffers, proc);
    } else {
        log.emerg("entry point glDeleteRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteShader")) |proc| {
        function_pointers.glDeleteShader = @ptrCast(?function_signatures.glDeleteShader, proc);
    } else {
        log.emerg("entry point glDeleteShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(?function_signatures.glDeleteTextures, proc);
    } else {
        log.emerg("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(?function_signatures.glDepthFunc, proc);
    } else {
        log.emerg("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(?function_signatures.glDepthMask, proc);
    } else {
        log.emerg("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangef")) |proc| {
        function_pointers.glDepthRangef = @ptrCast(?function_signatures.glDepthRangef, proc);
    } else {
        log.emerg("entry point glDepthRangef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDetachShader")) |proc| {
        function_pointers.glDetachShader = @ptrCast(?function_signatures.glDetachShader, proc);
    } else {
        log.emerg("entry point glDetachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(?function_signatures.glDisable, proc);
    } else {
        log.emerg("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableVertexAttribArray")) |proc| {
        function_pointers.glDisableVertexAttribArray = @ptrCast(?function_signatures.glDisableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glDisableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArrays")) |proc| {
        function_pointers.glDrawArrays = @ptrCast(?function_signatures.glDrawArrays, proc);
    } else {
        log.emerg("entry point glDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElements")) |proc| {
        function_pointers.glDrawElements = @ptrCast(?function_signatures.glDrawElements, proc);
    } else {
        log.emerg("entry point glDrawElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(?function_signatures.glEnable, proc);
    } else {
        log.emerg("entry point glEnable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableVertexAttribArray")) |proc| {
        function_pointers.glEnableVertexAttribArray = @ptrCast(?function_signatures.glEnableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glEnableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFinish")) |proc| {
        function_pointers.glFinish = @ptrCast(?function_signatures.glFinish, proc);
    } else {
        log.emerg("entry point glFinish not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlush")) |proc| {
        function_pointers.glFlush = @ptrCast(?function_signatures.glFlush, proc);
    } else {
        log.emerg("entry point glFlush not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferRenderbuffer")) |proc| {
        function_pointers.glFramebufferRenderbuffer = @ptrCast(?function_signatures.glFramebufferRenderbuffer, proc);
    } else {
        log.emerg("entry point glFramebufferRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture2D")) |proc| {
        function_pointers.glFramebufferTexture2D = @ptrCast(?function_signatures.glFramebufferTexture2D, proc);
    } else {
        log.emerg("entry point glFramebufferTexture2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(?function_signatures.glFrontFace, proc);
    } else {
        log.emerg("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(?function_signatures.glGenBuffers, proc);
    } else {
        log.emerg("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenerateMipmap")) |proc| {
        function_pointers.glGenerateMipmap = @ptrCast(?function_signatures.glGenerateMipmap, proc);
    } else {
        log.emerg("entry point glGenerateMipmap not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenFramebuffers")) |proc| {
        function_pointers.glGenFramebuffers = @ptrCast(?function_signatures.glGenFramebuffers, proc);
    } else {
        log.emerg("entry point glGenFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenRenderbuffers")) |proc| {
        function_pointers.glGenRenderbuffers = @ptrCast(?function_signatures.glGenRenderbuffers, proc);
    } else {
        log.emerg("entry point glGenRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(?function_signatures.glGenTextures, proc);
    } else {
        log.emerg("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveAttrib")) |proc| {
        function_pointers.glGetActiveAttrib = @ptrCast(?function_signatures.glGetActiveAttrib, proc);
    } else {
        log.emerg("entry point glGetActiveAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniform")) |proc| {
        function_pointers.glGetActiveUniform = @ptrCast(?function_signatures.glGetActiveUniform, proc);
    } else {
        log.emerg("entry point glGetActiveUniform not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttachedShaders")) |proc| {
        function_pointers.glGetAttachedShaders = @ptrCast(?function_signatures.glGetAttachedShaders, proc);
    } else {
        log.emerg("entry point glGetAttachedShaders not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttribLocation")) |proc| {
        function_pointers.glGetAttribLocation = @ptrCast(?function_signatures.glGetAttribLocation, proc);
    } else {
        log.emerg("entry point glGetAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(?function_signatures.glGetBooleanv, proc);
    } else {
        log.emerg("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(?function_signatures.glGetBufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(?function_signatures.glGetError, proc);
    } else {
        log.emerg("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(?function_signatures.glGetFloatv, proc);
    } else {
        log.emerg("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFramebufferAttachmentParameteriv")) |proc| {
        function_pointers.glGetFramebufferAttachmentParameteriv = @ptrCast(?function_signatures.glGetFramebufferAttachmentParameteriv, proc);
    } else {
        log.emerg("entry point glGetFramebufferAttachmentParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(?function_signatures.glGetIntegerv, proc);
    } else {
        log.emerg("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramiv")) |proc| {
        function_pointers.glGetProgramiv = @ptrCast(?function_signatures.glGetProgramiv, proc);
    } else {
        log.emerg("entry point glGetProgramiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramInfoLog")) |proc| {
        function_pointers.glGetProgramInfoLog = @ptrCast(?function_signatures.glGetProgramInfoLog, proc);
    } else {
        log.emerg("entry point glGetProgramInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetRenderbufferParameteriv")) |proc| {
        function_pointers.glGetRenderbufferParameteriv = @ptrCast(?function_signatures.glGetRenderbufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetRenderbufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderiv")) |proc| {
        function_pointers.glGetShaderiv = @ptrCast(?function_signatures.glGetShaderiv, proc);
    } else {
        log.emerg("entry point glGetShaderiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderInfoLog")) |proc| {
        function_pointers.glGetShaderInfoLog = @ptrCast(?function_signatures.glGetShaderInfoLog, proc);
    } else {
        log.emerg("entry point glGetShaderInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderPrecisionFormat")) |proc| {
        function_pointers.glGetShaderPrecisionFormat = @ptrCast(?function_signatures.glGetShaderPrecisionFormat, proc);
    } else {
        log.emerg("entry point glGetShaderPrecisionFormat not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderSource")) |proc| {
        function_pointers.glGetShaderSource = @ptrCast(?function_signatures.glGetShaderSource, proc);
    } else {
        log.emerg("entry point glGetShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(?function_signatures.glGetString, proc);
    } else {
        log.emerg("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(?function_signatures.glGetTexParameterfv, proc);
    } else {
        log.emerg("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(?function_signatures.glGetTexParameteriv, proc);
    } else {
        log.emerg("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformfv")) |proc| {
        function_pointers.glGetUniformfv = @ptrCast(?function_signatures.glGetUniformfv, proc);
    } else {
        log.emerg("entry point glGetUniformfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformiv")) |proc| {
        function_pointers.glGetUniformiv = @ptrCast(?function_signatures.glGetUniformiv, proc);
    } else {
        log.emerg("entry point glGetUniformiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformLocation")) |proc| {
        function_pointers.glGetUniformLocation = @ptrCast(?function_signatures.glGetUniformLocation, proc);
    } else {
        log.emerg("entry point glGetUniformLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribfv")) |proc| {
        function_pointers.glGetVertexAttribfv = @ptrCast(?function_signatures.glGetVertexAttribfv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribiv")) |proc| {
        function_pointers.glGetVertexAttribiv = @ptrCast(?function_signatures.glGetVertexAttribiv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribPointerv")) |proc| {
        function_pointers.glGetVertexAttribPointerv = @ptrCast(?function_signatures.glGetVertexAttribPointerv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(?function_signatures.glHint, proc);
    } else {
        log.emerg("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(?function_signatures.glIsBuffer, proc);
    } else {
        log.emerg("entry point glIsBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(?function_signatures.glIsEnabled, proc);
    } else {
        log.emerg("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsFramebuffer")) |proc| {
        function_pointers.glIsFramebuffer = @ptrCast(?function_signatures.glIsFramebuffer, proc);
    } else {
        log.emerg("entry point glIsFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsProgram")) |proc| {
        function_pointers.glIsProgram = @ptrCast(?function_signatures.glIsProgram, proc);
    } else {
        log.emerg("entry point glIsProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsRenderbuffer")) |proc| {
        function_pointers.glIsRenderbuffer = @ptrCast(?function_signatures.glIsRenderbuffer, proc);
    } else {
        log.emerg("entry point glIsRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsShader")) |proc| {
        function_pointers.glIsShader = @ptrCast(?function_signatures.glIsShader, proc);
    } else {
        log.emerg("entry point glIsShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(?function_signatures.glIsTexture, proc);
    } else {
        log.emerg("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(?function_signatures.glLineWidth, proc);
    } else {
        log.emerg("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLinkProgram")) |proc| {
        function_pointers.glLinkProgram = @ptrCast(?function_signatures.glLinkProgram, proc);
    } else {
        log.emerg("entry point glLinkProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(?function_signatures.glPixelStorei, proc);
    } else {
        log.emerg("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(?function_signatures.glPolygonOffset, proc);
    } else {
        log.emerg("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(?function_signatures.glReadPixels, proc);
    } else {
        log.emerg("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReleaseShaderCompiler")) |proc| {
        function_pointers.glReleaseShaderCompiler = @ptrCast(?function_signatures.glReleaseShaderCompiler, proc);
    } else {
        log.emerg("entry point glReleaseShaderCompiler not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorage")) |proc| {
        function_pointers.glRenderbufferStorage = @ptrCast(?function_signatures.glRenderbufferStorage, proc);
    } else {
        log.emerg("entry point glRenderbufferStorage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(?function_signatures.glSampleCoverage, proc);
    } else {
        log.emerg("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(?function_signatures.glScissor, proc);
    } else {
        log.emerg("entry point glScissor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderBinary")) |proc| {
        function_pointers.glShaderBinary = @ptrCast(?function_signatures.glShaderBinary, proc);
    } else {
        log.emerg("entry point glShaderBinary not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderSource")) |proc| {
        function_pointers.glShaderSource = @ptrCast(?function_signatures.glShaderSource, proc);
    } else {
        log.emerg("entry point glShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(?function_signatures.glStencilFunc, proc);
    } else {
        log.emerg("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFuncSeparate")) |proc| {
        function_pointers.glStencilFuncSeparate = @ptrCast(?function_signatures.glStencilFuncSeparate, proc);
    } else {
        log.emerg("entry point glStencilFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(?function_signatures.glStencilMask, proc);
    } else {
        log.emerg("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMaskSeparate")) |proc| {
        function_pointers.glStencilMaskSeparate = @ptrCast(?function_signatures.glStencilMaskSeparate, proc);
    } else {
        log.emerg("entry point glStencilMaskSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(?function_signatures.glStencilOp, proc);
    } else {
        log.emerg("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOpSeparate")) |proc| {
        function_pointers.glStencilOpSeparate = @ptrCast(?function_signatures.glStencilOpSeparate, proc);
    } else {
        log.emerg("entry point glStencilOpSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(?function_signatures.glTexImage2D, proc);
    } else {
        log.emerg("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterf")) |proc| {
        function_pointers.glTexParameterf = @ptrCast(?function_signatures.glTexParameterf, proc);
    } else {
        log.emerg("entry point glTexParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterfv")) |proc| {
        function_pointers.glTexParameterfv = @ptrCast(?function_signatures.glTexParameterfv, proc);
    } else {
        log.emerg("entry point glTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(?function_signatures.glTexParameteri, proc);
    } else {
        log.emerg("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(?function_signatures.glTexParameteriv, proc);
    } else {
        log.emerg("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(?function_signatures.glTexSubImage2D, proc);
    } else {
        log.emerg("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1f")) |proc| {
        function_pointers.glUniform1f = @ptrCast(?function_signatures.glUniform1f, proc);
    } else {
        log.emerg("entry point glUniform1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1fv")) |proc| {
        function_pointers.glUniform1fv = @ptrCast(?function_signatures.glUniform1fv, proc);
    } else {
        log.emerg("entry point glUniform1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1i")) |proc| {
        function_pointers.glUniform1i = @ptrCast(?function_signatures.glUniform1i, proc);
    } else {
        log.emerg("entry point glUniform1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1iv")) |proc| {
        function_pointers.glUniform1iv = @ptrCast(?function_signatures.glUniform1iv, proc);
    } else {
        log.emerg("entry point glUniform1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2f")) |proc| {
        function_pointers.glUniform2f = @ptrCast(?function_signatures.glUniform2f, proc);
    } else {
        log.emerg("entry point glUniform2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2fv")) |proc| {
        function_pointers.glUniform2fv = @ptrCast(?function_signatures.glUniform2fv, proc);
    } else {
        log.emerg("entry point glUniform2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2i")) |proc| {
        function_pointers.glUniform2i = @ptrCast(?function_signatures.glUniform2i, proc);
    } else {
        log.emerg("entry point glUniform2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2iv")) |proc| {
        function_pointers.glUniform2iv = @ptrCast(?function_signatures.glUniform2iv, proc);
    } else {
        log.emerg("entry point glUniform2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3f")) |proc| {
        function_pointers.glUniform3f = @ptrCast(?function_signatures.glUniform3f, proc);
    } else {
        log.emerg("entry point glUniform3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3fv")) |proc| {
        function_pointers.glUniform3fv = @ptrCast(?function_signatures.glUniform3fv, proc);
    } else {
        log.emerg("entry point glUniform3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3i")) |proc| {
        function_pointers.glUniform3i = @ptrCast(?function_signatures.glUniform3i, proc);
    } else {
        log.emerg("entry point glUniform3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3iv")) |proc| {
        function_pointers.glUniform3iv = @ptrCast(?function_signatures.glUniform3iv, proc);
    } else {
        log.emerg("entry point glUniform3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4f")) |proc| {
        function_pointers.glUniform4f = @ptrCast(?function_signatures.glUniform4f, proc);
    } else {
        log.emerg("entry point glUniform4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4fv")) |proc| {
        function_pointers.glUniform4fv = @ptrCast(?function_signatures.glUniform4fv, proc);
    } else {
        log.emerg("entry point glUniform4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4i")) |proc| {
        function_pointers.glUniform4i = @ptrCast(?function_signatures.glUniform4i, proc);
    } else {
        log.emerg("entry point glUniform4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4iv")) |proc| {
        function_pointers.glUniform4iv = @ptrCast(?function_signatures.glUniform4iv, proc);
    } else {
        log.emerg("entry point glUniform4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2fv")) |proc| {
        function_pointers.glUniformMatrix2fv = @ptrCast(?function_signatures.glUniformMatrix2fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3fv")) |proc| {
        function_pointers.glUniformMatrix3fv = @ptrCast(?function_signatures.glUniformMatrix3fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4fv")) |proc| {
        function_pointers.glUniformMatrix4fv = @ptrCast(?function_signatures.glUniformMatrix4fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUseProgram")) |proc| {
        function_pointers.glUseProgram = @ptrCast(?function_signatures.glUseProgram, proc);
    } else {
        log.emerg("entry point glUseProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glValidateProgram")) |proc| {
        function_pointers.glValidateProgram = @ptrCast(?function_signatures.glValidateProgram, proc);
    } else {
        log.emerg("entry point glValidateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1f")) |proc| {
        function_pointers.glVertexAttrib1f = @ptrCast(?function_signatures.glVertexAttrib1f, proc);
    } else {
        log.emerg("entry point glVertexAttrib1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1fv")) |proc| {
        function_pointers.glVertexAttrib1fv = @ptrCast(?function_signatures.glVertexAttrib1fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2f")) |proc| {
        function_pointers.glVertexAttrib2f = @ptrCast(?function_signatures.glVertexAttrib2f, proc);
    } else {
        log.emerg("entry point glVertexAttrib2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2fv")) |proc| {
        function_pointers.glVertexAttrib2fv = @ptrCast(?function_signatures.glVertexAttrib2fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3f")) |proc| {
        function_pointers.glVertexAttrib3f = @ptrCast(?function_signatures.glVertexAttrib3f, proc);
    } else {
        log.emerg("entry point glVertexAttrib3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3fv")) |proc| {
        function_pointers.glVertexAttrib3fv = @ptrCast(?function_signatures.glVertexAttrib3fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4f")) |proc| {
        function_pointers.glVertexAttrib4f = @ptrCast(?function_signatures.glVertexAttrib4f, proc);
    } else {
        log.emerg("entry point glVertexAttrib4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4fv")) |proc| {
        function_pointers.glVertexAttrib4fv = @ptrCast(?function_signatures.glVertexAttrib4fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribPointer")) |proc| {
        function_pointers.glVertexAttribPointer = @ptrCast(?function_signatures.glVertexAttribPointer, proc);
    } else {
        log.emerg("entry point glVertexAttribPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(?function_signatures.glViewport, proc);
    } else {
        log.emerg("entry point glViewport not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadBuffer")) |proc| {
        function_pointers.glReadBuffer = @ptrCast(?function_signatures.glReadBuffer, proc);
    } else {
        log.emerg("entry point glReadBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawRangeElements")) |proc| {
        function_pointers.glDrawRangeElements = @ptrCast(?function_signatures.glDrawRangeElements, proc);
    } else {
        log.emerg("entry point glDrawRangeElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage3D")) |proc| {
        function_pointers.glTexImage3D = @ptrCast(?function_signatures.glTexImage3D, proc);
    } else {
        log.emerg("entry point glTexImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage3D")) |proc| {
        function_pointers.glTexSubImage3D = @ptrCast(?function_signatures.glTexSubImage3D, proc);
    } else {
        log.emerg("entry point glTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage3D")) |proc| {
        function_pointers.glCopyTexSubImage3D = @ptrCast(?function_signatures.glCopyTexSubImage3D, proc);
    } else {
        log.emerg("entry point glCopyTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage3D")) |proc| {
        function_pointers.glCompressedTexImage3D = @ptrCast(?function_signatures.glCompressedTexImage3D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage3D")) |proc| {
        function_pointers.glCompressedTexSubImage3D = @ptrCast(?function_signatures.glCompressedTexSubImage3D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenQueries")) |proc| {
        function_pointers.glGenQueries = @ptrCast(?function_signatures.glGenQueries, proc);
    } else {
        log.emerg("entry point glGenQueries not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteQueries")) |proc| {
        function_pointers.glDeleteQueries = @ptrCast(?function_signatures.glDeleteQueries, proc);
    } else {
        log.emerg("entry point glDeleteQueries not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsQuery")) |proc| {
        function_pointers.glIsQuery = @ptrCast(?function_signatures.glIsQuery, proc);
    } else {
        log.emerg("entry point glIsQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginQuery")) |proc| {
        function_pointers.glBeginQuery = @ptrCast(?function_signatures.glBeginQuery, proc);
    } else {
        log.emerg("entry point glBeginQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndQuery")) |proc| {
        function_pointers.glEndQuery = @ptrCast(?function_signatures.glEndQuery, proc);
    } else {
        log.emerg("entry point glEndQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryiv")) |proc| {
        function_pointers.glGetQueryiv = @ptrCast(?function_signatures.glGetQueryiv, proc);
    } else {
        log.emerg("entry point glGetQueryiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryObjectuiv")) |proc| {
        function_pointers.glGetQueryObjectuiv = @ptrCast(?function_signatures.glGetQueryObjectuiv, proc);
    } else {
        log.emerg("entry point glGetQueryObjectuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUnmapBuffer")) |proc| {
        function_pointers.glUnmapBuffer = @ptrCast(?function_signatures.glUnmapBuffer, proc);
    } else {
        log.emerg("entry point glUnmapBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferPointerv")) |proc| {
        function_pointers.glGetBufferPointerv = @ptrCast(?function_signatures.glGetBufferPointerv, proc);
    } else {
        log.emerg("entry point glGetBufferPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawBuffers")) |proc| {
        function_pointers.glDrawBuffers = @ptrCast(?function_signatures.glDrawBuffers, proc);
    } else {
        log.emerg("entry point glDrawBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2x3fv")) |proc| {
        function_pointers.glUniformMatrix2x3fv = @ptrCast(?function_signatures.glUniformMatrix2x3fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix2x3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3x2fv")) |proc| {
        function_pointers.glUniformMatrix3x2fv = @ptrCast(?function_signatures.glUniformMatrix3x2fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix3x2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2x4fv")) |proc| {
        function_pointers.glUniformMatrix2x4fv = @ptrCast(?function_signatures.glUniformMatrix2x4fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix2x4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4x2fv")) |proc| {
        function_pointers.glUniformMatrix4x2fv = @ptrCast(?function_signatures.glUniformMatrix4x2fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix4x2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3x4fv")) |proc| {
        function_pointers.glUniformMatrix3x4fv = @ptrCast(?function_signatures.glUniformMatrix3x4fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix3x4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4x3fv")) |proc| {
        function_pointers.glUniformMatrix4x3fv = @ptrCast(?function_signatures.glUniformMatrix4x3fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix4x3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlitFramebuffer")) |proc| {
        function_pointers.glBlitFramebuffer = @ptrCast(?function_signatures.glBlitFramebuffer, proc);
    } else {
        log.emerg("entry point glBlitFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorageMultisample")) |proc| {
        function_pointers.glRenderbufferStorageMultisample = @ptrCast(?function_signatures.glRenderbufferStorageMultisample, proc);
    } else {
        log.emerg("entry point glRenderbufferStorageMultisample not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTextureLayer")) |proc| {
        function_pointers.glFramebufferTextureLayer = @ptrCast(?function_signatures.glFramebufferTextureLayer, proc);
    } else {
        log.emerg("entry point glFramebufferTextureLayer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapBufferRange")) |proc| {
        function_pointers.glMapBufferRange = @ptrCast(?function_signatures.glMapBufferRange, proc);
    } else {
        log.emerg("entry point glMapBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlushMappedBufferRange")) |proc| {
        function_pointers.glFlushMappedBufferRange = @ptrCast(?function_signatures.glFlushMappedBufferRange, proc);
    } else {
        log.emerg("entry point glFlushMappedBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindVertexArray")) |proc| {
        function_pointers.glBindVertexArray = @ptrCast(?function_signatures.glBindVertexArray, proc);
    } else {
        log.emerg("entry point glBindVertexArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteVertexArrays")) |proc| {
        function_pointers.glDeleteVertexArrays = @ptrCast(?function_signatures.glDeleteVertexArrays, proc);
    } else {
        log.emerg("entry point glDeleteVertexArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenVertexArrays")) |proc| {
        function_pointers.glGenVertexArrays = @ptrCast(?function_signatures.glGenVertexArrays, proc);
    } else {
        log.emerg("entry point glGenVertexArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsVertexArray")) |proc| {
        function_pointers.glIsVertexArray = @ptrCast(?function_signatures.glIsVertexArray, proc);
    } else {
        log.emerg("entry point glIsVertexArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegeri_v")) |proc| {
        function_pointers.glGetIntegeri_v = @ptrCast(?function_signatures.glGetIntegeri_v, proc);
    } else {
        log.emerg("entry point glGetIntegeri_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginTransformFeedback")) |proc| {
        function_pointers.glBeginTransformFeedback = @ptrCast(?function_signatures.glBeginTransformFeedback, proc);
    } else {
        log.emerg("entry point glBeginTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndTransformFeedback")) |proc| {
        function_pointers.glEndTransformFeedback = @ptrCast(?function_signatures.glEndTransformFeedback, proc);
    } else {
        log.emerg("entry point glEndTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBufferRange")) |proc| {
        function_pointers.glBindBufferRange = @ptrCast(?function_signatures.glBindBufferRange, proc);
    } else {
        log.emerg("entry point glBindBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBufferBase")) |proc| {
        function_pointers.glBindBufferBase = @ptrCast(?function_signatures.glBindBufferBase, proc);
    } else {
        log.emerg("entry point glBindBufferBase not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTransformFeedbackVaryings")) |proc| {
        function_pointers.glTransformFeedbackVaryings = @ptrCast(?function_signatures.glTransformFeedbackVaryings, proc);
    } else {
        log.emerg("entry point glTransformFeedbackVaryings not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTransformFeedbackVarying")) |proc| {
        function_pointers.glGetTransformFeedbackVarying = @ptrCast(?function_signatures.glGetTransformFeedbackVarying, proc);
    } else {
        log.emerg("entry point glGetTransformFeedbackVarying not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribIPointer")) |proc| {
        function_pointers.glVertexAttribIPointer = @ptrCast(?function_signatures.glVertexAttribIPointer, proc);
    } else {
        log.emerg("entry point glVertexAttribIPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribIiv")) |proc| {
        function_pointers.glGetVertexAttribIiv = @ptrCast(?function_signatures.glGetVertexAttribIiv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribIuiv")) |proc| {
        function_pointers.glGetVertexAttribIuiv = @ptrCast(?function_signatures.glGetVertexAttribIuiv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribIuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4i")) |proc| {
        function_pointers.glVertexAttribI4i = @ptrCast(?function_signatures.glVertexAttribI4i, proc);
    } else {
        log.emerg("entry point glVertexAttribI4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4ui")) |proc| {
        function_pointers.glVertexAttribI4ui = @ptrCast(?function_signatures.glVertexAttribI4ui, proc);
    } else {
        log.emerg("entry point glVertexAttribI4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4iv")) |proc| {
        function_pointers.glVertexAttribI4iv = @ptrCast(?function_signatures.glVertexAttribI4iv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4uiv")) |proc| {
        function_pointers.glVertexAttribI4uiv = @ptrCast(?function_signatures.glVertexAttribI4uiv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformuiv")) |proc| {
        function_pointers.glGetUniformuiv = @ptrCast(?function_signatures.glGetUniformuiv, proc);
    } else {
        log.emerg("entry point glGetUniformuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFragDataLocation")) |proc| {
        function_pointers.glGetFragDataLocation = @ptrCast(?function_signatures.glGetFragDataLocation, proc);
    } else {
        log.emerg("entry point glGetFragDataLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1ui")) |proc| {
        function_pointers.glUniform1ui = @ptrCast(?function_signatures.glUniform1ui, proc);
    } else {
        log.emerg("entry point glUniform1ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2ui")) |proc| {
        function_pointers.glUniform2ui = @ptrCast(?function_signatures.glUniform2ui, proc);
    } else {
        log.emerg("entry point glUniform2ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3ui")) |proc| {
        function_pointers.glUniform3ui = @ptrCast(?function_signatures.glUniform3ui, proc);
    } else {
        log.emerg("entry point glUniform3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4ui")) |proc| {
        function_pointers.glUniform4ui = @ptrCast(?function_signatures.glUniform4ui, proc);
    } else {
        log.emerg("entry point glUniform4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1uiv")) |proc| {
        function_pointers.glUniform1uiv = @ptrCast(?function_signatures.glUniform1uiv, proc);
    } else {
        log.emerg("entry point glUniform1uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2uiv")) |proc| {
        function_pointers.glUniform2uiv = @ptrCast(?function_signatures.glUniform2uiv, proc);
    } else {
        log.emerg("entry point glUniform2uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3uiv")) |proc| {
        function_pointers.glUniform3uiv = @ptrCast(?function_signatures.glUniform3uiv, proc);
    } else {
        log.emerg("entry point glUniform3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4uiv")) |proc| {
        function_pointers.glUniform4uiv = @ptrCast(?function_signatures.glUniform4uiv, proc);
    } else {
        log.emerg("entry point glUniform4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferiv")) |proc| {
        function_pointers.glClearBufferiv = @ptrCast(?function_signatures.glClearBufferiv, proc);
    } else {
        log.emerg("entry point glClearBufferiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferuiv")) |proc| {
        function_pointers.glClearBufferuiv = @ptrCast(?function_signatures.glClearBufferuiv, proc);
    } else {
        log.emerg("entry point glClearBufferuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferfv")) |proc| {
        function_pointers.glClearBufferfv = @ptrCast(?function_signatures.glClearBufferfv, proc);
    } else {
        log.emerg("entry point glClearBufferfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferfi")) |proc| {
        function_pointers.glClearBufferfi = @ptrCast(?function_signatures.glClearBufferfi, proc);
    } else {
        log.emerg("entry point glClearBufferfi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetStringi")) |proc| {
        function_pointers.glGetStringi = @ptrCast(?function_signatures.glGetStringi, proc);
    } else {
        log.emerg("entry point glGetStringi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyBufferSubData")) |proc| {
        function_pointers.glCopyBufferSubData = @ptrCast(?function_signatures.glCopyBufferSubData, proc);
    } else {
        log.emerg("entry point glCopyBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformIndices")) |proc| {
        function_pointers.glGetUniformIndices = @ptrCast(?function_signatures.glGetUniformIndices, proc);
    } else {
        log.emerg("entry point glGetUniformIndices not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformsiv")) |proc| {
        function_pointers.glGetActiveUniformsiv = @ptrCast(?function_signatures.glGetActiveUniformsiv, proc);
    } else {
        log.emerg("entry point glGetActiveUniformsiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformBlockIndex")) |proc| {
        function_pointers.glGetUniformBlockIndex = @ptrCast(?function_signatures.glGetUniformBlockIndex, proc);
    } else {
        log.emerg("entry point glGetUniformBlockIndex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformBlockiv")) |proc| {
        function_pointers.glGetActiveUniformBlockiv = @ptrCast(?function_signatures.glGetActiveUniformBlockiv, proc);
    } else {
        log.emerg("entry point glGetActiveUniformBlockiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformBlockName")) |proc| {
        function_pointers.glGetActiveUniformBlockName = @ptrCast(?function_signatures.glGetActiveUniformBlockName, proc);
    } else {
        log.emerg("entry point glGetActiveUniformBlockName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformBlockBinding")) |proc| {
        function_pointers.glUniformBlockBinding = @ptrCast(?function_signatures.glUniformBlockBinding, proc);
    } else {
        log.emerg("entry point glUniformBlockBinding not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArraysInstanced")) |proc| {
        function_pointers.glDrawArraysInstanced = @ptrCast(?function_signatures.glDrawArraysInstanced, proc);
    } else {
        log.emerg("entry point glDrawArraysInstanced not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElementsInstanced")) |proc| {
        function_pointers.glDrawElementsInstanced = @ptrCast(?function_signatures.glDrawElementsInstanced, proc);
    } else {
        log.emerg("entry point glDrawElementsInstanced not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFenceSync")) |proc| {
        function_pointers.glFenceSync = @ptrCast(?function_signatures.glFenceSync, proc);
    } else {
        log.emerg("entry point glFenceSync not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsSync")) |proc| {
        function_pointers.glIsSync = @ptrCast(?function_signatures.glIsSync, proc);
    } else {
        log.emerg("entry point glIsSync not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteSync")) |proc| {
        function_pointers.glDeleteSync = @ptrCast(?function_signatures.glDeleteSync, proc);
    } else {
        log.emerg("entry point glDeleteSync not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientWaitSync")) |proc| {
        function_pointers.glClientWaitSync = @ptrCast(?function_signatures.glClientWaitSync, proc);
    } else {
        log.emerg("entry point glClientWaitSync not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWaitSync")) |proc| {
        function_pointers.glWaitSync = @ptrCast(?function_signatures.glWaitSync, proc);
    } else {
        log.emerg("entry point glWaitSync not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetInteger64v")) |proc| {
        function_pointers.glGetInteger64v = @ptrCast(?function_signatures.glGetInteger64v, proc);
    } else {
        log.emerg("entry point glGetInteger64v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetSynciv")) |proc| {
        function_pointers.glGetSynciv = @ptrCast(?function_signatures.glGetSynciv, proc);
    } else {
        log.emerg("entry point glGetSynciv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetInteger64i_v")) |proc| {
        function_pointers.glGetInteger64i_v = @ptrCast(?function_signatures.glGetInteger64i_v, proc);
    } else {
        log.emerg("entry point glGetInteger64i_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteri64v")) |proc| {
        function_pointers.glGetBufferParameteri64v = @ptrCast(?function_signatures.glGetBufferParameteri64v, proc);
    } else {
        log.emerg("entry point glGetBufferParameteri64v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenSamplers")) |proc| {
        function_pointers.glGenSamplers = @ptrCast(?function_signatures.glGenSamplers, proc);
    } else {
        log.emerg("entry point glGenSamplers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteSamplers")) |proc| {
        function_pointers.glDeleteSamplers = @ptrCast(?function_signatures.glDeleteSamplers, proc);
    } else {
        log.emerg("entry point glDeleteSamplers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsSampler")) |proc| {
        function_pointers.glIsSampler = @ptrCast(?function_signatures.glIsSampler, proc);
    } else {
        log.emerg("entry point glIsSampler not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindSampler")) |proc| {
        function_pointers.glBindSampler = @ptrCast(?function_signatures.glBindSampler, proc);
    } else {
        log.emerg("entry point glBindSampler not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSamplerParameteri")) |proc| {
        function_pointers.glSamplerParameteri = @ptrCast(?function_signatures.glSamplerParameteri, proc);
    } else {
        log.emerg("entry point glSamplerParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSamplerParameteriv")) |proc| {
        function_pointers.glSamplerParameteriv = @ptrCast(?function_signatures.glSamplerParameteriv, proc);
    } else {
        log.emerg("entry point glSamplerParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSamplerParameterf")) |proc| {
        function_pointers.glSamplerParameterf = @ptrCast(?function_signatures.glSamplerParameterf, proc);
    } else {
        log.emerg("entry point glSamplerParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSamplerParameterfv")) |proc| {
        function_pointers.glSamplerParameterfv = @ptrCast(?function_signatures.glSamplerParameterfv, proc);
    } else {
        log.emerg("entry point glSamplerParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetSamplerParameteriv")) |proc| {
        function_pointers.glGetSamplerParameteriv = @ptrCast(?function_signatures.glGetSamplerParameteriv, proc);
    } else {
        log.emerg("entry point glGetSamplerParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetSamplerParameterfv")) |proc| {
        function_pointers.glGetSamplerParameterfv = @ptrCast(?function_signatures.glGetSamplerParameterfv, proc);
    } else {
        log.emerg("entry point glGetSamplerParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribDivisor")) |proc| {
        function_pointers.glVertexAttribDivisor = @ptrCast(?function_signatures.glVertexAttribDivisor, proc);
    } else {
        log.emerg("entry point glVertexAttribDivisor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTransformFeedback")) |proc| {
        function_pointers.glBindTransformFeedback = @ptrCast(?function_signatures.glBindTransformFeedback, proc);
    } else {
        log.emerg("entry point glBindTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTransformFeedbacks")) |proc| {
        function_pointers.glDeleteTransformFeedbacks = @ptrCast(?function_signatures.glDeleteTransformFeedbacks, proc);
    } else {
        log.emerg("entry point glDeleteTransformFeedbacks not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTransformFeedbacks")) |proc| {
        function_pointers.glGenTransformFeedbacks = @ptrCast(?function_signatures.glGenTransformFeedbacks, proc);
    } else {
        log.emerg("entry point glGenTransformFeedbacks not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTransformFeedback")) |proc| {
        function_pointers.glIsTransformFeedback = @ptrCast(?function_signatures.glIsTransformFeedback, proc);
    } else {
        log.emerg("entry point glIsTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPauseTransformFeedback")) |proc| {
        function_pointers.glPauseTransformFeedback = @ptrCast(?function_signatures.glPauseTransformFeedback, proc);
    } else {
        log.emerg("entry point glPauseTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glResumeTransformFeedback")) |proc| {
        function_pointers.glResumeTransformFeedback = @ptrCast(?function_signatures.glResumeTransformFeedback, proc);
    } else {
        log.emerg("entry point glResumeTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramBinary")) |proc| {
        function_pointers.glGetProgramBinary = @ptrCast(?function_signatures.glGetProgramBinary, proc);
    } else {
        log.emerg("entry point glGetProgramBinary not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glProgramBinary")) |proc| {
        function_pointers.glProgramBinary = @ptrCast(?function_signatures.glProgramBinary, proc);
    } else {
        log.emerg("entry point glProgramBinary not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glProgramParameteri")) |proc| {
        function_pointers.glProgramParameteri = @ptrCast(?function_signatures.glProgramParameteri, proc);
    } else {
        log.emerg("entry point glProgramParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInvalidateFramebuffer")) |proc| {
        function_pointers.glInvalidateFramebuffer = @ptrCast(?function_signatures.glInvalidateFramebuffer, proc);
    } else {
        log.emerg("entry point glInvalidateFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInvalidateSubFramebuffer")) |proc| {
        function_pointers.glInvalidateSubFramebuffer = @ptrCast(?function_signatures.glInvalidateSubFramebuffer, proc);
    } else {
        log.emerg("entry point glInvalidateSubFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexStorage2D")) |proc| {
        function_pointers.glTexStorage2D = @ptrCast(?function_signatures.glTexStorage2D, proc);
    } else {
        log.emerg("entry point glTexStorage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexStorage3D")) |proc| {
        function_pointers.glTexStorage3D = @ptrCast(?function_signatures.glTexStorage3D, proc);
    } else {
        log.emerg("entry point glTexStorage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetInternalformativ")) |proc| {
        function_pointers.glGetInternalformativ = @ptrCast(?function_signatures.glGetInternalformativ, proc);
    } else {
        log.emerg("entry point glGetInternalformativ not found!", .{});
        success = false;
    }
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glActiveTexture = fn (_texture: GLenum) void;
    const glAttachShader = fn (_program: GLuint, _shader: GLuint) void;
    const glBindAttribLocation = fn (_program: GLuint, _index: GLuint, _name: [*c]const GLchar) void;
    const glBindBuffer = fn (_target: GLenum, _buffer: GLuint) void;
    const glBindFramebuffer = fn (_target: GLenum, _framebuffer: GLuint) void;
    const glBindRenderbuffer = fn (_target: GLenum, _renderbuffer: GLuint) void;
    const glBindTexture = fn (_target: GLenum, _texture: GLuint) void;
    const glBlendColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glBlendEquation = fn (_mode: GLenum) void;
    const glBlendEquationSeparate = fn (_modeRGB: GLenum, _modeAlpha: GLenum) void;
    const glBlendFunc = fn (_sfactor: GLenum, _dfactor: GLenum) void;
    const glBlendFuncSeparate = fn (_sfactorRGB: GLenum, _dfactorRGB: GLenum, _sfactorAlpha: GLenum, _dfactorAlpha: GLenum) void;
    const glBufferData = fn (_target: GLenum, _size: GLsizeiptr, _data: ?*const c_void, _usage: GLenum) void;
    const glBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const c_void) void;
    const glCheckFramebufferStatus = fn (_target: GLenum) GLenum;
    const glClear = fn (_mask: GLbitfield) void;
    const glClearColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glClearDepthf = fn (_d: GLfloat) void;
    const glClearStencil = fn (_s: GLint) void;
    const glColorMask = fn (_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void;
    const glCompileShader = fn (_shader: GLuint) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCopyTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void;
    const glCopyTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glCreateProgram = fn () GLuint;
    const glCreateShader = fn (_type: GLenum) GLuint;
    const glCullFace = fn (_mode: GLenum) void;
    const glDeleteBuffers = fn (_n: GLsizei, _buffers: [*c]const GLuint) void;
    const glDeleteFramebuffers = fn (_n: GLsizei, _framebuffers: [*c]const GLuint) void;
    const glDeleteProgram = fn (_program: GLuint) void;
    const glDeleteRenderbuffers = fn (_n: GLsizei, _renderbuffers: [*c]const GLuint) void;
    const glDeleteShader = fn (_shader: GLuint) void;
    const glDeleteTextures = fn (_n: GLsizei, _textures: [*c]const GLuint) void;
    const glDepthFunc = fn (_func: GLenum) void;
    const glDepthMask = fn (_flag: GLboolean) void;
    const glDepthRangef = fn (_n: GLfloat, _f: GLfloat) void;
    const glDetachShader = fn (_program: GLuint, _shader: GLuint) void;
    const glDisable = fn (_cap: GLenum) void;
    const glDisableVertexAttribArray = fn (_index: GLuint) void;
    const glDrawArrays = fn (_mode: GLenum, _first: GLint, _count: GLsizei) void;
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void;
    const glEnable = fn (_cap: GLenum) void;
    const glEnableVertexAttribArray = fn (_index: GLuint) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glFramebufferRenderbuffer = fn (_target: GLenum, _attachment: GLenum, _renderbuffertarget: GLenum, _renderbuffer: GLuint) void;
    const glFramebufferTexture2D = fn (_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void;
    const glFrontFace = fn (_mode: GLenum) void;
    const glGenBuffers = fn (_n: GLsizei, _buffers: [*c]GLuint) void;
    const glGenerateMipmap = fn (_target: GLenum) void;
    const glGenFramebuffers = fn (_n: GLsizei, _framebuffers: [*c]GLuint) void;
    const glGenRenderbuffers = fn (_n: GLsizei, _renderbuffers: [*c]GLuint) void;
    const glGenTextures = fn (_n: GLsizei, _textures: [*c]GLuint) void;
    const glGetActiveAttrib = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glGetActiveUniform = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glGetAttachedShaders = fn (_program: GLuint, _maxCount: GLsizei, _count: [*c]GLsizei, _shaders: [*c]GLuint) void;
    const glGetAttribLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glGetBooleanv = fn (_pname: GLenum, _data: [*c]GLboolean) void;
    const glGetBufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetError = fn () GLenum;
    const glGetFloatv = fn (_pname: GLenum, _data: [*c]GLfloat) void;
    const glGetFramebufferAttachmentParameteriv = fn (_target: GLenum, _attachment: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetIntegerv = fn (_pname: GLenum, _data: [*c]GLint) void;
    const glGetProgramiv = fn (_program: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetProgramInfoLog = fn (_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void;
    const glGetRenderbufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetShaderiv = fn (_shader: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetShaderInfoLog = fn (_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void;
    const glGetShaderPrecisionFormat = fn (_shadertype: GLenum, _precisiontype: GLenum, _range: [*c]GLint, _precision: [*c]GLint) void;
    const glGetShaderSource = fn (_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _source: [*c]GLchar) void;
    const glGetString = fn (_name: GLenum) ?[*:0]const GLubyte;
    const glGetTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetUniformfv = fn (_program: GLuint, _location: GLint, _params: [*c]GLfloat) void;
    const glGetUniformiv = fn (_program: GLuint, _location: GLint, _params: [*c]GLint) void;
    const glGetUniformLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glGetVertexAttribfv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetVertexAttribiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetVertexAttribPointerv = fn (_index: GLuint, _pname: GLenum, _pointer: ?*?*c_void) void;
    const glHint = fn (_target: GLenum, _mode: GLenum) void;
    const glIsBuffer = fn (_buffer: GLuint) GLboolean;
    const glIsEnabled = fn (_cap: GLenum) GLboolean;
    const glIsFramebuffer = fn (_framebuffer: GLuint) GLboolean;
    const glIsProgram = fn (_program: GLuint) GLboolean;
    const glIsRenderbuffer = fn (_renderbuffer: GLuint) GLboolean;
    const glIsShader = fn (_shader: GLuint) GLboolean;
    const glIsTexture = fn (_texture: GLuint) GLboolean;
    const glLineWidth = fn (_width: GLfloat) void;
    const glLinkProgram = fn (_program: GLuint) void;
    const glPixelStorei = fn (_pname: GLenum, _param: GLint) void;
    const glPolygonOffset = fn (_factor: GLfloat, _units: GLfloat) void;
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void;
    const glReleaseShaderCompiler = fn () void;
    const glRenderbufferStorage = fn (_target: GLenum, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) void;
    const glScissor = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glShaderBinary = fn (_count: GLsizei, _shaders: [*c]const GLuint, _binaryFormat: GLenum, _binary: ?*const c_void, _length: GLsizei) void;
    const glShaderSource = fn (_shader: GLuint, _count: GLsizei, _string: [*c]const [*c]const GLchar, _length: [*c]const GLint) void;
    const glStencilFunc = fn (_func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilFuncSeparate = fn (_face: GLenum, _func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilMask = fn (_mask: GLuint) void;
    const glStencilMaskSeparate = fn (_face: GLenum, _mask: GLuint) void;
    const glStencilOp = fn (_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void;
    const glStencilOpSeparate = fn (_face: GLenum, _sfail: GLenum, _dpfail: GLenum, _dppass: GLenum) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexParameterf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTexParameteri = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glUniform1f = fn (_location: GLint, _v0: GLfloat) void;
    const glUniform1fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform1i = fn (_location: GLint, _v0: GLint) void;
    const glUniform1iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform2f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat) void;
    const glUniform2fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform2i = fn (_location: GLint, _v0: GLint, _v1: GLint) void;
    const glUniform2iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform3f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat) void;
    const glUniform3fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform3i = fn (_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint) void;
    const glUniform3iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform4f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat, _v3: GLfloat) void;
    const glUniform4fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform4i = fn (_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint, _v3: GLint) void;
    const glUniform4iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniformMatrix2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUseProgram = fn (_program: GLuint) void;
    const glValidateProgram = fn (_program: GLuint) void;
    const glVertexAttrib1f = fn (_index: GLuint, _x: GLfloat) void;
    const glVertexAttrib1fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib2f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat) void;
    const glVertexAttrib2fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib3f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glVertexAttrib3fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib4f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void;
    const glVertexAttrib4fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttribPointer = fn (_index: GLuint, _size: GLint, _type: GLenum, _normalized: GLboolean, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glViewport = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glReadBuffer = fn (_src: GLenum) void;
    const glDrawRangeElements = fn (_mode: GLenum, _start: GLuint, _end: GLuint, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void;
    const glTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glCopyTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glCompressedTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glGenQueries = fn (_n: GLsizei, _ids: [*c]GLuint) void;
    const glDeleteQueries = fn (_n: GLsizei, _ids: [*c]const GLuint) void;
    const glIsQuery = fn (_id: GLuint) GLboolean;
    const glBeginQuery = fn (_target: GLenum, _id: GLuint) void;
    const glEndQuery = fn (_target: GLenum) void;
    const glGetQueryiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetQueryObjectuiv = fn (_id: GLuint, _pname: GLenum, _params: [*c]GLuint) void;
    const glUnmapBuffer = fn (_target: GLenum) GLboolean;
    const glGetBufferPointerv = fn (_target: GLenum, _pname: GLenum, _params: ?*?*c_void) void;
    const glDrawBuffers = fn (_n: GLsizei, _bufs: [*c]const GLenum) void;
    const glUniformMatrix2x3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3x2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix2x4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4x2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3x4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4x3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glBlitFramebuffer = fn (_srcX0: GLint, _srcY0: GLint, _srcX1: GLint, _srcY1: GLint, _dstX0: GLint, _dstY0: GLint, _dstX1: GLint, _dstY1: GLint, _mask: GLbitfield, _filter: GLenum) void;
    const glRenderbufferStorageMultisample = fn (_target: GLenum, _samples: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void;
    const glFramebufferTextureLayer = fn (_target: GLenum, _attachment: GLenum, _texture: GLuint, _level: GLint, _layer: GLint) void;
    const glMapBufferRange = fn (_target: GLenum, _offset: GLintptr, _length: GLsizeiptr, _access: GLbitfield) ?*c_void;
    const glFlushMappedBufferRange = fn (_target: GLenum, _offset: GLintptr, _length: GLsizeiptr) void;
    const glBindVertexArray = fn (_array: GLuint) void;
    const glDeleteVertexArrays = fn (_n: GLsizei, _arrays: [*c]const GLuint) void;
    const glGenVertexArrays = fn (_n: GLsizei, _arrays: [*c]GLuint) void;
    const glIsVertexArray = fn (_array: GLuint) GLboolean;
    const glGetIntegeri_v = fn (_target: GLenum, _index: GLuint, _data: [*c]GLint) void;
    const glBeginTransformFeedback = fn (_primitiveMode: GLenum) void;
    const glEndTransformFeedback = fn () void;
    const glBindBufferRange = fn (_target: GLenum, _index: GLuint, _buffer: GLuint, _offset: GLintptr, _size: GLsizeiptr) void;
    const glBindBufferBase = fn (_target: GLenum, _index: GLuint, _buffer: GLuint) void;
    const glTransformFeedbackVaryings = fn (_program: GLuint, _count: GLsizei, _varyings: [*c]const [*c]const GLchar, _bufferMode: GLenum) void;
    const glGetTransformFeedbackVarying = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLsizei, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glVertexAttribIPointer = fn (_index: GLuint, _size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glGetVertexAttribIiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetVertexAttribIuiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLuint) void;
    const glVertexAttribI4i = fn (_index: GLuint, _x: GLint, _y: GLint, _z: GLint, _w: GLint) void;
    const glVertexAttribI4ui = fn (_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint, _w: GLuint) void;
    const glVertexAttribI4iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttribI4uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glGetUniformuiv = fn (_program: GLuint, _location: GLint, _params: [*c]GLuint) void;
    const glGetFragDataLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glUniform1ui = fn (_location: GLint, _v0: GLuint) void;
    const glUniform2ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint) void;
    const glUniform3ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint) void;
    const glUniform4ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint, _v3: GLuint) void;
    const glUniform1uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform2uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform3uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform4uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glClearBufferiv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLint) void;
    const glClearBufferuiv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLuint) void;
    const glClearBufferfv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLfloat) void;
    const glClearBufferfi = fn (_buffer: GLenum, _drawbuffer: GLint, _depth: GLfloat, _stencil: GLint) void;
    const glGetStringi = fn (_name: GLenum, _index: GLuint) ?[*:0]const GLubyte;
    const glCopyBufferSubData = fn (_readTarget: GLenum, _writeTarget: GLenum, _readOffset: GLintptr, _writeOffset: GLintptr, _size: GLsizeiptr) void;
    const glGetUniformIndices = fn (_program: GLuint, _uniformCount: GLsizei, _uniformNames: [*c]const [*c]const GLchar, _uniformIndices: [*c]GLuint) void;
    const glGetActiveUniformsiv = fn (_program: GLuint, _uniformCount: GLsizei, _uniformIndices: [*c]const GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetUniformBlockIndex = fn (_program: GLuint, _uniformBlockName: [*c]const GLchar) GLuint;
    const glGetActiveUniformBlockiv = fn (_program: GLuint, _uniformBlockIndex: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetActiveUniformBlockName = fn (_program: GLuint, _uniformBlockIndex: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _uniformBlockName: [*c]GLchar) void;
    const glUniformBlockBinding = fn (_program: GLuint, _uniformBlockIndex: GLuint, _uniformBlockBinding: GLuint) void;
    const glDrawArraysInstanced = fn (_mode: GLenum, _first: GLint, _count: GLsizei, _instancecount: GLsizei) void;
    const glDrawElementsInstanced = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void, _instancecount: GLsizei) void;
    const glFenceSync = fn (_condition: GLenum, _flags: GLbitfield) GLsync;
    const glIsSync = fn (_sync: GLsync) GLboolean;
    const glDeleteSync = fn (_sync: GLsync) void;
    const glClientWaitSync = fn (_sync: GLsync, _flags: GLbitfield, _timeout: GLuint64) GLenum;
    const glWaitSync = fn (_sync: GLsync, _flags: GLbitfield, _timeout: GLuint64) void;
    const glGetInteger64v = fn (_pname: GLenum, _data: [*c]GLint64) void;
    const glGetSynciv = fn (_sync: GLsync, _pname: GLenum, _count: GLsizei, _length: [*c]GLsizei, _values: [*c]GLint) void;
    const glGetInteger64i_v = fn (_target: GLenum, _index: GLuint, _data: [*c]GLint64) void;
    const glGetBufferParameteri64v = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint64) void;
    const glGenSamplers = fn (_count: GLsizei, _samplers: [*c]GLuint) void;
    const glDeleteSamplers = fn (_count: GLsizei, _samplers: [*c]const GLuint) void;
    const glIsSampler = fn (_sampler: GLuint) GLboolean;
    const glBindSampler = fn (_unit: GLuint, _sampler: GLuint) void;
    const glSamplerParameteri = fn (_sampler: GLuint, _pname: GLenum, _param: GLint) void;
    const glSamplerParameteriv = fn (_sampler: GLuint, _pname: GLenum, _param: [*c]const GLint) void;
    const glSamplerParameterf = fn (_sampler: GLuint, _pname: GLenum, _param: GLfloat) void;
    const glSamplerParameterfv = fn (_sampler: GLuint, _pname: GLenum, _param: [*c]const GLfloat) void;
    const glGetSamplerParameteriv = fn (_sampler: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetSamplerParameterfv = fn (_sampler: GLuint, _pname: GLenum, _params: [*c]GLfloat) void;
    const glVertexAttribDivisor = fn (_index: GLuint, _divisor: GLuint) void;
    const glBindTransformFeedback = fn (_target: GLenum, _id: GLuint) void;
    const glDeleteTransformFeedbacks = fn (_n: GLsizei, _ids: [*c]const GLuint) void;
    const glGenTransformFeedbacks = fn (_n: GLsizei, _ids: [*c]GLuint) void;
    const glIsTransformFeedback = fn (_id: GLuint) GLboolean;
    const glPauseTransformFeedback = fn () void;
    const glResumeTransformFeedback = fn () void;
    const glGetProgramBinary = fn (_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _binaryFormat: [*c]GLenum, _binary: ?*c_void) void;
    const glProgramBinary = fn (_program: GLuint, _binaryFormat: GLenum, _binary: ?*const c_void, _length: GLsizei) void;
    const glProgramParameteri = fn (_program: GLuint, _pname: GLenum, _value: GLint) void;
    const glInvalidateFramebuffer = fn (_target: GLenum, _numAttachments: GLsizei, _attachments: [*c]const GLenum) void;
    const glInvalidateSubFramebuffer = fn (_target: GLenum, _numAttachments: GLsizei, _attachments: [*c]const GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glTexStorage2D = fn (_target: GLenum, _levels: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void;
    const glTexStorage3D = fn (_target: GLenum, _levels: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei) void;
    const glGetInternalformativ = fn (_target: GLenum, _internalformat: GLenum, _pname: GLenum, _count: GLsizei, _params: [*c]GLint) void;
};

const function_pointers = struct {
    var glActiveTexture: ?function_signatures.glActiveTexture = null;
    var glAttachShader: ?function_signatures.glAttachShader = null;
    var glBindAttribLocation: ?function_signatures.glBindAttribLocation = null;
    var glBindBuffer: ?function_signatures.glBindBuffer = null;
    var glBindFramebuffer: ?function_signatures.glBindFramebuffer = null;
    var glBindRenderbuffer: ?function_signatures.glBindRenderbuffer = null;
    var glBindTexture: ?function_signatures.glBindTexture = null;
    var glBlendColor: ?function_signatures.glBlendColor = null;
    var glBlendEquation: ?function_signatures.glBlendEquation = null;
    var glBlendEquationSeparate: ?function_signatures.glBlendEquationSeparate = null;
    var glBlendFunc: ?function_signatures.glBlendFunc = null;
    var glBlendFuncSeparate: ?function_signatures.glBlendFuncSeparate = null;
    var glBufferData: ?function_signatures.glBufferData = null;
    var glBufferSubData: ?function_signatures.glBufferSubData = null;
    var glCheckFramebufferStatus: ?function_signatures.glCheckFramebufferStatus = null;
    var glClear: ?function_signatures.glClear = null;
    var glClearColor: ?function_signatures.glClearColor = null;
    var glClearDepthf: ?function_signatures.glClearDepthf = null;
    var glClearStencil: ?function_signatures.glClearStencil = null;
    var glColorMask: ?function_signatures.glColorMask = null;
    var glCompileShader: ?function_signatures.glCompileShader = null;
    var glCompressedTexImage2D: ?function_signatures.glCompressedTexImage2D = null;
    var glCompressedTexSubImage2D: ?function_signatures.glCompressedTexSubImage2D = null;
    var glCopyTexImage2D: ?function_signatures.glCopyTexImage2D = null;
    var glCopyTexSubImage2D: ?function_signatures.glCopyTexSubImage2D = null;
    var glCreateProgram: ?function_signatures.glCreateProgram = null;
    var glCreateShader: ?function_signatures.glCreateShader = null;
    var glCullFace: ?function_signatures.glCullFace = null;
    var glDeleteBuffers: ?function_signatures.glDeleteBuffers = null;
    var glDeleteFramebuffers: ?function_signatures.glDeleteFramebuffers = null;
    var glDeleteProgram: ?function_signatures.glDeleteProgram = null;
    var glDeleteRenderbuffers: ?function_signatures.glDeleteRenderbuffers = null;
    var glDeleteShader: ?function_signatures.glDeleteShader = null;
    var glDeleteTextures: ?function_signatures.glDeleteTextures = null;
    var glDepthFunc: ?function_signatures.glDepthFunc = null;
    var glDepthMask: ?function_signatures.glDepthMask = null;
    var glDepthRangef: ?function_signatures.glDepthRangef = null;
    var glDetachShader: ?function_signatures.glDetachShader = null;
    var glDisable: ?function_signatures.glDisable = null;
    var glDisableVertexAttribArray: ?function_signatures.glDisableVertexAttribArray = null;
    var glDrawArrays: ?function_signatures.glDrawArrays = null;
    var glDrawElements: ?function_signatures.glDrawElements = null;
    var glEnable: ?function_signatures.glEnable = null;
    var glEnableVertexAttribArray: ?function_signatures.glEnableVertexAttribArray = null;
    var glFinish: ?function_signatures.glFinish = null;
    var glFlush: ?function_signatures.glFlush = null;
    var glFramebufferRenderbuffer: ?function_signatures.glFramebufferRenderbuffer = null;
    var glFramebufferTexture2D: ?function_signatures.glFramebufferTexture2D = null;
    var glFrontFace: ?function_signatures.glFrontFace = null;
    var glGenBuffers: ?function_signatures.glGenBuffers = null;
    var glGenerateMipmap: ?function_signatures.glGenerateMipmap = null;
    var glGenFramebuffers: ?function_signatures.glGenFramebuffers = null;
    var glGenRenderbuffers: ?function_signatures.glGenRenderbuffers = null;
    var glGenTextures: ?function_signatures.glGenTextures = null;
    var glGetActiveAttrib: ?function_signatures.glGetActiveAttrib = null;
    var glGetActiveUniform: ?function_signatures.glGetActiveUniform = null;
    var glGetAttachedShaders: ?function_signatures.glGetAttachedShaders = null;
    var glGetAttribLocation: ?function_signatures.glGetAttribLocation = null;
    var glGetBooleanv: ?function_signatures.glGetBooleanv = null;
    var glGetBufferParameteriv: ?function_signatures.glGetBufferParameteriv = null;
    var glGetError: ?function_signatures.glGetError = null;
    var glGetFloatv: ?function_signatures.glGetFloatv = null;
    var glGetFramebufferAttachmentParameteriv: ?function_signatures.glGetFramebufferAttachmentParameteriv = null;
    var glGetIntegerv: ?function_signatures.glGetIntegerv = null;
    var glGetProgramiv: ?function_signatures.glGetProgramiv = null;
    var glGetProgramInfoLog: ?function_signatures.glGetProgramInfoLog = null;
    var glGetRenderbufferParameteriv: ?function_signatures.glGetRenderbufferParameteriv = null;
    var glGetShaderiv: ?function_signatures.glGetShaderiv = null;
    var glGetShaderInfoLog: ?function_signatures.glGetShaderInfoLog = null;
    var glGetShaderPrecisionFormat: ?function_signatures.glGetShaderPrecisionFormat = null;
    var glGetShaderSource: ?function_signatures.glGetShaderSource = null;
    var glGetString: ?function_signatures.glGetString = null;
    var glGetTexParameterfv: ?function_signatures.glGetTexParameterfv = null;
    var glGetTexParameteriv: ?function_signatures.glGetTexParameteriv = null;
    var glGetUniformfv: ?function_signatures.glGetUniformfv = null;
    var glGetUniformiv: ?function_signatures.glGetUniformiv = null;
    var glGetUniformLocation: ?function_signatures.glGetUniformLocation = null;
    var glGetVertexAttribfv: ?function_signatures.glGetVertexAttribfv = null;
    var glGetVertexAttribiv: ?function_signatures.glGetVertexAttribiv = null;
    var glGetVertexAttribPointerv: ?function_signatures.glGetVertexAttribPointerv = null;
    var glHint: ?function_signatures.glHint = null;
    var glIsBuffer: ?function_signatures.glIsBuffer = null;
    var glIsEnabled: ?function_signatures.glIsEnabled = null;
    var glIsFramebuffer: ?function_signatures.glIsFramebuffer = null;
    var glIsProgram: ?function_signatures.glIsProgram = null;
    var glIsRenderbuffer: ?function_signatures.glIsRenderbuffer = null;
    var glIsShader: ?function_signatures.glIsShader = null;
    var glIsTexture: ?function_signatures.glIsTexture = null;
    var glLineWidth: ?function_signatures.glLineWidth = null;
    var glLinkProgram: ?function_signatures.glLinkProgram = null;
    var glPixelStorei: ?function_signatures.glPixelStorei = null;
    var glPolygonOffset: ?function_signatures.glPolygonOffset = null;
    var glReadPixels: ?function_signatures.glReadPixels = null;
    var glReleaseShaderCompiler: ?function_signatures.glReleaseShaderCompiler = null;
    var glRenderbufferStorage: ?function_signatures.glRenderbufferStorage = null;
    var glSampleCoverage: ?function_signatures.glSampleCoverage = null;
    var glScissor: ?function_signatures.glScissor = null;
    var glShaderBinary: ?function_signatures.glShaderBinary = null;
    var glShaderSource: ?function_signatures.glShaderSource = null;
    var glStencilFunc: ?function_signatures.glStencilFunc = null;
    var glStencilFuncSeparate: ?function_signatures.glStencilFuncSeparate = null;
    var glStencilMask: ?function_signatures.glStencilMask = null;
    var glStencilMaskSeparate: ?function_signatures.glStencilMaskSeparate = null;
    var glStencilOp: ?function_signatures.glStencilOp = null;
    var glStencilOpSeparate: ?function_signatures.glStencilOpSeparate = null;
    var glTexImage2D: ?function_signatures.glTexImage2D = null;
    var glTexParameterf: ?function_signatures.glTexParameterf = null;
    var glTexParameterfv: ?function_signatures.glTexParameterfv = null;
    var glTexParameteri: ?function_signatures.glTexParameteri = null;
    var glTexParameteriv: ?function_signatures.glTexParameteriv = null;
    var glTexSubImage2D: ?function_signatures.glTexSubImage2D = null;
    var glUniform1f: ?function_signatures.glUniform1f = null;
    var glUniform1fv: ?function_signatures.glUniform1fv = null;
    var glUniform1i: ?function_signatures.glUniform1i = null;
    var glUniform1iv: ?function_signatures.glUniform1iv = null;
    var glUniform2f: ?function_signatures.glUniform2f = null;
    var glUniform2fv: ?function_signatures.glUniform2fv = null;
    var glUniform2i: ?function_signatures.glUniform2i = null;
    var glUniform2iv: ?function_signatures.glUniform2iv = null;
    var glUniform3f: ?function_signatures.glUniform3f = null;
    var glUniform3fv: ?function_signatures.glUniform3fv = null;
    var glUniform3i: ?function_signatures.glUniform3i = null;
    var glUniform3iv: ?function_signatures.glUniform3iv = null;
    var glUniform4f: ?function_signatures.glUniform4f = null;
    var glUniform4fv: ?function_signatures.glUniform4fv = null;
    var glUniform4i: ?function_signatures.glUniform4i = null;
    var glUniform4iv: ?function_signatures.glUniform4iv = null;
    var glUniformMatrix2fv: ?function_signatures.glUniformMatrix2fv = null;
    var glUniformMatrix3fv: ?function_signatures.glUniformMatrix3fv = null;
    var glUniformMatrix4fv: ?function_signatures.glUniformMatrix4fv = null;
    var glUseProgram: ?function_signatures.glUseProgram = null;
    var glValidateProgram: ?function_signatures.glValidateProgram = null;
    var glVertexAttrib1f: ?function_signatures.glVertexAttrib1f = null;
    var glVertexAttrib1fv: ?function_signatures.glVertexAttrib1fv = null;
    var glVertexAttrib2f: ?function_signatures.glVertexAttrib2f = null;
    var glVertexAttrib2fv: ?function_signatures.glVertexAttrib2fv = null;
    var glVertexAttrib3f: ?function_signatures.glVertexAttrib3f = null;
    var glVertexAttrib3fv: ?function_signatures.glVertexAttrib3fv = null;
    var glVertexAttrib4f: ?function_signatures.glVertexAttrib4f = null;
    var glVertexAttrib4fv: ?function_signatures.glVertexAttrib4fv = null;
    var glVertexAttribPointer: ?function_signatures.glVertexAttribPointer = null;
    var glViewport: ?function_signatures.glViewport = null;
    var glReadBuffer: ?function_signatures.glReadBuffer = null;
    var glDrawRangeElements: ?function_signatures.glDrawRangeElements = null;
    var glTexImage3D: ?function_signatures.glTexImage3D = null;
    var glTexSubImage3D: ?function_signatures.glTexSubImage3D = null;
    var glCopyTexSubImage3D: ?function_signatures.glCopyTexSubImage3D = null;
    var glCompressedTexImage3D: ?function_signatures.glCompressedTexImage3D = null;
    var glCompressedTexSubImage3D: ?function_signatures.glCompressedTexSubImage3D = null;
    var glGenQueries: ?function_signatures.glGenQueries = null;
    var glDeleteQueries: ?function_signatures.glDeleteQueries = null;
    var glIsQuery: ?function_signatures.glIsQuery = null;
    var glBeginQuery: ?function_signatures.glBeginQuery = null;
    var glEndQuery: ?function_signatures.glEndQuery = null;
    var glGetQueryiv: ?function_signatures.glGetQueryiv = null;
    var glGetQueryObjectuiv: ?function_signatures.glGetQueryObjectuiv = null;
    var glUnmapBuffer: ?function_signatures.glUnmapBuffer = null;
    var glGetBufferPointerv: ?function_signatures.glGetBufferPointerv = null;
    var glDrawBuffers: ?function_signatures.glDrawBuffers = null;
    var glUniformMatrix2x3fv: ?function_signatures.glUniformMatrix2x3fv = null;
    var glUniformMatrix3x2fv: ?function_signatures.glUniformMatrix3x2fv = null;
    var glUniformMatrix2x4fv: ?function_signatures.glUniformMatrix2x4fv = null;
    var glUniformMatrix4x2fv: ?function_signatures.glUniformMatrix4x2fv = null;
    var glUniformMatrix3x4fv: ?function_signatures.glUniformMatrix3x4fv = null;
    var glUniformMatrix4x3fv: ?function_signatures.glUniformMatrix4x3fv = null;
    var glBlitFramebuffer: ?function_signatures.glBlitFramebuffer = null;
    var glRenderbufferStorageMultisample: ?function_signatures.glRenderbufferStorageMultisample = null;
    var glFramebufferTextureLayer: ?function_signatures.glFramebufferTextureLayer = null;
    var glMapBufferRange: ?function_signatures.glMapBufferRange = null;
    var glFlushMappedBufferRange: ?function_signatures.glFlushMappedBufferRange = null;
    var glBindVertexArray: ?function_signatures.glBindVertexArray = null;
    var glDeleteVertexArrays: ?function_signatures.glDeleteVertexArrays = null;
    var glGenVertexArrays: ?function_signatures.glGenVertexArrays = null;
    var glIsVertexArray: ?function_signatures.glIsVertexArray = null;
    var glGetIntegeri_v: ?function_signatures.glGetIntegeri_v = null;
    var glBeginTransformFeedback: ?function_signatures.glBeginTransformFeedback = null;
    var glEndTransformFeedback: ?function_signatures.glEndTransformFeedback = null;
    var glBindBufferRange: ?function_signatures.glBindBufferRange = null;
    var glBindBufferBase: ?function_signatures.glBindBufferBase = null;
    var glTransformFeedbackVaryings: ?function_signatures.glTransformFeedbackVaryings = null;
    var glGetTransformFeedbackVarying: ?function_signatures.glGetTransformFeedbackVarying = null;
    var glVertexAttribIPointer: ?function_signatures.glVertexAttribIPointer = null;
    var glGetVertexAttribIiv: ?function_signatures.glGetVertexAttribIiv = null;
    var glGetVertexAttribIuiv: ?function_signatures.glGetVertexAttribIuiv = null;
    var glVertexAttribI4i: ?function_signatures.glVertexAttribI4i = null;
    var glVertexAttribI4ui: ?function_signatures.glVertexAttribI4ui = null;
    var glVertexAttribI4iv: ?function_signatures.glVertexAttribI4iv = null;
    var glVertexAttribI4uiv: ?function_signatures.glVertexAttribI4uiv = null;
    var glGetUniformuiv: ?function_signatures.glGetUniformuiv = null;
    var glGetFragDataLocation: ?function_signatures.glGetFragDataLocation = null;
    var glUniform1ui: ?function_signatures.glUniform1ui = null;
    var glUniform2ui: ?function_signatures.glUniform2ui = null;
    var glUniform3ui: ?function_signatures.glUniform3ui = null;
    var glUniform4ui: ?function_signatures.glUniform4ui = null;
    var glUniform1uiv: ?function_signatures.glUniform1uiv = null;
    var glUniform2uiv: ?function_signatures.glUniform2uiv = null;
    var glUniform3uiv: ?function_signatures.glUniform3uiv = null;
    var glUniform4uiv: ?function_signatures.glUniform4uiv = null;
    var glClearBufferiv: ?function_signatures.glClearBufferiv = null;
    var glClearBufferuiv: ?function_signatures.glClearBufferuiv = null;
    var glClearBufferfv: ?function_signatures.glClearBufferfv = null;
    var glClearBufferfi: ?function_signatures.glClearBufferfi = null;
    var glGetStringi: ?function_signatures.glGetStringi = null;
    var glCopyBufferSubData: ?function_signatures.glCopyBufferSubData = null;
    var glGetUniformIndices: ?function_signatures.glGetUniformIndices = null;
    var glGetActiveUniformsiv: ?function_signatures.glGetActiveUniformsiv = null;
    var glGetUniformBlockIndex: ?function_signatures.glGetUniformBlockIndex = null;
    var glGetActiveUniformBlockiv: ?function_signatures.glGetActiveUniformBlockiv = null;
    var glGetActiveUniformBlockName: ?function_signatures.glGetActiveUniformBlockName = null;
    var glUniformBlockBinding: ?function_signatures.glUniformBlockBinding = null;
    var glDrawArraysInstanced: ?function_signatures.glDrawArraysInstanced = null;
    var glDrawElementsInstanced: ?function_signatures.glDrawElementsInstanced = null;
    var glFenceSync: ?function_signatures.glFenceSync = null;
    var glIsSync: ?function_signatures.glIsSync = null;
    var glDeleteSync: ?function_signatures.glDeleteSync = null;
    var glClientWaitSync: ?function_signatures.glClientWaitSync = null;
    var glWaitSync: ?function_signatures.glWaitSync = null;
    var glGetInteger64v: ?function_signatures.glGetInteger64v = null;
    var glGetSynciv: ?function_signatures.glGetSynciv = null;
    var glGetInteger64i_v: ?function_signatures.glGetInteger64i_v = null;
    var glGetBufferParameteri64v: ?function_signatures.glGetBufferParameteri64v = null;
    var glGenSamplers: ?function_signatures.glGenSamplers = null;
    var glDeleteSamplers: ?function_signatures.glDeleteSamplers = null;
    var glIsSampler: ?function_signatures.glIsSampler = null;
    var glBindSampler: ?function_signatures.glBindSampler = null;
    var glSamplerParameteri: ?function_signatures.glSamplerParameteri = null;
    var glSamplerParameteriv: ?function_signatures.glSamplerParameteriv = null;
    var glSamplerParameterf: ?function_signatures.glSamplerParameterf = null;
    var glSamplerParameterfv: ?function_signatures.glSamplerParameterfv = null;
    var glGetSamplerParameteriv: ?function_signatures.glGetSamplerParameteriv = null;
    var glGetSamplerParameterfv: ?function_signatures.glGetSamplerParameterfv = null;
    var glVertexAttribDivisor: ?function_signatures.glVertexAttribDivisor = null;
    var glBindTransformFeedback: ?function_signatures.glBindTransformFeedback = null;
    var glDeleteTransformFeedbacks: ?function_signatures.glDeleteTransformFeedbacks = null;
    var glGenTransformFeedbacks: ?function_signatures.glGenTransformFeedbacks = null;
    var glIsTransformFeedback: ?function_signatures.glIsTransformFeedback = null;
    var glPauseTransformFeedback: ?function_signatures.glPauseTransformFeedback = null;
    var glResumeTransformFeedback: ?function_signatures.glResumeTransformFeedback = null;
    var glGetProgramBinary: ?function_signatures.glGetProgramBinary = null;
    var glProgramBinary: ?function_signatures.glProgramBinary = null;
    var glProgramParameteri: ?function_signatures.glProgramParameteri = null;
    var glInvalidateFramebuffer: ?function_signatures.glInvalidateFramebuffer = null;
    var glInvalidateSubFramebuffer: ?function_signatures.glInvalidateSubFramebuffer = null;
    var glTexStorage2D: ?function_signatures.glTexStorage2D = null;
    var glTexStorage3D: ?function_signatures.glTexStorage3D = null;
    var glGetInternalformativ: ?function_signatures.glGetInternalformativ = null;
};

test "" {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
