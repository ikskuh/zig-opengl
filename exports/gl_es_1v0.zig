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

pub const GLhandleARB = if (builtin.os.tag == .macos) *anyopaque else c_uint;

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

pub const GLDEBUGPROC = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);
pub const GLDEBUGPROCARB = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);
pub const GLDEBUGPROCKHR = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);

pub const GLDEBUGPROCAMD = FnPtr(fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = *const fn () callconv(.C) void;

fn FnPtr(comptime Fn: type) type {
    return if (@import("builtin").zig_backend != .stage1)
        *const Fn
    else
        Fn;
}

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

pub fn bufferData(_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(_target, _size, _data, _usage);
}

pub fn bufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) void {
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

pub fn colorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn compressedTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _imageSize, _data);
}

pub fn compressedTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void {
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

pub fn drawElements(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void {
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

pub fn getPointerv(_pname: GLenum, _params: ?*?*anyopaque) void {
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

pub fn normalPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
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

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void {
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

pub fn texCoordPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
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

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
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

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels);
}

pub fn translatex(_x: GLfixed, _y: GLfixed, _z: GLfixed) void {
    return (function_pointers.glTranslatex orelse @panic("glTranslatex was not bound."))(_x, _y, _z);
}

pub fn vertexPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glVertexPointer orelse @panic("glVertexPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn viewport(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(_x, _y, _width, _height);
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*const anyopaque) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glAlphaFunc")) |proc| {
        function_pointers.glAlphaFunc = @ptrCast(@TypeOf(function_pointers.glAlphaFunc), proc);
    } else {
        log.err("entry point glAlphaFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColor")) |proc| {
        function_pointers.glClearColor = @ptrCast(@TypeOf(function_pointers.glClearColor), proc);
    } else {
        log.err("entry point glClearColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthf")) |proc| {
        function_pointers.glClearDepthf = @ptrCast(@TypeOf(function_pointers.glClearDepthf), proc);
    } else {
        log.err("entry point glClearDepthf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlanef")) |proc| {
        function_pointers.glClipPlanef = @ptrCast(@TypeOf(function_pointers.glClipPlanef), proc);
    } else {
        log.err("entry point glClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4f")) |proc| {
        function_pointers.glColor4f = @ptrCast(@TypeOf(function_pointers.glColor4f), proc);
    } else {
        log.err("entry point glColor4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangef")) |proc| {
        function_pointers.glDepthRangef = @ptrCast(@TypeOf(function_pointers.glDepthRangef), proc);
    } else {
        log.err("entry point glDepthRangef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogf")) |proc| {
        function_pointers.glFogf = @ptrCast(@TypeOf(function_pointers.glFogf), proc);
    } else {
        log.err("entry point glFogf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogfv")) |proc| {
        function_pointers.glFogfv = @ptrCast(@TypeOf(function_pointers.glFogfv), proc);
    } else {
        log.err("entry point glFogfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumf")) |proc| {
        function_pointers.glFrustumf = @ptrCast(@TypeOf(function_pointers.glFrustumf), proc);
    } else {
        log.err("entry point glFrustumf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlanef")) |proc| {
        function_pointers.glGetClipPlanef = @ptrCast(@TypeOf(function_pointers.glGetClipPlanef), proc);
    } else {
        log.err("entry point glGetClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(@TypeOf(function_pointers.glGetFloatv), proc);
    } else {
        log.err("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightfv")) |proc| {
        function_pointers.glGetLightfv = @ptrCast(@TypeOf(function_pointers.glGetLightfv), proc);
    } else {
        log.err("entry point glGetLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialfv")) |proc| {
        function_pointers.glGetMaterialfv = @ptrCast(@TypeOf(function_pointers.glGetMaterialfv), proc);
    } else {
        log.err("entry point glGetMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvfv")) |proc| {
        function_pointers.glGetTexEnvfv = @ptrCast(@TypeOf(function_pointers.glGetTexEnvfv), proc);
    } else {
        log.err("entry point glGetTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(@TypeOf(function_pointers.glGetTexParameterfv), proc);
    } else {
        log.err("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelf")) |proc| {
        function_pointers.glLightModelf = @ptrCast(@TypeOf(function_pointers.glLightModelf), proc);
    } else {
        log.err("entry point glLightModelf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelfv")) |proc| {
        function_pointers.glLightModelfv = @ptrCast(@TypeOf(function_pointers.glLightModelfv), proc);
    } else {
        log.err("entry point glLightModelfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightf")) |proc| {
        function_pointers.glLightf = @ptrCast(@TypeOf(function_pointers.glLightf), proc);
    } else {
        log.err("entry point glLightf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightfv")) |proc| {
        function_pointers.glLightfv = @ptrCast(@TypeOf(function_pointers.glLightfv), proc);
    } else {
        log.err("entry point glLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(@TypeOf(function_pointers.glLineWidth), proc);
    } else {
        log.err("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixf")) |proc| {
        function_pointers.glLoadMatrixf = @ptrCast(@TypeOf(function_pointers.glLoadMatrixf), proc);
    } else {
        log.err("entry point glLoadMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialf")) |proc| {
        function_pointers.glMaterialf = @ptrCast(@TypeOf(function_pointers.glMaterialf), proc);
    } else {
        log.err("entry point glMaterialf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialfv")) |proc| {
        function_pointers.glMaterialfv = @ptrCast(@TypeOf(function_pointers.glMaterialfv), proc);
    } else {
        log.err("entry point glMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixf")) |proc| {
        function_pointers.glMultMatrixf = @ptrCast(@TypeOf(function_pointers.glMultMatrixf), proc);
    } else {
        log.err("entry point glMultMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4f")) |proc| {
        function_pointers.glMultiTexCoord4f = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4f), proc);
    } else {
        log.err("entry point glMultiTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3f")) |proc| {
        function_pointers.glNormal3f = @ptrCast(@TypeOf(function_pointers.glNormal3f), proc);
    } else {
        log.err("entry point glNormal3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthof")) |proc| {
        function_pointers.glOrthof = @ptrCast(@TypeOf(function_pointers.glOrthof), proc);
    } else {
        log.err("entry point glOrthof not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterf")) |proc| {
        function_pointers.glPointParameterf = @ptrCast(@TypeOf(function_pointers.glPointParameterf), proc);
    } else {
        log.err("entry point glPointParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterfv")) |proc| {
        function_pointers.glPointParameterfv = @ptrCast(@TypeOf(function_pointers.glPointParameterfv), proc);
    } else {
        log.err("entry point glPointParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSize")) |proc| {
        function_pointers.glPointSize = @ptrCast(@TypeOf(function_pointers.glPointSize), proc);
    } else {
        log.err("entry point glPointSize not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(@TypeOf(function_pointers.glPolygonOffset), proc);
    } else {
        log.err("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatef")) |proc| {
        function_pointers.glRotatef = @ptrCast(@TypeOf(function_pointers.glRotatef), proc);
    } else {
        log.err("entry point glRotatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalef")) |proc| {
        function_pointers.glScalef = @ptrCast(@TypeOf(function_pointers.glScalef), proc);
    } else {
        log.err("entry point glScalef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvf")) |proc| {
        function_pointers.glTexEnvf = @ptrCast(@TypeOf(function_pointers.glTexEnvf), proc);
    } else {
        log.err("entry point glTexEnvf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvfv")) |proc| {
        function_pointers.glTexEnvfv = @ptrCast(@TypeOf(function_pointers.glTexEnvfv), proc);
    } else {
        log.err("entry point glTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterf")) |proc| {
        function_pointers.glTexParameterf = @ptrCast(@TypeOf(function_pointers.glTexParameterf), proc);
    } else {
        log.err("entry point glTexParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterfv")) |proc| {
        function_pointers.glTexParameterfv = @ptrCast(@TypeOf(function_pointers.glTexParameterfv), proc);
    } else {
        log.err("entry point glTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatef")) |proc| {
        function_pointers.glTranslatef = @ptrCast(@TypeOf(function_pointers.glTranslatef), proc);
    } else {
        log.err("entry point glTranslatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(@TypeOf(function_pointers.glActiveTexture), proc);
    } else {
        log.err("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAlphaFuncx")) |proc| {
        function_pointers.glAlphaFuncx = @ptrCast(@TypeOf(function_pointers.glAlphaFuncx), proc);
    } else {
        log.err("entry point glAlphaFuncx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(@TypeOf(function_pointers.glBindBuffer), proc);
    } else {
        log.err("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(@TypeOf(function_pointers.glBindTexture), proc);
    } else {
        log.err("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(@TypeOf(function_pointers.glBlendFunc), proc);
    } else {
        log.err("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferData")) |proc| {
        function_pointers.glBufferData = @ptrCast(@TypeOf(function_pointers.glBufferData), proc);
    } else {
        log.err("entry point glBufferData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferSubData")) |proc| {
        function_pointers.glBufferSubData = @ptrCast(@TypeOf(function_pointers.glBufferSubData), proc);
    } else {
        log.err("entry point glBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(@TypeOf(function_pointers.glClear), proc);
    } else {
        log.err("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColorx")) |proc| {
        function_pointers.glClearColorx = @ptrCast(@TypeOf(function_pointers.glClearColorx), proc);
    } else {
        log.err("entry point glClearColorx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthx")) |proc| {
        function_pointers.glClearDepthx = @ptrCast(@TypeOf(function_pointers.glClearDepthx), proc);
    } else {
        log.err("entry point glClearDepthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(@TypeOf(function_pointers.glClearStencil), proc);
    } else {
        log.err("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientActiveTexture")) |proc| {
        function_pointers.glClientActiveTexture = @ptrCast(@TypeOf(function_pointers.glClientActiveTexture), proc);
    } else {
        log.err("entry point glClientActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlanex")) |proc| {
        function_pointers.glClipPlanex = @ptrCast(@TypeOf(function_pointers.glClipPlanex), proc);
    } else {
        log.err("entry point glClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ub")) |proc| {
        function_pointers.glColor4ub = @ptrCast(@TypeOf(function_pointers.glColor4ub), proc);
    } else {
        log.err("entry point glColor4ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4x")) |proc| {
        function_pointers.glColor4x = @ptrCast(@TypeOf(function_pointers.glColor4x), proc);
    } else {
        log.err("entry point glColor4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(@TypeOf(function_pointers.glColorMask), proc);
    } else {
        log.err("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorPointer")) |proc| {
        function_pointers.glColorPointer = @ptrCast(@TypeOf(function_pointers.glColorPointer), proc);
    } else {
        log.err("entry point glColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(@TypeOf(function_pointers.glCompressedTexImage2D), proc);
    } else {
        log.err("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glCompressedTexSubImage2D), proc);
    } else {
        log.err("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(@TypeOf(function_pointers.glCopyTexImage2D), proc);
    } else {
        log.err("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glCopyTexSubImage2D), proc);
    } else {
        log.err("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(@TypeOf(function_pointers.glCullFace), proc);
    } else {
        log.err("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(@TypeOf(function_pointers.glDeleteBuffers), proc);
    } else {
        log.err("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(@TypeOf(function_pointers.glDeleteTextures), proc);
    } else {
        log.err("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(@TypeOf(function_pointers.glDepthFunc), proc);
    } else {
        log.err("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(@TypeOf(function_pointers.glDepthMask), proc);
    } else {
        log.err("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangex")) |proc| {
        function_pointers.glDepthRangex = @ptrCast(@TypeOf(function_pointers.glDepthRangex), proc);
    } else {
        log.err("entry point glDepthRangex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(@TypeOf(function_pointers.glDisable), proc);
    } else {
        log.err("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableClientState")) |proc| {
        function_pointers.glDisableClientState = @ptrCast(@TypeOf(function_pointers.glDisableClientState), proc);
    } else {
        log.err("entry point glDisableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArrays")) |proc| {
        function_pointers.glDrawArrays = @ptrCast(@TypeOf(function_pointers.glDrawArrays), proc);
    } else {
        log.err("entry point glDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElements")) |proc| {
        function_pointers.glDrawElements = @ptrCast(@TypeOf(function_pointers.glDrawElements), proc);
    } else {
        log.err("entry point glDrawElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(@TypeOf(function_pointers.glEnable), proc);
    } else {
        log.err("entry point glEnable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableClientState")) |proc| {
        function_pointers.glEnableClientState = @ptrCast(@TypeOf(function_pointers.glEnableClientState), proc);
    } else {
        log.err("entry point glEnableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFinish")) |proc| {
        function_pointers.glFinish = @ptrCast(@TypeOf(function_pointers.glFinish), proc);
    } else {
        log.err("entry point glFinish not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlush")) |proc| {
        function_pointers.glFlush = @ptrCast(@TypeOf(function_pointers.glFlush), proc);
    } else {
        log.err("entry point glFlush not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogx")) |proc| {
        function_pointers.glFogx = @ptrCast(@TypeOf(function_pointers.glFogx), proc);
    } else {
        log.err("entry point glFogx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogxv")) |proc| {
        function_pointers.glFogxv = @ptrCast(@TypeOf(function_pointers.glFogxv), proc);
    } else {
        log.err("entry point glFogxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(@TypeOf(function_pointers.glFrontFace), proc);
    } else {
        log.err("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumx")) |proc| {
        function_pointers.glFrustumx = @ptrCast(@TypeOf(function_pointers.glFrustumx), proc);
    } else {
        log.err("entry point glFrustumx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(@TypeOf(function_pointers.glGetBooleanv), proc);
    } else {
        log.err("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(@TypeOf(function_pointers.glGetBufferParameteriv), proc);
    } else {
        log.err("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlanex")) |proc| {
        function_pointers.glGetClipPlanex = @ptrCast(@TypeOf(function_pointers.glGetClipPlanex), proc);
    } else {
        log.err("entry point glGetClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(@TypeOf(function_pointers.glGenBuffers), proc);
    } else {
        log.err("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(@TypeOf(function_pointers.glGenTextures), proc);
    } else {
        log.err("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(@TypeOf(function_pointers.glGetError), proc);
    } else {
        log.err("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFixedv")) |proc| {
        function_pointers.glGetFixedv = @ptrCast(@TypeOf(function_pointers.glGetFixedv), proc);
    } else {
        log.err("entry point glGetFixedv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(@TypeOf(function_pointers.glGetIntegerv), proc);
    } else {
        log.err("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightxv")) |proc| {
        function_pointers.glGetLightxv = @ptrCast(@TypeOf(function_pointers.glGetLightxv), proc);
    } else {
        log.err("entry point glGetLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialxv")) |proc| {
        function_pointers.glGetMaterialxv = @ptrCast(@TypeOf(function_pointers.glGetMaterialxv), proc);
    } else {
        log.err("entry point glGetMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPointerv")) |proc| {
        function_pointers.glGetPointerv = @ptrCast(@TypeOf(function_pointers.glGetPointerv), proc);
    } else {
        log.err("entry point glGetPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(@TypeOf(function_pointers.glGetString), proc);
    } else {
        log.err("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnviv")) |proc| {
        function_pointers.glGetTexEnviv = @ptrCast(@TypeOf(function_pointers.glGetTexEnviv), proc);
    } else {
        log.err("entry point glGetTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvxv")) |proc| {
        function_pointers.glGetTexEnvxv = @ptrCast(@TypeOf(function_pointers.glGetTexEnvxv), proc);
    } else {
        log.err("entry point glGetTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(@TypeOf(function_pointers.glGetTexParameteriv), proc);
    } else {
        log.err("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterxv")) |proc| {
        function_pointers.glGetTexParameterxv = @ptrCast(@TypeOf(function_pointers.glGetTexParameterxv), proc);
    } else {
        log.err("entry point glGetTexParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(@TypeOf(function_pointers.glHint), proc);
    } else {
        log.err("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(@TypeOf(function_pointers.glIsBuffer), proc);
    } else {
        log.err("entry point glIsBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(@TypeOf(function_pointers.glIsEnabled), proc);
    } else {
        log.err("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(@TypeOf(function_pointers.glIsTexture), proc);
    } else {
        log.err("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelx")) |proc| {
        function_pointers.glLightModelx = @ptrCast(@TypeOf(function_pointers.glLightModelx), proc);
    } else {
        log.err("entry point glLightModelx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelxv")) |proc| {
        function_pointers.glLightModelxv = @ptrCast(@TypeOf(function_pointers.glLightModelxv), proc);
    } else {
        log.err("entry point glLightModelxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightx")) |proc| {
        function_pointers.glLightx = @ptrCast(@TypeOf(function_pointers.glLightx), proc);
    } else {
        log.err("entry point glLightx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightxv")) |proc| {
        function_pointers.glLightxv = @ptrCast(@TypeOf(function_pointers.glLightxv), proc);
    } else {
        log.err("entry point glLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidthx")) |proc| {
        function_pointers.glLineWidthx = @ptrCast(@TypeOf(function_pointers.glLineWidthx), proc);
    } else {
        log.err("entry point glLineWidthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadIdentity")) |proc| {
        function_pointers.glLoadIdentity = @ptrCast(@TypeOf(function_pointers.glLoadIdentity), proc);
    } else {
        log.err("entry point glLoadIdentity not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixx")) |proc| {
        function_pointers.glLoadMatrixx = @ptrCast(@TypeOf(function_pointers.glLoadMatrixx), proc);
    } else {
        log.err("entry point glLoadMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLogicOp")) |proc| {
        function_pointers.glLogicOp = @ptrCast(@TypeOf(function_pointers.glLogicOp), proc);
    } else {
        log.err("entry point glLogicOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialx")) |proc| {
        function_pointers.glMaterialx = @ptrCast(@TypeOf(function_pointers.glMaterialx), proc);
    } else {
        log.err("entry point glMaterialx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialxv")) |proc| {
        function_pointers.glMaterialxv = @ptrCast(@TypeOf(function_pointers.glMaterialxv), proc);
    } else {
        log.err("entry point glMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMatrixMode")) |proc| {
        function_pointers.glMatrixMode = @ptrCast(@TypeOf(function_pointers.glMatrixMode), proc);
    } else {
        log.err("entry point glMatrixMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixx")) |proc| {
        function_pointers.glMultMatrixx = @ptrCast(@TypeOf(function_pointers.glMultMatrixx), proc);
    } else {
        log.err("entry point glMultMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4x")) |proc| {
        function_pointers.glMultiTexCoord4x = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4x), proc);
    } else {
        log.err("entry point glMultiTexCoord4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3x")) |proc| {
        function_pointers.glNormal3x = @ptrCast(@TypeOf(function_pointers.glNormal3x), proc);
    } else {
        log.err("entry point glNormal3x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormalPointer")) |proc| {
        function_pointers.glNormalPointer = @ptrCast(@TypeOf(function_pointers.glNormalPointer), proc);
    } else {
        log.err("entry point glNormalPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthox")) |proc| {
        function_pointers.glOrthox = @ptrCast(@TypeOf(function_pointers.glOrthox), proc);
    } else {
        log.err("entry point glOrthox not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(@TypeOf(function_pointers.glPixelStorei), proc);
    } else {
        log.err("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterx")) |proc| {
        function_pointers.glPointParameterx = @ptrCast(@TypeOf(function_pointers.glPointParameterx), proc);
    } else {
        log.err("entry point glPointParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterxv")) |proc| {
        function_pointers.glPointParameterxv = @ptrCast(@TypeOf(function_pointers.glPointParameterxv), proc);
    } else {
        log.err("entry point glPointParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSizex")) |proc| {
        function_pointers.glPointSizex = @ptrCast(@TypeOf(function_pointers.glPointSizex), proc);
    } else {
        log.err("entry point glPointSizex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffsetx")) |proc| {
        function_pointers.glPolygonOffsetx = @ptrCast(@TypeOf(function_pointers.glPolygonOffsetx), proc);
    } else {
        log.err("entry point glPolygonOffsetx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopMatrix")) |proc| {
        function_pointers.glPopMatrix = @ptrCast(@TypeOf(function_pointers.glPopMatrix), proc);
    } else {
        log.err("entry point glPopMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushMatrix")) |proc| {
        function_pointers.glPushMatrix = @ptrCast(@TypeOf(function_pointers.glPushMatrix), proc);
    } else {
        log.err("entry point glPushMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(@TypeOf(function_pointers.glReadPixels), proc);
    } else {
        log.err("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatex")) |proc| {
        function_pointers.glRotatex = @ptrCast(@TypeOf(function_pointers.glRotatex), proc);
    } else {
        log.err("entry point glRotatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(@TypeOf(function_pointers.glSampleCoverage), proc);
    } else {
        log.err("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoveragex")) |proc| {
        function_pointers.glSampleCoveragex = @ptrCast(@TypeOf(function_pointers.glSampleCoveragex), proc);
    } else {
        log.err("entry point glSampleCoveragex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalex")) |proc| {
        function_pointers.glScalex = @ptrCast(@TypeOf(function_pointers.glScalex), proc);
    } else {
        log.err("entry point glScalex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(@TypeOf(function_pointers.glScissor), proc);
    } else {
        log.err("entry point glScissor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShadeModel")) |proc| {
        function_pointers.glShadeModel = @ptrCast(@TypeOf(function_pointers.glShadeModel), proc);
    } else {
        log.err("entry point glShadeModel not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(@TypeOf(function_pointers.glStencilFunc), proc);
    } else {
        log.err("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(@TypeOf(function_pointers.glStencilMask), proc);
    } else {
        log.err("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(@TypeOf(function_pointers.glStencilOp), proc);
    } else {
        log.err("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoordPointer")) |proc| {
        function_pointers.glTexCoordPointer = @ptrCast(@TypeOf(function_pointers.glTexCoordPointer), proc);
    } else {
        log.err("entry point glTexCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvi")) |proc| {
        function_pointers.glTexEnvi = @ptrCast(@TypeOf(function_pointers.glTexEnvi), proc);
    } else {
        log.err("entry point glTexEnvi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvx")) |proc| {
        function_pointers.glTexEnvx = @ptrCast(@TypeOf(function_pointers.glTexEnvx), proc);
    } else {
        log.err("entry point glTexEnvx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnviv")) |proc| {
        function_pointers.glTexEnviv = @ptrCast(@TypeOf(function_pointers.glTexEnviv), proc);
    } else {
        log.err("entry point glTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvxv")) |proc| {
        function_pointers.glTexEnvxv = @ptrCast(@TypeOf(function_pointers.glTexEnvxv), proc);
    } else {
        log.err("entry point glTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(@TypeOf(function_pointers.glTexImage2D), proc);
    } else {
        log.err("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(@TypeOf(function_pointers.glTexParameteri), proc);
    } else {
        log.err("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterx")) |proc| {
        function_pointers.glTexParameterx = @ptrCast(@TypeOf(function_pointers.glTexParameterx), proc);
    } else {
        log.err("entry point glTexParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(@TypeOf(function_pointers.glTexParameteriv), proc);
    } else {
        log.err("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterxv")) |proc| {
        function_pointers.glTexParameterxv = @ptrCast(@TypeOf(function_pointers.glTexParameterxv), proc);
    } else {
        log.err("entry point glTexParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glTexSubImage2D), proc);
    } else {
        log.err("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatex")) |proc| {
        function_pointers.glTranslatex = @ptrCast(@TypeOf(function_pointers.glTranslatex), proc);
    } else {
        log.err("entry point glTranslatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexPointer")) |proc| {
        function_pointers.glVertexPointer = @ptrCast(@TypeOf(function_pointers.glVertexPointer), proc);
    } else {
        log.err("entry point glVertexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(@TypeOf(function_pointers.glViewport), proc);
    } else {
        log.err("entry point glViewport not found!", .{});
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
    const glBufferData = fn (_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) void;
    const glBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) void;
    const glClear = fn (_mask: GLbitfield) void;
    const glClearColorx = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void;
    const glClearDepthx = fn (_depth: GLfixed) void;
    const glClearStencil = fn (_s: GLint) void;
    const glClientActiveTexture = fn (_texture: GLenum) void;
    const glClipPlanex = fn (_plane: GLenum, _equation: [*c]const GLfixed) void;
    const glColor4ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) void;
    const glColor4x = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) void;
    const glColorMask = fn (_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void;
    const glColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void;
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
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void;
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
    const glGetPointerv = fn (_pname: GLenum, _params: ?*?*anyopaque) void;
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
    const glNormalPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glOrthox = fn (_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) void;
    const glPixelStorei = fn (_pname: GLenum, _param: GLint) void;
    const glPointParameterx = fn (_pname: GLenum, _param: GLfixed) void;
    const glPointParameterxv = fn (_pname: GLenum, _params: [*c]const GLfixed) void;
    const glPointSizex = fn (_size: GLfixed) void;
    const glPolygonOffsetx = fn (_factor: GLfixed, _units: GLfixed) void;
    const glPopMatrix = fn () void;
    const glPushMatrix = fn () void;
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void;
    const glRotatex = fn (_angle: GLfixed, _x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) void;
    const glSampleCoveragex = fn (_value: GLclampx, _invert: GLboolean) void;
    const glScalex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glScissor = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glShadeModel = fn (_mode: GLenum) void;
    const glStencilFunc = fn (_func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilMask = fn (_mask: GLuint) void;
    const glStencilOp = fn (_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void;
    const glTexCoordPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glTexEnvi = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexEnvx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexEnvxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glTexParameteri = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexParameterx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) void;
    const glTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexParameterxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glTranslatex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) void;
    const glVertexPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glViewport = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
};

const function_pointers = struct {
    var glAlphaFunc: ?FnPtr(function_signatures.glAlphaFunc) = null;
    var glClearColor: ?FnPtr(function_signatures.glClearColor) = null;
    var glClearDepthf: ?FnPtr(function_signatures.glClearDepthf) = null;
    var glClipPlanef: ?FnPtr(function_signatures.glClipPlanef) = null;
    var glColor4f: ?FnPtr(function_signatures.glColor4f) = null;
    var glDepthRangef: ?FnPtr(function_signatures.glDepthRangef) = null;
    var glFogf: ?FnPtr(function_signatures.glFogf) = null;
    var glFogfv: ?FnPtr(function_signatures.glFogfv) = null;
    var glFrustumf: ?FnPtr(function_signatures.glFrustumf) = null;
    var glGetClipPlanef: ?FnPtr(function_signatures.glGetClipPlanef) = null;
    var glGetFloatv: ?FnPtr(function_signatures.glGetFloatv) = null;
    var glGetLightfv: ?FnPtr(function_signatures.glGetLightfv) = null;
    var glGetMaterialfv: ?FnPtr(function_signatures.glGetMaterialfv) = null;
    var glGetTexEnvfv: ?FnPtr(function_signatures.glGetTexEnvfv) = null;
    var glGetTexParameterfv: ?FnPtr(function_signatures.glGetTexParameterfv) = null;
    var glLightModelf: ?FnPtr(function_signatures.glLightModelf) = null;
    var glLightModelfv: ?FnPtr(function_signatures.glLightModelfv) = null;
    var glLightf: ?FnPtr(function_signatures.glLightf) = null;
    var glLightfv: ?FnPtr(function_signatures.glLightfv) = null;
    var glLineWidth: ?FnPtr(function_signatures.glLineWidth) = null;
    var glLoadMatrixf: ?FnPtr(function_signatures.glLoadMatrixf) = null;
    var glMaterialf: ?FnPtr(function_signatures.glMaterialf) = null;
    var glMaterialfv: ?FnPtr(function_signatures.glMaterialfv) = null;
    var glMultMatrixf: ?FnPtr(function_signatures.glMultMatrixf) = null;
    var glMultiTexCoord4f: ?FnPtr(function_signatures.glMultiTexCoord4f) = null;
    var glNormal3f: ?FnPtr(function_signatures.glNormal3f) = null;
    var glOrthof: ?FnPtr(function_signatures.glOrthof) = null;
    var glPointParameterf: ?FnPtr(function_signatures.glPointParameterf) = null;
    var glPointParameterfv: ?FnPtr(function_signatures.glPointParameterfv) = null;
    var glPointSize: ?FnPtr(function_signatures.glPointSize) = null;
    var glPolygonOffset: ?FnPtr(function_signatures.glPolygonOffset) = null;
    var glRotatef: ?FnPtr(function_signatures.glRotatef) = null;
    var glScalef: ?FnPtr(function_signatures.glScalef) = null;
    var glTexEnvf: ?FnPtr(function_signatures.glTexEnvf) = null;
    var glTexEnvfv: ?FnPtr(function_signatures.glTexEnvfv) = null;
    var glTexParameterf: ?FnPtr(function_signatures.glTexParameterf) = null;
    var glTexParameterfv: ?FnPtr(function_signatures.glTexParameterfv) = null;
    var glTranslatef: ?FnPtr(function_signatures.glTranslatef) = null;
    var glActiveTexture: ?FnPtr(function_signatures.glActiveTexture) = null;
    var glAlphaFuncx: ?FnPtr(function_signatures.glAlphaFuncx) = null;
    var glBindBuffer: ?FnPtr(function_signatures.glBindBuffer) = null;
    var glBindTexture: ?FnPtr(function_signatures.glBindTexture) = null;
    var glBlendFunc: ?FnPtr(function_signatures.glBlendFunc) = null;
    var glBufferData: ?FnPtr(function_signatures.glBufferData) = null;
    var glBufferSubData: ?FnPtr(function_signatures.glBufferSubData) = null;
    var glClear: ?FnPtr(function_signatures.glClear) = null;
    var glClearColorx: ?FnPtr(function_signatures.glClearColorx) = null;
    var glClearDepthx: ?FnPtr(function_signatures.glClearDepthx) = null;
    var glClearStencil: ?FnPtr(function_signatures.glClearStencil) = null;
    var glClientActiveTexture: ?FnPtr(function_signatures.glClientActiveTexture) = null;
    var glClipPlanex: ?FnPtr(function_signatures.glClipPlanex) = null;
    var glColor4ub: ?FnPtr(function_signatures.glColor4ub) = null;
    var glColor4x: ?FnPtr(function_signatures.glColor4x) = null;
    var glColorMask: ?FnPtr(function_signatures.glColorMask) = null;
    var glColorPointer: ?FnPtr(function_signatures.glColorPointer) = null;
    var glCompressedTexImage2D: ?FnPtr(function_signatures.glCompressedTexImage2D) = null;
    var glCompressedTexSubImage2D: ?FnPtr(function_signatures.glCompressedTexSubImage2D) = null;
    var glCopyTexImage2D: ?FnPtr(function_signatures.glCopyTexImage2D) = null;
    var glCopyTexSubImage2D: ?FnPtr(function_signatures.glCopyTexSubImage2D) = null;
    var glCullFace: ?FnPtr(function_signatures.glCullFace) = null;
    var glDeleteBuffers: ?FnPtr(function_signatures.glDeleteBuffers) = null;
    var glDeleteTextures: ?FnPtr(function_signatures.glDeleteTextures) = null;
    var glDepthFunc: ?FnPtr(function_signatures.glDepthFunc) = null;
    var glDepthMask: ?FnPtr(function_signatures.glDepthMask) = null;
    var glDepthRangex: ?FnPtr(function_signatures.glDepthRangex) = null;
    var glDisable: ?FnPtr(function_signatures.glDisable) = null;
    var glDisableClientState: ?FnPtr(function_signatures.glDisableClientState) = null;
    var glDrawArrays: ?FnPtr(function_signatures.glDrawArrays) = null;
    var glDrawElements: ?FnPtr(function_signatures.glDrawElements) = null;
    var glEnable: ?FnPtr(function_signatures.glEnable) = null;
    var glEnableClientState: ?FnPtr(function_signatures.glEnableClientState) = null;
    var glFinish: ?FnPtr(function_signatures.glFinish) = null;
    var glFlush: ?FnPtr(function_signatures.glFlush) = null;
    var glFogx: ?FnPtr(function_signatures.glFogx) = null;
    var glFogxv: ?FnPtr(function_signatures.glFogxv) = null;
    var glFrontFace: ?FnPtr(function_signatures.glFrontFace) = null;
    var glFrustumx: ?FnPtr(function_signatures.glFrustumx) = null;
    var glGetBooleanv: ?FnPtr(function_signatures.glGetBooleanv) = null;
    var glGetBufferParameteriv: ?FnPtr(function_signatures.glGetBufferParameteriv) = null;
    var glGetClipPlanex: ?FnPtr(function_signatures.glGetClipPlanex) = null;
    var glGenBuffers: ?FnPtr(function_signatures.glGenBuffers) = null;
    var glGenTextures: ?FnPtr(function_signatures.glGenTextures) = null;
    var glGetError: ?FnPtr(function_signatures.glGetError) = null;
    var glGetFixedv: ?FnPtr(function_signatures.glGetFixedv) = null;
    var glGetIntegerv: ?FnPtr(function_signatures.glGetIntegerv) = null;
    var glGetLightxv: ?FnPtr(function_signatures.glGetLightxv) = null;
    var glGetMaterialxv: ?FnPtr(function_signatures.glGetMaterialxv) = null;
    var glGetPointerv: ?FnPtr(function_signatures.glGetPointerv) = null;
    var glGetString: ?FnPtr(function_signatures.glGetString) = null;
    var glGetTexEnviv: ?FnPtr(function_signatures.glGetTexEnviv) = null;
    var glGetTexEnvxv: ?FnPtr(function_signatures.glGetTexEnvxv) = null;
    var glGetTexParameteriv: ?FnPtr(function_signatures.glGetTexParameteriv) = null;
    var glGetTexParameterxv: ?FnPtr(function_signatures.glGetTexParameterxv) = null;
    var glHint: ?FnPtr(function_signatures.glHint) = null;
    var glIsBuffer: ?FnPtr(function_signatures.glIsBuffer) = null;
    var glIsEnabled: ?FnPtr(function_signatures.glIsEnabled) = null;
    var glIsTexture: ?FnPtr(function_signatures.glIsTexture) = null;
    var glLightModelx: ?FnPtr(function_signatures.glLightModelx) = null;
    var glLightModelxv: ?FnPtr(function_signatures.glLightModelxv) = null;
    var glLightx: ?FnPtr(function_signatures.glLightx) = null;
    var glLightxv: ?FnPtr(function_signatures.glLightxv) = null;
    var glLineWidthx: ?FnPtr(function_signatures.glLineWidthx) = null;
    var glLoadIdentity: ?FnPtr(function_signatures.glLoadIdentity) = null;
    var glLoadMatrixx: ?FnPtr(function_signatures.glLoadMatrixx) = null;
    var glLogicOp: ?FnPtr(function_signatures.glLogicOp) = null;
    var glMaterialx: ?FnPtr(function_signatures.glMaterialx) = null;
    var glMaterialxv: ?FnPtr(function_signatures.glMaterialxv) = null;
    var glMatrixMode: ?FnPtr(function_signatures.glMatrixMode) = null;
    var glMultMatrixx: ?FnPtr(function_signatures.glMultMatrixx) = null;
    var glMultiTexCoord4x: ?FnPtr(function_signatures.glMultiTexCoord4x) = null;
    var glNormal3x: ?FnPtr(function_signatures.glNormal3x) = null;
    var glNormalPointer: ?FnPtr(function_signatures.glNormalPointer) = null;
    var glOrthox: ?FnPtr(function_signatures.glOrthox) = null;
    var glPixelStorei: ?FnPtr(function_signatures.glPixelStorei) = null;
    var glPointParameterx: ?FnPtr(function_signatures.glPointParameterx) = null;
    var glPointParameterxv: ?FnPtr(function_signatures.glPointParameterxv) = null;
    var glPointSizex: ?FnPtr(function_signatures.glPointSizex) = null;
    var glPolygonOffsetx: ?FnPtr(function_signatures.glPolygonOffsetx) = null;
    var glPopMatrix: ?FnPtr(function_signatures.glPopMatrix) = null;
    var glPushMatrix: ?FnPtr(function_signatures.glPushMatrix) = null;
    var glReadPixels: ?FnPtr(function_signatures.glReadPixels) = null;
    var glRotatex: ?FnPtr(function_signatures.glRotatex) = null;
    var glSampleCoverage: ?FnPtr(function_signatures.glSampleCoverage) = null;
    var glSampleCoveragex: ?FnPtr(function_signatures.glSampleCoveragex) = null;
    var glScalex: ?FnPtr(function_signatures.glScalex) = null;
    var glScissor: ?FnPtr(function_signatures.glScissor) = null;
    var glShadeModel: ?FnPtr(function_signatures.glShadeModel) = null;
    var glStencilFunc: ?FnPtr(function_signatures.glStencilFunc) = null;
    var glStencilMask: ?FnPtr(function_signatures.glStencilMask) = null;
    var glStencilOp: ?FnPtr(function_signatures.glStencilOp) = null;
    var glTexCoordPointer: ?FnPtr(function_signatures.glTexCoordPointer) = null;
    var glTexEnvi: ?FnPtr(function_signatures.glTexEnvi) = null;
    var glTexEnvx: ?FnPtr(function_signatures.glTexEnvx) = null;
    var glTexEnviv: ?FnPtr(function_signatures.glTexEnviv) = null;
    var glTexEnvxv: ?FnPtr(function_signatures.glTexEnvxv) = null;
    var glTexImage2D: ?FnPtr(function_signatures.glTexImage2D) = null;
    var glTexParameteri: ?FnPtr(function_signatures.glTexParameteri) = null;
    var glTexParameterx: ?FnPtr(function_signatures.glTexParameterx) = null;
    var glTexParameteriv: ?FnPtr(function_signatures.glTexParameteriv) = null;
    var glTexParameterxv: ?FnPtr(function_signatures.glTexParameterxv) = null;
    var glTexSubImage2D: ?FnPtr(function_signatures.glTexSubImage2D) = null;
    var glTranslatex: ?FnPtr(function_signatures.glTranslatex) = null;
    var glVertexPointer: ?FnPtr(function_signatures.glVertexPointer) = null;
    var glViewport: ?FnPtr(function_signatures.glViewport) = null;
};

test {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
