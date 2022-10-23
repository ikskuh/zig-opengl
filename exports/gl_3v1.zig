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
pub const QUADS = 0x0007;
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
pub const NONE = 0;
pub const FRONT_LEFT = 0x0400;
pub const FRONT_RIGHT = 0x0401;
pub const BACK_LEFT = 0x0402;
pub const BACK_RIGHT = 0x0403;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const LEFT = 0x0406;
pub const RIGHT = 0x0407;
pub const FRONT_AND_BACK = 0x0408;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const OUT_OF_MEMORY = 0x0505;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const POINT_SIZE = 0x0B11;
pub const POINT_SIZE_RANGE = 0x0B12;
pub const POINT_SIZE_GRANULARITY = 0x0B13;
pub const LINE_SMOOTH = 0x0B20;
pub const LINE_WIDTH = 0x0B21;
pub const LINE_WIDTH_RANGE = 0x0B22;
pub const LINE_WIDTH_GRANULARITY = 0x0B23;
pub const POLYGON_MODE = 0x0B40;
pub const POLYGON_SMOOTH = 0x0B41;
pub const CULL_FACE = 0x0B44;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_TEST = 0x0B71;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_TEST = 0x0B90;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const VIEWPORT = 0x0BA2;
pub const DITHER = 0x0BD0;
pub const BLEND_DST = 0x0BE0;
pub const BLEND_SRC = 0x0BE1;
pub const BLEND = 0x0BE2;
pub const LOGIC_OP_MODE = 0x0BF0;
pub const DRAW_BUFFER = 0x0C01;
pub const READ_BUFFER = 0x0C02;
pub const SCISSOR_BOX = 0x0C10;
pub const SCISSOR_TEST = 0x0C11;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const DOUBLEBUFFER = 0x0C32;
pub const STEREO = 0x0C33;
pub const LINE_SMOOTH_HINT = 0x0C52;
pub const POLYGON_SMOOTH_HINT = 0x0C53;
pub const UNPACK_SWAP_BYTES = 0x0CF0;
pub const UNPACK_LSB_FIRST = 0x0CF1;
pub const UNPACK_ROW_LENGTH = 0x0CF2;
pub const UNPACK_SKIP_ROWS = 0x0CF3;
pub const UNPACK_SKIP_PIXELS = 0x0CF4;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_SWAP_BYTES = 0x0D00;
pub const PACK_LSB_FIRST = 0x0D01;
pub const PACK_ROW_LENGTH = 0x0D02;
pub const PACK_SKIP_ROWS = 0x0D03;
pub const PACK_SKIP_PIXELS = 0x0D04;
pub const PACK_ALIGNMENT = 0x0D05;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const SUBPIXEL_BITS = 0x0D50;
pub const TEXTURE_1D = 0x0DE0;
pub const TEXTURE_2D = 0x0DE1;
pub const TEXTURE_WIDTH = 0x1000;
pub const TEXTURE_HEIGHT = 0x1001;
pub const TEXTURE_BORDER_COLOR = 0x1004;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const INT = 0x1404;
pub const UNSIGNED_INT = 0x1405;
pub const FLOAT = 0x1406;
pub const STACK_OVERFLOW = 0x0503;
pub const STACK_UNDERFLOW = 0x0504;
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
pub const TEXTURE = 0x1702;
pub const COLOR = 0x1800;
pub const DEPTH = 0x1801;
pub const STENCIL = 0x1802;
pub const STENCIL_INDEX = 0x1901;
pub const DEPTH_COMPONENT = 0x1902;
pub const RED = 0x1903;
pub const GREEN = 0x1904;
pub const BLUE = 0x1905;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const POINT = 0x1B00;
pub const LINE = 0x1B01;
pub const FILL = 0x1B02;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
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
pub const REPEAT = 0x2901;
pub const CURRENT_BIT = 0x00000001;
pub const POINT_BIT = 0x00000002;
pub const LINE_BIT = 0x00000004;
pub const POLYGON_BIT = 0x00000008;
pub const POLYGON_STIPPLE_BIT = 0x00000010;
pub const PIXEL_MODE_BIT = 0x00000020;
pub const LIGHTING_BIT = 0x00000040;
pub const FOG_BIT = 0x00000080;
pub const ACCUM_BUFFER_BIT = 0x00000200;
pub const VIEWPORT_BIT = 0x00000800;
pub const TRANSFORM_BIT = 0x00001000;
pub const ENABLE_BIT = 0x00002000;
pub const HINT_BIT = 0x00008000;
pub const EVAL_BIT = 0x00010000;
pub const LIST_BIT = 0x00020000;
pub const TEXTURE_BIT = 0x00040000;
pub const SCISSOR_BIT = 0x00080000;
pub const ALL_ATTRIB_BITS = 0xFFFFFFFF;
pub const QUAD_STRIP = 0x0008;
pub const POLYGON = 0x0009;
pub const ACCUM = 0x0100;
pub const LOAD = 0x0101;
pub const RETURN = 0x0102;
pub const MULT = 0x0103;
pub const ADD = 0x0104;
pub const AUX0 = 0x0409;
pub const AUX1 = 0x040A;
pub const AUX2 = 0x040B;
pub const AUX3 = 0x040C;
pub const @"2D" = 0x0600;
pub const @"3D" = 0x0601;
pub const @"3D_COLOR" = 0x0602;
pub const @"3D_COLOR_TEXTURE" = 0x0603;
pub const @"4D_COLOR_TEXTURE" = 0x0604;
pub const PASS_THROUGH_TOKEN = 0x0700;
pub const POINT_TOKEN = 0x0701;
pub const LINE_TOKEN = 0x0702;
pub const POLYGON_TOKEN = 0x0703;
pub const BITMAP_TOKEN = 0x0704;
pub const DRAW_PIXEL_TOKEN = 0x0705;
pub const COPY_PIXEL_TOKEN = 0x0706;
pub const LINE_RESET_TOKEN = 0x0707;
pub const EXP = 0x0800;
pub const EXP2 = 0x0801;
pub const COEFF = 0x0A00;
pub const ORDER = 0x0A01;
pub const DOMAIN = 0x0A02;
pub const PIXEL_MAP_I_TO_I = 0x0C70;
pub const PIXEL_MAP_S_TO_S = 0x0C71;
pub const PIXEL_MAP_I_TO_R = 0x0C72;
pub const PIXEL_MAP_I_TO_G = 0x0C73;
pub const PIXEL_MAP_I_TO_B = 0x0C74;
pub const PIXEL_MAP_I_TO_A = 0x0C75;
pub const PIXEL_MAP_R_TO_R = 0x0C76;
pub const PIXEL_MAP_G_TO_G = 0x0C77;
pub const PIXEL_MAP_B_TO_B = 0x0C78;
pub const PIXEL_MAP_A_TO_A = 0x0C79;
pub const CURRENT_COLOR = 0x0B00;
pub const CURRENT_INDEX = 0x0B01;
pub const CURRENT_NORMAL = 0x0B02;
pub const CURRENT_TEXTURE_COORDS = 0x0B03;
pub const CURRENT_RASTER_COLOR = 0x0B04;
pub const CURRENT_RASTER_INDEX = 0x0B05;
pub const CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
pub const CURRENT_RASTER_POSITION = 0x0B07;
pub const CURRENT_RASTER_POSITION_VALID = 0x0B08;
pub const CURRENT_RASTER_DISTANCE = 0x0B09;
pub const POINT_SMOOTH = 0x0B10;
pub const LINE_STIPPLE = 0x0B24;
pub const LINE_STIPPLE_PATTERN = 0x0B25;
pub const LINE_STIPPLE_REPEAT = 0x0B26;
pub const LIST_MODE = 0x0B30;
pub const MAX_LIST_NESTING = 0x0B31;
pub const LIST_BASE = 0x0B32;
pub const LIST_INDEX = 0x0B33;
pub const POLYGON_STIPPLE = 0x0B42;
pub const EDGE_FLAG = 0x0B43;
pub const LIGHTING = 0x0B50;
pub const LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
pub const LIGHT_MODEL_TWO_SIDE = 0x0B52;
pub const LIGHT_MODEL_AMBIENT = 0x0B53;
pub const SHADE_MODEL = 0x0B54;
pub const COLOR_MATERIAL_FACE = 0x0B55;
pub const COLOR_MATERIAL_PARAMETER = 0x0B56;
pub const COLOR_MATERIAL = 0x0B57;
pub const FOG = 0x0B60;
pub const FOG_INDEX = 0x0B61;
pub const FOG_DENSITY = 0x0B62;
pub const FOG_START = 0x0B63;
pub const FOG_END = 0x0B64;
pub const FOG_MODE = 0x0B65;
pub const FOG_COLOR = 0x0B66;
pub const ACCUM_CLEAR_VALUE = 0x0B80;
pub const MATRIX_MODE = 0x0BA0;
pub const NORMALIZE = 0x0BA1;
pub const MODELVIEW_STACK_DEPTH = 0x0BA3;
pub const PROJECTION_STACK_DEPTH = 0x0BA4;
pub const TEXTURE_STACK_DEPTH = 0x0BA5;
pub const MODELVIEW_MATRIX = 0x0BA6;
pub const PROJECTION_MATRIX = 0x0BA7;
pub const TEXTURE_MATRIX = 0x0BA8;
pub const ATTRIB_STACK_DEPTH = 0x0BB0;
pub const ALPHA_TEST = 0x0BC0;
pub const ALPHA_TEST_FUNC = 0x0BC1;
pub const ALPHA_TEST_REF = 0x0BC2;
pub const LOGIC_OP = 0x0BF1;
pub const AUX_BUFFERS = 0x0C00;
pub const INDEX_CLEAR_VALUE = 0x0C20;
pub const INDEX_WRITEMASK = 0x0C21;
pub const INDEX_MODE = 0x0C30;
pub const RGBA_MODE = 0x0C31;
pub const RENDER_MODE = 0x0C40;
pub const PERSPECTIVE_CORRECTION_HINT = 0x0C50;
pub const POINT_SMOOTH_HINT = 0x0C51;
pub const FOG_HINT = 0x0C54;
pub const TEXTURE_GEN_S = 0x0C60;
pub const TEXTURE_GEN_T = 0x0C61;
pub const TEXTURE_GEN_R = 0x0C62;
pub const TEXTURE_GEN_Q = 0x0C63;
pub const PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
pub const PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
pub const PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
pub const PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
pub const PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
pub const PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
pub const PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
pub const PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
pub const PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
pub const PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
pub const MAP_COLOR = 0x0D10;
pub const MAP_STENCIL = 0x0D11;
pub const INDEX_SHIFT = 0x0D12;
pub const INDEX_OFFSET = 0x0D13;
pub const RED_SCALE = 0x0D14;
pub const RED_BIAS = 0x0D15;
pub const ZOOM_X = 0x0D16;
pub const ZOOM_Y = 0x0D17;
pub const GREEN_SCALE = 0x0D18;
pub const GREEN_BIAS = 0x0D19;
pub const BLUE_SCALE = 0x0D1A;
pub const BLUE_BIAS = 0x0D1B;
pub const ALPHA_SCALE = 0x0D1C;
pub const ALPHA_BIAS = 0x0D1D;
pub const DEPTH_SCALE = 0x0D1E;
pub const DEPTH_BIAS = 0x0D1F;
pub const MAX_EVAL_ORDER = 0x0D30;
pub const MAX_LIGHTS = 0x0D31;
pub const MAX_CLIP_PLANES = 0x0D32;
pub const MAX_PIXEL_MAP_TABLE = 0x0D34;
pub const MAX_ATTRIB_STACK_DEPTH = 0x0D35;
pub const MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
pub const MAX_NAME_STACK_DEPTH = 0x0D37;
pub const MAX_PROJECTION_STACK_DEPTH = 0x0D38;
pub const MAX_TEXTURE_STACK_DEPTH = 0x0D39;
pub const INDEX_BITS = 0x0D51;
pub const RED_BITS = 0x0D52;
pub const GREEN_BITS = 0x0D53;
pub const BLUE_BITS = 0x0D54;
pub const ALPHA_BITS = 0x0D55;
pub const DEPTH_BITS = 0x0D56;
pub const STENCIL_BITS = 0x0D57;
pub const ACCUM_RED_BITS = 0x0D58;
pub const ACCUM_GREEN_BITS = 0x0D59;
pub const ACCUM_BLUE_BITS = 0x0D5A;
pub const ACCUM_ALPHA_BITS = 0x0D5B;
pub const NAME_STACK_DEPTH = 0x0D70;
pub const AUTO_NORMAL = 0x0D80;
pub const MAP1_COLOR_4 = 0x0D90;
pub const MAP1_INDEX = 0x0D91;
pub const MAP1_NORMAL = 0x0D92;
pub const MAP1_TEXTURE_COORD_1 = 0x0D93;
pub const MAP1_TEXTURE_COORD_2 = 0x0D94;
pub const MAP1_TEXTURE_COORD_3 = 0x0D95;
pub const MAP1_TEXTURE_COORD_4 = 0x0D96;
pub const MAP1_VERTEX_3 = 0x0D97;
pub const MAP1_VERTEX_4 = 0x0D98;
pub const MAP2_COLOR_4 = 0x0DB0;
pub const MAP2_INDEX = 0x0DB1;
pub const MAP2_NORMAL = 0x0DB2;
pub const MAP2_TEXTURE_COORD_1 = 0x0DB3;
pub const MAP2_TEXTURE_COORD_2 = 0x0DB4;
pub const MAP2_TEXTURE_COORD_3 = 0x0DB5;
pub const MAP2_TEXTURE_COORD_4 = 0x0DB6;
pub const MAP2_VERTEX_3 = 0x0DB7;
pub const MAP2_VERTEX_4 = 0x0DB8;
pub const MAP1_GRID_DOMAIN = 0x0DD0;
pub const MAP1_GRID_SEGMENTS = 0x0DD1;
pub const MAP2_GRID_DOMAIN = 0x0DD2;
pub const MAP2_GRID_SEGMENTS = 0x0DD3;
pub const TEXTURE_COMPONENTS = 0x1003;
pub const TEXTURE_BORDER = 0x1005;
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
pub const COMPILE = 0x1300;
pub const COMPILE_AND_EXECUTE = 0x1301;
pub const @"2_BYTES" = 0x1407;
pub const @"3_BYTES" = 0x1408;
pub const @"4_BYTES" = 0x1409;
pub const EMISSION = 0x1600;
pub const SHININESS = 0x1601;
pub const AMBIENT_AND_DIFFUSE = 0x1602;
pub const COLOR_INDEXES = 0x1603;
pub const MODELVIEW = 0x1700;
pub const PROJECTION = 0x1701;
pub const COLOR_INDEX = 0x1900;
pub const LUMINANCE = 0x1909;
pub const LUMINANCE_ALPHA = 0x190A;
pub const BITMAP = 0x1A00;
pub const RENDER = 0x1C00;
pub const FEEDBACK = 0x1C01;
pub const SELECT = 0x1C02;
pub const FLAT = 0x1D00;
pub const SMOOTH = 0x1D01;
pub const S = 0x2000;
pub const T = 0x2001;
pub const R = 0x2002;
pub const Q = 0x2003;
pub const MODULATE = 0x2100;
pub const DECAL = 0x2101;
pub const TEXTURE_ENV_MODE = 0x2200;
pub const TEXTURE_ENV_COLOR = 0x2201;
pub const TEXTURE_ENV = 0x2300;
pub const EYE_LINEAR = 0x2400;
pub const OBJECT_LINEAR = 0x2401;
pub const SPHERE_MAP = 0x2402;
pub const TEXTURE_GEN_MODE = 0x2500;
pub const OBJECT_PLANE = 0x2501;
pub const EYE_PLANE = 0x2502;
pub const CLAMP = 0x2900;
pub const CLIP_PLANE0 = 0x3000;
pub const CLIP_PLANE1 = 0x3001;
pub const CLIP_PLANE2 = 0x3002;
pub const CLIP_PLANE3 = 0x3003;
pub const CLIP_PLANE4 = 0x3004;
pub const CLIP_PLANE5 = 0x3005;
pub const LIGHT0 = 0x4000;
pub const LIGHT1 = 0x4001;
pub const LIGHT2 = 0x4002;
pub const LIGHT3 = 0x4003;
pub const LIGHT4 = 0x4004;
pub const LIGHT5 = 0x4005;
pub const LIGHT6 = 0x4006;
pub const LIGHT7 = 0x4007;
pub const COLOR_LOGIC_OP = 0x0BF2;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_POINT = 0x2A01;
pub const POLYGON_OFFSET_LINE = 0x2A02;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_1D = 0x8068;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const TEXTURE_INTERNAL_FORMAT = 0x1003;
pub const TEXTURE_RED_SIZE = 0x805C;
pub const TEXTURE_GREEN_SIZE = 0x805D;
pub const TEXTURE_BLUE_SIZE = 0x805E;
pub const TEXTURE_ALPHA_SIZE = 0x805F;
pub const DOUBLE = 0x140A;
pub const PROXY_TEXTURE_1D = 0x8063;
pub const PROXY_TEXTURE_2D = 0x8064;
pub const R3_G3_B2 = 0x2A10;
pub const RGB4 = 0x804F;
pub const RGB5 = 0x8050;
pub const RGB8 = 0x8051;
pub const RGB10 = 0x8052;
pub const RGB12 = 0x8053;
pub const RGB16 = 0x8054;
pub const RGBA2 = 0x8055;
pub const RGBA4 = 0x8056;
pub const RGB5_A1 = 0x8057;
pub const RGBA8 = 0x8058;
pub const RGB10_A2 = 0x8059;
pub const RGBA12 = 0x805A;
pub const RGBA16 = 0x805B;
pub const CLIENT_PIXEL_STORE_BIT = 0x00000001;
pub const CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
pub const CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;
pub const VERTEX_ARRAY_POINTER = 0x808E;
pub const NORMAL_ARRAY_POINTER = 0x808F;
pub const COLOR_ARRAY_POINTER = 0x8090;
pub const INDEX_ARRAY_POINTER = 0x8091;
pub const TEXTURE_COORD_ARRAY_POINTER = 0x8092;
pub const EDGE_FLAG_ARRAY_POINTER = 0x8093;
pub const FEEDBACK_BUFFER_POINTER = 0x0DF0;
pub const SELECTION_BUFFER_POINTER = 0x0DF3;
pub const CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
pub const INDEX_LOGIC_OP = 0x0BF1;
pub const MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;
pub const FEEDBACK_BUFFER_SIZE = 0x0DF1;
pub const FEEDBACK_BUFFER_TYPE = 0x0DF2;
pub const SELECTION_BUFFER_SIZE = 0x0DF4;
pub const VERTEX_ARRAY = 0x8074;
pub const NORMAL_ARRAY = 0x8075;
pub const COLOR_ARRAY = 0x8076;
pub const INDEX_ARRAY = 0x8077;
pub const TEXTURE_COORD_ARRAY = 0x8078;
pub const EDGE_FLAG_ARRAY = 0x8079;
pub const VERTEX_ARRAY_SIZE = 0x807A;
pub const VERTEX_ARRAY_TYPE = 0x807B;
pub const VERTEX_ARRAY_STRIDE = 0x807C;
pub const NORMAL_ARRAY_TYPE = 0x807E;
pub const NORMAL_ARRAY_STRIDE = 0x807F;
pub const COLOR_ARRAY_SIZE = 0x8081;
pub const COLOR_ARRAY_TYPE = 0x8082;
pub const COLOR_ARRAY_STRIDE = 0x8083;
pub const INDEX_ARRAY_TYPE = 0x8085;
pub const INDEX_ARRAY_STRIDE = 0x8086;
pub const TEXTURE_COORD_ARRAY_SIZE = 0x8088;
pub const TEXTURE_COORD_ARRAY_TYPE = 0x8089;
pub const TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
pub const EDGE_FLAG_ARRAY_STRIDE = 0x808C;
pub const TEXTURE_LUMINANCE_SIZE = 0x8060;
pub const TEXTURE_INTENSITY_SIZE = 0x8061;
pub const TEXTURE_PRIORITY = 0x8066;
pub const TEXTURE_RESIDENT = 0x8067;
pub const ALPHA4 = 0x803B;
pub const ALPHA8 = 0x803C;
pub const ALPHA12 = 0x803D;
pub const ALPHA16 = 0x803E;
pub const LUMINANCE4 = 0x803F;
pub const LUMINANCE8 = 0x8040;
pub const LUMINANCE12 = 0x8041;
pub const LUMINANCE16 = 0x8042;
pub const LUMINANCE4_ALPHA4 = 0x8043;
pub const LUMINANCE6_ALPHA2 = 0x8044;
pub const LUMINANCE8_ALPHA8 = 0x8045;
pub const LUMINANCE12_ALPHA4 = 0x8046;
pub const LUMINANCE12_ALPHA12 = 0x8047;
pub const LUMINANCE16_ALPHA16 = 0x8048;
pub const INTENSITY = 0x8049;
pub const INTENSITY4 = 0x804A;
pub const INTENSITY8 = 0x804B;
pub const INTENSITY12 = 0x804C;
pub const INTENSITY16 = 0x804D;
pub const V2F = 0x2A20;
pub const V3F = 0x2A21;
pub const C4UB_V2F = 0x2A22;
pub const C4UB_V3F = 0x2A23;
pub const C3F_V3F = 0x2A24;
pub const N3F_V3F = 0x2A25;
pub const C4F_N3F_V3F = 0x2A26;
pub const T2F_V3F = 0x2A27;
pub const T4F_V4F = 0x2A28;
pub const T2F_C4UB_V3F = 0x2A29;
pub const T2F_C3F_V3F = 0x2A2A;
pub const T2F_N3F_V3F = 0x2A2B;
pub const T2F_C4F_N3F_V3F = 0x2A2C;
pub const T4F_C4F_N3F_V4F = 0x2A2D;
pub const UNSIGNED_BYTE_3_3_2 = 0x8032;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_INT_8_8_8_8 = 0x8035;
pub const UNSIGNED_INT_10_10_10_2 = 0x8036;
pub const TEXTURE_BINDING_3D = 0x806A;
pub const PACK_SKIP_IMAGES = 0x806B;
pub const PACK_IMAGE_HEIGHT = 0x806C;
pub const UNPACK_SKIP_IMAGES = 0x806D;
pub const UNPACK_IMAGE_HEIGHT = 0x806E;
pub const TEXTURE_3D = 0x806F;
pub const PROXY_TEXTURE_3D = 0x8070;
pub const TEXTURE_DEPTH = 0x8071;
pub const TEXTURE_WRAP_R = 0x8072;
pub const MAX_3D_TEXTURE_SIZE = 0x8073;
pub const UNSIGNED_BYTE_2_3_3_REV = 0x8362;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const UNSIGNED_SHORT_5_6_5_REV = 0x8364;
pub const UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
pub const UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
pub const UNSIGNED_INT_8_8_8_8_REV = 0x8367;
pub const UNSIGNED_INT_2_10_10_10_REV = 0x8368;
pub const BGR = 0x80E0;
pub const BGRA = 0x80E1;
pub const MAX_ELEMENTS_VERTICES = 0x80E8;
pub const MAX_ELEMENTS_INDICES = 0x80E9;
pub const CLAMP_TO_EDGE = 0x812F;
pub const TEXTURE_MIN_LOD = 0x813A;
pub const TEXTURE_MAX_LOD = 0x813B;
pub const TEXTURE_BASE_LEVEL = 0x813C;
pub const TEXTURE_MAX_LEVEL = 0x813D;
pub const SMOOTH_POINT_SIZE_RANGE = 0x0B12;
pub const SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
pub const SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
pub const SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const RESCALE_NORMAL = 0x803A;
pub const LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
pub const SINGLE_COLOR = 0x81F9;
pub const SEPARATE_SPECULAR_COLOR = 0x81FA;
pub const ALIASED_POINT_SIZE_RANGE = 0x846D;
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
pub const MULTISAMPLE = 0x809D;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_ALPHA_TO_ONE = 0x809F;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const TEXTURE_CUBE_MAP = 0x8513;
pub const TEXTURE_BINDING_CUBE_MAP = 0x8514;
pub const TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
pub const TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
pub const TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
pub const TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
pub const PROXY_TEXTURE_CUBE_MAP = 0x851B;
pub const MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
pub const COMPRESSED_RGB = 0x84ED;
pub const COMPRESSED_RGBA = 0x84EE;
pub const TEXTURE_COMPRESSION_HINT = 0x84EF;
pub const TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
pub const TEXTURE_COMPRESSED = 0x86A1;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const CLAMP_TO_BORDER = 0x812D;
pub const CLIENT_ACTIVE_TEXTURE = 0x84E1;
pub const MAX_TEXTURE_UNITS = 0x84E2;
pub const TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
pub const TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
pub const TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
pub const TRANSPOSE_COLOR_MATRIX = 0x84E6;
pub const MULTISAMPLE_BIT = 0x20000000;
pub const NORMAL_MAP = 0x8511;
pub const REFLECTION_MAP = 0x8512;
pub const COMPRESSED_ALPHA = 0x84E9;
pub const COMPRESSED_LUMINANCE = 0x84EA;
pub const COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
pub const COMPRESSED_INTENSITY = 0x84EC;
pub const COMBINE = 0x8570;
pub const COMBINE_RGB = 0x8571;
pub const COMBINE_ALPHA = 0x8572;
pub const SOURCE0_RGB = 0x8580;
pub const SOURCE1_RGB = 0x8581;
pub const SOURCE2_RGB = 0x8582;
pub const SOURCE0_ALPHA = 0x8588;
pub const SOURCE1_ALPHA = 0x8589;
pub const SOURCE2_ALPHA = 0x858A;
pub const OPERAND0_RGB = 0x8590;
pub const OPERAND1_RGB = 0x8591;
pub const OPERAND2_RGB = 0x8592;
pub const OPERAND0_ALPHA = 0x8598;
pub const OPERAND1_ALPHA = 0x8599;
pub const OPERAND2_ALPHA = 0x859A;
pub const RGB_SCALE = 0x8573;
pub const ADD_SIGNED = 0x8574;
pub const INTERPOLATE = 0x8575;
pub const SUBTRACT = 0x84E7;
pub const CONSTANT = 0x8576;
pub const PRIMARY_COLOR = 0x8577;
pub const PREVIOUS = 0x8578;
pub const DOT3_RGB = 0x86AE;
pub const DOT3_RGBA = 0x86AF;
pub const BLEND_DST_RGB = 0x80C8;
pub const BLEND_SRC_RGB = 0x80C9;
pub const BLEND_DST_ALPHA = 0x80CA;
pub const BLEND_SRC_ALPHA = 0x80CB;
pub const POINT_FADE_THRESHOLD_SIZE = 0x8128;
pub const DEPTH_COMPONENT16 = 0x81A5;
pub const DEPTH_COMPONENT24 = 0x81A6;
pub const DEPTH_COMPONENT32 = 0x81A7;
pub const MIRRORED_REPEAT = 0x8370;
pub const MAX_TEXTURE_LOD_BIAS = 0x84FD;
pub const TEXTURE_LOD_BIAS = 0x8501;
pub const INCR_WRAP = 0x8507;
pub const DECR_WRAP = 0x8508;
pub const TEXTURE_DEPTH_SIZE = 0x884A;
pub const TEXTURE_COMPARE_MODE = 0x884C;
pub const TEXTURE_COMPARE_FUNC = 0x884D;
pub const POINT_SIZE_MIN = 0x8126;
pub const POINT_SIZE_MAX = 0x8127;
pub const POINT_DISTANCE_ATTENUATION = 0x8129;
pub const GENERATE_MIPMAP = 0x8191;
pub const GENERATE_MIPMAP_HINT = 0x8192;
pub const FOG_COORDINATE_SOURCE = 0x8450;
pub const FOG_COORDINATE = 0x8451;
pub const FRAGMENT_DEPTH = 0x8452;
pub const CURRENT_FOG_COORDINATE = 0x8453;
pub const FOG_COORDINATE_ARRAY_TYPE = 0x8454;
pub const FOG_COORDINATE_ARRAY_STRIDE = 0x8455;
pub const FOG_COORDINATE_ARRAY_POINTER = 0x8456;
pub const FOG_COORDINATE_ARRAY = 0x8457;
pub const COLOR_SUM = 0x8458;
pub const CURRENT_SECONDARY_COLOR = 0x8459;
pub const SECONDARY_COLOR_ARRAY_SIZE = 0x845A;
pub const SECONDARY_COLOR_ARRAY_TYPE = 0x845B;
pub const SECONDARY_COLOR_ARRAY_STRIDE = 0x845C;
pub const SECONDARY_COLOR_ARRAY_POINTER = 0x845D;
pub const SECONDARY_COLOR_ARRAY = 0x845E;
pub const TEXTURE_FILTER_CONTROL = 0x8500;
pub const DEPTH_TEXTURE_MODE = 0x884B;
pub const COMPARE_R_TO_TEXTURE = 0x884E;
pub const BLEND_COLOR = 0x8005;
pub const BLEND_EQUATION = 0x8009;
pub const CONSTANT_COLOR = 0x8001;
pub const ONE_MINUS_CONSTANT_COLOR = 0x8002;
pub const CONSTANT_ALPHA = 0x8003;
pub const ONE_MINUS_CONSTANT_ALPHA = 0x8004;
pub const FUNC_ADD = 0x8006;
pub const FUNC_REVERSE_SUBTRACT = 0x800B;
pub const FUNC_SUBTRACT = 0x800A;
pub const MIN = 0x8007;
pub const MAX = 0x8008;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const QUERY_COUNTER_BITS = 0x8864;
pub const CURRENT_QUERY = 0x8865;
pub const QUERY_RESULT = 0x8866;
pub const QUERY_RESULT_AVAILABLE = 0x8867;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
pub const READ_ONLY = 0x88B8;
pub const WRITE_ONLY = 0x88B9;
pub const READ_WRITE = 0x88BA;
pub const BUFFER_ACCESS = 0x88BB;
pub const BUFFER_MAPPED = 0x88BC;
pub const BUFFER_MAP_POINTER = 0x88BD;
pub const STREAM_DRAW = 0x88E0;
pub const STREAM_READ = 0x88E1;
pub const STREAM_COPY = 0x88E2;
pub const STATIC_DRAW = 0x88E4;
pub const STATIC_READ = 0x88E5;
pub const STATIC_COPY = 0x88E6;
pub const DYNAMIC_DRAW = 0x88E8;
pub const DYNAMIC_READ = 0x88E9;
pub const DYNAMIC_COPY = 0x88EA;
pub const SAMPLES_PASSED = 0x8914;
pub const SRC1_ALPHA = 0x8589;
pub const VERTEX_ARRAY_BUFFER_BINDING = 0x8896;
pub const NORMAL_ARRAY_BUFFER_BINDING = 0x8897;
pub const COLOR_ARRAY_BUFFER_BINDING = 0x8898;
pub const INDEX_ARRAY_BUFFER_BINDING = 0x8899;
pub const TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
pub const EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B;
pub const SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C;
pub const FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D;
pub const WEIGHT_ARRAY_BUFFER_BINDING = 0x889E;
pub const FOG_COORD_SRC = 0x8450;
pub const FOG_COORD = 0x8451;
pub const CURRENT_FOG_COORD = 0x8453;
pub const FOG_COORD_ARRAY_TYPE = 0x8454;
pub const FOG_COORD_ARRAY_STRIDE = 0x8455;
pub const FOG_COORD_ARRAY_POINTER = 0x8456;
pub const FOG_COORD_ARRAY = 0x8457;
pub const FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D;
pub const SRC0_RGB = 0x8580;
pub const SRC1_RGB = 0x8581;
pub const SRC2_RGB = 0x8582;
pub const SRC0_ALPHA = 0x8588;
pub const SRC2_ALPHA = 0x858A;
pub const BLEND_EQUATION_RGB = 0x8009;
pub const VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
pub const VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
pub const VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
pub const VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
pub const CURRENT_VERTEX_ATTRIB = 0x8626;
pub const VERTEX_PROGRAM_POINT_SIZE = 0x8642;
pub const VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
pub const STENCIL_BACK_FUNC = 0x8800;
pub const STENCIL_BACK_FAIL = 0x8801;
pub const STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
pub const STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
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
pub const BLEND_EQUATION_ALPHA = 0x883D;
pub const MAX_VERTEX_ATTRIBS = 0x8869;
pub const VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
pub const MAX_TEXTURE_IMAGE_UNITS = 0x8872;
pub const FRAGMENT_SHADER = 0x8B30;
pub const VERTEX_SHADER = 0x8B31;
pub const MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
pub const MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
pub const MAX_VARYING_FLOATS = 0x8B4B;
pub const MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
pub const MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
pub const SHADER_TYPE = 0x8B4F;
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
pub const SAMPLER_1D = 0x8B5D;
pub const SAMPLER_2D = 0x8B5E;
pub const SAMPLER_3D = 0x8B5F;
pub const SAMPLER_CUBE = 0x8B60;
pub const SAMPLER_1D_SHADOW = 0x8B61;
pub const SAMPLER_2D_SHADOW = 0x8B62;
pub const DELETE_STATUS = 0x8B80;
pub const COMPILE_STATUS = 0x8B81;
pub const LINK_STATUS = 0x8B82;
pub const VALIDATE_STATUS = 0x8B83;
pub const INFO_LOG_LENGTH = 0x8B84;
pub const ATTACHED_SHADERS = 0x8B85;
pub const ACTIVE_UNIFORMS = 0x8B86;
pub const ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
pub const SHADER_SOURCE_LENGTH = 0x8B88;
pub const ACTIVE_ATTRIBUTES = 0x8B89;
pub const ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
pub const FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
pub const SHADING_LANGUAGE_VERSION = 0x8B8C;
pub const CURRENT_PROGRAM = 0x8B8D;
pub const POINT_SPRITE_COORD_ORIGIN = 0x8CA0;
pub const LOWER_LEFT = 0x8CA1;
pub const UPPER_LEFT = 0x8CA2;
pub const STENCIL_BACK_REF = 0x8CA3;
pub const STENCIL_BACK_VALUE_MASK = 0x8CA4;
pub const STENCIL_BACK_WRITEMASK = 0x8CA5;
pub const VERTEX_PROGRAM_TWO_SIDE = 0x8643;
pub const POINT_SPRITE = 0x8861;
pub const COORD_REPLACE = 0x8862;
pub const MAX_TEXTURE_COORDS = 0x8871;
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
pub const SRGB_ALPHA = 0x8C42;
pub const SRGB8_ALPHA8 = 0x8C43;
pub const COMPRESSED_SRGB = 0x8C48;
pub const COMPRESSED_SRGB_ALPHA = 0x8C49;
pub const CURRENT_RASTER_SECONDARY_COLOR = 0x845F;
pub const SLUMINANCE_ALPHA = 0x8C44;
pub const SLUMINANCE8_ALPHA8 = 0x8C45;
pub const SLUMINANCE = 0x8C46;
pub const SLUMINANCE8 = 0x8C47;
pub const COMPRESSED_SLUMINANCE = 0x8C4A;
pub const COMPRESSED_SLUMINANCE_ALPHA = 0x8C4B;
pub const COMPARE_REF_TO_TEXTURE = 0x884E;
pub const CLIP_DISTANCE0 = 0x3000;
pub const CLIP_DISTANCE1 = 0x3001;
pub const CLIP_DISTANCE2 = 0x3002;
pub const CLIP_DISTANCE3 = 0x3003;
pub const CLIP_DISTANCE4 = 0x3004;
pub const CLIP_DISTANCE5 = 0x3005;
pub const CLIP_DISTANCE6 = 0x3006;
pub const CLIP_DISTANCE7 = 0x3007;
pub const MAX_CLIP_DISTANCES = 0x0D32;
pub const MAJOR_VERSION = 0x821B;
pub const MINOR_VERSION = 0x821C;
pub const NUM_EXTENSIONS = 0x821D;
pub const CONTEXT_FLAGS = 0x821E;
pub const COMPRESSED_RED = 0x8225;
pub const COMPRESSED_RG = 0x8226;
pub const CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001;
pub const RGBA32F = 0x8814;
pub const RGB32F = 0x8815;
pub const RGBA16F = 0x881A;
pub const RGB16F = 0x881B;
pub const VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
pub const MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
pub const MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
pub const MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
pub const CLAMP_READ_COLOR = 0x891C;
pub const FIXED_ONLY = 0x891D;
pub const MAX_VARYING_COMPONENTS = 0x8B4B;
pub const TEXTURE_1D_ARRAY = 0x8C18;
pub const PROXY_TEXTURE_1D_ARRAY = 0x8C19;
pub const TEXTURE_2D_ARRAY = 0x8C1A;
pub const PROXY_TEXTURE_2D_ARRAY = 0x8C1B;
pub const TEXTURE_BINDING_1D_ARRAY = 0x8C1C;
pub const TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
pub const R11F_G11F_B10F = 0x8C3A;
pub const UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
pub const RGB9_E5 = 0x8C3D;
pub const UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
pub const TEXTURE_SHARED_SIZE = 0x8C3F;
pub const TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;
pub const TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
pub const TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
pub const TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
pub const TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
pub const PRIMITIVES_GENERATED = 0x8C87;
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
pub const GREEN_INTEGER = 0x8D95;
pub const BLUE_INTEGER = 0x8D96;
pub const RGB_INTEGER = 0x8D98;
pub const RGBA_INTEGER = 0x8D99;
pub const BGR_INTEGER = 0x8D9A;
pub const BGRA_INTEGER = 0x8D9B;
pub const SAMPLER_1D_ARRAY = 0x8DC0;
pub const SAMPLER_2D_ARRAY = 0x8DC1;
pub const SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
pub const SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
pub const SAMPLER_CUBE_SHADOW = 0x8DC5;
pub const UNSIGNED_INT_VEC2 = 0x8DC6;
pub const UNSIGNED_INT_VEC3 = 0x8DC7;
pub const UNSIGNED_INT_VEC4 = 0x8DC8;
pub const INT_SAMPLER_1D = 0x8DC9;
pub const INT_SAMPLER_2D = 0x8DCA;
pub const INT_SAMPLER_3D = 0x8DCB;
pub const INT_SAMPLER_CUBE = 0x8DCC;
pub const INT_SAMPLER_1D_ARRAY = 0x8DCE;
pub const INT_SAMPLER_2D_ARRAY = 0x8DCF;
pub const UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
pub const UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
pub const UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
pub const UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
pub const UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
pub const UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
pub const QUERY_WAIT = 0x8E13;
pub const QUERY_NO_WAIT = 0x8E14;
pub const QUERY_BY_REGION_WAIT = 0x8E15;
pub const QUERY_BY_REGION_NO_WAIT = 0x8E16;
pub const BUFFER_ACCESS_FLAGS = 0x911F;
pub const BUFFER_MAP_LENGTH = 0x9120;
pub const BUFFER_MAP_OFFSET = 0x9121;
pub const DEPTH_COMPONENT32F = 0x8CAC;
pub const DEPTH32F_STENCIL8 = 0x8CAD;
pub const FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
pub const INVALID_FRAMEBUFFER_OPERATION = 0x0506;
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
pub const MAX_RENDERBUFFER_SIZE = 0x84E8;
pub const DEPTH_STENCIL = 0x84F9;
pub const UNSIGNED_INT_24_8 = 0x84FA;
pub const DEPTH24_STENCIL8 = 0x88F0;
pub const TEXTURE_STENCIL_SIZE = 0x88F1;
pub const TEXTURE_RED_TYPE = 0x8C10;
pub const TEXTURE_GREEN_TYPE = 0x8C11;
pub const TEXTURE_BLUE_TYPE = 0x8C12;
pub const TEXTURE_ALPHA_TYPE = 0x8C13;
pub const TEXTURE_DEPTH_TYPE = 0x8C16;
pub const UNSIGNED_NORMALIZED = 0x8C17;
pub const FRAMEBUFFER_BINDING = 0x8CA6;
pub const DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
pub const RENDERBUFFER_BINDING = 0x8CA7;
pub const READ_FRAMEBUFFER = 0x8CA8;
pub const DRAW_FRAMEBUFFER = 0x8CA9;
pub const READ_FRAMEBUFFER_BINDING = 0x8CAA;
pub const RENDERBUFFER_SAMPLES = 0x8CAB;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
pub const FRAMEBUFFER_COMPLETE = 0x8CD5;
pub const FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
pub const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
pub const FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB;
pub const FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC;
pub const FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
pub const MAX_COLOR_ATTACHMENTS = 0x8CDF;
pub const COLOR_ATTACHMENT0 = 0x8CE0;
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
pub const DEPTH_ATTACHMENT = 0x8D00;
pub const STENCIL_ATTACHMENT = 0x8D20;
pub const FRAMEBUFFER = 0x8D40;
pub const RENDERBUFFER = 0x8D41;
pub const RENDERBUFFER_WIDTH = 0x8D42;
pub const RENDERBUFFER_HEIGHT = 0x8D43;
pub const RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
pub const STENCIL_INDEX1 = 0x8D46;
pub const STENCIL_INDEX4 = 0x8D47;
pub const STENCIL_INDEX8 = 0x8D48;
pub const STENCIL_INDEX16 = 0x8D49;
pub const RENDERBUFFER_RED_SIZE = 0x8D50;
pub const RENDERBUFFER_GREEN_SIZE = 0x8D51;
pub const RENDERBUFFER_BLUE_SIZE = 0x8D52;
pub const RENDERBUFFER_ALPHA_SIZE = 0x8D53;
pub const RENDERBUFFER_DEPTH_SIZE = 0x8D54;
pub const RENDERBUFFER_STENCIL_SIZE = 0x8D55;
pub const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
pub const MAX_SAMPLES = 0x8D57;
pub const INDEX = 0x8222;
pub const TEXTURE_LUMINANCE_TYPE = 0x8C14;
pub const TEXTURE_INTENSITY_TYPE = 0x8C15;
pub const FRAMEBUFFER_SRGB = 0x8DB9;
pub const HALF_FLOAT = 0x140B;
pub const MAP_READ_BIT = 0x0001;
pub const MAP_WRITE_BIT = 0x0002;
pub const MAP_INVALIDATE_RANGE_BIT = 0x0004;
pub const MAP_INVALIDATE_BUFFER_BIT = 0x0008;
pub const MAP_FLUSH_EXPLICIT_BIT = 0x0010;
pub const MAP_UNSYNCHRONIZED_BIT = 0x0020;
pub const COMPRESSED_RED_RGTC1 = 0x8DBB;
pub const COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;
pub const COMPRESSED_RG_RGTC2 = 0x8DBD;
pub const COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;
pub const RG = 0x8227;
pub const RG_INTEGER = 0x8228;
pub const R8 = 0x8229;
pub const R16 = 0x822A;
pub const RG8 = 0x822B;
pub const RG16 = 0x822C;
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
pub const CLAMP_VERTEX_COLOR = 0x891A;
pub const CLAMP_FRAGMENT_COLOR = 0x891B;
pub const ALPHA_INTEGER = 0x8D97;
pub const SAMPLER_2D_RECT = 0x8B63;
pub const SAMPLER_2D_RECT_SHADOW = 0x8B64;
pub const SAMPLER_BUFFER = 0x8DC2;
pub const INT_SAMPLER_2D_RECT = 0x8DCD;
pub const INT_SAMPLER_BUFFER = 0x8DD0;
pub const UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
pub const UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
pub const TEXTURE_BUFFER = 0x8C2A;
pub const MAX_TEXTURE_BUFFER_SIZE = 0x8C2B;
pub const TEXTURE_BINDING_BUFFER = 0x8C2C;
pub const TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D;
pub const TEXTURE_RECTANGLE = 0x84F5;
pub const TEXTURE_BINDING_RECTANGLE = 0x84F6;
pub const PROXY_TEXTURE_RECTANGLE = 0x84F7;
pub const MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8;
pub const R8_SNORM = 0x8F94;
pub const RG8_SNORM = 0x8F95;
pub const RGB8_SNORM = 0x8F96;
pub const RGBA8_SNORM = 0x8F97;
pub const R16_SNORM = 0x8F98;
pub const RG16_SNORM = 0x8F99;
pub const RGB16_SNORM = 0x8F9A;
pub const RGBA16_SNORM = 0x8F9B;
pub const SIGNED_NORMALIZED = 0x8F9C;
pub const PRIMITIVE_RESTART = 0x8F9D;
pub const PRIMITIVE_RESTART_INDEX = 0x8F9E;
pub const COPY_READ_BUFFER = 0x8F36;
pub const COPY_WRITE_BUFFER = 0x8F37;
pub const UNIFORM_BUFFER = 0x8A11;
pub const UNIFORM_BUFFER_BINDING = 0x8A28;
pub const UNIFORM_BUFFER_START = 0x8A29;
pub const UNIFORM_BUFFER_SIZE = 0x8A2A;
pub const MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
pub const MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C;
pub const MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
pub const MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
pub const MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
pub const MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
pub const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
pub const MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32;
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
pub const UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;
pub const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
pub const INVALID_INDEX = 0xFFFFFFFF;

pub fn cullFace(_mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(_mode);
}

pub fn frontFace(_mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(_mode);
}

pub fn hint(_target: GLenum, _mode: GLenum) void {
    return (function_pointers.glHint orelse @panic("glHint was not bound."))(_target, _mode);
}

pub fn lineWidth(_width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(_width);
}

pub fn pointSize(_size: GLfloat) void {
    return (function_pointers.glPointSize orelse @panic("glPointSize was not bound."))(_size);
}

pub fn polygonMode(_face: GLenum, _mode: GLenum) void {
    return (function_pointers.glPolygonMode orelse @panic("glPolygonMode was not bound."))(_face, _mode);
}

pub fn scissor(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(_x, _y, _width, _height);
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

pub fn texImage1D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexImage1D orelse @panic("glTexImage1D was not bound."))(_target, _level, _internalformat, _width, _border, _format, _type, _pixels);
}

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _format, _type, _pixels);
}

pub fn drawBuffer(_buf: GLenum) void {
    return (function_pointers.glDrawBuffer orelse @panic("glDrawBuffer was not bound."))(_buf);
}

pub fn clear(_mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(_mask);
}

pub fn clearColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(_red, _green, _blue, _alpha);
}

pub fn clearStencil(_s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(_s);
}

pub fn clearDepth(_depth: GLdouble) void {
    return (function_pointers.glClearDepth orelse @panic("glClearDepth was not bound."))(_depth);
}

pub fn stencilMask(_mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(_mask);
}

pub fn colorMask(_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(_red, _green, _blue, _alpha);
}

pub fn depthMask(_flag: GLboolean) void {
    return (function_pointers.glDepthMask orelse @panic("glDepthMask was not bound."))(_flag);
}

pub fn disable(_cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(_cap);
}

pub fn enable(_cap: GLenum) void {
    return (function_pointers.glEnable orelse @panic("glEnable was not bound."))(_cap);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn blendFunc(_sfactor: GLenum, _dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(_sfactor, _dfactor);
}

pub fn logicOp(_opcode: GLenum) void {
    return (function_pointers.glLogicOp orelse @panic("glLogicOp was not bound."))(_opcode);
}

pub fn stencilFunc(_func: GLenum, _ref: GLint, _mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(_func, _ref, _mask);
}

pub fn stencilOp(_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(_fail, _zfail, _zpass);
}

pub fn depthFunc(_func: GLenum) void {
    return (function_pointers.glDepthFunc orelse @panic("glDepthFunc was not bound."))(_func);
}

pub fn pixelStoref(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glPixelStoref orelse @panic("glPixelStoref was not bound."))(_pname, _param);
}

pub fn pixelStorei(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(_pname, _param);
}

pub fn readBuffer(_src: GLenum) void {
    return (function_pointers.glReadBuffer orelse @panic("glReadBuffer was not bound."))(_src);
}

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(_x, _y, _width, _height, _format, _type, _pixels);
}

pub fn getBooleanv(_pname: GLenum, _data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(_pname, _data);
}

pub fn getDoublev(_pname: GLenum, _data: [*c]GLdouble) void {
    return (function_pointers.glGetDoublev orelse @panic("glGetDoublev was not bound."))(_pname, _data);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFloatv(_pname: GLenum, _data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(_pname, _data);
}

pub fn getIntegerv(_pname: GLenum, _data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(_pname, _data);
}

pub fn getString(_name: GLenum) ?[*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(_name);
}

pub fn getTexImage(_target: GLenum, _level: GLint, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void {
    return (function_pointers.glGetTexImage orelse @panic("glGetTexImage was not bound."))(_target, _level, _format, _type, _pixels);
}

pub fn getTexParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getTexLevelParameterfv(_target: GLenum, _level: GLint, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexLevelParameterfv orelse @panic("glGetTexLevelParameterfv was not bound."))(_target, _level, _pname, _params);
}

pub fn getTexLevelParameteriv(_target: GLenum, _level: GLint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexLevelParameteriv orelse @panic("glGetTexLevelParameteriv was not bound."))(_target, _level, _pname, _params);
}

pub fn isEnabled(_cap: GLenum) GLboolean {
    return (function_pointers.glIsEnabled orelse @panic("glIsEnabled was not bound."))(_cap);
}

pub fn depthRange(_n: GLdouble, _f: GLdouble) void {
    return (function_pointers.glDepthRange orelse @panic("glDepthRange was not bound."))(_n, _f);
}

pub fn viewport(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(_x, _y, _width, _height);
}

pub fn newList(_list: GLuint, _mode: GLenum) void {
    return (function_pointers.glNewList orelse @panic("glNewList was not bound."))(_list, _mode);
}

pub fn endList() void {
    return (function_pointers.glEndList orelse @panic("glEndList was not bound."))();
}

pub fn callList(_list: GLuint) void {
    return (function_pointers.glCallList orelse @panic("glCallList was not bound."))(_list);
}

pub fn callLists(_n: GLsizei, _type: GLenum, _lists: ?*const anyopaque) void {
    return (function_pointers.glCallLists orelse @panic("glCallLists was not bound."))(_n, _type, _lists);
}

pub fn deleteLists(_list: GLuint, _range: GLsizei) void {
    return (function_pointers.glDeleteLists orelse @panic("glDeleteLists was not bound."))(_list, _range);
}

pub fn genLists(_range: GLsizei) GLuint {
    return (function_pointers.glGenLists orelse @panic("glGenLists was not bound."))(_range);
}

pub fn listBase(_base: GLuint) void {
    return (function_pointers.glListBase orelse @panic("glListBase was not bound."))(_base);
}

pub fn begin(_mode: GLenum) void {
    return (function_pointers.glBegin orelse @panic("glBegin was not bound."))(_mode);
}

pub fn bitmap(_width: GLsizei, _height: GLsizei, _xorig: GLfloat, _yorig: GLfloat, _xmove: GLfloat, _ymove: GLfloat, _bitmap: ?[*:0]const GLubyte) void {
    return (function_pointers.glBitmap orelse @panic("glBitmap was not bound."))(_width, _height, _xorig, _yorig, _xmove, _ymove, _bitmap);
}

pub fn color3b(_red: GLbyte, _green: GLbyte, _blue: GLbyte) void {
    return (function_pointers.glColor3b orelse @panic("glColor3b was not bound."))(_red, _green, _blue);
}

pub fn color3bv(_v: [*c]const GLbyte) void {
    return (function_pointers.glColor3bv orelse @panic("glColor3bv was not bound."))(_v);
}

pub fn color3d(_red: GLdouble, _green: GLdouble, _blue: GLdouble) void {
    return (function_pointers.glColor3d orelse @panic("glColor3d was not bound."))(_red, _green, _blue);
}

pub fn color3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glColor3dv orelse @panic("glColor3dv was not bound."))(_v);
}

pub fn color3f(_red: GLfloat, _green: GLfloat, _blue: GLfloat) void {
    return (function_pointers.glColor3f orelse @panic("glColor3f was not bound."))(_red, _green, _blue);
}

pub fn color3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glColor3fv orelse @panic("glColor3fv was not bound."))(_v);
}

pub fn color3i(_red: GLint, _green: GLint, _blue: GLint) void {
    return (function_pointers.glColor3i orelse @panic("glColor3i was not bound."))(_red, _green, _blue);
}

pub fn color3iv(_v: [*c]const GLint) void {
    return (function_pointers.glColor3iv orelse @panic("glColor3iv was not bound."))(_v);
}

pub fn color3s(_red: GLshort, _green: GLshort, _blue: GLshort) void {
    return (function_pointers.glColor3s orelse @panic("glColor3s was not bound."))(_red, _green, _blue);
}

pub fn color3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glColor3sv orelse @panic("glColor3sv was not bound."))(_v);
}

pub fn color3ub(_red: GLubyte, _green: GLubyte, _blue: GLubyte) void {
    return (function_pointers.glColor3ub orelse @panic("glColor3ub was not bound."))(_red, _green, _blue);
}

pub fn color3ubv(_v: ?[*:0]const GLubyte) void {
    return (function_pointers.glColor3ubv orelse @panic("glColor3ubv was not bound."))(_v);
}

pub fn color3ui(_red: GLuint, _green: GLuint, _blue: GLuint) void {
    return (function_pointers.glColor3ui orelse @panic("glColor3ui was not bound."))(_red, _green, _blue);
}

pub fn color3uiv(_v: [*c]const GLuint) void {
    return (function_pointers.glColor3uiv orelse @panic("glColor3uiv was not bound."))(_v);
}

pub fn color3us(_red: GLushort, _green: GLushort, _blue: GLushort) void {
    return (function_pointers.glColor3us orelse @panic("glColor3us was not bound."))(_red, _green, _blue);
}

pub fn color3usv(_v: [*c]const GLushort) void {
    return (function_pointers.glColor3usv orelse @panic("glColor3usv was not bound."))(_v);
}

pub fn color4b(_red: GLbyte, _green: GLbyte, _blue: GLbyte, _alpha: GLbyte) void {
    return (function_pointers.glColor4b orelse @panic("glColor4b was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4bv(_v: [*c]const GLbyte) void {
    return (function_pointers.glColor4bv orelse @panic("glColor4bv was not bound."))(_v);
}

pub fn color4d(_red: GLdouble, _green: GLdouble, _blue: GLdouble, _alpha: GLdouble) void {
    return (function_pointers.glColor4d orelse @panic("glColor4d was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glColor4dv orelse @panic("glColor4dv was not bound."))(_v);
}

pub fn color4f(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glColor4f orelse @panic("glColor4f was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glColor4fv orelse @panic("glColor4fv was not bound."))(_v);
}

pub fn color4i(_red: GLint, _green: GLint, _blue: GLint, _alpha: GLint) void {
    return (function_pointers.glColor4i orelse @panic("glColor4i was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4iv(_v: [*c]const GLint) void {
    return (function_pointers.glColor4iv orelse @panic("glColor4iv was not bound."))(_v);
}

pub fn color4s(_red: GLshort, _green: GLshort, _blue: GLshort, _alpha: GLshort) void {
    return (function_pointers.glColor4s orelse @panic("glColor4s was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4sv(_v: [*c]const GLshort) void {
    return (function_pointers.glColor4sv orelse @panic("glColor4sv was not bound."))(_v);
}

pub fn color4ub(_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) void {
    return (function_pointers.glColor4ub orelse @panic("glColor4ub was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4ubv(_v: ?[*:0]const GLubyte) void {
    return (function_pointers.glColor4ubv orelse @panic("glColor4ubv was not bound."))(_v);
}

pub fn color4ui(_red: GLuint, _green: GLuint, _blue: GLuint, _alpha: GLuint) void {
    return (function_pointers.glColor4ui orelse @panic("glColor4ui was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4uiv(_v: [*c]const GLuint) void {
    return (function_pointers.glColor4uiv orelse @panic("glColor4uiv was not bound."))(_v);
}

pub fn color4us(_red: GLushort, _green: GLushort, _blue: GLushort, _alpha: GLushort) void {
    return (function_pointers.glColor4us orelse @panic("glColor4us was not bound."))(_red, _green, _blue, _alpha);
}

pub fn color4usv(_v: [*c]const GLushort) void {
    return (function_pointers.glColor4usv orelse @panic("glColor4usv was not bound."))(_v);
}

pub fn edgeFlag(_flag: GLboolean) void {
    return (function_pointers.glEdgeFlag orelse @panic("glEdgeFlag was not bound."))(_flag);
}

pub fn edgeFlagv(_flag: [*c]const GLboolean) void {
    return (function_pointers.glEdgeFlagv orelse @panic("glEdgeFlagv was not bound."))(_flag);
}

pub fn end() void {
    return (function_pointers.glEnd orelse @panic("glEnd was not bound."))();
}

pub fn indexd(_c: GLdouble) void {
    return (function_pointers.glIndexd orelse @panic("glIndexd was not bound."))(_c);
}

pub fn indexdv(_c: [*c]const GLdouble) void {
    return (function_pointers.glIndexdv orelse @panic("glIndexdv was not bound."))(_c);
}

pub fn indexf(_c: GLfloat) void {
    return (function_pointers.glIndexf orelse @panic("glIndexf was not bound."))(_c);
}

pub fn indexfv(_c: [*c]const GLfloat) void {
    return (function_pointers.glIndexfv orelse @panic("glIndexfv was not bound."))(_c);
}

pub fn indexi(_c: GLint) void {
    return (function_pointers.glIndexi orelse @panic("glIndexi was not bound."))(_c);
}

pub fn indexiv(_c: [*c]const GLint) void {
    return (function_pointers.glIndexiv orelse @panic("glIndexiv was not bound."))(_c);
}

pub fn indexs(_c: GLshort) void {
    return (function_pointers.glIndexs orelse @panic("glIndexs was not bound."))(_c);
}

pub fn indexsv(_c: [*c]const GLshort) void {
    return (function_pointers.glIndexsv orelse @panic("glIndexsv was not bound."))(_c);
}

pub fn normal3b(_nx: GLbyte, _ny: GLbyte, _nz: GLbyte) void {
    return (function_pointers.glNormal3b orelse @panic("glNormal3b was not bound."))(_nx, _ny, _nz);
}

pub fn normal3bv(_v: [*c]const GLbyte) void {
    return (function_pointers.glNormal3bv orelse @panic("glNormal3bv was not bound."))(_v);
}

pub fn normal3d(_nx: GLdouble, _ny: GLdouble, _nz: GLdouble) void {
    return (function_pointers.glNormal3d orelse @panic("glNormal3d was not bound."))(_nx, _ny, _nz);
}

pub fn normal3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glNormal3dv orelse @panic("glNormal3dv was not bound."))(_v);
}

pub fn normal3f(_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) void {
    return (function_pointers.glNormal3f orelse @panic("glNormal3f was not bound."))(_nx, _ny, _nz);
}

pub fn normal3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glNormal3fv orelse @panic("glNormal3fv was not bound."))(_v);
}

pub fn normal3i(_nx: GLint, _ny: GLint, _nz: GLint) void {
    return (function_pointers.glNormal3i orelse @panic("glNormal3i was not bound."))(_nx, _ny, _nz);
}

pub fn normal3iv(_v: [*c]const GLint) void {
    return (function_pointers.glNormal3iv orelse @panic("glNormal3iv was not bound."))(_v);
}

pub fn normal3s(_nx: GLshort, _ny: GLshort, _nz: GLshort) void {
    return (function_pointers.glNormal3s orelse @panic("glNormal3s was not bound."))(_nx, _ny, _nz);
}

pub fn normal3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glNormal3sv orelse @panic("glNormal3sv was not bound."))(_v);
}

pub fn rasterPos2d(_x: GLdouble, _y: GLdouble) void {
    return (function_pointers.glRasterPos2d orelse @panic("glRasterPos2d was not bound."))(_x, _y);
}

pub fn rasterPos2dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos2dv orelse @panic("glRasterPos2dv was not bound."))(_v);
}

pub fn rasterPos2f(_x: GLfloat, _y: GLfloat) void {
    return (function_pointers.glRasterPos2f orelse @panic("glRasterPos2f was not bound."))(_x, _y);
}

pub fn rasterPos2fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos2fv orelse @panic("glRasterPos2fv was not bound."))(_v);
}

pub fn rasterPos2i(_x: GLint, _y: GLint) void {
    return (function_pointers.glRasterPos2i orelse @panic("glRasterPos2i was not bound."))(_x, _y);
}

pub fn rasterPos2iv(_v: [*c]const GLint) void {
    return (function_pointers.glRasterPos2iv orelse @panic("glRasterPos2iv was not bound."))(_v);
}

pub fn rasterPos2s(_x: GLshort, _y: GLshort) void {
    return (function_pointers.glRasterPos2s orelse @panic("glRasterPos2s was not bound."))(_x, _y);
}

pub fn rasterPos2sv(_v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos2sv orelse @panic("glRasterPos2sv was not bound."))(_v);
}

pub fn rasterPos3d(_x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glRasterPos3d orelse @panic("glRasterPos3d was not bound."))(_x, _y, _z);
}

pub fn rasterPos3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos3dv orelse @panic("glRasterPos3dv was not bound."))(_v);
}

pub fn rasterPos3f(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glRasterPos3f orelse @panic("glRasterPos3f was not bound."))(_x, _y, _z);
}

pub fn rasterPos3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos3fv orelse @panic("glRasterPos3fv was not bound."))(_v);
}

pub fn rasterPos3i(_x: GLint, _y: GLint, _z: GLint) void {
    return (function_pointers.glRasterPos3i orelse @panic("glRasterPos3i was not bound."))(_x, _y, _z);
}

pub fn rasterPos3iv(_v: [*c]const GLint) void {
    return (function_pointers.glRasterPos3iv orelse @panic("glRasterPos3iv was not bound."))(_v);
}

pub fn rasterPos3s(_x: GLshort, _y: GLshort, _z: GLshort) void {
    return (function_pointers.glRasterPos3s orelse @panic("glRasterPos3s was not bound."))(_x, _y, _z);
}

pub fn rasterPos3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos3sv orelse @panic("glRasterPos3sv was not bound."))(_v);
}

pub fn rasterPos4d(_x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void {
    return (function_pointers.glRasterPos4d orelse @panic("glRasterPos4d was not bound."))(_x, _y, _z, _w);
}

pub fn rasterPos4dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos4dv orelse @panic("glRasterPos4dv was not bound."))(_v);
}

pub fn rasterPos4f(_x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void {
    return (function_pointers.glRasterPos4f orelse @panic("glRasterPos4f was not bound."))(_x, _y, _z, _w);
}

pub fn rasterPos4fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos4fv orelse @panic("glRasterPos4fv was not bound."))(_v);
}

pub fn rasterPos4i(_x: GLint, _y: GLint, _z: GLint, _w: GLint) void {
    return (function_pointers.glRasterPos4i orelse @panic("glRasterPos4i was not bound."))(_x, _y, _z, _w);
}

pub fn rasterPos4iv(_v: [*c]const GLint) void {
    return (function_pointers.glRasterPos4iv orelse @panic("glRasterPos4iv was not bound."))(_v);
}

pub fn rasterPos4s(_x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void {
    return (function_pointers.glRasterPos4s orelse @panic("glRasterPos4s was not bound."))(_x, _y, _z, _w);
}

pub fn rasterPos4sv(_v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos4sv orelse @panic("glRasterPos4sv was not bound."))(_v);
}

pub fn rectd(_x1: GLdouble, _y1: GLdouble, _x2: GLdouble, _y2: GLdouble) void {
    return (function_pointers.glRectd orelse @panic("glRectd was not bound."))(_x1, _y1, _x2, _y2);
}

pub fn rectdv(_v1: [*c]const GLdouble, _v2: [*c]const GLdouble) void {
    return (function_pointers.glRectdv orelse @panic("glRectdv was not bound."))(_v1, _v2);
}

pub fn rectf(_x1: GLfloat, _y1: GLfloat, _x2: GLfloat, _y2: GLfloat) void {
    return (function_pointers.glRectf orelse @panic("glRectf was not bound."))(_x1, _y1, _x2, _y2);
}

pub fn rectfv(_v1: [*c]const GLfloat, _v2: [*c]const GLfloat) void {
    return (function_pointers.glRectfv orelse @panic("glRectfv was not bound."))(_v1, _v2);
}

pub fn recti(_x1: GLint, _y1: GLint, _x2: GLint, _y2: GLint) void {
    return (function_pointers.glRecti orelse @panic("glRecti was not bound."))(_x1, _y1, _x2, _y2);
}

pub fn rectiv(_v1: [*c]const GLint, _v2: [*c]const GLint) void {
    return (function_pointers.glRectiv orelse @panic("glRectiv was not bound."))(_v1, _v2);
}

pub fn rects(_x1: GLshort, _y1: GLshort, _x2: GLshort, _y2: GLshort) void {
    return (function_pointers.glRects orelse @panic("glRects was not bound."))(_x1, _y1, _x2, _y2);
}

pub fn rectsv(_v1: [*c]const GLshort, _v2: [*c]const GLshort) void {
    return (function_pointers.glRectsv orelse @panic("glRectsv was not bound."))(_v1, _v2);
}

pub fn texCoord1d(_s: GLdouble) void {
    return (function_pointers.glTexCoord1d orelse @panic("glTexCoord1d was not bound."))(_s);
}

pub fn texCoord1dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord1dv orelse @panic("glTexCoord1dv was not bound."))(_v);
}

pub fn texCoord1f(_s: GLfloat) void {
    return (function_pointers.glTexCoord1f orelse @panic("glTexCoord1f was not bound."))(_s);
}

pub fn texCoord1fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord1fv orelse @panic("glTexCoord1fv was not bound."))(_v);
}

pub fn texCoord1i(_s: GLint) void {
    return (function_pointers.glTexCoord1i orelse @panic("glTexCoord1i was not bound."))(_s);
}

pub fn texCoord1iv(_v: [*c]const GLint) void {
    return (function_pointers.glTexCoord1iv orelse @panic("glTexCoord1iv was not bound."))(_v);
}

pub fn texCoord1s(_s: GLshort) void {
    return (function_pointers.glTexCoord1s orelse @panic("glTexCoord1s was not bound."))(_s);
}

pub fn texCoord1sv(_v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord1sv orelse @panic("glTexCoord1sv was not bound."))(_v);
}

pub fn texCoord2d(_s: GLdouble, _t: GLdouble) void {
    return (function_pointers.glTexCoord2d orelse @panic("glTexCoord2d was not bound."))(_s, _t);
}

pub fn texCoord2dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord2dv orelse @panic("glTexCoord2dv was not bound."))(_v);
}

pub fn texCoord2f(_s: GLfloat, _t: GLfloat) void {
    return (function_pointers.glTexCoord2f orelse @panic("glTexCoord2f was not bound."))(_s, _t);
}

pub fn texCoord2fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord2fv orelse @panic("glTexCoord2fv was not bound."))(_v);
}

pub fn texCoord2i(_s: GLint, _t: GLint) void {
    return (function_pointers.glTexCoord2i orelse @panic("glTexCoord2i was not bound."))(_s, _t);
}

pub fn texCoord2iv(_v: [*c]const GLint) void {
    return (function_pointers.glTexCoord2iv orelse @panic("glTexCoord2iv was not bound."))(_v);
}

pub fn texCoord2s(_s: GLshort, _t: GLshort) void {
    return (function_pointers.glTexCoord2s orelse @panic("glTexCoord2s was not bound."))(_s, _t);
}

pub fn texCoord2sv(_v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord2sv orelse @panic("glTexCoord2sv was not bound."))(_v);
}

pub fn texCoord3d(_s: GLdouble, _t: GLdouble, _r: GLdouble) void {
    return (function_pointers.glTexCoord3d orelse @panic("glTexCoord3d was not bound."))(_s, _t, _r);
}

pub fn texCoord3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord3dv orelse @panic("glTexCoord3dv was not bound."))(_v);
}

pub fn texCoord3f(_s: GLfloat, _t: GLfloat, _r: GLfloat) void {
    return (function_pointers.glTexCoord3f orelse @panic("glTexCoord3f was not bound."))(_s, _t, _r);
}

pub fn texCoord3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord3fv orelse @panic("glTexCoord3fv was not bound."))(_v);
}

pub fn texCoord3i(_s: GLint, _t: GLint, _r: GLint) void {
    return (function_pointers.glTexCoord3i orelse @panic("glTexCoord3i was not bound."))(_s, _t, _r);
}

pub fn texCoord3iv(_v: [*c]const GLint) void {
    return (function_pointers.glTexCoord3iv orelse @panic("glTexCoord3iv was not bound."))(_v);
}

pub fn texCoord3s(_s: GLshort, _t: GLshort, _r: GLshort) void {
    return (function_pointers.glTexCoord3s orelse @panic("glTexCoord3s was not bound."))(_s, _t, _r);
}

pub fn texCoord3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord3sv orelse @panic("glTexCoord3sv was not bound."))(_v);
}

pub fn texCoord4d(_s: GLdouble, _t: GLdouble, _r: GLdouble, _q: GLdouble) void {
    return (function_pointers.glTexCoord4d orelse @panic("glTexCoord4d was not bound."))(_s, _t, _r, _q);
}

pub fn texCoord4dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord4dv orelse @panic("glTexCoord4dv was not bound."))(_v);
}

pub fn texCoord4f(_s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void {
    return (function_pointers.glTexCoord4f orelse @panic("glTexCoord4f was not bound."))(_s, _t, _r, _q);
}

pub fn texCoord4fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord4fv orelse @panic("glTexCoord4fv was not bound."))(_v);
}

pub fn texCoord4i(_s: GLint, _t: GLint, _r: GLint, _q: GLint) void {
    return (function_pointers.glTexCoord4i orelse @panic("glTexCoord4i was not bound."))(_s, _t, _r, _q);
}

pub fn texCoord4iv(_v: [*c]const GLint) void {
    return (function_pointers.glTexCoord4iv orelse @panic("glTexCoord4iv was not bound."))(_v);
}

pub fn texCoord4s(_s: GLshort, _t: GLshort, _r: GLshort, _q: GLshort) void {
    return (function_pointers.glTexCoord4s orelse @panic("glTexCoord4s was not bound."))(_s, _t, _r, _q);
}

pub fn texCoord4sv(_v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord4sv orelse @panic("glTexCoord4sv was not bound."))(_v);
}

pub fn vertex2d(_x: GLdouble, _y: GLdouble) void {
    return (function_pointers.glVertex2d orelse @panic("glVertex2d was not bound."))(_x, _y);
}

pub fn vertex2dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glVertex2dv orelse @panic("glVertex2dv was not bound."))(_v);
}

pub fn vertex2f(_x: GLfloat, _y: GLfloat) void {
    return (function_pointers.glVertex2f orelse @panic("glVertex2f was not bound."))(_x, _y);
}

pub fn vertex2fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glVertex2fv orelse @panic("glVertex2fv was not bound."))(_v);
}

pub fn vertex2i(_x: GLint, _y: GLint) void {
    return (function_pointers.glVertex2i orelse @panic("glVertex2i was not bound."))(_x, _y);
}

pub fn vertex2iv(_v: [*c]const GLint) void {
    return (function_pointers.glVertex2iv orelse @panic("glVertex2iv was not bound."))(_v);
}

pub fn vertex2s(_x: GLshort, _y: GLshort) void {
    return (function_pointers.glVertex2s orelse @panic("glVertex2s was not bound."))(_x, _y);
}

pub fn vertex2sv(_v: [*c]const GLshort) void {
    return (function_pointers.glVertex2sv orelse @panic("glVertex2sv was not bound."))(_v);
}

pub fn vertex3d(_x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glVertex3d orelse @panic("glVertex3d was not bound."))(_x, _y, _z);
}

pub fn vertex3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glVertex3dv orelse @panic("glVertex3dv was not bound."))(_v);
}

pub fn vertex3f(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glVertex3f orelse @panic("glVertex3f was not bound."))(_x, _y, _z);
}

pub fn vertex3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glVertex3fv orelse @panic("glVertex3fv was not bound."))(_v);
}

pub fn vertex3i(_x: GLint, _y: GLint, _z: GLint) void {
    return (function_pointers.glVertex3i orelse @panic("glVertex3i was not bound."))(_x, _y, _z);
}

pub fn vertex3iv(_v: [*c]const GLint) void {
    return (function_pointers.glVertex3iv orelse @panic("glVertex3iv was not bound."))(_v);
}

pub fn vertex3s(_x: GLshort, _y: GLshort, _z: GLshort) void {
    return (function_pointers.glVertex3s orelse @panic("glVertex3s was not bound."))(_x, _y, _z);
}

pub fn vertex3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glVertex3sv orelse @panic("glVertex3sv was not bound."))(_v);
}

pub fn vertex4d(_x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void {
    return (function_pointers.glVertex4d orelse @panic("glVertex4d was not bound."))(_x, _y, _z, _w);
}

pub fn vertex4dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glVertex4dv orelse @panic("glVertex4dv was not bound."))(_v);
}

pub fn vertex4f(_x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void {
    return (function_pointers.glVertex4f orelse @panic("glVertex4f was not bound."))(_x, _y, _z, _w);
}

pub fn vertex4fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glVertex4fv orelse @panic("glVertex4fv was not bound."))(_v);
}

pub fn vertex4i(_x: GLint, _y: GLint, _z: GLint, _w: GLint) void {
    return (function_pointers.glVertex4i orelse @panic("glVertex4i was not bound."))(_x, _y, _z, _w);
}

pub fn vertex4iv(_v: [*c]const GLint) void {
    return (function_pointers.glVertex4iv orelse @panic("glVertex4iv was not bound."))(_v);
}

pub fn vertex4s(_x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void {
    return (function_pointers.glVertex4s orelse @panic("glVertex4s was not bound."))(_x, _y, _z, _w);
}

pub fn vertex4sv(_v: [*c]const GLshort) void {
    return (function_pointers.glVertex4sv orelse @panic("glVertex4sv was not bound."))(_v);
}

pub fn clipPlane(_plane: GLenum, _equation: [*c]const GLdouble) void {
    return (function_pointers.glClipPlane orelse @panic("glClipPlane was not bound."))(_plane, _equation);
}

pub fn colorMaterial(_face: GLenum, _mode: GLenum) void {
    return (function_pointers.glColorMaterial orelse @panic("glColorMaterial was not bound."))(_face, _mode);
}

pub fn fogf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glFogf orelse @panic("glFogf was not bound."))(_pname, _param);
}

pub fn fogfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glFogfv orelse @panic("glFogfv was not bound."))(_pname, _params);
}

pub fn fogi(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glFogi orelse @panic("glFogi was not bound."))(_pname, _param);
}

pub fn fogiv(_pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glFogiv orelse @panic("glFogiv was not bound."))(_pname, _params);
}

pub fn lightf(_light: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glLightf orelse @panic("glLightf was not bound."))(_light, _pname, _param);
}

pub fn lightfv(_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glLightfv orelse @panic("glLightfv was not bound."))(_light, _pname, _params);
}

pub fn lighti(_light: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glLighti orelse @panic("glLighti was not bound."))(_light, _pname, _param);
}

pub fn lightiv(_light: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glLightiv orelse @panic("glLightiv was not bound."))(_light, _pname, _params);
}

pub fn lightModelf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glLightModelf orelse @panic("glLightModelf was not bound."))(_pname, _param);
}

pub fn lightModelfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glLightModelfv orelse @panic("glLightModelfv was not bound."))(_pname, _params);
}

pub fn lightModeli(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glLightModeli orelse @panic("glLightModeli was not bound."))(_pname, _param);
}

pub fn lightModeliv(_pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glLightModeliv orelse @panic("glLightModeliv was not bound."))(_pname, _params);
}

pub fn lineStipple(_factor: GLint, _pattern: GLushort) void {
    return (function_pointers.glLineStipple orelse @panic("glLineStipple was not bound."))(_factor, _pattern);
}

pub fn materialf(_face: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glMaterialf orelse @panic("glMaterialf was not bound."))(_face, _pname, _param);
}

pub fn materialfv(_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glMaterialfv orelse @panic("glMaterialfv was not bound."))(_face, _pname, _params);
}

pub fn materiali(_face: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glMateriali orelse @panic("glMateriali was not bound."))(_face, _pname, _param);
}

pub fn materialiv(_face: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glMaterialiv orelse @panic("glMaterialiv was not bound."))(_face, _pname, _params);
}

pub fn polygonStipple(_mask: ?[*:0]const GLubyte) void {
    return (function_pointers.glPolygonStipple orelse @panic("glPolygonStipple was not bound."))(_mask);
}

pub fn shadeModel(_mode: GLenum) void {
    return (function_pointers.glShadeModel orelse @panic("glShadeModel was not bound."))(_mode);
}

pub fn texEnvf(_target: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glTexEnvf orelse @panic("glTexEnvf was not bound."))(_target, _pname, _param);
}

pub fn texEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glTexEnvfv orelse @panic("glTexEnvfv was not bound."))(_target, _pname, _params);
}

pub fn texEnvi(_target: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glTexEnvi orelse @panic("glTexEnvi was not bound."))(_target, _pname, _param);
}

pub fn texEnviv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexEnviv orelse @panic("glTexEnviv was not bound."))(_target, _pname, _params);
}

pub fn texGend(_coord: GLenum, _pname: GLenum, _param: GLdouble) void {
    return (function_pointers.glTexGend orelse @panic("glTexGend was not bound."))(_coord, _pname, _param);
}

pub fn texGendv(_coord: GLenum, _pname: GLenum, _params: [*c]const GLdouble) void {
    return (function_pointers.glTexGendv orelse @panic("glTexGendv was not bound."))(_coord, _pname, _params);
}

pub fn texGenf(_coord: GLenum, _pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glTexGenf orelse @panic("glTexGenf was not bound."))(_coord, _pname, _param);
}

pub fn texGenfv(_coord: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glTexGenfv orelse @panic("glTexGenfv was not bound."))(_coord, _pname, _params);
}

pub fn texGeni(_coord: GLenum, _pname: GLenum, _param: GLint) void {
    return (function_pointers.glTexGeni orelse @panic("glTexGeni was not bound."))(_coord, _pname, _param);
}

pub fn texGeniv(_coord: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexGeniv orelse @panic("glTexGeniv was not bound."))(_coord, _pname, _params);
}

pub fn feedbackBuffer(_size: GLsizei, _type: GLenum, _buffer: [*c]GLfloat) void {
    return (function_pointers.glFeedbackBuffer orelse @panic("glFeedbackBuffer was not bound."))(_size, _type, _buffer);
}

pub fn selectBuffer(_size: GLsizei, _buffer: [*c]GLuint) void {
    return (function_pointers.glSelectBuffer orelse @panic("glSelectBuffer was not bound."))(_size, _buffer);
}

pub fn renderMode(_mode: GLenum) GLint {
    return (function_pointers.glRenderMode orelse @panic("glRenderMode was not bound."))(_mode);
}

pub fn initNames() void {
    return (function_pointers.glInitNames orelse @panic("glInitNames was not bound."))();
}

pub fn loadName(_name: GLuint) void {
    return (function_pointers.glLoadName orelse @panic("glLoadName was not bound."))(_name);
}

pub fn passThrough(_token: GLfloat) void {
    return (function_pointers.glPassThrough orelse @panic("glPassThrough was not bound."))(_token);
}

pub fn popName() void {
    return (function_pointers.glPopName orelse @panic("glPopName was not bound."))();
}

pub fn pushName(_name: GLuint) void {
    return (function_pointers.glPushName orelse @panic("glPushName was not bound."))(_name);
}

pub fn clearAccum(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glClearAccum orelse @panic("glClearAccum was not bound."))(_red, _green, _blue, _alpha);
}

pub fn clearIndex(_c: GLfloat) void {
    return (function_pointers.glClearIndex orelse @panic("glClearIndex was not bound."))(_c);
}

pub fn indexMask(_mask: GLuint) void {
    return (function_pointers.glIndexMask orelse @panic("glIndexMask was not bound."))(_mask);
}

pub fn accum(_op: GLenum, _value: GLfloat) void {
    return (function_pointers.glAccum orelse @panic("glAccum was not bound."))(_op, _value);
}

pub fn popAttrib() void {
    return (function_pointers.glPopAttrib orelse @panic("glPopAttrib was not bound."))();
}

pub fn pushAttrib(_mask: GLbitfield) void {
    return (function_pointers.glPushAttrib orelse @panic("glPushAttrib was not bound."))(_mask);
}

pub fn map1d(_target: GLenum, _u1: GLdouble, _u2: GLdouble, _stride: GLint, _order: GLint, _points: [*c]const GLdouble) void {
    return (function_pointers.glMap1d orelse @panic("glMap1d was not bound."))(_target, _u1, _u2, _stride, _order, _points);
}

pub fn map1f(_target: GLenum, _u1: GLfloat, _u2: GLfloat, _stride: GLint, _order: GLint, _points: [*c]const GLfloat) void {
    return (function_pointers.glMap1f orelse @panic("glMap1f was not bound."))(_target, _u1, _u2, _stride, _order, _points);
}

pub fn map2d(_target: GLenum, _u1: GLdouble, _u2: GLdouble, _ustride: GLint, _uorder: GLint, _v1: GLdouble, _v2: GLdouble, _vstride: GLint, _vorder: GLint, _points: [*c]const GLdouble) void {
    return (function_pointers.glMap2d orelse @panic("glMap2d was not bound."))(_target, _u1, _u2, _ustride, _uorder, _v1, _v2, _vstride, _vorder, _points);
}

pub fn map2f(_target: GLenum, _u1: GLfloat, _u2: GLfloat, _ustride: GLint, _uorder: GLint, _v1: GLfloat, _v2: GLfloat, _vstride: GLint, _vorder: GLint, _points: [*c]const GLfloat) void {
    return (function_pointers.glMap2f orelse @panic("glMap2f was not bound."))(_target, _u1, _u2, _ustride, _uorder, _v1, _v2, _vstride, _vorder, _points);
}

pub fn mapGrid1d(_un: GLint, _u1: GLdouble, _u2: GLdouble) void {
    return (function_pointers.glMapGrid1d orelse @panic("glMapGrid1d was not bound."))(_un, _u1, _u2);
}

pub fn mapGrid1f(_un: GLint, _u1: GLfloat, _u2: GLfloat) void {
    return (function_pointers.glMapGrid1f orelse @panic("glMapGrid1f was not bound."))(_un, _u1, _u2);
}

pub fn mapGrid2d(_un: GLint, _u1: GLdouble, _u2: GLdouble, _vn: GLint, _v1: GLdouble, _v2: GLdouble) void {
    return (function_pointers.glMapGrid2d orelse @panic("glMapGrid2d was not bound."))(_un, _u1, _u2, _vn, _v1, _v2);
}

pub fn mapGrid2f(_un: GLint, _u1: GLfloat, _u2: GLfloat, _vn: GLint, _v1: GLfloat, _v2: GLfloat) void {
    return (function_pointers.glMapGrid2f orelse @panic("glMapGrid2f was not bound."))(_un, _u1, _u2, _vn, _v1, _v2);
}

pub fn evalCoord1d(_u: GLdouble) void {
    return (function_pointers.glEvalCoord1d orelse @panic("glEvalCoord1d was not bound."))(_u);
}

pub fn evalCoord1dv(_u: [*c]const GLdouble) void {
    return (function_pointers.glEvalCoord1dv orelse @panic("glEvalCoord1dv was not bound."))(_u);
}

pub fn evalCoord1f(_u: GLfloat) void {
    return (function_pointers.glEvalCoord1f orelse @panic("glEvalCoord1f was not bound."))(_u);
}

pub fn evalCoord1fv(_u: [*c]const GLfloat) void {
    return (function_pointers.glEvalCoord1fv orelse @panic("glEvalCoord1fv was not bound."))(_u);
}

pub fn evalCoord2d(_u: GLdouble, _v: GLdouble) void {
    return (function_pointers.glEvalCoord2d orelse @panic("glEvalCoord2d was not bound."))(_u, _v);
}

pub fn evalCoord2dv(_u: [*c]const GLdouble) void {
    return (function_pointers.glEvalCoord2dv orelse @panic("glEvalCoord2dv was not bound."))(_u);
}

pub fn evalCoord2f(_u: GLfloat, _v: GLfloat) void {
    return (function_pointers.glEvalCoord2f orelse @panic("glEvalCoord2f was not bound."))(_u, _v);
}

pub fn evalCoord2fv(_u: [*c]const GLfloat) void {
    return (function_pointers.glEvalCoord2fv orelse @panic("glEvalCoord2fv was not bound."))(_u);
}

pub fn evalMesh1(_mode: GLenum, _i1: GLint, _i2: GLint) void {
    return (function_pointers.glEvalMesh1 orelse @panic("glEvalMesh1 was not bound."))(_mode, _i1, _i2);
}

pub fn evalPoint1(_i: GLint) void {
    return (function_pointers.glEvalPoint1 orelse @panic("glEvalPoint1 was not bound."))(_i);
}

pub fn evalMesh2(_mode: GLenum, _i1: GLint, _i2: GLint, _j1: GLint, _j2: GLint) void {
    return (function_pointers.glEvalMesh2 orelse @panic("glEvalMesh2 was not bound."))(_mode, _i1, _i2, _j1, _j2);
}

pub fn evalPoint2(_i: GLint, _j: GLint) void {
    return (function_pointers.glEvalPoint2 orelse @panic("glEvalPoint2 was not bound."))(_i, _j);
}

pub fn alphaFunc(_func: GLenum, _ref: GLfloat) void {
    return (function_pointers.glAlphaFunc orelse @panic("glAlphaFunc was not bound."))(_func, _ref);
}

pub fn pixelZoom(_xfactor: GLfloat, _yfactor: GLfloat) void {
    return (function_pointers.glPixelZoom orelse @panic("glPixelZoom was not bound."))(_xfactor, _yfactor);
}

pub fn pixelTransferf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glPixelTransferf orelse @panic("glPixelTransferf was not bound."))(_pname, _param);
}

pub fn pixelTransferi(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glPixelTransferi orelse @panic("glPixelTransferi was not bound."))(_pname, _param);
}

pub fn pixelMapfv(_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLfloat) void {
    return (function_pointers.glPixelMapfv orelse @panic("glPixelMapfv was not bound."))(_map, _mapsize, _values);
}

pub fn pixelMapuiv(_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLuint) void {
    return (function_pointers.glPixelMapuiv orelse @panic("glPixelMapuiv was not bound."))(_map, _mapsize, _values);
}

pub fn pixelMapusv(_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLushort) void {
    return (function_pointers.glPixelMapusv orelse @panic("glPixelMapusv was not bound."))(_map, _mapsize, _values);
}

pub fn copyPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _type: GLenum) void {
    return (function_pointers.glCopyPixels orelse @panic("glCopyPixels was not bound."))(_x, _y, _width, _height, _type);
}

pub fn drawPixels(_width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glDrawPixels orelse @panic("glDrawPixels was not bound."))(_width, _height, _format, _type, _pixels);
}

pub fn getClipPlane(_plane: GLenum, _equation: [*c]GLdouble) void {
    return (function_pointers.glGetClipPlane orelse @panic("glGetClipPlane was not bound."))(_plane, _equation);
}

pub fn getLightfv(_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetLightfv orelse @panic("glGetLightfv was not bound."))(_light, _pname, _params);
}

pub fn getLightiv(_light: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetLightiv orelse @panic("glGetLightiv was not bound."))(_light, _pname, _params);
}

pub fn getMapdv(_target: GLenum, _query: GLenum, _v: [*c]GLdouble) void {
    return (function_pointers.glGetMapdv orelse @panic("glGetMapdv was not bound."))(_target, _query, _v);
}

pub fn getMapfv(_target: GLenum, _query: GLenum, _v: [*c]GLfloat) void {
    return (function_pointers.glGetMapfv orelse @panic("glGetMapfv was not bound."))(_target, _query, _v);
}

pub fn getMapiv(_target: GLenum, _query: GLenum, _v: [*c]GLint) void {
    return (function_pointers.glGetMapiv orelse @panic("glGetMapiv was not bound."))(_target, _query, _v);
}

pub fn getMaterialfv(_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetMaterialfv orelse @panic("glGetMaterialfv was not bound."))(_face, _pname, _params);
}

pub fn getMaterialiv(_face: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetMaterialiv orelse @panic("glGetMaterialiv was not bound."))(_face, _pname, _params);
}

pub fn getPixelMapfv(_map: GLenum, _values: [*c]GLfloat) void {
    return (function_pointers.glGetPixelMapfv orelse @panic("glGetPixelMapfv was not bound."))(_map, _values);
}

pub fn getPixelMapuiv(_map: GLenum, _values: [*c]GLuint) void {
    return (function_pointers.glGetPixelMapuiv orelse @panic("glGetPixelMapuiv was not bound."))(_map, _values);
}

pub fn getPixelMapusv(_map: GLenum, _values: [*c]GLushort) void {
    return (function_pointers.glGetPixelMapusv orelse @panic("glGetPixelMapusv was not bound."))(_map, _values);
}

pub fn getPolygonStipple(_mask: [*c]GLubyte) void {
    return (function_pointers.glGetPolygonStipple orelse @panic("glGetPolygonStipple was not bound."))(_mask);
}

pub fn getTexEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexEnvfv orelse @panic("glGetTexEnvfv was not bound."))(_target, _pname, _params);
}

pub fn getTexEnviv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexEnviv orelse @panic("glGetTexEnviv was not bound."))(_target, _pname, _params);
}

pub fn getTexGendv(_coord: GLenum, _pname: GLenum, _params: [*c]GLdouble) void {
    return (function_pointers.glGetTexGendv orelse @panic("glGetTexGendv was not bound."))(_coord, _pname, _params);
}

pub fn getTexGenfv(_coord: GLenum, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetTexGenfv orelse @panic("glGetTexGenfv was not bound."))(_coord, _pname, _params);
}

pub fn getTexGeniv(_coord: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexGeniv orelse @panic("glGetTexGeniv was not bound."))(_coord, _pname, _params);
}

pub fn isList(_list: GLuint) GLboolean {
    return (function_pointers.glIsList orelse @panic("glIsList was not bound."))(_list);
}

pub fn frustum(_left: GLdouble, _right: GLdouble, _bottom: GLdouble, _top: GLdouble, _zNear: GLdouble, _zFar: GLdouble) void {
    return (function_pointers.glFrustum orelse @panic("glFrustum was not bound."))(_left, _right, _bottom, _top, _zNear, _zFar);
}

pub fn loadIdentity() void {
    return (function_pointers.glLoadIdentity orelse @panic("glLoadIdentity was not bound."))();
}

pub fn loadMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glLoadMatrixf orelse @panic("glLoadMatrixf was not bound."))(_m);
}

pub fn loadMatrixd(_m: [*c]const GLdouble) void {
    return (function_pointers.glLoadMatrixd orelse @panic("glLoadMatrixd was not bound."))(_m);
}

pub fn matrixMode(_mode: GLenum) void {
    return (function_pointers.glMatrixMode orelse @panic("glMatrixMode was not bound."))(_mode);
}

pub fn multMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glMultMatrixf orelse @panic("glMultMatrixf was not bound."))(_m);
}

pub fn multMatrixd(_m: [*c]const GLdouble) void {
    return (function_pointers.glMultMatrixd orelse @panic("glMultMatrixd was not bound."))(_m);
}

pub fn ortho(_left: GLdouble, _right: GLdouble, _bottom: GLdouble, _top: GLdouble, _zNear: GLdouble, _zFar: GLdouble) void {
    return (function_pointers.glOrtho orelse @panic("glOrtho was not bound."))(_left, _right, _bottom, _top, _zNear, _zFar);
}

pub fn popMatrix() void {
    return (function_pointers.glPopMatrix orelse @panic("glPopMatrix was not bound."))();
}

pub fn pushMatrix() void {
    return (function_pointers.glPushMatrix orelse @panic("glPushMatrix was not bound."))();
}

pub fn rotated(_angle: GLdouble, _x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glRotated orelse @panic("glRotated was not bound."))(_angle, _x, _y, _z);
}

pub fn rotatef(_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glRotatef orelse @panic("glRotatef was not bound."))(_angle, _x, _y, _z);
}

pub fn scaled(_x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glScaled orelse @panic("glScaled was not bound."))(_x, _y, _z);
}

pub fn scalef(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glScalef orelse @panic("glScalef was not bound."))(_x, _y, _z);
}

pub fn translated(_x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glTranslated orelse @panic("glTranslated was not bound."))(_x, _y, _z);
}

pub fn translatef(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glTranslatef orelse @panic("glTranslatef was not bound."))(_x, _y, _z);
}

pub fn drawArrays(_mode: GLenum, _first: GLint, _count: GLsizei) void {
    return (function_pointers.glDrawArrays orelse @panic("glDrawArrays was not bound."))(_mode, _first, _count);
}

pub fn drawElements(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(_mode, _count, _type, _indices);
}

pub fn getPointerv(_pname: GLenum, _params: ?*?*anyopaque) void {
    return (function_pointers.glGetPointerv orelse @panic("glGetPointerv was not bound."))(_pname, _params);
}

pub fn polygonOffset(_factor: GLfloat, _units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(_factor, _units);
}

pub fn copyTexImage1D(_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _border: GLint) void {
    return (function_pointers.glCopyTexImage1D orelse @panic("glCopyTexImage1D was not bound."))(_target, _level, _internalformat, _x, _y, _width, _border);
}

pub fn copyTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void {
    return (function_pointers.glCopyTexImage2D orelse @panic("glCopyTexImage2D was not bound."))(_target, _level, _internalformat, _x, _y, _width, _height, _border);
}

pub fn copyTexSubImage1D(_target: GLenum, _level: GLint, _xoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei) void {
    return (function_pointers.glCopyTexSubImage1D orelse @panic("glCopyTexSubImage1D was not bound."))(_target, _level, _xoffset, _x, _y, _width);
}

pub fn copyTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage2D orelse @panic("glCopyTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _x, _y, _width, _height);
}

pub fn texSubImage1D(_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexSubImage1D orelse @panic("glTexSubImage1D was not bound."))(_target, _level, _xoffset, _width, _format, _type, _pixels);
}

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels);
}

pub fn bindTexture(_target: GLenum, _texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(_target, _texture);
}

pub fn deleteTextures(_n: GLsizei, _textures: [*c]const GLuint) void {
    return (function_pointers.glDeleteTextures orelse @panic("glDeleteTextures was not bound."))(_n, _textures);
}

pub fn genTextures(_n: GLsizei, _textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(_n, _textures);
}

pub fn isTexture(_texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(_texture);
}

pub fn arrayElement(_i: GLint) void {
    return (function_pointers.glArrayElement orelse @panic("glArrayElement was not bound."))(_i);
}

pub fn colorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn disableClientState(_array: GLenum) void {
    return (function_pointers.glDisableClientState orelse @panic("glDisableClientState was not bound."))(_array);
}

pub fn edgeFlagPointer(_stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glEdgeFlagPointer orelse @panic("glEdgeFlagPointer was not bound."))(_stride, _pointer);
}

pub fn enableClientState(_array: GLenum) void {
    return (function_pointers.glEnableClientState orelse @panic("glEnableClientState was not bound."))(_array);
}

pub fn indexPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glIndexPointer orelse @panic("glIndexPointer was not bound."))(_type, _stride, _pointer);
}

pub fn interleavedArrays(_format: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glInterleavedArrays orelse @panic("glInterleavedArrays was not bound."))(_format, _stride, _pointer);
}

pub fn normalPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glNormalPointer orelse @panic("glNormalPointer was not bound."))(_type, _stride, _pointer);
}

pub fn texCoordPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glTexCoordPointer orelse @panic("glTexCoordPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn vertexPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glVertexPointer orelse @panic("glVertexPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn areTexturesResident(_n: GLsizei, _textures: [*c]const GLuint, _residences: [*c]GLboolean) GLboolean {
    return (function_pointers.glAreTexturesResident orelse @panic("glAreTexturesResident was not bound."))(_n, _textures, _residences);
}

pub fn prioritizeTextures(_n: GLsizei, _textures: [*c]const GLuint, _priorities: [*c]const GLfloat) void {
    return (function_pointers.glPrioritizeTextures orelse @panic("glPrioritizeTextures was not bound."))(_n, _textures, _priorities);
}

pub fn indexub(_c: GLubyte) void {
    return (function_pointers.glIndexub orelse @panic("glIndexub was not bound."))(_c);
}

pub fn indexubv(_c: ?[*:0]const GLubyte) void {
    return (function_pointers.glIndexubv orelse @panic("glIndexubv was not bound."))(_c);
}

pub fn popClientAttrib() void {
    return (function_pointers.glPopClientAttrib orelse @panic("glPopClientAttrib was not bound."))();
}

pub fn pushClientAttrib(_mask: GLbitfield) void {
    return (function_pointers.glPushClientAttrib orelse @panic("glPushClientAttrib was not bound."))(_mask);
}

pub fn drawRangeElements(_mode: GLenum, _start: GLuint, _end: GLuint, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void {
    return (function_pointers.glDrawRangeElements orelse @panic("glDrawRangeElements was not bound."))(_mode, _start, _end, _count, _type, _indices);
}

pub fn texImage3D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexImage3D orelse @panic("glTexImage3D was not bound."))(_target, _level, _internalformat, _width, _height, _depth, _border, _format, _type, _pixels);
}

pub fn texSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void {
    return (function_pointers.glTexSubImage3D orelse @panic("glTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _pixels);
}

pub fn copyTexSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage3D orelse @panic("glCopyTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _x, _y, _width, _height);
}

pub fn activeTexture(_texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(_texture);
}

pub fn sampleCoverage(_value: GLfloat, _invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(_value, _invert);
}

pub fn compressedTexImage3D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexImage3D orelse @panic("glCompressedTexImage3D was not bound."))(_target, _level, _internalformat, _width, _height, _depth, _border, _imageSize, _data);
}

pub fn compressedTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _imageSize, _data);
}

pub fn compressedTexImage1D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexImage1D orelse @panic("glCompressedTexImage1D was not bound."))(_target, _level, _internalformat, _width, _border, _imageSize, _data);
}

pub fn compressedTexSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexSubImage3D orelse @panic("glCompressedTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _imageSize, _data);
}

pub fn compressedTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data);
}

pub fn compressedTexSubImage1D(_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void {
    return (function_pointers.glCompressedTexSubImage1D orelse @panic("glCompressedTexSubImage1D was not bound."))(_target, _level, _xoffset, _width, _format, _imageSize, _data);
}

pub fn getCompressedTexImage(_target: GLenum, _level: GLint, _img: ?*anyopaque) void {
    return (function_pointers.glGetCompressedTexImage orelse @panic("glGetCompressedTexImage was not bound."))(_target, _level, _img);
}

pub fn clientActiveTexture(_texture: GLenum) void {
    return (function_pointers.glClientActiveTexture orelse @panic("glClientActiveTexture was not bound."))(_texture);
}

pub fn multiTexCoord1d(_target: GLenum, _s: GLdouble) void {
    return (function_pointers.glMultiTexCoord1d orelse @panic("glMultiTexCoord1d was not bound."))(_target, _s);
}

pub fn multiTexCoord1dv(_target: GLenum, _v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord1dv orelse @panic("glMultiTexCoord1dv was not bound."))(_target, _v);
}

pub fn multiTexCoord1f(_target: GLenum, _s: GLfloat) void {
    return (function_pointers.glMultiTexCoord1f orelse @panic("glMultiTexCoord1f was not bound."))(_target, _s);
}

pub fn multiTexCoord1fv(_target: GLenum, _v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord1fv orelse @panic("glMultiTexCoord1fv was not bound."))(_target, _v);
}

pub fn multiTexCoord1i(_target: GLenum, _s: GLint) void {
    return (function_pointers.glMultiTexCoord1i orelse @panic("glMultiTexCoord1i was not bound."))(_target, _s);
}

pub fn multiTexCoord1iv(_target: GLenum, _v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord1iv orelse @panic("glMultiTexCoord1iv was not bound."))(_target, _v);
}

pub fn multiTexCoord1s(_target: GLenum, _s: GLshort) void {
    return (function_pointers.glMultiTexCoord1s orelse @panic("glMultiTexCoord1s was not bound."))(_target, _s);
}

pub fn multiTexCoord1sv(_target: GLenum, _v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord1sv orelse @panic("glMultiTexCoord1sv was not bound."))(_target, _v);
}

pub fn multiTexCoord2d(_target: GLenum, _s: GLdouble, _t: GLdouble) void {
    return (function_pointers.glMultiTexCoord2d orelse @panic("glMultiTexCoord2d was not bound."))(_target, _s, _t);
}

pub fn multiTexCoord2dv(_target: GLenum, _v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord2dv orelse @panic("glMultiTexCoord2dv was not bound."))(_target, _v);
}

pub fn multiTexCoord2f(_target: GLenum, _s: GLfloat, _t: GLfloat) void {
    return (function_pointers.glMultiTexCoord2f orelse @panic("glMultiTexCoord2f was not bound."))(_target, _s, _t);
}

pub fn multiTexCoord2fv(_target: GLenum, _v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord2fv orelse @panic("glMultiTexCoord2fv was not bound."))(_target, _v);
}

pub fn multiTexCoord2i(_target: GLenum, _s: GLint, _t: GLint) void {
    return (function_pointers.glMultiTexCoord2i orelse @panic("glMultiTexCoord2i was not bound."))(_target, _s, _t);
}

pub fn multiTexCoord2iv(_target: GLenum, _v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord2iv orelse @panic("glMultiTexCoord2iv was not bound."))(_target, _v);
}

pub fn multiTexCoord2s(_target: GLenum, _s: GLshort, _t: GLshort) void {
    return (function_pointers.glMultiTexCoord2s orelse @panic("glMultiTexCoord2s was not bound."))(_target, _s, _t);
}

pub fn multiTexCoord2sv(_target: GLenum, _v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord2sv orelse @panic("glMultiTexCoord2sv was not bound."))(_target, _v);
}

pub fn multiTexCoord3d(_target: GLenum, _s: GLdouble, _t: GLdouble, _r: GLdouble) void {
    return (function_pointers.glMultiTexCoord3d orelse @panic("glMultiTexCoord3d was not bound."))(_target, _s, _t, _r);
}

pub fn multiTexCoord3dv(_target: GLenum, _v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord3dv orelse @panic("glMultiTexCoord3dv was not bound."))(_target, _v);
}

pub fn multiTexCoord3f(_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat) void {
    return (function_pointers.glMultiTexCoord3f orelse @panic("glMultiTexCoord3f was not bound."))(_target, _s, _t, _r);
}

pub fn multiTexCoord3fv(_target: GLenum, _v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord3fv orelse @panic("glMultiTexCoord3fv was not bound."))(_target, _v);
}

pub fn multiTexCoord3i(_target: GLenum, _s: GLint, _t: GLint, _r: GLint) void {
    return (function_pointers.glMultiTexCoord3i orelse @panic("glMultiTexCoord3i was not bound."))(_target, _s, _t, _r);
}

pub fn multiTexCoord3iv(_target: GLenum, _v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord3iv orelse @panic("glMultiTexCoord3iv was not bound."))(_target, _v);
}

pub fn multiTexCoord3s(_target: GLenum, _s: GLshort, _t: GLshort, _r: GLshort) void {
    return (function_pointers.glMultiTexCoord3s orelse @panic("glMultiTexCoord3s was not bound."))(_target, _s, _t, _r);
}

pub fn multiTexCoord3sv(_target: GLenum, _v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord3sv orelse @panic("glMultiTexCoord3sv was not bound."))(_target, _v);
}

pub fn multiTexCoord4d(_target: GLenum, _s: GLdouble, _t: GLdouble, _r: GLdouble, _q: GLdouble) void {
    return (function_pointers.glMultiTexCoord4d orelse @panic("glMultiTexCoord4d was not bound."))(_target, _s, _t, _r, _q);
}

pub fn multiTexCoord4dv(_target: GLenum, _v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord4dv orelse @panic("glMultiTexCoord4dv was not bound."))(_target, _v);
}

pub fn multiTexCoord4f(_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void {
    return (function_pointers.glMultiTexCoord4f orelse @panic("glMultiTexCoord4f was not bound."))(_target, _s, _t, _r, _q);
}

pub fn multiTexCoord4fv(_target: GLenum, _v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord4fv orelse @panic("glMultiTexCoord4fv was not bound."))(_target, _v);
}

pub fn multiTexCoord4i(_target: GLenum, _s: GLint, _t: GLint, _r: GLint, _q: GLint) void {
    return (function_pointers.glMultiTexCoord4i orelse @panic("glMultiTexCoord4i was not bound."))(_target, _s, _t, _r, _q);
}

pub fn multiTexCoord4iv(_target: GLenum, _v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord4iv orelse @panic("glMultiTexCoord4iv was not bound."))(_target, _v);
}

pub fn multiTexCoord4s(_target: GLenum, _s: GLshort, _t: GLshort, _r: GLshort, _q: GLshort) void {
    return (function_pointers.glMultiTexCoord4s orelse @panic("glMultiTexCoord4s was not bound."))(_target, _s, _t, _r, _q);
}

pub fn multiTexCoord4sv(_target: GLenum, _v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord4sv orelse @panic("glMultiTexCoord4sv was not bound."))(_target, _v);
}

pub fn loadTransposeMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glLoadTransposeMatrixf orelse @panic("glLoadTransposeMatrixf was not bound."))(_m);
}

pub fn loadTransposeMatrixd(_m: [*c]const GLdouble) void {
    return (function_pointers.glLoadTransposeMatrixd orelse @panic("glLoadTransposeMatrixd was not bound."))(_m);
}

pub fn multTransposeMatrixf(_m: [*c]const GLfloat) void {
    return (function_pointers.glMultTransposeMatrixf orelse @panic("glMultTransposeMatrixf was not bound."))(_m);
}

pub fn multTransposeMatrixd(_m: [*c]const GLdouble) void {
    return (function_pointers.glMultTransposeMatrixd orelse @panic("glMultTransposeMatrixd was not bound."))(_m);
}

pub fn blendFuncSeparate(_sfactorRGB: GLenum, _dfactorRGB: GLenum, _sfactorAlpha: GLenum, _dfactorAlpha: GLenum) void {
    return (function_pointers.glBlendFuncSeparate orelse @panic("glBlendFuncSeparate was not bound."))(_sfactorRGB, _dfactorRGB, _sfactorAlpha, _dfactorAlpha);
}

pub fn multiDrawArrays(_mode: GLenum, _first: [*c]const GLint, _count: [*c]const GLsizei, _drawcount: GLsizei) void {
    return (function_pointers.glMultiDrawArrays orelse @panic("glMultiDrawArrays was not bound."))(_mode, _first, _count, _drawcount);
}

pub fn multiDrawElements(_mode: GLenum, _count: [*c]const GLsizei, _type: GLenum, _indices: [*c]const ?*const anyopaque, _drawcount: GLsizei) void {
    return (function_pointers.glMultiDrawElements orelse @panic("glMultiDrawElements was not bound."))(_mode, _count, _type, _indices, _drawcount);
}

pub fn pointParameterf(_pname: GLenum, _param: GLfloat) void {
    return (function_pointers.glPointParameterf orelse @panic("glPointParameterf was not bound."))(_pname, _param);
}

pub fn pointParameterfv(_pname: GLenum, _params: [*c]const GLfloat) void {
    return (function_pointers.glPointParameterfv orelse @panic("glPointParameterfv was not bound."))(_pname, _params);
}

pub fn pointParameteri(_pname: GLenum, _param: GLint) void {
    return (function_pointers.glPointParameteri orelse @panic("glPointParameteri was not bound."))(_pname, _param);
}

pub fn pointParameteriv(_pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glPointParameteriv orelse @panic("glPointParameteriv was not bound."))(_pname, _params);
}

pub fn fogCoordf(_coord: GLfloat) void {
    return (function_pointers.glFogCoordf orelse @panic("glFogCoordf was not bound."))(_coord);
}

pub fn fogCoordfv(_coord: [*c]const GLfloat) void {
    return (function_pointers.glFogCoordfv orelse @panic("glFogCoordfv was not bound."))(_coord);
}

pub fn fogCoordd(_coord: GLdouble) void {
    return (function_pointers.glFogCoordd orelse @panic("glFogCoordd was not bound."))(_coord);
}

pub fn fogCoorddv(_coord: [*c]const GLdouble) void {
    return (function_pointers.glFogCoorddv orelse @panic("glFogCoorddv was not bound."))(_coord);
}

pub fn fogCoordPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glFogCoordPointer orelse @panic("glFogCoordPointer was not bound."))(_type, _stride, _pointer);
}

pub fn secondaryColor3b(_red: GLbyte, _green: GLbyte, _blue: GLbyte) void {
    return (function_pointers.glSecondaryColor3b orelse @panic("glSecondaryColor3b was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3bv(_v: [*c]const GLbyte) void {
    return (function_pointers.glSecondaryColor3bv orelse @panic("glSecondaryColor3bv was not bound."))(_v);
}

pub fn secondaryColor3d(_red: GLdouble, _green: GLdouble, _blue: GLdouble) void {
    return (function_pointers.glSecondaryColor3d orelse @panic("glSecondaryColor3d was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glSecondaryColor3dv orelse @panic("glSecondaryColor3dv was not bound."))(_v);
}

pub fn secondaryColor3f(_red: GLfloat, _green: GLfloat, _blue: GLfloat) void {
    return (function_pointers.glSecondaryColor3f orelse @panic("glSecondaryColor3f was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glSecondaryColor3fv orelse @panic("glSecondaryColor3fv was not bound."))(_v);
}

pub fn secondaryColor3i(_red: GLint, _green: GLint, _blue: GLint) void {
    return (function_pointers.glSecondaryColor3i orelse @panic("glSecondaryColor3i was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3iv(_v: [*c]const GLint) void {
    return (function_pointers.glSecondaryColor3iv orelse @panic("glSecondaryColor3iv was not bound."))(_v);
}

pub fn secondaryColor3s(_red: GLshort, _green: GLshort, _blue: GLshort) void {
    return (function_pointers.glSecondaryColor3s orelse @panic("glSecondaryColor3s was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glSecondaryColor3sv orelse @panic("glSecondaryColor3sv was not bound."))(_v);
}

pub fn secondaryColor3ub(_red: GLubyte, _green: GLubyte, _blue: GLubyte) void {
    return (function_pointers.glSecondaryColor3ub orelse @panic("glSecondaryColor3ub was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3ubv(_v: ?[*:0]const GLubyte) void {
    return (function_pointers.glSecondaryColor3ubv orelse @panic("glSecondaryColor3ubv was not bound."))(_v);
}

pub fn secondaryColor3ui(_red: GLuint, _green: GLuint, _blue: GLuint) void {
    return (function_pointers.glSecondaryColor3ui orelse @panic("glSecondaryColor3ui was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3uiv(_v: [*c]const GLuint) void {
    return (function_pointers.glSecondaryColor3uiv orelse @panic("glSecondaryColor3uiv was not bound."))(_v);
}

pub fn secondaryColor3us(_red: GLushort, _green: GLushort, _blue: GLushort) void {
    return (function_pointers.glSecondaryColor3us orelse @panic("glSecondaryColor3us was not bound."))(_red, _green, _blue);
}

pub fn secondaryColor3usv(_v: [*c]const GLushort) void {
    return (function_pointers.glSecondaryColor3usv orelse @panic("glSecondaryColor3usv was not bound."))(_v);
}

pub fn secondaryColorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glSecondaryColorPointer orelse @panic("glSecondaryColorPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn windowPos2d(_x: GLdouble, _y: GLdouble) void {
    return (function_pointers.glWindowPos2d orelse @panic("glWindowPos2d was not bound."))(_x, _y);
}

pub fn windowPos2dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glWindowPos2dv orelse @panic("glWindowPos2dv was not bound."))(_v);
}

pub fn windowPos2f(_x: GLfloat, _y: GLfloat) void {
    return (function_pointers.glWindowPos2f orelse @panic("glWindowPos2f was not bound."))(_x, _y);
}

pub fn windowPos2fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glWindowPos2fv orelse @panic("glWindowPos2fv was not bound."))(_v);
}

pub fn windowPos2i(_x: GLint, _y: GLint) void {
    return (function_pointers.glWindowPos2i orelse @panic("glWindowPos2i was not bound."))(_x, _y);
}

pub fn windowPos2iv(_v: [*c]const GLint) void {
    return (function_pointers.glWindowPos2iv orelse @panic("glWindowPos2iv was not bound."))(_v);
}

pub fn windowPos2s(_x: GLshort, _y: GLshort) void {
    return (function_pointers.glWindowPos2s orelse @panic("glWindowPos2s was not bound."))(_x, _y);
}

pub fn windowPos2sv(_v: [*c]const GLshort) void {
    return (function_pointers.glWindowPos2sv orelse @panic("glWindowPos2sv was not bound."))(_v);
}

pub fn windowPos3d(_x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glWindowPos3d orelse @panic("glWindowPos3d was not bound."))(_x, _y, _z);
}

pub fn windowPos3dv(_v: [*c]const GLdouble) void {
    return (function_pointers.glWindowPos3dv orelse @panic("glWindowPos3dv was not bound."))(_v);
}

pub fn windowPos3f(_x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glWindowPos3f orelse @panic("glWindowPos3f was not bound."))(_x, _y, _z);
}

pub fn windowPos3fv(_v: [*c]const GLfloat) void {
    return (function_pointers.glWindowPos3fv orelse @panic("glWindowPos3fv was not bound."))(_v);
}

pub fn windowPos3i(_x: GLint, _y: GLint, _z: GLint) void {
    return (function_pointers.glWindowPos3i orelse @panic("glWindowPos3i was not bound."))(_x, _y, _z);
}

pub fn windowPos3iv(_v: [*c]const GLint) void {
    return (function_pointers.glWindowPos3iv orelse @panic("glWindowPos3iv was not bound."))(_v);
}

pub fn windowPos3s(_x: GLshort, _y: GLshort, _z: GLshort) void {
    return (function_pointers.glWindowPos3s orelse @panic("glWindowPos3s was not bound."))(_x, _y, _z);
}

pub fn windowPos3sv(_v: [*c]const GLshort) void {
    return (function_pointers.glWindowPos3sv orelse @panic("glWindowPos3sv was not bound."))(_v);
}

pub fn blendColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void {
    return (function_pointers.glBlendColor orelse @panic("glBlendColor was not bound."))(_red, _green, _blue, _alpha);
}

pub fn blendEquation(_mode: GLenum) void {
    return (function_pointers.glBlendEquation orelse @panic("glBlendEquation was not bound."))(_mode);
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

pub fn getQueryObjectiv(_id: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetQueryObjectiv orelse @panic("glGetQueryObjectiv was not bound."))(_id, _pname, _params);
}

pub fn getQueryObjectuiv(_id: GLuint, _pname: GLenum, _params: [*c]GLuint) void {
    return (function_pointers.glGetQueryObjectuiv orelse @panic("glGetQueryObjectuiv was not bound."))(_id, _pname, _params);
}

pub fn bindBuffer(_target: GLenum, _buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(_target, _buffer);
}

pub fn deleteBuffers(_n: GLsizei, _buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(_n, _buffers);
}

pub fn genBuffers(_n: GLsizei, _buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(_n, _buffers);
}

pub fn isBuffer(_buffer: GLuint) GLboolean {
    return (function_pointers.glIsBuffer orelse @panic("glIsBuffer was not bound."))(_buffer);
}

pub fn bufferData(_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(_target, _size, _data, _usage);
}

pub fn bufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(_target, _offset, _size, _data);
}

pub fn getBufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*anyopaque) void {
    return (function_pointers.glGetBufferSubData orelse @panic("glGetBufferSubData was not bound."))(_target, _offset, _size, _data);
}

pub fn mapBuffer(_target: GLenum, _access: GLenum) ?*anyopaque {
    return (function_pointers.glMapBuffer orelse @panic("glMapBuffer was not bound."))(_target, _access);
}

pub fn unmapBuffer(_target: GLenum) GLboolean {
    return (function_pointers.glUnmapBuffer orelse @panic("glUnmapBuffer was not bound."))(_target);
}

pub fn getBufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(_target, _pname, _params);
}

pub fn getBufferPointerv(_target: GLenum, _pname: GLenum, _params: ?*?*anyopaque) void {
    return (function_pointers.glGetBufferPointerv orelse @panic("glGetBufferPointerv was not bound."))(_target, _pname, _params);
}

pub fn blendEquationSeparate(_modeRGB: GLenum, _modeAlpha: GLenum) void {
    return (function_pointers.glBlendEquationSeparate orelse @panic("glBlendEquationSeparate was not bound."))(_modeRGB, _modeAlpha);
}

pub fn drawBuffers(_n: GLsizei, _bufs: [*c]const GLenum) void {
    return (function_pointers.glDrawBuffers orelse @panic("glDrawBuffers was not bound."))(_n, _bufs);
}

pub fn stencilOpSeparate(_face: GLenum, _sfail: GLenum, _dpfail: GLenum, _dppass: GLenum) void {
    return (function_pointers.glStencilOpSeparate orelse @panic("glStencilOpSeparate was not bound."))(_face, _sfail, _dpfail, _dppass);
}

pub fn stencilFuncSeparate(_face: GLenum, _func: GLenum, _ref: GLint, _mask: GLuint) void {
    return (function_pointers.glStencilFuncSeparate orelse @panic("glStencilFuncSeparate was not bound."))(_face, _func, _ref, _mask);
}

pub fn stencilMaskSeparate(_face: GLenum, _mask: GLuint) void {
    return (function_pointers.glStencilMaskSeparate orelse @panic("glStencilMaskSeparate was not bound."))(_face, _mask);
}

pub fn attachShader(_program: GLuint, _shader: GLuint) void {
    return (function_pointers.glAttachShader orelse @panic("glAttachShader was not bound."))(_program, _shader);
}

pub fn bindAttribLocation(_program: GLuint, _index: GLuint, _name: [*c]const GLchar) void {
    return (function_pointers.glBindAttribLocation orelse @panic("glBindAttribLocation was not bound."))(_program, _index, _name);
}

pub fn compileShader(_shader: GLuint) void {
    return (function_pointers.glCompileShader orelse @panic("glCompileShader was not bound."))(_shader);
}

pub fn createProgram() GLuint {
    return (function_pointers.glCreateProgram orelse @panic("glCreateProgram was not bound."))();
}

pub fn createShader(_type: GLenum) GLuint {
    return (function_pointers.glCreateShader orelse @panic("glCreateShader was not bound."))(_type);
}

pub fn deleteProgram(_program: GLuint) void {
    return (function_pointers.glDeleteProgram orelse @panic("glDeleteProgram was not bound."))(_program);
}

pub fn deleteShader(_shader: GLuint) void {
    return (function_pointers.glDeleteShader orelse @panic("glDeleteShader was not bound."))(_shader);
}

pub fn detachShader(_program: GLuint, _shader: GLuint) void {
    return (function_pointers.glDetachShader orelse @panic("glDetachShader was not bound."))(_program, _shader);
}

pub fn disableVertexAttribArray(_index: GLuint) void {
    return (function_pointers.glDisableVertexAttribArray orelse @panic("glDisableVertexAttribArray was not bound."))(_index);
}

pub fn enableVertexAttribArray(_index: GLuint) void {
    return (function_pointers.glEnableVertexAttribArray orelse @panic("glEnableVertexAttribArray was not bound."))(_index);
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

pub fn getProgramiv(_program: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetProgramiv orelse @panic("glGetProgramiv was not bound."))(_program, _pname, _params);
}

pub fn getProgramInfoLog(_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void {
    return (function_pointers.glGetProgramInfoLog orelse @panic("glGetProgramInfoLog was not bound."))(_program, _bufSize, _length, _infoLog);
}

pub fn getShaderiv(_shader: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetShaderiv orelse @panic("glGetShaderiv was not bound."))(_shader, _pname, _params);
}

pub fn getShaderInfoLog(_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void {
    return (function_pointers.glGetShaderInfoLog orelse @panic("glGetShaderInfoLog was not bound."))(_shader, _bufSize, _length, _infoLog);
}

pub fn getShaderSource(_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _source: [*c]GLchar) void {
    return (function_pointers.glGetShaderSource orelse @panic("glGetShaderSource was not bound."))(_shader, _bufSize, _length, _source);
}

pub fn getUniformLocation(_program: GLuint, _name: [*c]const GLchar) GLint {
    return (function_pointers.glGetUniformLocation orelse @panic("glGetUniformLocation was not bound."))(_program, _name);
}

pub fn getUniformfv(_program: GLuint, _location: GLint, _params: [*c]GLfloat) void {
    return (function_pointers.glGetUniformfv orelse @panic("glGetUniformfv was not bound."))(_program, _location, _params);
}

pub fn getUniformiv(_program: GLuint, _location: GLint, _params: [*c]GLint) void {
    return (function_pointers.glGetUniformiv orelse @panic("glGetUniformiv was not bound."))(_program, _location, _params);
}

pub fn getVertexAttribdv(_index: GLuint, _pname: GLenum, _params: [*c]GLdouble) void {
    return (function_pointers.glGetVertexAttribdv orelse @panic("glGetVertexAttribdv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribfv(_index: GLuint, _pname: GLenum, _params: [*c]GLfloat) void {
    return (function_pointers.glGetVertexAttribfv orelse @panic("glGetVertexAttribfv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribiv(_index: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribiv orelse @panic("glGetVertexAttribiv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribPointerv(_index: GLuint, _pname: GLenum, _pointer: ?*?*anyopaque) void {
    return (function_pointers.glGetVertexAttribPointerv orelse @panic("glGetVertexAttribPointerv was not bound."))(_index, _pname, _pointer);
}

pub fn isProgram(_program: GLuint) GLboolean {
    return (function_pointers.glIsProgram orelse @panic("glIsProgram was not bound."))(_program);
}

pub fn isShader(_shader: GLuint) GLboolean {
    return (function_pointers.glIsShader orelse @panic("glIsShader was not bound."))(_shader);
}

pub fn linkProgram(_program: GLuint) void {
    return (function_pointers.glLinkProgram orelse @panic("glLinkProgram was not bound."))(_program);
}

pub fn shaderSource(_shader: GLuint, _count: GLsizei, _string: [*c]const [*c]const GLchar, _length: [*c]const GLint) void {
    return (function_pointers.glShaderSource orelse @panic("glShaderSource was not bound."))(_shader, _count, _string, _length);
}

pub fn useProgram(_program: GLuint) void {
    return (function_pointers.glUseProgram orelse @panic("glUseProgram was not bound."))(_program);
}

pub fn uniform1f(_location: GLint, _v0: GLfloat) void {
    return (function_pointers.glUniform1f orelse @panic("glUniform1f was not bound."))(_location, _v0);
}

pub fn uniform2f(_location: GLint, _v0: GLfloat, _v1: GLfloat) void {
    return (function_pointers.glUniform2f orelse @panic("glUniform2f was not bound."))(_location, _v0, _v1);
}

pub fn uniform3f(_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat) void {
    return (function_pointers.glUniform3f orelse @panic("glUniform3f was not bound."))(_location, _v0, _v1, _v2);
}

pub fn uniform4f(_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat, _v3: GLfloat) void {
    return (function_pointers.glUniform4f orelse @panic("glUniform4f was not bound."))(_location, _v0, _v1, _v2, _v3);
}

pub fn uniform1i(_location: GLint, _v0: GLint) void {
    return (function_pointers.glUniform1i orelse @panic("glUniform1i was not bound."))(_location, _v0);
}

pub fn uniform2i(_location: GLint, _v0: GLint, _v1: GLint) void {
    return (function_pointers.glUniform2i orelse @panic("glUniform2i was not bound."))(_location, _v0, _v1);
}

pub fn uniform3i(_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint) void {
    return (function_pointers.glUniform3i orelse @panic("glUniform3i was not bound."))(_location, _v0, _v1, _v2);
}

pub fn uniform4i(_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint, _v3: GLint) void {
    return (function_pointers.glUniform4i orelse @panic("glUniform4i was not bound."))(_location, _v0, _v1, _v2, _v3);
}

pub fn uniform1fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform1fv orelse @panic("glUniform1fv was not bound."))(_location, _count, _value);
}

pub fn uniform2fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform2fv orelse @panic("glUniform2fv was not bound."))(_location, _count, _value);
}

pub fn uniform3fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform3fv orelse @panic("glUniform3fv was not bound."))(_location, _count, _value);
}

pub fn uniform4fv(_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void {
    return (function_pointers.glUniform4fv orelse @panic("glUniform4fv was not bound."))(_location, _count, _value);
}

pub fn uniform1iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform1iv orelse @panic("glUniform1iv was not bound."))(_location, _count, _value);
}

pub fn uniform2iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform2iv orelse @panic("glUniform2iv was not bound."))(_location, _count, _value);
}

pub fn uniform3iv(_location: GLint, _count: GLsizei, _value: [*c]const GLint) void {
    return (function_pointers.glUniform3iv orelse @panic("glUniform3iv was not bound."))(_location, _count, _value);
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

pub fn validateProgram(_program: GLuint) void {
    return (function_pointers.glValidateProgram orelse @panic("glValidateProgram was not bound."))(_program);
}

pub fn vertexAttrib1d(_index: GLuint, _x: GLdouble) void {
    return (function_pointers.glVertexAttrib1d orelse @panic("glVertexAttrib1d was not bound."))(_index, _x);
}

pub fn vertexAttrib1dv(_index: GLuint, _v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib1dv orelse @panic("glVertexAttrib1dv was not bound."))(_index, _v);
}

pub fn vertexAttrib1f(_index: GLuint, _x: GLfloat) void {
    return (function_pointers.glVertexAttrib1f orelse @panic("glVertexAttrib1f was not bound."))(_index, _x);
}

pub fn vertexAttrib1fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib1fv orelse @panic("glVertexAttrib1fv was not bound."))(_index, _v);
}

pub fn vertexAttrib1s(_index: GLuint, _x: GLshort) void {
    return (function_pointers.glVertexAttrib1s orelse @panic("glVertexAttrib1s was not bound."))(_index, _x);
}

pub fn vertexAttrib1sv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib1sv orelse @panic("glVertexAttrib1sv was not bound."))(_index, _v);
}

pub fn vertexAttrib2d(_index: GLuint, _x: GLdouble, _y: GLdouble) void {
    return (function_pointers.glVertexAttrib2d orelse @panic("glVertexAttrib2d was not bound."))(_index, _x, _y);
}

pub fn vertexAttrib2dv(_index: GLuint, _v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib2dv orelse @panic("glVertexAttrib2dv was not bound."))(_index, _v);
}

pub fn vertexAttrib2f(_index: GLuint, _x: GLfloat, _y: GLfloat) void {
    return (function_pointers.glVertexAttrib2f orelse @panic("glVertexAttrib2f was not bound."))(_index, _x, _y);
}

pub fn vertexAttrib2fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib2fv orelse @panic("glVertexAttrib2fv was not bound."))(_index, _v);
}

pub fn vertexAttrib2s(_index: GLuint, _x: GLshort, _y: GLshort) void {
    return (function_pointers.glVertexAttrib2s orelse @panic("glVertexAttrib2s was not bound."))(_index, _x, _y);
}

pub fn vertexAttrib2sv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib2sv orelse @panic("glVertexAttrib2sv was not bound."))(_index, _v);
}

pub fn vertexAttrib3d(_index: GLuint, _x: GLdouble, _y: GLdouble, _z: GLdouble) void {
    return (function_pointers.glVertexAttrib3d orelse @panic("glVertexAttrib3d was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttrib3dv(_index: GLuint, _v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib3dv orelse @panic("glVertexAttrib3dv was not bound."))(_index, _v);
}

pub fn vertexAttrib3f(_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat) void {
    return (function_pointers.glVertexAttrib3f orelse @panic("glVertexAttrib3f was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttrib3fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib3fv orelse @panic("glVertexAttrib3fv was not bound."))(_index, _v);
}

pub fn vertexAttrib3s(_index: GLuint, _x: GLshort, _y: GLshort, _z: GLshort) void {
    return (function_pointers.glVertexAttrib3s orelse @panic("glVertexAttrib3s was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttrib3sv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib3sv orelse @panic("glVertexAttrib3sv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Nbv(_index: GLuint, _v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttrib4Nbv orelse @panic("glVertexAttrib4Nbv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Niv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttrib4Niv orelse @panic("glVertexAttrib4Niv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Nsv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib4Nsv orelse @panic("glVertexAttrib4Nsv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Nub(_index: GLuint, _x: GLubyte, _y: GLubyte, _z: GLubyte, _w: GLubyte) void {
    return (function_pointers.glVertexAttrib4Nub orelse @panic("glVertexAttrib4Nub was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttrib4Nubv(_index: GLuint, _v: ?[*:0]const GLubyte) void {
    return (function_pointers.glVertexAttrib4Nubv orelse @panic("glVertexAttrib4Nubv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Nuiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttrib4Nuiv orelse @panic("glVertexAttrib4Nuiv was not bound."))(_index, _v);
}

pub fn vertexAttrib4Nusv(_index: GLuint, _v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttrib4Nusv orelse @panic("glVertexAttrib4Nusv was not bound."))(_index, _v);
}

pub fn vertexAttrib4bv(_index: GLuint, _v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttrib4bv orelse @panic("glVertexAttrib4bv was not bound."))(_index, _v);
}

pub fn vertexAttrib4d(_index: GLuint, _x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void {
    return (function_pointers.glVertexAttrib4d orelse @panic("glVertexAttrib4d was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttrib4dv(_index: GLuint, _v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib4dv orelse @panic("glVertexAttrib4dv was not bound."))(_index, _v);
}

pub fn vertexAttrib4f(_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void {
    return (function_pointers.glVertexAttrib4f orelse @panic("glVertexAttrib4f was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttrib4fv(_index: GLuint, _v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib4fv orelse @panic("glVertexAttrib4fv was not bound."))(_index, _v);
}

pub fn vertexAttrib4iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttrib4iv orelse @panic("glVertexAttrib4iv was not bound."))(_index, _v);
}

pub fn vertexAttrib4s(_index: GLuint, _x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void {
    return (function_pointers.glVertexAttrib4s orelse @panic("glVertexAttrib4s was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttrib4sv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib4sv orelse @panic("glVertexAttrib4sv was not bound."))(_index, _v);
}

pub fn vertexAttrib4ubv(_index: GLuint, _v: ?[*:0]const GLubyte) void {
    return (function_pointers.glVertexAttrib4ubv orelse @panic("glVertexAttrib4ubv was not bound."))(_index, _v);
}

pub fn vertexAttrib4uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttrib4uiv orelse @panic("glVertexAttrib4uiv was not bound."))(_index, _v);
}

pub fn vertexAttrib4usv(_index: GLuint, _v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttrib4usv orelse @panic("glVertexAttrib4usv was not bound."))(_index, _v);
}

pub fn vertexAttribPointer(_index: GLuint, _size: GLint, _type: GLenum, _normalized: GLboolean, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glVertexAttribPointer orelse @panic("glVertexAttribPointer was not bound."))(_index, _size, _type, _normalized, _stride, _pointer);
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

pub fn colorMaski(_index: GLuint, _r: GLboolean, _g: GLboolean, _b: GLboolean, _a: GLboolean) void {
    return (function_pointers.glColorMaski orelse @panic("glColorMaski was not bound."))(_index, _r, _g, _b, _a);
}

pub fn getBooleani_v(_target: GLenum, _index: GLuint, _data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleani_v orelse @panic("glGetBooleani_v was not bound."))(_target, _index, _data);
}

pub fn getIntegeri_v(_target: GLenum, _index: GLuint, _data: [*c]GLint) void {
    return (function_pointers.glGetIntegeri_v orelse @panic("glGetIntegeri_v was not bound."))(_target, _index, _data);
}

pub fn enablei(_target: GLenum, _index: GLuint) void {
    return (function_pointers.glEnablei orelse @panic("glEnablei was not bound."))(_target, _index);
}

pub fn disablei(_target: GLenum, _index: GLuint) void {
    return (function_pointers.glDisablei orelse @panic("glDisablei was not bound."))(_target, _index);
}

pub fn isEnabledi(_target: GLenum, _index: GLuint) GLboolean {
    return (function_pointers.glIsEnabledi orelse @panic("glIsEnabledi was not bound."))(_target, _index);
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

pub fn clampColor(_target: GLenum, _clamp: GLenum) void {
    return (function_pointers.glClampColor orelse @panic("glClampColor was not bound."))(_target, _clamp);
}

pub fn beginConditionalRender(_id: GLuint, _mode: GLenum) void {
    return (function_pointers.glBeginConditionalRender orelse @panic("glBeginConditionalRender was not bound."))(_id, _mode);
}

pub fn endConditionalRender() void {
    return (function_pointers.glEndConditionalRender orelse @panic("glEndConditionalRender was not bound."))();
}

pub fn vertexAttribIPointer(_index: GLuint, _size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void {
    return (function_pointers.glVertexAttribIPointer orelse @panic("glVertexAttribIPointer was not bound."))(_index, _size, _type, _stride, _pointer);
}

pub fn getVertexAttribIiv(_index: GLuint, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribIiv orelse @panic("glGetVertexAttribIiv was not bound."))(_index, _pname, _params);
}

pub fn getVertexAttribIuiv(_index: GLuint, _pname: GLenum, _params: [*c]GLuint) void {
    return (function_pointers.glGetVertexAttribIuiv orelse @panic("glGetVertexAttribIuiv was not bound."))(_index, _pname, _params);
}

pub fn vertexAttribI1i(_index: GLuint, _x: GLint) void {
    return (function_pointers.glVertexAttribI1i orelse @panic("glVertexAttribI1i was not bound."))(_index, _x);
}

pub fn vertexAttribI2i(_index: GLuint, _x: GLint, _y: GLint) void {
    return (function_pointers.glVertexAttribI2i orelse @panic("glVertexAttribI2i was not bound."))(_index, _x, _y);
}

pub fn vertexAttribI3i(_index: GLuint, _x: GLint, _y: GLint, _z: GLint) void {
    return (function_pointers.glVertexAttribI3i orelse @panic("glVertexAttribI3i was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttribI4i(_index: GLuint, _x: GLint, _y: GLint, _z: GLint, _w: GLint) void {
    return (function_pointers.glVertexAttribI4i orelse @panic("glVertexAttribI4i was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttribI1ui(_index: GLuint, _x: GLuint) void {
    return (function_pointers.glVertexAttribI1ui orelse @panic("glVertexAttribI1ui was not bound."))(_index, _x);
}

pub fn vertexAttribI2ui(_index: GLuint, _x: GLuint, _y: GLuint) void {
    return (function_pointers.glVertexAttribI2ui orelse @panic("glVertexAttribI2ui was not bound."))(_index, _x, _y);
}

pub fn vertexAttribI3ui(_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint) void {
    return (function_pointers.glVertexAttribI3ui orelse @panic("glVertexAttribI3ui was not bound."))(_index, _x, _y, _z);
}

pub fn vertexAttribI4ui(_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint, _w: GLuint) void {
    return (function_pointers.glVertexAttribI4ui orelse @panic("glVertexAttribI4ui was not bound."))(_index, _x, _y, _z, _w);
}

pub fn vertexAttribI1iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI1iv orelse @panic("glVertexAttribI1iv was not bound."))(_index, _v);
}

pub fn vertexAttribI2iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI2iv orelse @panic("glVertexAttribI2iv was not bound."))(_index, _v);
}

pub fn vertexAttribI3iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI3iv orelse @panic("glVertexAttribI3iv was not bound."))(_index, _v);
}

pub fn vertexAttribI4iv(_index: GLuint, _v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI4iv orelse @panic("glVertexAttribI4iv was not bound."))(_index, _v);
}

pub fn vertexAttribI1uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI1uiv orelse @panic("glVertexAttribI1uiv was not bound."))(_index, _v);
}

pub fn vertexAttribI2uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI2uiv orelse @panic("glVertexAttribI2uiv was not bound."))(_index, _v);
}

pub fn vertexAttribI3uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI3uiv orelse @panic("glVertexAttribI3uiv was not bound."))(_index, _v);
}

pub fn vertexAttribI4uiv(_index: GLuint, _v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI4uiv orelse @panic("glVertexAttribI4uiv was not bound."))(_index, _v);
}

pub fn vertexAttribI4bv(_index: GLuint, _v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttribI4bv orelse @panic("glVertexAttribI4bv was not bound."))(_index, _v);
}

pub fn vertexAttribI4sv(_index: GLuint, _v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttribI4sv orelse @panic("glVertexAttribI4sv was not bound."))(_index, _v);
}

pub fn vertexAttribI4ubv(_index: GLuint, _v: ?[*:0]const GLubyte) void {
    return (function_pointers.glVertexAttribI4ubv orelse @panic("glVertexAttribI4ubv was not bound."))(_index, _v);
}

pub fn vertexAttribI4usv(_index: GLuint, _v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttribI4usv orelse @panic("glVertexAttribI4usv was not bound."))(_index, _v);
}

pub fn getUniformuiv(_program: GLuint, _location: GLint, _params: [*c]GLuint) void {
    return (function_pointers.glGetUniformuiv orelse @panic("glGetUniformuiv was not bound."))(_program, _location, _params);
}

pub fn bindFragDataLocation(_program: GLuint, _color: GLuint, _name: [*c]const GLchar) void {
    return (function_pointers.glBindFragDataLocation orelse @panic("glBindFragDataLocation was not bound."))(_program, _color, _name);
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

pub fn texParameterIiv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void {
    return (function_pointers.glTexParameterIiv orelse @panic("glTexParameterIiv was not bound."))(_target, _pname, _params);
}

pub fn texParameterIuiv(_target: GLenum, _pname: GLenum, _params: [*c]const GLuint) void {
    return (function_pointers.glTexParameterIuiv orelse @panic("glTexParameterIuiv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameterIiv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetTexParameterIiv orelse @panic("glGetTexParameterIiv was not bound."))(_target, _pname, _params);
}

pub fn getTexParameterIuiv(_target: GLenum, _pname: GLenum, _params: [*c]GLuint) void {
    return (function_pointers.glGetTexParameterIuiv orelse @panic("glGetTexParameterIuiv was not bound."))(_target, _pname, _params);
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

pub fn isRenderbuffer(_renderbuffer: GLuint) GLboolean {
    return (function_pointers.glIsRenderbuffer orelse @panic("glIsRenderbuffer was not bound."))(_renderbuffer);
}

pub fn bindRenderbuffer(_target: GLenum, _renderbuffer: GLuint) void {
    return (function_pointers.glBindRenderbuffer orelse @panic("glBindRenderbuffer was not bound."))(_target, _renderbuffer);
}

pub fn deleteRenderbuffers(_n: GLsizei, _renderbuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteRenderbuffers orelse @panic("glDeleteRenderbuffers was not bound."))(_n, _renderbuffers);
}

pub fn genRenderbuffers(_n: GLsizei, _renderbuffers: [*c]GLuint) void {
    return (function_pointers.glGenRenderbuffers orelse @panic("glGenRenderbuffers was not bound."))(_n, _renderbuffers);
}

pub fn renderbufferStorage(_target: GLenum, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void {
    return (function_pointers.glRenderbufferStorage orelse @panic("glRenderbufferStorage was not bound."))(_target, _internalformat, _width, _height);
}

pub fn getRenderbufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetRenderbufferParameteriv orelse @panic("glGetRenderbufferParameteriv was not bound."))(_target, _pname, _params);
}

pub fn isFramebuffer(_framebuffer: GLuint) GLboolean {
    return (function_pointers.glIsFramebuffer orelse @panic("glIsFramebuffer was not bound."))(_framebuffer);
}

pub fn bindFramebuffer(_target: GLenum, _framebuffer: GLuint) void {
    return (function_pointers.glBindFramebuffer orelse @panic("glBindFramebuffer was not bound."))(_target, _framebuffer);
}

pub fn deleteFramebuffers(_n: GLsizei, _framebuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteFramebuffers orelse @panic("glDeleteFramebuffers was not bound."))(_n, _framebuffers);
}

pub fn genFramebuffers(_n: GLsizei, _framebuffers: [*c]GLuint) void {
    return (function_pointers.glGenFramebuffers orelse @panic("glGenFramebuffers was not bound."))(_n, _framebuffers);
}

pub fn checkFramebufferStatus(_target: GLenum) GLenum {
    return (function_pointers.glCheckFramebufferStatus orelse @panic("glCheckFramebufferStatus was not bound."))(_target);
}

pub fn framebufferTexture1D(_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void {
    return (function_pointers.glFramebufferTexture1D orelse @panic("glFramebufferTexture1D was not bound."))(_target, _attachment, _textarget, _texture, _level);
}

pub fn framebufferTexture2D(_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void {
    return (function_pointers.glFramebufferTexture2D orelse @panic("glFramebufferTexture2D was not bound."))(_target, _attachment, _textarget, _texture, _level);
}

pub fn framebufferTexture3D(_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint, _zoffset: GLint) void {
    return (function_pointers.glFramebufferTexture3D orelse @panic("glFramebufferTexture3D was not bound."))(_target, _attachment, _textarget, _texture, _level, _zoffset);
}

pub fn framebufferRenderbuffer(_target: GLenum, _attachment: GLenum, _renderbuffertarget: GLenum, _renderbuffer: GLuint) void {
    return (function_pointers.glFramebufferRenderbuffer orelse @panic("glFramebufferRenderbuffer was not bound."))(_target, _attachment, _renderbuffertarget, _renderbuffer);
}

pub fn getFramebufferAttachmentParameteriv(_target: GLenum, _attachment: GLenum, _pname: GLenum, _params: [*c]GLint) void {
    return (function_pointers.glGetFramebufferAttachmentParameteriv orelse @panic("glGetFramebufferAttachmentParameteriv was not bound."))(_target, _attachment, _pname, _params);
}

pub fn generateMipmap(_target: GLenum) void {
    return (function_pointers.glGenerateMipmap orelse @panic("glGenerateMipmap was not bound."))(_target);
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

pub fn mapBufferRange(_target: GLenum, _offset: GLintptr, _length: GLsizeiptr, _access: GLbitfield) ?*anyopaque {
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

pub fn drawArraysInstanced(_mode: GLenum, _first: GLint, _count: GLsizei, _instancecount: GLsizei) void {
    return (function_pointers.glDrawArraysInstanced orelse @panic("glDrawArraysInstanced was not bound."))(_mode, _first, _count, _instancecount);
}

pub fn drawElementsInstanced(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque, _instancecount: GLsizei) void {
    return (function_pointers.glDrawElementsInstanced orelse @panic("glDrawElementsInstanced was not bound."))(_mode, _count, _type, _indices, _instancecount);
}

pub fn texBuffer(_target: GLenum, _internalformat: GLenum, _buffer: GLuint) void {
    return (function_pointers.glTexBuffer orelse @panic("glTexBuffer was not bound."))(_target, _internalformat, _buffer);
}

pub fn primitiveRestartIndex(_index: GLuint) void {
    return (function_pointers.glPrimitiveRestartIndex orelse @panic("glPrimitiveRestartIndex was not bound."))(_index);
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

pub fn getActiveUniformName(_program: GLuint, _uniformIndex: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _uniformName: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniformName orelse @panic("glGetActiveUniformName was not bound."))(_program, _uniformIndex, _bufSize, _length, _uniformName);
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
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*const anyopaque) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(@TypeOf(function_pointers.glCullFace), proc);
    } else {
        log.err("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(@TypeOf(function_pointers.glFrontFace), proc);
    } else {
        log.err("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(@TypeOf(function_pointers.glHint), proc);
    } else {
        log.err("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(@TypeOf(function_pointers.glLineWidth), proc);
    } else {
        log.err("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSize")) |proc| {
        function_pointers.glPointSize = @ptrCast(@TypeOf(function_pointers.glPointSize), proc);
    } else {
        log.err("entry point glPointSize not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonMode")) |proc| {
        function_pointers.glPolygonMode = @ptrCast(@TypeOf(function_pointers.glPolygonMode), proc);
    } else {
        log.err("entry point glPolygonMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(@TypeOf(function_pointers.glScissor), proc);
    } else {
        log.err("entry point glScissor not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(@TypeOf(function_pointers.glTexParameteri), proc);
    } else {
        log.err("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(@TypeOf(function_pointers.glTexParameteriv), proc);
    } else {
        log.err("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage1D")) |proc| {
        function_pointers.glTexImage1D = @ptrCast(@TypeOf(function_pointers.glTexImage1D), proc);
    } else {
        log.err("entry point glTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(@TypeOf(function_pointers.glTexImage2D), proc);
    } else {
        log.err("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawBuffer")) |proc| {
        function_pointers.glDrawBuffer = @ptrCast(@TypeOf(function_pointers.glDrawBuffer), proc);
    } else {
        log.err("entry point glDrawBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(@TypeOf(function_pointers.glClear), proc);
    } else {
        log.err("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColor")) |proc| {
        function_pointers.glClearColor = @ptrCast(@TypeOf(function_pointers.glClearColor), proc);
    } else {
        log.err("entry point glClearColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(@TypeOf(function_pointers.glClearStencil), proc);
    } else {
        log.err("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepth")) |proc| {
        function_pointers.glClearDepth = @ptrCast(@TypeOf(function_pointers.glClearDepth), proc);
    } else {
        log.err("entry point glClearDepth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(@TypeOf(function_pointers.glStencilMask), proc);
    } else {
        log.err("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(@TypeOf(function_pointers.glColorMask), proc);
    } else {
        log.err("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(@TypeOf(function_pointers.glDepthMask), proc);
    } else {
        log.err("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(@TypeOf(function_pointers.glDisable), proc);
    } else {
        log.err("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(@TypeOf(function_pointers.glEnable), proc);
    } else {
        log.err("entry point glEnable not found!", .{});
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
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(@TypeOf(function_pointers.glBlendFunc), proc);
    } else {
        log.err("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLogicOp")) |proc| {
        function_pointers.glLogicOp = @ptrCast(@TypeOf(function_pointers.glLogicOp), proc);
    } else {
        log.err("entry point glLogicOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(@TypeOf(function_pointers.glStencilFunc), proc);
    } else {
        log.err("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(@TypeOf(function_pointers.glStencilOp), proc);
    } else {
        log.err("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(@TypeOf(function_pointers.glDepthFunc), proc);
    } else {
        log.err("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStoref")) |proc| {
        function_pointers.glPixelStoref = @ptrCast(@TypeOf(function_pointers.glPixelStoref), proc);
    } else {
        log.err("entry point glPixelStoref not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(@TypeOf(function_pointers.glPixelStorei), proc);
    } else {
        log.err("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadBuffer")) |proc| {
        function_pointers.glReadBuffer = @ptrCast(@TypeOf(function_pointers.glReadBuffer), proc);
    } else {
        log.err("entry point glReadBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(@TypeOf(function_pointers.glReadPixels), proc);
    } else {
        log.err("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(@TypeOf(function_pointers.glGetBooleanv), proc);
    } else {
        log.err("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetDoublev")) |proc| {
        function_pointers.glGetDoublev = @ptrCast(@TypeOf(function_pointers.glGetDoublev), proc);
    } else {
        log.err("entry point glGetDoublev not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(@TypeOf(function_pointers.glGetError), proc);
    } else {
        log.err("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(@TypeOf(function_pointers.glGetFloatv), proc);
    } else {
        log.err("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(@TypeOf(function_pointers.glGetIntegerv), proc);
    } else {
        log.err("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(@TypeOf(function_pointers.glGetString), proc);
    } else {
        log.err("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexImage")) |proc| {
        function_pointers.glGetTexImage = @ptrCast(@TypeOf(function_pointers.glGetTexImage), proc);
    } else {
        log.err("entry point glGetTexImage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(@TypeOf(function_pointers.glGetTexParameterfv), proc);
    } else {
        log.err("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(@TypeOf(function_pointers.glGetTexParameteriv), proc);
    } else {
        log.err("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexLevelParameterfv")) |proc| {
        function_pointers.glGetTexLevelParameterfv = @ptrCast(@TypeOf(function_pointers.glGetTexLevelParameterfv), proc);
    } else {
        log.err("entry point glGetTexLevelParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexLevelParameteriv")) |proc| {
        function_pointers.glGetTexLevelParameteriv = @ptrCast(@TypeOf(function_pointers.glGetTexLevelParameteriv), proc);
    } else {
        log.err("entry point glGetTexLevelParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(@TypeOf(function_pointers.glIsEnabled), proc);
    } else {
        log.err("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRange")) |proc| {
        function_pointers.glDepthRange = @ptrCast(@TypeOf(function_pointers.glDepthRange), proc);
    } else {
        log.err("entry point glDepthRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(@TypeOf(function_pointers.glViewport), proc);
    } else {
        log.err("entry point glViewport not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNewList")) |proc| {
        function_pointers.glNewList = @ptrCast(@TypeOf(function_pointers.glNewList), proc);
    } else {
        log.err("entry point glNewList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndList")) |proc| {
        function_pointers.glEndList = @ptrCast(@TypeOf(function_pointers.glEndList), proc);
    } else {
        log.err("entry point glEndList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCallList")) |proc| {
        function_pointers.glCallList = @ptrCast(@TypeOf(function_pointers.glCallList), proc);
    } else {
        log.err("entry point glCallList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCallLists")) |proc| {
        function_pointers.glCallLists = @ptrCast(@TypeOf(function_pointers.glCallLists), proc);
    } else {
        log.err("entry point glCallLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteLists")) |proc| {
        function_pointers.glDeleteLists = @ptrCast(@TypeOf(function_pointers.glDeleteLists), proc);
    } else {
        log.err("entry point glDeleteLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenLists")) |proc| {
        function_pointers.glGenLists = @ptrCast(@TypeOf(function_pointers.glGenLists), proc);
    } else {
        log.err("entry point glGenLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glListBase")) |proc| {
        function_pointers.glListBase = @ptrCast(@TypeOf(function_pointers.glListBase), proc);
    } else {
        log.err("entry point glListBase not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBegin")) |proc| {
        function_pointers.glBegin = @ptrCast(@TypeOf(function_pointers.glBegin), proc);
    } else {
        log.err("entry point glBegin not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBitmap")) |proc| {
        function_pointers.glBitmap = @ptrCast(@TypeOf(function_pointers.glBitmap), proc);
    } else {
        log.err("entry point glBitmap not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3b")) |proc| {
        function_pointers.glColor3b = @ptrCast(@TypeOf(function_pointers.glColor3b), proc);
    } else {
        log.err("entry point glColor3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3bv")) |proc| {
        function_pointers.glColor3bv = @ptrCast(@TypeOf(function_pointers.glColor3bv), proc);
    } else {
        log.err("entry point glColor3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3d")) |proc| {
        function_pointers.glColor3d = @ptrCast(@TypeOf(function_pointers.glColor3d), proc);
    } else {
        log.err("entry point glColor3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3dv")) |proc| {
        function_pointers.glColor3dv = @ptrCast(@TypeOf(function_pointers.glColor3dv), proc);
    } else {
        log.err("entry point glColor3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3f")) |proc| {
        function_pointers.glColor3f = @ptrCast(@TypeOf(function_pointers.glColor3f), proc);
    } else {
        log.err("entry point glColor3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3fv")) |proc| {
        function_pointers.glColor3fv = @ptrCast(@TypeOf(function_pointers.glColor3fv), proc);
    } else {
        log.err("entry point glColor3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3i")) |proc| {
        function_pointers.glColor3i = @ptrCast(@TypeOf(function_pointers.glColor3i), proc);
    } else {
        log.err("entry point glColor3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3iv")) |proc| {
        function_pointers.glColor3iv = @ptrCast(@TypeOf(function_pointers.glColor3iv), proc);
    } else {
        log.err("entry point glColor3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3s")) |proc| {
        function_pointers.glColor3s = @ptrCast(@TypeOf(function_pointers.glColor3s), proc);
    } else {
        log.err("entry point glColor3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3sv")) |proc| {
        function_pointers.glColor3sv = @ptrCast(@TypeOf(function_pointers.glColor3sv), proc);
    } else {
        log.err("entry point glColor3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ub")) |proc| {
        function_pointers.glColor3ub = @ptrCast(@TypeOf(function_pointers.glColor3ub), proc);
    } else {
        log.err("entry point glColor3ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ubv")) |proc| {
        function_pointers.glColor3ubv = @ptrCast(@TypeOf(function_pointers.glColor3ubv), proc);
    } else {
        log.err("entry point glColor3ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ui")) |proc| {
        function_pointers.glColor3ui = @ptrCast(@TypeOf(function_pointers.glColor3ui), proc);
    } else {
        log.err("entry point glColor3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3uiv")) |proc| {
        function_pointers.glColor3uiv = @ptrCast(@TypeOf(function_pointers.glColor3uiv), proc);
    } else {
        log.err("entry point glColor3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3us")) |proc| {
        function_pointers.glColor3us = @ptrCast(@TypeOf(function_pointers.glColor3us), proc);
    } else {
        log.err("entry point glColor3us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3usv")) |proc| {
        function_pointers.glColor3usv = @ptrCast(@TypeOf(function_pointers.glColor3usv), proc);
    } else {
        log.err("entry point glColor3usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4b")) |proc| {
        function_pointers.glColor4b = @ptrCast(@TypeOf(function_pointers.glColor4b), proc);
    } else {
        log.err("entry point glColor4b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4bv")) |proc| {
        function_pointers.glColor4bv = @ptrCast(@TypeOf(function_pointers.glColor4bv), proc);
    } else {
        log.err("entry point glColor4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4d")) |proc| {
        function_pointers.glColor4d = @ptrCast(@TypeOf(function_pointers.glColor4d), proc);
    } else {
        log.err("entry point glColor4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4dv")) |proc| {
        function_pointers.glColor4dv = @ptrCast(@TypeOf(function_pointers.glColor4dv), proc);
    } else {
        log.err("entry point glColor4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4f")) |proc| {
        function_pointers.glColor4f = @ptrCast(@TypeOf(function_pointers.glColor4f), proc);
    } else {
        log.err("entry point glColor4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4fv")) |proc| {
        function_pointers.glColor4fv = @ptrCast(@TypeOf(function_pointers.glColor4fv), proc);
    } else {
        log.err("entry point glColor4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4i")) |proc| {
        function_pointers.glColor4i = @ptrCast(@TypeOf(function_pointers.glColor4i), proc);
    } else {
        log.err("entry point glColor4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4iv")) |proc| {
        function_pointers.glColor4iv = @ptrCast(@TypeOf(function_pointers.glColor4iv), proc);
    } else {
        log.err("entry point glColor4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4s")) |proc| {
        function_pointers.glColor4s = @ptrCast(@TypeOf(function_pointers.glColor4s), proc);
    } else {
        log.err("entry point glColor4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4sv")) |proc| {
        function_pointers.glColor4sv = @ptrCast(@TypeOf(function_pointers.glColor4sv), proc);
    } else {
        log.err("entry point glColor4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ub")) |proc| {
        function_pointers.glColor4ub = @ptrCast(@TypeOf(function_pointers.glColor4ub), proc);
    } else {
        log.err("entry point glColor4ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ubv")) |proc| {
        function_pointers.glColor4ubv = @ptrCast(@TypeOf(function_pointers.glColor4ubv), proc);
    } else {
        log.err("entry point glColor4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ui")) |proc| {
        function_pointers.glColor4ui = @ptrCast(@TypeOf(function_pointers.glColor4ui), proc);
    } else {
        log.err("entry point glColor4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4uiv")) |proc| {
        function_pointers.glColor4uiv = @ptrCast(@TypeOf(function_pointers.glColor4uiv), proc);
    } else {
        log.err("entry point glColor4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4us")) |proc| {
        function_pointers.glColor4us = @ptrCast(@TypeOf(function_pointers.glColor4us), proc);
    } else {
        log.err("entry point glColor4us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4usv")) |proc| {
        function_pointers.glColor4usv = @ptrCast(@TypeOf(function_pointers.glColor4usv), proc);
    } else {
        log.err("entry point glColor4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlag")) |proc| {
        function_pointers.glEdgeFlag = @ptrCast(@TypeOf(function_pointers.glEdgeFlag), proc);
    } else {
        log.err("entry point glEdgeFlag not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlagv")) |proc| {
        function_pointers.glEdgeFlagv = @ptrCast(@TypeOf(function_pointers.glEdgeFlagv), proc);
    } else {
        log.err("entry point glEdgeFlagv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnd")) |proc| {
        function_pointers.glEnd = @ptrCast(@TypeOf(function_pointers.glEnd), proc);
    } else {
        log.err("entry point glEnd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexd")) |proc| {
        function_pointers.glIndexd = @ptrCast(@TypeOf(function_pointers.glIndexd), proc);
    } else {
        log.err("entry point glIndexd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexdv")) |proc| {
        function_pointers.glIndexdv = @ptrCast(@TypeOf(function_pointers.glIndexdv), proc);
    } else {
        log.err("entry point glIndexdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexf")) |proc| {
        function_pointers.glIndexf = @ptrCast(@TypeOf(function_pointers.glIndexf), proc);
    } else {
        log.err("entry point glIndexf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexfv")) |proc| {
        function_pointers.glIndexfv = @ptrCast(@TypeOf(function_pointers.glIndexfv), proc);
    } else {
        log.err("entry point glIndexfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexi")) |proc| {
        function_pointers.glIndexi = @ptrCast(@TypeOf(function_pointers.glIndexi), proc);
    } else {
        log.err("entry point glIndexi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexiv")) |proc| {
        function_pointers.glIndexiv = @ptrCast(@TypeOf(function_pointers.glIndexiv), proc);
    } else {
        log.err("entry point glIndexiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexs")) |proc| {
        function_pointers.glIndexs = @ptrCast(@TypeOf(function_pointers.glIndexs), proc);
    } else {
        log.err("entry point glIndexs not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexsv")) |proc| {
        function_pointers.glIndexsv = @ptrCast(@TypeOf(function_pointers.glIndexsv), proc);
    } else {
        log.err("entry point glIndexsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3b")) |proc| {
        function_pointers.glNormal3b = @ptrCast(@TypeOf(function_pointers.glNormal3b), proc);
    } else {
        log.err("entry point glNormal3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3bv")) |proc| {
        function_pointers.glNormal3bv = @ptrCast(@TypeOf(function_pointers.glNormal3bv), proc);
    } else {
        log.err("entry point glNormal3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3d")) |proc| {
        function_pointers.glNormal3d = @ptrCast(@TypeOf(function_pointers.glNormal3d), proc);
    } else {
        log.err("entry point glNormal3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3dv")) |proc| {
        function_pointers.glNormal3dv = @ptrCast(@TypeOf(function_pointers.glNormal3dv), proc);
    } else {
        log.err("entry point glNormal3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3f")) |proc| {
        function_pointers.glNormal3f = @ptrCast(@TypeOf(function_pointers.glNormal3f), proc);
    } else {
        log.err("entry point glNormal3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3fv")) |proc| {
        function_pointers.glNormal3fv = @ptrCast(@TypeOf(function_pointers.glNormal3fv), proc);
    } else {
        log.err("entry point glNormal3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3i")) |proc| {
        function_pointers.glNormal3i = @ptrCast(@TypeOf(function_pointers.glNormal3i), proc);
    } else {
        log.err("entry point glNormal3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3iv")) |proc| {
        function_pointers.glNormal3iv = @ptrCast(@TypeOf(function_pointers.glNormal3iv), proc);
    } else {
        log.err("entry point glNormal3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3s")) |proc| {
        function_pointers.glNormal3s = @ptrCast(@TypeOf(function_pointers.glNormal3s), proc);
    } else {
        log.err("entry point glNormal3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3sv")) |proc| {
        function_pointers.glNormal3sv = @ptrCast(@TypeOf(function_pointers.glNormal3sv), proc);
    } else {
        log.err("entry point glNormal3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2d")) |proc| {
        function_pointers.glRasterPos2d = @ptrCast(@TypeOf(function_pointers.glRasterPos2d), proc);
    } else {
        log.err("entry point glRasterPos2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2dv")) |proc| {
        function_pointers.glRasterPos2dv = @ptrCast(@TypeOf(function_pointers.glRasterPos2dv), proc);
    } else {
        log.err("entry point glRasterPos2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2f")) |proc| {
        function_pointers.glRasterPos2f = @ptrCast(@TypeOf(function_pointers.glRasterPos2f), proc);
    } else {
        log.err("entry point glRasterPos2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2fv")) |proc| {
        function_pointers.glRasterPos2fv = @ptrCast(@TypeOf(function_pointers.glRasterPos2fv), proc);
    } else {
        log.err("entry point glRasterPos2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2i")) |proc| {
        function_pointers.glRasterPos2i = @ptrCast(@TypeOf(function_pointers.glRasterPos2i), proc);
    } else {
        log.err("entry point glRasterPos2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2iv")) |proc| {
        function_pointers.glRasterPos2iv = @ptrCast(@TypeOf(function_pointers.glRasterPos2iv), proc);
    } else {
        log.err("entry point glRasterPos2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2s")) |proc| {
        function_pointers.glRasterPos2s = @ptrCast(@TypeOf(function_pointers.glRasterPos2s), proc);
    } else {
        log.err("entry point glRasterPos2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2sv")) |proc| {
        function_pointers.glRasterPos2sv = @ptrCast(@TypeOf(function_pointers.glRasterPos2sv), proc);
    } else {
        log.err("entry point glRasterPos2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3d")) |proc| {
        function_pointers.glRasterPos3d = @ptrCast(@TypeOf(function_pointers.glRasterPos3d), proc);
    } else {
        log.err("entry point glRasterPos3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3dv")) |proc| {
        function_pointers.glRasterPos3dv = @ptrCast(@TypeOf(function_pointers.glRasterPos3dv), proc);
    } else {
        log.err("entry point glRasterPos3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3f")) |proc| {
        function_pointers.glRasterPos3f = @ptrCast(@TypeOf(function_pointers.glRasterPos3f), proc);
    } else {
        log.err("entry point glRasterPos3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3fv")) |proc| {
        function_pointers.glRasterPos3fv = @ptrCast(@TypeOf(function_pointers.glRasterPos3fv), proc);
    } else {
        log.err("entry point glRasterPos3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3i")) |proc| {
        function_pointers.glRasterPos3i = @ptrCast(@TypeOf(function_pointers.glRasterPos3i), proc);
    } else {
        log.err("entry point glRasterPos3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3iv")) |proc| {
        function_pointers.glRasterPos3iv = @ptrCast(@TypeOf(function_pointers.glRasterPos3iv), proc);
    } else {
        log.err("entry point glRasterPos3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3s")) |proc| {
        function_pointers.glRasterPos3s = @ptrCast(@TypeOf(function_pointers.glRasterPos3s), proc);
    } else {
        log.err("entry point glRasterPos3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3sv")) |proc| {
        function_pointers.glRasterPos3sv = @ptrCast(@TypeOf(function_pointers.glRasterPos3sv), proc);
    } else {
        log.err("entry point glRasterPos3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4d")) |proc| {
        function_pointers.glRasterPos4d = @ptrCast(@TypeOf(function_pointers.glRasterPos4d), proc);
    } else {
        log.err("entry point glRasterPos4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4dv")) |proc| {
        function_pointers.glRasterPos4dv = @ptrCast(@TypeOf(function_pointers.glRasterPos4dv), proc);
    } else {
        log.err("entry point glRasterPos4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4f")) |proc| {
        function_pointers.glRasterPos4f = @ptrCast(@TypeOf(function_pointers.glRasterPos4f), proc);
    } else {
        log.err("entry point glRasterPos4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4fv")) |proc| {
        function_pointers.glRasterPos4fv = @ptrCast(@TypeOf(function_pointers.glRasterPos4fv), proc);
    } else {
        log.err("entry point glRasterPos4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4i")) |proc| {
        function_pointers.glRasterPos4i = @ptrCast(@TypeOf(function_pointers.glRasterPos4i), proc);
    } else {
        log.err("entry point glRasterPos4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4iv")) |proc| {
        function_pointers.glRasterPos4iv = @ptrCast(@TypeOf(function_pointers.glRasterPos4iv), proc);
    } else {
        log.err("entry point glRasterPos4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4s")) |proc| {
        function_pointers.glRasterPos4s = @ptrCast(@TypeOf(function_pointers.glRasterPos4s), proc);
    } else {
        log.err("entry point glRasterPos4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4sv")) |proc| {
        function_pointers.glRasterPos4sv = @ptrCast(@TypeOf(function_pointers.glRasterPos4sv), proc);
    } else {
        log.err("entry point glRasterPos4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectd")) |proc| {
        function_pointers.glRectd = @ptrCast(@TypeOf(function_pointers.glRectd), proc);
    } else {
        log.err("entry point glRectd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectdv")) |proc| {
        function_pointers.glRectdv = @ptrCast(@TypeOf(function_pointers.glRectdv), proc);
    } else {
        log.err("entry point glRectdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectf")) |proc| {
        function_pointers.glRectf = @ptrCast(@TypeOf(function_pointers.glRectf), proc);
    } else {
        log.err("entry point glRectf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectfv")) |proc| {
        function_pointers.glRectfv = @ptrCast(@TypeOf(function_pointers.glRectfv), proc);
    } else {
        log.err("entry point glRectfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRecti")) |proc| {
        function_pointers.glRecti = @ptrCast(@TypeOf(function_pointers.glRecti), proc);
    } else {
        log.err("entry point glRecti not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectiv")) |proc| {
        function_pointers.glRectiv = @ptrCast(@TypeOf(function_pointers.glRectiv), proc);
    } else {
        log.err("entry point glRectiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRects")) |proc| {
        function_pointers.glRects = @ptrCast(@TypeOf(function_pointers.glRects), proc);
    } else {
        log.err("entry point glRects not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectsv")) |proc| {
        function_pointers.glRectsv = @ptrCast(@TypeOf(function_pointers.glRectsv), proc);
    } else {
        log.err("entry point glRectsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1d")) |proc| {
        function_pointers.glTexCoord1d = @ptrCast(@TypeOf(function_pointers.glTexCoord1d), proc);
    } else {
        log.err("entry point glTexCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1dv")) |proc| {
        function_pointers.glTexCoord1dv = @ptrCast(@TypeOf(function_pointers.glTexCoord1dv), proc);
    } else {
        log.err("entry point glTexCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1f")) |proc| {
        function_pointers.glTexCoord1f = @ptrCast(@TypeOf(function_pointers.glTexCoord1f), proc);
    } else {
        log.err("entry point glTexCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1fv")) |proc| {
        function_pointers.glTexCoord1fv = @ptrCast(@TypeOf(function_pointers.glTexCoord1fv), proc);
    } else {
        log.err("entry point glTexCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1i")) |proc| {
        function_pointers.glTexCoord1i = @ptrCast(@TypeOf(function_pointers.glTexCoord1i), proc);
    } else {
        log.err("entry point glTexCoord1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1iv")) |proc| {
        function_pointers.glTexCoord1iv = @ptrCast(@TypeOf(function_pointers.glTexCoord1iv), proc);
    } else {
        log.err("entry point glTexCoord1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1s")) |proc| {
        function_pointers.glTexCoord1s = @ptrCast(@TypeOf(function_pointers.glTexCoord1s), proc);
    } else {
        log.err("entry point glTexCoord1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1sv")) |proc| {
        function_pointers.glTexCoord1sv = @ptrCast(@TypeOf(function_pointers.glTexCoord1sv), proc);
    } else {
        log.err("entry point glTexCoord1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2d")) |proc| {
        function_pointers.glTexCoord2d = @ptrCast(@TypeOf(function_pointers.glTexCoord2d), proc);
    } else {
        log.err("entry point glTexCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2dv")) |proc| {
        function_pointers.glTexCoord2dv = @ptrCast(@TypeOf(function_pointers.glTexCoord2dv), proc);
    } else {
        log.err("entry point glTexCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2f")) |proc| {
        function_pointers.glTexCoord2f = @ptrCast(@TypeOf(function_pointers.glTexCoord2f), proc);
    } else {
        log.err("entry point glTexCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2fv")) |proc| {
        function_pointers.glTexCoord2fv = @ptrCast(@TypeOf(function_pointers.glTexCoord2fv), proc);
    } else {
        log.err("entry point glTexCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2i")) |proc| {
        function_pointers.glTexCoord2i = @ptrCast(@TypeOf(function_pointers.glTexCoord2i), proc);
    } else {
        log.err("entry point glTexCoord2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2iv")) |proc| {
        function_pointers.glTexCoord2iv = @ptrCast(@TypeOf(function_pointers.glTexCoord2iv), proc);
    } else {
        log.err("entry point glTexCoord2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2s")) |proc| {
        function_pointers.glTexCoord2s = @ptrCast(@TypeOf(function_pointers.glTexCoord2s), proc);
    } else {
        log.err("entry point glTexCoord2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2sv")) |proc| {
        function_pointers.glTexCoord2sv = @ptrCast(@TypeOf(function_pointers.glTexCoord2sv), proc);
    } else {
        log.err("entry point glTexCoord2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3d")) |proc| {
        function_pointers.glTexCoord3d = @ptrCast(@TypeOf(function_pointers.glTexCoord3d), proc);
    } else {
        log.err("entry point glTexCoord3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3dv")) |proc| {
        function_pointers.glTexCoord3dv = @ptrCast(@TypeOf(function_pointers.glTexCoord3dv), proc);
    } else {
        log.err("entry point glTexCoord3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3f")) |proc| {
        function_pointers.glTexCoord3f = @ptrCast(@TypeOf(function_pointers.glTexCoord3f), proc);
    } else {
        log.err("entry point glTexCoord3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3fv")) |proc| {
        function_pointers.glTexCoord3fv = @ptrCast(@TypeOf(function_pointers.glTexCoord3fv), proc);
    } else {
        log.err("entry point glTexCoord3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3i")) |proc| {
        function_pointers.glTexCoord3i = @ptrCast(@TypeOf(function_pointers.glTexCoord3i), proc);
    } else {
        log.err("entry point glTexCoord3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3iv")) |proc| {
        function_pointers.glTexCoord3iv = @ptrCast(@TypeOf(function_pointers.glTexCoord3iv), proc);
    } else {
        log.err("entry point glTexCoord3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3s")) |proc| {
        function_pointers.glTexCoord3s = @ptrCast(@TypeOf(function_pointers.glTexCoord3s), proc);
    } else {
        log.err("entry point glTexCoord3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3sv")) |proc| {
        function_pointers.glTexCoord3sv = @ptrCast(@TypeOf(function_pointers.glTexCoord3sv), proc);
    } else {
        log.err("entry point glTexCoord3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4d")) |proc| {
        function_pointers.glTexCoord4d = @ptrCast(@TypeOf(function_pointers.glTexCoord4d), proc);
    } else {
        log.err("entry point glTexCoord4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4dv")) |proc| {
        function_pointers.glTexCoord4dv = @ptrCast(@TypeOf(function_pointers.glTexCoord4dv), proc);
    } else {
        log.err("entry point glTexCoord4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4f")) |proc| {
        function_pointers.glTexCoord4f = @ptrCast(@TypeOf(function_pointers.glTexCoord4f), proc);
    } else {
        log.err("entry point glTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4fv")) |proc| {
        function_pointers.glTexCoord4fv = @ptrCast(@TypeOf(function_pointers.glTexCoord4fv), proc);
    } else {
        log.err("entry point glTexCoord4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4i")) |proc| {
        function_pointers.glTexCoord4i = @ptrCast(@TypeOf(function_pointers.glTexCoord4i), proc);
    } else {
        log.err("entry point glTexCoord4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4iv")) |proc| {
        function_pointers.glTexCoord4iv = @ptrCast(@TypeOf(function_pointers.glTexCoord4iv), proc);
    } else {
        log.err("entry point glTexCoord4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4s")) |proc| {
        function_pointers.glTexCoord4s = @ptrCast(@TypeOf(function_pointers.glTexCoord4s), proc);
    } else {
        log.err("entry point glTexCoord4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4sv")) |proc| {
        function_pointers.glTexCoord4sv = @ptrCast(@TypeOf(function_pointers.glTexCoord4sv), proc);
    } else {
        log.err("entry point glTexCoord4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2d")) |proc| {
        function_pointers.glVertex2d = @ptrCast(@TypeOf(function_pointers.glVertex2d), proc);
    } else {
        log.err("entry point glVertex2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2dv")) |proc| {
        function_pointers.glVertex2dv = @ptrCast(@TypeOf(function_pointers.glVertex2dv), proc);
    } else {
        log.err("entry point glVertex2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2f")) |proc| {
        function_pointers.glVertex2f = @ptrCast(@TypeOf(function_pointers.glVertex2f), proc);
    } else {
        log.err("entry point glVertex2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2fv")) |proc| {
        function_pointers.glVertex2fv = @ptrCast(@TypeOf(function_pointers.glVertex2fv), proc);
    } else {
        log.err("entry point glVertex2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2i")) |proc| {
        function_pointers.glVertex2i = @ptrCast(@TypeOf(function_pointers.glVertex2i), proc);
    } else {
        log.err("entry point glVertex2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2iv")) |proc| {
        function_pointers.glVertex2iv = @ptrCast(@TypeOf(function_pointers.glVertex2iv), proc);
    } else {
        log.err("entry point glVertex2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2s")) |proc| {
        function_pointers.glVertex2s = @ptrCast(@TypeOf(function_pointers.glVertex2s), proc);
    } else {
        log.err("entry point glVertex2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2sv")) |proc| {
        function_pointers.glVertex2sv = @ptrCast(@TypeOf(function_pointers.glVertex2sv), proc);
    } else {
        log.err("entry point glVertex2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3d")) |proc| {
        function_pointers.glVertex3d = @ptrCast(@TypeOf(function_pointers.glVertex3d), proc);
    } else {
        log.err("entry point glVertex3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3dv")) |proc| {
        function_pointers.glVertex3dv = @ptrCast(@TypeOf(function_pointers.glVertex3dv), proc);
    } else {
        log.err("entry point glVertex3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3f")) |proc| {
        function_pointers.glVertex3f = @ptrCast(@TypeOf(function_pointers.glVertex3f), proc);
    } else {
        log.err("entry point glVertex3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3fv")) |proc| {
        function_pointers.glVertex3fv = @ptrCast(@TypeOf(function_pointers.glVertex3fv), proc);
    } else {
        log.err("entry point glVertex3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3i")) |proc| {
        function_pointers.glVertex3i = @ptrCast(@TypeOf(function_pointers.glVertex3i), proc);
    } else {
        log.err("entry point glVertex3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3iv")) |proc| {
        function_pointers.glVertex3iv = @ptrCast(@TypeOf(function_pointers.glVertex3iv), proc);
    } else {
        log.err("entry point glVertex3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3s")) |proc| {
        function_pointers.glVertex3s = @ptrCast(@TypeOf(function_pointers.glVertex3s), proc);
    } else {
        log.err("entry point glVertex3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3sv")) |proc| {
        function_pointers.glVertex3sv = @ptrCast(@TypeOf(function_pointers.glVertex3sv), proc);
    } else {
        log.err("entry point glVertex3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4d")) |proc| {
        function_pointers.glVertex4d = @ptrCast(@TypeOf(function_pointers.glVertex4d), proc);
    } else {
        log.err("entry point glVertex4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4dv")) |proc| {
        function_pointers.glVertex4dv = @ptrCast(@TypeOf(function_pointers.glVertex4dv), proc);
    } else {
        log.err("entry point glVertex4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4f")) |proc| {
        function_pointers.glVertex4f = @ptrCast(@TypeOf(function_pointers.glVertex4f), proc);
    } else {
        log.err("entry point glVertex4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4fv")) |proc| {
        function_pointers.glVertex4fv = @ptrCast(@TypeOf(function_pointers.glVertex4fv), proc);
    } else {
        log.err("entry point glVertex4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4i")) |proc| {
        function_pointers.glVertex4i = @ptrCast(@TypeOf(function_pointers.glVertex4i), proc);
    } else {
        log.err("entry point glVertex4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4iv")) |proc| {
        function_pointers.glVertex4iv = @ptrCast(@TypeOf(function_pointers.glVertex4iv), proc);
    } else {
        log.err("entry point glVertex4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4s")) |proc| {
        function_pointers.glVertex4s = @ptrCast(@TypeOf(function_pointers.glVertex4s), proc);
    } else {
        log.err("entry point glVertex4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4sv")) |proc| {
        function_pointers.glVertex4sv = @ptrCast(@TypeOf(function_pointers.glVertex4sv), proc);
    } else {
        log.err("entry point glVertex4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlane")) |proc| {
        function_pointers.glClipPlane = @ptrCast(@TypeOf(function_pointers.glClipPlane), proc);
    } else {
        log.err("entry point glClipPlane not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMaterial")) |proc| {
        function_pointers.glColorMaterial = @ptrCast(@TypeOf(function_pointers.glColorMaterial), proc);
    } else {
        log.err("entry point glColorMaterial not found!", .{});
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
    if (get_proc_address(load_ctx, "glFogi")) |proc| {
        function_pointers.glFogi = @ptrCast(@TypeOf(function_pointers.glFogi), proc);
    } else {
        log.err("entry point glFogi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogiv")) |proc| {
        function_pointers.glFogiv = @ptrCast(@TypeOf(function_pointers.glFogiv), proc);
    } else {
        log.err("entry point glFogiv not found!", .{});
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
    if (get_proc_address(load_ctx, "glLighti")) |proc| {
        function_pointers.glLighti = @ptrCast(@TypeOf(function_pointers.glLighti), proc);
    } else {
        log.err("entry point glLighti not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightiv")) |proc| {
        function_pointers.glLightiv = @ptrCast(@TypeOf(function_pointers.glLightiv), proc);
    } else {
        log.err("entry point glLightiv not found!", .{});
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
    if (get_proc_address(load_ctx, "glLightModeli")) |proc| {
        function_pointers.glLightModeli = @ptrCast(@TypeOf(function_pointers.glLightModeli), proc);
    } else {
        log.err("entry point glLightModeli not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModeliv")) |proc| {
        function_pointers.glLightModeliv = @ptrCast(@TypeOf(function_pointers.glLightModeliv), proc);
    } else {
        log.err("entry point glLightModeliv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineStipple")) |proc| {
        function_pointers.glLineStipple = @ptrCast(@TypeOf(function_pointers.glLineStipple), proc);
    } else {
        log.err("entry point glLineStipple not found!", .{});
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
    if (get_proc_address(load_ctx, "glMateriali")) |proc| {
        function_pointers.glMateriali = @ptrCast(@TypeOf(function_pointers.glMateriali), proc);
    } else {
        log.err("entry point glMateriali not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialiv")) |proc| {
        function_pointers.glMaterialiv = @ptrCast(@TypeOf(function_pointers.glMaterialiv), proc);
    } else {
        log.err("entry point glMaterialiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonStipple")) |proc| {
        function_pointers.glPolygonStipple = @ptrCast(@TypeOf(function_pointers.glPolygonStipple), proc);
    } else {
        log.err("entry point glPolygonStipple not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShadeModel")) |proc| {
        function_pointers.glShadeModel = @ptrCast(@TypeOf(function_pointers.glShadeModel), proc);
    } else {
        log.err("entry point glShadeModel not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexEnvi")) |proc| {
        function_pointers.glTexEnvi = @ptrCast(@TypeOf(function_pointers.glTexEnvi), proc);
    } else {
        log.err("entry point glTexEnvi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnviv")) |proc| {
        function_pointers.glTexEnviv = @ptrCast(@TypeOf(function_pointers.glTexEnviv), proc);
    } else {
        log.err("entry point glTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGend")) |proc| {
        function_pointers.glTexGend = @ptrCast(@TypeOf(function_pointers.glTexGend), proc);
    } else {
        log.err("entry point glTexGend not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGendv")) |proc| {
        function_pointers.glTexGendv = @ptrCast(@TypeOf(function_pointers.glTexGendv), proc);
    } else {
        log.err("entry point glTexGendv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGenf")) |proc| {
        function_pointers.glTexGenf = @ptrCast(@TypeOf(function_pointers.glTexGenf), proc);
    } else {
        log.err("entry point glTexGenf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGenfv")) |proc| {
        function_pointers.glTexGenfv = @ptrCast(@TypeOf(function_pointers.glTexGenfv), proc);
    } else {
        log.err("entry point glTexGenfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGeni")) |proc| {
        function_pointers.glTexGeni = @ptrCast(@TypeOf(function_pointers.glTexGeni), proc);
    } else {
        log.err("entry point glTexGeni not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGeniv")) |proc| {
        function_pointers.glTexGeniv = @ptrCast(@TypeOf(function_pointers.glTexGeniv), proc);
    } else {
        log.err("entry point glTexGeniv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFeedbackBuffer")) |proc| {
        function_pointers.glFeedbackBuffer = @ptrCast(@TypeOf(function_pointers.glFeedbackBuffer), proc);
    } else {
        log.err("entry point glFeedbackBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSelectBuffer")) |proc| {
        function_pointers.glSelectBuffer = @ptrCast(@TypeOf(function_pointers.glSelectBuffer), proc);
    } else {
        log.err("entry point glSelectBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderMode")) |proc| {
        function_pointers.glRenderMode = @ptrCast(@TypeOf(function_pointers.glRenderMode), proc);
    } else {
        log.err("entry point glRenderMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInitNames")) |proc| {
        function_pointers.glInitNames = @ptrCast(@TypeOf(function_pointers.glInitNames), proc);
    } else {
        log.err("entry point glInitNames not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadName")) |proc| {
        function_pointers.glLoadName = @ptrCast(@TypeOf(function_pointers.glLoadName), proc);
    } else {
        log.err("entry point glLoadName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPassThrough")) |proc| {
        function_pointers.glPassThrough = @ptrCast(@TypeOf(function_pointers.glPassThrough), proc);
    } else {
        log.err("entry point glPassThrough not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopName")) |proc| {
        function_pointers.glPopName = @ptrCast(@TypeOf(function_pointers.glPopName), proc);
    } else {
        log.err("entry point glPopName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushName")) |proc| {
        function_pointers.glPushName = @ptrCast(@TypeOf(function_pointers.glPushName), proc);
    } else {
        log.err("entry point glPushName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearAccum")) |proc| {
        function_pointers.glClearAccum = @ptrCast(@TypeOf(function_pointers.glClearAccum), proc);
    } else {
        log.err("entry point glClearAccum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearIndex")) |proc| {
        function_pointers.glClearIndex = @ptrCast(@TypeOf(function_pointers.glClearIndex), proc);
    } else {
        log.err("entry point glClearIndex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexMask")) |proc| {
        function_pointers.glIndexMask = @ptrCast(@TypeOf(function_pointers.glIndexMask), proc);
    } else {
        log.err("entry point glIndexMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAccum")) |proc| {
        function_pointers.glAccum = @ptrCast(@TypeOf(function_pointers.glAccum), proc);
    } else {
        log.err("entry point glAccum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopAttrib")) |proc| {
        function_pointers.glPopAttrib = @ptrCast(@TypeOf(function_pointers.glPopAttrib), proc);
    } else {
        log.err("entry point glPopAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushAttrib")) |proc| {
        function_pointers.glPushAttrib = @ptrCast(@TypeOf(function_pointers.glPushAttrib), proc);
    } else {
        log.err("entry point glPushAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap1d")) |proc| {
        function_pointers.glMap1d = @ptrCast(@TypeOf(function_pointers.glMap1d), proc);
    } else {
        log.err("entry point glMap1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap1f")) |proc| {
        function_pointers.glMap1f = @ptrCast(@TypeOf(function_pointers.glMap1f), proc);
    } else {
        log.err("entry point glMap1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap2d")) |proc| {
        function_pointers.glMap2d = @ptrCast(@TypeOf(function_pointers.glMap2d), proc);
    } else {
        log.err("entry point glMap2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap2f")) |proc| {
        function_pointers.glMap2f = @ptrCast(@TypeOf(function_pointers.glMap2f), proc);
    } else {
        log.err("entry point glMap2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid1d")) |proc| {
        function_pointers.glMapGrid1d = @ptrCast(@TypeOf(function_pointers.glMapGrid1d), proc);
    } else {
        log.err("entry point glMapGrid1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid1f")) |proc| {
        function_pointers.glMapGrid1f = @ptrCast(@TypeOf(function_pointers.glMapGrid1f), proc);
    } else {
        log.err("entry point glMapGrid1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid2d")) |proc| {
        function_pointers.glMapGrid2d = @ptrCast(@TypeOf(function_pointers.glMapGrid2d), proc);
    } else {
        log.err("entry point glMapGrid2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid2f")) |proc| {
        function_pointers.glMapGrid2f = @ptrCast(@TypeOf(function_pointers.glMapGrid2f), proc);
    } else {
        log.err("entry point glMapGrid2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1d")) |proc| {
        function_pointers.glEvalCoord1d = @ptrCast(@TypeOf(function_pointers.glEvalCoord1d), proc);
    } else {
        log.err("entry point glEvalCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1dv")) |proc| {
        function_pointers.glEvalCoord1dv = @ptrCast(@TypeOf(function_pointers.glEvalCoord1dv), proc);
    } else {
        log.err("entry point glEvalCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1f")) |proc| {
        function_pointers.glEvalCoord1f = @ptrCast(@TypeOf(function_pointers.glEvalCoord1f), proc);
    } else {
        log.err("entry point glEvalCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1fv")) |proc| {
        function_pointers.glEvalCoord1fv = @ptrCast(@TypeOf(function_pointers.glEvalCoord1fv), proc);
    } else {
        log.err("entry point glEvalCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2d")) |proc| {
        function_pointers.glEvalCoord2d = @ptrCast(@TypeOf(function_pointers.glEvalCoord2d), proc);
    } else {
        log.err("entry point glEvalCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2dv")) |proc| {
        function_pointers.glEvalCoord2dv = @ptrCast(@TypeOf(function_pointers.glEvalCoord2dv), proc);
    } else {
        log.err("entry point glEvalCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2f")) |proc| {
        function_pointers.glEvalCoord2f = @ptrCast(@TypeOf(function_pointers.glEvalCoord2f), proc);
    } else {
        log.err("entry point glEvalCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2fv")) |proc| {
        function_pointers.glEvalCoord2fv = @ptrCast(@TypeOf(function_pointers.glEvalCoord2fv), proc);
    } else {
        log.err("entry point glEvalCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalMesh1")) |proc| {
        function_pointers.glEvalMesh1 = @ptrCast(@TypeOf(function_pointers.glEvalMesh1), proc);
    } else {
        log.err("entry point glEvalMesh1 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalPoint1")) |proc| {
        function_pointers.glEvalPoint1 = @ptrCast(@TypeOf(function_pointers.glEvalPoint1), proc);
    } else {
        log.err("entry point glEvalPoint1 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalMesh2")) |proc| {
        function_pointers.glEvalMesh2 = @ptrCast(@TypeOf(function_pointers.glEvalMesh2), proc);
    } else {
        log.err("entry point glEvalMesh2 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalPoint2")) |proc| {
        function_pointers.glEvalPoint2 = @ptrCast(@TypeOf(function_pointers.glEvalPoint2), proc);
    } else {
        log.err("entry point glEvalPoint2 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAlphaFunc")) |proc| {
        function_pointers.glAlphaFunc = @ptrCast(@TypeOf(function_pointers.glAlphaFunc), proc);
    } else {
        log.err("entry point glAlphaFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelZoom")) |proc| {
        function_pointers.glPixelZoom = @ptrCast(@TypeOf(function_pointers.glPixelZoom), proc);
    } else {
        log.err("entry point glPixelZoom not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelTransferf")) |proc| {
        function_pointers.glPixelTransferf = @ptrCast(@TypeOf(function_pointers.glPixelTransferf), proc);
    } else {
        log.err("entry point glPixelTransferf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelTransferi")) |proc| {
        function_pointers.glPixelTransferi = @ptrCast(@TypeOf(function_pointers.glPixelTransferi), proc);
    } else {
        log.err("entry point glPixelTransferi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapfv")) |proc| {
        function_pointers.glPixelMapfv = @ptrCast(@TypeOf(function_pointers.glPixelMapfv), proc);
    } else {
        log.err("entry point glPixelMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapuiv")) |proc| {
        function_pointers.glPixelMapuiv = @ptrCast(@TypeOf(function_pointers.glPixelMapuiv), proc);
    } else {
        log.err("entry point glPixelMapuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapusv")) |proc| {
        function_pointers.glPixelMapusv = @ptrCast(@TypeOf(function_pointers.glPixelMapusv), proc);
    } else {
        log.err("entry point glPixelMapusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyPixels")) |proc| {
        function_pointers.glCopyPixels = @ptrCast(@TypeOf(function_pointers.glCopyPixels), proc);
    } else {
        log.err("entry point glCopyPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawPixels")) |proc| {
        function_pointers.glDrawPixels = @ptrCast(@TypeOf(function_pointers.glDrawPixels), proc);
    } else {
        log.err("entry point glDrawPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlane")) |proc| {
        function_pointers.glGetClipPlane = @ptrCast(@TypeOf(function_pointers.glGetClipPlane), proc);
    } else {
        log.err("entry point glGetClipPlane not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightfv")) |proc| {
        function_pointers.glGetLightfv = @ptrCast(@TypeOf(function_pointers.glGetLightfv), proc);
    } else {
        log.err("entry point glGetLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightiv")) |proc| {
        function_pointers.glGetLightiv = @ptrCast(@TypeOf(function_pointers.glGetLightiv), proc);
    } else {
        log.err("entry point glGetLightiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapdv")) |proc| {
        function_pointers.glGetMapdv = @ptrCast(@TypeOf(function_pointers.glGetMapdv), proc);
    } else {
        log.err("entry point glGetMapdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapfv")) |proc| {
        function_pointers.glGetMapfv = @ptrCast(@TypeOf(function_pointers.glGetMapfv), proc);
    } else {
        log.err("entry point glGetMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapiv")) |proc| {
        function_pointers.glGetMapiv = @ptrCast(@TypeOf(function_pointers.glGetMapiv), proc);
    } else {
        log.err("entry point glGetMapiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialfv")) |proc| {
        function_pointers.glGetMaterialfv = @ptrCast(@TypeOf(function_pointers.glGetMaterialfv), proc);
    } else {
        log.err("entry point glGetMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialiv")) |proc| {
        function_pointers.glGetMaterialiv = @ptrCast(@TypeOf(function_pointers.glGetMaterialiv), proc);
    } else {
        log.err("entry point glGetMaterialiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapfv")) |proc| {
        function_pointers.glGetPixelMapfv = @ptrCast(@TypeOf(function_pointers.glGetPixelMapfv), proc);
    } else {
        log.err("entry point glGetPixelMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapuiv")) |proc| {
        function_pointers.glGetPixelMapuiv = @ptrCast(@TypeOf(function_pointers.glGetPixelMapuiv), proc);
    } else {
        log.err("entry point glGetPixelMapuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapusv")) |proc| {
        function_pointers.glGetPixelMapusv = @ptrCast(@TypeOf(function_pointers.glGetPixelMapusv), proc);
    } else {
        log.err("entry point glGetPixelMapusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPolygonStipple")) |proc| {
        function_pointers.glGetPolygonStipple = @ptrCast(@TypeOf(function_pointers.glGetPolygonStipple), proc);
    } else {
        log.err("entry point glGetPolygonStipple not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvfv")) |proc| {
        function_pointers.glGetTexEnvfv = @ptrCast(@TypeOf(function_pointers.glGetTexEnvfv), proc);
    } else {
        log.err("entry point glGetTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnviv")) |proc| {
        function_pointers.glGetTexEnviv = @ptrCast(@TypeOf(function_pointers.glGetTexEnviv), proc);
    } else {
        log.err("entry point glGetTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGendv")) |proc| {
        function_pointers.glGetTexGendv = @ptrCast(@TypeOf(function_pointers.glGetTexGendv), proc);
    } else {
        log.err("entry point glGetTexGendv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGenfv")) |proc| {
        function_pointers.glGetTexGenfv = @ptrCast(@TypeOf(function_pointers.glGetTexGenfv), proc);
    } else {
        log.err("entry point glGetTexGenfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGeniv")) |proc| {
        function_pointers.glGetTexGeniv = @ptrCast(@TypeOf(function_pointers.glGetTexGeniv), proc);
    } else {
        log.err("entry point glGetTexGeniv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsList")) |proc| {
        function_pointers.glIsList = @ptrCast(@TypeOf(function_pointers.glIsList), proc);
    } else {
        log.err("entry point glIsList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustum")) |proc| {
        function_pointers.glFrustum = @ptrCast(@TypeOf(function_pointers.glFrustum), proc);
    } else {
        log.err("entry point glFrustum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadIdentity")) |proc| {
        function_pointers.glLoadIdentity = @ptrCast(@TypeOf(function_pointers.glLoadIdentity), proc);
    } else {
        log.err("entry point glLoadIdentity not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixf")) |proc| {
        function_pointers.glLoadMatrixf = @ptrCast(@TypeOf(function_pointers.glLoadMatrixf), proc);
    } else {
        log.err("entry point glLoadMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixd")) |proc| {
        function_pointers.glLoadMatrixd = @ptrCast(@TypeOf(function_pointers.glLoadMatrixd), proc);
    } else {
        log.err("entry point glLoadMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMatrixMode")) |proc| {
        function_pointers.glMatrixMode = @ptrCast(@TypeOf(function_pointers.glMatrixMode), proc);
    } else {
        log.err("entry point glMatrixMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixf")) |proc| {
        function_pointers.glMultMatrixf = @ptrCast(@TypeOf(function_pointers.glMultMatrixf), proc);
    } else {
        log.err("entry point glMultMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixd")) |proc| {
        function_pointers.glMultMatrixd = @ptrCast(@TypeOf(function_pointers.glMultMatrixd), proc);
    } else {
        log.err("entry point glMultMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrtho")) |proc| {
        function_pointers.glOrtho = @ptrCast(@TypeOf(function_pointers.glOrtho), proc);
    } else {
        log.err("entry point glOrtho not found!", .{});
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
    if (get_proc_address(load_ctx, "glRotated")) |proc| {
        function_pointers.glRotated = @ptrCast(@TypeOf(function_pointers.glRotated), proc);
    } else {
        log.err("entry point glRotated not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatef")) |proc| {
        function_pointers.glRotatef = @ptrCast(@TypeOf(function_pointers.glRotatef), proc);
    } else {
        log.err("entry point glRotatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScaled")) |proc| {
        function_pointers.glScaled = @ptrCast(@TypeOf(function_pointers.glScaled), proc);
    } else {
        log.err("entry point glScaled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalef")) |proc| {
        function_pointers.glScalef = @ptrCast(@TypeOf(function_pointers.glScalef), proc);
    } else {
        log.err("entry point glScalef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslated")) |proc| {
        function_pointers.glTranslated = @ptrCast(@TypeOf(function_pointers.glTranslated), proc);
    } else {
        log.err("entry point glTranslated not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatef")) |proc| {
        function_pointers.glTranslatef = @ptrCast(@TypeOf(function_pointers.glTranslatef), proc);
    } else {
        log.err("entry point glTranslatef not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetPointerv")) |proc| {
        function_pointers.glGetPointerv = @ptrCast(@TypeOf(function_pointers.glGetPointerv), proc);
    } else {
        log.err("entry point glGetPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(@TypeOf(function_pointers.glPolygonOffset), proc);
    } else {
        log.err("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage1D")) |proc| {
        function_pointers.glCopyTexImage1D = @ptrCast(@TypeOf(function_pointers.glCopyTexImage1D), proc);
    } else {
        log.err("entry point glCopyTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(@TypeOf(function_pointers.glCopyTexImage2D), proc);
    } else {
        log.err("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage1D")) |proc| {
        function_pointers.glCopyTexSubImage1D = @ptrCast(@TypeOf(function_pointers.glCopyTexSubImage1D), proc);
    } else {
        log.err("entry point glCopyTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glCopyTexSubImage2D), proc);
    } else {
        log.err("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage1D")) |proc| {
        function_pointers.glTexSubImage1D = @ptrCast(@TypeOf(function_pointers.glTexSubImage1D), proc);
    } else {
        log.err("entry point glTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glTexSubImage2D), proc);
    } else {
        log.err("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(@TypeOf(function_pointers.glBindTexture), proc);
    } else {
        log.err("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(@TypeOf(function_pointers.glDeleteTextures), proc);
    } else {
        log.err("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(@TypeOf(function_pointers.glGenTextures), proc);
    } else {
        log.err("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(@TypeOf(function_pointers.glIsTexture), proc);
    } else {
        log.err("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glArrayElement")) |proc| {
        function_pointers.glArrayElement = @ptrCast(@TypeOf(function_pointers.glArrayElement), proc);
    } else {
        log.err("entry point glArrayElement not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorPointer")) |proc| {
        function_pointers.glColorPointer = @ptrCast(@TypeOf(function_pointers.glColorPointer), proc);
    } else {
        log.err("entry point glColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableClientState")) |proc| {
        function_pointers.glDisableClientState = @ptrCast(@TypeOf(function_pointers.glDisableClientState), proc);
    } else {
        log.err("entry point glDisableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlagPointer")) |proc| {
        function_pointers.glEdgeFlagPointer = @ptrCast(@TypeOf(function_pointers.glEdgeFlagPointer), proc);
    } else {
        log.err("entry point glEdgeFlagPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableClientState")) |proc| {
        function_pointers.glEnableClientState = @ptrCast(@TypeOf(function_pointers.glEnableClientState), proc);
    } else {
        log.err("entry point glEnableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexPointer")) |proc| {
        function_pointers.glIndexPointer = @ptrCast(@TypeOf(function_pointers.glIndexPointer), proc);
    } else {
        log.err("entry point glIndexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInterleavedArrays")) |proc| {
        function_pointers.glInterleavedArrays = @ptrCast(@TypeOf(function_pointers.glInterleavedArrays), proc);
    } else {
        log.err("entry point glInterleavedArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormalPointer")) |proc| {
        function_pointers.glNormalPointer = @ptrCast(@TypeOf(function_pointers.glNormalPointer), proc);
    } else {
        log.err("entry point glNormalPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoordPointer")) |proc| {
        function_pointers.glTexCoordPointer = @ptrCast(@TypeOf(function_pointers.glTexCoordPointer), proc);
    } else {
        log.err("entry point glTexCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexPointer")) |proc| {
        function_pointers.glVertexPointer = @ptrCast(@TypeOf(function_pointers.glVertexPointer), proc);
    } else {
        log.err("entry point glVertexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAreTexturesResident")) |proc| {
        function_pointers.glAreTexturesResident = @ptrCast(@TypeOf(function_pointers.glAreTexturesResident), proc);
    } else {
        log.err("entry point glAreTexturesResident not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPrioritizeTextures")) |proc| {
        function_pointers.glPrioritizeTextures = @ptrCast(@TypeOf(function_pointers.glPrioritizeTextures), proc);
    } else {
        log.err("entry point glPrioritizeTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexub")) |proc| {
        function_pointers.glIndexub = @ptrCast(@TypeOf(function_pointers.glIndexub), proc);
    } else {
        log.err("entry point glIndexub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexubv")) |proc| {
        function_pointers.glIndexubv = @ptrCast(@TypeOf(function_pointers.glIndexubv), proc);
    } else {
        log.err("entry point glIndexubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopClientAttrib")) |proc| {
        function_pointers.glPopClientAttrib = @ptrCast(@TypeOf(function_pointers.glPopClientAttrib), proc);
    } else {
        log.err("entry point glPopClientAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushClientAttrib")) |proc| {
        function_pointers.glPushClientAttrib = @ptrCast(@TypeOf(function_pointers.glPushClientAttrib), proc);
    } else {
        log.err("entry point glPushClientAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawRangeElements")) |proc| {
        function_pointers.glDrawRangeElements = @ptrCast(@TypeOf(function_pointers.glDrawRangeElements), proc);
    } else {
        log.err("entry point glDrawRangeElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage3D")) |proc| {
        function_pointers.glTexImage3D = @ptrCast(@TypeOf(function_pointers.glTexImage3D), proc);
    } else {
        log.err("entry point glTexImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage3D")) |proc| {
        function_pointers.glTexSubImage3D = @ptrCast(@TypeOf(function_pointers.glTexSubImage3D), proc);
    } else {
        log.err("entry point glTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage3D")) |proc| {
        function_pointers.glCopyTexSubImage3D = @ptrCast(@TypeOf(function_pointers.glCopyTexSubImage3D), proc);
    } else {
        log.err("entry point glCopyTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(@TypeOf(function_pointers.glActiveTexture), proc);
    } else {
        log.err("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(@TypeOf(function_pointers.glSampleCoverage), proc);
    } else {
        log.err("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage3D")) |proc| {
        function_pointers.glCompressedTexImage3D = @ptrCast(@TypeOf(function_pointers.glCompressedTexImage3D), proc);
    } else {
        log.err("entry point glCompressedTexImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(@TypeOf(function_pointers.glCompressedTexImage2D), proc);
    } else {
        log.err("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage1D")) |proc| {
        function_pointers.glCompressedTexImage1D = @ptrCast(@TypeOf(function_pointers.glCompressedTexImage1D), proc);
    } else {
        log.err("entry point glCompressedTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage3D")) |proc| {
        function_pointers.glCompressedTexSubImage3D = @ptrCast(@TypeOf(function_pointers.glCompressedTexSubImage3D), proc);
    } else {
        log.err("entry point glCompressedTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(@TypeOf(function_pointers.glCompressedTexSubImage2D), proc);
    } else {
        log.err("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage1D")) |proc| {
        function_pointers.glCompressedTexSubImage1D = @ptrCast(@TypeOf(function_pointers.glCompressedTexSubImage1D), proc);
    } else {
        log.err("entry point glCompressedTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetCompressedTexImage")) |proc| {
        function_pointers.glGetCompressedTexImage = @ptrCast(@TypeOf(function_pointers.glGetCompressedTexImage), proc);
    } else {
        log.err("entry point glGetCompressedTexImage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientActiveTexture")) |proc| {
        function_pointers.glClientActiveTexture = @ptrCast(@TypeOf(function_pointers.glClientActiveTexture), proc);
    } else {
        log.err("entry point glClientActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1d")) |proc| {
        function_pointers.glMultiTexCoord1d = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1d), proc);
    } else {
        log.err("entry point glMultiTexCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1dv")) |proc| {
        function_pointers.glMultiTexCoord1dv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1dv), proc);
    } else {
        log.err("entry point glMultiTexCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1f")) |proc| {
        function_pointers.glMultiTexCoord1f = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1f), proc);
    } else {
        log.err("entry point glMultiTexCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1fv")) |proc| {
        function_pointers.glMultiTexCoord1fv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1fv), proc);
    } else {
        log.err("entry point glMultiTexCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1i")) |proc| {
        function_pointers.glMultiTexCoord1i = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1i), proc);
    } else {
        log.err("entry point glMultiTexCoord1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1iv")) |proc| {
        function_pointers.glMultiTexCoord1iv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1iv), proc);
    } else {
        log.err("entry point glMultiTexCoord1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1s")) |proc| {
        function_pointers.glMultiTexCoord1s = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1s), proc);
    } else {
        log.err("entry point glMultiTexCoord1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1sv")) |proc| {
        function_pointers.glMultiTexCoord1sv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord1sv), proc);
    } else {
        log.err("entry point glMultiTexCoord1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2d")) |proc| {
        function_pointers.glMultiTexCoord2d = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2d), proc);
    } else {
        log.err("entry point glMultiTexCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2dv")) |proc| {
        function_pointers.glMultiTexCoord2dv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2dv), proc);
    } else {
        log.err("entry point glMultiTexCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2f")) |proc| {
        function_pointers.glMultiTexCoord2f = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2f), proc);
    } else {
        log.err("entry point glMultiTexCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2fv")) |proc| {
        function_pointers.glMultiTexCoord2fv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2fv), proc);
    } else {
        log.err("entry point glMultiTexCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2i")) |proc| {
        function_pointers.glMultiTexCoord2i = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2i), proc);
    } else {
        log.err("entry point glMultiTexCoord2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2iv")) |proc| {
        function_pointers.glMultiTexCoord2iv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2iv), proc);
    } else {
        log.err("entry point glMultiTexCoord2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2s")) |proc| {
        function_pointers.glMultiTexCoord2s = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2s), proc);
    } else {
        log.err("entry point glMultiTexCoord2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2sv")) |proc| {
        function_pointers.glMultiTexCoord2sv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord2sv), proc);
    } else {
        log.err("entry point glMultiTexCoord2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3d")) |proc| {
        function_pointers.glMultiTexCoord3d = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3d), proc);
    } else {
        log.err("entry point glMultiTexCoord3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3dv")) |proc| {
        function_pointers.glMultiTexCoord3dv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3dv), proc);
    } else {
        log.err("entry point glMultiTexCoord3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3f")) |proc| {
        function_pointers.glMultiTexCoord3f = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3f), proc);
    } else {
        log.err("entry point glMultiTexCoord3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3fv")) |proc| {
        function_pointers.glMultiTexCoord3fv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3fv), proc);
    } else {
        log.err("entry point glMultiTexCoord3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3i")) |proc| {
        function_pointers.glMultiTexCoord3i = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3i), proc);
    } else {
        log.err("entry point glMultiTexCoord3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3iv")) |proc| {
        function_pointers.glMultiTexCoord3iv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3iv), proc);
    } else {
        log.err("entry point glMultiTexCoord3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3s")) |proc| {
        function_pointers.glMultiTexCoord3s = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3s), proc);
    } else {
        log.err("entry point glMultiTexCoord3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3sv")) |proc| {
        function_pointers.glMultiTexCoord3sv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord3sv), proc);
    } else {
        log.err("entry point glMultiTexCoord3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4d")) |proc| {
        function_pointers.glMultiTexCoord4d = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4d), proc);
    } else {
        log.err("entry point glMultiTexCoord4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4dv")) |proc| {
        function_pointers.glMultiTexCoord4dv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4dv), proc);
    } else {
        log.err("entry point glMultiTexCoord4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4f")) |proc| {
        function_pointers.glMultiTexCoord4f = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4f), proc);
    } else {
        log.err("entry point glMultiTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4fv")) |proc| {
        function_pointers.glMultiTexCoord4fv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4fv), proc);
    } else {
        log.err("entry point glMultiTexCoord4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4i")) |proc| {
        function_pointers.glMultiTexCoord4i = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4i), proc);
    } else {
        log.err("entry point glMultiTexCoord4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4iv")) |proc| {
        function_pointers.glMultiTexCoord4iv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4iv), proc);
    } else {
        log.err("entry point glMultiTexCoord4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4s")) |proc| {
        function_pointers.glMultiTexCoord4s = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4s), proc);
    } else {
        log.err("entry point glMultiTexCoord4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4sv")) |proc| {
        function_pointers.glMultiTexCoord4sv = @ptrCast(@TypeOf(function_pointers.glMultiTexCoord4sv), proc);
    } else {
        log.err("entry point glMultiTexCoord4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadTransposeMatrixf")) |proc| {
        function_pointers.glLoadTransposeMatrixf = @ptrCast(@TypeOf(function_pointers.glLoadTransposeMatrixf), proc);
    } else {
        log.err("entry point glLoadTransposeMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadTransposeMatrixd")) |proc| {
        function_pointers.glLoadTransposeMatrixd = @ptrCast(@TypeOf(function_pointers.glLoadTransposeMatrixd), proc);
    } else {
        log.err("entry point glLoadTransposeMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultTransposeMatrixf")) |proc| {
        function_pointers.glMultTransposeMatrixf = @ptrCast(@TypeOf(function_pointers.glMultTransposeMatrixf), proc);
    } else {
        log.err("entry point glMultTransposeMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultTransposeMatrixd")) |proc| {
        function_pointers.glMultTransposeMatrixd = @ptrCast(@TypeOf(function_pointers.glMultTransposeMatrixd), proc);
    } else {
        log.err("entry point glMultTransposeMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFuncSeparate")) |proc| {
        function_pointers.glBlendFuncSeparate = @ptrCast(@TypeOf(function_pointers.glBlendFuncSeparate), proc);
    } else {
        log.err("entry point glBlendFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiDrawArrays")) |proc| {
        function_pointers.glMultiDrawArrays = @ptrCast(@TypeOf(function_pointers.glMultiDrawArrays), proc);
    } else {
        log.err("entry point glMultiDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiDrawElements")) |proc| {
        function_pointers.glMultiDrawElements = @ptrCast(@TypeOf(function_pointers.glMultiDrawElements), proc);
    } else {
        log.err("entry point glMultiDrawElements not found!", .{});
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
    if (get_proc_address(load_ctx, "glPointParameteri")) |proc| {
        function_pointers.glPointParameteri = @ptrCast(@TypeOf(function_pointers.glPointParameteri), proc);
    } else {
        log.err("entry point glPointParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameteriv")) |proc| {
        function_pointers.glPointParameteriv = @ptrCast(@TypeOf(function_pointers.glPointParameteriv), proc);
    } else {
        log.err("entry point glPointParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordf")) |proc| {
        function_pointers.glFogCoordf = @ptrCast(@TypeOf(function_pointers.glFogCoordf), proc);
    } else {
        log.err("entry point glFogCoordf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordfv")) |proc| {
        function_pointers.glFogCoordfv = @ptrCast(@TypeOf(function_pointers.glFogCoordfv), proc);
    } else {
        log.err("entry point glFogCoordfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordd")) |proc| {
        function_pointers.glFogCoordd = @ptrCast(@TypeOf(function_pointers.glFogCoordd), proc);
    } else {
        log.err("entry point glFogCoordd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoorddv")) |proc| {
        function_pointers.glFogCoorddv = @ptrCast(@TypeOf(function_pointers.glFogCoorddv), proc);
    } else {
        log.err("entry point glFogCoorddv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordPointer")) |proc| {
        function_pointers.glFogCoordPointer = @ptrCast(@TypeOf(function_pointers.glFogCoordPointer), proc);
    } else {
        log.err("entry point glFogCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3b")) |proc| {
        function_pointers.glSecondaryColor3b = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3b), proc);
    } else {
        log.err("entry point glSecondaryColor3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3bv")) |proc| {
        function_pointers.glSecondaryColor3bv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3bv), proc);
    } else {
        log.err("entry point glSecondaryColor3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3d")) |proc| {
        function_pointers.glSecondaryColor3d = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3d), proc);
    } else {
        log.err("entry point glSecondaryColor3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3dv")) |proc| {
        function_pointers.glSecondaryColor3dv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3dv), proc);
    } else {
        log.err("entry point glSecondaryColor3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3f")) |proc| {
        function_pointers.glSecondaryColor3f = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3f), proc);
    } else {
        log.err("entry point glSecondaryColor3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3fv")) |proc| {
        function_pointers.glSecondaryColor3fv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3fv), proc);
    } else {
        log.err("entry point glSecondaryColor3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3i")) |proc| {
        function_pointers.glSecondaryColor3i = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3i), proc);
    } else {
        log.err("entry point glSecondaryColor3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3iv")) |proc| {
        function_pointers.glSecondaryColor3iv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3iv), proc);
    } else {
        log.err("entry point glSecondaryColor3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3s")) |proc| {
        function_pointers.glSecondaryColor3s = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3s), proc);
    } else {
        log.err("entry point glSecondaryColor3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3sv")) |proc| {
        function_pointers.glSecondaryColor3sv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3sv), proc);
    } else {
        log.err("entry point glSecondaryColor3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ub")) |proc| {
        function_pointers.glSecondaryColor3ub = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3ub), proc);
    } else {
        log.err("entry point glSecondaryColor3ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ubv")) |proc| {
        function_pointers.glSecondaryColor3ubv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3ubv), proc);
    } else {
        log.err("entry point glSecondaryColor3ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ui")) |proc| {
        function_pointers.glSecondaryColor3ui = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3ui), proc);
    } else {
        log.err("entry point glSecondaryColor3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3uiv")) |proc| {
        function_pointers.glSecondaryColor3uiv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3uiv), proc);
    } else {
        log.err("entry point glSecondaryColor3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3us")) |proc| {
        function_pointers.glSecondaryColor3us = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3us), proc);
    } else {
        log.err("entry point glSecondaryColor3us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3usv")) |proc| {
        function_pointers.glSecondaryColor3usv = @ptrCast(@TypeOf(function_pointers.glSecondaryColor3usv), proc);
    } else {
        log.err("entry point glSecondaryColor3usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColorPointer")) |proc| {
        function_pointers.glSecondaryColorPointer = @ptrCast(@TypeOf(function_pointers.glSecondaryColorPointer), proc);
    } else {
        log.err("entry point glSecondaryColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2d")) |proc| {
        function_pointers.glWindowPos2d = @ptrCast(@TypeOf(function_pointers.glWindowPos2d), proc);
    } else {
        log.err("entry point glWindowPos2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2dv")) |proc| {
        function_pointers.glWindowPos2dv = @ptrCast(@TypeOf(function_pointers.glWindowPos2dv), proc);
    } else {
        log.err("entry point glWindowPos2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2f")) |proc| {
        function_pointers.glWindowPos2f = @ptrCast(@TypeOf(function_pointers.glWindowPos2f), proc);
    } else {
        log.err("entry point glWindowPos2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2fv")) |proc| {
        function_pointers.glWindowPos2fv = @ptrCast(@TypeOf(function_pointers.glWindowPos2fv), proc);
    } else {
        log.err("entry point glWindowPos2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2i")) |proc| {
        function_pointers.glWindowPos2i = @ptrCast(@TypeOf(function_pointers.glWindowPos2i), proc);
    } else {
        log.err("entry point glWindowPos2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2iv")) |proc| {
        function_pointers.glWindowPos2iv = @ptrCast(@TypeOf(function_pointers.glWindowPos2iv), proc);
    } else {
        log.err("entry point glWindowPos2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2s")) |proc| {
        function_pointers.glWindowPos2s = @ptrCast(@TypeOf(function_pointers.glWindowPos2s), proc);
    } else {
        log.err("entry point glWindowPos2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2sv")) |proc| {
        function_pointers.glWindowPos2sv = @ptrCast(@TypeOf(function_pointers.glWindowPos2sv), proc);
    } else {
        log.err("entry point glWindowPos2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3d")) |proc| {
        function_pointers.glWindowPos3d = @ptrCast(@TypeOf(function_pointers.glWindowPos3d), proc);
    } else {
        log.err("entry point glWindowPos3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3dv")) |proc| {
        function_pointers.glWindowPos3dv = @ptrCast(@TypeOf(function_pointers.glWindowPos3dv), proc);
    } else {
        log.err("entry point glWindowPos3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3f")) |proc| {
        function_pointers.glWindowPos3f = @ptrCast(@TypeOf(function_pointers.glWindowPos3f), proc);
    } else {
        log.err("entry point glWindowPos3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3fv")) |proc| {
        function_pointers.glWindowPos3fv = @ptrCast(@TypeOf(function_pointers.glWindowPos3fv), proc);
    } else {
        log.err("entry point glWindowPos3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3i")) |proc| {
        function_pointers.glWindowPos3i = @ptrCast(@TypeOf(function_pointers.glWindowPos3i), proc);
    } else {
        log.err("entry point glWindowPos3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3iv")) |proc| {
        function_pointers.glWindowPos3iv = @ptrCast(@TypeOf(function_pointers.glWindowPos3iv), proc);
    } else {
        log.err("entry point glWindowPos3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3s")) |proc| {
        function_pointers.glWindowPos3s = @ptrCast(@TypeOf(function_pointers.glWindowPos3s), proc);
    } else {
        log.err("entry point glWindowPos3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3sv")) |proc| {
        function_pointers.glWindowPos3sv = @ptrCast(@TypeOf(function_pointers.glWindowPos3sv), proc);
    } else {
        log.err("entry point glWindowPos3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendColor")) |proc| {
        function_pointers.glBlendColor = @ptrCast(@TypeOf(function_pointers.glBlendColor), proc);
    } else {
        log.err("entry point glBlendColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquation")) |proc| {
        function_pointers.glBlendEquation = @ptrCast(@TypeOf(function_pointers.glBlendEquation), proc);
    } else {
        log.err("entry point glBlendEquation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenQueries")) |proc| {
        function_pointers.glGenQueries = @ptrCast(@TypeOf(function_pointers.glGenQueries), proc);
    } else {
        log.err("entry point glGenQueries not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteQueries")) |proc| {
        function_pointers.glDeleteQueries = @ptrCast(@TypeOf(function_pointers.glDeleteQueries), proc);
    } else {
        log.err("entry point glDeleteQueries not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsQuery")) |proc| {
        function_pointers.glIsQuery = @ptrCast(@TypeOf(function_pointers.glIsQuery), proc);
    } else {
        log.err("entry point glIsQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginQuery")) |proc| {
        function_pointers.glBeginQuery = @ptrCast(@TypeOf(function_pointers.glBeginQuery), proc);
    } else {
        log.err("entry point glBeginQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndQuery")) |proc| {
        function_pointers.glEndQuery = @ptrCast(@TypeOf(function_pointers.glEndQuery), proc);
    } else {
        log.err("entry point glEndQuery not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryiv")) |proc| {
        function_pointers.glGetQueryiv = @ptrCast(@TypeOf(function_pointers.glGetQueryiv), proc);
    } else {
        log.err("entry point glGetQueryiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryObjectiv")) |proc| {
        function_pointers.glGetQueryObjectiv = @ptrCast(@TypeOf(function_pointers.glGetQueryObjectiv), proc);
    } else {
        log.err("entry point glGetQueryObjectiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryObjectuiv")) |proc| {
        function_pointers.glGetQueryObjectuiv = @ptrCast(@TypeOf(function_pointers.glGetQueryObjectuiv), proc);
    } else {
        log.err("entry point glGetQueryObjectuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(@TypeOf(function_pointers.glBindBuffer), proc);
    } else {
        log.err("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(@TypeOf(function_pointers.glDeleteBuffers), proc);
    } else {
        log.err("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(@TypeOf(function_pointers.glGenBuffers), proc);
    } else {
        log.err("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(@TypeOf(function_pointers.glIsBuffer), proc);
    } else {
        log.err("entry point glIsBuffer not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetBufferSubData")) |proc| {
        function_pointers.glGetBufferSubData = @ptrCast(@TypeOf(function_pointers.glGetBufferSubData), proc);
    } else {
        log.err("entry point glGetBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapBuffer")) |proc| {
        function_pointers.glMapBuffer = @ptrCast(@TypeOf(function_pointers.glMapBuffer), proc);
    } else {
        log.err("entry point glMapBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUnmapBuffer")) |proc| {
        function_pointers.glUnmapBuffer = @ptrCast(@TypeOf(function_pointers.glUnmapBuffer), proc);
    } else {
        log.err("entry point glUnmapBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(@TypeOf(function_pointers.glGetBufferParameteriv), proc);
    } else {
        log.err("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferPointerv")) |proc| {
        function_pointers.glGetBufferPointerv = @ptrCast(@TypeOf(function_pointers.glGetBufferPointerv), proc);
    } else {
        log.err("entry point glGetBufferPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquationSeparate")) |proc| {
        function_pointers.glBlendEquationSeparate = @ptrCast(@TypeOf(function_pointers.glBlendEquationSeparate), proc);
    } else {
        log.err("entry point glBlendEquationSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawBuffers")) |proc| {
        function_pointers.glDrawBuffers = @ptrCast(@TypeOf(function_pointers.glDrawBuffers), proc);
    } else {
        log.err("entry point glDrawBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOpSeparate")) |proc| {
        function_pointers.glStencilOpSeparate = @ptrCast(@TypeOf(function_pointers.glStencilOpSeparate), proc);
    } else {
        log.err("entry point glStencilOpSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFuncSeparate")) |proc| {
        function_pointers.glStencilFuncSeparate = @ptrCast(@TypeOf(function_pointers.glStencilFuncSeparate), proc);
    } else {
        log.err("entry point glStencilFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMaskSeparate")) |proc| {
        function_pointers.glStencilMaskSeparate = @ptrCast(@TypeOf(function_pointers.glStencilMaskSeparate), proc);
    } else {
        log.err("entry point glStencilMaskSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAttachShader")) |proc| {
        function_pointers.glAttachShader = @ptrCast(@TypeOf(function_pointers.glAttachShader), proc);
    } else {
        log.err("entry point glAttachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindAttribLocation")) |proc| {
        function_pointers.glBindAttribLocation = @ptrCast(@TypeOf(function_pointers.glBindAttribLocation), proc);
    } else {
        log.err("entry point glBindAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompileShader")) |proc| {
        function_pointers.glCompileShader = @ptrCast(@TypeOf(function_pointers.glCompileShader), proc);
    } else {
        log.err("entry point glCompileShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateProgram")) |proc| {
        function_pointers.glCreateProgram = @ptrCast(@TypeOf(function_pointers.glCreateProgram), proc);
    } else {
        log.err("entry point glCreateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateShader")) |proc| {
        function_pointers.glCreateShader = @ptrCast(@TypeOf(function_pointers.glCreateShader), proc);
    } else {
        log.err("entry point glCreateShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteProgram")) |proc| {
        function_pointers.glDeleteProgram = @ptrCast(@TypeOf(function_pointers.glDeleteProgram), proc);
    } else {
        log.err("entry point glDeleteProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteShader")) |proc| {
        function_pointers.glDeleteShader = @ptrCast(@TypeOf(function_pointers.glDeleteShader), proc);
    } else {
        log.err("entry point glDeleteShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDetachShader")) |proc| {
        function_pointers.glDetachShader = @ptrCast(@TypeOf(function_pointers.glDetachShader), proc);
    } else {
        log.err("entry point glDetachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableVertexAttribArray")) |proc| {
        function_pointers.glDisableVertexAttribArray = @ptrCast(@TypeOf(function_pointers.glDisableVertexAttribArray), proc);
    } else {
        log.err("entry point glDisableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableVertexAttribArray")) |proc| {
        function_pointers.glEnableVertexAttribArray = @ptrCast(@TypeOf(function_pointers.glEnableVertexAttribArray), proc);
    } else {
        log.err("entry point glEnableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveAttrib")) |proc| {
        function_pointers.glGetActiveAttrib = @ptrCast(@TypeOf(function_pointers.glGetActiveAttrib), proc);
    } else {
        log.err("entry point glGetActiveAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniform")) |proc| {
        function_pointers.glGetActiveUniform = @ptrCast(@TypeOf(function_pointers.glGetActiveUniform), proc);
    } else {
        log.err("entry point glGetActiveUniform not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttachedShaders")) |proc| {
        function_pointers.glGetAttachedShaders = @ptrCast(@TypeOf(function_pointers.glGetAttachedShaders), proc);
    } else {
        log.err("entry point glGetAttachedShaders not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttribLocation")) |proc| {
        function_pointers.glGetAttribLocation = @ptrCast(@TypeOf(function_pointers.glGetAttribLocation), proc);
    } else {
        log.err("entry point glGetAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramiv")) |proc| {
        function_pointers.glGetProgramiv = @ptrCast(@TypeOf(function_pointers.glGetProgramiv), proc);
    } else {
        log.err("entry point glGetProgramiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramInfoLog")) |proc| {
        function_pointers.glGetProgramInfoLog = @ptrCast(@TypeOf(function_pointers.glGetProgramInfoLog), proc);
    } else {
        log.err("entry point glGetProgramInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderiv")) |proc| {
        function_pointers.glGetShaderiv = @ptrCast(@TypeOf(function_pointers.glGetShaderiv), proc);
    } else {
        log.err("entry point glGetShaderiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderInfoLog")) |proc| {
        function_pointers.glGetShaderInfoLog = @ptrCast(@TypeOf(function_pointers.glGetShaderInfoLog), proc);
    } else {
        log.err("entry point glGetShaderInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderSource")) |proc| {
        function_pointers.glGetShaderSource = @ptrCast(@TypeOf(function_pointers.glGetShaderSource), proc);
    } else {
        log.err("entry point glGetShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformLocation")) |proc| {
        function_pointers.glGetUniformLocation = @ptrCast(@TypeOf(function_pointers.glGetUniformLocation), proc);
    } else {
        log.err("entry point glGetUniformLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformfv")) |proc| {
        function_pointers.glGetUniformfv = @ptrCast(@TypeOf(function_pointers.glGetUniformfv), proc);
    } else {
        log.err("entry point glGetUniformfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformiv")) |proc| {
        function_pointers.glGetUniformiv = @ptrCast(@TypeOf(function_pointers.glGetUniformiv), proc);
    } else {
        log.err("entry point glGetUniformiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribdv")) |proc| {
        function_pointers.glGetVertexAttribdv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribdv), proc);
    } else {
        log.err("entry point glGetVertexAttribdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribfv")) |proc| {
        function_pointers.glGetVertexAttribfv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribfv), proc);
    } else {
        log.err("entry point glGetVertexAttribfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribiv")) |proc| {
        function_pointers.glGetVertexAttribiv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribiv), proc);
    } else {
        log.err("entry point glGetVertexAttribiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribPointerv")) |proc| {
        function_pointers.glGetVertexAttribPointerv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribPointerv), proc);
    } else {
        log.err("entry point glGetVertexAttribPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsProgram")) |proc| {
        function_pointers.glIsProgram = @ptrCast(@TypeOf(function_pointers.glIsProgram), proc);
    } else {
        log.err("entry point glIsProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsShader")) |proc| {
        function_pointers.glIsShader = @ptrCast(@TypeOf(function_pointers.glIsShader), proc);
    } else {
        log.err("entry point glIsShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLinkProgram")) |proc| {
        function_pointers.glLinkProgram = @ptrCast(@TypeOf(function_pointers.glLinkProgram), proc);
    } else {
        log.err("entry point glLinkProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderSource")) |proc| {
        function_pointers.glShaderSource = @ptrCast(@TypeOf(function_pointers.glShaderSource), proc);
    } else {
        log.err("entry point glShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUseProgram")) |proc| {
        function_pointers.glUseProgram = @ptrCast(@TypeOf(function_pointers.glUseProgram), proc);
    } else {
        log.err("entry point glUseProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1f")) |proc| {
        function_pointers.glUniform1f = @ptrCast(@TypeOf(function_pointers.glUniform1f), proc);
    } else {
        log.err("entry point glUniform1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2f")) |proc| {
        function_pointers.glUniform2f = @ptrCast(@TypeOf(function_pointers.glUniform2f), proc);
    } else {
        log.err("entry point glUniform2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3f")) |proc| {
        function_pointers.glUniform3f = @ptrCast(@TypeOf(function_pointers.glUniform3f), proc);
    } else {
        log.err("entry point glUniform3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4f")) |proc| {
        function_pointers.glUniform4f = @ptrCast(@TypeOf(function_pointers.glUniform4f), proc);
    } else {
        log.err("entry point glUniform4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1i")) |proc| {
        function_pointers.glUniform1i = @ptrCast(@TypeOf(function_pointers.glUniform1i), proc);
    } else {
        log.err("entry point glUniform1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2i")) |proc| {
        function_pointers.glUniform2i = @ptrCast(@TypeOf(function_pointers.glUniform2i), proc);
    } else {
        log.err("entry point glUniform2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3i")) |proc| {
        function_pointers.glUniform3i = @ptrCast(@TypeOf(function_pointers.glUniform3i), proc);
    } else {
        log.err("entry point glUniform3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4i")) |proc| {
        function_pointers.glUniform4i = @ptrCast(@TypeOf(function_pointers.glUniform4i), proc);
    } else {
        log.err("entry point glUniform4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1fv")) |proc| {
        function_pointers.glUniform1fv = @ptrCast(@TypeOf(function_pointers.glUniform1fv), proc);
    } else {
        log.err("entry point glUniform1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2fv")) |proc| {
        function_pointers.glUniform2fv = @ptrCast(@TypeOf(function_pointers.glUniform2fv), proc);
    } else {
        log.err("entry point glUniform2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3fv")) |proc| {
        function_pointers.glUniform3fv = @ptrCast(@TypeOf(function_pointers.glUniform3fv), proc);
    } else {
        log.err("entry point glUniform3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4fv")) |proc| {
        function_pointers.glUniform4fv = @ptrCast(@TypeOf(function_pointers.glUniform4fv), proc);
    } else {
        log.err("entry point glUniform4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1iv")) |proc| {
        function_pointers.glUniform1iv = @ptrCast(@TypeOf(function_pointers.glUniform1iv), proc);
    } else {
        log.err("entry point glUniform1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2iv")) |proc| {
        function_pointers.glUniform2iv = @ptrCast(@TypeOf(function_pointers.glUniform2iv), proc);
    } else {
        log.err("entry point glUniform2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3iv")) |proc| {
        function_pointers.glUniform3iv = @ptrCast(@TypeOf(function_pointers.glUniform3iv), proc);
    } else {
        log.err("entry point glUniform3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4iv")) |proc| {
        function_pointers.glUniform4iv = @ptrCast(@TypeOf(function_pointers.glUniform4iv), proc);
    } else {
        log.err("entry point glUniform4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2fv")) |proc| {
        function_pointers.glUniformMatrix2fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix2fv), proc);
    } else {
        log.err("entry point glUniformMatrix2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3fv")) |proc| {
        function_pointers.glUniformMatrix3fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix3fv), proc);
    } else {
        log.err("entry point glUniformMatrix3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4fv")) |proc| {
        function_pointers.glUniformMatrix4fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix4fv), proc);
    } else {
        log.err("entry point glUniformMatrix4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glValidateProgram")) |proc| {
        function_pointers.glValidateProgram = @ptrCast(@TypeOf(function_pointers.glValidateProgram), proc);
    } else {
        log.err("entry point glValidateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1d")) |proc| {
        function_pointers.glVertexAttrib1d = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1d), proc);
    } else {
        log.err("entry point glVertexAttrib1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1dv")) |proc| {
        function_pointers.glVertexAttrib1dv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1dv), proc);
    } else {
        log.err("entry point glVertexAttrib1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1f")) |proc| {
        function_pointers.glVertexAttrib1f = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1f), proc);
    } else {
        log.err("entry point glVertexAttrib1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1fv")) |proc| {
        function_pointers.glVertexAttrib1fv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1fv), proc);
    } else {
        log.err("entry point glVertexAttrib1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1s")) |proc| {
        function_pointers.glVertexAttrib1s = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1s), proc);
    } else {
        log.err("entry point glVertexAttrib1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1sv")) |proc| {
        function_pointers.glVertexAttrib1sv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib1sv), proc);
    } else {
        log.err("entry point glVertexAttrib1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2d")) |proc| {
        function_pointers.glVertexAttrib2d = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2d), proc);
    } else {
        log.err("entry point glVertexAttrib2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2dv")) |proc| {
        function_pointers.glVertexAttrib2dv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2dv), proc);
    } else {
        log.err("entry point glVertexAttrib2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2f")) |proc| {
        function_pointers.glVertexAttrib2f = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2f), proc);
    } else {
        log.err("entry point glVertexAttrib2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2fv")) |proc| {
        function_pointers.glVertexAttrib2fv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2fv), proc);
    } else {
        log.err("entry point glVertexAttrib2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2s")) |proc| {
        function_pointers.glVertexAttrib2s = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2s), proc);
    } else {
        log.err("entry point glVertexAttrib2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2sv")) |proc| {
        function_pointers.glVertexAttrib2sv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib2sv), proc);
    } else {
        log.err("entry point glVertexAttrib2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3d")) |proc| {
        function_pointers.glVertexAttrib3d = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3d), proc);
    } else {
        log.err("entry point glVertexAttrib3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3dv")) |proc| {
        function_pointers.glVertexAttrib3dv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3dv), proc);
    } else {
        log.err("entry point glVertexAttrib3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3f")) |proc| {
        function_pointers.glVertexAttrib3f = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3f), proc);
    } else {
        log.err("entry point glVertexAttrib3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3fv")) |proc| {
        function_pointers.glVertexAttrib3fv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3fv), proc);
    } else {
        log.err("entry point glVertexAttrib3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3s")) |proc| {
        function_pointers.glVertexAttrib3s = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3s), proc);
    } else {
        log.err("entry point glVertexAttrib3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3sv")) |proc| {
        function_pointers.glVertexAttrib3sv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib3sv), proc);
    } else {
        log.err("entry point glVertexAttrib3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nbv")) |proc| {
        function_pointers.glVertexAttrib4Nbv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nbv), proc);
    } else {
        log.err("entry point glVertexAttrib4Nbv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Niv")) |proc| {
        function_pointers.glVertexAttrib4Niv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Niv), proc);
    } else {
        log.err("entry point glVertexAttrib4Niv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nsv")) |proc| {
        function_pointers.glVertexAttrib4Nsv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nsv), proc);
    } else {
        log.err("entry point glVertexAttrib4Nsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nub")) |proc| {
        function_pointers.glVertexAttrib4Nub = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nub), proc);
    } else {
        log.err("entry point glVertexAttrib4Nub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nubv")) |proc| {
        function_pointers.glVertexAttrib4Nubv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nubv), proc);
    } else {
        log.err("entry point glVertexAttrib4Nubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nuiv")) |proc| {
        function_pointers.glVertexAttrib4Nuiv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nuiv), proc);
    } else {
        log.err("entry point glVertexAttrib4Nuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nusv")) |proc| {
        function_pointers.glVertexAttrib4Nusv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4Nusv), proc);
    } else {
        log.err("entry point glVertexAttrib4Nusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4bv")) |proc| {
        function_pointers.glVertexAttrib4bv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4bv), proc);
    } else {
        log.err("entry point glVertexAttrib4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4d")) |proc| {
        function_pointers.glVertexAttrib4d = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4d), proc);
    } else {
        log.err("entry point glVertexAttrib4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4dv")) |proc| {
        function_pointers.glVertexAttrib4dv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4dv), proc);
    } else {
        log.err("entry point glVertexAttrib4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4f")) |proc| {
        function_pointers.glVertexAttrib4f = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4f), proc);
    } else {
        log.err("entry point glVertexAttrib4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4fv")) |proc| {
        function_pointers.glVertexAttrib4fv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4fv), proc);
    } else {
        log.err("entry point glVertexAttrib4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4iv")) |proc| {
        function_pointers.glVertexAttrib4iv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4iv), proc);
    } else {
        log.err("entry point glVertexAttrib4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4s")) |proc| {
        function_pointers.glVertexAttrib4s = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4s), proc);
    } else {
        log.err("entry point glVertexAttrib4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4sv")) |proc| {
        function_pointers.glVertexAttrib4sv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4sv), proc);
    } else {
        log.err("entry point glVertexAttrib4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4ubv")) |proc| {
        function_pointers.glVertexAttrib4ubv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4ubv), proc);
    } else {
        log.err("entry point glVertexAttrib4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4uiv")) |proc| {
        function_pointers.glVertexAttrib4uiv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4uiv), proc);
    } else {
        log.err("entry point glVertexAttrib4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4usv")) |proc| {
        function_pointers.glVertexAttrib4usv = @ptrCast(@TypeOf(function_pointers.glVertexAttrib4usv), proc);
    } else {
        log.err("entry point glVertexAttrib4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribPointer")) |proc| {
        function_pointers.glVertexAttribPointer = @ptrCast(@TypeOf(function_pointers.glVertexAttribPointer), proc);
    } else {
        log.err("entry point glVertexAttribPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2x3fv")) |proc| {
        function_pointers.glUniformMatrix2x3fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix2x3fv), proc);
    } else {
        log.err("entry point glUniformMatrix2x3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3x2fv")) |proc| {
        function_pointers.glUniformMatrix3x2fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix3x2fv), proc);
    } else {
        log.err("entry point glUniformMatrix3x2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2x4fv")) |proc| {
        function_pointers.glUniformMatrix2x4fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix2x4fv), proc);
    } else {
        log.err("entry point glUniformMatrix2x4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4x2fv")) |proc| {
        function_pointers.glUniformMatrix4x2fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix4x2fv), proc);
    } else {
        log.err("entry point glUniformMatrix4x2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3x4fv")) |proc| {
        function_pointers.glUniformMatrix3x4fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix3x4fv), proc);
    } else {
        log.err("entry point glUniformMatrix3x4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4x3fv")) |proc| {
        function_pointers.glUniformMatrix4x3fv = @ptrCast(@TypeOf(function_pointers.glUniformMatrix4x3fv), proc);
    } else {
        log.err("entry point glUniformMatrix4x3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMaski")) |proc| {
        function_pointers.glColorMaski = @ptrCast(@TypeOf(function_pointers.glColorMaski), proc);
    } else {
        log.err("entry point glColorMaski not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleani_v")) |proc| {
        function_pointers.glGetBooleani_v = @ptrCast(@TypeOf(function_pointers.glGetBooleani_v), proc);
    } else {
        log.err("entry point glGetBooleani_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegeri_v")) |proc| {
        function_pointers.glGetIntegeri_v = @ptrCast(@TypeOf(function_pointers.glGetIntegeri_v), proc);
    } else {
        log.err("entry point glGetIntegeri_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnablei")) |proc| {
        function_pointers.glEnablei = @ptrCast(@TypeOf(function_pointers.glEnablei), proc);
    } else {
        log.err("entry point glEnablei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisablei")) |proc| {
        function_pointers.glDisablei = @ptrCast(@TypeOf(function_pointers.glDisablei), proc);
    } else {
        log.err("entry point glDisablei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabledi")) |proc| {
        function_pointers.glIsEnabledi = @ptrCast(@TypeOf(function_pointers.glIsEnabledi), proc);
    } else {
        log.err("entry point glIsEnabledi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginTransformFeedback")) |proc| {
        function_pointers.glBeginTransformFeedback = @ptrCast(@TypeOf(function_pointers.glBeginTransformFeedback), proc);
    } else {
        log.err("entry point glBeginTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndTransformFeedback")) |proc| {
        function_pointers.glEndTransformFeedback = @ptrCast(@TypeOf(function_pointers.glEndTransformFeedback), proc);
    } else {
        log.err("entry point glEndTransformFeedback not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBufferRange")) |proc| {
        function_pointers.glBindBufferRange = @ptrCast(@TypeOf(function_pointers.glBindBufferRange), proc);
    } else {
        log.err("entry point glBindBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBufferBase")) |proc| {
        function_pointers.glBindBufferBase = @ptrCast(@TypeOf(function_pointers.glBindBufferBase), proc);
    } else {
        log.err("entry point glBindBufferBase not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTransformFeedbackVaryings")) |proc| {
        function_pointers.glTransformFeedbackVaryings = @ptrCast(@TypeOf(function_pointers.glTransformFeedbackVaryings), proc);
    } else {
        log.err("entry point glTransformFeedbackVaryings not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTransformFeedbackVarying")) |proc| {
        function_pointers.glGetTransformFeedbackVarying = @ptrCast(@TypeOf(function_pointers.glGetTransformFeedbackVarying), proc);
    } else {
        log.err("entry point glGetTransformFeedbackVarying not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClampColor")) |proc| {
        function_pointers.glClampColor = @ptrCast(@TypeOf(function_pointers.glClampColor), proc);
    } else {
        log.err("entry point glClampColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginConditionalRender")) |proc| {
        function_pointers.glBeginConditionalRender = @ptrCast(@TypeOf(function_pointers.glBeginConditionalRender), proc);
    } else {
        log.err("entry point glBeginConditionalRender not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndConditionalRender")) |proc| {
        function_pointers.glEndConditionalRender = @ptrCast(@TypeOf(function_pointers.glEndConditionalRender), proc);
    } else {
        log.err("entry point glEndConditionalRender not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribIPointer")) |proc| {
        function_pointers.glVertexAttribIPointer = @ptrCast(@TypeOf(function_pointers.glVertexAttribIPointer), proc);
    } else {
        log.err("entry point glVertexAttribIPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribIiv")) |proc| {
        function_pointers.glGetVertexAttribIiv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribIiv), proc);
    } else {
        log.err("entry point glGetVertexAttribIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribIuiv")) |proc| {
        function_pointers.glGetVertexAttribIuiv = @ptrCast(@TypeOf(function_pointers.glGetVertexAttribIuiv), proc);
    } else {
        log.err("entry point glGetVertexAttribIuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1i")) |proc| {
        function_pointers.glVertexAttribI1i = @ptrCast(@TypeOf(function_pointers.glVertexAttribI1i), proc);
    } else {
        log.err("entry point glVertexAttribI1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2i")) |proc| {
        function_pointers.glVertexAttribI2i = @ptrCast(@TypeOf(function_pointers.glVertexAttribI2i), proc);
    } else {
        log.err("entry point glVertexAttribI2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3i")) |proc| {
        function_pointers.glVertexAttribI3i = @ptrCast(@TypeOf(function_pointers.glVertexAttribI3i), proc);
    } else {
        log.err("entry point glVertexAttribI3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4i")) |proc| {
        function_pointers.glVertexAttribI4i = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4i), proc);
    } else {
        log.err("entry point glVertexAttribI4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1ui")) |proc| {
        function_pointers.glVertexAttribI1ui = @ptrCast(@TypeOf(function_pointers.glVertexAttribI1ui), proc);
    } else {
        log.err("entry point glVertexAttribI1ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2ui")) |proc| {
        function_pointers.glVertexAttribI2ui = @ptrCast(@TypeOf(function_pointers.glVertexAttribI2ui), proc);
    } else {
        log.err("entry point glVertexAttribI2ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3ui")) |proc| {
        function_pointers.glVertexAttribI3ui = @ptrCast(@TypeOf(function_pointers.glVertexAttribI3ui), proc);
    } else {
        log.err("entry point glVertexAttribI3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4ui")) |proc| {
        function_pointers.glVertexAttribI4ui = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4ui), proc);
    } else {
        log.err("entry point glVertexAttribI4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1iv")) |proc| {
        function_pointers.glVertexAttribI1iv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI1iv), proc);
    } else {
        log.err("entry point glVertexAttribI1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2iv")) |proc| {
        function_pointers.glVertexAttribI2iv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI2iv), proc);
    } else {
        log.err("entry point glVertexAttribI2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3iv")) |proc| {
        function_pointers.glVertexAttribI3iv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI3iv), proc);
    } else {
        log.err("entry point glVertexAttribI3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4iv")) |proc| {
        function_pointers.glVertexAttribI4iv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4iv), proc);
    } else {
        log.err("entry point glVertexAttribI4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1uiv")) |proc| {
        function_pointers.glVertexAttribI1uiv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI1uiv), proc);
    } else {
        log.err("entry point glVertexAttribI1uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2uiv")) |proc| {
        function_pointers.glVertexAttribI2uiv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI2uiv), proc);
    } else {
        log.err("entry point glVertexAttribI2uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3uiv")) |proc| {
        function_pointers.glVertexAttribI3uiv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI3uiv), proc);
    } else {
        log.err("entry point glVertexAttribI3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4uiv")) |proc| {
        function_pointers.glVertexAttribI4uiv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4uiv), proc);
    } else {
        log.err("entry point glVertexAttribI4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4bv")) |proc| {
        function_pointers.glVertexAttribI4bv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4bv), proc);
    } else {
        log.err("entry point glVertexAttribI4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4sv")) |proc| {
        function_pointers.glVertexAttribI4sv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4sv), proc);
    } else {
        log.err("entry point glVertexAttribI4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4ubv")) |proc| {
        function_pointers.glVertexAttribI4ubv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4ubv), proc);
    } else {
        log.err("entry point glVertexAttribI4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4usv")) |proc| {
        function_pointers.glVertexAttribI4usv = @ptrCast(@TypeOf(function_pointers.glVertexAttribI4usv), proc);
    } else {
        log.err("entry point glVertexAttribI4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformuiv")) |proc| {
        function_pointers.glGetUniformuiv = @ptrCast(@TypeOf(function_pointers.glGetUniformuiv), proc);
    } else {
        log.err("entry point glGetUniformuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFragDataLocation")) |proc| {
        function_pointers.glBindFragDataLocation = @ptrCast(@TypeOf(function_pointers.glBindFragDataLocation), proc);
    } else {
        log.err("entry point glBindFragDataLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFragDataLocation")) |proc| {
        function_pointers.glGetFragDataLocation = @ptrCast(@TypeOf(function_pointers.glGetFragDataLocation), proc);
    } else {
        log.err("entry point glGetFragDataLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1ui")) |proc| {
        function_pointers.glUniform1ui = @ptrCast(@TypeOf(function_pointers.glUniform1ui), proc);
    } else {
        log.err("entry point glUniform1ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2ui")) |proc| {
        function_pointers.glUniform2ui = @ptrCast(@TypeOf(function_pointers.glUniform2ui), proc);
    } else {
        log.err("entry point glUniform2ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3ui")) |proc| {
        function_pointers.glUniform3ui = @ptrCast(@TypeOf(function_pointers.glUniform3ui), proc);
    } else {
        log.err("entry point glUniform3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4ui")) |proc| {
        function_pointers.glUniform4ui = @ptrCast(@TypeOf(function_pointers.glUniform4ui), proc);
    } else {
        log.err("entry point glUniform4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1uiv")) |proc| {
        function_pointers.glUniform1uiv = @ptrCast(@TypeOf(function_pointers.glUniform1uiv), proc);
    } else {
        log.err("entry point glUniform1uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2uiv")) |proc| {
        function_pointers.glUniform2uiv = @ptrCast(@TypeOf(function_pointers.glUniform2uiv), proc);
    } else {
        log.err("entry point glUniform2uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3uiv")) |proc| {
        function_pointers.glUniform3uiv = @ptrCast(@TypeOf(function_pointers.glUniform3uiv), proc);
    } else {
        log.err("entry point glUniform3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4uiv")) |proc| {
        function_pointers.glUniform4uiv = @ptrCast(@TypeOf(function_pointers.glUniform4uiv), proc);
    } else {
        log.err("entry point glUniform4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterIiv")) |proc| {
        function_pointers.glTexParameterIiv = @ptrCast(@TypeOf(function_pointers.glTexParameterIiv), proc);
    } else {
        log.err("entry point glTexParameterIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterIuiv")) |proc| {
        function_pointers.glTexParameterIuiv = @ptrCast(@TypeOf(function_pointers.glTexParameterIuiv), proc);
    } else {
        log.err("entry point glTexParameterIuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterIiv")) |proc| {
        function_pointers.glGetTexParameterIiv = @ptrCast(@TypeOf(function_pointers.glGetTexParameterIiv), proc);
    } else {
        log.err("entry point glGetTexParameterIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterIuiv")) |proc| {
        function_pointers.glGetTexParameterIuiv = @ptrCast(@TypeOf(function_pointers.glGetTexParameterIuiv), proc);
    } else {
        log.err("entry point glGetTexParameterIuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferiv")) |proc| {
        function_pointers.glClearBufferiv = @ptrCast(@TypeOf(function_pointers.glClearBufferiv), proc);
    } else {
        log.err("entry point glClearBufferiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferuiv")) |proc| {
        function_pointers.glClearBufferuiv = @ptrCast(@TypeOf(function_pointers.glClearBufferuiv), proc);
    } else {
        log.err("entry point glClearBufferuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferfv")) |proc| {
        function_pointers.glClearBufferfv = @ptrCast(@TypeOf(function_pointers.glClearBufferfv), proc);
    } else {
        log.err("entry point glClearBufferfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearBufferfi")) |proc| {
        function_pointers.glClearBufferfi = @ptrCast(@TypeOf(function_pointers.glClearBufferfi), proc);
    } else {
        log.err("entry point glClearBufferfi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetStringi")) |proc| {
        function_pointers.glGetStringi = @ptrCast(@TypeOf(function_pointers.glGetStringi), proc);
    } else {
        log.err("entry point glGetStringi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsRenderbuffer")) |proc| {
        function_pointers.glIsRenderbuffer = @ptrCast(@TypeOf(function_pointers.glIsRenderbuffer), proc);
    } else {
        log.err("entry point glIsRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindRenderbuffer")) |proc| {
        function_pointers.glBindRenderbuffer = @ptrCast(@TypeOf(function_pointers.glBindRenderbuffer), proc);
    } else {
        log.err("entry point glBindRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteRenderbuffers")) |proc| {
        function_pointers.glDeleteRenderbuffers = @ptrCast(@TypeOf(function_pointers.glDeleteRenderbuffers), proc);
    } else {
        log.err("entry point glDeleteRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenRenderbuffers")) |proc| {
        function_pointers.glGenRenderbuffers = @ptrCast(@TypeOf(function_pointers.glGenRenderbuffers), proc);
    } else {
        log.err("entry point glGenRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorage")) |proc| {
        function_pointers.glRenderbufferStorage = @ptrCast(@TypeOf(function_pointers.glRenderbufferStorage), proc);
    } else {
        log.err("entry point glRenderbufferStorage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetRenderbufferParameteriv")) |proc| {
        function_pointers.glGetRenderbufferParameteriv = @ptrCast(@TypeOf(function_pointers.glGetRenderbufferParameteriv), proc);
    } else {
        log.err("entry point glGetRenderbufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsFramebuffer")) |proc| {
        function_pointers.glIsFramebuffer = @ptrCast(@TypeOf(function_pointers.glIsFramebuffer), proc);
    } else {
        log.err("entry point glIsFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFramebuffer")) |proc| {
        function_pointers.glBindFramebuffer = @ptrCast(@TypeOf(function_pointers.glBindFramebuffer), proc);
    } else {
        log.err("entry point glBindFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteFramebuffers")) |proc| {
        function_pointers.glDeleteFramebuffers = @ptrCast(@TypeOf(function_pointers.glDeleteFramebuffers), proc);
    } else {
        log.err("entry point glDeleteFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenFramebuffers")) |proc| {
        function_pointers.glGenFramebuffers = @ptrCast(@TypeOf(function_pointers.glGenFramebuffers), proc);
    } else {
        log.err("entry point glGenFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCheckFramebufferStatus")) |proc| {
        function_pointers.glCheckFramebufferStatus = @ptrCast(@TypeOf(function_pointers.glCheckFramebufferStatus), proc);
    } else {
        log.err("entry point glCheckFramebufferStatus not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture1D")) |proc| {
        function_pointers.glFramebufferTexture1D = @ptrCast(@TypeOf(function_pointers.glFramebufferTexture1D), proc);
    } else {
        log.err("entry point glFramebufferTexture1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture2D")) |proc| {
        function_pointers.glFramebufferTexture2D = @ptrCast(@TypeOf(function_pointers.glFramebufferTexture2D), proc);
    } else {
        log.err("entry point glFramebufferTexture2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture3D")) |proc| {
        function_pointers.glFramebufferTexture3D = @ptrCast(@TypeOf(function_pointers.glFramebufferTexture3D), proc);
    } else {
        log.err("entry point glFramebufferTexture3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferRenderbuffer")) |proc| {
        function_pointers.glFramebufferRenderbuffer = @ptrCast(@TypeOf(function_pointers.glFramebufferRenderbuffer), proc);
    } else {
        log.err("entry point glFramebufferRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFramebufferAttachmentParameteriv")) |proc| {
        function_pointers.glGetFramebufferAttachmentParameteriv = @ptrCast(@TypeOf(function_pointers.glGetFramebufferAttachmentParameteriv), proc);
    } else {
        log.err("entry point glGetFramebufferAttachmentParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenerateMipmap")) |proc| {
        function_pointers.glGenerateMipmap = @ptrCast(@TypeOf(function_pointers.glGenerateMipmap), proc);
    } else {
        log.err("entry point glGenerateMipmap not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlitFramebuffer")) |proc| {
        function_pointers.glBlitFramebuffer = @ptrCast(@TypeOf(function_pointers.glBlitFramebuffer), proc);
    } else {
        log.err("entry point glBlitFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorageMultisample")) |proc| {
        function_pointers.glRenderbufferStorageMultisample = @ptrCast(@TypeOf(function_pointers.glRenderbufferStorageMultisample), proc);
    } else {
        log.err("entry point glRenderbufferStorageMultisample not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTextureLayer")) |proc| {
        function_pointers.glFramebufferTextureLayer = @ptrCast(@TypeOf(function_pointers.glFramebufferTextureLayer), proc);
    } else {
        log.err("entry point glFramebufferTextureLayer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapBufferRange")) |proc| {
        function_pointers.glMapBufferRange = @ptrCast(@TypeOf(function_pointers.glMapBufferRange), proc);
    } else {
        log.err("entry point glMapBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlushMappedBufferRange")) |proc| {
        function_pointers.glFlushMappedBufferRange = @ptrCast(@TypeOf(function_pointers.glFlushMappedBufferRange), proc);
    } else {
        log.err("entry point glFlushMappedBufferRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindVertexArray")) |proc| {
        function_pointers.glBindVertexArray = @ptrCast(@TypeOf(function_pointers.glBindVertexArray), proc);
    } else {
        log.err("entry point glBindVertexArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteVertexArrays")) |proc| {
        function_pointers.glDeleteVertexArrays = @ptrCast(@TypeOf(function_pointers.glDeleteVertexArrays), proc);
    } else {
        log.err("entry point glDeleteVertexArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenVertexArrays")) |proc| {
        function_pointers.glGenVertexArrays = @ptrCast(@TypeOf(function_pointers.glGenVertexArrays), proc);
    } else {
        log.err("entry point glGenVertexArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsVertexArray")) |proc| {
        function_pointers.glIsVertexArray = @ptrCast(@TypeOf(function_pointers.glIsVertexArray), proc);
    } else {
        log.err("entry point glIsVertexArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArraysInstanced")) |proc| {
        function_pointers.glDrawArraysInstanced = @ptrCast(@TypeOf(function_pointers.glDrawArraysInstanced), proc);
    } else {
        log.err("entry point glDrawArraysInstanced not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElementsInstanced")) |proc| {
        function_pointers.glDrawElementsInstanced = @ptrCast(@TypeOf(function_pointers.glDrawElementsInstanced), proc);
    } else {
        log.err("entry point glDrawElementsInstanced not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexBuffer")) |proc| {
        function_pointers.glTexBuffer = @ptrCast(@TypeOf(function_pointers.glTexBuffer), proc);
    } else {
        log.err("entry point glTexBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPrimitiveRestartIndex")) |proc| {
        function_pointers.glPrimitiveRestartIndex = @ptrCast(@TypeOf(function_pointers.glPrimitiveRestartIndex), proc);
    } else {
        log.err("entry point glPrimitiveRestartIndex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyBufferSubData")) |proc| {
        function_pointers.glCopyBufferSubData = @ptrCast(@TypeOf(function_pointers.glCopyBufferSubData), proc);
    } else {
        log.err("entry point glCopyBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformIndices")) |proc| {
        function_pointers.glGetUniformIndices = @ptrCast(@TypeOf(function_pointers.glGetUniformIndices), proc);
    } else {
        log.err("entry point glGetUniformIndices not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformsiv")) |proc| {
        function_pointers.glGetActiveUniformsiv = @ptrCast(@TypeOf(function_pointers.glGetActiveUniformsiv), proc);
    } else {
        log.err("entry point glGetActiveUniformsiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformName")) |proc| {
        function_pointers.glGetActiveUniformName = @ptrCast(@TypeOf(function_pointers.glGetActiveUniformName), proc);
    } else {
        log.err("entry point glGetActiveUniformName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformBlockIndex")) |proc| {
        function_pointers.glGetUniformBlockIndex = @ptrCast(@TypeOf(function_pointers.glGetUniformBlockIndex), proc);
    } else {
        log.err("entry point glGetUniformBlockIndex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformBlockiv")) |proc| {
        function_pointers.glGetActiveUniformBlockiv = @ptrCast(@TypeOf(function_pointers.glGetActiveUniformBlockiv), proc);
    } else {
        log.err("entry point glGetActiveUniformBlockiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniformBlockName")) |proc| {
        function_pointers.glGetActiveUniformBlockName = @ptrCast(@TypeOf(function_pointers.glGetActiveUniformBlockName), proc);
    } else {
        log.err("entry point glGetActiveUniformBlockName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformBlockBinding")) |proc| {
        function_pointers.glUniformBlockBinding = @ptrCast(@TypeOf(function_pointers.glUniformBlockBinding), proc);
    } else {
        log.err("entry point glUniformBlockBinding not found!", .{});
        success = false;
    }
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glCullFace = fn (_mode: GLenum) void;
    const glFrontFace = fn (_mode: GLenum) void;
    const glHint = fn (_target: GLenum, _mode: GLenum) void;
    const glLineWidth = fn (_width: GLfloat) void;
    const glPointSize = fn (_size: GLfloat) void;
    const glPolygonMode = fn (_face: GLenum, _mode: GLenum) void;
    const glScissor = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glTexParameterf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTexParameteri = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glDrawBuffer = fn (_buf: GLenum) void;
    const glClear = fn (_mask: GLbitfield) void;
    const glClearColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glClearStencil = fn (_s: GLint) void;
    const glClearDepth = fn (_depth: GLdouble) void;
    const glStencilMask = fn (_mask: GLuint) void;
    const glColorMask = fn (_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) void;
    const glDepthMask = fn (_flag: GLboolean) void;
    const glDisable = fn (_cap: GLenum) void;
    const glEnable = fn (_cap: GLenum) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glBlendFunc = fn (_sfactor: GLenum, _dfactor: GLenum) void;
    const glLogicOp = fn (_opcode: GLenum) void;
    const glStencilFunc = fn (_func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilOp = fn (_fail: GLenum, _zfail: GLenum, _zpass: GLenum) void;
    const glDepthFunc = fn (_func: GLenum) void;
    const glPixelStoref = fn (_pname: GLenum, _param: GLfloat) void;
    const glPixelStorei = fn (_pname: GLenum, _param: GLint) void;
    const glReadBuffer = fn (_src: GLenum) void;
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void;
    const glGetBooleanv = fn (_pname: GLenum, _data: [*c]GLboolean) void;
    const glGetDoublev = fn (_pname: GLenum, _data: [*c]GLdouble) void;
    const glGetError = fn () GLenum;
    const glGetFloatv = fn (_pname: GLenum, _data: [*c]GLfloat) void;
    const glGetIntegerv = fn (_pname: GLenum, _data: [*c]GLint) void;
    const glGetString = fn (_name: GLenum) ?[*:0]const GLubyte;
    const glGetTexImage = fn (_target: GLenum, _level: GLint, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) void;
    const glGetTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetTexLevelParameterfv = fn (_target: GLenum, _level: GLint, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexLevelParameteriv = fn (_target: GLenum, _level: GLint, _pname: GLenum, _params: [*c]GLint) void;
    const glIsEnabled = fn (_cap: GLenum) GLboolean;
    const glDepthRange = fn (_n: GLdouble, _f: GLdouble) void;
    const glViewport = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glNewList = fn (_list: GLuint, _mode: GLenum) void;
    const glEndList = fn () void;
    const glCallList = fn (_list: GLuint) void;
    const glCallLists = fn (_n: GLsizei, _type: GLenum, _lists: ?*const anyopaque) void;
    const glDeleteLists = fn (_list: GLuint, _range: GLsizei) void;
    const glGenLists = fn (_range: GLsizei) GLuint;
    const glListBase = fn (_base: GLuint) void;
    const glBegin = fn (_mode: GLenum) void;
    const glBitmap = fn (_width: GLsizei, _height: GLsizei, _xorig: GLfloat, _yorig: GLfloat, _xmove: GLfloat, _ymove: GLfloat, _bitmap: ?[*:0]const GLubyte) void;
    const glColor3b = fn (_red: GLbyte, _green: GLbyte, _blue: GLbyte) void;
    const glColor3bv = fn (_v: [*c]const GLbyte) void;
    const glColor3d = fn (_red: GLdouble, _green: GLdouble, _blue: GLdouble) void;
    const glColor3dv = fn (_v: [*c]const GLdouble) void;
    const glColor3f = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat) void;
    const glColor3fv = fn (_v: [*c]const GLfloat) void;
    const glColor3i = fn (_red: GLint, _green: GLint, _blue: GLint) void;
    const glColor3iv = fn (_v: [*c]const GLint) void;
    const glColor3s = fn (_red: GLshort, _green: GLshort, _blue: GLshort) void;
    const glColor3sv = fn (_v: [*c]const GLshort) void;
    const glColor3ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte) void;
    const glColor3ubv = fn (_v: ?[*:0]const GLubyte) void;
    const glColor3ui = fn (_red: GLuint, _green: GLuint, _blue: GLuint) void;
    const glColor3uiv = fn (_v: [*c]const GLuint) void;
    const glColor3us = fn (_red: GLushort, _green: GLushort, _blue: GLushort) void;
    const glColor3usv = fn (_v: [*c]const GLushort) void;
    const glColor4b = fn (_red: GLbyte, _green: GLbyte, _blue: GLbyte, _alpha: GLbyte) void;
    const glColor4bv = fn (_v: [*c]const GLbyte) void;
    const glColor4d = fn (_red: GLdouble, _green: GLdouble, _blue: GLdouble, _alpha: GLdouble) void;
    const glColor4dv = fn (_v: [*c]const GLdouble) void;
    const glColor4f = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glColor4fv = fn (_v: [*c]const GLfloat) void;
    const glColor4i = fn (_red: GLint, _green: GLint, _blue: GLint, _alpha: GLint) void;
    const glColor4iv = fn (_v: [*c]const GLint) void;
    const glColor4s = fn (_red: GLshort, _green: GLshort, _blue: GLshort, _alpha: GLshort) void;
    const glColor4sv = fn (_v: [*c]const GLshort) void;
    const glColor4ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) void;
    const glColor4ubv = fn (_v: ?[*:0]const GLubyte) void;
    const glColor4ui = fn (_red: GLuint, _green: GLuint, _blue: GLuint, _alpha: GLuint) void;
    const glColor4uiv = fn (_v: [*c]const GLuint) void;
    const glColor4us = fn (_red: GLushort, _green: GLushort, _blue: GLushort, _alpha: GLushort) void;
    const glColor4usv = fn (_v: [*c]const GLushort) void;
    const glEdgeFlag = fn (_flag: GLboolean) void;
    const glEdgeFlagv = fn (_flag: [*c]const GLboolean) void;
    const glEnd = fn () void;
    const glIndexd = fn (_c: GLdouble) void;
    const glIndexdv = fn (_c: [*c]const GLdouble) void;
    const glIndexf = fn (_c: GLfloat) void;
    const glIndexfv = fn (_c: [*c]const GLfloat) void;
    const glIndexi = fn (_c: GLint) void;
    const glIndexiv = fn (_c: [*c]const GLint) void;
    const glIndexs = fn (_c: GLshort) void;
    const glIndexsv = fn (_c: [*c]const GLshort) void;
    const glNormal3b = fn (_nx: GLbyte, _ny: GLbyte, _nz: GLbyte) void;
    const glNormal3bv = fn (_v: [*c]const GLbyte) void;
    const glNormal3d = fn (_nx: GLdouble, _ny: GLdouble, _nz: GLdouble) void;
    const glNormal3dv = fn (_v: [*c]const GLdouble) void;
    const glNormal3f = fn (_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) void;
    const glNormal3fv = fn (_v: [*c]const GLfloat) void;
    const glNormal3i = fn (_nx: GLint, _ny: GLint, _nz: GLint) void;
    const glNormal3iv = fn (_v: [*c]const GLint) void;
    const glNormal3s = fn (_nx: GLshort, _ny: GLshort, _nz: GLshort) void;
    const glNormal3sv = fn (_v: [*c]const GLshort) void;
    const glRasterPos2d = fn (_x: GLdouble, _y: GLdouble) void;
    const glRasterPos2dv = fn (_v: [*c]const GLdouble) void;
    const glRasterPos2f = fn (_x: GLfloat, _y: GLfloat) void;
    const glRasterPos2fv = fn (_v: [*c]const GLfloat) void;
    const glRasterPos2i = fn (_x: GLint, _y: GLint) void;
    const glRasterPos2iv = fn (_v: [*c]const GLint) void;
    const glRasterPos2s = fn (_x: GLshort, _y: GLshort) void;
    const glRasterPos2sv = fn (_v: [*c]const GLshort) void;
    const glRasterPos3d = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glRasterPos3dv = fn (_v: [*c]const GLdouble) void;
    const glRasterPos3f = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glRasterPos3fv = fn (_v: [*c]const GLfloat) void;
    const glRasterPos3i = fn (_x: GLint, _y: GLint, _z: GLint) void;
    const glRasterPos3iv = fn (_v: [*c]const GLint) void;
    const glRasterPos3s = fn (_x: GLshort, _y: GLshort, _z: GLshort) void;
    const glRasterPos3sv = fn (_v: [*c]const GLshort) void;
    const glRasterPos4d = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void;
    const glRasterPos4dv = fn (_v: [*c]const GLdouble) void;
    const glRasterPos4f = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void;
    const glRasterPos4fv = fn (_v: [*c]const GLfloat) void;
    const glRasterPos4i = fn (_x: GLint, _y: GLint, _z: GLint, _w: GLint) void;
    const glRasterPos4iv = fn (_v: [*c]const GLint) void;
    const glRasterPos4s = fn (_x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void;
    const glRasterPos4sv = fn (_v: [*c]const GLshort) void;
    const glRectd = fn (_x1: GLdouble, _y1: GLdouble, _x2: GLdouble, _y2: GLdouble) void;
    const glRectdv = fn (_v1: [*c]const GLdouble, _v2: [*c]const GLdouble) void;
    const glRectf = fn (_x1: GLfloat, _y1: GLfloat, _x2: GLfloat, _y2: GLfloat) void;
    const glRectfv = fn (_v1: [*c]const GLfloat, _v2: [*c]const GLfloat) void;
    const glRecti = fn (_x1: GLint, _y1: GLint, _x2: GLint, _y2: GLint) void;
    const glRectiv = fn (_v1: [*c]const GLint, _v2: [*c]const GLint) void;
    const glRects = fn (_x1: GLshort, _y1: GLshort, _x2: GLshort, _y2: GLshort) void;
    const glRectsv = fn (_v1: [*c]const GLshort, _v2: [*c]const GLshort) void;
    const glTexCoord1d = fn (_s: GLdouble) void;
    const glTexCoord1dv = fn (_v: [*c]const GLdouble) void;
    const glTexCoord1f = fn (_s: GLfloat) void;
    const glTexCoord1fv = fn (_v: [*c]const GLfloat) void;
    const glTexCoord1i = fn (_s: GLint) void;
    const glTexCoord1iv = fn (_v: [*c]const GLint) void;
    const glTexCoord1s = fn (_s: GLshort) void;
    const glTexCoord1sv = fn (_v: [*c]const GLshort) void;
    const glTexCoord2d = fn (_s: GLdouble, _t: GLdouble) void;
    const glTexCoord2dv = fn (_v: [*c]const GLdouble) void;
    const glTexCoord2f = fn (_s: GLfloat, _t: GLfloat) void;
    const glTexCoord2fv = fn (_v: [*c]const GLfloat) void;
    const glTexCoord2i = fn (_s: GLint, _t: GLint) void;
    const glTexCoord2iv = fn (_v: [*c]const GLint) void;
    const glTexCoord2s = fn (_s: GLshort, _t: GLshort) void;
    const glTexCoord2sv = fn (_v: [*c]const GLshort) void;
    const glTexCoord3d = fn (_s: GLdouble, _t: GLdouble, _r: GLdouble) void;
    const glTexCoord3dv = fn (_v: [*c]const GLdouble) void;
    const glTexCoord3f = fn (_s: GLfloat, _t: GLfloat, _r: GLfloat) void;
    const glTexCoord3fv = fn (_v: [*c]const GLfloat) void;
    const glTexCoord3i = fn (_s: GLint, _t: GLint, _r: GLint) void;
    const glTexCoord3iv = fn (_v: [*c]const GLint) void;
    const glTexCoord3s = fn (_s: GLshort, _t: GLshort, _r: GLshort) void;
    const glTexCoord3sv = fn (_v: [*c]const GLshort) void;
    const glTexCoord4d = fn (_s: GLdouble, _t: GLdouble, _r: GLdouble, _q: GLdouble) void;
    const glTexCoord4dv = fn (_v: [*c]const GLdouble) void;
    const glTexCoord4f = fn (_s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void;
    const glTexCoord4fv = fn (_v: [*c]const GLfloat) void;
    const glTexCoord4i = fn (_s: GLint, _t: GLint, _r: GLint, _q: GLint) void;
    const glTexCoord4iv = fn (_v: [*c]const GLint) void;
    const glTexCoord4s = fn (_s: GLshort, _t: GLshort, _r: GLshort, _q: GLshort) void;
    const glTexCoord4sv = fn (_v: [*c]const GLshort) void;
    const glVertex2d = fn (_x: GLdouble, _y: GLdouble) void;
    const glVertex2dv = fn (_v: [*c]const GLdouble) void;
    const glVertex2f = fn (_x: GLfloat, _y: GLfloat) void;
    const glVertex2fv = fn (_v: [*c]const GLfloat) void;
    const glVertex2i = fn (_x: GLint, _y: GLint) void;
    const glVertex2iv = fn (_v: [*c]const GLint) void;
    const glVertex2s = fn (_x: GLshort, _y: GLshort) void;
    const glVertex2sv = fn (_v: [*c]const GLshort) void;
    const glVertex3d = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glVertex3dv = fn (_v: [*c]const GLdouble) void;
    const glVertex3f = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glVertex3fv = fn (_v: [*c]const GLfloat) void;
    const glVertex3i = fn (_x: GLint, _y: GLint, _z: GLint) void;
    const glVertex3iv = fn (_v: [*c]const GLint) void;
    const glVertex3s = fn (_x: GLshort, _y: GLshort, _z: GLshort) void;
    const glVertex3sv = fn (_v: [*c]const GLshort) void;
    const glVertex4d = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void;
    const glVertex4dv = fn (_v: [*c]const GLdouble) void;
    const glVertex4f = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void;
    const glVertex4fv = fn (_v: [*c]const GLfloat) void;
    const glVertex4i = fn (_x: GLint, _y: GLint, _z: GLint, _w: GLint) void;
    const glVertex4iv = fn (_v: [*c]const GLint) void;
    const glVertex4s = fn (_x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void;
    const glVertex4sv = fn (_v: [*c]const GLshort) void;
    const glClipPlane = fn (_plane: GLenum, _equation: [*c]const GLdouble) void;
    const glColorMaterial = fn (_face: GLenum, _mode: GLenum) void;
    const glFogf = fn (_pname: GLenum, _param: GLfloat) void;
    const glFogfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glFogi = fn (_pname: GLenum, _param: GLint) void;
    const glFogiv = fn (_pname: GLenum, _params: [*c]const GLint) void;
    const glLightf = fn (_light: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glLighti = fn (_light: GLenum, _pname: GLenum, _param: GLint) void;
    const glLightiv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glLightModelf = fn (_pname: GLenum, _param: GLfloat) void;
    const glLightModelfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glLightModeli = fn (_pname: GLenum, _param: GLint) void;
    const glLightModeliv = fn (_pname: GLenum, _params: [*c]const GLint) void;
    const glLineStipple = fn (_factor: GLint, _pattern: GLushort) void;
    const glMaterialf = fn (_face: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glMateriali = fn (_face: GLenum, _pname: GLenum, _param: GLint) void;
    const glMaterialiv = fn (_face: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glPolygonStipple = fn (_mask: ?[*:0]const GLubyte) void;
    const glShadeModel = fn (_mode: GLenum) void;
    const glTexEnvf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTexEnvi = fn (_target: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexGend = fn (_coord: GLenum, _pname: GLenum, _param: GLdouble) void;
    const glTexGendv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]const GLdouble) void;
    const glTexGenf = fn (_coord: GLenum, _pname: GLenum, _param: GLfloat) void;
    const glTexGenfv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]const GLfloat) void;
    const glTexGeni = fn (_coord: GLenum, _pname: GLenum, _param: GLint) void;
    const glTexGeniv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glFeedbackBuffer = fn (_size: GLsizei, _type: GLenum, _buffer: [*c]GLfloat) void;
    const glSelectBuffer = fn (_size: GLsizei, _buffer: [*c]GLuint) void;
    const glRenderMode = fn (_mode: GLenum) GLint;
    const glInitNames = fn () void;
    const glLoadName = fn (_name: GLuint) void;
    const glPassThrough = fn (_token: GLfloat) void;
    const glPopName = fn () void;
    const glPushName = fn (_name: GLuint) void;
    const glClearAccum = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glClearIndex = fn (_c: GLfloat) void;
    const glIndexMask = fn (_mask: GLuint) void;
    const glAccum = fn (_op: GLenum, _value: GLfloat) void;
    const glPopAttrib = fn () void;
    const glPushAttrib = fn (_mask: GLbitfield) void;
    const glMap1d = fn (_target: GLenum, _u1: GLdouble, _u2: GLdouble, _stride: GLint, _order: GLint, _points: [*c]const GLdouble) void;
    const glMap1f = fn (_target: GLenum, _u1: GLfloat, _u2: GLfloat, _stride: GLint, _order: GLint, _points: [*c]const GLfloat) void;
    const glMap2d = fn (_target: GLenum, _u1: GLdouble, _u2: GLdouble, _ustride: GLint, _uorder: GLint, _v1: GLdouble, _v2: GLdouble, _vstride: GLint, _vorder: GLint, _points: [*c]const GLdouble) void;
    const glMap2f = fn (_target: GLenum, _u1: GLfloat, _u2: GLfloat, _ustride: GLint, _uorder: GLint, _v1: GLfloat, _v2: GLfloat, _vstride: GLint, _vorder: GLint, _points: [*c]const GLfloat) void;
    const glMapGrid1d = fn (_un: GLint, _u1: GLdouble, _u2: GLdouble) void;
    const glMapGrid1f = fn (_un: GLint, _u1: GLfloat, _u2: GLfloat) void;
    const glMapGrid2d = fn (_un: GLint, _u1: GLdouble, _u2: GLdouble, _vn: GLint, _v1: GLdouble, _v2: GLdouble) void;
    const glMapGrid2f = fn (_un: GLint, _u1: GLfloat, _u2: GLfloat, _vn: GLint, _v1: GLfloat, _v2: GLfloat) void;
    const glEvalCoord1d = fn (_u: GLdouble) void;
    const glEvalCoord1dv = fn (_u: [*c]const GLdouble) void;
    const glEvalCoord1f = fn (_u: GLfloat) void;
    const glEvalCoord1fv = fn (_u: [*c]const GLfloat) void;
    const glEvalCoord2d = fn (_u: GLdouble, _v: GLdouble) void;
    const glEvalCoord2dv = fn (_u: [*c]const GLdouble) void;
    const glEvalCoord2f = fn (_u: GLfloat, _v: GLfloat) void;
    const glEvalCoord2fv = fn (_u: [*c]const GLfloat) void;
    const glEvalMesh1 = fn (_mode: GLenum, _i1: GLint, _i2: GLint) void;
    const glEvalPoint1 = fn (_i: GLint) void;
    const glEvalMesh2 = fn (_mode: GLenum, _i1: GLint, _i2: GLint, _j1: GLint, _j2: GLint) void;
    const glEvalPoint2 = fn (_i: GLint, _j: GLint) void;
    const glAlphaFunc = fn (_func: GLenum, _ref: GLfloat) void;
    const glPixelZoom = fn (_xfactor: GLfloat, _yfactor: GLfloat) void;
    const glPixelTransferf = fn (_pname: GLenum, _param: GLfloat) void;
    const glPixelTransferi = fn (_pname: GLenum, _param: GLint) void;
    const glPixelMapfv = fn (_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLfloat) void;
    const glPixelMapuiv = fn (_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLuint) void;
    const glPixelMapusv = fn (_map: GLenum, _mapsize: GLsizei, _values: [*c]const GLushort) void;
    const glCopyPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _type: GLenum) void;
    const glDrawPixels = fn (_width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glGetClipPlane = fn (_plane: GLenum, _equation: [*c]GLdouble) void;
    const glGetLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetLightiv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetMapdv = fn (_target: GLenum, _query: GLenum, _v: [*c]GLdouble) void;
    const glGetMapfv = fn (_target: GLenum, _query: GLenum, _v: [*c]GLfloat) void;
    const glGetMapiv = fn (_target: GLenum, _query: GLenum, _v: [*c]GLint) void;
    const glGetMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetMaterialiv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetPixelMapfv = fn (_map: GLenum, _values: [*c]GLfloat) void;
    const glGetPixelMapuiv = fn (_map: GLenum, _values: [*c]GLuint) void;
    const glGetPixelMapusv = fn (_map: GLenum, _values: [*c]GLushort) void;
    const glGetPolygonStipple = fn (_mask: [*c]GLubyte) void;
    const glGetTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetTexGendv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]GLdouble) void;
    const glGetTexGenfv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetTexGeniv = fn (_coord: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glIsList = fn (_list: GLuint) GLboolean;
    const glFrustum = fn (_left: GLdouble, _right: GLdouble, _bottom: GLdouble, _top: GLdouble, _zNear: GLdouble, _zFar: GLdouble) void;
    const glLoadIdentity = fn () void;
    const glLoadMatrixf = fn (_m: [*c]const GLfloat) void;
    const glLoadMatrixd = fn (_m: [*c]const GLdouble) void;
    const glMatrixMode = fn (_mode: GLenum) void;
    const glMultMatrixf = fn (_m: [*c]const GLfloat) void;
    const glMultMatrixd = fn (_m: [*c]const GLdouble) void;
    const glOrtho = fn (_left: GLdouble, _right: GLdouble, _bottom: GLdouble, _top: GLdouble, _zNear: GLdouble, _zFar: GLdouble) void;
    const glPopMatrix = fn () void;
    const glPushMatrix = fn () void;
    const glRotated = fn (_angle: GLdouble, _x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glRotatef = fn (_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glScaled = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glScalef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glTranslated = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glTranslatef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glDrawArrays = fn (_mode: GLenum, _first: GLint, _count: GLsizei) void;
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void;
    const glGetPointerv = fn (_pname: GLenum, _params: ?*?*anyopaque) void;
    const glPolygonOffset = fn (_factor: GLfloat, _units: GLfloat) void;
    const glCopyTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _border: GLint) void;
    const glCopyTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void;
    const glCopyTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei) void;
    const glCopyTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glBindTexture = fn (_target: GLenum, _texture: GLuint) void;
    const glDeleteTextures = fn (_n: GLsizei, _textures: [*c]const GLuint) void;
    const glGenTextures = fn (_n: GLsizei, _textures: [*c]GLuint) void;
    const glIsTexture = fn (_texture: GLuint) GLboolean;
    const glArrayElement = fn (_i: GLint) void;
    const glColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glDisableClientState = fn (_array: GLenum) void;
    const glEdgeFlagPointer = fn (_stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glEnableClientState = fn (_array: GLenum) void;
    const glIndexPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glInterleavedArrays = fn (_format: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glNormalPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glTexCoordPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glVertexPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glAreTexturesResident = fn (_n: GLsizei, _textures: [*c]const GLuint, _residences: [*c]GLboolean) GLboolean;
    const glPrioritizeTextures = fn (_n: GLsizei, _textures: [*c]const GLuint, _priorities: [*c]const GLfloat) void;
    const glIndexub = fn (_c: GLubyte) void;
    const glIndexubv = fn (_c: ?[*:0]const GLubyte) void;
    const glPopClientAttrib = fn () void;
    const glPushClientAttrib = fn (_mask: GLbitfield) void;
    const glDrawRangeElements = fn (_mode: GLenum, _start: GLuint, _end: GLuint, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) void;
    const glTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) void;
    const glCopyTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glActiveTexture = fn (_texture: GLenum) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) void;
    const glCompressedTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glCompressedTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) void;
    const glGetCompressedTexImage = fn (_target: GLenum, _level: GLint, _img: ?*anyopaque) void;
    const glClientActiveTexture = fn (_texture: GLenum) void;
    const glMultiTexCoord1d = fn (_target: GLenum, _s: GLdouble) void;
    const glMultiTexCoord1dv = fn (_target: GLenum, _v: [*c]const GLdouble) void;
    const glMultiTexCoord1f = fn (_target: GLenum, _s: GLfloat) void;
    const glMultiTexCoord1fv = fn (_target: GLenum, _v: [*c]const GLfloat) void;
    const glMultiTexCoord1i = fn (_target: GLenum, _s: GLint) void;
    const glMultiTexCoord1iv = fn (_target: GLenum, _v: [*c]const GLint) void;
    const glMultiTexCoord1s = fn (_target: GLenum, _s: GLshort) void;
    const glMultiTexCoord1sv = fn (_target: GLenum, _v: [*c]const GLshort) void;
    const glMultiTexCoord2d = fn (_target: GLenum, _s: GLdouble, _t: GLdouble) void;
    const glMultiTexCoord2dv = fn (_target: GLenum, _v: [*c]const GLdouble) void;
    const glMultiTexCoord2f = fn (_target: GLenum, _s: GLfloat, _t: GLfloat) void;
    const glMultiTexCoord2fv = fn (_target: GLenum, _v: [*c]const GLfloat) void;
    const glMultiTexCoord2i = fn (_target: GLenum, _s: GLint, _t: GLint) void;
    const glMultiTexCoord2iv = fn (_target: GLenum, _v: [*c]const GLint) void;
    const glMultiTexCoord2s = fn (_target: GLenum, _s: GLshort, _t: GLshort) void;
    const glMultiTexCoord2sv = fn (_target: GLenum, _v: [*c]const GLshort) void;
    const glMultiTexCoord3d = fn (_target: GLenum, _s: GLdouble, _t: GLdouble, _r: GLdouble) void;
    const glMultiTexCoord3dv = fn (_target: GLenum, _v: [*c]const GLdouble) void;
    const glMultiTexCoord3f = fn (_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat) void;
    const glMultiTexCoord3fv = fn (_target: GLenum, _v: [*c]const GLfloat) void;
    const glMultiTexCoord3i = fn (_target: GLenum, _s: GLint, _t: GLint, _r: GLint) void;
    const glMultiTexCoord3iv = fn (_target: GLenum, _v: [*c]const GLint) void;
    const glMultiTexCoord3s = fn (_target: GLenum, _s: GLshort, _t: GLshort, _r: GLshort) void;
    const glMultiTexCoord3sv = fn (_target: GLenum, _v: [*c]const GLshort) void;
    const glMultiTexCoord4d = fn (_target: GLenum, _s: GLdouble, _t: GLdouble, _r: GLdouble, _q: GLdouble) void;
    const glMultiTexCoord4dv = fn (_target: GLenum, _v: [*c]const GLdouble) void;
    const glMultiTexCoord4f = fn (_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) void;
    const glMultiTexCoord4fv = fn (_target: GLenum, _v: [*c]const GLfloat) void;
    const glMultiTexCoord4i = fn (_target: GLenum, _s: GLint, _t: GLint, _r: GLint, _q: GLint) void;
    const glMultiTexCoord4iv = fn (_target: GLenum, _v: [*c]const GLint) void;
    const glMultiTexCoord4s = fn (_target: GLenum, _s: GLshort, _t: GLshort, _r: GLshort, _q: GLshort) void;
    const glMultiTexCoord4sv = fn (_target: GLenum, _v: [*c]const GLshort) void;
    const glLoadTransposeMatrixf = fn (_m: [*c]const GLfloat) void;
    const glLoadTransposeMatrixd = fn (_m: [*c]const GLdouble) void;
    const glMultTransposeMatrixf = fn (_m: [*c]const GLfloat) void;
    const glMultTransposeMatrixd = fn (_m: [*c]const GLdouble) void;
    const glBlendFuncSeparate = fn (_sfactorRGB: GLenum, _dfactorRGB: GLenum, _sfactorAlpha: GLenum, _dfactorAlpha: GLenum) void;
    const glMultiDrawArrays = fn (_mode: GLenum, _first: [*c]const GLint, _count: [*c]const GLsizei, _drawcount: GLsizei) void;
    const glMultiDrawElements = fn (_mode: GLenum, _count: [*c]const GLsizei, _type: GLenum, _indices: [*c]const ?*const anyopaque, _drawcount: GLsizei) void;
    const glPointParameterf = fn (_pname: GLenum, _param: GLfloat) void;
    const glPointParameterfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glPointParameteri = fn (_pname: GLenum, _param: GLint) void;
    const glPointParameteriv = fn (_pname: GLenum, _params: [*c]const GLint) void;
    const glFogCoordf = fn (_coord: GLfloat) void;
    const glFogCoordfv = fn (_coord: [*c]const GLfloat) void;
    const glFogCoordd = fn (_coord: GLdouble) void;
    const glFogCoorddv = fn (_coord: [*c]const GLdouble) void;
    const glFogCoordPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glSecondaryColor3b = fn (_red: GLbyte, _green: GLbyte, _blue: GLbyte) void;
    const glSecondaryColor3bv = fn (_v: [*c]const GLbyte) void;
    const glSecondaryColor3d = fn (_red: GLdouble, _green: GLdouble, _blue: GLdouble) void;
    const glSecondaryColor3dv = fn (_v: [*c]const GLdouble) void;
    const glSecondaryColor3f = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat) void;
    const glSecondaryColor3fv = fn (_v: [*c]const GLfloat) void;
    const glSecondaryColor3i = fn (_red: GLint, _green: GLint, _blue: GLint) void;
    const glSecondaryColor3iv = fn (_v: [*c]const GLint) void;
    const glSecondaryColor3s = fn (_red: GLshort, _green: GLshort, _blue: GLshort) void;
    const glSecondaryColor3sv = fn (_v: [*c]const GLshort) void;
    const glSecondaryColor3ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte) void;
    const glSecondaryColor3ubv = fn (_v: ?[*:0]const GLubyte) void;
    const glSecondaryColor3ui = fn (_red: GLuint, _green: GLuint, _blue: GLuint) void;
    const glSecondaryColor3uiv = fn (_v: [*c]const GLuint) void;
    const glSecondaryColor3us = fn (_red: GLushort, _green: GLushort, _blue: GLushort) void;
    const glSecondaryColor3usv = fn (_v: [*c]const GLushort) void;
    const glSecondaryColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glWindowPos2d = fn (_x: GLdouble, _y: GLdouble) void;
    const glWindowPos2dv = fn (_v: [*c]const GLdouble) void;
    const glWindowPos2f = fn (_x: GLfloat, _y: GLfloat) void;
    const glWindowPos2fv = fn (_v: [*c]const GLfloat) void;
    const glWindowPos2i = fn (_x: GLint, _y: GLint) void;
    const glWindowPos2iv = fn (_v: [*c]const GLint) void;
    const glWindowPos2s = fn (_x: GLshort, _y: GLshort) void;
    const glWindowPos2sv = fn (_v: [*c]const GLshort) void;
    const glWindowPos3d = fn (_x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glWindowPos3dv = fn (_v: [*c]const GLdouble) void;
    const glWindowPos3f = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glWindowPos3fv = fn (_v: [*c]const GLfloat) void;
    const glWindowPos3i = fn (_x: GLint, _y: GLint, _z: GLint) void;
    const glWindowPos3iv = fn (_v: [*c]const GLint) void;
    const glWindowPos3s = fn (_x: GLshort, _y: GLshort, _z: GLshort) void;
    const glWindowPos3sv = fn (_v: [*c]const GLshort) void;
    const glBlendColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) void;
    const glBlendEquation = fn (_mode: GLenum) void;
    const glGenQueries = fn (_n: GLsizei, _ids: [*c]GLuint) void;
    const glDeleteQueries = fn (_n: GLsizei, _ids: [*c]const GLuint) void;
    const glIsQuery = fn (_id: GLuint) GLboolean;
    const glBeginQuery = fn (_target: GLenum, _id: GLuint) void;
    const glEndQuery = fn (_target: GLenum) void;
    const glGetQueryiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetQueryObjectiv = fn (_id: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetQueryObjectuiv = fn (_id: GLuint, _pname: GLenum, _params: [*c]GLuint) void;
    const glBindBuffer = fn (_target: GLenum, _buffer: GLuint) void;
    const glDeleteBuffers = fn (_n: GLsizei, _buffers: [*c]const GLuint) void;
    const glGenBuffers = fn (_n: GLsizei, _buffers: [*c]GLuint) void;
    const glIsBuffer = fn (_buffer: GLuint) GLboolean;
    const glBufferData = fn (_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) void;
    const glBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) void;
    const glGetBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*anyopaque) void;
    const glMapBuffer = fn (_target: GLenum, _access: GLenum) ?*anyopaque;
    const glUnmapBuffer = fn (_target: GLenum) GLboolean;
    const glGetBufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetBufferPointerv = fn (_target: GLenum, _pname: GLenum, _params: ?*?*anyopaque) void;
    const glBlendEquationSeparate = fn (_modeRGB: GLenum, _modeAlpha: GLenum) void;
    const glDrawBuffers = fn (_n: GLsizei, _bufs: [*c]const GLenum) void;
    const glStencilOpSeparate = fn (_face: GLenum, _sfail: GLenum, _dpfail: GLenum, _dppass: GLenum) void;
    const glStencilFuncSeparate = fn (_face: GLenum, _func: GLenum, _ref: GLint, _mask: GLuint) void;
    const glStencilMaskSeparate = fn (_face: GLenum, _mask: GLuint) void;
    const glAttachShader = fn (_program: GLuint, _shader: GLuint) void;
    const glBindAttribLocation = fn (_program: GLuint, _index: GLuint, _name: [*c]const GLchar) void;
    const glCompileShader = fn (_shader: GLuint) void;
    const glCreateProgram = fn () GLuint;
    const glCreateShader = fn (_type: GLenum) GLuint;
    const glDeleteProgram = fn (_program: GLuint) void;
    const glDeleteShader = fn (_shader: GLuint) void;
    const glDetachShader = fn (_program: GLuint, _shader: GLuint) void;
    const glDisableVertexAttribArray = fn (_index: GLuint) void;
    const glEnableVertexAttribArray = fn (_index: GLuint) void;
    const glGetActiveAttrib = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glGetActiveUniform = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLint, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glGetAttachedShaders = fn (_program: GLuint, _maxCount: GLsizei, _count: [*c]GLsizei, _shaders: [*c]GLuint) void;
    const glGetAttribLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glGetProgramiv = fn (_program: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetProgramInfoLog = fn (_program: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void;
    const glGetShaderiv = fn (_shader: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetShaderInfoLog = fn (_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _infoLog: [*c]GLchar) void;
    const glGetShaderSource = fn (_shader: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _source: [*c]GLchar) void;
    const glGetUniformLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glGetUniformfv = fn (_program: GLuint, _location: GLint, _params: [*c]GLfloat) void;
    const glGetUniformiv = fn (_program: GLuint, _location: GLint, _params: [*c]GLint) void;
    const glGetVertexAttribdv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLdouble) void;
    const glGetVertexAttribfv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLfloat) void;
    const glGetVertexAttribiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetVertexAttribPointerv = fn (_index: GLuint, _pname: GLenum, _pointer: ?*?*anyopaque) void;
    const glIsProgram = fn (_program: GLuint) GLboolean;
    const glIsShader = fn (_shader: GLuint) GLboolean;
    const glLinkProgram = fn (_program: GLuint) void;
    const glShaderSource = fn (_shader: GLuint, _count: GLsizei, _string: [*c]const [*c]const GLchar, _length: [*c]const GLint) void;
    const glUseProgram = fn (_program: GLuint) void;
    const glUniform1f = fn (_location: GLint, _v0: GLfloat) void;
    const glUniform2f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat) void;
    const glUniform3f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat) void;
    const glUniform4f = fn (_location: GLint, _v0: GLfloat, _v1: GLfloat, _v2: GLfloat, _v3: GLfloat) void;
    const glUniform1i = fn (_location: GLint, _v0: GLint) void;
    const glUniform2i = fn (_location: GLint, _v0: GLint, _v1: GLint) void;
    const glUniform3i = fn (_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint) void;
    const glUniform4i = fn (_location: GLint, _v0: GLint, _v1: GLint, _v2: GLint, _v3: GLint) void;
    const glUniform1fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform2fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform3fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform4fv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLfloat) void;
    const glUniform1iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform2iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform3iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniform4iv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLint) void;
    const glUniformMatrix2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glValidateProgram = fn (_program: GLuint) void;
    const glVertexAttrib1d = fn (_index: GLuint, _x: GLdouble) void;
    const glVertexAttrib1dv = fn (_index: GLuint, _v: [*c]const GLdouble) void;
    const glVertexAttrib1f = fn (_index: GLuint, _x: GLfloat) void;
    const glVertexAttrib1fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib1s = fn (_index: GLuint, _x: GLshort) void;
    const glVertexAttrib1sv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttrib2d = fn (_index: GLuint, _x: GLdouble, _y: GLdouble) void;
    const glVertexAttrib2dv = fn (_index: GLuint, _v: [*c]const GLdouble) void;
    const glVertexAttrib2f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat) void;
    const glVertexAttrib2fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib2s = fn (_index: GLuint, _x: GLshort, _y: GLshort) void;
    const glVertexAttrib2sv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttrib3d = fn (_index: GLuint, _x: GLdouble, _y: GLdouble, _z: GLdouble) void;
    const glVertexAttrib3dv = fn (_index: GLuint, _v: [*c]const GLdouble) void;
    const glVertexAttrib3f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat) void;
    const glVertexAttrib3fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib3s = fn (_index: GLuint, _x: GLshort, _y: GLshort, _z: GLshort) void;
    const glVertexAttrib3sv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttrib4Nbv = fn (_index: GLuint, _v: [*c]const GLbyte) void;
    const glVertexAttrib4Niv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttrib4Nsv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttrib4Nub = fn (_index: GLuint, _x: GLubyte, _y: GLubyte, _z: GLubyte, _w: GLubyte) void;
    const glVertexAttrib4Nubv = fn (_index: GLuint, _v: ?[*:0]const GLubyte) void;
    const glVertexAttrib4Nuiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttrib4Nusv = fn (_index: GLuint, _v: [*c]const GLushort) void;
    const glVertexAttrib4bv = fn (_index: GLuint, _v: [*c]const GLbyte) void;
    const glVertexAttrib4d = fn (_index: GLuint, _x: GLdouble, _y: GLdouble, _z: GLdouble, _w: GLdouble) void;
    const glVertexAttrib4dv = fn (_index: GLuint, _v: [*c]const GLdouble) void;
    const glVertexAttrib4f = fn (_index: GLuint, _x: GLfloat, _y: GLfloat, _z: GLfloat, _w: GLfloat) void;
    const glVertexAttrib4fv = fn (_index: GLuint, _v: [*c]const GLfloat) void;
    const glVertexAttrib4iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttrib4s = fn (_index: GLuint, _x: GLshort, _y: GLshort, _z: GLshort, _w: GLshort) void;
    const glVertexAttrib4sv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttrib4ubv = fn (_index: GLuint, _v: ?[*:0]const GLubyte) void;
    const glVertexAttrib4uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttrib4usv = fn (_index: GLuint, _v: [*c]const GLushort) void;
    const glVertexAttribPointer = fn (_index: GLuint, _size: GLint, _type: GLenum, _normalized: GLboolean, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glUniformMatrix2x3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3x2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix2x4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4x2fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix3x4fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glUniformMatrix4x3fv = fn (_location: GLint, _count: GLsizei, _transpose: GLboolean, _value: [*c]const GLfloat) void;
    const glColorMaski = fn (_index: GLuint, _r: GLboolean, _g: GLboolean, _b: GLboolean, _a: GLboolean) void;
    const glGetBooleani_v = fn (_target: GLenum, _index: GLuint, _data: [*c]GLboolean) void;
    const glGetIntegeri_v = fn (_target: GLenum, _index: GLuint, _data: [*c]GLint) void;
    const glEnablei = fn (_target: GLenum, _index: GLuint) void;
    const glDisablei = fn (_target: GLenum, _index: GLuint) void;
    const glIsEnabledi = fn (_target: GLenum, _index: GLuint) GLboolean;
    const glBeginTransformFeedback = fn (_primitiveMode: GLenum) void;
    const glEndTransformFeedback = fn () void;
    const glBindBufferRange = fn (_target: GLenum, _index: GLuint, _buffer: GLuint, _offset: GLintptr, _size: GLsizeiptr) void;
    const glBindBufferBase = fn (_target: GLenum, _index: GLuint, _buffer: GLuint) void;
    const glTransformFeedbackVaryings = fn (_program: GLuint, _count: GLsizei, _varyings: [*c]const [*c]const GLchar, _bufferMode: GLenum) void;
    const glGetTransformFeedbackVarying = fn (_program: GLuint, _index: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _size: [*c]GLsizei, _type: [*c]GLenum, _name: [*c]GLchar) void;
    const glClampColor = fn (_target: GLenum, _clamp: GLenum) void;
    const glBeginConditionalRender = fn (_id: GLuint, _mode: GLenum) void;
    const glEndConditionalRender = fn () void;
    const glVertexAttribIPointer = fn (_index: GLuint, _size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) void;
    const glGetVertexAttribIiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetVertexAttribIuiv = fn (_index: GLuint, _pname: GLenum, _params: [*c]GLuint) void;
    const glVertexAttribI1i = fn (_index: GLuint, _x: GLint) void;
    const glVertexAttribI2i = fn (_index: GLuint, _x: GLint, _y: GLint) void;
    const glVertexAttribI3i = fn (_index: GLuint, _x: GLint, _y: GLint, _z: GLint) void;
    const glVertexAttribI4i = fn (_index: GLuint, _x: GLint, _y: GLint, _z: GLint, _w: GLint) void;
    const glVertexAttribI1ui = fn (_index: GLuint, _x: GLuint) void;
    const glVertexAttribI2ui = fn (_index: GLuint, _x: GLuint, _y: GLuint) void;
    const glVertexAttribI3ui = fn (_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint) void;
    const glVertexAttribI4ui = fn (_index: GLuint, _x: GLuint, _y: GLuint, _z: GLuint, _w: GLuint) void;
    const glVertexAttribI1iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttribI2iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttribI3iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttribI4iv = fn (_index: GLuint, _v: [*c]const GLint) void;
    const glVertexAttribI1uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttribI2uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttribI3uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttribI4uiv = fn (_index: GLuint, _v: [*c]const GLuint) void;
    const glVertexAttribI4bv = fn (_index: GLuint, _v: [*c]const GLbyte) void;
    const glVertexAttribI4sv = fn (_index: GLuint, _v: [*c]const GLshort) void;
    const glVertexAttribI4ubv = fn (_index: GLuint, _v: ?[*:0]const GLubyte) void;
    const glVertexAttribI4usv = fn (_index: GLuint, _v: [*c]const GLushort) void;
    const glGetUniformuiv = fn (_program: GLuint, _location: GLint, _params: [*c]GLuint) void;
    const glBindFragDataLocation = fn (_program: GLuint, _color: GLuint, _name: [*c]const GLchar) void;
    const glGetFragDataLocation = fn (_program: GLuint, _name: [*c]const GLchar) GLint;
    const glUniform1ui = fn (_location: GLint, _v0: GLuint) void;
    const glUniform2ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint) void;
    const glUniform3ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint) void;
    const glUniform4ui = fn (_location: GLint, _v0: GLuint, _v1: GLuint, _v2: GLuint, _v3: GLuint) void;
    const glUniform1uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform2uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform3uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glUniform4uiv = fn (_location: GLint, _count: GLsizei, _value: [*c]const GLuint) void;
    const glTexParameterIiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) void;
    const glTexParameterIuiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLuint) void;
    const glGetTexParameterIiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGetTexParameterIuiv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLuint) void;
    const glClearBufferiv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLint) void;
    const glClearBufferuiv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLuint) void;
    const glClearBufferfv = fn (_buffer: GLenum, _drawbuffer: GLint, _value: [*c]const GLfloat) void;
    const glClearBufferfi = fn (_buffer: GLenum, _drawbuffer: GLint, _depth: GLfloat, _stencil: GLint) void;
    const glGetStringi = fn (_name: GLenum, _index: GLuint) ?[*:0]const GLubyte;
    const glIsRenderbuffer = fn (_renderbuffer: GLuint) GLboolean;
    const glBindRenderbuffer = fn (_target: GLenum, _renderbuffer: GLuint) void;
    const glDeleteRenderbuffers = fn (_n: GLsizei, _renderbuffers: [*c]const GLuint) void;
    const glGenRenderbuffers = fn (_n: GLsizei, _renderbuffers: [*c]GLuint) void;
    const glRenderbufferStorage = fn (_target: GLenum, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void;
    const glGetRenderbufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glIsFramebuffer = fn (_framebuffer: GLuint) GLboolean;
    const glBindFramebuffer = fn (_target: GLenum, _framebuffer: GLuint) void;
    const glDeleteFramebuffers = fn (_n: GLsizei, _framebuffers: [*c]const GLuint) void;
    const glGenFramebuffers = fn (_n: GLsizei, _framebuffers: [*c]GLuint) void;
    const glCheckFramebufferStatus = fn (_target: GLenum) GLenum;
    const glFramebufferTexture1D = fn (_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void;
    const glFramebufferTexture2D = fn (_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint) void;
    const glFramebufferTexture3D = fn (_target: GLenum, _attachment: GLenum, _textarget: GLenum, _texture: GLuint, _level: GLint, _zoffset: GLint) void;
    const glFramebufferRenderbuffer = fn (_target: GLenum, _attachment: GLenum, _renderbuffertarget: GLenum, _renderbuffer: GLuint) void;
    const glGetFramebufferAttachmentParameteriv = fn (_target: GLenum, _attachment: GLenum, _pname: GLenum, _params: [*c]GLint) void;
    const glGenerateMipmap = fn (_target: GLenum) void;
    const glBlitFramebuffer = fn (_srcX0: GLint, _srcY0: GLint, _srcX1: GLint, _srcY1: GLint, _dstX0: GLint, _dstY0: GLint, _dstX1: GLint, _dstY1: GLint, _mask: GLbitfield, _filter: GLenum) void;
    const glRenderbufferStorageMultisample = fn (_target: GLenum, _samples: GLsizei, _internalformat: GLenum, _width: GLsizei, _height: GLsizei) void;
    const glFramebufferTextureLayer = fn (_target: GLenum, _attachment: GLenum, _texture: GLuint, _level: GLint, _layer: GLint) void;
    const glMapBufferRange = fn (_target: GLenum, _offset: GLintptr, _length: GLsizeiptr, _access: GLbitfield) ?*anyopaque;
    const glFlushMappedBufferRange = fn (_target: GLenum, _offset: GLintptr, _length: GLsizeiptr) void;
    const glBindVertexArray = fn (_array: GLuint) void;
    const glDeleteVertexArrays = fn (_n: GLsizei, _arrays: [*c]const GLuint) void;
    const glGenVertexArrays = fn (_n: GLsizei, _arrays: [*c]GLuint) void;
    const glIsVertexArray = fn (_array: GLuint) GLboolean;
    const glDrawArraysInstanced = fn (_mode: GLenum, _first: GLint, _count: GLsizei, _instancecount: GLsizei) void;
    const glDrawElementsInstanced = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque, _instancecount: GLsizei) void;
    const glTexBuffer = fn (_target: GLenum, _internalformat: GLenum, _buffer: GLuint) void;
    const glPrimitiveRestartIndex = fn (_index: GLuint) void;
    const glCopyBufferSubData = fn (_readTarget: GLenum, _writeTarget: GLenum, _readOffset: GLintptr, _writeOffset: GLintptr, _size: GLsizeiptr) void;
    const glGetUniformIndices = fn (_program: GLuint, _uniformCount: GLsizei, _uniformNames: [*c]const [*c]const GLchar, _uniformIndices: [*c]GLuint) void;
    const glGetActiveUniformsiv = fn (_program: GLuint, _uniformCount: GLsizei, _uniformIndices: [*c]const GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetActiveUniformName = fn (_program: GLuint, _uniformIndex: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _uniformName: [*c]GLchar) void;
    const glGetUniformBlockIndex = fn (_program: GLuint, _uniformBlockName: [*c]const GLchar) GLuint;
    const glGetActiveUniformBlockiv = fn (_program: GLuint, _uniformBlockIndex: GLuint, _pname: GLenum, _params: [*c]GLint) void;
    const glGetActiveUniformBlockName = fn (_program: GLuint, _uniformBlockIndex: GLuint, _bufSize: GLsizei, _length: [*c]GLsizei, _uniformBlockName: [*c]GLchar) void;
    const glUniformBlockBinding = fn (_program: GLuint, _uniformBlockIndex: GLuint, _uniformBlockBinding: GLuint) void;
};

const function_pointers = struct {
    var glCullFace: ?FnPtr(function_signatures.glCullFace) = null;
    var glFrontFace: ?FnPtr(function_signatures.glFrontFace) = null;
    var glHint: ?FnPtr(function_signatures.glHint) = null;
    var glLineWidth: ?FnPtr(function_signatures.glLineWidth) = null;
    var glPointSize: ?FnPtr(function_signatures.glPointSize) = null;
    var glPolygonMode: ?FnPtr(function_signatures.glPolygonMode) = null;
    var glScissor: ?FnPtr(function_signatures.glScissor) = null;
    var glTexParameterf: ?FnPtr(function_signatures.glTexParameterf) = null;
    var glTexParameterfv: ?FnPtr(function_signatures.glTexParameterfv) = null;
    var glTexParameteri: ?FnPtr(function_signatures.glTexParameteri) = null;
    var glTexParameteriv: ?FnPtr(function_signatures.glTexParameteriv) = null;
    var glTexImage1D: ?FnPtr(function_signatures.glTexImage1D) = null;
    var glTexImage2D: ?FnPtr(function_signatures.glTexImage2D) = null;
    var glDrawBuffer: ?FnPtr(function_signatures.glDrawBuffer) = null;
    var glClear: ?FnPtr(function_signatures.glClear) = null;
    var glClearColor: ?FnPtr(function_signatures.glClearColor) = null;
    var glClearStencil: ?FnPtr(function_signatures.glClearStencil) = null;
    var glClearDepth: ?FnPtr(function_signatures.glClearDepth) = null;
    var glStencilMask: ?FnPtr(function_signatures.glStencilMask) = null;
    var glColorMask: ?FnPtr(function_signatures.glColorMask) = null;
    var glDepthMask: ?FnPtr(function_signatures.glDepthMask) = null;
    var glDisable: ?FnPtr(function_signatures.glDisable) = null;
    var glEnable: ?FnPtr(function_signatures.glEnable) = null;
    var glFinish: ?FnPtr(function_signatures.glFinish) = null;
    var glFlush: ?FnPtr(function_signatures.glFlush) = null;
    var glBlendFunc: ?FnPtr(function_signatures.glBlendFunc) = null;
    var glLogicOp: ?FnPtr(function_signatures.glLogicOp) = null;
    var glStencilFunc: ?FnPtr(function_signatures.glStencilFunc) = null;
    var glStencilOp: ?FnPtr(function_signatures.glStencilOp) = null;
    var glDepthFunc: ?FnPtr(function_signatures.glDepthFunc) = null;
    var glPixelStoref: ?FnPtr(function_signatures.glPixelStoref) = null;
    var glPixelStorei: ?FnPtr(function_signatures.glPixelStorei) = null;
    var glReadBuffer: ?FnPtr(function_signatures.glReadBuffer) = null;
    var glReadPixels: ?FnPtr(function_signatures.glReadPixels) = null;
    var glGetBooleanv: ?FnPtr(function_signatures.glGetBooleanv) = null;
    var glGetDoublev: ?FnPtr(function_signatures.glGetDoublev) = null;
    var glGetError: ?FnPtr(function_signatures.glGetError) = null;
    var glGetFloatv: ?FnPtr(function_signatures.glGetFloatv) = null;
    var glGetIntegerv: ?FnPtr(function_signatures.glGetIntegerv) = null;
    var glGetString: ?FnPtr(function_signatures.glGetString) = null;
    var glGetTexImage: ?FnPtr(function_signatures.glGetTexImage) = null;
    var glGetTexParameterfv: ?FnPtr(function_signatures.glGetTexParameterfv) = null;
    var glGetTexParameteriv: ?FnPtr(function_signatures.glGetTexParameteriv) = null;
    var glGetTexLevelParameterfv: ?FnPtr(function_signatures.glGetTexLevelParameterfv) = null;
    var glGetTexLevelParameteriv: ?FnPtr(function_signatures.glGetTexLevelParameteriv) = null;
    var glIsEnabled: ?FnPtr(function_signatures.glIsEnabled) = null;
    var glDepthRange: ?FnPtr(function_signatures.glDepthRange) = null;
    var glViewport: ?FnPtr(function_signatures.glViewport) = null;
    var glNewList: ?FnPtr(function_signatures.glNewList) = null;
    var glEndList: ?FnPtr(function_signatures.glEndList) = null;
    var glCallList: ?FnPtr(function_signatures.glCallList) = null;
    var glCallLists: ?FnPtr(function_signatures.glCallLists) = null;
    var glDeleteLists: ?FnPtr(function_signatures.glDeleteLists) = null;
    var glGenLists: ?FnPtr(function_signatures.glGenLists) = null;
    var glListBase: ?FnPtr(function_signatures.glListBase) = null;
    var glBegin: ?FnPtr(function_signatures.glBegin) = null;
    var glBitmap: ?FnPtr(function_signatures.glBitmap) = null;
    var glColor3b: ?FnPtr(function_signatures.glColor3b) = null;
    var glColor3bv: ?FnPtr(function_signatures.glColor3bv) = null;
    var glColor3d: ?FnPtr(function_signatures.glColor3d) = null;
    var glColor3dv: ?FnPtr(function_signatures.glColor3dv) = null;
    var glColor3f: ?FnPtr(function_signatures.glColor3f) = null;
    var glColor3fv: ?FnPtr(function_signatures.glColor3fv) = null;
    var glColor3i: ?FnPtr(function_signatures.glColor3i) = null;
    var glColor3iv: ?FnPtr(function_signatures.glColor3iv) = null;
    var glColor3s: ?FnPtr(function_signatures.glColor3s) = null;
    var glColor3sv: ?FnPtr(function_signatures.glColor3sv) = null;
    var glColor3ub: ?FnPtr(function_signatures.glColor3ub) = null;
    var glColor3ubv: ?FnPtr(function_signatures.glColor3ubv) = null;
    var glColor3ui: ?FnPtr(function_signatures.glColor3ui) = null;
    var glColor3uiv: ?FnPtr(function_signatures.glColor3uiv) = null;
    var glColor3us: ?FnPtr(function_signatures.glColor3us) = null;
    var glColor3usv: ?FnPtr(function_signatures.glColor3usv) = null;
    var glColor4b: ?FnPtr(function_signatures.glColor4b) = null;
    var glColor4bv: ?FnPtr(function_signatures.glColor4bv) = null;
    var glColor4d: ?FnPtr(function_signatures.glColor4d) = null;
    var glColor4dv: ?FnPtr(function_signatures.glColor4dv) = null;
    var glColor4f: ?FnPtr(function_signatures.glColor4f) = null;
    var glColor4fv: ?FnPtr(function_signatures.glColor4fv) = null;
    var glColor4i: ?FnPtr(function_signatures.glColor4i) = null;
    var glColor4iv: ?FnPtr(function_signatures.glColor4iv) = null;
    var glColor4s: ?FnPtr(function_signatures.glColor4s) = null;
    var glColor4sv: ?FnPtr(function_signatures.glColor4sv) = null;
    var glColor4ub: ?FnPtr(function_signatures.glColor4ub) = null;
    var glColor4ubv: ?FnPtr(function_signatures.glColor4ubv) = null;
    var glColor4ui: ?FnPtr(function_signatures.glColor4ui) = null;
    var glColor4uiv: ?FnPtr(function_signatures.glColor4uiv) = null;
    var glColor4us: ?FnPtr(function_signatures.glColor4us) = null;
    var glColor4usv: ?FnPtr(function_signatures.glColor4usv) = null;
    var glEdgeFlag: ?FnPtr(function_signatures.glEdgeFlag) = null;
    var glEdgeFlagv: ?FnPtr(function_signatures.glEdgeFlagv) = null;
    var glEnd: ?FnPtr(function_signatures.glEnd) = null;
    var glIndexd: ?FnPtr(function_signatures.glIndexd) = null;
    var glIndexdv: ?FnPtr(function_signatures.glIndexdv) = null;
    var glIndexf: ?FnPtr(function_signatures.glIndexf) = null;
    var glIndexfv: ?FnPtr(function_signatures.glIndexfv) = null;
    var glIndexi: ?FnPtr(function_signatures.glIndexi) = null;
    var glIndexiv: ?FnPtr(function_signatures.glIndexiv) = null;
    var glIndexs: ?FnPtr(function_signatures.glIndexs) = null;
    var glIndexsv: ?FnPtr(function_signatures.glIndexsv) = null;
    var glNormal3b: ?FnPtr(function_signatures.glNormal3b) = null;
    var glNormal3bv: ?FnPtr(function_signatures.glNormal3bv) = null;
    var glNormal3d: ?FnPtr(function_signatures.glNormal3d) = null;
    var glNormal3dv: ?FnPtr(function_signatures.glNormal3dv) = null;
    var glNormal3f: ?FnPtr(function_signatures.glNormal3f) = null;
    var glNormal3fv: ?FnPtr(function_signatures.glNormal3fv) = null;
    var glNormal3i: ?FnPtr(function_signatures.glNormal3i) = null;
    var glNormal3iv: ?FnPtr(function_signatures.glNormal3iv) = null;
    var glNormal3s: ?FnPtr(function_signatures.glNormal3s) = null;
    var glNormal3sv: ?FnPtr(function_signatures.glNormal3sv) = null;
    var glRasterPos2d: ?FnPtr(function_signatures.glRasterPos2d) = null;
    var glRasterPos2dv: ?FnPtr(function_signatures.glRasterPos2dv) = null;
    var glRasterPos2f: ?FnPtr(function_signatures.glRasterPos2f) = null;
    var glRasterPos2fv: ?FnPtr(function_signatures.glRasterPos2fv) = null;
    var glRasterPos2i: ?FnPtr(function_signatures.glRasterPos2i) = null;
    var glRasterPos2iv: ?FnPtr(function_signatures.glRasterPos2iv) = null;
    var glRasterPos2s: ?FnPtr(function_signatures.glRasterPos2s) = null;
    var glRasterPos2sv: ?FnPtr(function_signatures.glRasterPos2sv) = null;
    var glRasterPos3d: ?FnPtr(function_signatures.glRasterPos3d) = null;
    var glRasterPos3dv: ?FnPtr(function_signatures.glRasterPos3dv) = null;
    var glRasterPos3f: ?FnPtr(function_signatures.glRasterPos3f) = null;
    var glRasterPos3fv: ?FnPtr(function_signatures.glRasterPos3fv) = null;
    var glRasterPos3i: ?FnPtr(function_signatures.glRasterPos3i) = null;
    var glRasterPos3iv: ?FnPtr(function_signatures.glRasterPos3iv) = null;
    var glRasterPos3s: ?FnPtr(function_signatures.glRasterPos3s) = null;
    var glRasterPos3sv: ?FnPtr(function_signatures.glRasterPos3sv) = null;
    var glRasterPos4d: ?FnPtr(function_signatures.glRasterPos4d) = null;
    var glRasterPos4dv: ?FnPtr(function_signatures.glRasterPos4dv) = null;
    var glRasterPos4f: ?FnPtr(function_signatures.glRasterPos4f) = null;
    var glRasterPos4fv: ?FnPtr(function_signatures.glRasterPos4fv) = null;
    var glRasterPos4i: ?FnPtr(function_signatures.glRasterPos4i) = null;
    var glRasterPos4iv: ?FnPtr(function_signatures.glRasterPos4iv) = null;
    var glRasterPos4s: ?FnPtr(function_signatures.glRasterPos4s) = null;
    var glRasterPos4sv: ?FnPtr(function_signatures.glRasterPos4sv) = null;
    var glRectd: ?FnPtr(function_signatures.glRectd) = null;
    var glRectdv: ?FnPtr(function_signatures.glRectdv) = null;
    var glRectf: ?FnPtr(function_signatures.glRectf) = null;
    var glRectfv: ?FnPtr(function_signatures.glRectfv) = null;
    var glRecti: ?FnPtr(function_signatures.glRecti) = null;
    var glRectiv: ?FnPtr(function_signatures.glRectiv) = null;
    var glRects: ?FnPtr(function_signatures.glRects) = null;
    var glRectsv: ?FnPtr(function_signatures.glRectsv) = null;
    var glTexCoord1d: ?FnPtr(function_signatures.glTexCoord1d) = null;
    var glTexCoord1dv: ?FnPtr(function_signatures.glTexCoord1dv) = null;
    var glTexCoord1f: ?FnPtr(function_signatures.glTexCoord1f) = null;
    var glTexCoord1fv: ?FnPtr(function_signatures.glTexCoord1fv) = null;
    var glTexCoord1i: ?FnPtr(function_signatures.glTexCoord1i) = null;
    var glTexCoord1iv: ?FnPtr(function_signatures.glTexCoord1iv) = null;
    var glTexCoord1s: ?FnPtr(function_signatures.glTexCoord1s) = null;
    var glTexCoord1sv: ?FnPtr(function_signatures.glTexCoord1sv) = null;
    var glTexCoord2d: ?FnPtr(function_signatures.glTexCoord2d) = null;
    var glTexCoord2dv: ?FnPtr(function_signatures.glTexCoord2dv) = null;
    var glTexCoord2f: ?FnPtr(function_signatures.glTexCoord2f) = null;
    var glTexCoord2fv: ?FnPtr(function_signatures.glTexCoord2fv) = null;
    var glTexCoord2i: ?FnPtr(function_signatures.glTexCoord2i) = null;
    var glTexCoord2iv: ?FnPtr(function_signatures.glTexCoord2iv) = null;
    var glTexCoord2s: ?FnPtr(function_signatures.glTexCoord2s) = null;
    var glTexCoord2sv: ?FnPtr(function_signatures.glTexCoord2sv) = null;
    var glTexCoord3d: ?FnPtr(function_signatures.glTexCoord3d) = null;
    var glTexCoord3dv: ?FnPtr(function_signatures.glTexCoord3dv) = null;
    var glTexCoord3f: ?FnPtr(function_signatures.glTexCoord3f) = null;
    var glTexCoord3fv: ?FnPtr(function_signatures.glTexCoord3fv) = null;
    var glTexCoord3i: ?FnPtr(function_signatures.glTexCoord3i) = null;
    var glTexCoord3iv: ?FnPtr(function_signatures.glTexCoord3iv) = null;
    var glTexCoord3s: ?FnPtr(function_signatures.glTexCoord3s) = null;
    var glTexCoord3sv: ?FnPtr(function_signatures.glTexCoord3sv) = null;
    var glTexCoord4d: ?FnPtr(function_signatures.glTexCoord4d) = null;
    var glTexCoord4dv: ?FnPtr(function_signatures.glTexCoord4dv) = null;
    var glTexCoord4f: ?FnPtr(function_signatures.glTexCoord4f) = null;
    var glTexCoord4fv: ?FnPtr(function_signatures.glTexCoord4fv) = null;
    var glTexCoord4i: ?FnPtr(function_signatures.glTexCoord4i) = null;
    var glTexCoord4iv: ?FnPtr(function_signatures.glTexCoord4iv) = null;
    var glTexCoord4s: ?FnPtr(function_signatures.glTexCoord4s) = null;
    var glTexCoord4sv: ?FnPtr(function_signatures.glTexCoord4sv) = null;
    var glVertex2d: ?FnPtr(function_signatures.glVertex2d) = null;
    var glVertex2dv: ?FnPtr(function_signatures.glVertex2dv) = null;
    var glVertex2f: ?FnPtr(function_signatures.glVertex2f) = null;
    var glVertex2fv: ?FnPtr(function_signatures.glVertex2fv) = null;
    var glVertex2i: ?FnPtr(function_signatures.glVertex2i) = null;
    var glVertex2iv: ?FnPtr(function_signatures.glVertex2iv) = null;
    var glVertex2s: ?FnPtr(function_signatures.glVertex2s) = null;
    var glVertex2sv: ?FnPtr(function_signatures.glVertex2sv) = null;
    var glVertex3d: ?FnPtr(function_signatures.glVertex3d) = null;
    var glVertex3dv: ?FnPtr(function_signatures.glVertex3dv) = null;
    var glVertex3f: ?FnPtr(function_signatures.glVertex3f) = null;
    var glVertex3fv: ?FnPtr(function_signatures.glVertex3fv) = null;
    var glVertex3i: ?FnPtr(function_signatures.glVertex3i) = null;
    var glVertex3iv: ?FnPtr(function_signatures.glVertex3iv) = null;
    var glVertex3s: ?FnPtr(function_signatures.glVertex3s) = null;
    var glVertex3sv: ?FnPtr(function_signatures.glVertex3sv) = null;
    var glVertex4d: ?FnPtr(function_signatures.glVertex4d) = null;
    var glVertex4dv: ?FnPtr(function_signatures.glVertex4dv) = null;
    var glVertex4f: ?FnPtr(function_signatures.glVertex4f) = null;
    var glVertex4fv: ?FnPtr(function_signatures.glVertex4fv) = null;
    var glVertex4i: ?FnPtr(function_signatures.glVertex4i) = null;
    var glVertex4iv: ?FnPtr(function_signatures.glVertex4iv) = null;
    var glVertex4s: ?FnPtr(function_signatures.glVertex4s) = null;
    var glVertex4sv: ?FnPtr(function_signatures.glVertex4sv) = null;
    var glClipPlane: ?FnPtr(function_signatures.glClipPlane) = null;
    var glColorMaterial: ?FnPtr(function_signatures.glColorMaterial) = null;
    var glFogf: ?FnPtr(function_signatures.glFogf) = null;
    var glFogfv: ?FnPtr(function_signatures.glFogfv) = null;
    var glFogi: ?FnPtr(function_signatures.glFogi) = null;
    var glFogiv: ?FnPtr(function_signatures.glFogiv) = null;
    var glLightf: ?FnPtr(function_signatures.glLightf) = null;
    var glLightfv: ?FnPtr(function_signatures.glLightfv) = null;
    var glLighti: ?FnPtr(function_signatures.glLighti) = null;
    var glLightiv: ?FnPtr(function_signatures.glLightiv) = null;
    var glLightModelf: ?FnPtr(function_signatures.glLightModelf) = null;
    var glLightModelfv: ?FnPtr(function_signatures.glLightModelfv) = null;
    var glLightModeli: ?FnPtr(function_signatures.glLightModeli) = null;
    var glLightModeliv: ?FnPtr(function_signatures.glLightModeliv) = null;
    var glLineStipple: ?FnPtr(function_signatures.glLineStipple) = null;
    var glMaterialf: ?FnPtr(function_signatures.glMaterialf) = null;
    var glMaterialfv: ?FnPtr(function_signatures.glMaterialfv) = null;
    var glMateriali: ?FnPtr(function_signatures.glMateriali) = null;
    var glMaterialiv: ?FnPtr(function_signatures.glMaterialiv) = null;
    var glPolygonStipple: ?FnPtr(function_signatures.glPolygonStipple) = null;
    var glShadeModel: ?FnPtr(function_signatures.glShadeModel) = null;
    var glTexEnvf: ?FnPtr(function_signatures.glTexEnvf) = null;
    var glTexEnvfv: ?FnPtr(function_signatures.glTexEnvfv) = null;
    var glTexEnvi: ?FnPtr(function_signatures.glTexEnvi) = null;
    var glTexEnviv: ?FnPtr(function_signatures.glTexEnviv) = null;
    var glTexGend: ?FnPtr(function_signatures.glTexGend) = null;
    var glTexGendv: ?FnPtr(function_signatures.glTexGendv) = null;
    var glTexGenf: ?FnPtr(function_signatures.glTexGenf) = null;
    var glTexGenfv: ?FnPtr(function_signatures.glTexGenfv) = null;
    var glTexGeni: ?FnPtr(function_signatures.glTexGeni) = null;
    var glTexGeniv: ?FnPtr(function_signatures.glTexGeniv) = null;
    var glFeedbackBuffer: ?FnPtr(function_signatures.glFeedbackBuffer) = null;
    var glSelectBuffer: ?FnPtr(function_signatures.glSelectBuffer) = null;
    var glRenderMode: ?FnPtr(function_signatures.glRenderMode) = null;
    var glInitNames: ?FnPtr(function_signatures.glInitNames) = null;
    var glLoadName: ?FnPtr(function_signatures.glLoadName) = null;
    var glPassThrough: ?FnPtr(function_signatures.glPassThrough) = null;
    var glPopName: ?FnPtr(function_signatures.glPopName) = null;
    var glPushName: ?FnPtr(function_signatures.glPushName) = null;
    var glClearAccum: ?FnPtr(function_signatures.glClearAccum) = null;
    var glClearIndex: ?FnPtr(function_signatures.glClearIndex) = null;
    var glIndexMask: ?FnPtr(function_signatures.glIndexMask) = null;
    var glAccum: ?FnPtr(function_signatures.glAccum) = null;
    var glPopAttrib: ?FnPtr(function_signatures.glPopAttrib) = null;
    var glPushAttrib: ?FnPtr(function_signatures.glPushAttrib) = null;
    var glMap1d: ?FnPtr(function_signatures.glMap1d) = null;
    var glMap1f: ?FnPtr(function_signatures.glMap1f) = null;
    var glMap2d: ?FnPtr(function_signatures.glMap2d) = null;
    var glMap2f: ?FnPtr(function_signatures.glMap2f) = null;
    var glMapGrid1d: ?FnPtr(function_signatures.glMapGrid1d) = null;
    var glMapGrid1f: ?FnPtr(function_signatures.glMapGrid1f) = null;
    var glMapGrid2d: ?FnPtr(function_signatures.glMapGrid2d) = null;
    var glMapGrid2f: ?FnPtr(function_signatures.glMapGrid2f) = null;
    var glEvalCoord1d: ?FnPtr(function_signatures.glEvalCoord1d) = null;
    var glEvalCoord1dv: ?FnPtr(function_signatures.glEvalCoord1dv) = null;
    var glEvalCoord1f: ?FnPtr(function_signatures.glEvalCoord1f) = null;
    var glEvalCoord1fv: ?FnPtr(function_signatures.glEvalCoord1fv) = null;
    var glEvalCoord2d: ?FnPtr(function_signatures.glEvalCoord2d) = null;
    var glEvalCoord2dv: ?FnPtr(function_signatures.glEvalCoord2dv) = null;
    var glEvalCoord2f: ?FnPtr(function_signatures.glEvalCoord2f) = null;
    var glEvalCoord2fv: ?FnPtr(function_signatures.glEvalCoord2fv) = null;
    var glEvalMesh1: ?FnPtr(function_signatures.glEvalMesh1) = null;
    var glEvalPoint1: ?FnPtr(function_signatures.glEvalPoint1) = null;
    var glEvalMesh2: ?FnPtr(function_signatures.glEvalMesh2) = null;
    var glEvalPoint2: ?FnPtr(function_signatures.glEvalPoint2) = null;
    var glAlphaFunc: ?FnPtr(function_signatures.glAlphaFunc) = null;
    var glPixelZoom: ?FnPtr(function_signatures.glPixelZoom) = null;
    var glPixelTransferf: ?FnPtr(function_signatures.glPixelTransferf) = null;
    var glPixelTransferi: ?FnPtr(function_signatures.glPixelTransferi) = null;
    var glPixelMapfv: ?FnPtr(function_signatures.glPixelMapfv) = null;
    var glPixelMapuiv: ?FnPtr(function_signatures.glPixelMapuiv) = null;
    var glPixelMapusv: ?FnPtr(function_signatures.glPixelMapusv) = null;
    var glCopyPixels: ?FnPtr(function_signatures.glCopyPixels) = null;
    var glDrawPixels: ?FnPtr(function_signatures.glDrawPixels) = null;
    var glGetClipPlane: ?FnPtr(function_signatures.glGetClipPlane) = null;
    var glGetLightfv: ?FnPtr(function_signatures.glGetLightfv) = null;
    var glGetLightiv: ?FnPtr(function_signatures.glGetLightiv) = null;
    var glGetMapdv: ?FnPtr(function_signatures.glGetMapdv) = null;
    var glGetMapfv: ?FnPtr(function_signatures.glGetMapfv) = null;
    var glGetMapiv: ?FnPtr(function_signatures.glGetMapiv) = null;
    var glGetMaterialfv: ?FnPtr(function_signatures.glGetMaterialfv) = null;
    var glGetMaterialiv: ?FnPtr(function_signatures.glGetMaterialiv) = null;
    var glGetPixelMapfv: ?FnPtr(function_signatures.glGetPixelMapfv) = null;
    var glGetPixelMapuiv: ?FnPtr(function_signatures.glGetPixelMapuiv) = null;
    var glGetPixelMapusv: ?FnPtr(function_signatures.glGetPixelMapusv) = null;
    var glGetPolygonStipple: ?FnPtr(function_signatures.glGetPolygonStipple) = null;
    var glGetTexEnvfv: ?FnPtr(function_signatures.glGetTexEnvfv) = null;
    var glGetTexEnviv: ?FnPtr(function_signatures.glGetTexEnviv) = null;
    var glGetTexGendv: ?FnPtr(function_signatures.glGetTexGendv) = null;
    var glGetTexGenfv: ?FnPtr(function_signatures.glGetTexGenfv) = null;
    var glGetTexGeniv: ?FnPtr(function_signatures.glGetTexGeniv) = null;
    var glIsList: ?FnPtr(function_signatures.glIsList) = null;
    var glFrustum: ?FnPtr(function_signatures.glFrustum) = null;
    var glLoadIdentity: ?FnPtr(function_signatures.glLoadIdentity) = null;
    var glLoadMatrixf: ?FnPtr(function_signatures.glLoadMatrixf) = null;
    var glLoadMatrixd: ?FnPtr(function_signatures.glLoadMatrixd) = null;
    var glMatrixMode: ?FnPtr(function_signatures.glMatrixMode) = null;
    var glMultMatrixf: ?FnPtr(function_signatures.glMultMatrixf) = null;
    var glMultMatrixd: ?FnPtr(function_signatures.glMultMatrixd) = null;
    var glOrtho: ?FnPtr(function_signatures.glOrtho) = null;
    var glPopMatrix: ?FnPtr(function_signatures.glPopMatrix) = null;
    var glPushMatrix: ?FnPtr(function_signatures.glPushMatrix) = null;
    var glRotated: ?FnPtr(function_signatures.glRotated) = null;
    var glRotatef: ?FnPtr(function_signatures.glRotatef) = null;
    var glScaled: ?FnPtr(function_signatures.glScaled) = null;
    var glScalef: ?FnPtr(function_signatures.glScalef) = null;
    var glTranslated: ?FnPtr(function_signatures.glTranslated) = null;
    var glTranslatef: ?FnPtr(function_signatures.glTranslatef) = null;
    var glDrawArrays: ?FnPtr(function_signatures.glDrawArrays) = null;
    var glDrawElements: ?FnPtr(function_signatures.glDrawElements) = null;
    var glGetPointerv: ?FnPtr(function_signatures.glGetPointerv) = null;
    var glPolygonOffset: ?FnPtr(function_signatures.glPolygonOffset) = null;
    var glCopyTexImage1D: ?FnPtr(function_signatures.glCopyTexImage1D) = null;
    var glCopyTexImage2D: ?FnPtr(function_signatures.glCopyTexImage2D) = null;
    var glCopyTexSubImage1D: ?FnPtr(function_signatures.glCopyTexSubImage1D) = null;
    var glCopyTexSubImage2D: ?FnPtr(function_signatures.glCopyTexSubImage2D) = null;
    var glTexSubImage1D: ?FnPtr(function_signatures.glTexSubImage1D) = null;
    var glTexSubImage2D: ?FnPtr(function_signatures.glTexSubImage2D) = null;
    var glBindTexture: ?FnPtr(function_signatures.glBindTexture) = null;
    var glDeleteTextures: ?FnPtr(function_signatures.glDeleteTextures) = null;
    var glGenTextures: ?FnPtr(function_signatures.glGenTextures) = null;
    var glIsTexture: ?FnPtr(function_signatures.glIsTexture) = null;
    var glArrayElement: ?FnPtr(function_signatures.glArrayElement) = null;
    var glColorPointer: ?FnPtr(function_signatures.glColorPointer) = null;
    var glDisableClientState: ?FnPtr(function_signatures.glDisableClientState) = null;
    var glEdgeFlagPointer: ?FnPtr(function_signatures.glEdgeFlagPointer) = null;
    var glEnableClientState: ?FnPtr(function_signatures.glEnableClientState) = null;
    var glIndexPointer: ?FnPtr(function_signatures.glIndexPointer) = null;
    var glInterleavedArrays: ?FnPtr(function_signatures.glInterleavedArrays) = null;
    var glNormalPointer: ?FnPtr(function_signatures.glNormalPointer) = null;
    var glTexCoordPointer: ?FnPtr(function_signatures.glTexCoordPointer) = null;
    var glVertexPointer: ?FnPtr(function_signatures.glVertexPointer) = null;
    var glAreTexturesResident: ?FnPtr(function_signatures.glAreTexturesResident) = null;
    var glPrioritizeTextures: ?FnPtr(function_signatures.glPrioritizeTextures) = null;
    var glIndexub: ?FnPtr(function_signatures.glIndexub) = null;
    var glIndexubv: ?FnPtr(function_signatures.glIndexubv) = null;
    var glPopClientAttrib: ?FnPtr(function_signatures.glPopClientAttrib) = null;
    var glPushClientAttrib: ?FnPtr(function_signatures.glPushClientAttrib) = null;
    var glDrawRangeElements: ?FnPtr(function_signatures.glDrawRangeElements) = null;
    var glTexImage3D: ?FnPtr(function_signatures.glTexImage3D) = null;
    var glTexSubImage3D: ?FnPtr(function_signatures.glTexSubImage3D) = null;
    var glCopyTexSubImage3D: ?FnPtr(function_signatures.glCopyTexSubImage3D) = null;
    var glActiveTexture: ?FnPtr(function_signatures.glActiveTexture) = null;
    var glSampleCoverage: ?FnPtr(function_signatures.glSampleCoverage) = null;
    var glCompressedTexImage3D: ?FnPtr(function_signatures.glCompressedTexImage3D) = null;
    var glCompressedTexImage2D: ?FnPtr(function_signatures.glCompressedTexImage2D) = null;
    var glCompressedTexImage1D: ?FnPtr(function_signatures.glCompressedTexImage1D) = null;
    var glCompressedTexSubImage3D: ?FnPtr(function_signatures.glCompressedTexSubImage3D) = null;
    var glCompressedTexSubImage2D: ?FnPtr(function_signatures.glCompressedTexSubImage2D) = null;
    var glCompressedTexSubImage1D: ?FnPtr(function_signatures.glCompressedTexSubImage1D) = null;
    var glGetCompressedTexImage: ?FnPtr(function_signatures.glGetCompressedTexImage) = null;
    var glClientActiveTexture: ?FnPtr(function_signatures.glClientActiveTexture) = null;
    var glMultiTexCoord1d: ?FnPtr(function_signatures.glMultiTexCoord1d) = null;
    var glMultiTexCoord1dv: ?FnPtr(function_signatures.glMultiTexCoord1dv) = null;
    var glMultiTexCoord1f: ?FnPtr(function_signatures.glMultiTexCoord1f) = null;
    var glMultiTexCoord1fv: ?FnPtr(function_signatures.glMultiTexCoord1fv) = null;
    var glMultiTexCoord1i: ?FnPtr(function_signatures.glMultiTexCoord1i) = null;
    var glMultiTexCoord1iv: ?FnPtr(function_signatures.glMultiTexCoord1iv) = null;
    var glMultiTexCoord1s: ?FnPtr(function_signatures.glMultiTexCoord1s) = null;
    var glMultiTexCoord1sv: ?FnPtr(function_signatures.glMultiTexCoord1sv) = null;
    var glMultiTexCoord2d: ?FnPtr(function_signatures.glMultiTexCoord2d) = null;
    var glMultiTexCoord2dv: ?FnPtr(function_signatures.glMultiTexCoord2dv) = null;
    var glMultiTexCoord2f: ?FnPtr(function_signatures.glMultiTexCoord2f) = null;
    var glMultiTexCoord2fv: ?FnPtr(function_signatures.glMultiTexCoord2fv) = null;
    var glMultiTexCoord2i: ?FnPtr(function_signatures.glMultiTexCoord2i) = null;
    var glMultiTexCoord2iv: ?FnPtr(function_signatures.glMultiTexCoord2iv) = null;
    var glMultiTexCoord2s: ?FnPtr(function_signatures.glMultiTexCoord2s) = null;
    var glMultiTexCoord2sv: ?FnPtr(function_signatures.glMultiTexCoord2sv) = null;
    var glMultiTexCoord3d: ?FnPtr(function_signatures.glMultiTexCoord3d) = null;
    var glMultiTexCoord3dv: ?FnPtr(function_signatures.glMultiTexCoord3dv) = null;
    var glMultiTexCoord3f: ?FnPtr(function_signatures.glMultiTexCoord3f) = null;
    var glMultiTexCoord3fv: ?FnPtr(function_signatures.glMultiTexCoord3fv) = null;
    var glMultiTexCoord3i: ?FnPtr(function_signatures.glMultiTexCoord3i) = null;
    var glMultiTexCoord3iv: ?FnPtr(function_signatures.glMultiTexCoord3iv) = null;
    var glMultiTexCoord3s: ?FnPtr(function_signatures.glMultiTexCoord3s) = null;
    var glMultiTexCoord3sv: ?FnPtr(function_signatures.glMultiTexCoord3sv) = null;
    var glMultiTexCoord4d: ?FnPtr(function_signatures.glMultiTexCoord4d) = null;
    var glMultiTexCoord4dv: ?FnPtr(function_signatures.glMultiTexCoord4dv) = null;
    var glMultiTexCoord4f: ?FnPtr(function_signatures.glMultiTexCoord4f) = null;
    var glMultiTexCoord4fv: ?FnPtr(function_signatures.glMultiTexCoord4fv) = null;
    var glMultiTexCoord4i: ?FnPtr(function_signatures.glMultiTexCoord4i) = null;
    var glMultiTexCoord4iv: ?FnPtr(function_signatures.glMultiTexCoord4iv) = null;
    var glMultiTexCoord4s: ?FnPtr(function_signatures.glMultiTexCoord4s) = null;
    var glMultiTexCoord4sv: ?FnPtr(function_signatures.glMultiTexCoord4sv) = null;
    var glLoadTransposeMatrixf: ?FnPtr(function_signatures.glLoadTransposeMatrixf) = null;
    var glLoadTransposeMatrixd: ?FnPtr(function_signatures.glLoadTransposeMatrixd) = null;
    var glMultTransposeMatrixf: ?FnPtr(function_signatures.glMultTransposeMatrixf) = null;
    var glMultTransposeMatrixd: ?FnPtr(function_signatures.glMultTransposeMatrixd) = null;
    var glBlendFuncSeparate: ?FnPtr(function_signatures.glBlendFuncSeparate) = null;
    var glMultiDrawArrays: ?FnPtr(function_signatures.glMultiDrawArrays) = null;
    var glMultiDrawElements: ?FnPtr(function_signatures.glMultiDrawElements) = null;
    var glPointParameterf: ?FnPtr(function_signatures.glPointParameterf) = null;
    var glPointParameterfv: ?FnPtr(function_signatures.glPointParameterfv) = null;
    var glPointParameteri: ?FnPtr(function_signatures.glPointParameteri) = null;
    var glPointParameteriv: ?FnPtr(function_signatures.glPointParameteriv) = null;
    var glFogCoordf: ?FnPtr(function_signatures.glFogCoordf) = null;
    var glFogCoordfv: ?FnPtr(function_signatures.glFogCoordfv) = null;
    var glFogCoordd: ?FnPtr(function_signatures.glFogCoordd) = null;
    var glFogCoorddv: ?FnPtr(function_signatures.glFogCoorddv) = null;
    var glFogCoordPointer: ?FnPtr(function_signatures.glFogCoordPointer) = null;
    var glSecondaryColor3b: ?FnPtr(function_signatures.glSecondaryColor3b) = null;
    var glSecondaryColor3bv: ?FnPtr(function_signatures.glSecondaryColor3bv) = null;
    var glSecondaryColor3d: ?FnPtr(function_signatures.glSecondaryColor3d) = null;
    var glSecondaryColor3dv: ?FnPtr(function_signatures.glSecondaryColor3dv) = null;
    var glSecondaryColor3f: ?FnPtr(function_signatures.glSecondaryColor3f) = null;
    var glSecondaryColor3fv: ?FnPtr(function_signatures.glSecondaryColor3fv) = null;
    var glSecondaryColor3i: ?FnPtr(function_signatures.glSecondaryColor3i) = null;
    var glSecondaryColor3iv: ?FnPtr(function_signatures.glSecondaryColor3iv) = null;
    var glSecondaryColor3s: ?FnPtr(function_signatures.glSecondaryColor3s) = null;
    var glSecondaryColor3sv: ?FnPtr(function_signatures.glSecondaryColor3sv) = null;
    var glSecondaryColor3ub: ?FnPtr(function_signatures.glSecondaryColor3ub) = null;
    var glSecondaryColor3ubv: ?FnPtr(function_signatures.glSecondaryColor3ubv) = null;
    var glSecondaryColor3ui: ?FnPtr(function_signatures.glSecondaryColor3ui) = null;
    var glSecondaryColor3uiv: ?FnPtr(function_signatures.glSecondaryColor3uiv) = null;
    var glSecondaryColor3us: ?FnPtr(function_signatures.glSecondaryColor3us) = null;
    var glSecondaryColor3usv: ?FnPtr(function_signatures.glSecondaryColor3usv) = null;
    var glSecondaryColorPointer: ?FnPtr(function_signatures.glSecondaryColorPointer) = null;
    var glWindowPos2d: ?FnPtr(function_signatures.glWindowPos2d) = null;
    var glWindowPos2dv: ?FnPtr(function_signatures.glWindowPos2dv) = null;
    var glWindowPos2f: ?FnPtr(function_signatures.glWindowPos2f) = null;
    var glWindowPos2fv: ?FnPtr(function_signatures.glWindowPos2fv) = null;
    var glWindowPos2i: ?FnPtr(function_signatures.glWindowPos2i) = null;
    var glWindowPos2iv: ?FnPtr(function_signatures.glWindowPos2iv) = null;
    var glWindowPos2s: ?FnPtr(function_signatures.glWindowPos2s) = null;
    var glWindowPos2sv: ?FnPtr(function_signatures.glWindowPos2sv) = null;
    var glWindowPos3d: ?FnPtr(function_signatures.glWindowPos3d) = null;
    var glWindowPos3dv: ?FnPtr(function_signatures.glWindowPos3dv) = null;
    var glWindowPos3f: ?FnPtr(function_signatures.glWindowPos3f) = null;
    var glWindowPos3fv: ?FnPtr(function_signatures.glWindowPos3fv) = null;
    var glWindowPos3i: ?FnPtr(function_signatures.glWindowPos3i) = null;
    var glWindowPos3iv: ?FnPtr(function_signatures.glWindowPos3iv) = null;
    var glWindowPos3s: ?FnPtr(function_signatures.glWindowPos3s) = null;
    var glWindowPos3sv: ?FnPtr(function_signatures.glWindowPos3sv) = null;
    var glBlendColor: ?FnPtr(function_signatures.glBlendColor) = null;
    var glBlendEquation: ?FnPtr(function_signatures.glBlendEquation) = null;
    var glGenQueries: ?FnPtr(function_signatures.glGenQueries) = null;
    var glDeleteQueries: ?FnPtr(function_signatures.glDeleteQueries) = null;
    var glIsQuery: ?FnPtr(function_signatures.glIsQuery) = null;
    var glBeginQuery: ?FnPtr(function_signatures.glBeginQuery) = null;
    var glEndQuery: ?FnPtr(function_signatures.glEndQuery) = null;
    var glGetQueryiv: ?FnPtr(function_signatures.glGetQueryiv) = null;
    var glGetQueryObjectiv: ?FnPtr(function_signatures.glGetQueryObjectiv) = null;
    var glGetQueryObjectuiv: ?FnPtr(function_signatures.glGetQueryObjectuiv) = null;
    var glBindBuffer: ?FnPtr(function_signatures.glBindBuffer) = null;
    var glDeleteBuffers: ?FnPtr(function_signatures.glDeleteBuffers) = null;
    var glGenBuffers: ?FnPtr(function_signatures.glGenBuffers) = null;
    var glIsBuffer: ?FnPtr(function_signatures.glIsBuffer) = null;
    var glBufferData: ?FnPtr(function_signatures.glBufferData) = null;
    var glBufferSubData: ?FnPtr(function_signatures.glBufferSubData) = null;
    var glGetBufferSubData: ?FnPtr(function_signatures.glGetBufferSubData) = null;
    var glMapBuffer: ?FnPtr(function_signatures.glMapBuffer) = null;
    var glUnmapBuffer: ?FnPtr(function_signatures.glUnmapBuffer) = null;
    var glGetBufferParameteriv: ?FnPtr(function_signatures.glGetBufferParameteriv) = null;
    var glGetBufferPointerv: ?FnPtr(function_signatures.glGetBufferPointerv) = null;
    var glBlendEquationSeparate: ?FnPtr(function_signatures.glBlendEquationSeparate) = null;
    var glDrawBuffers: ?FnPtr(function_signatures.glDrawBuffers) = null;
    var glStencilOpSeparate: ?FnPtr(function_signatures.glStencilOpSeparate) = null;
    var glStencilFuncSeparate: ?FnPtr(function_signatures.glStencilFuncSeparate) = null;
    var glStencilMaskSeparate: ?FnPtr(function_signatures.glStencilMaskSeparate) = null;
    var glAttachShader: ?FnPtr(function_signatures.glAttachShader) = null;
    var glBindAttribLocation: ?FnPtr(function_signatures.glBindAttribLocation) = null;
    var glCompileShader: ?FnPtr(function_signatures.glCompileShader) = null;
    var glCreateProgram: ?FnPtr(function_signatures.glCreateProgram) = null;
    var glCreateShader: ?FnPtr(function_signatures.glCreateShader) = null;
    var glDeleteProgram: ?FnPtr(function_signatures.glDeleteProgram) = null;
    var glDeleteShader: ?FnPtr(function_signatures.glDeleteShader) = null;
    var glDetachShader: ?FnPtr(function_signatures.glDetachShader) = null;
    var glDisableVertexAttribArray: ?FnPtr(function_signatures.glDisableVertexAttribArray) = null;
    var glEnableVertexAttribArray: ?FnPtr(function_signatures.glEnableVertexAttribArray) = null;
    var glGetActiveAttrib: ?FnPtr(function_signatures.glGetActiveAttrib) = null;
    var glGetActiveUniform: ?FnPtr(function_signatures.glGetActiveUniform) = null;
    var glGetAttachedShaders: ?FnPtr(function_signatures.glGetAttachedShaders) = null;
    var glGetAttribLocation: ?FnPtr(function_signatures.glGetAttribLocation) = null;
    var glGetProgramiv: ?FnPtr(function_signatures.glGetProgramiv) = null;
    var glGetProgramInfoLog: ?FnPtr(function_signatures.glGetProgramInfoLog) = null;
    var glGetShaderiv: ?FnPtr(function_signatures.glGetShaderiv) = null;
    var glGetShaderInfoLog: ?FnPtr(function_signatures.glGetShaderInfoLog) = null;
    var glGetShaderSource: ?FnPtr(function_signatures.glGetShaderSource) = null;
    var glGetUniformLocation: ?FnPtr(function_signatures.glGetUniformLocation) = null;
    var glGetUniformfv: ?FnPtr(function_signatures.glGetUniformfv) = null;
    var glGetUniformiv: ?FnPtr(function_signatures.glGetUniformiv) = null;
    var glGetVertexAttribdv: ?FnPtr(function_signatures.glGetVertexAttribdv) = null;
    var glGetVertexAttribfv: ?FnPtr(function_signatures.glGetVertexAttribfv) = null;
    var glGetVertexAttribiv: ?FnPtr(function_signatures.glGetVertexAttribiv) = null;
    var glGetVertexAttribPointerv: ?FnPtr(function_signatures.glGetVertexAttribPointerv) = null;
    var glIsProgram: ?FnPtr(function_signatures.glIsProgram) = null;
    var glIsShader: ?FnPtr(function_signatures.glIsShader) = null;
    var glLinkProgram: ?FnPtr(function_signatures.glLinkProgram) = null;
    var glShaderSource: ?FnPtr(function_signatures.glShaderSource) = null;
    var glUseProgram: ?FnPtr(function_signatures.glUseProgram) = null;
    var glUniform1f: ?FnPtr(function_signatures.glUniform1f) = null;
    var glUniform2f: ?FnPtr(function_signatures.glUniform2f) = null;
    var glUniform3f: ?FnPtr(function_signatures.glUniform3f) = null;
    var glUniform4f: ?FnPtr(function_signatures.glUniform4f) = null;
    var glUniform1i: ?FnPtr(function_signatures.glUniform1i) = null;
    var glUniform2i: ?FnPtr(function_signatures.glUniform2i) = null;
    var glUniform3i: ?FnPtr(function_signatures.glUniform3i) = null;
    var glUniform4i: ?FnPtr(function_signatures.glUniform4i) = null;
    var glUniform1fv: ?FnPtr(function_signatures.glUniform1fv) = null;
    var glUniform2fv: ?FnPtr(function_signatures.glUniform2fv) = null;
    var glUniform3fv: ?FnPtr(function_signatures.glUniform3fv) = null;
    var glUniform4fv: ?FnPtr(function_signatures.glUniform4fv) = null;
    var glUniform1iv: ?FnPtr(function_signatures.glUniform1iv) = null;
    var glUniform2iv: ?FnPtr(function_signatures.glUniform2iv) = null;
    var glUniform3iv: ?FnPtr(function_signatures.glUniform3iv) = null;
    var glUniform4iv: ?FnPtr(function_signatures.glUniform4iv) = null;
    var glUniformMatrix2fv: ?FnPtr(function_signatures.glUniformMatrix2fv) = null;
    var glUniformMatrix3fv: ?FnPtr(function_signatures.glUniformMatrix3fv) = null;
    var glUniformMatrix4fv: ?FnPtr(function_signatures.glUniformMatrix4fv) = null;
    var glValidateProgram: ?FnPtr(function_signatures.glValidateProgram) = null;
    var glVertexAttrib1d: ?FnPtr(function_signatures.glVertexAttrib1d) = null;
    var glVertexAttrib1dv: ?FnPtr(function_signatures.glVertexAttrib1dv) = null;
    var glVertexAttrib1f: ?FnPtr(function_signatures.glVertexAttrib1f) = null;
    var glVertexAttrib1fv: ?FnPtr(function_signatures.glVertexAttrib1fv) = null;
    var glVertexAttrib1s: ?FnPtr(function_signatures.glVertexAttrib1s) = null;
    var glVertexAttrib1sv: ?FnPtr(function_signatures.glVertexAttrib1sv) = null;
    var glVertexAttrib2d: ?FnPtr(function_signatures.glVertexAttrib2d) = null;
    var glVertexAttrib2dv: ?FnPtr(function_signatures.glVertexAttrib2dv) = null;
    var glVertexAttrib2f: ?FnPtr(function_signatures.glVertexAttrib2f) = null;
    var glVertexAttrib2fv: ?FnPtr(function_signatures.glVertexAttrib2fv) = null;
    var glVertexAttrib2s: ?FnPtr(function_signatures.glVertexAttrib2s) = null;
    var glVertexAttrib2sv: ?FnPtr(function_signatures.glVertexAttrib2sv) = null;
    var glVertexAttrib3d: ?FnPtr(function_signatures.glVertexAttrib3d) = null;
    var glVertexAttrib3dv: ?FnPtr(function_signatures.glVertexAttrib3dv) = null;
    var glVertexAttrib3f: ?FnPtr(function_signatures.glVertexAttrib3f) = null;
    var glVertexAttrib3fv: ?FnPtr(function_signatures.glVertexAttrib3fv) = null;
    var glVertexAttrib3s: ?FnPtr(function_signatures.glVertexAttrib3s) = null;
    var glVertexAttrib3sv: ?FnPtr(function_signatures.glVertexAttrib3sv) = null;
    var glVertexAttrib4Nbv: ?FnPtr(function_signatures.glVertexAttrib4Nbv) = null;
    var glVertexAttrib4Niv: ?FnPtr(function_signatures.glVertexAttrib4Niv) = null;
    var glVertexAttrib4Nsv: ?FnPtr(function_signatures.glVertexAttrib4Nsv) = null;
    var glVertexAttrib4Nub: ?FnPtr(function_signatures.glVertexAttrib4Nub) = null;
    var glVertexAttrib4Nubv: ?FnPtr(function_signatures.glVertexAttrib4Nubv) = null;
    var glVertexAttrib4Nuiv: ?FnPtr(function_signatures.glVertexAttrib4Nuiv) = null;
    var glVertexAttrib4Nusv: ?FnPtr(function_signatures.glVertexAttrib4Nusv) = null;
    var glVertexAttrib4bv: ?FnPtr(function_signatures.glVertexAttrib4bv) = null;
    var glVertexAttrib4d: ?FnPtr(function_signatures.glVertexAttrib4d) = null;
    var glVertexAttrib4dv: ?FnPtr(function_signatures.glVertexAttrib4dv) = null;
    var glVertexAttrib4f: ?FnPtr(function_signatures.glVertexAttrib4f) = null;
    var glVertexAttrib4fv: ?FnPtr(function_signatures.glVertexAttrib4fv) = null;
    var glVertexAttrib4iv: ?FnPtr(function_signatures.glVertexAttrib4iv) = null;
    var glVertexAttrib4s: ?FnPtr(function_signatures.glVertexAttrib4s) = null;
    var glVertexAttrib4sv: ?FnPtr(function_signatures.glVertexAttrib4sv) = null;
    var glVertexAttrib4ubv: ?FnPtr(function_signatures.glVertexAttrib4ubv) = null;
    var glVertexAttrib4uiv: ?FnPtr(function_signatures.glVertexAttrib4uiv) = null;
    var glVertexAttrib4usv: ?FnPtr(function_signatures.glVertexAttrib4usv) = null;
    var glVertexAttribPointer: ?FnPtr(function_signatures.glVertexAttribPointer) = null;
    var glUniformMatrix2x3fv: ?FnPtr(function_signatures.glUniformMatrix2x3fv) = null;
    var glUniformMatrix3x2fv: ?FnPtr(function_signatures.glUniformMatrix3x2fv) = null;
    var glUniformMatrix2x4fv: ?FnPtr(function_signatures.glUniformMatrix2x4fv) = null;
    var glUniformMatrix4x2fv: ?FnPtr(function_signatures.glUniformMatrix4x2fv) = null;
    var glUniformMatrix3x4fv: ?FnPtr(function_signatures.glUniformMatrix3x4fv) = null;
    var glUniformMatrix4x3fv: ?FnPtr(function_signatures.glUniformMatrix4x3fv) = null;
    var glColorMaski: ?FnPtr(function_signatures.glColorMaski) = null;
    var glGetBooleani_v: ?FnPtr(function_signatures.glGetBooleani_v) = null;
    var glGetIntegeri_v: ?FnPtr(function_signatures.glGetIntegeri_v) = null;
    var glEnablei: ?FnPtr(function_signatures.glEnablei) = null;
    var glDisablei: ?FnPtr(function_signatures.glDisablei) = null;
    var glIsEnabledi: ?FnPtr(function_signatures.glIsEnabledi) = null;
    var glBeginTransformFeedback: ?FnPtr(function_signatures.glBeginTransformFeedback) = null;
    var glEndTransformFeedback: ?FnPtr(function_signatures.glEndTransformFeedback) = null;
    var glBindBufferRange: ?FnPtr(function_signatures.glBindBufferRange) = null;
    var glBindBufferBase: ?FnPtr(function_signatures.glBindBufferBase) = null;
    var glTransformFeedbackVaryings: ?FnPtr(function_signatures.glTransformFeedbackVaryings) = null;
    var glGetTransformFeedbackVarying: ?FnPtr(function_signatures.glGetTransformFeedbackVarying) = null;
    var glClampColor: ?FnPtr(function_signatures.glClampColor) = null;
    var glBeginConditionalRender: ?FnPtr(function_signatures.glBeginConditionalRender) = null;
    var glEndConditionalRender: ?FnPtr(function_signatures.glEndConditionalRender) = null;
    var glVertexAttribIPointer: ?FnPtr(function_signatures.glVertexAttribIPointer) = null;
    var glGetVertexAttribIiv: ?FnPtr(function_signatures.glGetVertexAttribIiv) = null;
    var glGetVertexAttribIuiv: ?FnPtr(function_signatures.glGetVertexAttribIuiv) = null;
    var glVertexAttribI1i: ?FnPtr(function_signatures.glVertexAttribI1i) = null;
    var glVertexAttribI2i: ?FnPtr(function_signatures.glVertexAttribI2i) = null;
    var glVertexAttribI3i: ?FnPtr(function_signatures.glVertexAttribI3i) = null;
    var glVertexAttribI4i: ?FnPtr(function_signatures.glVertexAttribI4i) = null;
    var glVertexAttribI1ui: ?FnPtr(function_signatures.glVertexAttribI1ui) = null;
    var glVertexAttribI2ui: ?FnPtr(function_signatures.glVertexAttribI2ui) = null;
    var glVertexAttribI3ui: ?FnPtr(function_signatures.glVertexAttribI3ui) = null;
    var glVertexAttribI4ui: ?FnPtr(function_signatures.glVertexAttribI4ui) = null;
    var glVertexAttribI1iv: ?FnPtr(function_signatures.glVertexAttribI1iv) = null;
    var glVertexAttribI2iv: ?FnPtr(function_signatures.glVertexAttribI2iv) = null;
    var glVertexAttribI3iv: ?FnPtr(function_signatures.glVertexAttribI3iv) = null;
    var glVertexAttribI4iv: ?FnPtr(function_signatures.glVertexAttribI4iv) = null;
    var glVertexAttribI1uiv: ?FnPtr(function_signatures.glVertexAttribI1uiv) = null;
    var glVertexAttribI2uiv: ?FnPtr(function_signatures.glVertexAttribI2uiv) = null;
    var glVertexAttribI3uiv: ?FnPtr(function_signatures.glVertexAttribI3uiv) = null;
    var glVertexAttribI4uiv: ?FnPtr(function_signatures.glVertexAttribI4uiv) = null;
    var glVertexAttribI4bv: ?FnPtr(function_signatures.glVertexAttribI4bv) = null;
    var glVertexAttribI4sv: ?FnPtr(function_signatures.glVertexAttribI4sv) = null;
    var glVertexAttribI4ubv: ?FnPtr(function_signatures.glVertexAttribI4ubv) = null;
    var glVertexAttribI4usv: ?FnPtr(function_signatures.glVertexAttribI4usv) = null;
    var glGetUniformuiv: ?FnPtr(function_signatures.glGetUniformuiv) = null;
    var glBindFragDataLocation: ?FnPtr(function_signatures.glBindFragDataLocation) = null;
    var glGetFragDataLocation: ?FnPtr(function_signatures.glGetFragDataLocation) = null;
    var glUniform1ui: ?FnPtr(function_signatures.glUniform1ui) = null;
    var glUniform2ui: ?FnPtr(function_signatures.glUniform2ui) = null;
    var glUniform3ui: ?FnPtr(function_signatures.glUniform3ui) = null;
    var glUniform4ui: ?FnPtr(function_signatures.glUniform4ui) = null;
    var glUniform1uiv: ?FnPtr(function_signatures.glUniform1uiv) = null;
    var glUniform2uiv: ?FnPtr(function_signatures.glUniform2uiv) = null;
    var glUniform3uiv: ?FnPtr(function_signatures.glUniform3uiv) = null;
    var glUniform4uiv: ?FnPtr(function_signatures.glUniform4uiv) = null;
    var glTexParameterIiv: ?FnPtr(function_signatures.glTexParameterIiv) = null;
    var glTexParameterIuiv: ?FnPtr(function_signatures.glTexParameterIuiv) = null;
    var glGetTexParameterIiv: ?FnPtr(function_signatures.glGetTexParameterIiv) = null;
    var glGetTexParameterIuiv: ?FnPtr(function_signatures.glGetTexParameterIuiv) = null;
    var glClearBufferiv: ?FnPtr(function_signatures.glClearBufferiv) = null;
    var glClearBufferuiv: ?FnPtr(function_signatures.glClearBufferuiv) = null;
    var glClearBufferfv: ?FnPtr(function_signatures.glClearBufferfv) = null;
    var glClearBufferfi: ?FnPtr(function_signatures.glClearBufferfi) = null;
    var glGetStringi: ?FnPtr(function_signatures.glGetStringi) = null;
    var glIsRenderbuffer: ?FnPtr(function_signatures.glIsRenderbuffer) = null;
    var glBindRenderbuffer: ?FnPtr(function_signatures.glBindRenderbuffer) = null;
    var glDeleteRenderbuffers: ?FnPtr(function_signatures.glDeleteRenderbuffers) = null;
    var glGenRenderbuffers: ?FnPtr(function_signatures.glGenRenderbuffers) = null;
    var glRenderbufferStorage: ?FnPtr(function_signatures.glRenderbufferStorage) = null;
    var glGetRenderbufferParameteriv: ?FnPtr(function_signatures.glGetRenderbufferParameteriv) = null;
    var glIsFramebuffer: ?FnPtr(function_signatures.glIsFramebuffer) = null;
    var glBindFramebuffer: ?FnPtr(function_signatures.glBindFramebuffer) = null;
    var glDeleteFramebuffers: ?FnPtr(function_signatures.glDeleteFramebuffers) = null;
    var glGenFramebuffers: ?FnPtr(function_signatures.glGenFramebuffers) = null;
    var glCheckFramebufferStatus: ?FnPtr(function_signatures.glCheckFramebufferStatus) = null;
    var glFramebufferTexture1D: ?FnPtr(function_signatures.glFramebufferTexture1D) = null;
    var glFramebufferTexture2D: ?FnPtr(function_signatures.glFramebufferTexture2D) = null;
    var glFramebufferTexture3D: ?FnPtr(function_signatures.glFramebufferTexture3D) = null;
    var glFramebufferRenderbuffer: ?FnPtr(function_signatures.glFramebufferRenderbuffer) = null;
    var glGetFramebufferAttachmentParameteriv: ?FnPtr(function_signatures.glGetFramebufferAttachmentParameteriv) = null;
    var glGenerateMipmap: ?FnPtr(function_signatures.glGenerateMipmap) = null;
    var glBlitFramebuffer: ?FnPtr(function_signatures.glBlitFramebuffer) = null;
    var glRenderbufferStorageMultisample: ?FnPtr(function_signatures.glRenderbufferStorageMultisample) = null;
    var glFramebufferTextureLayer: ?FnPtr(function_signatures.glFramebufferTextureLayer) = null;
    var glMapBufferRange: ?FnPtr(function_signatures.glMapBufferRange) = null;
    var glFlushMappedBufferRange: ?FnPtr(function_signatures.glFlushMappedBufferRange) = null;
    var glBindVertexArray: ?FnPtr(function_signatures.glBindVertexArray) = null;
    var glDeleteVertexArrays: ?FnPtr(function_signatures.glDeleteVertexArrays) = null;
    var glGenVertexArrays: ?FnPtr(function_signatures.glGenVertexArrays) = null;
    var glIsVertexArray: ?FnPtr(function_signatures.glIsVertexArray) = null;
    var glDrawArraysInstanced: ?FnPtr(function_signatures.glDrawArraysInstanced) = null;
    var glDrawElementsInstanced: ?FnPtr(function_signatures.glDrawElementsInstanced) = null;
    var glTexBuffer: ?FnPtr(function_signatures.glTexBuffer) = null;
    var glPrimitiveRestartIndex: ?FnPtr(function_signatures.glPrimitiveRestartIndex) = null;
    var glCopyBufferSubData: ?FnPtr(function_signatures.glCopyBufferSubData) = null;
    var glGetUniformIndices: ?FnPtr(function_signatures.glGetUniformIndices) = null;
    var glGetActiveUniformsiv: ?FnPtr(function_signatures.glGetActiveUniformsiv) = null;
    var glGetActiveUniformName: ?FnPtr(function_signatures.glGetActiveUniformName) = null;
    var glGetUniformBlockIndex: ?FnPtr(function_signatures.glGetUniformBlockIndex) = null;
    var glGetActiveUniformBlockiv: ?FnPtr(function_signatures.glGetActiveUniformBlockiv) = null;
    var glGetActiveUniformBlockName: ?FnPtr(function_signatures.glGetActiveUniformBlockName) = null;
    var glUniformBlockBinding: ?FnPtr(function_signatures.glUniformBlockBinding) = null;
};

test {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
