const std = @import("std");
const builtin = @import("builtin");
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

pub const GLhandleARB = if (builtin.os.tag == .macos) *c_void else c_uint;

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

pub const GLDEBUGPROC = fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;
pub const GLDEBUGPROCARB = fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;
pub const GLDEBUGPROCKHR = fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;

pub const GLDEBUGPROCAMD = fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*c_void) callconv(.C) void;

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = fn () callconv(.C) void;

pub const VERSION_ES_CL_1_0 = 1;
pub const VERSION_ES_CM_1_1 = 1;
pub const VERSION_ES_CL_1_1 = 1;
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
pub const NEVER = 0x0200;
pub const LESS = 0x0201;
pub const EQUAL = 0x0202;
pub const LEQUAL = 0x0203;
pub const GREATER = 0x0204;
pub const NOTEQUAL = 0x0205;
pub const GEQUAL = 0x0206;
pub const ALWAYS = 0x0207;
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
pub const CLIP_PLANE0 = 0x3000;
pub const CLIP_PLANE1 = 0x3001;
pub const CLIP_PLANE2 = 0x3002;
pub const CLIP_PLANE3 = 0x3003;
pub const CLIP_PLANE4 = 0x3004;
pub const CLIP_PLANE5 = 0x3005;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const FRONT_AND_BACK = 0x0408;
pub const FOG = 0x0B60;
pub const LIGHTING = 0x0B50;
pub const TEXTURE_2D = 0x0DE1;
pub const CULL_FACE = 0x0B44;
pub const ALPHA_TEST = 0x0BC0;
pub const BLEND = 0x0BE2;
pub const COLOR_LOGIC_OP = 0x0BF2;
pub const DITHER = 0x0BD0;
pub const STENCIL_TEST = 0x0B90;
pub const DEPTH_TEST = 0x0B71;
pub const POINT_SMOOTH = 0x0B10;
pub const LINE_SMOOTH = 0x0B20;
pub const SCISSOR_TEST = 0x0C11;
pub const COLOR_MATERIAL = 0x0B57;
pub const NORMALIZE = 0x0BA1;
pub const RESCALE_NORMAL = 0x803A;
pub const VERTEX_ARRAY = 0x8074;
pub const NORMAL_ARRAY = 0x8075;
pub const COLOR_ARRAY = 0x8076;
pub const TEXTURE_COORD_ARRAY = 0x8078;
pub const MULTISAMPLE = 0x809D;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_ALPHA_TO_ONE = 0x809F;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const STACK_OVERFLOW = 0x0503;
pub const STACK_UNDERFLOW = 0x0504;
pub const OUT_OF_MEMORY = 0x0505;
pub const EXP = 0x0800;
pub const EXP2 = 0x0801;
pub const FOG_DENSITY = 0x0B62;
pub const FOG_START = 0x0B63;
pub const FOG_END = 0x0B64;
pub const FOG_MODE = 0x0B65;
pub const FOG_COLOR = 0x0B66;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const CURRENT_COLOR = 0x0B00;
pub const CURRENT_NORMAL = 0x0B02;
pub const CURRENT_TEXTURE_COORDS = 0x0B03;
pub const POINT_SIZE = 0x0B11;
pub const POINT_SIZE_MIN = 0x8126;
pub const POINT_SIZE_MAX = 0x8127;
pub const POINT_FADE_THRESHOLD_SIZE = 0x8128;
pub const POINT_DISTANCE_ATTENUATION = 0x8129;
pub const SMOOTH_POINT_SIZE_RANGE = 0x0B12;
pub const LINE_WIDTH = 0x0B21;
pub const SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
pub const ALIASED_POINT_SIZE_RANGE = 0x846D;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const SHADE_MODEL = 0x0B54;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const MATRIX_MODE = 0x0BA0;
pub const VIEWPORT = 0x0BA2;
pub const MODELVIEW_STACK_DEPTH = 0x0BA3;
pub const PROJECTION_STACK_DEPTH = 0x0BA4;
pub const TEXTURE_STACK_DEPTH = 0x0BA5;
pub const MODELVIEW_MATRIX = 0x0BA6;
pub const PROJECTION_MATRIX = 0x0BA7;
pub const TEXTURE_MATRIX = 0x0BA8;
pub const ALPHA_TEST_FUNC = 0x0BC1;
pub const ALPHA_TEST_REF = 0x0BC2;
pub const BLEND_DST = 0x0BE0;
pub const BLEND_SRC = 0x0BE1;
pub const LOGIC_OP_MODE = 0x0BF0;
pub const SCISSOR_BOX = 0x0C10;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const MAX_LIGHTS = 0x0D31;
pub const MAX_CLIP_PLANES = 0x0D32;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
pub const MAX_PROJECTION_STACK_DEPTH = 0x0D38;
pub const MAX_TEXTURE_STACK_DEPTH = 0x0D39;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const MAX_TEXTURE_UNITS = 0x84E2;
pub const SUBPIXEL_BITS = 0x0D50;
pub const RED_BITS = 0x0D52;
pub const GREEN_BITS = 0x0D53;
pub const BLUE_BITS = 0x0D54;
pub const ALPHA_BITS = 0x0D55;
pub const DEPTH_BITS = 0x0D56;
pub const STENCIL_BITS = 0x0D57;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const VERTEX_ARRAY_SIZE = 0x807A;
pub const VERTEX_ARRAY_TYPE = 0x807B;
pub const VERTEX_ARRAY_STRIDE = 0x807C;
pub const NORMAL_ARRAY_TYPE = 0x807E;
pub const NORMAL_ARRAY_STRIDE = 0x807F;
pub const COLOR_ARRAY_SIZE = 0x8081;
pub const COLOR_ARRAY_TYPE = 0x8082;
pub const COLOR_ARRAY_STRIDE = 0x8083;
pub const TEXTURE_COORD_ARRAY_SIZE = 0x8088;
pub const TEXTURE_COORD_ARRAY_TYPE = 0x8089;
pub const TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
pub const VERTEX_ARRAY_POINTER = 0x808E;
pub const NORMAL_ARRAY_POINTER = 0x808F;
pub const COLOR_ARRAY_POINTER = 0x8090;
pub const TEXTURE_COORD_ARRAY_POINTER = 0x8092;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const PERSPECTIVE_CORRECTION_HINT = 0x0C50;
pub const POINT_SMOOTH_HINT = 0x0C51;
pub const LINE_SMOOTH_HINT = 0x0C52;
pub const FOG_HINT = 0x0C54;
pub const GENERATE_MIPMAP_HINT = 0x8192;
pub const LIGHT_MODEL_AMBIENT = 0x0B53;
pub const LIGHT_MODEL_TWO_SIDE = 0x0B52;
pub const AMBIENT = 0x1200;
pub const DIFFUSE = 0x1201;
pub const SPECULAR = 0x1202;
pub const POSITION = 0x1203;
pub const SPOT_DIRECTION = 0x1204;
pub const SPOT_EXPONENT = 0x1205;
pub const SPOT_CUTOFF = 0x1206;
pub const CONSTANT_ATTENUATION = 0x1207;
pub const LINEAR_ATTENUATION = 0x1208;
pub const QUADRATIC_ATTENUATION = 0x1209;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const FLOAT = 0x1406;
pub const FIXED = 0x140C;
pub const CLEAR = 0x1500;
pub const AND = 0x1501;
pub const AND_REVERSE = 0x1502;
pub const COPY = 0x1503;
pub const AND_INVERTED = 0x1504;
pub const NOOP = 0x1505;
pub const XOR = 0x1506;
pub const OR = 0x1507;
pub const NOR = 0x1508;
pub const EQUIV = 0x1509;
pub const INVERT = 0x150A;
pub const OR_REVERSE = 0x150B;
pub const COPY_INVERTED = 0x150C;
pub const OR_INVERTED = 0x150D;
pub const NAND = 0x150E;
pub const SET = 0x150F;
pub const EMISSION = 0x1600;
pub const SHININESS = 0x1601;
pub const AMBIENT_AND_DIFFUSE = 0x1602;
pub const MODELVIEW = 0x1700;
pub const PROJECTION = 0x1701;
pub const TEXTURE = 0x1702;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const LUMINANCE = 0x1909;
pub const LUMINANCE_ALPHA = 0x190A;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_ALIGNMENT = 0x0D05;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const FLAT = 0x1D00;
pub const SMOOTH = 0x1D01;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
pub const VENDOR = 0x1F00;
pub const RENDERER = 0x1F01;
pub const VERSION = 0x1F02;
pub const EXTENSIONS = 0x1F03;
pub const MODULATE = 0x2100;
pub const DECAL = 0x2101;
pub const ADD = 0x0104;
pub const TEXTURE_ENV_MODE = 0x2200;
pub const TEXTURE_ENV_COLOR = 0x2201;
pub const TEXTURE_ENV = 0x2300;
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
pub const GENERATE_MIPMAP = 0x8191;
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
pub const CLIENT_ACTIVE_TEXTURE = 0x84E1;
pub const REPEAT = 0x2901;
pub const CLAMP_TO_EDGE = 0x812F;
pub const LIGHT0 = 0x4000;
pub const LIGHT1 = 0x4001;
pub const LIGHT2 = 0x4002;
pub const LIGHT3 = 0x4003;
pub const LIGHT4 = 0x4004;
pub const LIGHT5 = 0x4005;
pub const LIGHT6 = 0x4006;
pub const LIGHT7 = 0x4007;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const VERTEX_ARRAY_BUFFER_BINDING = 0x8896;
pub const NORMAL_ARRAY_BUFFER_BINDING = 0x8897;
pub const COLOR_ARRAY_BUFFER_BINDING = 0x8898;
pub const TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
pub const STATIC_DRAW = 0x88E4;
pub const DYNAMIC_DRAW = 0x88E8;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const SUBTRACT = 0x84E7;
pub const COMBINE = 0x8570;
pub const COMBINE_RGB = 0x8571;
pub const COMBINE_ALPHA = 0x8572;
pub const RGB_SCALE = 0x8573;
pub const ADD_SIGNED = 0x8574;
pub const INTERPOLATE = 0x8575;
pub const CONSTANT = 0x8576;
pub const PRIMARY_COLOR = 0x8577;
pub const PREVIOUS = 0x8578;
pub const OPERAND0_RGB = 0x8590;
pub const OPERAND1_RGB = 0x8591;
pub const OPERAND2_RGB = 0x8592;
pub const OPERAND0_ALPHA = 0x8598;
pub const OPERAND1_ALPHA = 0x8599;
pub const OPERAND2_ALPHA = 0x859A;
pub const ALPHA_SCALE = 0x0D1C;
pub const SRC0_RGB = 0x8580;
pub const SRC1_RGB = 0x8581;
pub const SRC2_RGB = 0x8582;
pub const SRC0_ALPHA = 0x8588;
pub const SRC1_ALPHA = 0x8589;
pub const SRC2_ALPHA = 0x858A;
pub const DOT3_RGB = 0x86AE;
pub const DOT3_RGBA = 0x86AF;

pub fn alphaFunc(_func: GLenum, _ref: GLfloat) void {
    return (function_pointers.glAlphaFunc orelse @panic("glAlphaFunc was not bound."))(_func, _ref);
}

pub fn clearColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(_red, _green, _blue, _alpha);
}

pub fn clearDepthf(_d: GLfloat) void {
    return (function_pointers.glClearDepthf orelse @panic("glClearDepthf was not bound."))(_d);
}

pub fn clipPlanef(_p: GLenum, _eqn: [*c]const GLfloat) void {
    return (function_pointers.glClipPlanef orelse @panic("glClipPlanef was not bound."))(_p, _eqn);
}

pub fn color4f(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glColor4f orelse @panic("glColor4f was not bound."))(_red, _green, _blue, _alpha);
}

pub fn depthRangef(_n: GLfloat, _f: GLfloat) void {
    return (function_pointers.glDepthRangef orelse @panic("glDepthRangef was not bound."))(_n, _f);
}

pub fn fogf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glFogf orelse @panic("glFogf was not bound."))(_pname, _param);
}

pub fn fogfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glFogfv orelse @panic("glFogfv was not bound."))(_pname, _params);
}

pub fn frustumf(_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) void {
    return (function_pointers.glFrustumf orelse @panic("glFrustumf was not bound."))(_l, _r, _b, _t, _n, _f);
}

pub fn getClipPlanef(_plane: GLenum, _equation: [*c]GLfloat) void {
    return (function_pointers.glGetClipPlanef orelse @panic("glGetClipPlanef was not bound."))(_plane, _equation);
}

pub fn getFloatv(_pname: GLenum, _data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(_pname, _data);
}

pub fn getLightfv(_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetLightfv orelse @panic("glGetLightfv was not bound."))(_light, _pname, _params);
}

pub fn getMaterialfv(_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetMaterialfv orelse @panic("glGetMaterialfv was not bound."))(_face, _pname, _params);
}

pub fn getTexEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexEnvfv orelse @panic("glGetTexEnvfv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(_target, _pname, _params);
}

pub fn lightModelf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glLightModelf orelse @panic("glLightModelf was not bound."))(_pname, _param);
}

pub fn lightModelfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glLightModelfv orelse @panic("glLightModelfv was not bound."))(_pname, _params);
}

pub fn lightf(_light: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glLightf orelse @panic("glLightf was not bound."))(_light, _pname, _param);
}

pub fn lightfv(_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glLightfv orelse @panic("glLightfv was not bound."))(_light, _pname, _params);
}

pub fn lineWidth(_width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(_width);
}

pub fn loadMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glLoadMatrixf orelse @panic("glLoadMatrixf was not bound."))(_m);
}

pub fn materialf(_face: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glMaterialf orelse @panic("glMaterialf was not bound."))(_face, _pname, _param);
}

pub fn materialfv(_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glMaterialfv orelse @panic("glMaterialfv was not bound."))(_face, _pname, _params);
}

pub fn multMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glMultMatrixf orelse @panic("glMultMatrixf was not bound."))(_m);
}

pub fn multiTexCoord4f(_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void {
    return (function_pointers.glMultiTexCoord4f orelse @panic("glMultiTexCoord4f was not bound."))(_target, _s, _t, _r, _q);
}

pub fn normal3f(_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) void {
    return (function_pointers.glNormal3f orelse @panic("glNormal3f was not bound."))(_nx, _ny, _nz);
}

pub fn orthof(_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) void {
    return (function_pointers.glOrthof orelse @panic("glOrthof was not bound."))(_l, _r, _b, _t, _n, _f);
}

pub fn pointParameterf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glPointParameterf orelse @panic("glPointParameterf was not bound."))(_pname, _param);
}

pub fn pointParameterfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glPointParameterfv orelse @panic("glPointParameterfv was not bound."))(_pname, _params);
}

pub fn pointSize(_size: GLfloat) void {
    return (function_pointers.glPointSize orelse @panic("glPointSize was not bound."))(_size);
}

pub fn polygonOffset(_factor: GLfloat, _units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(_factor, _units);
}

pub fn rotatef(_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glRotatef orelse @panic("glRotatef was not bound."))(_angle, _x, _y, _z);
}

pub fn scalef(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glScalef orelse @panic("glScalef was not bound."))(_x, _y, _z);
}

pub fn texEnvf(_target: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glTexEnvf orelse @panic("glTexEnvf was not bound."))(_target, _pname, _param);
}

pub fn texEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glTexEnvfv orelse @panic("glTexEnvfv was not bound."))(_target, _pname, _params);
}

pub fn texParameterf(_target: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glTexParameterf orelse @panic("glTexParameterf was not bound."))(_target, _pname, _param);
}

pub fn texParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glTexParameterfv orelse @panic("glTexParameterfv was not bound."))(_target, _pname, _params);
}

pub fn translatef(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glTranslatef orelse @panic("glTranslatef was not bound."))(_x, _y, _z);
}

pub fn activeTexture(_texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(_texture);
}

pub fn alphaFuncx(_func: GLenum, _ref: GLfixed) void {
    return (function_pointers.glAlphaFuncx orelse @panic("glAlphaFuncx was not bound."))(_func, _ref);
}

pub fn bindBuffer(_target: GLenum, _buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(_target, _buffer);
}

pub fn bindTexture(_target: GLenum, _texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(_target, _texture);
}

pub fn blendFunc(_sfactor: GLenum, _dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(_sfactor, _dfactor);
}

pub fn bufferData(_target: GLenum, _size: GLsizeiptr, _data: ?*const c_void, _usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(_target, _size, _data, _usage);
}

pub fn bufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const c_void) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(_target, _offset, _size, _data);
}

pub fn clear(_mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(_mask);
}

pub fn clearColorx(_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void {
    return (function_pointers.glClearColorx orelse @panic("glClearColorx was not bound."))(_red, _green, _blue, _alpha);
}

pub fn clearDepthx(_depth: GLfixed) void {
    return (function_pointers.glClearDepthx orelse @panic("glClearDepthx was not bound."))(_depth);
}

pub fn clearStencil(_s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(_s);
}

pub fn clientActiveTexture(_texture: GLenum) void {
    return (function_pointers.glClientActiveTexture orelse @panic("glClientActiveTexture was not bound."))(_texture);
}

pub fn clipPlanex(_plane: GLenum, _equation: [*c]const GLfixed) void {
    return (function_pointers.glClipPlanex orelse @panic("glClipPlanex was not bound."))(_plane, _equation);
}

pub fn color4ub(_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) void {
    return (function_pointers.glColor4ub orelse @panic("glColor4ub was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4x(_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void {
    return (function_pointers.glColor4x orelse @panic("glColor4x was not bound."))(_red, _green, _blue, _alpha);
}

pub fn colorMask(_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(_red, _green, _blue, _alpha);
}

pub fn colorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(_size, _type, _stride, _pointer);
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

pub fn cullFace(_mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(_mode);
}

pub fn deleteBuffers(_n: GLsizei, _buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(_n, _buffers);
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

pub fn depthRangex(_n: GLfixed, _f: GLfixed) void {
    return (function_pointers.glDepthRangex orelse @panic("glDepthRangex was not bound."))(_n, _f);
}

pub fn disable(_cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(_cap);
}

pub fn disableClientState(_array: GLenum) void {
    return (function_pointers.glDisableClientState orelse @panic("glDisableClientState was not bound."))(_array);
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

pub fn enableClientState(_array: GLenum) void {
    return (function_pointers.glEnableClientState orelse @panic("glEnableClientState was not bound."))(_array);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn fogx(_pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glFogx orelse @panic("glFogx was not bound."))(_pname, _param);
}

pub fn fogxv(_pname: GLenum, _param: [*c]const GLfixed) void {
    return (function_pointers.glFogxv orelse @panic("glFogxv was not bound."))(_pname, _param);
}

pub fn frontFace(_mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(_mode);
}

pub fn frustumx(_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) void {
    return (function_pointers.glFrustumx orelse @panic("glFrustumx was not bound."))(_l, _r, _b, _t, _n, _f);
}

pub fn getBooleanv(_pname: GLenum, _data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(_pname, _data);
}

pub fn getBufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getClipPlanex(_plane: GLenum, _equation: [*c]GLfixed) void {
    return (function_pointers.glGetClipPlanex orelse @panic("glGetClipPlanex was not bound."))(_plane, _equation);
}

pub fn genBuffers(_n: GLsizei, _buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(_n, _buffers);
}

pub fn genTextures(_n: GLsizei, _textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(_n, _textures);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFixedv(_pname: GLenum, _params: [*c]GLfixed) void {
    return (function_pointers.glGetFixedv orelse @panic("glGetFixedv was not bound."))(_pname, _params);
}

pub fn getIntegerv(_pname: GLenum, _data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(_pname, _data);
}

pub fn getLightxv(_light: GLenum, _pname: GLenum, _params: [*c]GLfixed) void {
    return (function_pointers.glGetLightxv orelse @panic("glGetLightxv was not bound."))(_light, _pname, _params);
}

pub fn getMaterialxv(_face: GLenum, _pname: GLenum, _params: [*c]GLfixed) void {
    return (function_pointers.glGetMaterialxv orelse @panic("glGetMaterialxv was not bound."))(_face, _pname, _params);
}

pub fn getPointerv(_pname: GLenum, _params: ?*?*c_void) void {
    return (function_pointers.glGetPointerv orelse @panic("glGetPointerv was not bound."))(_pname, _params);
}

pub fn getString(_name: GLenum) ?[*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(_name);
}

pub fn getTexEnviv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexEnviv orelse @panic("glGetTexEnviv was not bound."))(_target, _pname, _params);
}

pub fn getTexEnvxv(_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) void {
    return (function_pointers.glGetTexEnvxv orelse @panic("glGetTexEnvxv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameterxv(_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) void {
    return (function_pointers.glGetTexParameterxv orelse @panic("glGetTexParameterxv was not bound."))(_target, _pname, _params);
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

pub fn isTexture(_texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(_texture);
}

pub fn lightModelx(_pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glLightModelx orelse @panic("glLightModelx was not bound."))(_pname, _param);
}

pub fn lightModelxv(_pname: GLenum, _param: [*c]const GLfixed) void {
    return (function_pointers.glLightModelxv orelse @panic("glLightModelxv was not bound."))(_pname, _param);
}

pub fn lightx(_light: GLenum, _pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glLightx orelse @panic("glLightx was not bound."))(_light, _pname, _param);
}

pub fn lightxv(_light: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void {
    return (function_pointers.glLightxv orelse @panic("glLightxv was not bound."))(_light, _pname, _params);
}

pub fn lineWidthx(_width: GLfixed) void {
    return (function_pointers.glLineWidthx orelse @panic("glLineWidthx was not bound."))(_width);
}

pub fn loadIdentity() void {
    return (function_pointers.glLoadIdentity orelse @panic("glLoadIdentity was not bound."))();
}

pub fn loadMatrixx(_m: [*c]const GLfixed) void {
    return (function_pointers.glLoadMatrixx orelse @panic("glLoadMatrixx was not bound."))(_m);
}

pub fn logicOp(_opcode: GLenum) void {
    return (function_pointers.glLogicOp orelse @panic("glLogicOp was not bound."))(_opcode);
}

pub fn materialx(_face: GLenum, _pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glMaterialx orelse @panic("glMaterialx was not bound."))(_face, _pname, _param);
}

pub fn materialxv(_face: GLenum, _pname: GLenum, _param: [*c]const GLfixed) void {
    return (function_pointers.glMaterialxv orelse @panic("glMaterialxv was not bound."))(_face, _pname, _param);
}

pub fn matrixMode(_mode: GLenum) void {
    return (function_pointers.glMatrixMode orelse @panic("glMatrixMode was not bound."))(_mode);
}

pub fn multMatrixx(_m: [*c]const GLfixed) void {
    return (function_pointers.glMultMatrixx orelse @panic("glMultMatrixx was not bound."))(_m);
}

pub fn multiTexCoord4x(_texture: GLenum, _s: GLfixed, _t: GLfixed, _r: GLfixed, _q: GLfixed) void {
    return (function_pointers.glMultiTexCoord4x orelse @panic("glMultiTexCoord4x was not bound."))(_texture, _s, _t, _r, _q);
}

pub fn normal3x(_nx: GLfixed, _ny: GLfixed, _nz: GLfixed) void {
    return (function_pointers.glNormal3x orelse @panic("glNormal3x was not bound."))(_nx, _ny, _nz);
}

pub fn normalPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glNormalPointer orelse @panic("glNormalPointer was not bound."))(_type, _stride, _pointer);
}

pub fn orthox(_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) void {
    return (function_pointers.glOrthox orelse @panic("glOrthox was not bound."))(_l, _r, _b, _t, _n, _f);
}

pub fn pixelStorei(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(_pname, _param);
}

pub fn pointParameterx(_pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glPointParameterx orelse @panic("glPointParameterx was not bound."))(_pname, _param);
}

pub fn pointParameterxv(_pname: GLenum, _params: [*c]const GLfixed) void {
    return (function_pointers.glPointParameterxv orelse @panic("glPointParameterxv was not bound."))(_pname, _params);
}

pub fn pointSizex(_size: GLfixed) void {
    return (function_pointers.glPointSizex orelse @panic("glPointSizex was not bound."))(_size);
}

pub fn polygonOffsetx(_factor: GLfixed, _units: GLfixed) void {
    return (function_pointers.glPolygonOffsetx orelse @panic("glPolygonOffsetx was not bound."))(_factor, _units);
}

pub fn popMatrix() void {
    return (function_pointers.glPopMatrix orelse @panic("glPopMatrix was not bound."))();
}

pub fn pushMatrix() void {
    return (function_pointers.glPushMatrix orelse @panic("glPushMatrix was not bound."))();
}

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(_x, _y, _width, _height, _format, _type, _pixels);
}

pub fn rotatex(_angle: GLfixed, _x: GLfixed, _y: GLfixed, _z: GLfixed) void {
    return (function_pointers.glRotatex orelse @panic("glRotatex was not bound."))(_angle, _x, _y, _z);
}

pub fn sampleCoverage(_value: GLfloat, _invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(_value, _invert);
}

pub fn sampleCoveragex(_value: GLclampx, _invert: GLboolean) void {
    return (function_pointers.glSampleCoveragex orelse @panic("glSampleCoveragex was not bound."))(_value, _invert);
}

pub fn scalex(_x: GLfixed, _y: GLfixed, _z: GLfixed) void {
    return (function_pointers.glScalex orelse @panic("glScalex was not bound."))(_x, _y, _z);
}

pub fn scissor(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(_x, _y, _width, _height);
}

pub fn shadeModel(_mode: GLenum) void {
    return (function_pointers.glShadeModel orelse @panic("glShadeModel was not bound."))(_mode);
}

pub fn stencilFunc(_func: GLenum, _ref: GLint, _mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(_func, _ref, _mask);
}

pub fn stencilMask(_mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(_mask);
}

pub fn stencilOp(_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(_fail, _zfail, _zpass);
}

pub fn texCoordPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glTexCoordPointer orelse @panic("glTexCoordPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn texEnvi(_target: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glTexEnvi orelse @panic("glTexEnvi was not bound."))(_target, _pname, _param);
}

pub fn texEnvx(_target: GLenum, _pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glTexEnvx orelse @panic("glTexEnvx was not bound."))(_target, _pname, _param);
}

pub fn texEnviv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexEnviv orelse @panic("glTexEnviv was not bound."))(_target, _pname, _params);
}

pub fn texEnvxv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void {
    return (function_pointers.glTexEnvxv orelse @panic("glTexEnvxv was not bound."))(_target, _pname, _params);
}

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _format, _type, _pixels);
}

pub fn texParameteri(_target: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glTexParameteri orelse @panic("glTexParameteri was not bound."))(_target, _pname, _param);
}

pub fn texParameterx(_target: GLenum, _pname: GLenum, _param: GLfixed) void {
    return (function_pointers.glTexParameterx orelse @panic("glTexParameterx was not bound."))(_target, _pname, _param);
}

pub fn texParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexParameteriv orelse @panic("glTexParameteriv was not bound."))(_target, _pname, _params);
}

pub fn texParameterxv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void {
    return (function_pointers.glTexParameterxv orelse @panic("glTexParameterxv was not bound."))(_target, _pname, _params);
}

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels);
}

pub fn translatex(_x: GLfixed, _y: GLfixed, _z: GLfixed) void {
    return (function_pointers.glTranslatex orelse @panic("glTranslatex was not bound."))(_x, _y, _z);
}

pub fn vertexPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glVertexPointer orelse @panic("glVertexPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn viewport(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(_x, _y, _width, _height);
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*const c_void) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glAlphaFunc")) |proc| {
        function_pointers.glAlphaFunc = @ptrCast(?function_signatures.glAlphaFunc, proc);
    } else {
        log.emerg("entry point glAlphaFunc not found!", .{});
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
    if (get_proc_address(load_ctx, "glClipPlanef")) |proc| {
        function_pointers.glClipPlanef = @ptrCast(?function_signatures.glClipPlanef, proc);
    } else {
        log.emerg("entry point glClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4f")) |proc| {
        function_pointers.glColor4f = @ptrCast(?function_signatures.glColor4f, proc);
    } else {
        log.emerg("entry point glColor4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangef")) |proc| {
        function_pointers.glDepthRangef = @ptrCast(?function_signatures.glDepthRangef, proc);
    } else {
        log.emerg("entry point glDepthRangef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogf")) |proc| {
        function_pointers.glFogf = @ptrCast(?function_signatures.glFogf, proc);
    } else {
        log.emerg("entry point glFogf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogfv")) |proc| {
        function_pointers.glFogfv = @ptrCast(?function_signatures.glFogfv, proc);
    } else {
        log.emerg("entry point glFogfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumf")) |proc| {
        function_pointers.glFrustumf = @ptrCast(?function_signatures.glFrustumf, proc);
    } else {
        log.emerg("entry point glFrustumf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlanef")) |proc| {
        function_pointers.glGetClipPlanef = @ptrCast(?function_signatures.glGetClipPlanef, proc);
    } else {
        log.emerg("entry point glGetClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(?function_signatures.glGetFloatv, proc);
    } else {
        log.emerg("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightfv")) |proc| {
        function_pointers.glGetLightfv = @ptrCast(?function_signatures.glGetLightfv, proc);
    } else {
        log.emerg("entry point glGetLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialfv")) |proc| {
        function_pointers.glGetMaterialfv = @ptrCast(?function_signatures.glGetMaterialfv, proc);
    } else {
        log.emerg("entry point glGetMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvfv")) |proc| {
        function_pointers.glGetTexEnvfv = @ptrCast(?function_signatures.glGetTexEnvfv, proc);
    } else {
        log.emerg("entry point glGetTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(?function_signatures.glGetTexParameterfv, proc);
    } else {
        log.emerg("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelf")) |proc| {
        function_pointers.glLightModelf = @ptrCast(?function_signatures.glLightModelf, proc);
    } else {
        log.emerg("entry point glLightModelf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelfv")) |proc| {
        function_pointers.glLightModelfv = @ptrCast(?function_signatures.glLightModelfv, proc);
    } else {
        log.emerg("entry point glLightModelfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightf")) |proc| {
        function_pointers.glLightf = @ptrCast(?function_signatures.glLightf, proc);
    } else {
        log.emerg("entry point glLightf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightfv")) |proc| {
        function_pointers.glLightfv = @ptrCast(?function_signatures.glLightfv, proc);
    } else {
        log.emerg("entry point glLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(?function_signatures.glLineWidth, proc);
    } else {
        log.emerg("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixf")) |proc| {
        function_pointers.glLoadMatrixf = @ptrCast(?function_signatures.glLoadMatrixf, proc);
    } else {
        log.emerg("entry point glLoadMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialf")) |proc| {
        function_pointers.glMaterialf = @ptrCast(?function_signatures.glMaterialf, proc);
    } else {
        log.emerg("entry point glMaterialf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialfv")) |proc| {
        function_pointers.glMaterialfv = @ptrCast(?function_signatures.glMaterialfv, proc);
    } else {
        log.emerg("entry point glMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixf")) |proc| {
        function_pointers.glMultMatrixf = @ptrCast(?function_signatures.glMultMatrixf, proc);
    } else {
        log.emerg("entry point glMultMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4f")) |proc| {
        function_pointers.glMultiTexCoord4f = @ptrCast(?function_signatures.glMultiTexCoord4f, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3f")) |proc| {
        function_pointers.glNormal3f = @ptrCast(?function_signatures.glNormal3f, proc);
    } else {
        log.emerg("entry point glNormal3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthof")) |proc| {
        function_pointers.glOrthof = @ptrCast(?function_signatures.glOrthof, proc);
    } else {
        log.emerg("entry point glOrthof not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterf")) |proc| {
        function_pointers.glPointParameterf = @ptrCast(?function_signatures.glPointParameterf, proc);
    } else {
        log.emerg("entry point glPointParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterfv")) |proc| {
        function_pointers.glPointParameterfv = @ptrCast(?function_signatures.glPointParameterfv, proc);
    } else {
        log.emerg("entry point glPointParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSize")) |proc| {
        function_pointers.glPointSize = @ptrCast(?function_signatures.glPointSize, proc);
    } else {
        log.emerg("entry point glPointSize not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(?function_signatures.glPolygonOffset, proc);
    } else {
        log.emerg("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatef")) |proc| {
        function_pointers.glRotatef = @ptrCast(?function_signatures.glRotatef, proc);
    } else {
        log.emerg("entry point glRotatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalef")) |proc| {
        function_pointers.glScalef = @ptrCast(?function_signatures.glScalef, proc);
    } else {
        log.emerg("entry point glScalef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvf")) |proc| {
        function_pointers.glTexEnvf = @ptrCast(?function_signatures.glTexEnvf, proc);
    } else {
        log.emerg("entry point glTexEnvf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvfv")) |proc| {
        function_pointers.glTexEnvfv = @ptrCast(?function_signatures.glTexEnvfv, proc);
    } else {
        log.emerg("entry point glTexEnvfv not found!", .{});
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
    if (get_proc_address(load_ctx, "glTranslatef")) |proc| {
        function_pointers.glTranslatef = @ptrCast(?function_signatures.glTranslatef, proc);
    } else {
        log.emerg("entry point glTranslatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(?function_signatures.glActiveTexture, proc);
    } else {
        log.emerg("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAlphaFuncx")) |proc| {
        function_pointers.glAlphaFuncx = @ptrCast(?function_signatures.glAlphaFuncx, proc);
    } else {
        log.emerg("entry point glAlphaFuncx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(?function_signatures.glBindBuffer, proc);
    } else {
        log.emerg("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(?function_signatures.glBindTexture, proc);
    } else {
        log.emerg("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(?function_signatures.glBlendFunc, proc);
    } else {
        log.emerg("entry point glBlendFunc not found!", .{});
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
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(?function_signatures.glClear, proc);
    } else {
        log.emerg("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColorx")) |proc| {
        function_pointers.glClearColorx = @ptrCast(?function_signatures.glClearColorx, proc);
    } else {
        log.emerg("entry point glClearColorx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthx")) |proc| {
        function_pointers.glClearDepthx = @ptrCast(?function_signatures.glClearDepthx, proc);
    } else {
        log.emerg("entry point glClearDepthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(?function_signatures.glClearStencil, proc);
    } else {
        log.emerg("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientActiveTexture")) |proc| {
        function_pointers.glClientActiveTexture = @ptrCast(?function_signatures.glClientActiveTexture, proc);
    } else {
        log.emerg("entry point glClientActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlanex")) |proc| {
        function_pointers.glClipPlanex = @ptrCast(?function_signatures.glClipPlanex, proc);
    } else {
        log.emerg("entry point glClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ub")) |proc| {
        function_pointers.glColor4ub = @ptrCast(?function_signatures.glColor4ub, proc);
    } else {
        log.emerg("entry point glColor4ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4x")) |proc| {
        function_pointers.glColor4x = @ptrCast(?function_signatures.glColor4x, proc);
    } else {
        log.emerg("entry point glColor4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(?function_signatures.glColorMask, proc);
    } else {
        log.emerg("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorPointer")) |proc| {
        function_pointers.glColorPointer = @ptrCast(?function_signatures.glColorPointer, proc);
    } else {
        log.emerg("entry point glColorPointer not found!", .{});
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
    if (get_proc_address(load_ctx, "glDepthRangex")) |proc| {
        function_pointers.glDepthRangex = @ptrCast(?function_signatures.glDepthRangex, proc);
    } else {
        log.emerg("entry point glDepthRangex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(?function_signatures.glDisable, proc);
    } else {
        log.emerg("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableClientState")) |proc| {
        function_pointers.glDisableClientState = @ptrCast(?function_signatures.glDisableClientState, proc);
    } else {
        log.emerg("entry point glDisableClientState not found!", .{});
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
    if (get_proc_address(load_ctx, "glEnableClientState")) |proc| {
        function_pointers.glEnableClientState = @ptrCast(?function_signatures.glEnableClientState, proc);
    } else {
        log.emerg("entry point glEnableClientState not found!", .{});
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
    if (get_proc_address(load_ctx, "glFogx")) |proc| {
        function_pointers.glFogx = @ptrCast(?function_signatures.glFogx, proc);
    } else {
        log.emerg("entry point glFogx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogxv")) |proc| {
        function_pointers.glFogxv = @ptrCast(?function_signatures.glFogxv, proc);
    } else {
        log.emerg("entry point glFogxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(?function_signatures.glFrontFace, proc);
    } else {
        log.emerg("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumx")) |proc| {
        function_pointers.glFrustumx = @ptrCast(?function_signatures.glFrustumx, proc);
    } else {
        log.emerg("entry point glFrustumx not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetClipPlanex")) |proc| {
        function_pointers.glGetClipPlanex = @ptrCast(?function_signatures.glGetClipPlanex, proc);
    } else {
        log.emerg("entry point glGetClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(?function_signatures.glGenBuffers, proc);
    } else {
        log.emerg("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(?function_signatures.glGenTextures, proc);
    } else {
        log.emerg("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(?function_signatures.glGetError, proc);
    } else {
        log.emerg("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFixedv")) |proc| {
        function_pointers.glGetFixedv = @ptrCast(?function_signatures.glGetFixedv, proc);
    } else {
        log.emerg("entry point glGetFixedv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(?function_signatures.glGetIntegerv, proc);
    } else {
        log.emerg("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightxv")) |proc| {
        function_pointers.glGetLightxv = @ptrCast(?function_signatures.glGetLightxv, proc);
    } else {
        log.emerg("entry point glGetLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialxv")) |proc| {
        function_pointers.glGetMaterialxv = @ptrCast(?function_signatures.glGetMaterialxv, proc);
    } else {
        log.emerg("entry point glGetMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPointerv")) |proc| {
        function_pointers.glGetPointerv = @ptrCast(?function_signatures.glGetPointerv, proc);
    } else {
        log.emerg("entry point glGetPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(?function_signatures.glGetString, proc);
    } else {
        log.emerg("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnviv")) |proc| {
        function_pointers.glGetTexEnviv = @ptrCast(?function_signatures.glGetTexEnviv, proc);
    } else {
        log.emerg("entry point glGetTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvxv")) |proc| {
        function_pointers.glGetTexEnvxv = @ptrCast(?function_signatures.glGetTexEnvxv, proc);
    } else {
        log.emerg("entry point glGetTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(?function_signatures.glGetTexParameteriv, proc);
    } else {
        log.emerg("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterxv")) |proc| {
        function_pointers.glGetTexParameterxv = @ptrCast(?function_signatures.glGetTexParameterxv, proc);
    } else {
        log.emerg("entry point glGetTexParameterxv not found!", .{});
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
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(?function_signatures.glIsTexture, proc);
    } else {
        log.emerg("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelx")) |proc| {
        function_pointers.glLightModelx = @ptrCast(?function_signatures.glLightModelx, proc);
    } else {
        log.emerg("entry point glLightModelx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelxv")) |proc| {
        function_pointers.glLightModelxv = @ptrCast(?function_signatures.glLightModelxv, proc);
    } else {
        log.emerg("entry point glLightModelxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightx")) |proc| {
        function_pointers.glLightx = @ptrCast(?function_signatures.glLightx, proc);
    } else {
        log.emerg("entry point glLightx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightxv")) |proc| {
        function_pointers.glLightxv = @ptrCast(?function_signatures.glLightxv, proc);
    } else {
        log.emerg("entry point glLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidthx")) |proc| {
        function_pointers.glLineWidthx = @ptrCast(?function_signatures.glLineWidthx, proc);
    } else {
        log.emerg("entry point glLineWidthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadIdentity")) |proc| {
        function_pointers.glLoadIdentity = @ptrCast(?function_signatures.glLoadIdentity, proc);
    } else {
        log.emerg("entry point glLoadIdentity not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixx")) |proc| {
        function_pointers.glLoadMatrixx = @ptrCast(?function_signatures.glLoadMatrixx, proc);
    } else {
        log.emerg("entry point glLoadMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLogicOp")) |proc| {
        function_pointers.glLogicOp = @ptrCast(?function_signatures.glLogicOp, proc);
    } else {
        log.emerg("entry point glLogicOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialx")) |proc| {
        function_pointers.glMaterialx = @ptrCast(?function_signatures.glMaterialx, proc);
    } else {
        log.emerg("entry point glMaterialx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialxv")) |proc| {
        function_pointers.glMaterialxv = @ptrCast(?function_signatures.glMaterialxv, proc);
    } else {
        log.emerg("entry point glMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMatrixMode")) |proc| {
        function_pointers.glMatrixMode = @ptrCast(?function_signatures.glMatrixMode, proc);
    } else {
        log.emerg("entry point glMatrixMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixx")) |proc| {
        function_pointers.glMultMatrixx = @ptrCast(?function_signatures.glMultMatrixx, proc);
    } else {
        log.emerg("entry point glMultMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4x")) |proc| {
        function_pointers.glMultiTexCoord4x = @ptrCast(?function_signatures.glMultiTexCoord4x, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3x")) |proc| {
        function_pointers.glNormal3x = @ptrCast(?function_signatures.glNormal3x, proc);
    } else {
        log.emerg("entry point glNormal3x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormalPointer")) |proc| {
        function_pointers.glNormalPointer = @ptrCast(?function_signatures.glNormalPointer, proc);
    } else {
        log.emerg("entry point glNormalPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthox")) |proc| {
        function_pointers.glOrthox = @ptrCast(?function_signatures.glOrthox, proc);
    } else {
        log.emerg("entry point glOrthox not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(?function_signatures.glPixelStorei, proc);
    } else {
        log.emerg("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterx")) |proc| {
        function_pointers.glPointParameterx = @ptrCast(?function_signatures.glPointParameterx, proc);
    } else {
        log.emerg("entry point glPointParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterxv")) |proc| {
        function_pointers.glPointParameterxv = @ptrCast(?function_signatures.glPointParameterxv, proc);
    } else {
        log.emerg("entry point glPointParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSizex")) |proc| {
        function_pointers.glPointSizex = @ptrCast(?function_signatures.glPointSizex, proc);
    } else {
        log.emerg("entry point glPointSizex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffsetx")) |proc| {
        function_pointers.glPolygonOffsetx = @ptrCast(?function_signatures.glPolygonOffsetx, proc);
    } else {
        log.emerg("entry point glPolygonOffsetx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopMatrix")) |proc| {
        function_pointers.glPopMatrix = @ptrCast(?function_signatures.glPopMatrix, proc);
    } else {
        log.emerg("entry point glPopMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushMatrix")) |proc| {
        function_pointers.glPushMatrix = @ptrCast(?function_signatures.glPushMatrix, proc);
    } else {
        log.emerg("entry point glPushMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(?function_signatures.glReadPixels, proc);
    } else {
        log.emerg("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatex")) |proc| {
        function_pointers.glRotatex = @ptrCast(?function_signatures.glRotatex, proc);
    } else {
        log.emerg("entry point glRotatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(?function_signatures.glSampleCoverage, proc);
    } else {
        log.emerg("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoveragex")) |proc| {
        function_pointers.glSampleCoveragex = @ptrCast(?function_signatures.glSampleCoveragex, proc);
    } else {
        log.emerg("entry point glSampleCoveragex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalex")) |proc| {
        function_pointers.glScalex = @ptrCast(?function_signatures.glScalex, proc);
    } else {
        log.emerg("entry point glScalex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(?function_signatures.glScissor, proc);
    } else {
        log.emerg("entry point glScissor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShadeModel")) |proc| {
        function_pointers.glShadeModel = @ptrCast(?function_signatures.glShadeModel, proc);
    } else {
        log.emerg("entry point glShadeModel not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(?function_signatures.glStencilFunc, proc);
    } else {
        log.emerg("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(?function_signatures.glStencilMask, proc);
    } else {
        log.emerg("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(?function_signatures.glStencilOp, proc);
    } else {
        log.emerg("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoordPointer")) |proc| {
        function_pointers.glTexCoordPointer = @ptrCast(?function_signatures.glTexCoordPointer, proc);
    } else {
        log.emerg("entry point glTexCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvi")) |proc| {
        function_pointers.glTexEnvi = @ptrCast(?function_signatures.glTexEnvi, proc);
    } else {
        log.emerg("entry point glTexEnvi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvx")) |proc| {
        function_pointers.glTexEnvx = @ptrCast(?function_signatures.glTexEnvx, proc);
    } else {
        log.emerg("entry point glTexEnvx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnviv")) |proc| {
        function_pointers.glTexEnviv = @ptrCast(?function_signatures.glTexEnviv, proc);
    } else {
        log.emerg("entry point glTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvxv")) |proc| {
        function_pointers.glTexEnvxv = @ptrCast(?function_signatures.glTexEnvxv, proc);
    } else {
        log.emerg("entry point glTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(?function_signatures.glTexImage2D, proc);
    } else {
        log.emerg("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(?function_signatures.glTexParameteri, proc);
    } else {
        log.emerg("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterx")) |proc| {
        function_pointers.glTexParameterx = @ptrCast(?function_signatures.glTexParameterx, proc);
    } else {
        log.emerg("entry point glTexParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(?function_signatures.glTexParameteriv, proc);
    } else {
        log.emerg("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterxv")) |proc| {
        function_pointers.glTexParameterxv = @ptrCast(?function_signatures.glTexParameterxv, proc);
    } else {
        log.emerg("entry point glTexParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(?function_signatures.glTexSubImage2D, proc);
    } else {
        log.emerg("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatex")) |proc| {
        function_pointers.glTranslatex = @ptrCast(?function_signatures.glTranslatex, proc);
    } else {
        log.emerg("entry point glTranslatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexPointer")) |proc| {
        function_pointers.glVertexPointer = @ptrCast(?function_signatures.glVertexPointer, proc);
    } else {
        log.emerg("entry point glVertexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(?function_signatures.glViewport, proc);
    } else {
        log.emerg("entry point glViewport not found!", .{});
        success = false;
    }
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glAlphaFunc = fn (_func: GLenum, _ref: GLfloat) void;
    const glClearColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glClearDepthf = fn (_d: GLfloat) void;
    const glClipPlanef = fn (_p: GLenum, _eqn: [*c]const GLfloat) void;
    const glColor4f = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glDepthRangef = fn (_n: GLfloat, _f: GLfloat) void;
    const glFogf = fn (_pname: GLenum, _param: GLfloat) void;
    const glFogfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glFrustumf = fn (_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) void;
    const glGetClipPlanef = fn (_plane: GLenum, _equation: [*c]GLfloat) void;
    const glGetFloatv = fn (_pname: GLenum, _data: [*c]GLfloat) void;
    const glGetLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glLightModelf = fn (_pname: GLenum, _param: GLfloat) void;
    const glLightModelfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glLightf = fn (_light: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glLineWidth = fn (_width: GLfloat) void;
    const glLoadMatrixf = fn (_m: [*c]const GLfloat) void;
    const glMaterialf = fn (_face: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glMultMatrixf = fn (_m: [*c]const GLfloat) void;
    const glMultiTexCoord4f = fn (_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void;
    const glNormal3f = fn (_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) void;
    const glOrthof = fn (_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) void;
    const glPointParameterf = fn (_pname: GLenum, _param: GLfloat) void;
    const glPointParameterfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glPointSize = fn (_size: GLfloat) void;
    const glPolygonOffset = fn (_factor: GLfloat, _units: GLfloat) void;
    const glRotatef = fn (_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glScalef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glTexEnvf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTexParameterf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTranslatef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glActiveTexture = fn (_texture: GLenum) void;
    const glAlphaFuncx = fn (_func: GLenum, _ref: GLfixed) void;
    const glBindBuffer = fn (_target: GLenum, _buffer: GLuint) void;
    const glBindTexture = fn (_target: GLenum, _texture: GLuint) void;
    const glBlendFunc = fn (_sfactor: GLenum, _dfactor: GLenum) void;
    const glBufferData = fn (_target: GLenum, _size: GLsizeiptr, _data: ?*const c_void, _usage: GLenum) void;
    const glBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const c_void) void;
    const glClear = fn (_mask: GLbitfield) void;
    const glClearColorx = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void;
    const glClearDepthx = fn (_depth: GLfixed) void;
    const glClearStencil = fn (_s: GLint) void;
    const glClientActiveTexture = fn (_texture: GLenum) void;
    const glClipPlanex = fn (_plane: GLenum, _equation: [*c]const GLfixed) void;
    const glColor4ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) void;
    const glColor4x = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void;
    const glColorMask = fn (_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void;
    const glColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCopyTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void;
    const glCopyTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glCullFace = fn (_mode: GLenum) void;
    const glDeleteBuffers = fn (_n: GLsizei, _buffers: [*c]const GLuint) void;
    const glDeleteTextures = fn (_n: GLsizei, _textures: [*c]const GLuint) void;
    const glDepthFunc = fn (_func: GLenum) void;
    const glDepthMask = fn (_flag: GLboolean) void;
    const glDepthRangex = fn (_n: GLfixed, _f: GLfixed) void;
    const glDisable = fn (_cap: GLenum) void;
    const glDisableClientState = fn (_array: GLenum) void;
    const glDrawArrays = fn (_mode: GLenum, _first: GLint, _count: GLsizei) void;
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void;
    const glEnable = fn (_cap: GLenum) void;
    const glEnableClientState = fn (_array: GLenum) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glFogx = fn (_pname: GLenum, _param: GLfixed) void;
    const glFogxv = fn (_pname: GLenum, _param: [*c]const GLfixed) void;
    const glFrontFace = fn (_mode: GLenum) void;
    const glFrustumx = fn (_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) void;
    const glGetBooleanv = fn (_pname: GLenum, _data: [*c]GLboolean) void;
    const glGetBufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetClipPlanex = fn (_plane: GLenum, _equation: [*c]GLfixed) void;
    const glGenBuffers = fn (_n: GLsizei, _buffers: [*c]GLuint) void;
    const glGenTextures = fn (_n: GLsizei, _textures: [*c]GLuint) void;
    const glGetError = fn () GLenum;
    const glGetFixedv = fn (_pname: GLenum, _params: [*c]GLfixed) void;
    const glGetIntegerv = fn (_pname: GLenum, _data: [*c]GLint) void;
    const glGetLightxv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLfixed) void;
    const glGetMaterialxv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLfixed) void;
    const glGetPointerv = fn (_pname: GLenum, _params: ?*?*c_void) void;
    const glGetString = fn (_name: GLenum) ?[*:0]const GLubyte;
    const glGetTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetTexEnvxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) void;
    const glGetTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetTexParameterxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) void;
    const glHint = fn (_target: GLenum, _mode: GLenum) void;
    const glIsBuffer = fn (_buffer: GLuint) GLboolean;
    const glIsEnabled = fn (_cap: GLenum) GLboolean;
    const glIsTexture = fn (_texture: GLuint) GLboolean;
    const glLightModelx = fn (_pname: GLenum, _param: GLfixed) void;
    const glLightModelxv = fn (_pname: GLenum, _param: [*c]const GLfixed) void;
    const glLightx = fn (_light: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glLightxv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void;
    const glLineWidthx = fn (_width: GLfixed) void;
    const glLoadIdentity = fn () void;
    const glLoadMatrixx = fn (_m: [*c]const GLfixed) void;
    const glLogicOp = fn (_opcode: GLenum) void;
    const glMaterialx = fn (_face: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glMaterialxv = fn (_face: GLenum, _pname: GLenum, _param: [*c]const GLfixed) void;
    const glMatrixMode = fn (_mode: GLenum) void;
    const glMultMatrixx = fn (_m: [*c]const GLfixed) void;
    const glMultiTexCoord4x = fn (_texture: GLenum, _s: GLfixed, _t: GLfixed, _r: GLfixed, _q: GLfixed) void;
    const glNormal3x = fn (_nx: GLfixed, _ny: GLfixed, _nz: GLfixed) void;
    const glNormalPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glOrthox = fn (_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) void;
    const glPixelStorei = fn (_pname: GLenum, _param: GLint) void;
    const glPointParameterx = fn (_pname: GLenum, _param: GLfixed) void;
    const glPointParameterxv = fn (_pname: GLenum, _params: [*c]const GLfixed) void;
    const glPointSizex = fn (_size: GLfixed) void;
    const glPolygonOffsetx = fn (_factor: GLfixed, _units: GLfixed) void;
    const glPopMatrix = fn () void;
    const glPushMatrix = fn () void;
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void;
    const glRotatex = fn (_angle: GLfixed, _x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) void;
    const glSampleCoveragex = fn (_value: GLclampx, _invert: GLboolean) void;
    const glScalex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glScissor = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glShadeModel = fn (_mode: GLenum) void;
    const glStencilFunc = fn (_func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilMask = fn (_mask: GLuint) void;
    const glStencilOp = fn (_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void;
    const glTexCoordPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glTexEnvi = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexEnvx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexEnvxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexParameteri = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexParameterx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexParameterxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTranslatex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glVertexPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glViewport = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
};

const function_pointers = struct {
    var glAlphaFunc: ?function_signatures.glAlphaFunc = null;
    var glClearColor: ?function_signatures.glClearColor = null;
    var glClearDepthf: ?function_signatures.glClearDepthf = null;
    var glClipPlanef: ?function_signatures.glClipPlanef = null;
    var glColor4f: ?function_signatures.glColor4f = null;
    var glDepthRangef: ?function_signatures.glDepthRangef = null;
    var glFogf: ?function_signatures.glFogf = null;
    var glFogfv: ?function_signatures.glFogfv = null;
    var glFrustumf: ?function_signatures.glFrustumf = null;
    var glGetClipPlanef: ?function_signatures.glGetClipPlanef = null;
    var glGetFloatv: ?function_signatures.glGetFloatv = null;
    var glGetLightfv: ?function_signatures.glGetLightfv = null;
    var glGetMaterialfv: ?function_signatures.glGetMaterialfv = null;
    var glGetTexEnvfv: ?function_signatures.glGetTexEnvfv = null;
    var glGetTexParameterfv: ?function_signatures.glGetTexParameterfv = null;
    var glLightModelf: ?function_signatures.glLightModelf = null;
    var glLightModelfv: ?function_signatures.glLightModelfv = null;
    var glLightf: ?function_signatures.glLightf = null;
    var glLightfv: ?function_signatures.glLightfv = null;
    var glLineWidth: ?function_signatures.glLineWidth = null;
    var glLoadMatrixf: ?function_signatures.glLoadMatrixf = null;
    var glMaterialf: ?function_signatures.glMaterialf = null;
    var glMaterialfv: ?function_signatures.glMaterialfv = null;
    var glMultMatrixf: ?function_signatures.glMultMatrixf = null;
    var glMultiTexCoord4f: ?function_signatures.glMultiTexCoord4f = null;
    var glNormal3f: ?function_signatures.glNormal3f = null;
    var glOrthof: ?function_signatures.glOrthof = null;
    var glPointParameterf: ?function_signatures.glPointParameterf = null;
    var glPointParameterfv: ?function_signatures.glPointParameterfv = null;
    var glPointSize: ?function_signatures.glPointSize = null;
    var glPolygonOffset: ?function_signatures.glPolygonOffset = null;
    var glRotatef: ?function_signatures.glRotatef = null;
    var glScalef: ?function_signatures.glScalef = null;
    var glTexEnvf: ?function_signatures.glTexEnvf = null;
    var glTexEnvfv: ?function_signatures.glTexEnvfv = null;
    var glTexParameterf: ?function_signatures.glTexParameterf = null;
    var glTexParameterfv: ?function_signatures.glTexParameterfv = null;
    var glTranslatef: ?function_signatures.glTranslatef = null;
    var glActiveTexture: ?function_signatures.glActiveTexture = null;
    var glAlphaFuncx: ?function_signatures.glAlphaFuncx = null;
    var glBindBuffer: ?function_signatures.glBindBuffer = null;
    var glBindTexture: ?function_signatures.glBindTexture = null;
    var glBlendFunc: ?function_signatures.glBlendFunc = null;
    var glBufferData: ?function_signatures.glBufferData = null;
    var glBufferSubData: ?function_signatures.glBufferSubData = null;
    var glClear: ?function_signatures.glClear = null;
    var glClearColorx: ?function_signatures.glClearColorx = null;
    var glClearDepthx: ?function_signatures.glClearDepthx = null;
    var glClearStencil: ?function_signatures.glClearStencil = null;
    var glClientActiveTexture: ?function_signatures.glClientActiveTexture = null;
    var glClipPlanex: ?function_signatures.glClipPlanex = null;
    var glColor4ub: ?function_signatures.glColor4ub = null;
    var glColor4x: ?function_signatures.glColor4x = null;
    var glColorMask: ?function_signatures.glColorMask = null;
    var glColorPointer: ?function_signatures.glColorPointer = null;
    var glCompressedTexImage2D: ?function_signatures.glCompressedTexImage2D = null;
    var glCompressedTexSubImage2D: ?function_signatures.glCompressedTexSubImage2D = null;
    var glCopyTexImage2D: ?function_signatures.glCopyTexImage2D = null;
    var glCopyTexSubImage2D: ?function_signatures.glCopyTexSubImage2D = null;
    var glCullFace: ?function_signatures.glCullFace = null;
    var glDeleteBuffers: ?function_signatures.glDeleteBuffers = null;
    var glDeleteTextures: ?function_signatures.glDeleteTextures = null;
    var glDepthFunc: ?function_signatures.glDepthFunc = null;
    var glDepthMask: ?function_signatures.glDepthMask = null;
    var glDepthRangex: ?function_signatures.glDepthRangex = null;
    var glDisable: ?function_signatures.glDisable = null;
    var glDisableClientState: ?function_signatures.glDisableClientState = null;
    var glDrawArrays: ?function_signatures.glDrawArrays = null;
    var glDrawElements: ?function_signatures.glDrawElements = null;
    var glEnable: ?function_signatures.glEnable = null;
    var glEnableClientState: ?function_signatures.glEnableClientState = null;
    var glFinish: ?function_signatures.glFinish = null;
    var glFlush: ?function_signatures.glFlush = null;
    var glFogx: ?function_signatures.glFogx = null;
    var glFogxv: ?function_signatures.glFogxv = null;
    var glFrontFace: ?function_signatures.glFrontFace = null;
    var glFrustumx: ?function_signatures.glFrustumx = null;
    var glGetBooleanv: ?function_signatures.glGetBooleanv = null;
    var glGetBufferParameteriv: ?function_signatures.glGetBufferParameteriv = null;
    var glGetClipPlanex: ?function_signatures.glGetClipPlanex = null;
    var glGenBuffers: ?function_signatures.glGenBuffers = null;
    var glGenTextures: ?function_signatures.glGenTextures = null;
    var glGetError: ?function_signatures.glGetError = null;
    var glGetFixedv: ?function_signatures.glGetFixedv = null;
    var glGetIntegerv: ?function_signatures.glGetIntegerv = null;
    var glGetLightxv: ?function_signatures.glGetLightxv = null;
    var glGetMaterialxv: ?function_signatures.glGetMaterialxv = null;
    var glGetPointerv: ?function_signatures.glGetPointerv = null;
    var glGetString: ?function_signatures.glGetString = null;
    var glGetTexEnviv: ?function_signatures.glGetTexEnviv = null;
    var glGetTexEnvxv: ?function_signatures.glGetTexEnvxv = null;
    var glGetTexParameteriv: ?function_signatures.glGetTexParameteriv = null;
    var glGetTexParameterxv: ?function_signatures.glGetTexParameterxv = null;
    var glHint: ?function_signatures.glHint = null;
    var glIsBuffer: ?function_signatures.glIsBuffer = null;
    var glIsEnabled: ?function_signatures.glIsEnabled = null;
    var glIsTexture: ?function_signatures.glIsTexture = null;
    var glLightModelx: ?function_signatures.glLightModelx = null;
    var glLightModelxv: ?function_signatures.glLightModelxv = null;
    var glLightx: ?function_signatures.glLightx = null;
    var glLightxv: ?function_signatures.glLightxv = null;
    var glLineWidthx: ?function_signatures.glLineWidthx = null;
    var glLoadIdentity: ?function_signatures.glLoadIdentity = null;
    var glLoadMatrixx: ?function_signatures.glLoadMatrixx = null;
    var glLogicOp: ?function_signatures.glLogicOp = null;
    var glMaterialx: ?function_signatures.glMaterialx = null;
    var glMaterialxv: ?function_signatures.glMaterialxv = null;
    var glMatrixMode: ?function_signatures.glMatrixMode = null;
    var glMultMatrixx: ?function_signatures.glMultMatrixx = null;
    var glMultiTexCoord4x: ?function_signatures.glMultiTexCoord4x = null;
    var glNormal3x: ?function_signatures.glNormal3x = null;
    var glNormalPointer: ?function_signatures.glNormalPointer = null;
    var glOrthox: ?function_signatures.glOrthox = null;
    var glPixelStorei: ?function_signatures.glPixelStorei = null;
    var glPointParameterx: ?function_signatures.glPointParameterx = null;
    var glPointParameterxv: ?function_signatures.glPointParameterxv = null;
    var glPointSizex: ?function_signatures.glPointSizex = null;
    var glPolygonOffsetx: ?function_signatures.glPolygonOffsetx = null;
    var glPopMatrix: ?function_signatures.glPopMatrix = null;
    var glPushMatrix: ?function_signatures.glPushMatrix = null;
    var glReadPixels: ?function_signatures.glReadPixels = null;
    var glRotatex: ?function_signatures.glRotatex = null;
    var glSampleCoverage: ?function_signatures.glSampleCoverage = null;
    var glSampleCoveragex: ?function_signatures.glSampleCoveragex = null;
    var glScalex: ?function_signatures.glScalex = null;
    var glScissor: ?function_signatures.glScissor = null;
    var glShadeModel: ?function_signatures.glShadeModel = null;
    var glStencilFunc: ?function_signatures.glStencilFunc = null;
    var glStencilMask: ?function_signatures.glStencilMask = null;
    var glStencilOp: ?function_signatures.glStencilOp = null;
    var glTexCoordPointer: ?function_signatures.glTexCoordPointer = null;
    var glTexEnvi: ?function_signatures.glTexEnvi = null;
    var glTexEnvx: ?function_signatures.glTexEnvx = null;
    var glTexEnviv: ?function_signatures.glTexEnviv = null;
    var glTexEnvxv: ?function_signatures.glTexEnvxv = null;
    var glTexImage2D: ?function_signatures.glTexImage2D = null;
    var glTexParameteri: ?function_signatures.glTexParameteri = null;
    var glTexParameterx: ?function_signatures.glTexParameterx = null;
    var glTexParameteriv: ?function_signatures.glTexParameteriv = null;
    var glTexParameterxv: ?function_signatures.glTexParameterxv = null;
    var glTexSubImage2D: ?function_signatures.glTexSubImage2D = null;
    var glTranslatex: ?function_signatures.glTranslatex = null;
    var glVertexPointer: ?function_signatures.glVertexPointer = null;
    var glViewport: ?function_signatures.glViewport = null;
};

test "" {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
