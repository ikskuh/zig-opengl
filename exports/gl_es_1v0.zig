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

pub const GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;
pub const GLDEBUGPROCARB = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;
pub const GLDEBUGPROCKHR = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;

pub const GLDEBUGPROCAMD = fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = fn (void) callconv(.C) void;

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

pub fn alphaFunc(func: GLenum, ref: GLfloat) void {
    return (function_pointers.glAlphaFunc orelse @panic("glAlphaFunc was not bound."))(func, ref);
}

pub fn clearColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(red, green, blue, alpha);
}

pub fn clearDepthf(d: GLfloat) void {
    return (function_pointers.glClearDepthf orelse @panic("glClearDepthf was not bound."))(d);
}

pub fn clipPlanef(p: GLenum, eqn: [*c]const GLfloat) void {
    return (function_pointers.glClipPlanef orelse @panic("glClipPlanef was not bound."))(p, eqn);
}

pub fn color4f(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glColor4f orelse @panic("glColor4f was not bound."))(red, green, blue, alpha);
}

pub fn depthRangef(n: GLfloat, f: GLfloat) void {
    return (function_pointers.glDepthRangef orelse @panic("glDepthRangef was not bound."))(n, f);
}

pub fn fogf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glFogf orelse @panic("glFogf was not bound."))(pname, param);
}

pub fn fogfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glFogfv orelse @panic("glFogfv was not bound."))(pname, params);
}

pub fn frustumf(l: GLfloat, r: GLfloat, b: GLfloat, t: GLfloat, n: GLfloat, f: GLfloat) void {
    return (function_pointers.glFrustumf orelse @panic("glFrustumf was not bound."))(l, r, b, t, n, f);
}

pub fn getClipPlanef(plane: GLenum, equation: [*c]GLfloat) void {
    return (function_pointers.glGetClipPlanef orelse @panic("glGetClipPlanef was not bound."))(plane, equation);
}

pub fn getFloatv(pname: GLenum, data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(pname, data);
}

pub fn getLightfv(light: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetLightfv orelse @panic("glGetLightfv was not bound."))(light, pname, params);
}

pub fn getMaterialfv(face: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetMaterialfv orelse @panic("glGetMaterialfv was not bound."))(face, pname, params);
}

pub fn getTexEnvfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexEnvfv orelse @panic("glGetTexEnvfv was not bound."))(target, pname, params);
}

pub fn getTexParameterfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(target, pname, params);
}

pub fn lightModelf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glLightModelf orelse @panic("glLightModelf was not bound."))(pname, param);
}

pub fn lightModelfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glLightModelfv orelse @panic("glLightModelfv was not bound."))(pname, params);
}

pub fn lightf(light: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glLightf orelse @panic("glLightf was not bound."))(light, pname, param);
}

pub fn lightfv(light: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glLightfv orelse @panic("glLightfv was not bound."))(light, pname, params);
}

pub fn lineWidth(width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(width);
}

pub fn loadMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glLoadMatrixf orelse @panic("glLoadMatrixf was not bound."))(m);
}

pub fn materialf(face: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glMaterialf orelse @panic("glMaterialf was not bound."))(face, pname, param);
}

pub fn materialfv(face: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glMaterialfv orelse @panic("glMaterialfv was not bound."))(face, pname, params);
}

pub fn multMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glMultMatrixf orelse @panic("glMultMatrixf was not bound."))(m);
}

pub fn multiTexCoord4f(target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void {
    return (function_pointers.glMultiTexCoord4f orelse @panic("glMultiTexCoord4f was not bound."))(target, s, t, r, q);
}

pub fn normal3f(nx: GLfloat, ny: GLfloat, nz: GLfloat) void {
    return (function_pointers.glNormal3f orelse @panic("glNormal3f was not bound."))(nx, ny, nz);
}

pub fn orthof(l: GLfloat, r: GLfloat, b: GLfloat, t: GLfloat, n: GLfloat, f: GLfloat) void {
    return (function_pointers.glOrthof orelse @panic("glOrthof was not bound."))(l, r, b, t, n, f);
}

pub fn pointParameterf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glPointParameterf orelse @panic("glPointParameterf was not bound."))(pname, param);
}

pub fn pointParameterfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glPointParameterfv orelse @panic("glPointParameterfv was not bound."))(pname, params);
}

pub fn pointSize(size: GLfloat) void {
    return (function_pointers.glPointSize orelse @panic("glPointSize was not bound."))(size);
}

pub fn polygonOffset(factor: GLfloat, units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(factor, units);
}

pub fn rotatef(angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glRotatef orelse @panic("glRotatef was not bound."))(angle, x, y, z);
}

pub fn scalef(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glScalef orelse @panic("glScalef was not bound."))(x, y, z);
}

pub fn texEnvf(target: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexEnvf orelse @panic("glTexEnvf was not bound."))(target, pname, param);
}

pub fn texEnvfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexEnvfv orelse @panic("glTexEnvfv was not bound."))(target, pname, params);
}

pub fn texParameterf(target: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexParameterf orelse @panic("glTexParameterf was not bound."))(target, pname, param);
}

pub fn texParameterfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexParameterfv orelse @panic("glTexParameterfv was not bound."))(target, pname, params);
}

pub fn translatef(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glTranslatef orelse @panic("glTranslatef was not bound."))(x, y, z);
}

pub fn activeTexture(texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(texture);
}

pub fn alphaFuncx(func: GLenum, ref: GLfixed) void {
    return (function_pointers.glAlphaFuncx orelse @panic("glAlphaFuncx was not bound."))(func, ref);
}

pub fn bindBuffer(target: GLenum, buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(target, buffer);
}

pub fn bindTexture(target: GLenum, texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(target, texture);
}

pub fn blendFunc(sfactor: GLenum, dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(sfactor, dfactor);
}

pub fn bufferData(target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(target, size, data, usage);
}

pub fn bufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(target, offset, size, data);
}

pub fn clear(mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(mask);
}

pub fn clearColorx(red: GLfixed, green: GLfixed, blue: GLfixed, alpha: GLfixed) void {
    return (function_pointers.glClearColorx orelse @panic("glClearColorx was not bound."))(red, green, blue, alpha);
}

pub fn clearDepthx(depth: GLfixed) void {
    return (function_pointers.glClearDepthx orelse @panic("glClearDepthx was not bound."))(depth);
}

pub fn clearStencil(s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(s);
}

pub fn clientActiveTexture(texture: GLenum) void {
    return (function_pointers.glClientActiveTexture orelse @panic("glClientActiveTexture was not bound."))(texture);
}

pub fn clipPlanex(plane: GLenum, equation: [*c]const GLfixed) void {
    return (function_pointers.glClipPlanex orelse @panic("glClipPlanex was not bound."))(plane, equation);
}

pub fn color4ub(red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void {
    return (function_pointers.glColor4ub orelse @panic("glColor4ub was not bound."))(red, green, blue, alpha);
}

pub fn color4x(red: GLfixed, green: GLfixed, blue: GLfixed, alpha: GLfixed) void {
    return (function_pointers.glColor4x orelse @panic("glColor4x was not bound."))(red, green, blue, alpha);
}

pub fn colorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(red, green, blue, alpha);
}

pub fn colorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(size, type, stride, pointer);
}

pub fn compressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(target, level, internalformat, width, height, border, imageSize, data);
}

pub fn compressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}

pub fn copyTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void {
    return (function_pointers.glCopyTexImage2D orelse @panic("glCopyTexImage2D was not bound."))(target, level, internalformat, x, y, width, height, border);
}

pub fn copyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage2D orelse @panic("glCopyTexSubImage2D was not bound."))(target, level, xoffset, yoffset, x, y, width, height);
}

pub fn cullFace(mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(mode);
}

pub fn deleteBuffers(n: GLsizei, buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(n, buffers);
}

pub fn deleteTextures(n: GLsizei, textures: [*c]const GLuint) void {
    return (function_pointers.glDeleteTextures orelse @panic("glDeleteTextures was not bound."))(n, textures);
}

pub fn depthFunc(func: GLenum) void {
    return (function_pointers.glDepthFunc orelse @panic("glDepthFunc was not bound."))(func);
}

pub fn depthMask(flag: GLboolean) void {
    return (function_pointers.glDepthMask orelse @panic("glDepthMask was not bound."))(flag);
}

pub fn depthRangex(n: GLfixed, f: GLfixed) void {
    return (function_pointers.glDepthRangex orelse @panic("glDepthRangex was not bound."))(n, f);
}

pub fn disable(cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(cap);
}

pub fn disableClientState(array: GLenum) void {
    return (function_pointers.glDisableClientState orelse @panic("glDisableClientState was not bound."))(array);
}

pub fn drawArrays(mode: GLenum, first: GLint, count: GLsizei) void {
    return (function_pointers.glDrawArrays orelse @panic("glDrawArrays was not bound."))(mode, first, count);
}

pub fn drawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(mode, count, type, indices);
}

pub fn enable(cap: GLenum) void {
    return (function_pointers.glEnable orelse @panic("glEnable was not bound."))(cap);
}

pub fn enableClientState(array: GLenum) void {
    return (function_pointers.glEnableClientState orelse @panic("glEnableClientState was not bound."))(array);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn fogx(pname: GLenum, param: GLfixed) void {
    return (function_pointers.glFogx orelse @panic("glFogx was not bound."))(pname, param);
}

pub fn fogxv(pname: GLenum, param: [*c]const GLfixed) void {
    return (function_pointers.glFogxv orelse @panic("glFogxv was not bound."))(pname, param);
}

pub fn frontFace(mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(mode);
}

pub fn frustumx(l: GLfixed, r: GLfixed, b: GLfixed, t: GLfixed, n: GLfixed, f: GLfixed) void {
    return (function_pointers.glFrustumx orelse @panic("glFrustumx was not bound."))(l, r, b, t, n, f);
}

pub fn getBooleanv(pname: GLenum, data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(pname, data);
}

pub fn getBufferParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(target, pname, params);
}

pub fn getClipPlanex(plane: GLenum, equation: [*c]GLfixed) void {
    return (function_pointers.glGetClipPlanex orelse @panic("glGetClipPlanex was not bound."))(plane, equation);
}

pub fn genBuffers(n: GLsizei, buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(n, buffers);
}

pub fn genTextures(n: GLsizei, textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(n, textures);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFixedv(pname: GLenum, params: [*c]GLfixed) void {
    return (function_pointers.glGetFixedv orelse @panic("glGetFixedv was not bound."))(pname, params);
}

pub fn getIntegerv(pname: GLenum, data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(pname, data);
}

pub fn getLightxv(light: GLenum, pname: GLenum, params: [*c]GLfixed) void {
    return (function_pointers.glGetLightxv orelse @panic("glGetLightxv was not bound."))(light, pname, params);
}

pub fn getMaterialxv(face: GLenum, pname: GLenum, params: [*c]GLfixed) void {
    return (function_pointers.glGetMaterialxv orelse @panic("glGetMaterialxv was not bound."))(face, pname, params);
}

pub fn getPointerv(pname: GLenum, params: **c_void) void {
    return (function_pointers.glGetPointerv orelse @panic("glGetPointerv was not bound."))(pname, params);
}

pub fn getString(name: GLenum) [*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(name);
}

pub fn getTexEnviv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexEnviv orelse @panic("glGetTexEnviv was not bound."))(target, pname, params);
}

pub fn getTexEnvxv(target: GLenum, pname: GLenum, params: [*c]GLfixed) void {
    return (function_pointers.glGetTexEnvxv orelse @panic("glGetTexEnvxv was not bound."))(target, pname, params);
}

pub fn getTexParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(target, pname, params);
}

pub fn getTexParameterxv(target: GLenum, pname: GLenum, params: [*c]GLfixed) void {
    return (function_pointers.glGetTexParameterxv orelse @panic("glGetTexParameterxv was not bound."))(target, pname, params);
}

pub fn hint(target: GLenum, mode: GLenum) void {
    return (function_pointers.glHint orelse @panic("glHint was not bound."))(target, mode);
}

pub fn isBuffer(buffer: GLuint) GLboolean {
    return (function_pointers.glIsBuffer orelse @panic("glIsBuffer was not bound."))(buffer);
}

pub fn isEnabled(cap: GLenum) GLboolean {
    return (function_pointers.glIsEnabled orelse @panic("glIsEnabled was not bound."))(cap);
}

pub fn isTexture(texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(texture);
}

pub fn lightModelx(pname: GLenum, param: GLfixed) void {
    return (function_pointers.glLightModelx orelse @panic("glLightModelx was not bound."))(pname, param);
}

pub fn lightModelxv(pname: GLenum, param: [*c]const GLfixed) void {
    return (function_pointers.glLightModelxv orelse @panic("glLightModelxv was not bound."))(pname, param);
}

pub fn lightx(light: GLenum, pname: GLenum, param: GLfixed) void {
    return (function_pointers.glLightx orelse @panic("glLightx was not bound."))(light, pname, param);
}

pub fn lightxv(light: GLenum, pname: GLenum, params: [*c]const GLfixed) void {
    return (function_pointers.glLightxv orelse @panic("glLightxv was not bound."))(light, pname, params);
}

pub fn lineWidthx(width: GLfixed) void {
    return (function_pointers.glLineWidthx orelse @panic("glLineWidthx was not bound."))(width);
}

pub fn loadIdentity() void {
    return (function_pointers.glLoadIdentity orelse @panic("glLoadIdentity was not bound."))();
}

pub fn loadMatrixx(m: [*c]const GLfixed) void {
    return (function_pointers.glLoadMatrixx orelse @panic("glLoadMatrixx was not bound."))(m);
}

pub fn logicOp(opcode: GLenum) void {
    return (function_pointers.glLogicOp orelse @panic("glLogicOp was not bound."))(opcode);
}

pub fn materialx(face: GLenum, pname: GLenum, param: GLfixed) void {
    return (function_pointers.glMaterialx orelse @panic("glMaterialx was not bound."))(face, pname, param);
}

pub fn materialxv(face: GLenum, pname: GLenum, param: [*c]const GLfixed) void {
    return (function_pointers.glMaterialxv orelse @panic("glMaterialxv was not bound."))(face, pname, param);
}

pub fn matrixMode(mode: GLenum) void {
    return (function_pointers.glMatrixMode orelse @panic("glMatrixMode was not bound."))(mode);
}

pub fn multMatrixx(m: [*c]const GLfixed) void {
    return (function_pointers.glMultMatrixx orelse @panic("glMultMatrixx was not bound."))(m);
}

pub fn multiTexCoord4x(texture: GLenum, s: GLfixed, t: GLfixed, r: GLfixed, q: GLfixed) void {
    return (function_pointers.glMultiTexCoord4x orelse @panic("glMultiTexCoord4x was not bound."))(texture, s, t, r, q);
}

pub fn normal3x(nx: GLfixed, ny: GLfixed, nz: GLfixed) void {
    return (function_pointers.glNormal3x orelse @panic("glNormal3x was not bound."))(nx, ny, nz);
}

pub fn normalPointer(type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glNormalPointer orelse @panic("glNormalPointer was not bound."))(type, stride, pointer);
}

pub fn orthox(l: GLfixed, r: GLfixed, b: GLfixed, t: GLfixed, n: GLfixed, f: GLfixed) void {
    return (function_pointers.glOrthox orelse @panic("glOrthox was not bound."))(l, r, b, t, n, f);
}

pub fn pixelStorei(pname: GLenum, param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(pname, param);
}

pub fn pointParameterx(pname: GLenum, param: GLfixed) void {
    return (function_pointers.glPointParameterx orelse @panic("glPointParameterx was not bound."))(pname, param);
}

pub fn pointParameterxv(pname: GLenum, params: [*c]const GLfixed) void {
    return (function_pointers.glPointParameterxv orelse @panic("glPointParameterxv was not bound."))(pname, params);
}

pub fn pointSizex(size: GLfixed) void {
    return (function_pointers.glPointSizex orelse @panic("glPointSizex was not bound."))(size);
}

pub fn polygonOffsetx(factor: GLfixed, units: GLfixed) void {
    return (function_pointers.glPolygonOffsetx orelse @panic("glPolygonOffsetx was not bound."))(factor, units);
}

pub fn popMatrix() void {
    return (function_pointers.glPopMatrix orelse @panic("glPopMatrix was not bound."))();
}

pub fn pushMatrix() void {
    return (function_pointers.glPushMatrix orelse @panic("glPushMatrix was not bound."))();
}

pub fn readPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(x, y, width, height, format, type, pixels);
}

pub fn rotatex(angle: GLfixed, x: GLfixed, y: GLfixed, z: GLfixed) void {
    return (function_pointers.glRotatex orelse @panic("glRotatex was not bound."))(angle, x, y, z);
}

pub fn sampleCoverage(value: GLfloat, invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(value, invert);
}

pub fn sampleCoveragex(value: GLclampx, invert: GLboolean) void {
    return (function_pointers.glSampleCoveragex orelse @panic("glSampleCoveragex was not bound."))(value, invert);
}

pub fn scalex(x: GLfixed, y: GLfixed, z: GLfixed) void {
    return (function_pointers.glScalex orelse @panic("glScalex was not bound."))(x, y, z);
}

pub fn scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(x, y, width, height);
}

pub fn shadeModel(mode: GLenum) void {
    return (function_pointers.glShadeModel orelse @panic("glShadeModel was not bound."))(mode);
}

pub fn stencilFunc(func: GLenum, ref: GLint, mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(func, ref, mask);
}

pub fn stencilMask(mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(mask);
}

pub fn stencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(fail, zfail, zpass);
}

pub fn texCoordPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glTexCoordPointer orelse @panic("glTexCoordPointer was not bound."))(size, type, stride, pointer);
}

pub fn texEnvi(target: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexEnvi orelse @panic("glTexEnvi was not bound."))(target, pname, param);
}

pub fn texEnvx(target: GLenum, pname: GLenum, param: GLfixed) void {
    return (function_pointers.glTexEnvx orelse @panic("glTexEnvx was not bound."))(target, pname, param);
}

pub fn texEnviv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexEnviv orelse @panic("glTexEnviv was not bound."))(target, pname, params);
}

pub fn texEnvxv(target: GLenum, pname: GLenum, params: [*c]const GLfixed) void {
    return (function_pointers.glTexEnvxv orelse @panic("glTexEnvxv was not bound."))(target, pname, params);
}

pub fn texImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(target, level, internalformat, width, height, border, format, type, pixels);
}

pub fn texParameteri(target: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexParameteri orelse @panic("glTexParameteri was not bound."))(target, pname, param);
}

pub fn texParameterx(target: GLenum, pname: GLenum, param: GLfixed) void {
    return (function_pointers.glTexParameterx orelse @panic("glTexParameterx was not bound."))(target, pname, param);
}

pub fn texParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexParameteriv orelse @panic("glTexParameteriv was not bound."))(target, pname, params);
}

pub fn texParameterxv(target: GLenum, pname: GLenum, params: [*c]const GLfixed) void {
    return (function_pointers.glTexParameterxv orelse @panic("glTexParameterxv was not bound."))(target, pname, params);
}

pub fn texSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, type, pixels);
}

pub fn translatex(x: GLfixed, y: GLfixed, z: GLfixed) void {
    return (function_pointers.glTranslatex orelse @panic("glTranslatex was not bound."))(x, y, z);
}

pub fn vertexPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glVertexPointer orelse @panic("glVertexPointer was not bound."))(size, type, stride, pointer);
}

pub fn viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(x, y, width, height);
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*c_void) !void {
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
    const glAlphaFunc = fn (func: GLenum, ref: GLfloat) void;
    const glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glClearDepthf = fn (d: GLfloat) void;
    const glClipPlanef = fn (p: GLenum, eqn: [*c]const GLfloat) void;
    const glColor4f = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glDepthRangef = fn (n: GLfloat, f: GLfloat) void;
    const glFogf = fn (pname: GLenum, param: GLfloat) void;
    const glFogfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glFrustumf = fn (l: GLfloat, r: GLfloat, b: GLfloat, t: GLfloat, n: GLfloat, f: GLfloat) void;
    const glGetClipPlanef = fn (plane: GLenum, equation: [*c]GLfloat) void;
    const glGetFloatv = fn (pname: GLenum, data: [*c]GLfloat) void;
    const glGetLightfv = fn (light: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetMaterialfv = fn (face: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexEnvfv = fn (target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glLightModelf = fn (pname: GLenum, param: GLfloat) void;
    const glLightModelfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glLightf = fn (light: GLenum, pname: GLenum, param: GLfloat) void;
    const glLightfv = fn (light: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glLineWidth = fn (width: GLfloat) void;
    const glLoadMatrixf = fn (m: [*c]const GLfloat) void;
    const glMaterialf = fn (face: GLenum, pname: GLenum, param: GLfloat) void;
    const glMaterialfv = fn (face: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glMultMatrixf = fn (m: [*c]const GLfloat) void;
    const glMultiTexCoord4f = fn (target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void;
    const glNormal3f = fn (nx: GLfloat, ny: GLfloat, nz: GLfloat) void;
    const glOrthof = fn (l: GLfloat, r: GLfloat, b: GLfloat, t: GLfloat, n: GLfloat, f: GLfloat) void;
    const glPointParameterf = fn (pname: GLenum, param: GLfloat) void;
    const glPointParameterfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glPointSize = fn (size: GLfloat) void;
    const glPolygonOffset = fn (factor: GLfloat, units: GLfloat) void;
    const glRotatef = fn (angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glScalef = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glTexEnvf = fn (target: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexEnvfv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTexParameterf = fn (target: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTranslatef = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glActiveTexture = fn (texture: GLenum) void;
    const glAlphaFuncx = fn (func: GLenum, ref: GLfixed) void;
    const glBindBuffer = fn (target: GLenum, buffer: GLuint) void;
    const glBindTexture = fn (target: GLenum, texture: GLuint) void;
    const glBlendFunc = fn (sfactor: GLenum, dfactor: GLenum) void;
    const glBufferData = fn (target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void;
    const glBufferSubData = fn (target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void;
    const glClear = fn (mask: GLbitfield) void;
    const glClearColorx = fn (red: GLfixed, green: GLfixed, blue: GLfixed, alpha: GLfixed) void;
    const glClearDepthx = fn (depth: GLfixed) void;
    const glClearStencil = fn (s: GLint) void;
    const glClientActiveTexture = fn (texture: GLenum) void;
    const glClipPlanex = fn (plane: GLenum, equation: [*c]const GLfixed) void;
    const glColor4ub = fn (red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void;
    const glColor4x = fn (red: GLfixed, green: GLfixed, blue: GLfixed, alpha: GLfixed) void;
    const glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void;
    const glColorPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glCompressedTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void;
    const glCopyTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void;
    const glCopyTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glCullFace = fn (mode: GLenum) void;
    const glDeleteBuffers = fn (n: GLsizei, buffers: [*c]const GLuint) void;
    const glDeleteTextures = fn (n: GLsizei, textures: [*c]const GLuint) void;
    const glDepthFunc = fn (func: GLenum) void;
    const glDepthMask = fn (flag: GLboolean) void;
    const glDepthRangex = fn (n: GLfixed, f: GLfixed) void;
    const glDisable = fn (cap: GLenum) void;
    const glDisableClientState = fn (array: GLenum) void;
    const glDrawArrays = fn (mode: GLenum, first: GLint, count: GLsizei) void;
    const glDrawElements = fn (mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void;
    const glEnable = fn (cap: GLenum) void;
    const glEnableClientState = fn (array: GLenum) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glFogx = fn (pname: GLenum, param: GLfixed) void;
    const glFogxv = fn (pname: GLenum, param: [*c]const GLfixed) void;
    const glFrontFace = fn (mode: GLenum) void;
    const glFrustumx = fn (l: GLfixed, r: GLfixed, b: GLfixed, t: GLfixed, n: GLfixed, f: GLfixed) void;
    const glGetBooleanv = fn (pname: GLenum, data: [*c]GLboolean) void;
    const glGetBufferParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetClipPlanex = fn (plane: GLenum, equation: [*c]GLfixed) void;
    const glGenBuffers = fn (n: GLsizei, buffers: [*c]GLuint) void;
    const glGenTextures = fn (n: GLsizei, textures: [*c]GLuint) void;
    const glGetError = fn () GLenum;
    const glGetFixedv = fn (pname: GLenum, params: [*c]GLfixed) void;
    const glGetIntegerv = fn (pname: GLenum, data: [*c]GLint) void;
    const glGetLightxv = fn (light: GLenum, pname: GLenum, params: [*c]GLfixed) void;
    const glGetMaterialxv = fn (face: GLenum, pname: GLenum, params: [*c]GLfixed) void;
    const glGetPointerv = fn (pname: GLenum, params: **c_void) void;
    const glGetString = fn (name: GLenum) [*:0]const GLubyte;
    const glGetTexEnviv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetTexEnvxv = fn (target: GLenum, pname: GLenum, params: [*c]GLfixed) void;
    const glGetTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetTexParameterxv = fn (target: GLenum, pname: GLenum, params: [*c]GLfixed) void;
    const glHint = fn (target: GLenum, mode: GLenum) void;
    const glIsBuffer = fn (buffer: GLuint) GLboolean;
    const glIsEnabled = fn (cap: GLenum) GLboolean;
    const glIsTexture = fn (texture: GLuint) GLboolean;
    const glLightModelx = fn (pname: GLenum, param: GLfixed) void;
    const glLightModelxv = fn (pname: GLenum, param: [*c]const GLfixed) void;
    const glLightx = fn (light: GLenum, pname: GLenum, param: GLfixed) void;
    const glLightxv = fn (light: GLenum, pname: GLenum, params: [*c]const GLfixed) void;
    const glLineWidthx = fn (width: GLfixed) void;
    const glLoadIdentity = fn () void;
    const glLoadMatrixx = fn (m: [*c]const GLfixed) void;
    const glLogicOp = fn (opcode: GLenum) void;
    const glMaterialx = fn (face: GLenum, pname: GLenum, param: GLfixed) void;
    const glMaterialxv = fn (face: GLenum, pname: GLenum, param: [*c]const GLfixed) void;
    const glMatrixMode = fn (mode: GLenum) void;
    const glMultMatrixx = fn (m: [*c]const GLfixed) void;
    const glMultiTexCoord4x = fn (texture: GLenum, s: GLfixed, t: GLfixed, r: GLfixed, q: GLfixed) void;
    const glNormal3x = fn (nx: GLfixed, ny: GLfixed, nz: GLfixed) void;
    const glNormalPointer = fn (type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glOrthox = fn (l: GLfixed, r: GLfixed, b: GLfixed, t: GLfixed, n: GLfixed, f: GLfixed) void;
    const glPixelStorei = fn (pname: GLenum, param: GLint) void;
    const glPointParameterx = fn (pname: GLenum, param: GLfixed) void;
    const glPointParameterxv = fn (pname: GLenum, params: [*c]const GLfixed) void;
    const glPointSizex = fn (size: GLfixed) void;
    const glPolygonOffsetx = fn (factor: GLfixed, units: GLfixed) void;
    const glPopMatrix = fn () void;
    const glPushMatrix = fn () void;
    const glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void;
    const glRotatex = fn (angle: GLfixed, x: GLfixed, y: GLfixed, z: GLfixed) void;
    const glSampleCoverage = fn (value: GLfloat, invert: GLboolean) void;
    const glSampleCoveragex = fn (value: GLclampx, invert: GLboolean) void;
    const glScalex = fn (x: GLfixed, y: GLfixed, z: GLfixed) void;
    const glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glShadeModel = fn (mode: GLenum) void;
    const glStencilFunc = fn (func: GLenum, ref: GLint, mask: GLuint) void;
    const glStencilMask = fn (mask: GLuint) void;
    const glStencilOp = fn (fail: GLenum, zfail: GLenum, zpass: GLenum) void;
    const glTexCoordPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glTexEnvi = fn (target: GLenum, pname: GLenum, param: GLint) void;
    const glTexEnvx = fn (target: GLenum, pname: GLenum, param: GLfixed) void;
    const glTexEnviv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexEnvxv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfixed) void;
    const glTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTexParameteri = fn (target: GLenum, pname: GLenum, param: GLint) void;
    const glTexParameterx = fn (target: GLenum, pname: GLenum, param: GLfixed) void;
    const glTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexParameterxv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfixed) void;
    const glTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTranslatex = fn (x: GLfixed, y: GLfixed, z: GLfixed) void;
    const glVertexPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
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
}
