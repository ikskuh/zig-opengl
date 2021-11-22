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

pub fn texImage1D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexImage1D orelse @panic("glTexImage1D was not bound."))(_target, _level, _internalformat, _width, _border, _format, _type, _pixels);
}

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
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

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void {
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

pub fn getTexImage(_target: GLenum, _level: GLint, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void {
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

pub fn callLists(_n: GLsizei, _type: GLenum, _lists: ?*const c_void) void {
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

pub fn drawPixels(_width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
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

pub fn drawElements(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(_mode, _count, _type, _indices);
}

pub fn getPointerv(_pname: GLenum, _params: ?*?*c_void) void {
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

pub fn texSubImage1D(_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
    return (function_pointers.glTexSubImage1D orelse @panic("glTexSubImage1D was not bound."))(_target, _level, _xoffset, _width, _format, _type, _pixels);
}

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void {
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

pub fn colorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn disableClientState(_array: GLenum) void {
    return (function_pointers.glDisableClientState orelse @panic("glDisableClientState was not bound."))(_array);
}

pub fn edgeFlagPointer(_stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glEdgeFlagPointer orelse @panic("glEdgeFlagPointer was not bound."))(_stride, _pointer);
}

pub fn enableClientState(_array: GLenum) void {
    return (function_pointers.glEnableClientState orelse @panic("glEnableClientState was not bound."))(_array);
}

pub fn indexPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glIndexPointer orelse @panic("glIndexPointer was not bound."))(_type, _stride, _pointer);
}

pub fn interleavedArrays(_format: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glInterleavedArrays orelse @panic("glInterleavedArrays was not bound."))(_format, _stride, _pointer);
}

pub fn normalPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glNormalPointer orelse @panic("glNormalPointer was not bound."))(_type, _stride, _pointer);
}

pub fn texCoordPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
    return (function_pointers.glTexCoordPointer orelse @panic("glTexCoordPointer was not bound."))(_size, _type, _stride, _pointer);
}

pub fn vertexPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
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

pub fn activeTexture(_texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(_texture);
}

pub fn sampleCoverage(_value: GLfloat, _invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(_value, _invert);
}

pub fn compressedTexImage3D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexImage3D orelse @panic("glCompressedTexImage3D was not bound."))(_target, _level, _internalformat, _width, _height, _depth, _border, _imageSize, _data);
}

pub fn compressedTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(_target, _level, _internalformat, _width, _height, _border, _imageSize, _data);
}

pub fn compressedTexImage1D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexImage1D orelse @panic("glCompressedTexImage1D was not bound."))(_target, _level, _internalformat, _width, _border, _imageSize, _data);
}

pub fn compressedTexSubImage3D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexSubImage3D orelse @panic("glCompressedTexSubImage3D was not bound."))(_target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _imageSize, _data);
}

pub fn compressedTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(_target, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data);
}

pub fn compressedTexSubImage1D(_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void {
    return (function_pointers.glCompressedTexSubImage1D orelse @panic("glCompressedTexSubImage1D was not bound."))(_target, _level, _xoffset, _width, _format, _imageSize, _data);
}

pub fn getCompressedTexImage(_target: GLenum, _level: GLint, _img: ?*c_void) void {
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

pub fn multiDrawElements(_mode: GLenum, _count: [*c]const GLsizei, _type: GLenum, _indices: [*c]const ?*const c_void, _drawcount: GLsizei) void {
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

pub fn fogCoordPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
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

pub fn secondaryColorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void {
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
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*const c_void) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(?function_signatures.glCullFace, proc);
    } else {
        log.emerg("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(?function_signatures.glFrontFace, proc);
    } else {
        log.emerg("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(?function_signatures.glHint, proc);
    } else {
        log.emerg("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(?function_signatures.glLineWidth, proc);
    } else {
        log.emerg("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSize")) |proc| {
        function_pointers.glPointSize = @ptrCast(?function_signatures.glPointSize, proc);
    } else {
        log.emerg("entry point glPointSize not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonMode")) |proc| {
        function_pointers.glPolygonMode = @ptrCast(?function_signatures.glPolygonMode, proc);
    } else {
        log.emerg("entry point glPolygonMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(?function_signatures.glScissor, proc);
    } else {
        log.emerg("entry point glScissor not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexImage1D")) |proc| {
        function_pointers.glTexImage1D = @ptrCast(?function_signatures.glTexImage1D, proc);
    } else {
        log.emerg("entry point glTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(?function_signatures.glTexImage2D, proc);
    } else {
        log.emerg("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawBuffer")) |proc| {
        function_pointers.glDrawBuffer = @ptrCast(?function_signatures.glDrawBuffer, proc);
    } else {
        log.emerg("entry point glDrawBuffer not found!", .{});
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
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(?function_signatures.glClearStencil, proc);
    } else {
        log.emerg("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepth")) |proc| {
        function_pointers.glClearDepth = @ptrCast(?function_signatures.glClearDepth, proc);
    } else {
        log.emerg("entry point glClearDepth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(?function_signatures.glStencilMask, proc);
    } else {
        log.emerg("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(?function_signatures.glColorMask, proc);
    } else {
        log.emerg("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(?function_signatures.glDepthMask, proc);
    } else {
        log.emerg("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(?function_signatures.glDisable, proc);
    } else {
        log.emerg("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(?function_signatures.glEnable, proc);
    } else {
        log.emerg("entry point glEnable not found!", .{});
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
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(?function_signatures.glBlendFunc, proc);
    } else {
        log.emerg("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLogicOp")) |proc| {
        function_pointers.glLogicOp = @ptrCast(?function_signatures.glLogicOp, proc);
    } else {
        log.emerg("entry point glLogicOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(?function_signatures.glStencilFunc, proc);
    } else {
        log.emerg("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(?function_signatures.glStencilOp, proc);
    } else {
        log.emerg("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(?function_signatures.glDepthFunc, proc);
    } else {
        log.emerg("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStoref")) |proc| {
        function_pointers.glPixelStoref = @ptrCast(?function_signatures.glPixelStoref, proc);
    } else {
        log.emerg("entry point glPixelStoref not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(?function_signatures.glPixelStorei, proc);
    } else {
        log.emerg("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadBuffer")) |proc| {
        function_pointers.glReadBuffer = @ptrCast(?function_signatures.glReadBuffer, proc);
    } else {
        log.emerg("entry point glReadBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(?function_signatures.glReadPixels, proc);
    } else {
        log.emerg("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(?function_signatures.glGetBooleanv, proc);
    } else {
        log.emerg("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetDoublev")) |proc| {
        function_pointers.glGetDoublev = @ptrCast(?function_signatures.glGetDoublev, proc);
    } else {
        log.emerg("entry point glGetDoublev not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(?function_signatures.glGetIntegerv, proc);
    } else {
        log.emerg("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(?function_signatures.glGetString, proc);
    } else {
        log.emerg("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexImage")) |proc| {
        function_pointers.glGetTexImage = @ptrCast(?function_signatures.glGetTexImage, proc);
    } else {
        log.emerg("entry point glGetTexImage not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetTexLevelParameterfv")) |proc| {
        function_pointers.glGetTexLevelParameterfv = @ptrCast(?function_signatures.glGetTexLevelParameterfv, proc);
    } else {
        log.emerg("entry point glGetTexLevelParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexLevelParameteriv")) |proc| {
        function_pointers.glGetTexLevelParameteriv = @ptrCast(?function_signatures.glGetTexLevelParameteriv, proc);
    } else {
        log.emerg("entry point glGetTexLevelParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(?function_signatures.glIsEnabled, proc);
    } else {
        log.emerg("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRange")) |proc| {
        function_pointers.glDepthRange = @ptrCast(?function_signatures.glDepthRange, proc);
    } else {
        log.emerg("entry point glDepthRange not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(?function_signatures.glViewport, proc);
    } else {
        log.emerg("entry point glViewport not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNewList")) |proc| {
        function_pointers.glNewList = @ptrCast(?function_signatures.glNewList, proc);
    } else {
        log.emerg("entry point glNewList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndList")) |proc| {
        function_pointers.glEndList = @ptrCast(?function_signatures.glEndList, proc);
    } else {
        log.emerg("entry point glEndList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCallList")) |proc| {
        function_pointers.glCallList = @ptrCast(?function_signatures.glCallList, proc);
    } else {
        log.emerg("entry point glCallList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCallLists")) |proc| {
        function_pointers.glCallLists = @ptrCast(?function_signatures.glCallLists, proc);
    } else {
        log.emerg("entry point glCallLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteLists")) |proc| {
        function_pointers.glDeleteLists = @ptrCast(?function_signatures.glDeleteLists, proc);
    } else {
        log.emerg("entry point glDeleteLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenLists")) |proc| {
        function_pointers.glGenLists = @ptrCast(?function_signatures.glGenLists, proc);
    } else {
        log.emerg("entry point glGenLists not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glListBase")) |proc| {
        function_pointers.glListBase = @ptrCast(?function_signatures.glListBase, proc);
    } else {
        log.emerg("entry point glListBase not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBegin")) |proc| {
        function_pointers.glBegin = @ptrCast(?function_signatures.glBegin, proc);
    } else {
        log.emerg("entry point glBegin not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBitmap")) |proc| {
        function_pointers.glBitmap = @ptrCast(?function_signatures.glBitmap, proc);
    } else {
        log.emerg("entry point glBitmap not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3b")) |proc| {
        function_pointers.glColor3b = @ptrCast(?function_signatures.glColor3b, proc);
    } else {
        log.emerg("entry point glColor3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3bv")) |proc| {
        function_pointers.glColor3bv = @ptrCast(?function_signatures.glColor3bv, proc);
    } else {
        log.emerg("entry point glColor3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3d")) |proc| {
        function_pointers.glColor3d = @ptrCast(?function_signatures.glColor3d, proc);
    } else {
        log.emerg("entry point glColor3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3dv")) |proc| {
        function_pointers.glColor3dv = @ptrCast(?function_signatures.glColor3dv, proc);
    } else {
        log.emerg("entry point glColor3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3f")) |proc| {
        function_pointers.glColor3f = @ptrCast(?function_signatures.glColor3f, proc);
    } else {
        log.emerg("entry point glColor3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3fv")) |proc| {
        function_pointers.glColor3fv = @ptrCast(?function_signatures.glColor3fv, proc);
    } else {
        log.emerg("entry point glColor3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3i")) |proc| {
        function_pointers.glColor3i = @ptrCast(?function_signatures.glColor3i, proc);
    } else {
        log.emerg("entry point glColor3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3iv")) |proc| {
        function_pointers.glColor3iv = @ptrCast(?function_signatures.glColor3iv, proc);
    } else {
        log.emerg("entry point glColor3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3s")) |proc| {
        function_pointers.glColor3s = @ptrCast(?function_signatures.glColor3s, proc);
    } else {
        log.emerg("entry point glColor3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3sv")) |proc| {
        function_pointers.glColor3sv = @ptrCast(?function_signatures.glColor3sv, proc);
    } else {
        log.emerg("entry point glColor3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ub")) |proc| {
        function_pointers.glColor3ub = @ptrCast(?function_signatures.glColor3ub, proc);
    } else {
        log.emerg("entry point glColor3ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ubv")) |proc| {
        function_pointers.glColor3ubv = @ptrCast(?function_signatures.glColor3ubv, proc);
    } else {
        log.emerg("entry point glColor3ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3ui")) |proc| {
        function_pointers.glColor3ui = @ptrCast(?function_signatures.glColor3ui, proc);
    } else {
        log.emerg("entry point glColor3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3uiv")) |proc| {
        function_pointers.glColor3uiv = @ptrCast(?function_signatures.glColor3uiv, proc);
    } else {
        log.emerg("entry point glColor3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3us")) |proc| {
        function_pointers.glColor3us = @ptrCast(?function_signatures.glColor3us, proc);
    } else {
        log.emerg("entry point glColor3us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor3usv")) |proc| {
        function_pointers.glColor3usv = @ptrCast(?function_signatures.glColor3usv, proc);
    } else {
        log.emerg("entry point glColor3usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4b")) |proc| {
        function_pointers.glColor4b = @ptrCast(?function_signatures.glColor4b, proc);
    } else {
        log.emerg("entry point glColor4b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4bv")) |proc| {
        function_pointers.glColor4bv = @ptrCast(?function_signatures.glColor4bv, proc);
    } else {
        log.emerg("entry point glColor4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4d")) |proc| {
        function_pointers.glColor4d = @ptrCast(?function_signatures.glColor4d, proc);
    } else {
        log.emerg("entry point glColor4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4dv")) |proc| {
        function_pointers.glColor4dv = @ptrCast(?function_signatures.glColor4dv, proc);
    } else {
        log.emerg("entry point glColor4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4f")) |proc| {
        function_pointers.glColor4f = @ptrCast(?function_signatures.glColor4f, proc);
    } else {
        log.emerg("entry point glColor4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4fv")) |proc| {
        function_pointers.glColor4fv = @ptrCast(?function_signatures.glColor4fv, proc);
    } else {
        log.emerg("entry point glColor4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4i")) |proc| {
        function_pointers.glColor4i = @ptrCast(?function_signatures.glColor4i, proc);
    } else {
        log.emerg("entry point glColor4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4iv")) |proc| {
        function_pointers.glColor4iv = @ptrCast(?function_signatures.glColor4iv, proc);
    } else {
        log.emerg("entry point glColor4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4s")) |proc| {
        function_pointers.glColor4s = @ptrCast(?function_signatures.glColor4s, proc);
    } else {
        log.emerg("entry point glColor4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4sv")) |proc| {
        function_pointers.glColor4sv = @ptrCast(?function_signatures.glColor4sv, proc);
    } else {
        log.emerg("entry point glColor4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ub")) |proc| {
        function_pointers.glColor4ub = @ptrCast(?function_signatures.glColor4ub, proc);
    } else {
        log.emerg("entry point glColor4ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ubv")) |proc| {
        function_pointers.glColor4ubv = @ptrCast(?function_signatures.glColor4ubv, proc);
    } else {
        log.emerg("entry point glColor4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ui")) |proc| {
        function_pointers.glColor4ui = @ptrCast(?function_signatures.glColor4ui, proc);
    } else {
        log.emerg("entry point glColor4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4uiv")) |proc| {
        function_pointers.glColor4uiv = @ptrCast(?function_signatures.glColor4uiv, proc);
    } else {
        log.emerg("entry point glColor4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4us")) |proc| {
        function_pointers.glColor4us = @ptrCast(?function_signatures.glColor4us, proc);
    } else {
        log.emerg("entry point glColor4us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4usv")) |proc| {
        function_pointers.glColor4usv = @ptrCast(?function_signatures.glColor4usv, proc);
    } else {
        log.emerg("entry point glColor4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlag")) |proc| {
        function_pointers.glEdgeFlag = @ptrCast(?function_signatures.glEdgeFlag, proc);
    } else {
        log.emerg("entry point glEdgeFlag not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlagv")) |proc| {
        function_pointers.glEdgeFlagv = @ptrCast(?function_signatures.glEdgeFlagv, proc);
    } else {
        log.emerg("entry point glEdgeFlagv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnd")) |proc| {
        function_pointers.glEnd = @ptrCast(?function_signatures.glEnd, proc);
    } else {
        log.emerg("entry point glEnd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexd")) |proc| {
        function_pointers.glIndexd = @ptrCast(?function_signatures.glIndexd, proc);
    } else {
        log.emerg("entry point glIndexd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexdv")) |proc| {
        function_pointers.glIndexdv = @ptrCast(?function_signatures.glIndexdv, proc);
    } else {
        log.emerg("entry point glIndexdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexf")) |proc| {
        function_pointers.glIndexf = @ptrCast(?function_signatures.glIndexf, proc);
    } else {
        log.emerg("entry point glIndexf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexfv")) |proc| {
        function_pointers.glIndexfv = @ptrCast(?function_signatures.glIndexfv, proc);
    } else {
        log.emerg("entry point glIndexfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexi")) |proc| {
        function_pointers.glIndexi = @ptrCast(?function_signatures.glIndexi, proc);
    } else {
        log.emerg("entry point glIndexi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexiv")) |proc| {
        function_pointers.glIndexiv = @ptrCast(?function_signatures.glIndexiv, proc);
    } else {
        log.emerg("entry point glIndexiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexs")) |proc| {
        function_pointers.glIndexs = @ptrCast(?function_signatures.glIndexs, proc);
    } else {
        log.emerg("entry point glIndexs not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexsv")) |proc| {
        function_pointers.glIndexsv = @ptrCast(?function_signatures.glIndexsv, proc);
    } else {
        log.emerg("entry point glIndexsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3b")) |proc| {
        function_pointers.glNormal3b = @ptrCast(?function_signatures.glNormal3b, proc);
    } else {
        log.emerg("entry point glNormal3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3bv")) |proc| {
        function_pointers.glNormal3bv = @ptrCast(?function_signatures.glNormal3bv, proc);
    } else {
        log.emerg("entry point glNormal3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3d")) |proc| {
        function_pointers.glNormal3d = @ptrCast(?function_signatures.glNormal3d, proc);
    } else {
        log.emerg("entry point glNormal3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3dv")) |proc| {
        function_pointers.glNormal3dv = @ptrCast(?function_signatures.glNormal3dv, proc);
    } else {
        log.emerg("entry point glNormal3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3f")) |proc| {
        function_pointers.glNormal3f = @ptrCast(?function_signatures.glNormal3f, proc);
    } else {
        log.emerg("entry point glNormal3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3fv")) |proc| {
        function_pointers.glNormal3fv = @ptrCast(?function_signatures.glNormal3fv, proc);
    } else {
        log.emerg("entry point glNormal3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3i")) |proc| {
        function_pointers.glNormal3i = @ptrCast(?function_signatures.glNormal3i, proc);
    } else {
        log.emerg("entry point glNormal3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3iv")) |proc| {
        function_pointers.glNormal3iv = @ptrCast(?function_signatures.glNormal3iv, proc);
    } else {
        log.emerg("entry point glNormal3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3s")) |proc| {
        function_pointers.glNormal3s = @ptrCast(?function_signatures.glNormal3s, proc);
    } else {
        log.emerg("entry point glNormal3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3sv")) |proc| {
        function_pointers.glNormal3sv = @ptrCast(?function_signatures.glNormal3sv, proc);
    } else {
        log.emerg("entry point glNormal3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2d")) |proc| {
        function_pointers.glRasterPos2d = @ptrCast(?function_signatures.glRasterPos2d, proc);
    } else {
        log.emerg("entry point glRasterPos2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2dv")) |proc| {
        function_pointers.glRasterPos2dv = @ptrCast(?function_signatures.glRasterPos2dv, proc);
    } else {
        log.emerg("entry point glRasterPos2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2f")) |proc| {
        function_pointers.glRasterPos2f = @ptrCast(?function_signatures.glRasterPos2f, proc);
    } else {
        log.emerg("entry point glRasterPos2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2fv")) |proc| {
        function_pointers.glRasterPos2fv = @ptrCast(?function_signatures.glRasterPos2fv, proc);
    } else {
        log.emerg("entry point glRasterPos2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2i")) |proc| {
        function_pointers.glRasterPos2i = @ptrCast(?function_signatures.glRasterPos2i, proc);
    } else {
        log.emerg("entry point glRasterPos2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2iv")) |proc| {
        function_pointers.glRasterPos2iv = @ptrCast(?function_signatures.glRasterPos2iv, proc);
    } else {
        log.emerg("entry point glRasterPos2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2s")) |proc| {
        function_pointers.glRasterPos2s = @ptrCast(?function_signatures.glRasterPos2s, proc);
    } else {
        log.emerg("entry point glRasterPos2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos2sv")) |proc| {
        function_pointers.glRasterPos2sv = @ptrCast(?function_signatures.glRasterPos2sv, proc);
    } else {
        log.emerg("entry point glRasterPos2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3d")) |proc| {
        function_pointers.glRasterPos3d = @ptrCast(?function_signatures.glRasterPos3d, proc);
    } else {
        log.emerg("entry point glRasterPos3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3dv")) |proc| {
        function_pointers.glRasterPos3dv = @ptrCast(?function_signatures.glRasterPos3dv, proc);
    } else {
        log.emerg("entry point glRasterPos3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3f")) |proc| {
        function_pointers.glRasterPos3f = @ptrCast(?function_signatures.glRasterPos3f, proc);
    } else {
        log.emerg("entry point glRasterPos3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3fv")) |proc| {
        function_pointers.glRasterPos3fv = @ptrCast(?function_signatures.glRasterPos3fv, proc);
    } else {
        log.emerg("entry point glRasterPos3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3i")) |proc| {
        function_pointers.glRasterPos3i = @ptrCast(?function_signatures.glRasterPos3i, proc);
    } else {
        log.emerg("entry point glRasterPos3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3iv")) |proc| {
        function_pointers.glRasterPos3iv = @ptrCast(?function_signatures.glRasterPos3iv, proc);
    } else {
        log.emerg("entry point glRasterPos3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3s")) |proc| {
        function_pointers.glRasterPos3s = @ptrCast(?function_signatures.glRasterPos3s, proc);
    } else {
        log.emerg("entry point glRasterPos3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos3sv")) |proc| {
        function_pointers.glRasterPos3sv = @ptrCast(?function_signatures.glRasterPos3sv, proc);
    } else {
        log.emerg("entry point glRasterPos3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4d")) |proc| {
        function_pointers.glRasterPos4d = @ptrCast(?function_signatures.glRasterPos4d, proc);
    } else {
        log.emerg("entry point glRasterPos4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4dv")) |proc| {
        function_pointers.glRasterPos4dv = @ptrCast(?function_signatures.glRasterPos4dv, proc);
    } else {
        log.emerg("entry point glRasterPos4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4f")) |proc| {
        function_pointers.glRasterPos4f = @ptrCast(?function_signatures.glRasterPos4f, proc);
    } else {
        log.emerg("entry point glRasterPos4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4fv")) |proc| {
        function_pointers.glRasterPos4fv = @ptrCast(?function_signatures.glRasterPos4fv, proc);
    } else {
        log.emerg("entry point glRasterPos4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4i")) |proc| {
        function_pointers.glRasterPos4i = @ptrCast(?function_signatures.glRasterPos4i, proc);
    } else {
        log.emerg("entry point glRasterPos4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4iv")) |proc| {
        function_pointers.glRasterPos4iv = @ptrCast(?function_signatures.glRasterPos4iv, proc);
    } else {
        log.emerg("entry point glRasterPos4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4s")) |proc| {
        function_pointers.glRasterPos4s = @ptrCast(?function_signatures.glRasterPos4s, proc);
    } else {
        log.emerg("entry point glRasterPos4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRasterPos4sv")) |proc| {
        function_pointers.glRasterPos4sv = @ptrCast(?function_signatures.glRasterPos4sv, proc);
    } else {
        log.emerg("entry point glRasterPos4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectd")) |proc| {
        function_pointers.glRectd = @ptrCast(?function_signatures.glRectd, proc);
    } else {
        log.emerg("entry point glRectd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectdv")) |proc| {
        function_pointers.glRectdv = @ptrCast(?function_signatures.glRectdv, proc);
    } else {
        log.emerg("entry point glRectdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectf")) |proc| {
        function_pointers.glRectf = @ptrCast(?function_signatures.glRectf, proc);
    } else {
        log.emerg("entry point glRectf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectfv")) |proc| {
        function_pointers.glRectfv = @ptrCast(?function_signatures.glRectfv, proc);
    } else {
        log.emerg("entry point glRectfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRecti")) |proc| {
        function_pointers.glRecti = @ptrCast(?function_signatures.glRecti, proc);
    } else {
        log.emerg("entry point glRecti not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectiv")) |proc| {
        function_pointers.glRectiv = @ptrCast(?function_signatures.glRectiv, proc);
    } else {
        log.emerg("entry point glRectiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRects")) |proc| {
        function_pointers.glRects = @ptrCast(?function_signatures.glRects, proc);
    } else {
        log.emerg("entry point glRects not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRectsv")) |proc| {
        function_pointers.glRectsv = @ptrCast(?function_signatures.glRectsv, proc);
    } else {
        log.emerg("entry point glRectsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1d")) |proc| {
        function_pointers.glTexCoord1d = @ptrCast(?function_signatures.glTexCoord1d, proc);
    } else {
        log.emerg("entry point glTexCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1dv")) |proc| {
        function_pointers.glTexCoord1dv = @ptrCast(?function_signatures.glTexCoord1dv, proc);
    } else {
        log.emerg("entry point glTexCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1f")) |proc| {
        function_pointers.glTexCoord1f = @ptrCast(?function_signatures.glTexCoord1f, proc);
    } else {
        log.emerg("entry point glTexCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1fv")) |proc| {
        function_pointers.glTexCoord1fv = @ptrCast(?function_signatures.glTexCoord1fv, proc);
    } else {
        log.emerg("entry point glTexCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1i")) |proc| {
        function_pointers.glTexCoord1i = @ptrCast(?function_signatures.glTexCoord1i, proc);
    } else {
        log.emerg("entry point glTexCoord1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1iv")) |proc| {
        function_pointers.glTexCoord1iv = @ptrCast(?function_signatures.glTexCoord1iv, proc);
    } else {
        log.emerg("entry point glTexCoord1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1s")) |proc| {
        function_pointers.glTexCoord1s = @ptrCast(?function_signatures.glTexCoord1s, proc);
    } else {
        log.emerg("entry point glTexCoord1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord1sv")) |proc| {
        function_pointers.glTexCoord1sv = @ptrCast(?function_signatures.glTexCoord1sv, proc);
    } else {
        log.emerg("entry point glTexCoord1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2d")) |proc| {
        function_pointers.glTexCoord2d = @ptrCast(?function_signatures.glTexCoord2d, proc);
    } else {
        log.emerg("entry point glTexCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2dv")) |proc| {
        function_pointers.glTexCoord2dv = @ptrCast(?function_signatures.glTexCoord2dv, proc);
    } else {
        log.emerg("entry point glTexCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2f")) |proc| {
        function_pointers.glTexCoord2f = @ptrCast(?function_signatures.glTexCoord2f, proc);
    } else {
        log.emerg("entry point glTexCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2fv")) |proc| {
        function_pointers.glTexCoord2fv = @ptrCast(?function_signatures.glTexCoord2fv, proc);
    } else {
        log.emerg("entry point glTexCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2i")) |proc| {
        function_pointers.glTexCoord2i = @ptrCast(?function_signatures.glTexCoord2i, proc);
    } else {
        log.emerg("entry point glTexCoord2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2iv")) |proc| {
        function_pointers.glTexCoord2iv = @ptrCast(?function_signatures.glTexCoord2iv, proc);
    } else {
        log.emerg("entry point glTexCoord2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2s")) |proc| {
        function_pointers.glTexCoord2s = @ptrCast(?function_signatures.glTexCoord2s, proc);
    } else {
        log.emerg("entry point glTexCoord2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord2sv")) |proc| {
        function_pointers.glTexCoord2sv = @ptrCast(?function_signatures.glTexCoord2sv, proc);
    } else {
        log.emerg("entry point glTexCoord2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3d")) |proc| {
        function_pointers.glTexCoord3d = @ptrCast(?function_signatures.glTexCoord3d, proc);
    } else {
        log.emerg("entry point glTexCoord3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3dv")) |proc| {
        function_pointers.glTexCoord3dv = @ptrCast(?function_signatures.glTexCoord3dv, proc);
    } else {
        log.emerg("entry point glTexCoord3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3f")) |proc| {
        function_pointers.glTexCoord3f = @ptrCast(?function_signatures.glTexCoord3f, proc);
    } else {
        log.emerg("entry point glTexCoord3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3fv")) |proc| {
        function_pointers.glTexCoord3fv = @ptrCast(?function_signatures.glTexCoord3fv, proc);
    } else {
        log.emerg("entry point glTexCoord3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3i")) |proc| {
        function_pointers.glTexCoord3i = @ptrCast(?function_signatures.glTexCoord3i, proc);
    } else {
        log.emerg("entry point glTexCoord3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3iv")) |proc| {
        function_pointers.glTexCoord3iv = @ptrCast(?function_signatures.glTexCoord3iv, proc);
    } else {
        log.emerg("entry point glTexCoord3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3s")) |proc| {
        function_pointers.glTexCoord3s = @ptrCast(?function_signatures.glTexCoord3s, proc);
    } else {
        log.emerg("entry point glTexCoord3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord3sv")) |proc| {
        function_pointers.glTexCoord3sv = @ptrCast(?function_signatures.glTexCoord3sv, proc);
    } else {
        log.emerg("entry point glTexCoord3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4d")) |proc| {
        function_pointers.glTexCoord4d = @ptrCast(?function_signatures.glTexCoord4d, proc);
    } else {
        log.emerg("entry point glTexCoord4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4dv")) |proc| {
        function_pointers.glTexCoord4dv = @ptrCast(?function_signatures.glTexCoord4dv, proc);
    } else {
        log.emerg("entry point glTexCoord4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4f")) |proc| {
        function_pointers.glTexCoord4f = @ptrCast(?function_signatures.glTexCoord4f, proc);
    } else {
        log.emerg("entry point glTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4fv")) |proc| {
        function_pointers.glTexCoord4fv = @ptrCast(?function_signatures.glTexCoord4fv, proc);
    } else {
        log.emerg("entry point glTexCoord4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4i")) |proc| {
        function_pointers.glTexCoord4i = @ptrCast(?function_signatures.glTexCoord4i, proc);
    } else {
        log.emerg("entry point glTexCoord4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4iv")) |proc| {
        function_pointers.glTexCoord4iv = @ptrCast(?function_signatures.glTexCoord4iv, proc);
    } else {
        log.emerg("entry point glTexCoord4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4s")) |proc| {
        function_pointers.glTexCoord4s = @ptrCast(?function_signatures.glTexCoord4s, proc);
    } else {
        log.emerg("entry point glTexCoord4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoord4sv")) |proc| {
        function_pointers.glTexCoord4sv = @ptrCast(?function_signatures.glTexCoord4sv, proc);
    } else {
        log.emerg("entry point glTexCoord4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2d")) |proc| {
        function_pointers.glVertex2d = @ptrCast(?function_signatures.glVertex2d, proc);
    } else {
        log.emerg("entry point glVertex2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2dv")) |proc| {
        function_pointers.glVertex2dv = @ptrCast(?function_signatures.glVertex2dv, proc);
    } else {
        log.emerg("entry point glVertex2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2f")) |proc| {
        function_pointers.glVertex2f = @ptrCast(?function_signatures.glVertex2f, proc);
    } else {
        log.emerg("entry point glVertex2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2fv")) |proc| {
        function_pointers.glVertex2fv = @ptrCast(?function_signatures.glVertex2fv, proc);
    } else {
        log.emerg("entry point glVertex2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2i")) |proc| {
        function_pointers.glVertex2i = @ptrCast(?function_signatures.glVertex2i, proc);
    } else {
        log.emerg("entry point glVertex2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2iv")) |proc| {
        function_pointers.glVertex2iv = @ptrCast(?function_signatures.glVertex2iv, proc);
    } else {
        log.emerg("entry point glVertex2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2s")) |proc| {
        function_pointers.glVertex2s = @ptrCast(?function_signatures.glVertex2s, proc);
    } else {
        log.emerg("entry point glVertex2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex2sv")) |proc| {
        function_pointers.glVertex2sv = @ptrCast(?function_signatures.glVertex2sv, proc);
    } else {
        log.emerg("entry point glVertex2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3d")) |proc| {
        function_pointers.glVertex3d = @ptrCast(?function_signatures.glVertex3d, proc);
    } else {
        log.emerg("entry point glVertex3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3dv")) |proc| {
        function_pointers.glVertex3dv = @ptrCast(?function_signatures.glVertex3dv, proc);
    } else {
        log.emerg("entry point glVertex3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3f")) |proc| {
        function_pointers.glVertex3f = @ptrCast(?function_signatures.glVertex3f, proc);
    } else {
        log.emerg("entry point glVertex3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3fv")) |proc| {
        function_pointers.glVertex3fv = @ptrCast(?function_signatures.glVertex3fv, proc);
    } else {
        log.emerg("entry point glVertex3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3i")) |proc| {
        function_pointers.glVertex3i = @ptrCast(?function_signatures.glVertex3i, proc);
    } else {
        log.emerg("entry point glVertex3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3iv")) |proc| {
        function_pointers.glVertex3iv = @ptrCast(?function_signatures.glVertex3iv, proc);
    } else {
        log.emerg("entry point glVertex3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3s")) |proc| {
        function_pointers.glVertex3s = @ptrCast(?function_signatures.glVertex3s, proc);
    } else {
        log.emerg("entry point glVertex3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex3sv")) |proc| {
        function_pointers.glVertex3sv = @ptrCast(?function_signatures.glVertex3sv, proc);
    } else {
        log.emerg("entry point glVertex3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4d")) |proc| {
        function_pointers.glVertex4d = @ptrCast(?function_signatures.glVertex4d, proc);
    } else {
        log.emerg("entry point glVertex4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4dv")) |proc| {
        function_pointers.glVertex4dv = @ptrCast(?function_signatures.glVertex4dv, proc);
    } else {
        log.emerg("entry point glVertex4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4f")) |proc| {
        function_pointers.glVertex4f = @ptrCast(?function_signatures.glVertex4f, proc);
    } else {
        log.emerg("entry point glVertex4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4fv")) |proc| {
        function_pointers.glVertex4fv = @ptrCast(?function_signatures.glVertex4fv, proc);
    } else {
        log.emerg("entry point glVertex4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4i")) |proc| {
        function_pointers.glVertex4i = @ptrCast(?function_signatures.glVertex4i, proc);
    } else {
        log.emerg("entry point glVertex4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4iv")) |proc| {
        function_pointers.glVertex4iv = @ptrCast(?function_signatures.glVertex4iv, proc);
    } else {
        log.emerg("entry point glVertex4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4s")) |proc| {
        function_pointers.glVertex4s = @ptrCast(?function_signatures.glVertex4s, proc);
    } else {
        log.emerg("entry point glVertex4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertex4sv")) |proc| {
        function_pointers.glVertex4sv = @ptrCast(?function_signatures.glVertex4sv, proc);
    } else {
        log.emerg("entry point glVertex4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlane")) |proc| {
        function_pointers.glClipPlane = @ptrCast(?function_signatures.glClipPlane, proc);
    } else {
        log.emerg("entry point glClipPlane not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMaterial")) |proc| {
        function_pointers.glColorMaterial = @ptrCast(?function_signatures.glColorMaterial, proc);
    } else {
        log.emerg("entry point glColorMaterial not found!", .{});
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
    if (get_proc_address(load_ctx, "glFogi")) |proc| {
        function_pointers.glFogi = @ptrCast(?function_signatures.glFogi, proc);
    } else {
        log.emerg("entry point glFogi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogiv")) |proc| {
        function_pointers.glFogiv = @ptrCast(?function_signatures.glFogiv, proc);
    } else {
        log.emerg("entry point glFogiv not found!", .{});
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
    if (get_proc_address(load_ctx, "glLighti")) |proc| {
        function_pointers.glLighti = @ptrCast(?function_signatures.glLighti, proc);
    } else {
        log.emerg("entry point glLighti not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightiv")) |proc| {
        function_pointers.glLightiv = @ptrCast(?function_signatures.glLightiv, proc);
    } else {
        log.emerg("entry point glLightiv not found!", .{});
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
    if (get_proc_address(load_ctx, "glLightModeli")) |proc| {
        function_pointers.glLightModeli = @ptrCast(?function_signatures.glLightModeli, proc);
    } else {
        log.emerg("entry point glLightModeli not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModeliv")) |proc| {
        function_pointers.glLightModeliv = @ptrCast(?function_signatures.glLightModeliv, proc);
    } else {
        log.emerg("entry point glLightModeliv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineStipple")) |proc| {
        function_pointers.glLineStipple = @ptrCast(?function_signatures.glLineStipple, proc);
    } else {
        log.emerg("entry point glLineStipple not found!", .{});
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
    if (get_proc_address(load_ctx, "glMateriali")) |proc| {
        function_pointers.glMateriali = @ptrCast(?function_signatures.glMateriali, proc);
    } else {
        log.emerg("entry point glMateriali not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialiv")) |proc| {
        function_pointers.glMaterialiv = @ptrCast(?function_signatures.glMaterialiv, proc);
    } else {
        log.emerg("entry point glMaterialiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonStipple")) |proc| {
        function_pointers.glPolygonStipple = @ptrCast(?function_signatures.glPolygonStipple, proc);
    } else {
        log.emerg("entry point glPolygonStipple not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShadeModel")) |proc| {
        function_pointers.glShadeModel = @ptrCast(?function_signatures.glShadeModel, proc);
    } else {
        log.emerg("entry point glShadeModel not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexEnvi")) |proc| {
        function_pointers.glTexEnvi = @ptrCast(?function_signatures.glTexEnvi, proc);
    } else {
        log.emerg("entry point glTexEnvi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnviv")) |proc| {
        function_pointers.glTexEnviv = @ptrCast(?function_signatures.glTexEnviv, proc);
    } else {
        log.emerg("entry point glTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGend")) |proc| {
        function_pointers.glTexGend = @ptrCast(?function_signatures.glTexGend, proc);
    } else {
        log.emerg("entry point glTexGend not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGendv")) |proc| {
        function_pointers.glTexGendv = @ptrCast(?function_signatures.glTexGendv, proc);
    } else {
        log.emerg("entry point glTexGendv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGenf")) |proc| {
        function_pointers.glTexGenf = @ptrCast(?function_signatures.glTexGenf, proc);
    } else {
        log.emerg("entry point glTexGenf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGenfv")) |proc| {
        function_pointers.glTexGenfv = @ptrCast(?function_signatures.glTexGenfv, proc);
    } else {
        log.emerg("entry point glTexGenfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGeni")) |proc| {
        function_pointers.glTexGeni = @ptrCast(?function_signatures.glTexGeni, proc);
    } else {
        log.emerg("entry point glTexGeni not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexGeniv")) |proc| {
        function_pointers.glTexGeniv = @ptrCast(?function_signatures.glTexGeniv, proc);
    } else {
        log.emerg("entry point glTexGeniv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFeedbackBuffer")) |proc| {
        function_pointers.glFeedbackBuffer = @ptrCast(?function_signatures.glFeedbackBuffer, proc);
    } else {
        log.emerg("entry point glFeedbackBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSelectBuffer")) |proc| {
        function_pointers.glSelectBuffer = @ptrCast(?function_signatures.glSelectBuffer, proc);
    } else {
        log.emerg("entry point glSelectBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderMode")) |proc| {
        function_pointers.glRenderMode = @ptrCast(?function_signatures.glRenderMode, proc);
    } else {
        log.emerg("entry point glRenderMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInitNames")) |proc| {
        function_pointers.glInitNames = @ptrCast(?function_signatures.glInitNames, proc);
    } else {
        log.emerg("entry point glInitNames not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadName")) |proc| {
        function_pointers.glLoadName = @ptrCast(?function_signatures.glLoadName, proc);
    } else {
        log.emerg("entry point glLoadName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPassThrough")) |proc| {
        function_pointers.glPassThrough = @ptrCast(?function_signatures.glPassThrough, proc);
    } else {
        log.emerg("entry point glPassThrough not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopName")) |proc| {
        function_pointers.glPopName = @ptrCast(?function_signatures.glPopName, proc);
    } else {
        log.emerg("entry point glPopName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushName")) |proc| {
        function_pointers.glPushName = @ptrCast(?function_signatures.glPushName, proc);
    } else {
        log.emerg("entry point glPushName not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearAccum")) |proc| {
        function_pointers.glClearAccum = @ptrCast(?function_signatures.glClearAccum, proc);
    } else {
        log.emerg("entry point glClearAccum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearIndex")) |proc| {
        function_pointers.glClearIndex = @ptrCast(?function_signatures.glClearIndex, proc);
    } else {
        log.emerg("entry point glClearIndex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexMask")) |proc| {
        function_pointers.glIndexMask = @ptrCast(?function_signatures.glIndexMask, proc);
    } else {
        log.emerg("entry point glIndexMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAccum")) |proc| {
        function_pointers.glAccum = @ptrCast(?function_signatures.glAccum, proc);
    } else {
        log.emerg("entry point glAccum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopAttrib")) |proc| {
        function_pointers.glPopAttrib = @ptrCast(?function_signatures.glPopAttrib, proc);
    } else {
        log.emerg("entry point glPopAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushAttrib")) |proc| {
        function_pointers.glPushAttrib = @ptrCast(?function_signatures.glPushAttrib, proc);
    } else {
        log.emerg("entry point glPushAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap1d")) |proc| {
        function_pointers.glMap1d = @ptrCast(?function_signatures.glMap1d, proc);
    } else {
        log.emerg("entry point glMap1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap1f")) |proc| {
        function_pointers.glMap1f = @ptrCast(?function_signatures.glMap1f, proc);
    } else {
        log.emerg("entry point glMap1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap2d")) |proc| {
        function_pointers.glMap2d = @ptrCast(?function_signatures.glMap2d, proc);
    } else {
        log.emerg("entry point glMap2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMap2f")) |proc| {
        function_pointers.glMap2f = @ptrCast(?function_signatures.glMap2f, proc);
    } else {
        log.emerg("entry point glMap2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid1d")) |proc| {
        function_pointers.glMapGrid1d = @ptrCast(?function_signatures.glMapGrid1d, proc);
    } else {
        log.emerg("entry point glMapGrid1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid1f")) |proc| {
        function_pointers.glMapGrid1f = @ptrCast(?function_signatures.glMapGrid1f, proc);
    } else {
        log.emerg("entry point glMapGrid1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid2d")) |proc| {
        function_pointers.glMapGrid2d = @ptrCast(?function_signatures.glMapGrid2d, proc);
    } else {
        log.emerg("entry point glMapGrid2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapGrid2f")) |proc| {
        function_pointers.glMapGrid2f = @ptrCast(?function_signatures.glMapGrid2f, proc);
    } else {
        log.emerg("entry point glMapGrid2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1d")) |proc| {
        function_pointers.glEvalCoord1d = @ptrCast(?function_signatures.glEvalCoord1d, proc);
    } else {
        log.emerg("entry point glEvalCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1dv")) |proc| {
        function_pointers.glEvalCoord1dv = @ptrCast(?function_signatures.glEvalCoord1dv, proc);
    } else {
        log.emerg("entry point glEvalCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1f")) |proc| {
        function_pointers.glEvalCoord1f = @ptrCast(?function_signatures.glEvalCoord1f, proc);
    } else {
        log.emerg("entry point glEvalCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord1fv")) |proc| {
        function_pointers.glEvalCoord1fv = @ptrCast(?function_signatures.glEvalCoord1fv, proc);
    } else {
        log.emerg("entry point glEvalCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2d")) |proc| {
        function_pointers.glEvalCoord2d = @ptrCast(?function_signatures.glEvalCoord2d, proc);
    } else {
        log.emerg("entry point glEvalCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2dv")) |proc| {
        function_pointers.glEvalCoord2dv = @ptrCast(?function_signatures.glEvalCoord2dv, proc);
    } else {
        log.emerg("entry point glEvalCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2f")) |proc| {
        function_pointers.glEvalCoord2f = @ptrCast(?function_signatures.glEvalCoord2f, proc);
    } else {
        log.emerg("entry point glEvalCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalCoord2fv")) |proc| {
        function_pointers.glEvalCoord2fv = @ptrCast(?function_signatures.glEvalCoord2fv, proc);
    } else {
        log.emerg("entry point glEvalCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalMesh1")) |proc| {
        function_pointers.glEvalMesh1 = @ptrCast(?function_signatures.glEvalMesh1, proc);
    } else {
        log.emerg("entry point glEvalMesh1 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalPoint1")) |proc| {
        function_pointers.glEvalPoint1 = @ptrCast(?function_signatures.glEvalPoint1, proc);
    } else {
        log.emerg("entry point glEvalPoint1 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalMesh2")) |proc| {
        function_pointers.glEvalMesh2 = @ptrCast(?function_signatures.glEvalMesh2, proc);
    } else {
        log.emerg("entry point glEvalMesh2 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEvalPoint2")) |proc| {
        function_pointers.glEvalPoint2 = @ptrCast(?function_signatures.glEvalPoint2, proc);
    } else {
        log.emerg("entry point glEvalPoint2 not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAlphaFunc")) |proc| {
        function_pointers.glAlphaFunc = @ptrCast(?function_signatures.glAlphaFunc, proc);
    } else {
        log.emerg("entry point glAlphaFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelZoom")) |proc| {
        function_pointers.glPixelZoom = @ptrCast(?function_signatures.glPixelZoom, proc);
    } else {
        log.emerg("entry point glPixelZoom not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelTransferf")) |proc| {
        function_pointers.glPixelTransferf = @ptrCast(?function_signatures.glPixelTransferf, proc);
    } else {
        log.emerg("entry point glPixelTransferf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelTransferi")) |proc| {
        function_pointers.glPixelTransferi = @ptrCast(?function_signatures.glPixelTransferi, proc);
    } else {
        log.emerg("entry point glPixelTransferi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapfv")) |proc| {
        function_pointers.glPixelMapfv = @ptrCast(?function_signatures.glPixelMapfv, proc);
    } else {
        log.emerg("entry point glPixelMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapuiv")) |proc| {
        function_pointers.glPixelMapuiv = @ptrCast(?function_signatures.glPixelMapuiv, proc);
    } else {
        log.emerg("entry point glPixelMapuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelMapusv")) |proc| {
        function_pointers.glPixelMapusv = @ptrCast(?function_signatures.glPixelMapusv, proc);
    } else {
        log.emerg("entry point glPixelMapusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyPixels")) |proc| {
        function_pointers.glCopyPixels = @ptrCast(?function_signatures.glCopyPixels, proc);
    } else {
        log.emerg("entry point glCopyPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawPixels")) |proc| {
        function_pointers.glDrawPixels = @ptrCast(?function_signatures.glDrawPixels, proc);
    } else {
        log.emerg("entry point glDrawPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlane")) |proc| {
        function_pointers.glGetClipPlane = @ptrCast(?function_signatures.glGetClipPlane, proc);
    } else {
        log.emerg("entry point glGetClipPlane not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightfv")) |proc| {
        function_pointers.glGetLightfv = @ptrCast(?function_signatures.glGetLightfv, proc);
    } else {
        log.emerg("entry point glGetLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightiv")) |proc| {
        function_pointers.glGetLightiv = @ptrCast(?function_signatures.glGetLightiv, proc);
    } else {
        log.emerg("entry point glGetLightiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapdv")) |proc| {
        function_pointers.glGetMapdv = @ptrCast(?function_signatures.glGetMapdv, proc);
    } else {
        log.emerg("entry point glGetMapdv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapfv")) |proc| {
        function_pointers.glGetMapfv = @ptrCast(?function_signatures.glGetMapfv, proc);
    } else {
        log.emerg("entry point glGetMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMapiv")) |proc| {
        function_pointers.glGetMapiv = @ptrCast(?function_signatures.glGetMapiv, proc);
    } else {
        log.emerg("entry point glGetMapiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialfv")) |proc| {
        function_pointers.glGetMaterialfv = @ptrCast(?function_signatures.glGetMaterialfv, proc);
    } else {
        log.emerg("entry point glGetMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialiv")) |proc| {
        function_pointers.glGetMaterialiv = @ptrCast(?function_signatures.glGetMaterialiv, proc);
    } else {
        log.emerg("entry point glGetMaterialiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapfv")) |proc| {
        function_pointers.glGetPixelMapfv = @ptrCast(?function_signatures.glGetPixelMapfv, proc);
    } else {
        log.emerg("entry point glGetPixelMapfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapuiv")) |proc| {
        function_pointers.glGetPixelMapuiv = @ptrCast(?function_signatures.glGetPixelMapuiv, proc);
    } else {
        log.emerg("entry point glGetPixelMapuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPixelMapusv")) |proc| {
        function_pointers.glGetPixelMapusv = @ptrCast(?function_signatures.glGetPixelMapusv, proc);
    } else {
        log.emerg("entry point glGetPixelMapusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPolygonStipple")) |proc| {
        function_pointers.glGetPolygonStipple = @ptrCast(?function_signatures.glGetPolygonStipple, proc);
    } else {
        log.emerg("entry point glGetPolygonStipple not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvfv")) |proc| {
        function_pointers.glGetTexEnvfv = @ptrCast(?function_signatures.glGetTexEnvfv, proc);
    } else {
        log.emerg("entry point glGetTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnviv")) |proc| {
        function_pointers.glGetTexEnviv = @ptrCast(?function_signatures.glGetTexEnviv, proc);
    } else {
        log.emerg("entry point glGetTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGendv")) |proc| {
        function_pointers.glGetTexGendv = @ptrCast(?function_signatures.glGetTexGendv, proc);
    } else {
        log.emerg("entry point glGetTexGendv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGenfv")) |proc| {
        function_pointers.glGetTexGenfv = @ptrCast(?function_signatures.glGetTexGenfv, proc);
    } else {
        log.emerg("entry point glGetTexGenfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexGeniv")) |proc| {
        function_pointers.glGetTexGeniv = @ptrCast(?function_signatures.glGetTexGeniv, proc);
    } else {
        log.emerg("entry point glGetTexGeniv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsList")) |proc| {
        function_pointers.glIsList = @ptrCast(?function_signatures.glIsList, proc);
    } else {
        log.emerg("entry point glIsList not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustum")) |proc| {
        function_pointers.glFrustum = @ptrCast(?function_signatures.glFrustum, proc);
    } else {
        log.emerg("entry point glFrustum not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadIdentity")) |proc| {
        function_pointers.glLoadIdentity = @ptrCast(?function_signatures.glLoadIdentity, proc);
    } else {
        log.emerg("entry point glLoadIdentity not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixf")) |proc| {
        function_pointers.glLoadMatrixf = @ptrCast(?function_signatures.glLoadMatrixf, proc);
    } else {
        log.emerg("entry point glLoadMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixd")) |proc| {
        function_pointers.glLoadMatrixd = @ptrCast(?function_signatures.glLoadMatrixd, proc);
    } else {
        log.emerg("entry point glLoadMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMatrixMode")) |proc| {
        function_pointers.glMatrixMode = @ptrCast(?function_signatures.glMatrixMode, proc);
    } else {
        log.emerg("entry point glMatrixMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixf")) |proc| {
        function_pointers.glMultMatrixf = @ptrCast(?function_signatures.glMultMatrixf, proc);
    } else {
        log.emerg("entry point glMultMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixd")) |proc| {
        function_pointers.glMultMatrixd = @ptrCast(?function_signatures.glMultMatrixd, proc);
    } else {
        log.emerg("entry point glMultMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrtho")) |proc| {
        function_pointers.glOrtho = @ptrCast(?function_signatures.glOrtho, proc);
    } else {
        log.emerg("entry point glOrtho not found!", .{});
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
    if (get_proc_address(load_ctx, "glRotated")) |proc| {
        function_pointers.glRotated = @ptrCast(?function_signatures.glRotated, proc);
    } else {
        log.emerg("entry point glRotated not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatef")) |proc| {
        function_pointers.glRotatef = @ptrCast(?function_signatures.glRotatef, proc);
    } else {
        log.emerg("entry point glRotatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScaled")) |proc| {
        function_pointers.glScaled = @ptrCast(?function_signatures.glScaled, proc);
    } else {
        log.emerg("entry point glScaled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalef")) |proc| {
        function_pointers.glScalef = @ptrCast(?function_signatures.glScalef, proc);
    } else {
        log.emerg("entry point glScalef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslated")) |proc| {
        function_pointers.glTranslated = @ptrCast(?function_signatures.glTranslated, proc);
    } else {
        log.emerg("entry point glTranslated not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatef")) |proc| {
        function_pointers.glTranslatef = @ptrCast(?function_signatures.glTranslatef, proc);
    } else {
        log.emerg("entry point glTranslatef not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetPointerv")) |proc| {
        function_pointers.glGetPointerv = @ptrCast(?function_signatures.glGetPointerv, proc);
    } else {
        log.emerg("entry point glGetPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(?function_signatures.glPolygonOffset, proc);
    } else {
        log.emerg("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage1D")) |proc| {
        function_pointers.glCopyTexImage1D = @ptrCast(?function_signatures.glCopyTexImage1D, proc);
    } else {
        log.emerg("entry point glCopyTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(?function_signatures.glCopyTexImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage1D")) |proc| {
        function_pointers.glCopyTexSubImage1D = @ptrCast(?function_signatures.glCopyTexSubImage1D, proc);
    } else {
        log.emerg("entry point glCopyTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(?function_signatures.glCopyTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage1D")) |proc| {
        function_pointers.glTexSubImage1D = @ptrCast(?function_signatures.glTexSubImage1D, proc);
    } else {
        log.emerg("entry point glTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(?function_signatures.glTexSubImage2D, proc);
    } else {
        log.emerg("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(?function_signatures.glBindTexture, proc);
    } else {
        log.emerg("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(?function_signatures.glDeleteTextures, proc);
    } else {
        log.emerg("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(?function_signatures.glGenTextures, proc);
    } else {
        log.emerg("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(?function_signatures.glIsTexture, proc);
    } else {
        log.emerg("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glArrayElement")) |proc| {
        function_pointers.glArrayElement = @ptrCast(?function_signatures.glArrayElement, proc);
    } else {
        log.emerg("entry point glArrayElement not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorPointer")) |proc| {
        function_pointers.glColorPointer = @ptrCast(?function_signatures.glColorPointer, proc);
    } else {
        log.emerg("entry point glColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableClientState")) |proc| {
        function_pointers.glDisableClientState = @ptrCast(?function_signatures.glDisableClientState, proc);
    } else {
        log.emerg("entry point glDisableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEdgeFlagPointer")) |proc| {
        function_pointers.glEdgeFlagPointer = @ptrCast(?function_signatures.glEdgeFlagPointer, proc);
    } else {
        log.emerg("entry point glEdgeFlagPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableClientState")) |proc| {
        function_pointers.glEnableClientState = @ptrCast(?function_signatures.glEnableClientState, proc);
    } else {
        log.emerg("entry point glEnableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexPointer")) |proc| {
        function_pointers.glIndexPointer = @ptrCast(?function_signatures.glIndexPointer, proc);
    } else {
        log.emerg("entry point glIndexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glInterleavedArrays")) |proc| {
        function_pointers.glInterleavedArrays = @ptrCast(?function_signatures.glInterleavedArrays, proc);
    } else {
        log.emerg("entry point glInterleavedArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormalPointer")) |proc| {
        function_pointers.glNormalPointer = @ptrCast(?function_signatures.glNormalPointer, proc);
    } else {
        log.emerg("entry point glNormalPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoordPointer")) |proc| {
        function_pointers.glTexCoordPointer = @ptrCast(?function_signatures.glTexCoordPointer, proc);
    } else {
        log.emerg("entry point glTexCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexPointer")) |proc| {
        function_pointers.glVertexPointer = @ptrCast(?function_signatures.glVertexPointer, proc);
    } else {
        log.emerg("entry point glVertexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAreTexturesResident")) |proc| {
        function_pointers.glAreTexturesResident = @ptrCast(?function_signatures.glAreTexturesResident, proc);
    } else {
        log.emerg("entry point glAreTexturesResident not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPrioritizeTextures")) |proc| {
        function_pointers.glPrioritizeTextures = @ptrCast(?function_signatures.glPrioritizeTextures, proc);
    } else {
        log.emerg("entry point glPrioritizeTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexub")) |proc| {
        function_pointers.glIndexub = @ptrCast(?function_signatures.glIndexub, proc);
    } else {
        log.emerg("entry point glIndexub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIndexubv")) |proc| {
        function_pointers.glIndexubv = @ptrCast(?function_signatures.glIndexubv, proc);
    } else {
        log.emerg("entry point glIndexubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopClientAttrib")) |proc| {
        function_pointers.glPopClientAttrib = @ptrCast(?function_signatures.glPopClientAttrib, proc);
    } else {
        log.emerg("entry point glPopClientAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushClientAttrib")) |proc| {
        function_pointers.glPushClientAttrib = @ptrCast(?function_signatures.glPushClientAttrib, proc);
    } else {
        log.emerg("entry point glPushClientAttrib not found!", .{});
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
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(?function_signatures.glActiveTexture, proc);
    } else {
        log.emerg("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(?function_signatures.glSampleCoverage, proc);
    } else {
        log.emerg("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage3D")) |proc| {
        function_pointers.glCompressedTexImage3D = @ptrCast(?function_signatures.glCompressedTexImage3D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(?function_signatures.glCompressedTexImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage1D")) |proc| {
        function_pointers.glCompressedTexImage1D = @ptrCast(?function_signatures.glCompressedTexImage1D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage3D")) |proc| {
        function_pointers.glCompressedTexSubImage3D = @ptrCast(?function_signatures.glCompressedTexSubImage3D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(?function_signatures.glCompressedTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage1D")) |proc| {
        function_pointers.glCompressedTexSubImage1D = @ptrCast(?function_signatures.glCompressedTexSubImage1D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetCompressedTexImage")) |proc| {
        function_pointers.glGetCompressedTexImage = @ptrCast(?function_signatures.glGetCompressedTexImage, proc);
    } else {
        log.emerg("entry point glGetCompressedTexImage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientActiveTexture")) |proc| {
        function_pointers.glClientActiveTexture = @ptrCast(?function_signatures.glClientActiveTexture, proc);
    } else {
        log.emerg("entry point glClientActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1d")) |proc| {
        function_pointers.glMultiTexCoord1d = @ptrCast(?function_signatures.glMultiTexCoord1d, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1dv")) |proc| {
        function_pointers.glMultiTexCoord1dv = @ptrCast(?function_signatures.glMultiTexCoord1dv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1f")) |proc| {
        function_pointers.glMultiTexCoord1f = @ptrCast(?function_signatures.glMultiTexCoord1f, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1fv")) |proc| {
        function_pointers.glMultiTexCoord1fv = @ptrCast(?function_signatures.glMultiTexCoord1fv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1i")) |proc| {
        function_pointers.glMultiTexCoord1i = @ptrCast(?function_signatures.glMultiTexCoord1i, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1iv")) |proc| {
        function_pointers.glMultiTexCoord1iv = @ptrCast(?function_signatures.glMultiTexCoord1iv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1s")) |proc| {
        function_pointers.glMultiTexCoord1s = @ptrCast(?function_signatures.glMultiTexCoord1s, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord1sv")) |proc| {
        function_pointers.glMultiTexCoord1sv = @ptrCast(?function_signatures.glMultiTexCoord1sv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2d")) |proc| {
        function_pointers.glMultiTexCoord2d = @ptrCast(?function_signatures.glMultiTexCoord2d, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2dv")) |proc| {
        function_pointers.glMultiTexCoord2dv = @ptrCast(?function_signatures.glMultiTexCoord2dv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2f")) |proc| {
        function_pointers.glMultiTexCoord2f = @ptrCast(?function_signatures.glMultiTexCoord2f, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2fv")) |proc| {
        function_pointers.glMultiTexCoord2fv = @ptrCast(?function_signatures.glMultiTexCoord2fv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2i")) |proc| {
        function_pointers.glMultiTexCoord2i = @ptrCast(?function_signatures.glMultiTexCoord2i, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2iv")) |proc| {
        function_pointers.glMultiTexCoord2iv = @ptrCast(?function_signatures.glMultiTexCoord2iv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2s")) |proc| {
        function_pointers.glMultiTexCoord2s = @ptrCast(?function_signatures.glMultiTexCoord2s, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord2sv")) |proc| {
        function_pointers.glMultiTexCoord2sv = @ptrCast(?function_signatures.glMultiTexCoord2sv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3d")) |proc| {
        function_pointers.glMultiTexCoord3d = @ptrCast(?function_signatures.glMultiTexCoord3d, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3dv")) |proc| {
        function_pointers.glMultiTexCoord3dv = @ptrCast(?function_signatures.glMultiTexCoord3dv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3f")) |proc| {
        function_pointers.glMultiTexCoord3f = @ptrCast(?function_signatures.glMultiTexCoord3f, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3fv")) |proc| {
        function_pointers.glMultiTexCoord3fv = @ptrCast(?function_signatures.glMultiTexCoord3fv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3i")) |proc| {
        function_pointers.glMultiTexCoord3i = @ptrCast(?function_signatures.glMultiTexCoord3i, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3iv")) |proc| {
        function_pointers.glMultiTexCoord3iv = @ptrCast(?function_signatures.glMultiTexCoord3iv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3s")) |proc| {
        function_pointers.glMultiTexCoord3s = @ptrCast(?function_signatures.glMultiTexCoord3s, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord3sv")) |proc| {
        function_pointers.glMultiTexCoord3sv = @ptrCast(?function_signatures.glMultiTexCoord3sv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4d")) |proc| {
        function_pointers.glMultiTexCoord4d = @ptrCast(?function_signatures.glMultiTexCoord4d, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4dv")) |proc| {
        function_pointers.glMultiTexCoord4dv = @ptrCast(?function_signatures.glMultiTexCoord4dv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4f")) |proc| {
        function_pointers.glMultiTexCoord4f = @ptrCast(?function_signatures.glMultiTexCoord4f, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4fv")) |proc| {
        function_pointers.glMultiTexCoord4fv = @ptrCast(?function_signatures.glMultiTexCoord4fv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4i")) |proc| {
        function_pointers.glMultiTexCoord4i = @ptrCast(?function_signatures.glMultiTexCoord4i, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4iv")) |proc| {
        function_pointers.glMultiTexCoord4iv = @ptrCast(?function_signatures.glMultiTexCoord4iv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4s")) |proc| {
        function_pointers.glMultiTexCoord4s = @ptrCast(?function_signatures.glMultiTexCoord4s, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4sv")) |proc| {
        function_pointers.glMultiTexCoord4sv = @ptrCast(?function_signatures.glMultiTexCoord4sv, proc);
    } else {
        log.emerg("entry point glMultiTexCoord4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadTransposeMatrixf")) |proc| {
        function_pointers.glLoadTransposeMatrixf = @ptrCast(?function_signatures.glLoadTransposeMatrixf, proc);
    } else {
        log.emerg("entry point glLoadTransposeMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadTransposeMatrixd")) |proc| {
        function_pointers.glLoadTransposeMatrixd = @ptrCast(?function_signatures.glLoadTransposeMatrixd, proc);
    } else {
        log.emerg("entry point glLoadTransposeMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultTransposeMatrixf")) |proc| {
        function_pointers.glMultTransposeMatrixf = @ptrCast(?function_signatures.glMultTransposeMatrixf, proc);
    } else {
        log.emerg("entry point glMultTransposeMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultTransposeMatrixd")) |proc| {
        function_pointers.glMultTransposeMatrixd = @ptrCast(?function_signatures.glMultTransposeMatrixd, proc);
    } else {
        log.emerg("entry point glMultTransposeMatrixd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFuncSeparate")) |proc| {
        function_pointers.glBlendFuncSeparate = @ptrCast(?function_signatures.glBlendFuncSeparate, proc);
    } else {
        log.emerg("entry point glBlendFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiDrawArrays")) |proc| {
        function_pointers.glMultiDrawArrays = @ptrCast(?function_signatures.glMultiDrawArrays, proc);
    } else {
        log.emerg("entry point glMultiDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiDrawElements")) |proc| {
        function_pointers.glMultiDrawElements = @ptrCast(?function_signatures.glMultiDrawElements, proc);
    } else {
        log.emerg("entry point glMultiDrawElements not found!", .{});
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
    if (get_proc_address(load_ctx, "glPointParameteri")) |proc| {
        function_pointers.glPointParameteri = @ptrCast(?function_signatures.glPointParameteri, proc);
    } else {
        log.emerg("entry point glPointParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameteriv")) |proc| {
        function_pointers.glPointParameteriv = @ptrCast(?function_signatures.glPointParameteriv, proc);
    } else {
        log.emerg("entry point glPointParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordf")) |proc| {
        function_pointers.glFogCoordf = @ptrCast(?function_signatures.glFogCoordf, proc);
    } else {
        log.emerg("entry point glFogCoordf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordfv")) |proc| {
        function_pointers.glFogCoordfv = @ptrCast(?function_signatures.glFogCoordfv, proc);
    } else {
        log.emerg("entry point glFogCoordfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordd")) |proc| {
        function_pointers.glFogCoordd = @ptrCast(?function_signatures.glFogCoordd, proc);
    } else {
        log.emerg("entry point glFogCoordd not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoorddv")) |proc| {
        function_pointers.glFogCoorddv = @ptrCast(?function_signatures.glFogCoorddv, proc);
    } else {
        log.emerg("entry point glFogCoorddv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogCoordPointer")) |proc| {
        function_pointers.glFogCoordPointer = @ptrCast(?function_signatures.glFogCoordPointer, proc);
    } else {
        log.emerg("entry point glFogCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3b")) |proc| {
        function_pointers.glSecondaryColor3b = @ptrCast(?function_signatures.glSecondaryColor3b, proc);
    } else {
        log.emerg("entry point glSecondaryColor3b not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3bv")) |proc| {
        function_pointers.glSecondaryColor3bv = @ptrCast(?function_signatures.glSecondaryColor3bv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3d")) |proc| {
        function_pointers.glSecondaryColor3d = @ptrCast(?function_signatures.glSecondaryColor3d, proc);
    } else {
        log.emerg("entry point glSecondaryColor3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3dv")) |proc| {
        function_pointers.glSecondaryColor3dv = @ptrCast(?function_signatures.glSecondaryColor3dv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3f")) |proc| {
        function_pointers.glSecondaryColor3f = @ptrCast(?function_signatures.glSecondaryColor3f, proc);
    } else {
        log.emerg("entry point glSecondaryColor3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3fv")) |proc| {
        function_pointers.glSecondaryColor3fv = @ptrCast(?function_signatures.glSecondaryColor3fv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3i")) |proc| {
        function_pointers.glSecondaryColor3i = @ptrCast(?function_signatures.glSecondaryColor3i, proc);
    } else {
        log.emerg("entry point glSecondaryColor3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3iv")) |proc| {
        function_pointers.glSecondaryColor3iv = @ptrCast(?function_signatures.glSecondaryColor3iv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3s")) |proc| {
        function_pointers.glSecondaryColor3s = @ptrCast(?function_signatures.glSecondaryColor3s, proc);
    } else {
        log.emerg("entry point glSecondaryColor3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3sv")) |proc| {
        function_pointers.glSecondaryColor3sv = @ptrCast(?function_signatures.glSecondaryColor3sv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ub")) |proc| {
        function_pointers.glSecondaryColor3ub = @ptrCast(?function_signatures.glSecondaryColor3ub, proc);
    } else {
        log.emerg("entry point glSecondaryColor3ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ubv")) |proc| {
        function_pointers.glSecondaryColor3ubv = @ptrCast(?function_signatures.glSecondaryColor3ubv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3ui")) |proc| {
        function_pointers.glSecondaryColor3ui = @ptrCast(?function_signatures.glSecondaryColor3ui, proc);
    } else {
        log.emerg("entry point glSecondaryColor3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3uiv")) |proc| {
        function_pointers.glSecondaryColor3uiv = @ptrCast(?function_signatures.glSecondaryColor3uiv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3us")) |proc| {
        function_pointers.glSecondaryColor3us = @ptrCast(?function_signatures.glSecondaryColor3us, proc);
    } else {
        log.emerg("entry point glSecondaryColor3us not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColor3usv")) |proc| {
        function_pointers.glSecondaryColor3usv = @ptrCast(?function_signatures.glSecondaryColor3usv, proc);
    } else {
        log.emerg("entry point glSecondaryColor3usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSecondaryColorPointer")) |proc| {
        function_pointers.glSecondaryColorPointer = @ptrCast(?function_signatures.glSecondaryColorPointer, proc);
    } else {
        log.emerg("entry point glSecondaryColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2d")) |proc| {
        function_pointers.glWindowPos2d = @ptrCast(?function_signatures.glWindowPos2d, proc);
    } else {
        log.emerg("entry point glWindowPos2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2dv")) |proc| {
        function_pointers.glWindowPos2dv = @ptrCast(?function_signatures.glWindowPos2dv, proc);
    } else {
        log.emerg("entry point glWindowPos2dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2f")) |proc| {
        function_pointers.glWindowPos2f = @ptrCast(?function_signatures.glWindowPos2f, proc);
    } else {
        log.emerg("entry point glWindowPos2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2fv")) |proc| {
        function_pointers.glWindowPos2fv = @ptrCast(?function_signatures.glWindowPos2fv, proc);
    } else {
        log.emerg("entry point glWindowPos2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2i")) |proc| {
        function_pointers.glWindowPos2i = @ptrCast(?function_signatures.glWindowPos2i, proc);
    } else {
        log.emerg("entry point glWindowPos2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2iv")) |proc| {
        function_pointers.glWindowPos2iv = @ptrCast(?function_signatures.glWindowPos2iv, proc);
    } else {
        log.emerg("entry point glWindowPos2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2s")) |proc| {
        function_pointers.glWindowPos2s = @ptrCast(?function_signatures.glWindowPos2s, proc);
    } else {
        log.emerg("entry point glWindowPos2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos2sv")) |proc| {
        function_pointers.glWindowPos2sv = @ptrCast(?function_signatures.glWindowPos2sv, proc);
    } else {
        log.emerg("entry point glWindowPos2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3d")) |proc| {
        function_pointers.glWindowPos3d = @ptrCast(?function_signatures.glWindowPos3d, proc);
    } else {
        log.emerg("entry point glWindowPos3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3dv")) |proc| {
        function_pointers.glWindowPos3dv = @ptrCast(?function_signatures.glWindowPos3dv, proc);
    } else {
        log.emerg("entry point glWindowPos3dv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3f")) |proc| {
        function_pointers.glWindowPos3f = @ptrCast(?function_signatures.glWindowPos3f, proc);
    } else {
        log.emerg("entry point glWindowPos3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3fv")) |proc| {
        function_pointers.glWindowPos3fv = @ptrCast(?function_signatures.glWindowPos3fv, proc);
    } else {
        log.emerg("entry point glWindowPos3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3i")) |proc| {
        function_pointers.glWindowPos3i = @ptrCast(?function_signatures.glWindowPos3i, proc);
    } else {
        log.emerg("entry point glWindowPos3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3iv")) |proc| {
        function_pointers.glWindowPos3iv = @ptrCast(?function_signatures.glWindowPos3iv, proc);
    } else {
        log.emerg("entry point glWindowPos3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3s")) |proc| {
        function_pointers.glWindowPos3s = @ptrCast(?function_signatures.glWindowPos3s, proc);
    } else {
        log.emerg("entry point glWindowPos3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glWindowPos3sv")) |proc| {
        function_pointers.glWindowPos3sv = @ptrCast(?function_signatures.glWindowPos3sv, proc);
    } else {
        log.emerg("entry point glWindowPos3sv not found!", .{});
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
    const glTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
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
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void;
    const glGetBooleanv = fn (_pname: GLenum, _data: [*c]GLboolean) void;
    const glGetDoublev = fn (_pname: GLenum, _data: [*c]GLdouble) void;
    const glGetError = fn () GLenum;
    const glGetFloatv = fn (_pname: GLenum, _data: [*c]GLfloat) void;
    const glGetIntegerv = fn (_pname: GLenum, _data: [*c]GLint) void;
    const glGetString = fn (_name: GLenum) ?[*:0]const GLubyte;
    const glGetTexImage = fn (_target: GLenum, _level: GLint, _format: GLenum, _type: GLenum, _pixels: ?*c_void) void;
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
    const glCallLists = fn (_n: GLsizei, _type: GLenum, _lists: ?*const c_void) void;
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
    const glDrawPixels = fn (_width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
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
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void;
    const glGetPointerv = fn (_pname: GLenum, _params: ?*?*c_void) void;
    const glPolygonOffset = fn (_factor: GLfloat, _units: GLfloat) void;
    const glCopyTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _border: GLint) void;
    const glCopyTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) void;
    const glCopyTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei) void;
    const glCopyTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glBindTexture = fn (_target: GLenum, _texture: GLuint) void;
    const glDeleteTextures = fn (_n: GLsizei, _textures: [*c]const GLuint) void;
    const glGenTextures = fn (_n: GLsizei, _textures: [*c]GLuint) void;
    const glIsTexture = fn (_texture: GLuint) GLboolean;
    const glArrayElement = fn (_i: GLint) void;
    const glColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glDisableClientState = fn (_array: GLenum) void;
    const glEdgeFlagPointer = fn (_stride: GLsizei, _pointer: ?*const c_void) void;
    const glEnableClientState = fn (_array: GLenum) void;
    const glIndexPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glInterleavedArrays = fn (_format: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glNormalPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glTexCoordPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glVertexPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
    const glAreTexturesResident = fn (_n: GLsizei, _textures: [*c]const GLuint, _residences: [*c]GLboolean) GLboolean;
    const glPrioritizeTextures = fn (_n: GLsizei, _textures: [*c]const GLuint, _priorities: [*c]const GLfloat) void;
    const glIndexub = fn (_c: GLubyte) void;
    const glIndexubv = fn (_c: ?[*:0]const GLubyte) void;
    const glPopClientAttrib = fn () void;
    const glPushClientAttrib = fn (_mask: GLbitfield) void;
    const glDrawRangeElements = fn (_mode: GLenum, _start: GLuint, _end: GLuint, _count: GLsizei, _type: GLenum, _indices: ?*const c_void) void;
    const glTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const c_void) void;
    const glCopyTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) void;
    const glActiveTexture = fn (_texture: GLenum) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) void;
    const glCompressedTexImage3D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexImage1D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage3D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _zoffset: GLint, _width: GLsizei, _height: GLsizei, _depth: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glCompressedTexSubImage1D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _width: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const c_void) void;
    const glGetCompressedTexImage = fn (_target: GLenum, _level: GLint, _img: ?*c_void) void;
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
    const glMultiDrawElements = fn (_mode: GLenum, _count: [*c]const GLsizei, _type: GLenum, _indices: [*c]const ?*const c_void, _drawcount: GLsizei) void;
    const glPointParameterf = fn (_pname: GLenum, _param: GLfloat) void;
    const glPointParameterfv = fn (_pname: GLenum, _params: [*c]const GLfloat) void;
    const glPointParameteri = fn (_pname: GLenum, _param: GLint) void;
    const glPointParameteriv = fn (_pname: GLenum, _params: [*c]const GLint) void;
    const glFogCoordf = fn (_coord: GLfloat) void;
    const glFogCoordfv = fn (_coord: [*c]const GLfloat) void;
    const glFogCoordd = fn (_coord: GLdouble) void;
    const glFogCoorddv = fn (_coord: [*c]const GLdouble) void;
    const glFogCoordPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
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
    const glSecondaryColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const c_void) void;
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
};

const function_pointers = struct {
    var glCullFace: ?function_signatures.glCullFace = null;
    var glFrontFace: ?function_signatures.glFrontFace = null;
    var glHint: ?function_signatures.glHint = null;
    var glLineWidth: ?function_signatures.glLineWidth = null;
    var glPointSize: ?function_signatures.glPointSize = null;
    var glPolygonMode: ?function_signatures.glPolygonMode = null;
    var glScissor: ?function_signatures.glScissor = null;
    var glTexParameterf: ?function_signatures.glTexParameterf = null;
    var glTexParameterfv: ?function_signatures.glTexParameterfv = null;
    var glTexParameteri: ?function_signatures.glTexParameteri = null;
    var glTexParameteriv: ?function_signatures.glTexParameteriv = null;
    var glTexImage1D: ?function_signatures.glTexImage1D = null;
    var glTexImage2D: ?function_signatures.glTexImage2D = null;
    var glDrawBuffer: ?function_signatures.glDrawBuffer = null;
    var glClear: ?function_signatures.glClear = null;
    var glClearColor: ?function_signatures.glClearColor = null;
    var glClearStencil: ?function_signatures.glClearStencil = null;
    var glClearDepth: ?function_signatures.glClearDepth = null;
    var glStencilMask: ?function_signatures.glStencilMask = null;
    var glColorMask: ?function_signatures.glColorMask = null;
    var glDepthMask: ?function_signatures.glDepthMask = null;
    var glDisable: ?function_signatures.glDisable = null;
    var glEnable: ?function_signatures.glEnable = null;
    var glFinish: ?function_signatures.glFinish = null;
    var glFlush: ?function_signatures.glFlush = null;
    var glBlendFunc: ?function_signatures.glBlendFunc = null;
    var glLogicOp: ?function_signatures.glLogicOp = null;
    var glStencilFunc: ?function_signatures.glStencilFunc = null;
    var glStencilOp: ?function_signatures.glStencilOp = null;
    var glDepthFunc: ?function_signatures.glDepthFunc = null;
    var glPixelStoref: ?function_signatures.glPixelStoref = null;
    var glPixelStorei: ?function_signatures.glPixelStorei = null;
    var glReadBuffer: ?function_signatures.glReadBuffer = null;
    var glReadPixels: ?function_signatures.glReadPixels = null;
    var glGetBooleanv: ?function_signatures.glGetBooleanv = null;
    var glGetDoublev: ?function_signatures.glGetDoublev = null;
    var glGetError: ?function_signatures.glGetError = null;
    var glGetFloatv: ?function_signatures.glGetFloatv = null;
    var glGetIntegerv: ?function_signatures.glGetIntegerv = null;
    var glGetString: ?function_signatures.glGetString = null;
    var glGetTexImage: ?function_signatures.glGetTexImage = null;
    var glGetTexParameterfv: ?function_signatures.glGetTexParameterfv = null;
    var glGetTexParameteriv: ?function_signatures.glGetTexParameteriv = null;
    var glGetTexLevelParameterfv: ?function_signatures.glGetTexLevelParameterfv = null;
    var glGetTexLevelParameteriv: ?function_signatures.glGetTexLevelParameteriv = null;
    var glIsEnabled: ?function_signatures.glIsEnabled = null;
    var glDepthRange: ?function_signatures.glDepthRange = null;
    var glViewport: ?function_signatures.glViewport = null;
    var glNewList: ?function_signatures.glNewList = null;
    var glEndList: ?function_signatures.glEndList = null;
    var glCallList: ?function_signatures.glCallList = null;
    var glCallLists: ?function_signatures.glCallLists = null;
    var glDeleteLists: ?function_signatures.glDeleteLists = null;
    var glGenLists: ?function_signatures.glGenLists = null;
    var glListBase: ?function_signatures.glListBase = null;
    var glBegin: ?function_signatures.glBegin = null;
    var glBitmap: ?function_signatures.glBitmap = null;
    var glColor3b: ?function_signatures.glColor3b = null;
    var glColor3bv: ?function_signatures.glColor3bv = null;
    var glColor3d: ?function_signatures.glColor3d = null;
    var glColor3dv: ?function_signatures.glColor3dv = null;
    var glColor3f: ?function_signatures.glColor3f = null;
    var glColor3fv: ?function_signatures.glColor3fv = null;
    var glColor3i: ?function_signatures.glColor3i = null;
    var glColor3iv: ?function_signatures.glColor3iv = null;
    var glColor3s: ?function_signatures.glColor3s = null;
    var glColor3sv: ?function_signatures.glColor3sv = null;
    var glColor3ub: ?function_signatures.glColor3ub = null;
    var glColor3ubv: ?function_signatures.glColor3ubv = null;
    var glColor3ui: ?function_signatures.glColor3ui = null;
    var glColor3uiv: ?function_signatures.glColor3uiv = null;
    var glColor3us: ?function_signatures.glColor3us = null;
    var glColor3usv: ?function_signatures.glColor3usv = null;
    var glColor4b: ?function_signatures.glColor4b = null;
    var glColor4bv: ?function_signatures.glColor4bv = null;
    var glColor4d: ?function_signatures.glColor4d = null;
    var glColor4dv: ?function_signatures.glColor4dv = null;
    var glColor4f: ?function_signatures.glColor4f = null;
    var glColor4fv: ?function_signatures.glColor4fv = null;
    var glColor4i: ?function_signatures.glColor4i = null;
    var glColor4iv: ?function_signatures.glColor4iv = null;
    var glColor4s: ?function_signatures.glColor4s = null;
    var glColor4sv: ?function_signatures.glColor4sv = null;
    var glColor4ub: ?function_signatures.glColor4ub = null;
    var glColor4ubv: ?function_signatures.glColor4ubv = null;
    var glColor4ui: ?function_signatures.glColor4ui = null;
    var glColor4uiv: ?function_signatures.glColor4uiv = null;
    var glColor4us: ?function_signatures.glColor4us = null;
    var glColor4usv: ?function_signatures.glColor4usv = null;
    var glEdgeFlag: ?function_signatures.glEdgeFlag = null;
    var glEdgeFlagv: ?function_signatures.glEdgeFlagv = null;
    var glEnd: ?function_signatures.glEnd = null;
    var glIndexd: ?function_signatures.glIndexd = null;
    var glIndexdv: ?function_signatures.glIndexdv = null;
    var glIndexf: ?function_signatures.glIndexf = null;
    var glIndexfv: ?function_signatures.glIndexfv = null;
    var glIndexi: ?function_signatures.glIndexi = null;
    var glIndexiv: ?function_signatures.glIndexiv = null;
    var glIndexs: ?function_signatures.glIndexs = null;
    var glIndexsv: ?function_signatures.glIndexsv = null;
    var glNormal3b: ?function_signatures.glNormal3b = null;
    var glNormal3bv: ?function_signatures.glNormal3bv = null;
    var glNormal3d: ?function_signatures.glNormal3d = null;
    var glNormal3dv: ?function_signatures.glNormal3dv = null;
    var glNormal3f: ?function_signatures.glNormal3f = null;
    var glNormal3fv: ?function_signatures.glNormal3fv = null;
    var glNormal3i: ?function_signatures.glNormal3i = null;
    var glNormal3iv: ?function_signatures.glNormal3iv = null;
    var glNormal3s: ?function_signatures.glNormal3s = null;
    var glNormal3sv: ?function_signatures.glNormal3sv = null;
    var glRasterPos2d: ?function_signatures.glRasterPos2d = null;
    var glRasterPos2dv: ?function_signatures.glRasterPos2dv = null;
    var glRasterPos2f: ?function_signatures.glRasterPos2f = null;
    var glRasterPos2fv: ?function_signatures.glRasterPos2fv = null;
    var glRasterPos2i: ?function_signatures.glRasterPos2i = null;
    var glRasterPos2iv: ?function_signatures.glRasterPos2iv = null;
    var glRasterPos2s: ?function_signatures.glRasterPos2s = null;
    var glRasterPos2sv: ?function_signatures.glRasterPos2sv = null;
    var glRasterPos3d: ?function_signatures.glRasterPos3d = null;
    var glRasterPos3dv: ?function_signatures.glRasterPos3dv = null;
    var glRasterPos3f: ?function_signatures.glRasterPos3f = null;
    var glRasterPos3fv: ?function_signatures.glRasterPos3fv = null;
    var glRasterPos3i: ?function_signatures.glRasterPos3i = null;
    var glRasterPos3iv: ?function_signatures.glRasterPos3iv = null;
    var glRasterPos3s: ?function_signatures.glRasterPos3s = null;
    var glRasterPos3sv: ?function_signatures.glRasterPos3sv = null;
    var glRasterPos4d: ?function_signatures.glRasterPos4d = null;
    var glRasterPos4dv: ?function_signatures.glRasterPos4dv = null;
    var glRasterPos4f: ?function_signatures.glRasterPos4f = null;
    var glRasterPos4fv: ?function_signatures.glRasterPos4fv = null;
    var glRasterPos4i: ?function_signatures.glRasterPos4i = null;
    var glRasterPos4iv: ?function_signatures.glRasterPos4iv = null;
    var glRasterPos4s: ?function_signatures.glRasterPos4s = null;
    var glRasterPos4sv: ?function_signatures.glRasterPos4sv = null;
    var glRectd: ?function_signatures.glRectd = null;
    var glRectdv: ?function_signatures.glRectdv = null;
    var glRectf: ?function_signatures.glRectf = null;
    var glRectfv: ?function_signatures.glRectfv = null;
    var glRecti: ?function_signatures.glRecti = null;
    var glRectiv: ?function_signatures.glRectiv = null;
    var glRects: ?function_signatures.glRects = null;
    var glRectsv: ?function_signatures.glRectsv = null;
    var glTexCoord1d: ?function_signatures.glTexCoord1d = null;
    var glTexCoord1dv: ?function_signatures.glTexCoord1dv = null;
    var glTexCoord1f: ?function_signatures.glTexCoord1f = null;
    var glTexCoord1fv: ?function_signatures.glTexCoord1fv = null;
    var glTexCoord1i: ?function_signatures.glTexCoord1i = null;
    var glTexCoord1iv: ?function_signatures.glTexCoord1iv = null;
    var glTexCoord1s: ?function_signatures.glTexCoord1s = null;
    var glTexCoord1sv: ?function_signatures.glTexCoord1sv = null;
    var glTexCoord2d: ?function_signatures.glTexCoord2d = null;
    var glTexCoord2dv: ?function_signatures.glTexCoord2dv = null;
    var glTexCoord2f: ?function_signatures.glTexCoord2f = null;
    var glTexCoord2fv: ?function_signatures.glTexCoord2fv = null;
    var glTexCoord2i: ?function_signatures.glTexCoord2i = null;
    var glTexCoord2iv: ?function_signatures.glTexCoord2iv = null;
    var glTexCoord2s: ?function_signatures.glTexCoord2s = null;
    var glTexCoord2sv: ?function_signatures.glTexCoord2sv = null;
    var glTexCoord3d: ?function_signatures.glTexCoord3d = null;
    var glTexCoord3dv: ?function_signatures.glTexCoord3dv = null;
    var glTexCoord3f: ?function_signatures.glTexCoord3f = null;
    var glTexCoord3fv: ?function_signatures.glTexCoord3fv = null;
    var glTexCoord3i: ?function_signatures.glTexCoord3i = null;
    var glTexCoord3iv: ?function_signatures.glTexCoord3iv = null;
    var glTexCoord3s: ?function_signatures.glTexCoord3s = null;
    var glTexCoord3sv: ?function_signatures.glTexCoord3sv = null;
    var glTexCoord4d: ?function_signatures.glTexCoord4d = null;
    var glTexCoord4dv: ?function_signatures.glTexCoord4dv = null;
    var glTexCoord4f: ?function_signatures.glTexCoord4f = null;
    var glTexCoord4fv: ?function_signatures.glTexCoord4fv = null;
    var glTexCoord4i: ?function_signatures.glTexCoord4i = null;
    var glTexCoord4iv: ?function_signatures.glTexCoord4iv = null;
    var glTexCoord4s: ?function_signatures.glTexCoord4s = null;
    var glTexCoord4sv: ?function_signatures.glTexCoord4sv = null;
    var glVertex2d: ?function_signatures.glVertex2d = null;
    var glVertex2dv: ?function_signatures.glVertex2dv = null;
    var glVertex2f: ?function_signatures.glVertex2f = null;
    var glVertex2fv: ?function_signatures.glVertex2fv = null;
    var glVertex2i: ?function_signatures.glVertex2i = null;
    var glVertex2iv: ?function_signatures.glVertex2iv = null;
    var glVertex2s: ?function_signatures.glVertex2s = null;
    var glVertex2sv: ?function_signatures.glVertex2sv = null;
    var glVertex3d: ?function_signatures.glVertex3d = null;
    var glVertex3dv: ?function_signatures.glVertex3dv = null;
    var glVertex3f: ?function_signatures.glVertex3f = null;
    var glVertex3fv: ?function_signatures.glVertex3fv = null;
    var glVertex3i: ?function_signatures.glVertex3i = null;
    var glVertex3iv: ?function_signatures.glVertex3iv = null;
    var glVertex3s: ?function_signatures.glVertex3s = null;
    var glVertex3sv: ?function_signatures.glVertex3sv = null;
    var glVertex4d: ?function_signatures.glVertex4d = null;
    var glVertex4dv: ?function_signatures.glVertex4dv = null;
    var glVertex4f: ?function_signatures.glVertex4f = null;
    var glVertex4fv: ?function_signatures.glVertex4fv = null;
    var glVertex4i: ?function_signatures.glVertex4i = null;
    var glVertex4iv: ?function_signatures.glVertex4iv = null;
    var glVertex4s: ?function_signatures.glVertex4s = null;
    var glVertex4sv: ?function_signatures.glVertex4sv = null;
    var glClipPlane: ?function_signatures.glClipPlane = null;
    var glColorMaterial: ?function_signatures.glColorMaterial = null;
    var glFogf: ?function_signatures.glFogf = null;
    var glFogfv: ?function_signatures.glFogfv = null;
    var glFogi: ?function_signatures.glFogi = null;
    var glFogiv: ?function_signatures.glFogiv = null;
    var glLightf: ?function_signatures.glLightf = null;
    var glLightfv: ?function_signatures.glLightfv = null;
    var glLighti: ?function_signatures.glLighti = null;
    var glLightiv: ?function_signatures.glLightiv = null;
    var glLightModelf: ?function_signatures.glLightModelf = null;
    var glLightModelfv: ?function_signatures.glLightModelfv = null;
    var glLightModeli: ?function_signatures.glLightModeli = null;
    var glLightModeliv: ?function_signatures.glLightModeliv = null;
    var glLineStipple: ?function_signatures.glLineStipple = null;
    var glMaterialf: ?function_signatures.glMaterialf = null;
    var glMaterialfv: ?function_signatures.glMaterialfv = null;
    var glMateriali: ?function_signatures.glMateriali = null;
    var glMaterialiv: ?function_signatures.glMaterialiv = null;
    var glPolygonStipple: ?function_signatures.glPolygonStipple = null;
    var glShadeModel: ?function_signatures.glShadeModel = null;
    var glTexEnvf: ?function_signatures.glTexEnvf = null;
    var glTexEnvfv: ?function_signatures.glTexEnvfv = null;
    var glTexEnvi: ?function_signatures.glTexEnvi = null;
    var glTexEnviv: ?function_signatures.glTexEnviv = null;
    var glTexGend: ?function_signatures.glTexGend = null;
    var glTexGendv: ?function_signatures.glTexGendv = null;
    var glTexGenf: ?function_signatures.glTexGenf = null;
    var glTexGenfv: ?function_signatures.glTexGenfv = null;
    var glTexGeni: ?function_signatures.glTexGeni = null;
    var glTexGeniv: ?function_signatures.glTexGeniv = null;
    var glFeedbackBuffer: ?function_signatures.glFeedbackBuffer = null;
    var glSelectBuffer: ?function_signatures.glSelectBuffer = null;
    var glRenderMode: ?function_signatures.glRenderMode = null;
    var glInitNames: ?function_signatures.glInitNames = null;
    var glLoadName: ?function_signatures.glLoadName = null;
    var glPassThrough: ?function_signatures.glPassThrough = null;
    var glPopName: ?function_signatures.glPopName = null;
    var glPushName: ?function_signatures.glPushName = null;
    var glClearAccum: ?function_signatures.glClearAccum = null;
    var glClearIndex: ?function_signatures.glClearIndex = null;
    var glIndexMask: ?function_signatures.glIndexMask = null;
    var glAccum: ?function_signatures.glAccum = null;
    var glPopAttrib: ?function_signatures.glPopAttrib = null;
    var glPushAttrib: ?function_signatures.glPushAttrib = null;
    var glMap1d: ?function_signatures.glMap1d = null;
    var glMap1f: ?function_signatures.glMap1f = null;
    var glMap2d: ?function_signatures.glMap2d = null;
    var glMap2f: ?function_signatures.glMap2f = null;
    var glMapGrid1d: ?function_signatures.glMapGrid1d = null;
    var glMapGrid1f: ?function_signatures.glMapGrid1f = null;
    var glMapGrid2d: ?function_signatures.glMapGrid2d = null;
    var glMapGrid2f: ?function_signatures.glMapGrid2f = null;
    var glEvalCoord1d: ?function_signatures.glEvalCoord1d = null;
    var glEvalCoord1dv: ?function_signatures.glEvalCoord1dv = null;
    var glEvalCoord1f: ?function_signatures.glEvalCoord1f = null;
    var glEvalCoord1fv: ?function_signatures.glEvalCoord1fv = null;
    var glEvalCoord2d: ?function_signatures.glEvalCoord2d = null;
    var glEvalCoord2dv: ?function_signatures.glEvalCoord2dv = null;
    var glEvalCoord2f: ?function_signatures.glEvalCoord2f = null;
    var glEvalCoord2fv: ?function_signatures.glEvalCoord2fv = null;
    var glEvalMesh1: ?function_signatures.glEvalMesh1 = null;
    var glEvalPoint1: ?function_signatures.glEvalPoint1 = null;
    var glEvalMesh2: ?function_signatures.glEvalMesh2 = null;
    var glEvalPoint2: ?function_signatures.glEvalPoint2 = null;
    var glAlphaFunc: ?function_signatures.glAlphaFunc = null;
    var glPixelZoom: ?function_signatures.glPixelZoom = null;
    var glPixelTransferf: ?function_signatures.glPixelTransferf = null;
    var glPixelTransferi: ?function_signatures.glPixelTransferi = null;
    var glPixelMapfv: ?function_signatures.glPixelMapfv = null;
    var glPixelMapuiv: ?function_signatures.glPixelMapuiv = null;
    var glPixelMapusv: ?function_signatures.glPixelMapusv = null;
    var glCopyPixels: ?function_signatures.glCopyPixels = null;
    var glDrawPixels: ?function_signatures.glDrawPixels = null;
    var glGetClipPlane: ?function_signatures.glGetClipPlane = null;
    var glGetLightfv: ?function_signatures.glGetLightfv = null;
    var glGetLightiv: ?function_signatures.glGetLightiv = null;
    var glGetMapdv: ?function_signatures.glGetMapdv = null;
    var glGetMapfv: ?function_signatures.glGetMapfv = null;
    var glGetMapiv: ?function_signatures.glGetMapiv = null;
    var glGetMaterialfv: ?function_signatures.glGetMaterialfv = null;
    var glGetMaterialiv: ?function_signatures.glGetMaterialiv = null;
    var glGetPixelMapfv: ?function_signatures.glGetPixelMapfv = null;
    var glGetPixelMapuiv: ?function_signatures.glGetPixelMapuiv = null;
    var glGetPixelMapusv: ?function_signatures.glGetPixelMapusv = null;
    var glGetPolygonStipple: ?function_signatures.glGetPolygonStipple = null;
    var glGetTexEnvfv: ?function_signatures.glGetTexEnvfv = null;
    var glGetTexEnviv: ?function_signatures.glGetTexEnviv = null;
    var glGetTexGendv: ?function_signatures.glGetTexGendv = null;
    var glGetTexGenfv: ?function_signatures.glGetTexGenfv = null;
    var glGetTexGeniv: ?function_signatures.glGetTexGeniv = null;
    var glIsList: ?function_signatures.glIsList = null;
    var glFrustum: ?function_signatures.glFrustum = null;
    var glLoadIdentity: ?function_signatures.glLoadIdentity = null;
    var glLoadMatrixf: ?function_signatures.glLoadMatrixf = null;
    var glLoadMatrixd: ?function_signatures.glLoadMatrixd = null;
    var glMatrixMode: ?function_signatures.glMatrixMode = null;
    var glMultMatrixf: ?function_signatures.glMultMatrixf = null;
    var glMultMatrixd: ?function_signatures.glMultMatrixd = null;
    var glOrtho: ?function_signatures.glOrtho = null;
    var glPopMatrix: ?function_signatures.glPopMatrix = null;
    var glPushMatrix: ?function_signatures.glPushMatrix = null;
    var glRotated: ?function_signatures.glRotated = null;
    var glRotatef: ?function_signatures.glRotatef = null;
    var glScaled: ?function_signatures.glScaled = null;
    var glScalef: ?function_signatures.glScalef = null;
    var glTranslated: ?function_signatures.glTranslated = null;
    var glTranslatef: ?function_signatures.glTranslatef = null;
    var glDrawArrays: ?function_signatures.glDrawArrays = null;
    var glDrawElements: ?function_signatures.glDrawElements = null;
    var glGetPointerv: ?function_signatures.glGetPointerv = null;
    var glPolygonOffset: ?function_signatures.glPolygonOffset = null;
    var glCopyTexImage1D: ?function_signatures.glCopyTexImage1D = null;
    var glCopyTexImage2D: ?function_signatures.glCopyTexImage2D = null;
    var glCopyTexSubImage1D: ?function_signatures.glCopyTexSubImage1D = null;
    var glCopyTexSubImage2D: ?function_signatures.glCopyTexSubImage2D = null;
    var glTexSubImage1D: ?function_signatures.glTexSubImage1D = null;
    var glTexSubImage2D: ?function_signatures.glTexSubImage2D = null;
    var glBindTexture: ?function_signatures.glBindTexture = null;
    var glDeleteTextures: ?function_signatures.glDeleteTextures = null;
    var glGenTextures: ?function_signatures.glGenTextures = null;
    var glIsTexture: ?function_signatures.glIsTexture = null;
    var glArrayElement: ?function_signatures.glArrayElement = null;
    var glColorPointer: ?function_signatures.glColorPointer = null;
    var glDisableClientState: ?function_signatures.glDisableClientState = null;
    var glEdgeFlagPointer: ?function_signatures.glEdgeFlagPointer = null;
    var glEnableClientState: ?function_signatures.glEnableClientState = null;
    var glIndexPointer: ?function_signatures.glIndexPointer = null;
    var glInterleavedArrays: ?function_signatures.glInterleavedArrays = null;
    var glNormalPointer: ?function_signatures.glNormalPointer = null;
    var glTexCoordPointer: ?function_signatures.glTexCoordPointer = null;
    var glVertexPointer: ?function_signatures.glVertexPointer = null;
    var glAreTexturesResident: ?function_signatures.glAreTexturesResident = null;
    var glPrioritizeTextures: ?function_signatures.glPrioritizeTextures = null;
    var glIndexub: ?function_signatures.glIndexub = null;
    var glIndexubv: ?function_signatures.glIndexubv = null;
    var glPopClientAttrib: ?function_signatures.glPopClientAttrib = null;
    var glPushClientAttrib: ?function_signatures.glPushClientAttrib = null;
    var glDrawRangeElements: ?function_signatures.glDrawRangeElements = null;
    var glTexImage3D: ?function_signatures.glTexImage3D = null;
    var glTexSubImage3D: ?function_signatures.glTexSubImage3D = null;
    var glCopyTexSubImage3D: ?function_signatures.glCopyTexSubImage3D = null;
    var glActiveTexture: ?function_signatures.glActiveTexture = null;
    var glSampleCoverage: ?function_signatures.glSampleCoverage = null;
    var glCompressedTexImage3D: ?function_signatures.glCompressedTexImage3D = null;
    var glCompressedTexImage2D: ?function_signatures.glCompressedTexImage2D = null;
    var glCompressedTexImage1D: ?function_signatures.glCompressedTexImage1D = null;
    var glCompressedTexSubImage3D: ?function_signatures.glCompressedTexSubImage3D = null;
    var glCompressedTexSubImage2D: ?function_signatures.glCompressedTexSubImage2D = null;
    var glCompressedTexSubImage1D: ?function_signatures.glCompressedTexSubImage1D = null;
    var glGetCompressedTexImage: ?function_signatures.glGetCompressedTexImage = null;
    var glClientActiveTexture: ?function_signatures.glClientActiveTexture = null;
    var glMultiTexCoord1d: ?function_signatures.glMultiTexCoord1d = null;
    var glMultiTexCoord1dv: ?function_signatures.glMultiTexCoord1dv = null;
    var glMultiTexCoord1f: ?function_signatures.glMultiTexCoord1f = null;
    var glMultiTexCoord1fv: ?function_signatures.glMultiTexCoord1fv = null;
    var glMultiTexCoord1i: ?function_signatures.glMultiTexCoord1i = null;
    var glMultiTexCoord1iv: ?function_signatures.glMultiTexCoord1iv = null;
    var glMultiTexCoord1s: ?function_signatures.glMultiTexCoord1s = null;
    var glMultiTexCoord1sv: ?function_signatures.glMultiTexCoord1sv = null;
    var glMultiTexCoord2d: ?function_signatures.glMultiTexCoord2d = null;
    var glMultiTexCoord2dv: ?function_signatures.glMultiTexCoord2dv = null;
    var glMultiTexCoord2f: ?function_signatures.glMultiTexCoord2f = null;
    var glMultiTexCoord2fv: ?function_signatures.glMultiTexCoord2fv = null;
    var glMultiTexCoord2i: ?function_signatures.glMultiTexCoord2i = null;
    var glMultiTexCoord2iv: ?function_signatures.glMultiTexCoord2iv = null;
    var glMultiTexCoord2s: ?function_signatures.glMultiTexCoord2s = null;
    var glMultiTexCoord2sv: ?function_signatures.glMultiTexCoord2sv = null;
    var glMultiTexCoord3d: ?function_signatures.glMultiTexCoord3d = null;
    var glMultiTexCoord3dv: ?function_signatures.glMultiTexCoord3dv = null;
    var glMultiTexCoord3f: ?function_signatures.glMultiTexCoord3f = null;
    var glMultiTexCoord3fv: ?function_signatures.glMultiTexCoord3fv = null;
    var glMultiTexCoord3i: ?function_signatures.glMultiTexCoord3i = null;
    var glMultiTexCoord3iv: ?function_signatures.glMultiTexCoord3iv = null;
    var glMultiTexCoord3s: ?function_signatures.glMultiTexCoord3s = null;
    var glMultiTexCoord3sv: ?function_signatures.glMultiTexCoord3sv = null;
    var glMultiTexCoord4d: ?function_signatures.glMultiTexCoord4d = null;
    var glMultiTexCoord4dv: ?function_signatures.glMultiTexCoord4dv = null;
    var glMultiTexCoord4f: ?function_signatures.glMultiTexCoord4f = null;
    var glMultiTexCoord4fv: ?function_signatures.glMultiTexCoord4fv = null;
    var glMultiTexCoord4i: ?function_signatures.glMultiTexCoord4i = null;
    var glMultiTexCoord4iv: ?function_signatures.glMultiTexCoord4iv = null;
    var glMultiTexCoord4s: ?function_signatures.glMultiTexCoord4s = null;
    var glMultiTexCoord4sv: ?function_signatures.glMultiTexCoord4sv = null;
    var glLoadTransposeMatrixf: ?function_signatures.glLoadTransposeMatrixf = null;
    var glLoadTransposeMatrixd: ?function_signatures.glLoadTransposeMatrixd = null;
    var glMultTransposeMatrixf: ?function_signatures.glMultTransposeMatrixf = null;
    var glMultTransposeMatrixd: ?function_signatures.glMultTransposeMatrixd = null;
    var glBlendFuncSeparate: ?function_signatures.glBlendFuncSeparate = null;
    var glMultiDrawArrays: ?function_signatures.glMultiDrawArrays = null;
    var glMultiDrawElements: ?function_signatures.glMultiDrawElements = null;
    var glPointParameterf: ?function_signatures.glPointParameterf = null;
    var glPointParameterfv: ?function_signatures.glPointParameterfv = null;
    var glPointParameteri: ?function_signatures.glPointParameteri = null;
    var glPointParameteriv: ?function_signatures.glPointParameteriv = null;
    var glFogCoordf: ?function_signatures.glFogCoordf = null;
    var glFogCoordfv: ?function_signatures.glFogCoordfv = null;
    var glFogCoordd: ?function_signatures.glFogCoordd = null;
    var glFogCoorddv: ?function_signatures.glFogCoorddv = null;
    var glFogCoordPointer: ?function_signatures.glFogCoordPointer = null;
    var glSecondaryColor3b: ?function_signatures.glSecondaryColor3b = null;
    var glSecondaryColor3bv: ?function_signatures.glSecondaryColor3bv = null;
    var glSecondaryColor3d: ?function_signatures.glSecondaryColor3d = null;
    var glSecondaryColor3dv: ?function_signatures.glSecondaryColor3dv = null;
    var glSecondaryColor3f: ?function_signatures.glSecondaryColor3f = null;
    var glSecondaryColor3fv: ?function_signatures.glSecondaryColor3fv = null;
    var glSecondaryColor3i: ?function_signatures.glSecondaryColor3i = null;
    var glSecondaryColor3iv: ?function_signatures.glSecondaryColor3iv = null;
    var glSecondaryColor3s: ?function_signatures.glSecondaryColor3s = null;
    var glSecondaryColor3sv: ?function_signatures.glSecondaryColor3sv = null;
    var glSecondaryColor3ub: ?function_signatures.glSecondaryColor3ub = null;
    var glSecondaryColor3ubv: ?function_signatures.glSecondaryColor3ubv = null;
    var glSecondaryColor3ui: ?function_signatures.glSecondaryColor3ui = null;
    var glSecondaryColor3uiv: ?function_signatures.glSecondaryColor3uiv = null;
    var glSecondaryColor3us: ?function_signatures.glSecondaryColor3us = null;
    var glSecondaryColor3usv: ?function_signatures.glSecondaryColor3usv = null;
    var glSecondaryColorPointer: ?function_signatures.glSecondaryColorPointer = null;
    var glWindowPos2d: ?function_signatures.glWindowPos2d = null;
    var glWindowPos2dv: ?function_signatures.glWindowPos2dv = null;
    var glWindowPos2f: ?function_signatures.glWindowPos2f = null;
    var glWindowPos2fv: ?function_signatures.glWindowPos2fv = null;
    var glWindowPos2i: ?function_signatures.glWindowPos2i = null;
    var glWindowPos2iv: ?function_signatures.glWindowPos2iv = null;
    var glWindowPos2s: ?function_signatures.glWindowPos2s = null;
    var glWindowPos2sv: ?function_signatures.glWindowPos2sv = null;
    var glWindowPos3d: ?function_signatures.glWindowPos3d = null;
    var glWindowPos3dv: ?function_signatures.glWindowPos3dv = null;
    var glWindowPos3f: ?function_signatures.glWindowPos3f = null;
    var glWindowPos3fv: ?function_signatures.glWindowPos3fv = null;
    var glWindowPos3i: ?function_signatures.glWindowPos3i = null;
    var glWindowPos3iv: ?function_signatures.glWindowPos3iv = null;
    var glWindowPos3s: ?function_signatures.glWindowPos3s = null;
    var glWindowPos3sv: ?function_signatures.glWindowPos3sv = null;
    var glBlendColor: ?function_signatures.glBlendColor = null;
    var glBlendEquation: ?function_signatures.glBlendEquation = null;
};

test "" {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
