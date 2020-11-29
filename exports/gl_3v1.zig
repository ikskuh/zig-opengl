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

pub fn cullFace(mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(mode);
}

pub fn frontFace(mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(mode);
}

pub fn hint(target: GLenum, mode: GLenum) void {
    return (function_pointers.glHint orelse @panic("glHint was not bound."))(target, mode);
}

pub fn lineWidth(width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(width);
}

pub fn pointSize(size: GLfloat) void {
    return (function_pointers.glPointSize orelse @panic("glPointSize was not bound."))(size);
}

pub fn polygonMode(face: GLenum, mode: GLenum) void {
    return (function_pointers.glPolygonMode orelse @panic("glPolygonMode was not bound."))(face, mode);
}

pub fn scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(x, y, width, height);
}

pub fn texParameterf(target: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexParameterf orelse @panic("glTexParameterf was not bound."))(target, pname, param);
}

pub fn texParameterfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexParameterfv orelse @panic("glTexParameterfv was not bound."))(target, pname, params);
}

pub fn texParameteri(target: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexParameteri orelse @panic("glTexParameteri was not bound."))(target, pname, param);
}

pub fn texParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexParameteriv orelse @panic("glTexParameteriv was not bound."))(target, pname, params);
}

pub fn texImage1D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexImage1D orelse @panic("glTexImage1D was not bound."))(target, level, internalformat, width, border, format, type, pixels);
}

pub fn texImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(target, level, internalformat, width, height, border, format, type, pixels);
}

pub fn drawBuffer(buf: GLenum) void {
    return (function_pointers.glDrawBuffer orelse @panic("glDrawBuffer was not bound."))(buf);
}

pub fn clear(mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(mask);
}

pub fn clearColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(red, green, blue, alpha);
}

pub fn clearStencil(s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(s);
}

pub fn clearDepth(depth: GLdouble) void {
    return (function_pointers.glClearDepth orelse @panic("glClearDepth was not bound."))(depth);
}

pub fn stencilMask(mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(mask);
}

pub fn colorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(red, green, blue, alpha);
}

pub fn depthMask(flag: GLboolean) void {
    return (function_pointers.glDepthMask orelse @panic("glDepthMask was not bound."))(flag);
}

pub fn disable(cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(cap);
}

pub fn enable(cap: GLenum) void {
    return (function_pointers.glEnable orelse @panic("glEnable was not bound."))(cap);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn blendFunc(sfactor: GLenum, dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(sfactor, dfactor);
}

pub fn logicOp(opcode: GLenum) void {
    return (function_pointers.glLogicOp orelse @panic("glLogicOp was not bound."))(opcode);
}

pub fn stencilFunc(func: GLenum, ref: GLint, mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(func, ref, mask);
}

pub fn stencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(fail, zfail, zpass);
}

pub fn depthFunc(func: GLenum) void {
    return (function_pointers.glDepthFunc orelse @panic("glDepthFunc was not bound."))(func);
}

pub fn pixelStoref(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glPixelStoref orelse @panic("glPixelStoref was not bound."))(pname, param);
}

pub fn pixelStorei(pname: GLenum, param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(pname, param);
}

pub fn readBuffer(src: GLenum) void {
    return (function_pointers.glReadBuffer orelse @panic("glReadBuffer was not bound."))(src);
}

pub fn readPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(x, y, width, height, format, type, pixels);
}

pub fn getBooleanv(pname: GLenum, data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(pname, data);
}

pub fn getDoublev(pname: GLenum, data: [*c]GLdouble) void {
    return (function_pointers.glGetDoublev orelse @panic("glGetDoublev was not bound."))(pname, data);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFloatv(pname: GLenum, data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(pname, data);
}

pub fn getIntegerv(pname: GLenum, data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(pname, data);
}

pub fn getString(name: GLenum) [*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(name);
}

pub fn getTexImage(target: GLenum, level: GLint, format: GLenum, type: GLenum, pixels: *c_void) void {
    return (function_pointers.glGetTexImage orelse @panic("glGetTexImage was not bound."))(target, level, format, type, pixels);
}

pub fn getTexParameterfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(target, pname, params);
}

pub fn getTexParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(target, pname, params);
}

pub fn getTexLevelParameterfv(target: GLenum, level: GLint, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexLevelParameterfv orelse @panic("glGetTexLevelParameterfv was not bound."))(target, level, pname, params);
}

pub fn getTexLevelParameteriv(target: GLenum, level: GLint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexLevelParameteriv orelse @panic("glGetTexLevelParameteriv was not bound."))(target, level, pname, params);
}

pub fn isEnabled(cap: GLenum) GLboolean {
    return (function_pointers.glIsEnabled orelse @panic("glIsEnabled was not bound."))(cap);
}

pub fn depthRange(n: GLdouble, f: GLdouble) void {
    return (function_pointers.glDepthRange orelse @panic("glDepthRange was not bound."))(n, f);
}

pub fn viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(x, y, width, height);
}

pub fn newList(list: GLuint, mode: GLenum) void {
    return (function_pointers.glNewList orelse @panic("glNewList was not bound."))(list, mode);
}

pub fn endList() void {
    return (function_pointers.glEndList orelse @panic("glEndList was not bound."))();
}

pub fn callList(list: GLuint) void {
    return (function_pointers.glCallList orelse @panic("glCallList was not bound."))(list);
}

pub fn callLists(n: GLsizei, type: GLenum, lists: *const c_void) void {
    return (function_pointers.glCallLists orelse @panic("glCallLists was not bound."))(n, type, lists);
}

pub fn deleteLists(list: GLuint, range: GLsizei) void {
    return (function_pointers.glDeleteLists orelse @panic("glDeleteLists was not bound."))(list, range);
}

pub fn genLists(range: GLsizei) GLuint {
    return (function_pointers.glGenLists orelse @panic("glGenLists was not bound."))(range);
}

pub fn listBase(base: GLuint) void {
    return (function_pointers.glListBase orelse @panic("glListBase was not bound."))(base);
}

pub fn begin(mode: GLenum) void {
    return (function_pointers.glBegin orelse @panic("glBegin was not bound."))(mode);
}

pub fn bitmap(width: GLsizei, height: GLsizei, xorig: GLfloat, yorig: GLfloat, xmove: GLfloat, ymove: GLfloat, bitmap: [*:0]const GLubyte) void {
    return (function_pointers.glBitmap orelse @panic("glBitmap was not bound."))(width, height, xorig, yorig, xmove, ymove, bitmap);
}

pub fn color3b(red: GLbyte, green: GLbyte, blue: GLbyte) void {
    return (function_pointers.glColor3b orelse @panic("glColor3b was not bound."))(red, green, blue);
}

pub fn color3bv(v: [*c]const GLbyte) void {
    return (function_pointers.glColor3bv orelse @panic("glColor3bv was not bound."))(v);
}

pub fn color3d(red: GLdouble, green: GLdouble, blue: GLdouble) void {
    return (function_pointers.glColor3d orelse @panic("glColor3d was not bound."))(red, green, blue);
}

pub fn color3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glColor3dv orelse @panic("glColor3dv was not bound."))(v);
}

pub fn color3f(red: GLfloat, green: GLfloat, blue: GLfloat) void {
    return (function_pointers.glColor3f orelse @panic("glColor3f was not bound."))(red, green, blue);
}

pub fn color3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glColor3fv orelse @panic("glColor3fv was not bound."))(v);
}

pub fn color3i(red: GLint, green: GLint, blue: GLint) void {
    return (function_pointers.glColor3i orelse @panic("glColor3i was not bound."))(red, green, blue);
}

pub fn color3iv(v: [*c]const GLint) void {
    return (function_pointers.glColor3iv orelse @panic("glColor3iv was not bound."))(v);
}

pub fn color3s(red: GLshort, green: GLshort, blue: GLshort) void {
    return (function_pointers.glColor3s orelse @panic("glColor3s was not bound."))(red, green, blue);
}

pub fn color3sv(v: [*c]const GLshort) void {
    return (function_pointers.glColor3sv orelse @panic("glColor3sv was not bound."))(v);
}

pub fn color3ub(red: GLubyte, green: GLubyte, blue: GLubyte) void {
    return (function_pointers.glColor3ub orelse @panic("glColor3ub was not bound."))(red, green, blue);
}

pub fn color3ubv(v: [*:0]const GLubyte) void {
    return (function_pointers.glColor3ubv orelse @panic("glColor3ubv was not bound."))(v);
}

pub fn color3ui(red: GLuint, green: GLuint, blue: GLuint) void {
    return (function_pointers.glColor3ui orelse @panic("glColor3ui was not bound."))(red, green, blue);
}

pub fn color3uiv(v: [*c]const GLuint) void {
    return (function_pointers.glColor3uiv orelse @panic("glColor3uiv was not bound."))(v);
}

pub fn color3us(red: GLushort, green: GLushort, blue: GLushort) void {
    return (function_pointers.glColor3us orelse @panic("glColor3us was not bound."))(red, green, blue);
}

pub fn color3usv(v: [*c]const GLushort) void {
    return (function_pointers.glColor3usv orelse @panic("glColor3usv was not bound."))(v);
}

pub fn color4b(red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) void {
    return (function_pointers.glColor4b orelse @panic("glColor4b was not bound."))(red, green, blue, alpha);
}

pub fn color4bv(v: [*c]const GLbyte) void {
    return (function_pointers.glColor4bv orelse @panic("glColor4bv was not bound."))(v);
}

pub fn color4d(red: GLdouble, green: GLdouble, blue: GLdouble, alpha: GLdouble) void {
    return (function_pointers.glColor4d orelse @panic("glColor4d was not bound."))(red, green, blue, alpha);
}

pub fn color4dv(v: [*c]const GLdouble) void {
    return (function_pointers.glColor4dv orelse @panic("glColor4dv was not bound."))(v);
}

pub fn color4f(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glColor4f orelse @panic("glColor4f was not bound."))(red, green, blue, alpha);
}

pub fn color4fv(v: [*c]const GLfloat) void {
    return (function_pointers.glColor4fv orelse @panic("glColor4fv was not bound."))(v);
}

pub fn color4i(red: GLint, green: GLint, blue: GLint, alpha: GLint) void {
    return (function_pointers.glColor4i orelse @panic("glColor4i was not bound."))(red, green, blue, alpha);
}

pub fn color4iv(v: [*c]const GLint) void {
    return (function_pointers.glColor4iv orelse @panic("glColor4iv was not bound."))(v);
}

pub fn color4s(red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) void {
    return (function_pointers.glColor4s orelse @panic("glColor4s was not bound."))(red, green, blue, alpha);
}

pub fn color4sv(v: [*c]const GLshort) void {
    return (function_pointers.glColor4sv orelse @panic("glColor4sv was not bound."))(v);
}

pub fn color4ub(red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void {
    return (function_pointers.glColor4ub orelse @panic("glColor4ub was not bound."))(red, green, blue, alpha);
}

pub fn color4ubv(v: [*:0]const GLubyte) void {
    return (function_pointers.glColor4ubv orelse @panic("glColor4ubv was not bound."))(v);
}

pub fn color4ui(red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) void {
    return (function_pointers.glColor4ui orelse @panic("glColor4ui was not bound."))(red, green, blue, alpha);
}

pub fn color4uiv(v: [*c]const GLuint) void {
    return (function_pointers.glColor4uiv orelse @panic("glColor4uiv was not bound."))(v);
}

pub fn color4us(red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) void {
    return (function_pointers.glColor4us orelse @panic("glColor4us was not bound."))(red, green, blue, alpha);
}

pub fn color4usv(v: [*c]const GLushort) void {
    return (function_pointers.glColor4usv orelse @panic("glColor4usv was not bound."))(v);
}

pub fn edgeFlag(flag: GLboolean) void {
    return (function_pointers.glEdgeFlag orelse @panic("glEdgeFlag was not bound."))(flag);
}

pub fn edgeFlagv(flag: [*c]const GLboolean) void {
    return (function_pointers.glEdgeFlagv orelse @panic("glEdgeFlagv was not bound."))(flag);
}

pub fn end() void {
    return (function_pointers.glEnd orelse @panic("glEnd was not bound."))();
}

pub fn indexd(c: GLdouble) void {
    return (function_pointers.glIndexd orelse @panic("glIndexd was not bound."))(c);
}

pub fn indexdv(c: [*c]const GLdouble) void {
    return (function_pointers.glIndexdv orelse @panic("glIndexdv was not bound."))(c);
}

pub fn indexf(c: GLfloat) void {
    return (function_pointers.glIndexf orelse @panic("glIndexf was not bound."))(c);
}

pub fn indexfv(c: [*c]const GLfloat) void {
    return (function_pointers.glIndexfv orelse @panic("glIndexfv was not bound."))(c);
}

pub fn indexi(c: GLint) void {
    return (function_pointers.glIndexi orelse @panic("glIndexi was not bound."))(c);
}

pub fn indexiv(c: [*c]const GLint) void {
    return (function_pointers.glIndexiv orelse @panic("glIndexiv was not bound."))(c);
}

pub fn indexs(c: GLshort) void {
    return (function_pointers.glIndexs orelse @panic("glIndexs was not bound."))(c);
}

pub fn indexsv(c: [*c]const GLshort) void {
    return (function_pointers.glIndexsv orelse @panic("glIndexsv was not bound."))(c);
}

pub fn normal3b(nx: GLbyte, ny: GLbyte, nz: GLbyte) void {
    return (function_pointers.glNormal3b orelse @panic("glNormal3b was not bound."))(nx, ny, nz);
}

pub fn normal3bv(v: [*c]const GLbyte) void {
    return (function_pointers.glNormal3bv orelse @panic("glNormal3bv was not bound."))(v);
}

pub fn normal3d(nx: GLdouble, ny: GLdouble, nz: GLdouble) void {
    return (function_pointers.glNormal3d orelse @panic("glNormal3d was not bound."))(nx, ny, nz);
}

pub fn normal3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glNormal3dv orelse @panic("glNormal3dv was not bound."))(v);
}

pub fn normal3f(nx: GLfloat, ny: GLfloat, nz: GLfloat) void {
    return (function_pointers.glNormal3f orelse @panic("glNormal3f was not bound."))(nx, ny, nz);
}

pub fn normal3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glNormal3fv orelse @panic("glNormal3fv was not bound."))(v);
}

pub fn normal3i(nx: GLint, ny: GLint, nz: GLint) void {
    return (function_pointers.glNormal3i orelse @panic("glNormal3i was not bound."))(nx, ny, nz);
}

pub fn normal3iv(v: [*c]const GLint) void {
    return (function_pointers.glNormal3iv orelse @panic("glNormal3iv was not bound."))(v);
}

pub fn normal3s(nx: GLshort, ny: GLshort, nz: GLshort) void {
    return (function_pointers.glNormal3s orelse @panic("glNormal3s was not bound."))(nx, ny, nz);
}

pub fn normal3sv(v: [*c]const GLshort) void {
    return (function_pointers.glNormal3sv orelse @panic("glNormal3sv was not bound."))(v);
}

pub fn rasterPos2d(x: GLdouble, y: GLdouble) void {
    return (function_pointers.glRasterPos2d orelse @panic("glRasterPos2d was not bound."))(x, y);
}

pub fn rasterPos2dv(v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos2dv orelse @panic("glRasterPos2dv was not bound."))(v);
}

pub fn rasterPos2f(x: GLfloat, y: GLfloat) void {
    return (function_pointers.glRasterPos2f orelse @panic("glRasterPos2f was not bound."))(x, y);
}

pub fn rasterPos2fv(v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos2fv orelse @panic("glRasterPos2fv was not bound."))(v);
}

pub fn rasterPos2i(x: GLint, y: GLint) void {
    return (function_pointers.glRasterPos2i orelse @panic("glRasterPos2i was not bound."))(x, y);
}

pub fn rasterPos2iv(v: [*c]const GLint) void {
    return (function_pointers.glRasterPos2iv orelse @panic("glRasterPos2iv was not bound."))(v);
}

pub fn rasterPos2s(x: GLshort, y: GLshort) void {
    return (function_pointers.glRasterPos2s orelse @panic("glRasterPos2s was not bound."))(x, y);
}

pub fn rasterPos2sv(v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos2sv orelse @panic("glRasterPos2sv was not bound."))(v);
}

pub fn rasterPos3d(x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glRasterPos3d orelse @panic("glRasterPos3d was not bound."))(x, y, z);
}

pub fn rasterPos3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos3dv orelse @panic("glRasterPos3dv was not bound."))(v);
}

pub fn rasterPos3f(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glRasterPos3f orelse @panic("glRasterPos3f was not bound."))(x, y, z);
}

pub fn rasterPos3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos3fv orelse @panic("glRasterPos3fv was not bound."))(v);
}

pub fn rasterPos3i(x: GLint, y: GLint, z: GLint) void {
    return (function_pointers.glRasterPos3i orelse @panic("glRasterPos3i was not bound."))(x, y, z);
}

pub fn rasterPos3iv(v: [*c]const GLint) void {
    return (function_pointers.glRasterPos3iv orelse @panic("glRasterPos3iv was not bound."))(v);
}

pub fn rasterPos3s(x: GLshort, y: GLshort, z: GLshort) void {
    return (function_pointers.glRasterPos3s orelse @panic("glRasterPos3s was not bound."))(x, y, z);
}

pub fn rasterPos3sv(v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos3sv orelse @panic("glRasterPos3sv was not bound."))(v);
}

pub fn rasterPos4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void {
    return (function_pointers.glRasterPos4d orelse @panic("glRasterPos4d was not bound."))(x, y, z, w);
}

pub fn rasterPos4dv(v: [*c]const GLdouble) void {
    return (function_pointers.glRasterPos4dv orelse @panic("glRasterPos4dv was not bound."))(v);
}

pub fn rasterPos4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void {
    return (function_pointers.glRasterPos4f orelse @panic("glRasterPos4f was not bound."))(x, y, z, w);
}

pub fn rasterPos4fv(v: [*c]const GLfloat) void {
    return (function_pointers.glRasterPos4fv orelse @panic("glRasterPos4fv was not bound."))(v);
}

pub fn rasterPos4i(x: GLint, y: GLint, z: GLint, w: GLint) void {
    return (function_pointers.glRasterPos4i orelse @panic("glRasterPos4i was not bound."))(x, y, z, w);
}

pub fn rasterPos4iv(v: [*c]const GLint) void {
    return (function_pointers.glRasterPos4iv orelse @panic("glRasterPos4iv was not bound."))(v);
}

pub fn rasterPos4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void {
    return (function_pointers.glRasterPos4s orelse @panic("glRasterPos4s was not bound."))(x, y, z, w);
}

pub fn rasterPos4sv(v: [*c]const GLshort) void {
    return (function_pointers.glRasterPos4sv orelse @panic("glRasterPos4sv was not bound."))(v);
}

pub fn rectd(x1: GLdouble, y1: GLdouble, x2: GLdouble, y2: GLdouble) void {
    return (function_pointers.glRectd orelse @panic("glRectd was not bound."))(x1, y1, x2, y2);
}

pub fn rectdv(v1: [*c]const GLdouble, v2: [*c]const GLdouble) void {
    return (function_pointers.glRectdv orelse @panic("glRectdv was not bound."))(v1, v2);
}

pub fn rectf(x1: GLfloat, y1: GLfloat, x2: GLfloat, y2: GLfloat) void {
    return (function_pointers.glRectf orelse @panic("glRectf was not bound."))(x1, y1, x2, y2);
}

pub fn rectfv(v1: [*c]const GLfloat, v2: [*c]const GLfloat) void {
    return (function_pointers.glRectfv orelse @panic("glRectfv was not bound."))(v1, v2);
}

pub fn recti(x1: GLint, y1: GLint, x2: GLint, y2: GLint) void {
    return (function_pointers.glRecti orelse @panic("glRecti was not bound."))(x1, y1, x2, y2);
}

pub fn rectiv(v1: [*c]const GLint, v2: [*c]const GLint) void {
    return (function_pointers.glRectiv orelse @panic("glRectiv was not bound."))(v1, v2);
}

pub fn rects(x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) void {
    return (function_pointers.glRects orelse @panic("glRects was not bound."))(x1, y1, x2, y2);
}

pub fn rectsv(v1: [*c]const GLshort, v2: [*c]const GLshort) void {
    return (function_pointers.glRectsv orelse @panic("glRectsv was not bound."))(v1, v2);
}

pub fn texCoord1d(s: GLdouble) void {
    return (function_pointers.glTexCoord1d orelse @panic("glTexCoord1d was not bound."))(s);
}

pub fn texCoord1dv(v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord1dv orelse @panic("glTexCoord1dv was not bound."))(v);
}

pub fn texCoord1f(s: GLfloat) void {
    return (function_pointers.glTexCoord1f orelse @panic("glTexCoord1f was not bound."))(s);
}

pub fn texCoord1fv(v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord1fv orelse @panic("glTexCoord1fv was not bound."))(v);
}

pub fn texCoord1i(s: GLint) void {
    return (function_pointers.glTexCoord1i orelse @panic("glTexCoord1i was not bound."))(s);
}

pub fn texCoord1iv(v: [*c]const GLint) void {
    return (function_pointers.glTexCoord1iv orelse @panic("glTexCoord1iv was not bound."))(v);
}

pub fn texCoord1s(s: GLshort) void {
    return (function_pointers.glTexCoord1s orelse @panic("glTexCoord1s was not bound."))(s);
}

pub fn texCoord1sv(v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord1sv orelse @panic("glTexCoord1sv was not bound."))(v);
}

pub fn texCoord2d(s: GLdouble, t: GLdouble) void {
    return (function_pointers.glTexCoord2d orelse @panic("glTexCoord2d was not bound."))(s, t);
}

pub fn texCoord2dv(v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord2dv orelse @panic("glTexCoord2dv was not bound."))(v);
}

pub fn texCoord2f(s: GLfloat, t: GLfloat) void {
    return (function_pointers.glTexCoord2f orelse @panic("glTexCoord2f was not bound."))(s, t);
}

pub fn texCoord2fv(v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord2fv orelse @panic("glTexCoord2fv was not bound."))(v);
}

pub fn texCoord2i(s: GLint, t: GLint) void {
    return (function_pointers.glTexCoord2i orelse @panic("glTexCoord2i was not bound."))(s, t);
}

pub fn texCoord2iv(v: [*c]const GLint) void {
    return (function_pointers.glTexCoord2iv orelse @panic("glTexCoord2iv was not bound."))(v);
}

pub fn texCoord2s(s: GLshort, t: GLshort) void {
    return (function_pointers.glTexCoord2s orelse @panic("glTexCoord2s was not bound."))(s, t);
}

pub fn texCoord2sv(v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord2sv orelse @panic("glTexCoord2sv was not bound."))(v);
}

pub fn texCoord3d(s: GLdouble, t: GLdouble, r: GLdouble) void {
    return (function_pointers.glTexCoord3d orelse @panic("glTexCoord3d was not bound."))(s, t, r);
}

pub fn texCoord3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord3dv orelse @panic("glTexCoord3dv was not bound."))(v);
}

pub fn texCoord3f(s: GLfloat, t: GLfloat, r: GLfloat) void {
    return (function_pointers.glTexCoord3f orelse @panic("glTexCoord3f was not bound."))(s, t, r);
}

pub fn texCoord3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord3fv orelse @panic("glTexCoord3fv was not bound."))(v);
}

pub fn texCoord3i(s: GLint, t: GLint, r: GLint) void {
    return (function_pointers.glTexCoord3i orelse @panic("glTexCoord3i was not bound."))(s, t, r);
}

pub fn texCoord3iv(v: [*c]const GLint) void {
    return (function_pointers.glTexCoord3iv orelse @panic("glTexCoord3iv was not bound."))(v);
}

pub fn texCoord3s(s: GLshort, t: GLshort, r: GLshort) void {
    return (function_pointers.glTexCoord3s orelse @panic("glTexCoord3s was not bound."))(s, t, r);
}

pub fn texCoord3sv(v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord3sv orelse @panic("glTexCoord3sv was not bound."))(v);
}

pub fn texCoord4d(s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void {
    return (function_pointers.glTexCoord4d orelse @panic("glTexCoord4d was not bound."))(s, t, r, q);
}

pub fn texCoord4dv(v: [*c]const GLdouble) void {
    return (function_pointers.glTexCoord4dv orelse @panic("glTexCoord4dv was not bound."))(v);
}

pub fn texCoord4f(s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void {
    return (function_pointers.glTexCoord4f orelse @panic("glTexCoord4f was not bound."))(s, t, r, q);
}

pub fn texCoord4fv(v: [*c]const GLfloat) void {
    return (function_pointers.glTexCoord4fv orelse @panic("glTexCoord4fv was not bound."))(v);
}

pub fn texCoord4i(s: GLint, t: GLint, r: GLint, q: GLint) void {
    return (function_pointers.glTexCoord4i orelse @panic("glTexCoord4i was not bound."))(s, t, r, q);
}

pub fn texCoord4iv(v: [*c]const GLint) void {
    return (function_pointers.glTexCoord4iv orelse @panic("glTexCoord4iv was not bound."))(v);
}

pub fn texCoord4s(s: GLshort, t: GLshort, r: GLshort, q: GLshort) void {
    return (function_pointers.glTexCoord4s orelse @panic("glTexCoord4s was not bound."))(s, t, r, q);
}

pub fn texCoord4sv(v: [*c]const GLshort) void {
    return (function_pointers.glTexCoord4sv orelse @panic("glTexCoord4sv was not bound."))(v);
}

pub fn vertex2d(x: GLdouble, y: GLdouble) void {
    return (function_pointers.glVertex2d orelse @panic("glVertex2d was not bound."))(x, y);
}

pub fn vertex2dv(v: [*c]const GLdouble) void {
    return (function_pointers.glVertex2dv orelse @panic("glVertex2dv was not bound."))(v);
}

pub fn vertex2f(x: GLfloat, y: GLfloat) void {
    return (function_pointers.glVertex2f orelse @panic("glVertex2f was not bound."))(x, y);
}

pub fn vertex2fv(v: [*c]const GLfloat) void {
    return (function_pointers.glVertex2fv orelse @panic("glVertex2fv was not bound."))(v);
}

pub fn vertex2i(x: GLint, y: GLint) void {
    return (function_pointers.glVertex2i orelse @panic("glVertex2i was not bound."))(x, y);
}

pub fn vertex2iv(v: [*c]const GLint) void {
    return (function_pointers.glVertex2iv orelse @panic("glVertex2iv was not bound."))(v);
}

pub fn vertex2s(x: GLshort, y: GLshort) void {
    return (function_pointers.glVertex2s orelse @panic("glVertex2s was not bound."))(x, y);
}

pub fn vertex2sv(v: [*c]const GLshort) void {
    return (function_pointers.glVertex2sv orelse @panic("glVertex2sv was not bound."))(v);
}

pub fn vertex3d(x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glVertex3d orelse @panic("glVertex3d was not bound."))(x, y, z);
}

pub fn vertex3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glVertex3dv orelse @panic("glVertex3dv was not bound."))(v);
}

pub fn vertex3f(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glVertex3f orelse @panic("glVertex3f was not bound."))(x, y, z);
}

pub fn vertex3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glVertex3fv orelse @panic("glVertex3fv was not bound."))(v);
}

pub fn vertex3i(x: GLint, y: GLint, z: GLint) void {
    return (function_pointers.glVertex3i orelse @panic("glVertex3i was not bound."))(x, y, z);
}

pub fn vertex3iv(v: [*c]const GLint) void {
    return (function_pointers.glVertex3iv orelse @panic("glVertex3iv was not bound."))(v);
}

pub fn vertex3s(x: GLshort, y: GLshort, z: GLshort) void {
    return (function_pointers.glVertex3s orelse @panic("glVertex3s was not bound."))(x, y, z);
}

pub fn vertex3sv(v: [*c]const GLshort) void {
    return (function_pointers.glVertex3sv orelse @panic("glVertex3sv was not bound."))(v);
}

pub fn vertex4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void {
    return (function_pointers.glVertex4d orelse @panic("glVertex4d was not bound."))(x, y, z, w);
}

pub fn vertex4dv(v: [*c]const GLdouble) void {
    return (function_pointers.glVertex4dv orelse @panic("glVertex4dv was not bound."))(v);
}

pub fn vertex4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void {
    return (function_pointers.glVertex4f orelse @panic("glVertex4f was not bound."))(x, y, z, w);
}

pub fn vertex4fv(v: [*c]const GLfloat) void {
    return (function_pointers.glVertex4fv orelse @panic("glVertex4fv was not bound."))(v);
}

pub fn vertex4i(x: GLint, y: GLint, z: GLint, w: GLint) void {
    return (function_pointers.glVertex4i orelse @panic("glVertex4i was not bound."))(x, y, z, w);
}

pub fn vertex4iv(v: [*c]const GLint) void {
    return (function_pointers.glVertex4iv orelse @panic("glVertex4iv was not bound."))(v);
}

pub fn vertex4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void {
    return (function_pointers.glVertex4s orelse @panic("glVertex4s was not bound."))(x, y, z, w);
}

pub fn vertex4sv(v: [*c]const GLshort) void {
    return (function_pointers.glVertex4sv orelse @panic("glVertex4sv was not bound."))(v);
}

pub fn clipPlane(plane: GLenum, equation: [*c]const GLdouble) void {
    return (function_pointers.glClipPlane orelse @panic("glClipPlane was not bound."))(plane, equation);
}

pub fn colorMaterial(face: GLenum, mode: GLenum) void {
    return (function_pointers.glColorMaterial orelse @panic("glColorMaterial was not bound."))(face, mode);
}

pub fn fogf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glFogf orelse @panic("glFogf was not bound."))(pname, param);
}

pub fn fogfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glFogfv orelse @panic("glFogfv was not bound."))(pname, params);
}

pub fn fogi(pname: GLenum, param: GLint) void {
    return (function_pointers.glFogi orelse @panic("glFogi was not bound."))(pname, param);
}

pub fn fogiv(pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glFogiv orelse @panic("glFogiv was not bound."))(pname, params);
}

pub fn lightf(light: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glLightf orelse @panic("glLightf was not bound."))(light, pname, param);
}

pub fn lightfv(light: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glLightfv orelse @panic("glLightfv was not bound."))(light, pname, params);
}

pub fn lighti(light: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glLighti orelse @panic("glLighti was not bound."))(light, pname, param);
}

pub fn lightiv(light: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glLightiv orelse @panic("glLightiv was not bound."))(light, pname, params);
}

pub fn lightModelf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glLightModelf orelse @panic("glLightModelf was not bound."))(pname, param);
}

pub fn lightModelfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glLightModelfv orelse @panic("glLightModelfv was not bound."))(pname, params);
}

pub fn lightModeli(pname: GLenum, param: GLint) void {
    return (function_pointers.glLightModeli orelse @panic("glLightModeli was not bound."))(pname, param);
}

pub fn lightModeliv(pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glLightModeliv orelse @panic("glLightModeliv was not bound."))(pname, params);
}

pub fn lineStipple(factor: GLint, pattern: GLushort) void {
    return (function_pointers.glLineStipple orelse @panic("glLineStipple was not bound."))(factor, pattern);
}

pub fn materialf(face: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glMaterialf orelse @panic("glMaterialf was not bound."))(face, pname, param);
}

pub fn materialfv(face: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glMaterialfv orelse @panic("glMaterialfv was not bound."))(face, pname, params);
}

pub fn materiali(face: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glMateriali orelse @panic("glMateriali was not bound."))(face, pname, param);
}

pub fn materialiv(face: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glMaterialiv orelse @panic("glMaterialiv was not bound."))(face, pname, params);
}

pub fn polygonStipple(mask: [*:0]const GLubyte) void {
    return (function_pointers.glPolygonStipple orelse @panic("glPolygonStipple was not bound."))(mask);
}

pub fn shadeModel(mode: GLenum) void {
    return (function_pointers.glShadeModel orelse @panic("glShadeModel was not bound."))(mode);
}

pub fn texEnvf(target: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexEnvf orelse @panic("glTexEnvf was not bound."))(target, pname, param);
}

pub fn texEnvfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexEnvfv orelse @panic("glTexEnvfv was not bound."))(target, pname, params);
}

pub fn texEnvi(target: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexEnvi orelse @panic("glTexEnvi was not bound."))(target, pname, param);
}

pub fn texEnviv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexEnviv orelse @panic("glTexEnviv was not bound."))(target, pname, params);
}

pub fn texGend(coord: GLenum, pname: GLenum, param: GLdouble) void {
    return (function_pointers.glTexGend orelse @panic("glTexGend was not bound."))(coord, pname, param);
}

pub fn texGendv(coord: GLenum, pname: GLenum, params: [*c]const GLdouble) void {
    return (function_pointers.glTexGendv orelse @panic("glTexGendv was not bound."))(coord, pname, params);
}

pub fn texGenf(coord: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexGenf orelse @panic("glTexGenf was not bound."))(coord, pname, param);
}

pub fn texGenfv(coord: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexGenfv orelse @panic("glTexGenfv was not bound."))(coord, pname, params);
}

pub fn texGeni(coord: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexGeni orelse @panic("glTexGeni was not bound."))(coord, pname, param);
}

pub fn texGeniv(coord: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexGeniv orelse @panic("glTexGeniv was not bound."))(coord, pname, params);
}

pub fn feedbackBuffer(size: GLsizei, type: GLenum, buffer: [*c]GLfloat) void {
    return (function_pointers.glFeedbackBuffer orelse @panic("glFeedbackBuffer was not bound."))(size, type, buffer);
}

pub fn selectBuffer(size: GLsizei, buffer: [*c]GLuint) void {
    return (function_pointers.glSelectBuffer orelse @panic("glSelectBuffer was not bound."))(size, buffer);
}

pub fn renderMode(mode: GLenum) GLint {
    return (function_pointers.glRenderMode orelse @panic("glRenderMode was not bound."))(mode);
}

pub fn initNames() void {
    return (function_pointers.glInitNames orelse @panic("glInitNames was not bound."))();
}

pub fn loadName(name: GLuint) void {
    return (function_pointers.glLoadName orelse @panic("glLoadName was not bound."))(name);
}

pub fn passThrough(token: GLfloat) void {
    return (function_pointers.glPassThrough orelse @panic("glPassThrough was not bound."))(token);
}

pub fn popName() void {
    return (function_pointers.glPopName orelse @panic("glPopName was not bound."))();
}

pub fn pushName(name: GLuint) void {
    return (function_pointers.glPushName orelse @panic("glPushName was not bound."))(name);
}

pub fn clearAccum(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glClearAccum orelse @panic("glClearAccum was not bound."))(red, green, blue, alpha);
}

pub fn clearIndex(c: GLfloat) void {
    return (function_pointers.glClearIndex orelse @panic("glClearIndex was not bound."))(c);
}

pub fn indexMask(mask: GLuint) void {
    return (function_pointers.glIndexMask orelse @panic("glIndexMask was not bound."))(mask);
}

pub fn accum(op: GLenum, value: GLfloat) void {
    return (function_pointers.glAccum orelse @panic("glAccum was not bound."))(op, value);
}

pub fn popAttrib() void {
    return (function_pointers.glPopAttrib orelse @panic("glPopAttrib was not bound."))();
}

pub fn pushAttrib(mask: GLbitfield) void {
    return (function_pointers.glPushAttrib orelse @panic("glPushAttrib was not bound."))(mask);
}

pub fn map1d(target: GLenum, u1: GLdouble, u2: GLdouble, stride: GLint, order: GLint, points: [*c]const GLdouble) void {
    return (function_pointers.glMap1d orelse @panic("glMap1d was not bound."))(target, u1, u2, stride, order, points);
}

pub fn map1f(target: GLenum, u1: GLfloat, u2: GLfloat, stride: GLint, order: GLint, points: [*c]const GLfloat) void {
    return (function_pointers.glMap1f orelse @panic("glMap1f was not bound."))(target, u1, u2, stride, order, points);
}

pub fn map2d(target: GLenum, u1: GLdouble, u2: GLdouble, ustride: GLint, uorder: GLint, v1: GLdouble, v2: GLdouble, vstride: GLint, vorder: GLint, points: [*c]const GLdouble) void {
    return (function_pointers.glMap2d orelse @panic("glMap2d was not bound."))(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}

pub fn map2f(target: GLenum, u1: GLfloat, u2: GLfloat, ustride: GLint, uorder: GLint, v1: GLfloat, v2: GLfloat, vstride: GLint, vorder: GLint, points: [*c]const GLfloat) void {
    return (function_pointers.glMap2f orelse @panic("glMap2f was not bound."))(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}

pub fn mapGrid1d(un: GLint, u1: GLdouble, u2: GLdouble) void {
    return (function_pointers.glMapGrid1d orelse @panic("glMapGrid1d was not bound."))(un, u1, u2);
}

pub fn mapGrid1f(un: GLint, u1: GLfloat, u2: GLfloat) void {
    return (function_pointers.glMapGrid1f orelse @panic("glMapGrid1f was not bound."))(un, u1, u2);
}

pub fn mapGrid2d(un: GLint, u1: GLdouble, u2: GLdouble, vn: GLint, v1: GLdouble, v2: GLdouble) void {
    return (function_pointers.glMapGrid2d orelse @panic("glMapGrid2d was not bound."))(un, u1, u2, vn, v1, v2);
}

pub fn mapGrid2f(un: GLint, u1: GLfloat, u2: GLfloat, vn: GLint, v1: GLfloat, v2: GLfloat) void {
    return (function_pointers.glMapGrid2f orelse @panic("glMapGrid2f was not bound."))(un, u1, u2, vn, v1, v2);
}

pub fn evalCoord1d(u: GLdouble) void {
    return (function_pointers.glEvalCoord1d orelse @panic("glEvalCoord1d was not bound."))(u);
}

pub fn evalCoord1dv(u: [*c]const GLdouble) void {
    return (function_pointers.glEvalCoord1dv orelse @panic("glEvalCoord1dv was not bound."))(u);
}

pub fn evalCoord1f(u: GLfloat) void {
    return (function_pointers.glEvalCoord1f orelse @panic("glEvalCoord1f was not bound."))(u);
}

pub fn evalCoord1fv(u: [*c]const GLfloat) void {
    return (function_pointers.glEvalCoord1fv orelse @panic("glEvalCoord1fv was not bound."))(u);
}

pub fn evalCoord2d(u: GLdouble, v: GLdouble) void {
    return (function_pointers.glEvalCoord2d orelse @panic("glEvalCoord2d was not bound."))(u, v);
}

pub fn evalCoord2dv(u: [*c]const GLdouble) void {
    return (function_pointers.glEvalCoord2dv orelse @panic("glEvalCoord2dv was not bound."))(u);
}

pub fn evalCoord2f(u: GLfloat, v: GLfloat) void {
    return (function_pointers.glEvalCoord2f orelse @panic("glEvalCoord2f was not bound."))(u, v);
}

pub fn evalCoord2fv(u: [*c]const GLfloat) void {
    return (function_pointers.glEvalCoord2fv orelse @panic("glEvalCoord2fv was not bound."))(u);
}

pub fn evalMesh1(mode: GLenum, i1: GLint, i2: GLint) void {
    return (function_pointers.glEvalMesh1 orelse @panic("glEvalMesh1 was not bound."))(mode, i1, i2);
}

pub fn evalPoint1(i: GLint) void {
    return (function_pointers.glEvalPoint1 orelse @panic("glEvalPoint1 was not bound."))(i);
}

pub fn evalMesh2(mode: GLenum, i1: GLint, i2: GLint, j1: GLint, j2: GLint) void {
    return (function_pointers.glEvalMesh2 orelse @panic("glEvalMesh2 was not bound."))(mode, i1, i2, j1, j2);
}

pub fn evalPoint2(i: GLint, j: GLint) void {
    return (function_pointers.glEvalPoint2 orelse @panic("glEvalPoint2 was not bound."))(i, j);
}

pub fn alphaFunc(func: GLenum, ref: GLfloat) void {
    return (function_pointers.glAlphaFunc orelse @panic("glAlphaFunc was not bound."))(func, ref);
}

pub fn pixelZoom(xfactor: GLfloat, yfactor: GLfloat) void {
    return (function_pointers.glPixelZoom orelse @panic("glPixelZoom was not bound."))(xfactor, yfactor);
}

pub fn pixelTransferf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glPixelTransferf orelse @panic("glPixelTransferf was not bound."))(pname, param);
}

pub fn pixelTransferi(pname: GLenum, param: GLint) void {
    return (function_pointers.glPixelTransferi orelse @panic("glPixelTransferi was not bound."))(pname, param);
}

pub fn pixelMapfv(map: GLenum, mapsize: GLsizei, values: [*c]const GLfloat) void {
    return (function_pointers.glPixelMapfv orelse @panic("glPixelMapfv was not bound."))(map, mapsize, values);
}

pub fn pixelMapuiv(map: GLenum, mapsize: GLsizei, values: [*c]const GLuint) void {
    return (function_pointers.glPixelMapuiv orelse @panic("glPixelMapuiv was not bound."))(map, mapsize, values);
}

pub fn pixelMapusv(map: GLenum, mapsize: GLsizei, values: [*c]const GLushort) void {
    return (function_pointers.glPixelMapusv orelse @panic("glPixelMapusv was not bound."))(map, mapsize, values);
}

pub fn copyPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, type: GLenum) void {
    return (function_pointers.glCopyPixels orelse @panic("glCopyPixels was not bound."))(x, y, width, height, type);
}

pub fn drawPixels(width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glDrawPixels orelse @panic("glDrawPixels was not bound."))(width, height, format, type, pixels);
}

pub fn getClipPlane(plane: GLenum, equation: [*c]GLdouble) void {
    return (function_pointers.glGetClipPlane orelse @panic("glGetClipPlane was not bound."))(plane, equation);
}

pub fn getLightfv(light: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetLightfv orelse @panic("glGetLightfv was not bound."))(light, pname, params);
}

pub fn getLightiv(light: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetLightiv orelse @panic("glGetLightiv was not bound."))(light, pname, params);
}

pub fn getMapdv(target: GLenum, query: GLenum, v: [*c]GLdouble) void {
    return (function_pointers.glGetMapdv orelse @panic("glGetMapdv was not bound."))(target, query, v);
}

pub fn getMapfv(target: GLenum, query: GLenum, v: [*c]GLfloat) void {
    return (function_pointers.glGetMapfv orelse @panic("glGetMapfv was not bound."))(target, query, v);
}

pub fn getMapiv(target: GLenum, query: GLenum, v: [*c]GLint) void {
    return (function_pointers.glGetMapiv orelse @panic("glGetMapiv was not bound."))(target, query, v);
}

pub fn getMaterialfv(face: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetMaterialfv orelse @panic("glGetMaterialfv was not bound."))(face, pname, params);
}

pub fn getMaterialiv(face: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetMaterialiv orelse @panic("glGetMaterialiv was not bound."))(face, pname, params);
}

pub fn getPixelMapfv(map: GLenum, values: [*c]GLfloat) void {
    return (function_pointers.glGetPixelMapfv orelse @panic("glGetPixelMapfv was not bound."))(map, values);
}

pub fn getPixelMapuiv(map: GLenum, values: [*c]GLuint) void {
    return (function_pointers.glGetPixelMapuiv orelse @panic("glGetPixelMapuiv was not bound."))(map, values);
}

pub fn getPixelMapusv(map: GLenum, values: [*c]GLushort) void {
    return (function_pointers.glGetPixelMapusv orelse @panic("glGetPixelMapusv was not bound."))(map, values);
}

pub fn getPolygonStipple(mask: [*c]GLubyte) void {
    return (function_pointers.glGetPolygonStipple orelse @panic("glGetPolygonStipple was not bound."))(mask);
}

pub fn getTexEnvfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexEnvfv orelse @panic("glGetTexEnvfv was not bound."))(target, pname, params);
}

pub fn getTexEnviv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexEnviv orelse @panic("glGetTexEnviv was not bound."))(target, pname, params);
}

pub fn getTexGendv(coord: GLenum, pname: GLenum, params: [*c]GLdouble) void {
    return (function_pointers.glGetTexGendv orelse @panic("glGetTexGendv was not bound."))(coord, pname, params);
}

pub fn getTexGenfv(coord: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexGenfv orelse @panic("glGetTexGenfv was not bound."))(coord, pname, params);
}

pub fn getTexGeniv(coord: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexGeniv orelse @panic("glGetTexGeniv was not bound."))(coord, pname, params);
}

pub fn isList(list: GLuint) GLboolean {
    return (function_pointers.glIsList orelse @panic("glIsList was not bound."))(list);
}

pub fn frustum(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void {
    return (function_pointers.glFrustum orelse @panic("glFrustum was not bound."))(left, right, bottom, top, zNear, zFar);
}

pub fn loadIdentity() void {
    return (function_pointers.glLoadIdentity orelse @panic("glLoadIdentity was not bound."))();
}

pub fn loadMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glLoadMatrixf orelse @panic("glLoadMatrixf was not bound."))(m);
}

pub fn loadMatrixd(m: [*c]const GLdouble) void {
    return (function_pointers.glLoadMatrixd orelse @panic("glLoadMatrixd was not bound."))(m);
}

pub fn matrixMode(mode: GLenum) void {
    return (function_pointers.glMatrixMode orelse @panic("glMatrixMode was not bound."))(mode);
}

pub fn multMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glMultMatrixf orelse @panic("glMultMatrixf was not bound."))(m);
}

pub fn multMatrixd(m: [*c]const GLdouble) void {
    return (function_pointers.glMultMatrixd orelse @panic("glMultMatrixd was not bound."))(m);
}

pub fn ortho(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void {
    return (function_pointers.glOrtho orelse @panic("glOrtho was not bound."))(left, right, bottom, top, zNear, zFar);
}

pub fn popMatrix() void {
    return (function_pointers.glPopMatrix orelse @panic("glPopMatrix was not bound."))();
}

pub fn pushMatrix() void {
    return (function_pointers.glPushMatrix orelse @panic("glPushMatrix was not bound."))();
}

pub fn rotated(angle: GLdouble, x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glRotated orelse @panic("glRotated was not bound."))(angle, x, y, z);
}

pub fn rotatef(angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glRotatef orelse @panic("glRotatef was not bound."))(angle, x, y, z);
}

pub fn scaled(x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glScaled orelse @panic("glScaled was not bound."))(x, y, z);
}

pub fn scalef(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glScalef orelse @panic("glScalef was not bound."))(x, y, z);
}

pub fn translated(x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glTranslated orelse @panic("glTranslated was not bound."))(x, y, z);
}

pub fn translatef(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glTranslatef orelse @panic("glTranslatef was not bound."))(x, y, z);
}

pub fn drawArrays(mode: GLenum, first: GLint, count: GLsizei) void {
    return (function_pointers.glDrawArrays orelse @panic("glDrawArrays was not bound."))(mode, first, count);
}

pub fn drawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(mode, count, type, indices);
}

pub fn getPointerv(pname: GLenum, params: **c_void) void {
    return (function_pointers.glGetPointerv orelse @panic("glGetPointerv was not bound."))(pname, params);
}

pub fn polygonOffset(factor: GLfloat, units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(factor, units);
}

pub fn copyTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) void {
    return (function_pointers.glCopyTexImage1D orelse @panic("glCopyTexImage1D was not bound."))(target, level, internalformat, x, y, width, border);
}

pub fn copyTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void {
    return (function_pointers.glCopyTexImage2D orelse @panic("glCopyTexImage2D was not bound."))(target, level, internalformat, x, y, width, height, border);
}

pub fn copyTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) void {
    return (function_pointers.glCopyTexSubImage1D orelse @panic("glCopyTexSubImage1D was not bound."))(target, level, xoffset, x, y, width);
}

pub fn copyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage2D orelse @panic("glCopyTexSubImage2D was not bound."))(target, level, xoffset, yoffset, x, y, width, height);
}

pub fn texSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexSubImage1D orelse @panic("glTexSubImage1D was not bound."))(target, level, xoffset, width, format, type, pixels);
}

pub fn texSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, type, pixels);
}

pub fn bindTexture(target: GLenum, texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(target, texture);
}

pub fn deleteTextures(n: GLsizei, textures: [*c]const GLuint) void {
    return (function_pointers.glDeleteTextures orelse @panic("glDeleteTextures was not bound."))(n, textures);
}

pub fn genTextures(n: GLsizei, textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(n, textures);
}

pub fn isTexture(texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(texture);
}

pub fn arrayElement(i: GLint) void {
    return (function_pointers.glArrayElement orelse @panic("glArrayElement was not bound."))(i);
}

pub fn colorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glColorPointer orelse @panic("glColorPointer was not bound."))(size, type, stride, pointer);
}

pub fn disableClientState(array: GLenum) void {
    return (function_pointers.glDisableClientState orelse @panic("glDisableClientState was not bound."))(array);
}

pub fn edgeFlagPointer(stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glEdgeFlagPointer orelse @panic("glEdgeFlagPointer was not bound."))(stride, pointer);
}

pub fn enableClientState(array: GLenum) void {
    return (function_pointers.glEnableClientState orelse @panic("glEnableClientState was not bound."))(array);
}

pub fn indexPointer(type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glIndexPointer orelse @panic("glIndexPointer was not bound."))(type, stride, pointer);
}

pub fn interleavedArrays(format: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glInterleavedArrays orelse @panic("glInterleavedArrays was not bound."))(format, stride, pointer);
}

pub fn normalPointer(type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glNormalPointer orelse @panic("glNormalPointer was not bound."))(type, stride, pointer);
}

pub fn texCoordPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glTexCoordPointer orelse @panic("glTexCoordPointer was not bound."))(size, type, stride, pointer);
}

pub fn vertexPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glVertexPointer orelse @panic("glVertexPointer was not bound."))(size, type, stride, pointer);
}

pub fn areTexturesResident(n: GLsizei, textures: [*c]const GLuint, residences: [*c]GLboolean) GLboolean {
    return (function_pointers.glAreTexturesResident orelse @panic("glAreTexturesResident was not bound."))(n, textures, residences);
}

pub fn prioritizeTextures(n: GLsizei, textures: [*c]const GLuint, priorities: [*c]const GLfloat) void {
    return (function_pointers.glPrioritizeTextures orelse @panic("glPrioritizeTextures was not bound."))(n, textures, priorities);
}

pub fn indexub(c: GLubyte) void {
    return (function_pointers.glIndexub orelse @panic("glIndexub was not bound."))(c);
}

pub fn indexubv(c: [*:0]const GLubyte) void {
    return (function_pointers.glIndexubv orelse @panic("glIndexubv was not bound."))(c);
}

pub fn popClientAttrib() void {
    return (function_pointers.glPopClientAttrib orelse @panic("glPopClientAttrib was not bound."))();
}

pub fn pushClientAttrib(mask: GLbitfield) void {
    return (function_pointers.glPushClientAttrib orelse @panic("glPushClientAttrib was not bound."))(mask);
}

pub fn drawRangeElements(mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, type: GLenum, indices: *const c_void) void {
    return (function_pointers.glDrawRangeElements orelse @panic("glDrawRangeElements was not bound."))(mode, start, end, count, type, indices);
}

pub fn texImage3D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexImage3D orelse @panic("glTexImage3D was not bound."))(target, level, internalformat, width, height, depth, border, format, type, pixels);
}

pub fn texSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexSubImage3D orelse @panic("glTexSubImage3D was not bound."))(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}

pub fn copyTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage3D orelse @panic("glCopyTexSubImage3D was not bound."))(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}

pub fn activeTexture(texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(texture);
}

pub fn sampleCoverage(value: GLfloat, invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(value, invert);
}

pub fn compressedTexImage3D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexImage3D orelse @panic("glCompressedTexImage3D was not bound."))(target, level, internalformat, width, height, depth, border, imageSize, data);
}

pub fn compressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(target, level, internalformat, width, height, border, imageSize, data);
}

pub fn compressedTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexImage1D orelse @panic("glCompressedTexImage1D was not bound."))(target, level, internalformat, width, border, imageSize, data);
}

pub fn compressedTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexSubImage3D orelse @panic("glCompressedTexSubImage3D was not bound."))(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}

pub fn compressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}

pub fn compressedTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexSubImage1D orelse @panic("glCompressedTexSubImage1D was not bound."))(target, level, xoffset, width, format, imageSize, data);
}

pub fn getCompressedTexImage(target: GLenum, level: GLint, img: *c_void) void {
    return (function_pointers.glGetCompressedTexImage orelse @panic("glGetCompressedTexImage was not bound."))(target, level, img);
}

pub fn clientActiveTexture(texture: GLenum) void {
    return (function_pointers.glClientActiveTexture orelse @panic("glClientActiveTexture was not bound."))(texture);
}

pub fn multiTexCoord1d(target: GLenum, s: GLdouble) void {
    return (function_pointers.glMultiTexCoord1d orelse @panic("glMultiTexCoord1d was not bound."))(target, s);
}

pub fn multiTexCoord1dv(target: GLenum, v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord1dv orelse @panic("glMultiTexCoord1dv was not bound."))(target, v);
}

pub fn multiTexCoord1f(target: GLenum, s: GLfloat) void {
    return (function_pointers.glMultiTexCoord1f orelse @panic("glMultiTexCoord1f was not bound."))(target, s);
}

pub fn multiTexCoord1fv(target: GLenum, v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord1fv orelse @panic("glMultiTexCoord1fv was not bound."))(target, v);
}

pub fn multiTexCoord1i(target: GLenum, s: GLint) void {
    return (function_pointers.glMultiTexCoord1i orelse @panic("glMultiTexCoord1i was not bound."))(target, s);
}

pub fn multiTexCoord1iv(target: GLenum, v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord1iv orelse @panic("glMultiTexCoord1iv was not bound."))(target, v);
}

pub fn multiTexCoord1s(target: GLenum, s: GLshort) void {
    return (function_pointers.glMultiTexCoord1s orelse @panic("glMultiTexCoord1s was not bound."))(target, s);
}

pub fn multiTexCoord1sv(target: GLenum, v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord1sv orelse @panic("glMultiTexCoord1sv was not bound."))(target, v);
}

pub fn multiTexCoord2d(target: GLenum, s: GLdouble, t: GLdouble) void {
    return (function_pointers.glMultiTexCoord2d orelse @panic("glMultiTexCoord2d was not bound."))(target, s, t);
}

pub fn multiTexCoord2dv(target: GLenum, v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord2dv orelse @panic("glMultiTexCoord2dv was not bound."))(target, v);
}

pub fn multiTexCoord2f(target: GLenum, s: GLfloat, t: GLfloat) void {
    return (function_pointers.glMultiTexCoord2f orelse @panic("glMultiTexCoord2f was not bound."))(target, s, t);
}

pub fn multiTexCoord2fv(target: GLenum, v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord2fv orelse @panic("glMultiTexCoord2fv was not bound."))(target, v);
}

pub fn multiTexCoord2i(target: GLenum, s: GLint, t: GLint) void {
    return (function_pointers.glMultiTexCoord2i orelse @panic("glMultiTexCoord2i was not bound."))(target, s, t);
}

pub fn multiTexCoord2iv(target: GLenum, v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord2iv orelse @panic("glMultiTexCoord2iv was not bound."))(target, v);
}

pub fn multiTexCoord2s(target: GLenum, s: GLshort, t: GLshort) void {
    return (function_pointers.glMultiTexCoord2s orelse @panic("glMultiTexCoord2s was not bound."))(target, s, t);
}

pub fn multiTexCoord2sv(target: GLenum, v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord2sv orelse @panic("glMultiTexCoord2sv was not bound."))(target, v);
}

pub fn multiTexCoord3d(target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble) void {
    return (function_pointers.glMultiTexCoord3d orelse @panic("glMultiTexCoord3d was not bound."))(target, s, t, r);
}

pub fn multiTexCoord3dv(target: GLenum, v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord3dv orelse @panic("glMultiTexCoord3dv was not bound."))(target, v);
}

pub fn multiTexCoord3f(target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat) void {
    return (function_pointers.glMultiTexCoord3f orelse @panic("glMultiTexCoord3f was not bound."))(target, s, t, r);
}

pub fn multiTexCoord3fv(target: GLenum, v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord3fv orelse @panic("glMultiTexCoord3fv was not bound."))(target, v);
}

pub fn multiTexCoord3i(target: GLenum, s: GLint, t: GLint, r: GLint) void {
    return (function_pointers.glMultiTexCoord3i orelse @panic("glMultiTexCoord3i was not bound."))(target, s, t, r);
}

pub fn multiTexCoord3iv(target: GLenum, v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord3iv orelse @panic("glMultiTexCoord3iv was not bound."))(target, v);
}

pub fn multiTexCoord3s(target: GLenum, s: GLshort, t: GLshort, r: GLshort) void {
    return (function_pointers.glMultiTexCoord3s orelse @panic("glMultiTexCoord3s was not bound."))(target, s, t, r);
}

pub fn multiTexCoord3sv(target: GLenum, v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord3sv orelse @panic("glMultiTexCoord3sv was not bound."))(target, v);
}

pub fn multiTexCoord4d(target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void {
    return (function_pointers.glMultiTexCoord4d orelse @panic("glMultiTexCoord4d was not bound."))(target, s, t, r, q);
}

pub fn multiTexCoord4dv(target: GLenum, v: [*c]const GLdouble) void {
    return (function_pointers.glMultiTexCoord4dv orelse @panic("glMultiTexCoord4dv was not bound."))(target, v);
}

pub fn multiTexCoord4f(target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void {
    return (function_pointers.glMultiTexCoord4f orelse @panic("glMultiTexCoord4f was not bound."))(target, s, t, r, q);
}

pub fn multiTexCoord4fv(target: GLenum, v: [*c]const GLfloat) void {
    return (function_pointers.glMultiTexCoord4fv orelse @panic("glMultiTexCoord4fv was not bound."))(target, v);
}

pub fn multiTexCoord4i(target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) void {
    return (function_pointers.glMultiTexCoord4i orelse @panic("glMultiTexCoord4i was not bound."))(target, s, t, r, q);
}

pub fn multiTexCoord4iv(target: GLenum, v: [*c]const GLint) void {
    return (function_pointers.glMultiTexCoord4iv orelse @panic("glMultiTexCoord4iv was not bound."))(target, v);
}

pub fn multiTexCoord4s(target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) void {
    return (function_pointers.glMultiTexCoord4s orelse @panic("glMultiTexCoord4s was not bound."))(target, s, t, r, q);
}

pub fn multiTexCoord4sv(target: GLenum, v: [*c]const GLshort) void {
    return (function_pointers.glMultiTexCoord4sv orelse @panic("glMultiTexCoord4sv was not bound."))(target, v);
}

pub fn loadTransposeMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glLoadTransposeMatrixf orelse @panic("glLoadTransposeMatrixf was not bound."))(m);
}

pub fn loadTransposeMatrixd(m: [*c]const GLdouble) void {
    return (function_pointers.glLoadTransposeMatrixd orelse @panic("glLoadTransposeMatrixd was not bound."))(m);
}

pub fn multTransposeMatrixf(m: [*c]const GLfloat) void {
    return (function_pointers.glMultTransposeMatrixf orelse @panic("glMultTransposeMatrixf was not bound."))(m);
}

pub fn multTransposeMatrixd(m: [*c]const GLdouble) void {
    return (function_pointers.glMultTransposeMatrixd orelse @panic("glMultTransposeMatrixd was not bound."))(m);
}

pub fn blendFuncSeparate(sfactorRGB: GLenum, dfactorRGB: GLenum, sfactorAlpha: GLenum, dfactorAlpha: GLenum) void {
    return (function_pointers.glBlendFuncSeparate orelse @panic("glBlendFuncSeparate was not bound."))(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}

pub fn multiDrawArrays(mode: GLenum, first: [*c]const GLint, count: [*c]const GLsizei, drawcount: GLsizei) void {
    return (function_pointers.glMultiDrawArrays orelse @panic("glMultiDrawArrays was not bound."))(mode, first, count, drawcount);
}

pub fn multiDrawElements(mode: GLenum, count: [*c]const GLsizei, type: GLenum, indices: [*c]const *const c_void, drawcount: GLsizei) void {
    return (function_pointers.glMultiDrawElements orelse @panic("glMultiDrawElements was not bound."))(mode, count, type, indices, drawcount);
}

pub fn pointParameterf(pname: GLenum, param: GLfloat) void {
    return (function_pointers.glPointParameterf orelse @panic("glPointParameterf was not bound."))(pname, param);
}

pub fn pointParameterfv(pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glPointParameterfv orelse @panic("glPointParameterfv was not bound."))(pname, params);
}

pub fn pointParameteri(pname: GLenum, param: GLint) void {
    return (function_pointers.glPointParameteri orelse @panic("glPointParameteri was not bound."))(pname, param);
}

pub fn pointParameteriv(pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glPointParameteriv orelse @panic("glPointParameteriv was not bound."))(pname, params);
}

pub fn fogCoordf(coord: GLfloat) void {
    return (function_pointers.glFogCoordf orelse @panic("glFogCoordf was not bound."))(coord);
}

pub fn fogCoordfv(coord: [*c]const GLfloat) void {
    return (function_pointers.glFogCoordfv orelse @panic("glFogCoordfv was not bound."))(coord);
}

pub fn fogCoordd(coord: GLdouble) void {
    return (function_pointers.glFogCoordd orelse @panic("glFogCoordd was not bound."))(coord);
}

pub fn fogCoorddv(coord: [*c]const GLdouble) void {
    return (function_pointers.glFogCoorddv orelse @panic("glFogCoorddv was not bound."))(coord);
}

pub fn fogCoordPointer(type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glFogCoordPointer orelse @panic("glFogCoordPointer was not bound."))(type, stride, pointer);
}

pub fn secondaryColor3b(red: GLbyte, green: GLbyte, blue: GLbyte) void {
    return (function_pointers.glSecondaryColor3b orelse @panic("glSecondaryColor3b was not bound."))(red, green, blue);
}

pub fn secondaryColor3bv(v: [*c]const GLbyte) void {
    return (function_pointers.glSecondaryColor3bv orelse @panic("glSecondaryColor3bv was not bound."))(v);
}

pub fn secondaryColor3d(red: GLdouble, green: GLdouble, blue: GLdouble) void {
    return (function_pointers.glSecondaryColor3d orelse @panic("glSecondaryColor3d was not bound."))(red, green, blue);
}

pub fn secondaryColor3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glSecondaryColor3dv orelse @panic("glSecondaryColor3dv was not bound."))(v);
}

pub fn secondaryColor3f(red: GLfloat, green: GLfloat, blue: GLfloat) void {
    return (function_pointers.glSecondaryColor3f orelse @panic("glSecondaryColor3f was not bound."))(red, green, blue);
}

pub fn secondaryColor3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glSecondaryColor3fv orelse @panic("glSecondaryColor3fv was not bound."))(v);
}

pub fn secondaryColor3i(red: GLint, green: GLint, blue: GLint) void {
    return (function_pointers.glSecondaryColor3i orelse @panic("glSecondaryColor3i was not bound."))(red, green, blue);
}

pub fn secondaryColor3iv(v: [*c]const GLint) void {
    return (function_pointers.glSecondaryColor3iv orelse @panic("glSecondaryColor3iv was not bound."))(v);
}

pub fn secondaryColor3s(red: GLshort, green: GLshort, blue: GLshort) void {
    return (function_pointers.glSecondaryColor3s orelse @panic("glSecondaryColor3s was not bound."))(red, green, blue);
}

pub fn secondaryColor3sv(v: [*c]const GLshort) void {
    return (function_pointers.glSecondaryColor3sv orelse @panic("glSecondaryColor3sv was not bound."))(v);
}

pub fn secondaryColor3ub(red: GLubyte, green: GLubyte, blue: GLubyte) void {
    return (function_pointers.glSecondaryColor3ub orelse @panic("glSecondaryColor3ub was not bound."))(red, green, blue);
}

pub fn secondaryColor3ubv(v: [*:0]const GLubyte) void {
    return (function_pointers.glSecondaryColor3ubv orelse @panic("glSecondaryColor3ubv was not bound."))(v);
}

pub fn secondaryColor3ui(red: GLuint, green: GLuint, blue: GLuint) void {
    return (function_pointers.glSecondaryColor3ui orelse @panic("glSecondaryColor3ui was not bound."))(red, green, blue);
}

pub fn secondaryColor3uiv(v: [*c]const GLuint) void {
    return (function_pointers.glSecondaryColor3uiv orelse @panic("glSecondaryColor3uiv was not bound."))(v);
}

pub fn secondaryColor3us(red: GLushort, green: GLushort, blue: GLushort) void {
    return (function_pointers.glSecondaryColor3us orelse @panic("glSecondaryColor3us was not bound."))(red, green, blue);
}

pub fn secondaryColor3usv(v: [*c]const GLushort) void {
    return (function_pointers.glSecondaryColor3usv orelse @panic("glSecondaryColor3usv was not bound."))(v);
}

pub fn secondaryColorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glSecondaryColorPointer orelse @panic("glSecondaryColorPointer was not bound."))(size, type, stride, pointer);
}

pub fn windowPos2d(x: GLdouble, y: GLdouble) void {
    return (function_pointers.glWindowPos2d orelse @panic("glWindowPos2d was not bound."))(x, y);
}

pub fn windowPos2dv(v: [*c]const GLdouble) void {
    return (function_pointers.glWindowPos2dv orelse @panic("glWindowPos2dv was not bound."))(v);
}

pub fn windowPos2f(x: GLfloat, y: GLfloat) void {
    return (function_pointers.glWindowPos2f orelse @panic("glWindowPos2f was not bound."))(x, y);
}

pub fn windowPos2fv(v: [*c]const GLfloat) void {
    return (function_pointers.glWindowPos2fv orelse @panic("glWindowPos2fv was not bound."))(v);
}

pub fn windowPos2i(x: GLint, y: GLint) void {
    return (function_pointers.glWindowPos2i orelse @panic("glWindowPos2i was not bound."))(x, y);
}

pub fn windowPos2iv(v: [*c]const GLint) void {
    return (function_pointers.glWindowPos2iv orelse @panic("glWindowPos2iv was not bound."))(v);
}

pub fn windowPos2s(x: GLshort, y: GLshort) void {
    return (function_pointers.glWindowPos2s orelse @panic("glWindowPos2s was not bound."))(x, y);
}

pub fn windowPos2sv(v: [*c]const GLshort) void {
    return (function_pointers.glWindowPos2sv orelse @panic("glWindowPos2sv was not bound."))(v);
}

pub fn windowPos3d(x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glWindowPos3d orelse @panic("glWindowPos3d was not bound."))(x, y, z);
}

pub fn windowPos3dv(v: [*c]const GLdouble) void {
    return (function_pointers.glWindowPos3dv orelse @panic("glWindowPos3dv was not bound."))(v);
}

pub fn windowPos3f(x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glWindowPos3f orelse @panic("glWindowPos3f was not bound."))(x, y, z);
}

pub fn windowPos3fv(v: [*c]const GLfloat) void {
    return (function_pointers.glWindowPos3fv orelse @panic("glWindowPos3fv was not bound."))(v);
}

pub fn windowPos3i(x: GLint, y: GLint, z: GLint) void {
    return (function_pointers.glWindowPos3i orelse @panic("glWindowPos3i was not bound."))(x, y, z);
}

pub fn windowPos3iv(v: [*c]const GLint) void {
    return (function_pointers.glWindowPos3iv orelse @panic("glWindowPos3iv was not bound."))(v);
}

pub fn windowPos3s(x: GLshort, y: GLshort, z: GLshort) void {
    return (function_pointers.glWindowPos3s orelse @panic("glWindowPos3s was not bound."))(x, y, z);
}

pub fn windowPos3sv(v: [*c]const GLshort) void {
    return (function_pointers.glWindowPos3sv orelse @panic("glWindowPos3sv was not bound."))(v);
}

pub fn blendColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glBlendColor orelse @panic("glBlendColor was not bound."))(red, green, blue, alpha);
}

pub fn blendEquation(mode: GLenum) void {
    return (function_pointers.glBlendEquation orelse @panic("glBlendEquation was not bound."))(mode);
}

pub fn genQueries(n: GLsizei, ids: [*c]GLuint) void {
    return (function_pointers.glGenQueries orelse @panic("glGenQueries was not bound."))(n, ids);
}

pub fn deleteQueries(n: GLsizei, ids: [*c]const GLuint) void {
    return (function_pointers.glDeleteQueries orelse @panic("glDeleteQueries was not bound."))(n, ids);
}

pub fn isQuery(id: GLuint) GLboolean {
    return (function_pointers.glIsQuery orelse @panic("glIsQuery was not bound."))(id);
}

pub fn beginQuery(target: GLenum, id: GLuint) void {
    return (function_pointers.glBeginQuery orelse @panic("glBeginQuery was not bound."))(target, id);
}

pub fn endQuery(target: GLenum) void {
    return (function_pointers.glEndQuery orelse @panic("glEndQuery was not bound."))(target);
}

pub fn getQueryiv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetQueryiv orelse @panic("glGetQueryiv was not bound."))(target, pname, params);
}

pub fn getQueryObjectiv(id: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetQueryObjectiv orelse @panic("glGetQueryObjectiv was not bound."))(id, pname, params);
}

pub fn getQueryObjectuiv(id: GLuint, pname: GLenum, params: [*c]GLuint) void {
    return (function_pointers.glGetQueryObjectuiv orelse @panic("glGetQueryObjectuiv was not bound."))(id, pname, params);
}

pub fn bindBuffer(target: GLenum, buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(target, buffer);
}

pub fn deleteBuffers(n: GLsizei, buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(n, buffers);
}

pub fn genBuffers(n: GLsizei, buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(n, buffers);
}

pub fn isBuffer(buffer: GLuint) GLboolean {
    return (function_pointers.glIsBuffer orelse @panic("glIsBuffer was not bound."))(buffer);
}

pub fn bufferData(target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(target, size, data, usage);
}

pub fn bufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(target, offset, size, data);
}

pub fn getBufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *c_void) void {
    return (function_pointers.glGetBufferSubData orelse @panic("glGetBufferSubData was not bound."))(target, offset, size, data);
}

pub fn mapBuffer(target: GLenum, access: GLenum) *c_void {
    return (function_pointers.glMapBuffer orelse @panic("glMapBuffer was not bound."))(target, access);
}

pub fn unmapBuffer(target: GLenum) GLboolean {
    return (function_pointers.glUnmapBuffer orelse @panic("glUnmapBuffer was not bound."))(target);
}

pub fn getBufferParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(target, pname, params);
}

pub fn getBufferPointerv(target: GLenum, pname: GLenum, params: **c_void) void {
    return (function_pointers.glGetBufferPointerv orelse @panic("glGetBufferPointerv was not bound."))(target, pname, params);
}

pub fn blendEquationSeparate(modeRGB: GLenum, modeAlpha: GLenum) void {
    return (function_pointers.glBlendEquationSeparate orelse @panic("glBlendEquationSeparate was not bound."))(modeRGB, modeAlpha);
}

pub fn drawBuffers(n: GLsizei, bufs: [*c]const GLenum) void {
    return (function_pointers.glDrawBuffers orelse @panic("glDrawBuffers was not bound."))(n, bufs);
}

pub fn stencilOpSeparate(face: GLenum, sfail: GLenum, dpfail: GLenum, dppass: GLenum) void {
    return (function_pointers.glStencilOpSeparate orelse @panic("glStencilOpSeparate was not bound."))(face, sfail, dpfail, dppass);
}

pub fn stencilFuncSeparate(face: GLenum, func: GLenum, ref: GLint, mask: GLuint) void {
    return (function_pointers.glStencilFuncSeparate orelse @panic("glStencilFuncSeparate was not bound."))(face, func, ref, mask);
}

pub fn stencilMaskSeparate(face: GLenum, mask: GLuint) void {
    return (function_pointers.glStencilMaskSeparate orelse @panic("glStencilMaskSeparate was not bound."))(face, mask);
}

pub fn attachShader(program: GLuint, shader: GLuint) void {
    return (function_pointers.glAttachShader orelse @panic("glAttachShader was not bound."))(program, shader);
}

pub fn bindAttribLocation(program: GLuint, index: GLuint, name: [*c]const GLchar) void {
    return (function_pointers.glBindAttribLocation orelse @panic("glBindAttribLocation was not bound."))(program, index, name);
}

pub fn compileShader(shader: GLuint) void {
    return (function_pointers.glCompileShader orelse @panic("glCompileShader was not bound."))(shader);
}

pub fn createProgram() GLuint {
    return (function_pointers.glCreateProgram orelse @panic("glCreateProgram was not bound."))();
}

pub fn createShader(type: GLenum) GLuint {
    return (function_pointers.glCreateShader orelse @panic("glCreateShader was not bound."))(type);
}

pub fn deleteProgram(program: GLuint) void {
    return (function_pointers.glDeleteProgram orelse @panic("glDeleteProgram was not bound."))(program);
}

pub fn deleteShader(shader: GLuint) void {
    return (function_pointers.glDeleteShader orelse @panic("glDeleteShader was not bound."))(shader);
}

pub fn detachShader(program: GLuint, shader: GLuint) void {
    return (function_pointers.glDetachShader orelse @panic("glDetachShader was not bound."))(program, shader);
}

pub fn disableVertexAttribArray(index: GLuint) void {
    return (function_pointers.glDisableVertexAttribArray orelse @panic("glDisableVertexAttribArray was not bound."))(index);
}

pub fn enableVertexAttribArray(index: GLuint) void {
    return (function_pointers.glEnableVertexAttribArray orelse @panic("glEnableVertexAttribArray was not bound."))(index);
}

pub fn getActiveAttrib(program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void {
    return (function_pointers.glGetActiveAttrib orelse @panic("glGetActiveAttrib was not bound."))(program, index, bufSize, length, size, type, name);
}

pub fn getActiveUniform(program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniform orelse @panic("glGetActiveUniform was not bound."))(program, index, bufSize, length, size, type, name);
}

pub fn getAttachedShaders(program: GLuint, maxCount: GLsizei, count: [*c]GLsizei, shaders: [*c]GLuint) void {
    return (function_pointers.glGetAttachedShaders orelse @panic("glGetAttachedShaders was not bound."))(program, maxCount, count, shaders);
}

pub fn getAttribLocation(program: GLuint, name: [*c]const GLchar) GLint {
    return (function_pointers.glGetAttribLocation orelse @panic("glGetAttribLocation was not bound."))(program, name);
}

pub fn getProgramiv(program: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetProgramiv orelse @panic("glGetProgramiv was not bound."))(program, pname, params);
}

pub fn getProgramInfoLog(program: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void {
    return (function_pointers.glGetProgramInfoLog orelse @panic("glGetProgramInfoLog was not bound."))(program, bufSize, length, infoLog);
}

pub fn getShaderiv(shader: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetShaderiv orelse @panic("glGetShaderiv was not bound."))(shader, pname, params);
}

pub fn getShaderInfoLog(shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void {
    return (function_pointers.glGetShaderInfoLog orelse @panic("glGetShaderInfoLog was not bound."))(shader, bufSize, length, infoLog);
}

pub fn getShaderSource(shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, source: [*c]GLchar) void {
    return (function_pointers.glGetShaderSource orelse @panic("glGetShaderSource was not bound."))(shader, bufSize, length, source);
}

pub fn getUniformLocation(program: GLuint, name: [*c]const GLchar) GLint {
    return (function_pointers.glGetUniformLocation orelse @panic("glGetUniformLocation was not bound."))(program, name);
}

pub fn getUniformfv(program: GLuint, location: GLint, params: [*c]GLfloat) void {
    return (function_pointers.glGetUniformfv orelse @panic("glGetUniformfv was not bound."))(program, location, params);
}

pub fn getUniformiv(program: GLuint, location: GLint, params: [*c]GLint) void {
    return (function_pointers.glGetUniformiv orelse @panic("glGetUniformiv was not bound."))(program, location, params);
}

pub fn getVertexAttribdv(index: GLuint, pname: GLenum, params: [*c]GLdouble) void {
    return (function_pointers.glGetVertexAttribdv orelse @panic("glGetVertexAttribdv was not bound."))(index, pname, params);
}

pub fn getVertexAttribfv(index: GLuint, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetVertexAttribfv orelse @panic("glGetVertexAttribfv was not bound."))(index, pname, params);
}

pub fn getVertexAttribiv(index: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribiv orelse @panic("glGetVertexAttribiv was not bound."))(index, pname, params);
}

pub fn getVertexAttribPointerv(index: GLuint, pname: GLenum, pointer: **c_void) void {
    return (function_pointers.glGetVertexAttribPointerv orelse @panic("glGetVertexAttribPointerv was not bound."))(index, pname, pointer);
}

pub fn isProgram(program: GLuint) GLboolean {
    return (function_pointers.glIsProgram orelse @panic("glIsProgram was not bound."))(program);
}

pub fn isShader(shader: GLuint) GLboolean {
    return (function_pointers.glIsShader orelse @panic("glIsShader was not bound."))(shader);
}

pub fn linkProgram(program: GLuint) void {
    return (function_pointers.glLinkProgram orelse @panic("glLinkProgram was not bound."))(program);
}

pub fn shaderSource(shader: GLuint, count: GLsizei, string: [*c]const [*c]const GLchar, length: [*c]const GLint) void {
    return (function_pointers.glShaderSource orelse @panic("glShaderSource was not bound."))(shader, count, string, length);
}

pub fn useProgram(program: GLuint) void {
    return (function_pointers.glUseProgram orelse @panic("glUseProgram was not bound."))(program);
}

pub fn uniform1f(location: GLint, v0: GLfloat) void {
    return (function_pointers.glUniform1f orelse @panic("glUniform1f was not bound."))(location, v0);
}

pub fn uniform2f(location: GLint, v0: GLfloat, v1: GLfloat) void {
    return (function_pointers.glUniform2f orelse @panic("glUniform2f was not bound."))(location, v0, v1);
}

pub fn uniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void {
    return (function_pointers.glUniform3f orelse @panic("glUniform3f was not bound."))(location, v0, v1, v2);
}

pub fn uniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void {
    return (function_pointers.glUniform4f orelse @panic("glUniform4f was not bound."))(location, v0, v1, v2, v3);
}

pub fn uniform1i(location: GLint, v0: GLint) void {
    return (function_pointers.glUniform1i orelse @panic("glUniform1i was not bound."))(location, v0);
}

pub fn uniform2i(location: GLint, v0: GLint, v1: GLint) void {
    return (function_pointers.glUniform2i orelse @panic("glUniform2i was not bound."))(location, v0, v1);
}

pub fn uniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint) void {
    return (function_pointers.glUniform3i orelse @panic("glUniform3i was not bound."))(location, v0, v1, v2);
}

pub fn uniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void {
    return (function_pointers.glUniform4i orelse @panic("glUniform4i was not bound."))(location, v0, v1, v2, v3);
}

pub fn uniform1fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform1fv orelse @panic("glUniform1fv was not bound."))(location, count, value);
}

pub fn uniform2fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform2fv orelse @panic("glUniform2fv was not bound."))(location, count, value);
}

pub fn uniform3fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform3fv orelse @panic("glUniform3fv was not bound."))(location, count, value);
}

pub fn uniform4fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform4fv orelse @panic("glUniform4fv was not bound."))(location, count, value);
}

pub fn uniform1iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform1iv orelse @panic("glUniform1iv was not bound."))(location, count, value);
}

pub fn uniform2iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform2iv orelse @panic("glUniform2iv was not bound."))(location, count, value);
}

pub fn uniform3iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform3iv orelse @panic("glUniform3iv was not bound."))(location, count, value);
}

pub fn uniform4iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform4iv orelse @panic("glUniform4iv was not bound."))(location, count, value);
}

pub fn uniformMatrix2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2fv orelse @panic("glUniformMatrix2fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3fv orelse @panic("glUniformMatrix3fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4fv orelse @panic("glUniformMatrix4fv was not bound."))(location, count, transpose, value);
}

pub fn validateProgram(program: GLuint) void {
    return (function_pointers.glValidateProgram orelse @panic("glValidateProgram was not bound."))(program);
}

pub fn vertexAttrib1d(index: GLuint, x: GLdouble) void {
    return (function_pointers.glVertexAttrib1d orelse @panic("glVertexAttrib1d was not bound."))(index, x);
}

pub fn vertexAttrib1dv(index: GLuint, v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib1dv orelse @panic("glVertexAttrib1dv was not bound."))(index, v);
}

pub fn vertexAttrib1f(index: GLuint, x: GLfloat) void {
    return (function_pointers.glVertexAttrib1f orelse @panic("glVertexAttrib1f was not bound."))(index, x);
}

pub fn vertexAttrib1fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib1fv orelse @panic("glVertexAttrib1fv was not bound."))(index, v);
}

pub fn vertexAttrib1s(index: GLuint, x: GLshort) void {
    return (function_pointers.glVertexAttrib1s orelse @panic("glVertexAttrib1s was not bound."))(index, x);
}

pub fn vertexAttrib1sv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib1sv orelse @panic("glVertexAttrib1sv was not bound."))(index, v);
}

pub fn vertexAttrib2d(index: GLuint, x: GLdouble, y: GLdouble) void {
    return (function_pointers.glVertexAttrib2d orelse @panic("glVertexAttrib2d was not bound."))(index, x, y);
}

pub fn vertexAttrib2dv(index: GLuint, v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib2dv orelse @panic("glVertexAttrib2dv was not bound."))(index, v);
}

pub fn vertexAttrib2f(index: GLuint, x: GLfloat, y: GLfloat) void {
    return (function_pointers.glVertexAttrib2f orelse @panic("glVertexAttrib2f was not bound."))(index, x, y);
}

pub fn vertexAttrib2fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib2fv orelse @panic("glVertexAttrib2fv was not bound."))(index, v);
}

pub fn vertexAttrib2s(index: GLuint, x: GLshort, y: GLshort) void {
    return (function_pointers.glVertexAttrib2s orelse @panic("glVertexAttrib2s was not bound."))(index, x, y);
}

pub fn vertexAttrib2sv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib2sv orelse @panic("glVertexAttrib2sv was not bound."))(index, v);
}

pub fn vertexAttrib3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) void {
    return (function_pointers.glVertexAttrib3d orelse @panic("glVertexAttrib3d was not bound."))(index, x, y, z);
}

pub fn vertexAttrib3dv(index: GLuint, v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib3dv orelse @panic("glVertexAttrib3dv was not bound."))(index, v);
}

pub fn vertexAttrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glVertexAttrib3f orelse @panic("glVertexAttrib3f was not bound."))(index, x, y, z);
}

pub fn vertexAttrib3fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib3fv orelse @panic("glVertexAttrib3fv was not bound."))(index, v);
}

pub fn vertexAttrib3s(index: GLuint, x: GLshort, y: GLshort, z: GLshort) void {
    return (function_pointers.glVertexAttrib3s orelse @panic("glVertexAttrib3s was not bound."))(index, x, y, z);
}

pub fn vertexAttrib3sv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib3sv orelse @panic("glVertexAttrib3sv was not bound."))(index, v);
}

pub fn vertexAttrib4Nbv(index: GLuint, v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttrib4Nbv orelse @panic("glVertexAttrib4Nbv was not bound."))(index, v);
}

pub fn vertexAttrib4Niv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttrib4Niv orelse @panic("glVertexAttrib4Niv was not bound."))(index, v);
}

pub fn vertexAttrib4Nsv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib4Nsv orelse @panic("glVertexAttrib4Nsv was not bound."))(index, v);
}

pub fn vertexAttrib4Nub(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) void {
    return (function_pointers.glVertexAttrib4Nub orelse @panic("glVertexAttrib4Nub was not bound."))(index, x, y, z, w);
}

pub fn vertexAttrib4Nubv(index: GLuint, v: [*:0]const GLubyte) void {
    return (function_pointers.glVertexAttrib4Nubv orelse @panic("glVertexAttrib4Nubv was not bound."))(index, v);
}

pub fn vertexAttrib4Nuiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttrib4Nuiv orelse @panic("glVertexAttrib4Nuiv was not bound."))(index, v);
}

pub fn vertexAttrib4Nusv(index: GLuint, v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttrib4Nusv orelse @panic("glVertexAttrib4Nusv was not bound."))(index, v);
}

pub fn vertexAttrib4bv(index: GLuint, v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttrib4bv orelse @panic("glVertexAttrib4bv was not bound."))(index, v);
}

pub fn vertexAttrib4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void {
    return (function_pointers.glVertexAttrib4d orelse @panic("glVertexAttrib4d was not bound."))(index, x, y, z, w);
}

pub fn vertexAttrib4dv(index: GLuint, v: [*c]const GLdouble) void {
    return (function_pointers.glVertexAttrib4dv orelse @panic("glVertexAttrib4dv was not bound."))(index, v);
}

pub fn vertexAttrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void {
    return (function_pointers.glVertexAttrib4f orelse @panic("glVertexAttrib4f was not bound."))(index, x, y, z, w);
}

pub fn vertexAttrib4fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib4fv orelse @panic("glVertexAttrib4fv was not bound."))(index, v);
}

pub fn vertexAttrib4iv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttrib4iv orelse @panic("glVertexAttrib4iv was not bound."))(index, v);
}

pub fn vertexAttrib4s(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) void {
    return (function_pointers.glVertexAttrib4s orelse @panic("glVertexAttrib4s was not bound."))(index, x, y, z, w);
}

pub fn vertexAttrib4sv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttrib4sv orelse @panic("glVertexAttrib4sv was not bound."))(index, v);
}

pub fn vertexAttrib4ubv(index: GLuint, v: [*:0]const GLubyte) void {
    return (function_pointers.glVertexAttrib4ubv orelse @panic("glVertexAttrib4ubv was not bound."))(index, v);
}

pub fn vertexAttrib4uiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttrib4uiv orelse @panic("glVertexAttrib4uiv was not bound."))(index, v);
}

pub fn vertexAttrib4usv(index: GLuint, v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttrib4usv orelse @panic("glVertexAttrib4usv was not bound."))(index, v);
}

pub fn vertexAttribPointer(index: GLuint, size: GLint, type: GLenum, normalized: GLboolean, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glVertexAttribPointer orelse @panic("glVertexAttribPointer was not bound."))(index, size, type, normalized, stride, pointer);
}

pub fn uniformMatrix2x3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2x3fv orelse @panic("glUniformMatrix2x3fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix3x2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3x2fv orelse @panic("glUniformMatrix3x2fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix2x4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2x4fv orelse @panic("glUniformMatrix2x4fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix4x2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4x2fv orelse @panic("glUniformMatrix4x2fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix3x4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3x4fv orelse @panic("glUniformMatrix3x4fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix4x3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4x3fv orelse @panic("glUniformMatrix4x3fv was not bound."))(location, count, transpose, value);
}

pub fn colorMaski(index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean) void {
    return (function_pointers.glColorMaski orelse @panic("glColorMaski was not bound."))(index, r, g, b, a);
}

pub fn getBooleani_v(target: GLenum, index: GLuint, data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleani_v orelse @panic("glGetBooleani_v was not bound."))(target, index, data);
}

pub fn getIntegeri_v(target: GLenum, index: GLuint, data: [*c]GLint) void {
    return (function_pointers.glGetIntegeri_v orelse @panic("glGetIntegeri_v was not bound."))(target, index, data);
}

pub fn enablei(target: GLenum, index: GLuint) void {
    return (function_pointers.glEnablei orelse @panic("glEnablei was not bound."))(target, index);
}

pub fn disablei(target: GLenum, index: GLuint) void {
    return (function_pointers.glDisablei orelse @panic("glDisablei was not bound."))(target, index);
}

pub fn isEnabledi(target: GLenum, index: GLuint) GLboolean {
    return (function_pointers.glIsEnabledi orelse @panic("glIsEnabledi was not bound."))(target, index);
}

pub fn beginTransformFeedback(primitiveMode: GLenum) void {
    return (function_pointers.glBeginTransformFeedback orelse @panic("glBeginTransformFeedback was not bound."))(primitiveMode);
}

pub fn endTransformFeedback() void {
    return (function_pointers.glEndTransformFeedback orelse @panic("glEndTransformFeedback was not bound."))();
}

pub fn bindBufferRange(target: GLenum, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void {
    return (function_pointers.glBindBufferRange orelse @panic("glBindBufferRange was not bound."))(target, index, buffer, offset, size);
}

pub fn bindBufferBase(target: GLenum, index: GLuint, buffer: GLuint) void {
    return (function_pointers.glBindBufferBase orelse @panic("glBindBufferBase was not bound."))(target, index, buffer);
}

pub fn transformFeedbackVaryings(program: GLuint, count: GLsizei, varyings: [*c]const [*c]const GLchar, bufferMode: GLenum) void {
    return (function_pointers.glTransformFeedbackVaryings orelse @panic("glTransformFeedbackVaryings was not bound."))(program, count, varyings, bufferMode);
}

pub fn getTransformFeedbackVarying(program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLsizei, type: [*c]GLenum, name: [*c]GLchar) void {
    return (function_pointers.glGetTransformFeedbackVarying orelse @panic("glGetTransformFeedbackVarying was not bound."))(program, index, bufSize, length, size, type, name);
}

pub fn clampColor(target: GLenum, clamp: GLenum) void {
    return (function_pointers.glClampColor orelse @panic("glClampColor was not bound."))(target, clamp);
}

pub fn beginConditionalRender(id: GLuint, mode: GLenum) void {
    return (function_pointers.glBeginConditionalRender orelse @panic("glBeginConditionalRender was not bound."))(id, mode);
}

pub fn endConditionalRender() void {
    return (function_pointers.glEndConditionalRender orelse @panic("glEndConditionalRender was not bound."))();
}

pub fn vertexAttribIPointer(index: GLuint, size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glVertexAttribIPointer orelse @panic("glVertexAttribIPointer was not bound."))(index, size, type, stride, pointer);
}

pub fn getVertexAttribIiv(index: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribIiv orelse @panic("glGetVertexAttribIiv was not bound."))(index, pname, params);
}

pub fn getVertexAttribIuiv(index: GLuint, pname: GLenum, params: [*c]GLuint) void {
    return (function_pointers.glGetVertexAttribIuiv orelse @panic("glGetVertexAttribIuiv was not bound."))(index, pname, params);
}

pub fn vertexAttribI1i(index: GLuint, x: GLint) void {
    return (function_pointers.glVertexAttribI1i orelse @panic("glVertexAttribI1i was not bound."))(index, x);
}

pub fn vertexAttribI2i(index: GLuint, x: GLint, y: GLint) void {
    return (function_pointers.glVertexAttribI2i orelse @panic("glVertexAttribI2i was not bound."))(index, x, y);
}

pub fn vertexAttribI3i(index: GLuint, x: GLint, y: GLint, z: GLint) void {
    return (function_pointers.glVertexAttribI3i orelse @panic("glVertexAttribI3i was not bound."))(index, x, y, z);
}

pub fn vertexAttribI4i(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) void {
    return (function_pointers.glVertexAttribI4i orelse @panic("glVertexAttribI4i was not bound."))(index, x, y, z, w);
}

pub fn vertexAttribI1ui(index: GLuint, x: GLuint) void {
    return (function_pointers.glVertexAttribI1ui orelse @panic("glVertexAttribI1ui was not bound."))(index, x);
}

pub fn vertexAttribI2ui(index: GLuint, x: GLuint, y: GLuint) void {
    return (function_pointers.glVertexAttribI2ui orelse @panic("glVertexAttribI2ui was not bound."))(index, x, y);
}

pub fn vertexAttribI3ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint) void {
    return (function_pointers.glVertexAttribI3ui orelse @panic("glVertexAttribI3ui was not bound."))(index, x, y, z);
}

pub fn vertexAttribI4ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) void {
    return (function_pointers.glVertexAttribI4ui orelse @panic("glVertexAttribI4ui was not bound."))(index, x, y, z, w);
}

pub fn vertexAttribI1iv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI1iv orelse @panic("glVertexAttribI1iv was not bound."))(index, v);
}

pub fn vertexAttribI2iv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI2iv orelse @panic("glVertexAttribI2iv was not bound."))(index, v);
}

pub fn vertexAttribI3iv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI3iv orelse @panic("glVertexAttribI3iv was not bound."))(index, v);
}

pub fn vertexAttribI4iv(index: GLuint, v: [*c]const GLint) void {
    return (function_pointers.glVertexAttribI4iv orelse @panic("glVertexAttribI4iv was not bound."))(index, v);
}

pub fn vertexAttribI1uiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI1uiv orelse @panic("glVertexAttribI1uiv was not bound."))(index, v);
}

pub fn vertexAttribI2uiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI2uiv orelse @panic("glVertexAttribI2uiv was not bound."))(index, v);
}

pub fn vertexAttribI3uiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI3uiv orelse @panic("glVertexAttribI3uiv was not bound."))(index, v);
}

pub fn vertexAttribI4uiv(index: GLuint, v: [*c]const GLuint) void {
    return (function_pointers.glVertexAttribI4uiv orelse @panic("glVertexAttribI4uiv was not bound."))(index, v);
}

pub fn vertexAttribI4bv(index: GLuint, v: [*c]const GLbyte) void {
    return (function_pointers.glVertexAttribI4bv orelse @panic("glVertexAttribI4bv was not bound."))(index, v);
}

pub fn vertexAttribI4sv(index: GLuint, v: [*c]const GLshort) void {
    return (function_pointers.glVertexAttribI4sv orelse @panic("glVertexAttribI4sv was not bound."))(index, v);
}

pub fn vertexAttribI4ubv(index: GLuint, v: [*:0]const GLubyte) void {
    return (function_pointers.glVertexAttribI4ubv orelse @panic("glVertexAttribI4ubv was not bound."))(index, v);
}

pub fn vertexAttribI4usv(index: GLuint, v: [*c]const GLushort) void {
    return (function_pointers.glVertexAttribI4usv orelse @panic("glVertexAttribI4usv was not bound."))(index, v);
}

pub fn getUniformuiv(program: GLuint, location: GLint, params: [*c]GLuint) void {
    return (function_pointers.glGetUniformuiv orelse @panic("glGetUniformuiv was not bound."))(program, location, params);
}

pub fn bindFragDataLocation(program: GLuint, color: GLuint, name: [*c]const GLchar) void {
    return (function_pointers.glBindFragDataLocation orelse @panic("glBindFragDataLocation was not bound."))(program, color, name);
}

pub fn getFragDataLocation(program: GLuint, name: [*c]const GLchar) GLint {
    return (function_pointers.glGetFragDataLocation orelse @panic("glGetFragDataLocation was not bound."))(program, name);
}

pub fn uniform1ui(location: GLint, v0: GLuint) void {
    return (function_pointers.glUniform1ui orelse @panic("glUniform1ui was not bound."))(location, v0);
}

pub fn uniform2ui(location: GLint, v0: GLuint, v1: GLuint) void {
    return (function_pointers.glUniform2ui orelse @panic("glUniform2ui was not bound."))(location, v0, v1);
}

pub fn uniform3ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) void {
    return (function_pointers.glUniform3ui orelse @panic("glUniform3ui was not bound."))(location, v0, v1, v2);
}

pub fn uniform4ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) void {
    return (function_pointers.glUniform4ui orelse @panic("glUniform4ui was not bound."))(location, v0, v1, v2, v3);
}

pub fn uniform1uiv(location: GLint, count: GLsizei, value: [*c]const GLuint) void {
    return (function_pointers.glUniform1uiv orelse @panic("glUniform1uiv was not bound."))(location, count, value);
}

pub fn uniform2uiv(location: GLint, count: GLsizei, value: [*c]const GLuint) void {
    return (function_pointers.glUniform2uiv orelse @panic("glUniform2uiv was not bound."))(location, count, value);
}

pub fn uniform3uiv(location: GLint, count: GLsizei, value: [*c]const GLuint) void {
    return (function_pointers.glUniform3uiv orelse @panic("glUniform3uiv was not bound."))(location, count, value);
}

pub fn uniform4uiv(location: GLint, count: GLsizei, value: [*c]const GLuint) void {
    return (function_pointers.glUniform4uiv orelse @panic("glUniform4uiv was not bound."))(location, count, value);
}

pub fn texParameterIiv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexParameterIiv orelse @panic("glTexParameterIiv was not bound."))(target, pname, params);
}

pub fn texParameterIuiv(target: GLenum, pname: GLenum, params: [*c]const GLuint) void {
    return (function_pointers.glTexParameterIuiv orelse @panic("glTexParameterIuiv was not bound."))(target, pname, params);
}

pub fn getTexParameterIiv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexParameterIiv orelse @panic("glGetTexParameterIiv was not bound."))(target, pname, params);
}

pub fn getTexParameterIuiv(target: GLenum, pname: GLenum, params: [*c]GLuint) void {
    return (function_pointers.glGetTexParameterIuiv orelse @panic("glGetTexParameterIuiv was not bound."))(target, pname, params);
}

pub fn clearBufferiv(buffer: GLenum, drawbuffer: GLint, value: [*c]const GLint) void {
    return (function_pointers.glClearBufferiv orelse @panic("glClearBufferiv was not bound."))(buffer, drawbuffer, value);
}

pub fn clearBufferuiv(buffer: GLenum, drawbuffer: GLint, value: [*c]const GLuint) void {
    return (function_pointers.glClearBufferuiv orelse @panic("glClearBufferuiv was not bound."))(buffer, drawbuffer, value);
}

pub fn clearBufferfv(buffer: GLenum, drawbuffer: GLint, value: [*c]const GLfloat) void {
    return (function_pointers.glClearBufferfv orelse @panic("glClearBufferfv was not bound."))(buffer, drawbuffer, value);
}

pub fn clearBufferfi(buffer: GLenum, drawbuffer: GLint, depth: GLfloat, stencil: GLint) void {
    return (function_pointers.glClearBufferfi orelse @panic("glClearBufferfi was not bound."))(buffer, drawbuffer, depth, stencil);
}

pub fn getStringi(name: GLenum, index: GLuint) [*:0]const GLubyte {
    return (function_pointers.glGetStringi orelse @panic("glGetStringi was not bound."))(name, index);
}

pub fn isRenderbuffer(renderbuffer: GLuint) GLboolean {
    return (function_pointers.glIsRenderbuffer orelse @panic("glIsRenderbuffer was not bound."))(renderbuffer);
}

pub fn bindRenderbuffer(target: GLenum, renderbuffer: GLuint) void {
    return (function_pointers.glBindRenderbuffer orelse @panic("glBindRenderbuffer was not bound."))(target, renderbuffer);
}

pub fn deleteRenderbuffers(n: GLsizei, renderbuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteRenderbuffers orelse @panic("glDeleteRenderbuffers was not bound."))(n, renderbuffers);
}

pub fn genRenderbuffers(n: GLsizei, renderbuffers: [*c]GLuint) void {
    return (function_pointers.glGenRenderbuffers orelse @panic("glGenRenderbuffers was not bound."))(n, renderbuffers);
}

pub fn renderbufferStorage(target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glRenderbufferStorage orelse @panic("glRenderbufferStorage was not bound."))(target, internalformat, width, height);
}

pub fn getRenderbufferParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetRenderbufferParameteriv orelse @panic("glGetRenderbufferParameteriv was not bound."))(target, pname, params);
}

pub fn isFramebuffer(framebuffer: GLuint) GLboolean {
    return (function_pointers.glIsFramebuffer orelse @panic("glIsFramebuffer was not bound."))(framebuffer);
}

pub fn bindFramebuffer(target: GLenum, framebuffer: GLuint) void {
    return (function_pointers.glBindFramebuffer orelse @panic("glBindFramebuffer was not bound."))(target, framebuffer);
}

pub fn deleteFramebuffers(n: GLsizei, framebuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteFramebuffers orelse @panic("glDeleteFramebuffers was not bound."))(n, framebuffers);
}

pub fn genFramebuffers(n: GLsizei, framebuffers: [*c]GLuint) void {
    return (function_pointers.glGenFramebuffers orelse @panic("glGenFramebuffers was not bound."))(n, framebuffers);
}

pub fn checkFramebufferStatus(target: GLenum) GLenum {
    return (function_pointers.glCheckFramebufferStatus orelse @panic("glCheckFramebufferStatus was not bound."))(target);
}

pub fn framebufferTexture1D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void {
    return (function_pointers.glFramebufferTexture1D orelse @panic("glFramebufferTexture1D was not bound."))(target, attachment, textarget, texture, level);
}

pub fn framebufferTexture2D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void {
    return (function_pointers.glFramebufferTexture2D orelse @panic("glFramebufferTexture2D was not bound."))(target, attachment, textarget, texture, level);
}

pub fn framebufferTexture3D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint, zoffset: GLint) void {
    return (function_pointers.glFramebufferTexture3D orelse @panic("glFramebufferTexture3D was not bound."))(target, attachment, textarget, texture, level, zoffset);
}

pub fn framebufferRenderbuffer(target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void {
    return (function_pointers.glFramebufferRenderbuffer orelse @panic("glFramebufferRenderbuffer was not bound."))(target, attachment, renderbuffertarget, renderbuffer);
}

pub fn getFramebufferAttachmentParameteriv(target: GLenum, attachment: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetFramebufferAttachmentParameteriv orelse @panic("glGetFramebufferAttachmentParameteriv was not bound."))(target, attachment, pname, params);
}

pub fn generateMipmap(target: GLenum) void {
    return (function_pointers.glGenerateMipmap orelse @panic("glGenerateMipmap was not bound."))(target);
}

pub fn blitFramebuffer(srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: GLbitfield, filter: GLenum) void {
    return (function_pointers.glBlitFramebuffer orelse @panic("glBlitFramebuffer was not bound."))(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}

pub fn renderbufferStorageMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glRenderbufferStorageMultisample orelse @panic("glRenderbufferStorageMultisample was not bound."))(target, samples, internalformat, width, height);
}

pub fn framebufferTextureLayer(target: GLenum, attachment: GLenum, texture: GLuint, level: GLint, layer: GLint) void {
    return (function_pointers.glFramebufferTextureLayer orelse @panic("glFramebufferTextureLayer was not bound."))(target, attachment, texture, level, layer);
}

pub fn mapBufferRange(target: GLenum, offset: GLintptr, length: GLsizeiptr, access: GLbitfield) *c_void {
    return (function_pointers.glMapBufferRange orelse @panic("glMapBufferRange was not bound."))(target, offset, length, access);
}

pub fn flushMappedBufferRange(target: GLenum, offset: GLintptr, length: GLsizeiptr) void {
    return (function_pointers.glFlushMappedBufferRange orelse @panic("glFlushMappedBufferRange was not bound."))(target, offset, length);
}

pub fn bindVertexArray(array: GLuint) void {
    return (function_pointers.glBindVertexArray orelse @panic("glBindVertexArray was not bound."))(array);
}

pub fn deleteVertexArrays(n: GLsizei, arrays: [*c]const GLuint) void {
    return (function_pointers.glDeleteVertexArrays orelse @panic("glDeleteVertexArrays was not bound."))(n, arrays);
}

pub fn genVertexArrays(n: GLsizei, arrays: [*c]GLuint) void {
    return (function_pointers.glGenVertexArrays orelse @panic("glGenVertexArrays was not bound."))(n, arrays);
}

pub fn isVertexArray(array: GLuint) GLboolean {
    return (function_pointers.glIsVertexArray orelse @panic("glIsVertexArray was not bound."))(array);
}

pub fn drawArraysInstanced(mode: GLenum, first: GLint, count: GLsizei, instancecount: GLsizei) void {
    return (function_pointers.glDrawArraysInstanced orelse @panic("glDrawArraysInstanced was not bound."))(mode, first, count, instancecount);
}

pub fn drawElementsInstanced(mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void, instancecount: GLsizei) void {
    return (function_pointers.glDrawElementsInstanced orelse @panic("glDrawElementsInstanced was not bound."))(mode, count, type, indices, instancecount);
}

pub fn texBuffer(target: GLenum, internalformat: GLenum, buffer: GLuint) void {
    return (function_pointers.glTexBuffer orelse @panic("glTexBuffer was not bound."))(target, internalformat, buffer);
}

pub fn primitiveRestartIndex(index: GLuint) void {
    return (function_pointers.glPrimitiveRestartIndex orelse @panic("glPrimitiveRestartIndex was not bound."))(index);
}

pub fn copyBufferSubData(readTarget: GLenum, writeTarget: GLenum, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr) void {
    return (function_pointers.glCopyBufferSubData orelse @panic("glCopyBufferSubData was not bound."))(readTarget, writeTarget, readOffset, writeOffset, size);
}

pub fn getUniformIndices(program: GLuint, uniformCount: GLsizei, uniformNames: [*c]const [*c]const GLchar, uniformIndices: [*c]GLuint) void {
    return (function_pointers.glGetUniformIndices orelse @panic("glGetUniformIndices was not bound."))(program, uniformCount, uniformNames, uniformIndices);
}

pub fn getActiveUniformsiv(program: GLuint, uniformCount: GLsizei, uniformIndices: [*c]const GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetActiveUniformsiv orelse @panic("glGetActiveUniformsiv was not bound."))(program, uniformCount, uniformIndices, pname, params);
}

pub fn getActiveUniformName(program: GLuint, uniformIndex: GLuint, bufSize: GLsizei, length: [*c]GLsizei, uniformName: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniformName orelse @panic("glGetActiveUniformName was not bound."))(program, uniformIndex, bufSize, length, uniformName);
}

pub fn getUniformBlockIndex(program: GLuint, uniformBlockName: [*c]const GLchar) GLuint {
    return (function_pointers.glGetUniformBlockIndex orelse @panic("glGetUniformBlockIndex was not bound."))(program, uniformBlockName);
}

pub fn getActiveUniformBlockiv(program: GLuint, uniformBlockIndex: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetActiveUniformBlockiv orelse @panic("glGetActiveUniformBlockiv was not bound."))(program, uniformBlockIndex, pname, params);
}

pub fn getActiveUniformBlockName(program: GLuint, uniformBlockIndex: GLuint, bufSize: GLsizei, length: [*c]GLsizei, uniformBlockName: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniformBlockName orelse @panic("glGetActiveUniformBlockName was not bound."))(program, uniformBlockIndex, bufSize, length, uniformBlockName);
}

pub fn uniformBlockBinding(program: GLuint, uniformBlockIndex: GLuint, uniformBlockBinding: GLuint) void {
    return (function_pointers.glUniformBlockBinding orelse @panic("glUniformBlockBinding was not bound."))(program, uniformBlockIndex, uniformBlockBinding);
}

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*c_void) !void {
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
    if (get_proc_address(load_ctx, "glGetQueryObjectiv")) |proc| {
        function_pointers.glGetQueryObjectiv = @ptrCast(?function_signatures.glGetQueryObjectiv, proc);
    } else {
        log.emerg("entry point glGetQueryObjectiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetQueryObjectuiv")) |proc| {
        function_pointers.glGetQueryObjectuiv = @ptrCast(?function_signatures.glGetQueryObjectuiv, proc);
    } else {
        log.emerg("entry point glGetQueryObjectuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(?function_signatures.glBindBuffer, proc);
    } else {
        log.emerg("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(?function_signatures.glDeleteBuffers, proc);
    } else {
        log.emerg("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(?function_signatures.glGenBuffers, proc);
    } else {
        log.emerg("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(?function_signatures.glIsBuffer, proc);
    } else {
        log.emerg("entry point glIsBuffer not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetBufferSubData")) |proc| {
        function_pointers.glGetBufferSubData = @ptrCast(?function_signatures.glGetBufferSubData, proc);
    } else {
        log.emerg("entry point glGetBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMapBuffer")) |proc| {
        function_pointers.glMapBuffer = @ptrCast(?function_signatures.glMapBuffer, proc);
    } else {
        log.emerg("entry point glMapBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUnmapBuffer")) |proc| {
        function_pointers.glUnmapBuffer = @ptrCast(?function_signatures.glUnmapBuffer, proc);
    } else {
        log.emerg("entry point glUnmapBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(?function_signatures.glGetBufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferPointerv")) |proc| {
        function_pointers.glGetBufferPointerv = @ptrCast(?function_signatures.glGetBufferPointerv, proc);
    } else {
        log.emerg("entry point glGetBufferPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquationSeparate")) |proc| {
        function_pointers.glBlendEquationSeparate = @ptrCast(?function_signatures.glBlendEquationSeparate, proc);
    } else {
        log.emerg("entry point glBlendEquationSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawBuffers")) |proc| {
        function_pointers.glDrawBuffers = @ptrCast(?function_signatures.glDrawBuffers, proc);
    } else {
        log.emerg("entry point glDrawBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOpSeparate")) |proc| {
        function_pointers.glStencilOpSeparate = @ptrCast(?function_signatures.glStencilOpSeparate, proc);
    } else {
        log.emerg("entry point glStencilOpSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFuncSeparate")) |proc| {
        function_pointers.glStencilFuncSeparate = @ptrCast(?function_signatures.glStencilFuncSeparate, proc);
    } else {
        log.emerg("entry point glStencilFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMaskSeparate")) |proc| {
        function_pointers.glStencilMaskSeparate = @ptrCast(?function_signatures.glStencilMaskSeparate, proc);
    } else {
        log.emerg("entry point glStencilMaskSeparate not found!", .{});
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
    if (get_proc_address(load_ctx, "glCompileShader")) |proc| {
        function_pointers.glCompileShader = @ptrCast(?function_signatures.glCompileShader, proc);
    } else {
        log.emerg("entry point glCompileShader not found!", .{});
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
    if (get_proc_address(load_ctx, "glDeleteProgram")) |proc| {
        function_pointers.glDeleteProgram = @ptrCast(?function_signatures.glDeleteProgram, proc);
    } else {
        log.emerg("entry point glDeleteProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteShader")) |proc| {
        function_pointers.glDeleteShader = @ptrCast(?function_signatures.glDeleteShader, proc);
    } else {
        log.emerg("entry point glDeleteShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDetachShader")) |proc| {
        function_pointers.glDetachShader = @ptrCast(?function_signatures.glDetachShader, proc);
    } else {
        log.emerg("entry point glDetachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableVertexAttribArray")) |proc| {
        function_pointers.glDisableVertexAttribArray = @ptrCast(?function_signatures.glDisableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glDisableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableVertexAttribArray")) |proc| {
        function_pointers.glEnableVertexAttribArray = @ptrCast(?function_signatures.glEnableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glEnableVertexAttribArray not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetShaderSource")) |proc| {
        function_pointers.glGetShaderSource = @ptrCast(?function_signatures.glGetShaderSource, proc);
    } else {
        log.emerg("entry point glGetShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformLocation")) |proc| {
        function_pointers.glGetUniformLocation = @ptrCast(?function_signatures.glGetUniformLocation, proc);
    } else {
        log.emerg("entry point glGetUniformLocation not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetVertexAttribdv")) |proc| {
        function_pointers.glGetVertexAttribdv = @ptrCast(?function_signatures.glGetVertexAttribdv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribdv not found!", .{});
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
    if (get_proc_address(load_ctx, "glIsProgram")) |proc| {
        function_pointers.glIsProgram = @ptrCast(?function_signatures.glIsProgram, proc);
    } else {
        log.emerg("entry point glIsProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsShader")) |proc| {
        function_pointers.glIsShader = @ptrCast(?function_signatures.glIsShader, proc);
    } else {
        log.emerg("entry point glIsShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLinkProgram")) |proc| {
        function_pointers.glLinkProgram = @ptrCast(?function_signatures.glLinkProgram, proc);
    } else {
        log.emerg("entry point glLinkProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderSource")) |proc| {
        function_pointers.glShaderSource = @ptrCast(?function_signatures.glShaderSource, proc);
    } else {
        log.emerg("entry point glShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUseProgram")) |proc| {
        function_pointers.glUseProgram = @ptrCast(?function_signatures.glUseProgram, proc);
    } else {
        log.emerg("entry point glUseProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1f")) |proc| {
        function_pointers.glUniform1f = @ptrCast(?function_signatures.glUniform1f, proc);
    } else {
        log.emerg("entry point glUniform1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2f")) |proc| {
        function_pointers.glUniform2f = @ptrCast(?function_signatures.glUniform2f, proc);
    } else {
        log.emerg("entry point glUniform2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3f")) |proc| {
        function_pointers.glUniform3f = @ptrCast(?function_signatures.glUniform3f, proc);
    } else {
        log.emerg("entry point glUniform3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4f")) |proc| {
        function_pointers.glUniform4f = @ptrCast(?function_signatures.glUniform4f, proc);
    } else {
        log.emerg("entry point glUniform4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1i")) |proc| {
        function_pointers.glUniform1i = @ptrCast(?function_signatures.glUniform1i, proc);
    } else {
        log.emerg("entry point glUniform1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2i")) |proc| {
        function_pointers.glUniform2i = @ptrCast(?function_signatures.glUniform2i, proc);
    } else {
        log.emerg("entry point glUniform2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3i")) |proc| {
        function_pointers.glUniform3i = @ptrCast(?function_signatures.glUniform3i, proc);
    } else {
        log.emerg("entry point glUniform3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4i")) |proc| {
        function_pointers.glUniform4i = @ptrCast(?function_signatures.glUniform4i, proc);
    } else {
        log.emerg("entry point glUniform4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1fv")) |proc| {
        function_pointers.glUniform1fv = @ptrCast(?function_signatures.glUniform1fv, proc);
    } else {
        log.emerg("entry point glUniform1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2fv")) |proc| {
        function_pointers.glUniform2fv = @ptrCast(?function_signatures.glUniform2fv, proc);
    } else {
        log.emerg("entry point glUniform2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3fv")) |proc| {
        function_pointers.glUniform3fv = @ptrCast(?function_signatures.glUniform3fv, proc);
    } else {
        log.emerg("entry point glUniform3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4fv")) |proc| {
        function_pointers.glUniform4fv = @ptrCast(?function_signatures.glUniform4fv, proc);
    } else {
        log.emerg("entry point glUniform4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1iv")) |proc| {
        function_pointers.glUniform1iv = @ptrCast(?function_signatures.glUniform1iv, proc);
    } else {
        log.emerg("entry point glUniform1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2iv")) |proc| {
        function_pointers.glUniform2iv = @ptrCast(?function_signatures.glUniform2iv, proc);
    } else {
        log.emerg("entry point glUniform2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3iv")) |proc| {
        function_pointers.glUniform3iv = @ptrCast(?function_signatures.glUniform3iv, proc);
    } else {
        log.emerg("entry point glUniform3iv not found!", .{});
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
    if (get_proc_address(load_ctx, "glValidateProgram")) |proc| {
        function_pointers.glValidateProgram = @ptrCast(?function_signatures.glValidateProgram, proc);
    } else {
        log.emerg("entry point glValidateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1d")) |proc| {
        function_pointers.glVertexAttrib1d = @ptrCast(?function_signatures.glVertexAttrib1d, proc);
    } else {
        log.emerg("entry point glVertexAttrib1d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1dv")) |proc| {
        function_pointers.glVertexAttrib1dv = @ptrCast(?function_signatures.glVertexAttrib1dv, proc);
    } else {
        log.emerg("entry point glVertexAttrib1dv not found!", .{});
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
    if (get_proc_address(load_ctx, "glVertexAttrib1s")) |proc| {
        function_pointers.glVertexAttrib1s = @ptrCast(?function_signatures.glVertexAttrib1s, proc);
    } else {
        log.emerg("entry point glVertexAttrib1s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1sv")) |proc| {
        function_pointers.glVertexAttrib1sv = @ptrCast(?function_signatures.glVertexAttrib1sv, proc);
    } else {
        log.emerg("entry point glVertexAttrib1sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2d")) |proc| {
        function_pointers.glVertexAttrib2d = @ptrCast(?function_signatures.glVertexAttrib2d, proc);
    } else {
        log.emerg("entry point glVertexAttrib2d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2dv")) |proc| {
        function_pointers.glVertexAttrib2dv = @ptrCast(?function_signatures.glVertexAttrib2dv, proc);
    } else {
        log.emerg("entry point glVertexAttrib2dv not found!", .{});
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
    if (get_proc_address(load_ctx, "glVertexAttrib2s")) |proc| {
        function_pointers.glVertexAttrib2s = @ptrCast(?function_signatures.glVertexAttrib2s, proc);
    } else {
        log.emerg("entry point glVertexAttrib2s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2sv")) |proc| {
        function_pointers.glVertexAttrib2sv = @ptrCast(?function_signatures.glVertexAttrib2sv, proc);
    } else {
        log.emerg("entry point glVertexAttrib2sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3d")) |proc| {
        function_pointers.glVertexAttrib3d = @ptrCast(?function_signatures.glVertexAttrib3d, proc);
    } else {
        log.emerg("entry point glVertexAttrib3d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3dv")) |proc| {
        function_pointers.glVertexAttrib3dv = @ptrCast(?function_signatures.glVertexAttrib3dv, proc);
    } else {
        log.emerg("entry point glVertexAttrib3dv not found!", .{});
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
    if (get_proc_address(load_ctx, "glVertexAttrib3s")) |proc| {
        function_pointers.glVertexAttrib3s = @ptrCast(?function_signatures.glVertexAttrib3s, proc);
    } else {
        log.emerg("entry point glVertexAttrib3s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3sv")) |proc| {
        function_pointers.glVertexAttrib3sv = @ptrCast(?function_signatures.glVertexAttrib3sv, proc);
    } else {
        log.emerg("entry point glVertexAttrib3sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nbv")) |proc| {
        function_pointers.glVertexAttrib4Nbv = @ptrCast(?function_signatures.glVertexAttrib4Nbv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nbv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Niv")) |proc| {
        function_pointers.glVertexAttrib4Niv = @ptrCast(?function_signatures.glVertexAttrib4Niv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Niv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nsv")) |proc| {
        function_pointers.glVertexAttrib4Nsv = @ptrCast(?function_signatures.glVertexAttrib4Nsv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nsv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nub")) |proc| {
        function_pointers.glVertexAttrib4Nub = @ptrCast(?function_signatures.glVertexAttrib4Nub, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nubv")) |proc| {
        function_pointers.glVertexAttrib4Nubv = @ptrCast(?function_signatures.glVertexAttrib4Nubv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nuiv")) |proc| {
        function_pointers.glVertexAttrib4Nuiv = @ptrCast(?function_signatures.glVertexAttrib4Nuiv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4Nusv")) |proc| {
        function_pointers.glVertexAttrib4Nusv = @ptrCast(?function_signatures.glVertexAttrib4Nusv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4Nusv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4bv")) |proc| {
        function_pointers.glVertexAttrib4bv = @ptrCast(?function_signatures.glVertexAttrib4bv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4d")) |proc| {
        function_pointers.glVertexAttrib4d = @ptrCast(?function_signatures.glVertexAttrib4d, proc);
    } else {
        log.emerg("entry point glVertexAttrib4d not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4dv")) |proc| {
        function_pointers.glVertexAttrib4dv = @ptrCast(?function_signatures.glVertexAttrib4dv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4dv not found!", .{});
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
    if (get_proc_address(load_ctx, "glVertexAttrib4iv")) |proc| {
        function_pointers.glVertexAttrib4iv = @ptrCast(?function_signatures.glVertexAttrib4iv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4s")) |proc| {
        function_pointers.glVertexAttrib4s = @ptrCast(?function_signatures.glVertexAttrib4s, proc);
    } else {
        log.emerg("entry point glVertexAttrib4s not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4sv")) |proc| {
        function_pointers.glVertexAttrib4sv = @ptrCast(?function_signatures.glVertexAttrib4sv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4ubv")) |proc| {
        function_pointers.glVertexAttrib4ubv = @ptrCast(?function_signatures.glVertexAttrib4ubv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4uiv")) |proc| {
        function_pointers.glVertexAttrib4uiv = @ptrCast(?function_signatures.glVertexAttrib4uiv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4usv")) |proc| {
        function_pointers.glVertexAttrib4usv = @ptrCast(?function_signatures.glVertexAttrib4usv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribPointer")) |proc| {
        function_pointers.glVertexAttribPointer = @ptrCast(?function_signatures.glVertexAttribPointer, proc);
    } else {
        log.emerg("entry point glVertexAttribPointer not found!", .{});
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
    if (get_proc_address(load_ctx, "glColorMaski")) |proc| {
        function_pointers.glColorMaski = @ptrCast(?function_signatures.glColorMaski, proc);
    } else {
        log.emerg("entry point glColorMaski not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleani_v")) |proc| {
        function_pointers.glGetBooleani_v = @ptrCast(?function_signatures.glGetBooleani_v, proc);
    } else {
        log.emerg("entry point glGetBooleani_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegeri_v")) |proc| {
        function_pointers.glGetIntegeri_v = @ptrCast(?function_signatures.glGetIntegeri_v, proc);
    } else {
        log.emerg("entry point glGetIntegeri_v not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnablei")) |proc| {
        function_pointers.glEnablei = @ptrCast(?function_signatures.glEnablei, proc);
    } else {
        log.emerg("entry point glEnablei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisablei")) |proc| {
        function_pointers.glDisablei = @ptrCast(?function_signatures.glDisablei, proc);
    } else {
        log.emerg("entry point glDisablei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabledi")) |proc| {
        function_pointers.glIsEnabledi = @ptrCast(?function_signatures.glIsEnabledi, proc);
    } else {
        log.emerg("entry point glIsEnabledi not found!", .{});
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
    if (get_proc_address(load_ctx, "glClampColor")) |proc| {
        function_pointers.glClampColor = @ptrCast(?function_signatures.glClampColor, proc);
    } else {
        log.emerg("entry point glClampColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBeginConditionalRender")) |proc| {
        function_pointers.glBeginConditionalRender = @ptrCast(?function_signatures.glBeginConditionalRender, proc);
    } else {
        log.emerg("entry point glBeginConditionalRender not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEndConditionalRender")) |proc| {
        function_pointers.glEndConditionalRender = @ptrCast(?function_signatures.glEndConditionalRender, proc);
    } else {
        log.emerg("entry point glEndConditionalRender not found!", .{});
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
    if (get_proc_address(load_ctx, "glVertexAttribI1i")) |proc| {
        function_pointers.glVertexAttribI1i = @ptrCast(?function_signatures.glVertexAttribI1i, proc);
    } else {
        log.emerg("entry point glVertexAttribI1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2i")) |proc| {
        function_pointers.glVertexAttribI2i = @ptrCast(?function_signatures.glVertexAttribI2i, proc);
    } else {
        log.emerg("entry point glVertexAttribI2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3i")) |proc| {
        function_pointers.glVertexAttribI3i = @ptrCast(?function_signatures.glVertexAttribI3i, proc);
    } else {
        log.emerg("entry point glVertexAttribI3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4i")) |proc| {
        function_pointers.glVertexAttribI4i = @ptrCast(?function_signatures.glVertexAttribI4i, proc);
    } else {
        log.emerg("entry point glVertexAttribI4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1ui")) |proc| {
        function_pointers.glVertexAttribI1ui = @ptrCast(?function_signatures.glVertexAttribI1ui, proc);
    } else {
        log.emerg("entry point glVertexAttribI1ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2ui")) |proc| {
        function_pointers.glVertexAttribI2ui = @ptrCast(?function_signatures.glVertexAttribI2ui, proc);
    } else {
        log.emerg("entry point glVertexAttribI2ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3ui")) |proc| {
        function_pointers.glVertexAttribI3ui = @ptrCast(?function_signatures.glVertexAttribI3ui, proc);
    } else {
        log.emerg("entry point glVertexAttribI3ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4ui")) |proc| {
        function_pointers.glVertexAttribI4ui = @ptrCast(?function_signatures.glVertexAttribI4ui, proc);
    } else {
        log.emerg("entry point glVertexAttribI4ui not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1iv")) |proc| {
        function_pointers.glVertexAttribI1iv = @ptrCast(?function_signatures.glVertexAttribI1iv, proc);
    } else {
        log.emerg("entry point glVertexAttribI1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2iv")) |proc| {
        function_pointers.glVertexAttribI2iv = @ptrCast(?function_signatures.glVertexAttribI2iv, proc);
    } else {
        log.emerg("entry point glVertexAttribI2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3iv")) |proc| {
        function_pointers.glVertexAttribI3iv = @ptrCast(?function_signatures.glVertexAttribI3iv, proc);
    } else {
        log.emerg("entry point glVertexAttribI3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4iv")) |proc| {
        function_pointers.glVertexAttribI4iv = @ptrCast(?function_signatures.glVertexAttribI4iv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI1uiv")) |proc| {
        function_pointers.glVertexAttribI1uiv = @ptrCast(?function_signatures.glVertexAttribI1uiv, proc);
    } else {
        log.emerg("entry point glVertexAttribI1uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI2uiv")) |proc| {
        function_pointers.glVertexAttribI2uiv = @ptrCast(?function_signatures.glVertexAttribI2uiv, proc);
    } else {
        log.emerg("entry point glVertexAttribI2uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI3uiv")) |proc| {
        function_pointers.glVertexAttribI3uiv = @ptrCast(?function_signatures.glVertexAttribI3uiv, proc);
    } else {
        log.emerg("entry point glVertexAttribI3uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4uiv")) |proc| {
        function_pointers.glVertexAttribI4uiv = @ptrCast(?function_signatures.glVertexAttribI4uiv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4uiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4bv")) |proc| {
        function_pointers.glVertexAttribI4bv = @ptrCast(?function_signatures.glVertexAttribI4bv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4bv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4sv")) |proc| {
        function_pointers.glVertexAttribI4sv = @ptrCast(?function_signatures.glVertexAttribI4sv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4sv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4ubv")) |proc| {
        function_pointers.glVertexAttribI4ubv = @ptrCast(?function_signatures.glVertexAttribI4ubv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4ubv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribI4usv")) |proc| {
        function_pointers.glVertexAttribI4usv = @ptrCast(?function_signatures.glVertexAttribI4usv, proc);
    } else {
        log.emerg("entry point glVertexAttribI4usv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformuiv")) |proc| {
        function_pointers.glGetUniformuiv = @ptrCast(?function_signatures.glGetUniformuiv, proc);
    } else {
        log.emerg("entry point glGetUniformuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFragDataLocation")) |proc| {
        function_pointers.glBindFragDataLocation = @ptrCast(?function_signatures.glBindFragDataLocation, proc);
    } else {
        log.emerg("entry point glBindFragDataLocation not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexParameterIiv")) |proc| {
        function_pointers.glTexParameterIiv = @ptrCast(?function_signatures.glTexParameterIiv, proc);
    } else {
        log.emerg("entry point glTexParameterIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterIuiv")) |proc| {
        function_pointers.glTexParameterIuiv = @ptrCast(?function_signatures.glTexParameterIuiv, proc);
    } else {
        log.emerg("entry point glTexParameterIuiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterIiv")) |proc| {
        function_pointers.glGetTexParameterIiv = @ptrCast(?function_signatures.glGetTexParameterIiv, proc);
    } else {
        log.emerg("entry point glGetTexParameterIiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterIuiv")) |proc| {
        function_pointers.glGetTexParameterIuiv = @ptrCast(?function_signatures.glGetTexParameterIuiv, proc);
    } else {
        log.emerg("entry point glGetTexParameterIuiv not found!", .{});
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
    if (get_proc_address(load_ctx, "glIsRenderbuffer")) |proc| {
        function_pointers.glIsRenderbuffer = @ptrCast(?function_signatures.glIsRenderbuffer, proc);
    } else {
        log.emerg("entry point glIsRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindRenderbuffer")) |proc| {
        function_pointers.glBindRenderbuffer = @ptrCast(?function_signatures.glBindRenderbuffer, proc);
    } else {
        log.emerg("entry point glBindRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteRenderbuffers")) |proc| {
        function_pointers.glDeleteRenderbuffers = @ptrCast(?function_signatures.glDeleteRenderbuffers, proc);
    } else {
        log.emerg("entry point glDeleteRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenRenderbuffers")) |proc| {
        function_pointers.glGenRenderbuffers = @ptrCast(?function_signatures.glGenRenderbuffers, proc);
    } else {
        log.emerg("entry point glGenRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorage")) |proc| {
        function_pointers.glRenderbufferStorage = @ptrCast(?function_signatures.glRenderbufferStorage, proc);
    } else {
        log.emerg("entry point glRenderbufferStorage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetRenderbufferParameteriv")) |proc| {
        function_pointers.glGetRenderbufferParameteriv = @ptrCast(?function_signatures.glGetRenderbufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetRenderbufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsFramebuffer")) |proc| {
        function_pointers.glIsFramebuffer = @ptrCast(?function_signatures.glIsFramebuffer, proc);
    } else {
        log.emerg("entry point glIsFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFramebuffer")) |proc| {
        function_pointers.glBindFramebuffer = @ptrCast(?function_signatures.glBindFramebuffer, proc);
    } else {
        log.emerg("entry point glBindFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteFramebuffers")) |proc| {
        function_pointers.glDeleteFramebuffers = @ptrCast(?function_signatures.glDeleteFramebuffers, proc);
    } else {
        log.emerg("entry point glDeleteFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenFramebuffers")) |proc| {
        function_pointers.glGenFramebuffers = @ptrCast(?function_signatures.glGenFramebuffers, proc);
    } else {
        log.emerg("entry point glGenFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCheckFramebufferStatus")) |proc| {
        function_pointers.glCheckFramebufferStatus = @ptrCast(?function_signatures.glCheckFramebufferStatus, proc);
    } else {
        log.emerg("entry point glCheckFramebufferStatus not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture1D")) |proc| {
        function_pointers.glFramebufferTexture1D = @ptrCast(?function_signatures.glFramebufferTexture1D, proc);
    } else {
        log.emerg("entry point glFramebufferTexture1D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture2D")) |proc| {
        function_pointers.glFramebufferTexture2D = @ptrCast(?function_signatures.glFramebufferTexture2D, proc);
    } else {
        log.emerg("entry point glFramebufferTexture2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture3D")) |proc| {
        function_pointers.glFramebufferTexture3D = @ptrCast(?function_signatures.glFramebufferTexture3D, proc);
    } else {
        log.emerg("entry point glFramebufferTexture3D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferRenderbuffer")) |proc| {
        function_pointers.glFramebufferRenderbuffer = @ptrCast(?function_signatures.glFramebufferRenderbuffer, proc);
    } else {
        log.emerg("entry point glFramebufferRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFramebufferAttachmentParameteriv")) |proc| {
        function_pointers.glGetFramebufferAttachmentParameteriv = @ptrCast(?function_signatures.glGetFramebufferAttachmentParameteriv, proc);
    } else {
        log.emerg("entry point glGetFramebufferAttachmentParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenerateMipmap")) |proc| {
        function_pointers.glGenerateMipmap = @ptrCast(?function_signatures.glGenerateMipmap, proc);
    } else {
        log.emerg("entry point glGenerateMipmap not found!", .{});
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
    if (get_proc_address(load_ctx, "glTexBuffer")) |proc| {
        function_pointers.glTexBuffer = @ptrCast(?function_signatures.glTexBuffer, proc);
    } else {
        log.emerg("entry point glTexBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPrimitiveRestartIndex")) |proc| {
        function_pointers.glPrimitiveRestartIndex = @ptrCast(?function_signatures.glPrimitiveRestartIndex, proc);
    } else {
        log.emerg("entry point glPrimitiveRestartIndex not found!", .{});
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
    if (get_proc_address(load_ctx, "glGetActiveUniformName")) |proc| {
        function_pointers.glGetActiveUniformName = @ptrCast(?function_signatures.glGetActiveUniformName, proc);
    } else {
        log.emerg("entry point glGetActiveUniformName not found!", .{});
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
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glCullFace = fn (mode: GLenum) void;
    const glFrontFace = fn (mode: GLenum) void;
    const glHint = fn (target: GLenum, mode: GLenum) void;
    const glLineWidth = fn (width: GLfloat) void;
    const glPointSize = fn (size: GLfloat) void;
    const glPolygonMode = fn (face: GLenum, mode: GLenum) void;
    const glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glTexParameterf = fn (target: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTexParameteri = fn (target: GLenum, pname: GLenum, param: GLint) void;
    const glTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexImage1D = fn (target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glDrawBuffer = fn (buf: GLenum) void;
    const glClear = fn (mask: GLbitfield) void;
    const glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glClearStencil = fn (s: GLint) void;
    const glClearDepth = fn (depth: GLdouble) void;
    const glStencilMask = fn (mask: GLuint) void;
    const glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void;
    const glDepthMask = fn (flag: GLboolean) void;
    const glDisable = fn (cap: GLenum) void;
    const glEnable = fn (cap: GLenum) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glBlendFunc = fn (sfactor: GLenum, dfactor: GLenum) void;
    const glLogicOp = fn (opcode: GLenum) void;
    const glStencilFunc = fn (func: GLenum, ref: GLint, mask: GLuint) void;
    const glStencilOp = fn (fail: GLenum, zfail: GLenum, zpass: GLenum) void;
    const glDepthFunc = fn (func: GLenum) void;
    const glPixelStoref = fn (pname: GLenum, param: GLfloat) void;
    const glPixelStorei = fn (pname: GLenum, param: GLint) void;
    const glReadBuffer = fn (src: GLenum) void;
    const glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void;
    const glGetBooleanv = fn (pname: GLenum, data: [*c]GLboolean) void;
    const glGetDoublev = fn (pname: GLenum, data: [*c]GLdouble) void;
    const glGetError = fn () GLenum;
    const glGetFloatv = fn (pname: GLenum, data: [*c]GLfloat) void;
    const glGetIntegerv = fn (pname: GLenum, data: [*c]GLint) void;
    const glGetString = fn (name: GLenum) [*:0]const GLubyte;
    const glGetTexImage = fn (target: GLenum, level: GLint, format: GLenum, type: GLenum, pixels: *c_void) void;
    const glGetTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetTexLevelParameterfv = fn (target: GLenum, level: GLint, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexLevelParameteriv = fn (target: GLenum, level: GLint, pname: GLenum, params: [*c]GLint) void;
    const glIsEnabled = fn (cap: GLenum) GLboolean;
    const glDepthRange = fn (n: GLdouble, f: GLdouble) void;
    const glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glNewList = fn (list: GLuint, mode: GLenum) void;
    const glEndList = fn () void;
    const glCallList = fn (list: GLuint) void;
    const glCallLists = fn (n: GLsizei, type: GLenum, lists: *const c_void) void;
    const glDeleteLists = fn (list: GLuint, range: GLsizei) void;
    const glGenLists = fn (range: GLsizei) GLuint;
    const glListBase = fn (base: GLuint) void;
    const glBegin = fn (mode: GLenum) void;
    const glBitmap = fn (width: GLsizei, height: GLsizei, xorig: GLfloat, yorig: GLfloat, xmove: GLfloat, ymove: GLfloat, bitmap: [*:0]const GLubyte) void;
    const glColor3b = fn (red: GLbyte, green: GLbyte, blue: GLbyte) void;
    const glColor3bv = fn (v: [*c]const GLbyte) void;
    const glColor3d = fn (red: GLdouble, green: GLdouble, blue: GLdouble) void;
    const glColor3dv = fn (v: [*c]const GLdouble) void;
    const glColor3f = fn (red: GLfloat, green: GLfloat, blue: GLfloat) void;
    const glColor3fv = fn (v: [*c]const GLfloat) void;
    const glColor3i = fn (red: GLint, green: GLint, blue: GLint) void;
    const glColor3iv = fn (v: [*c]const GLint) void;
    const glColor3s = fn (red: GLshort, green: GLshort, blue: GLshort) void;
    const glColor3sv = fn (v: [*c]const GLshort) void;
    const glColor3ub = fn (red: GLubyte, green: GLubyte, blue: GLubyte) void;
    const glColor3ubv = fn (v: [*:0]const GLubyte) void;
    const glColor3ui = fn (red: GLuint, green: GLuint, blue: GLuint) void;
    const glColor3uiv = fn (v: [*c]const GLuint) void;
    const glColor3us = fn (red: GLushort, green: GLushort, blue: GLushort) void;
    const glColor3usv = fn (v: [*c]const GLushort) void;
    const glColor4b = fn (red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) void;
    const glColor4bv = fn (v: [*c]const GLbyte) void;
    const glColor4d = fn (red: GLdouble, green: GLdouble, blue: GLdouble, alpha: GLdouble) void;
    const glColor4dv = fn (v: [*c]const GLdouble) void;
    const glColor4f = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glColor4fv = fn (v: [*c]const GLfloat) void;
    const glColor4i = fn (red: GLint, green: GLint, blue: GLint, alpha: GLint) void;
    const glColor4iv = fn (v: [*c]const GLint) void;
    const glColor4s = fn (red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) void;
    const glColor4sv = fn (v: [*c]const GLshort) void;
    const glColor4ub = fn (red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void;
    const glColor4ubv = fn (v: [*:0]const GLubyte) void;
    const glColor4ui = fn (red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) void;
    const glColor4uiv = fn (v: [*c]const GLuint) void;
    const glColor4us = fn (red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) void;
    const glColor4usv = fn (v: [*c]const GLushort) void;
    const glEdgeFlag = fn (flag: GLboolean) void;
    const glEdgeFlagv = fn (flag: [*c]const GLboolean) void;
    const glEnd = fn () void;
    const glIndexd = fn (c: GLdouble) void;
    const glIndexdv = fn (c: [*c]const GLdouble) void;
    const glIndexf = fn (c: GLfloat) void;
    const glIndexfv = fn (c: [*c]const GLfloat) void;
    const glIndexi = fn (c: GLint) void;
    const glIndexiv = fn (c: [*c]const GLint) void;
    const glIndexs = fn (c: GLshort) void;
    const glIndexsv = fn (c: [*c]const GLshort) void;
    const glNormal3b = fn (nx: GLbyte, ny: GLbyte, nz: GLbyte) void;
    const glNormal3bv = fn (v: [*c]const GLbyte) void;
    const glNormal3d = fn (nx: GLdouble, ny: GLdouble, nz: GLdouble) void;
    const glNormal3dv = fn (v: [*c]const GLdouble) void;
    const glNormal3f = fn (nx: GLfloat, ny: GLfloat, nz: GLfloat) void;
    const glNormal3fv = fn (v: [*c]const GLfloat) void;
    const glNormal3i = fn (nx: GLint, ny: GLint, nz: GLint) void;
    const glNormal3iv = fn (v: [*c]const GLint) void;
    const glNormal3s = fn (nx: GLshort, ny: GLshort, nz: GLshort) void;
    const glNormal3sv = fn (v: [*c]const GLshort) void;
    const glRasterPos2d = fn (x: GLdouble, y: GLdouble) void;
    const glRasterPos2dv = fn (v: [*c]const GLdouble) void;
    const glRasterPos2f = fn (x: GLfloat, y: GLfloat) void;
    const glRasterPos2fv = fn (v: [*c]const GLfloat) void;
    const glRasterPos2i = fn (x: GLint, y: GLint) void;
    const glRasterPos2iv = fn (v: [*c]const GLint) void;
    const glRasterPos2s = fn (x: GLshort, y: GLshort) void;
    const glRasterPos2sv = fn (v: [*c]const GLshort) void;
    const glRasterPos3d = fn (x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glRasterPos3dv = fn (v: [*c]const GLdouble) void;
    const glRasterPos3f = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glRasterPos3fv = fn (v: [*c]const GLfloat) void;
    const glRasterPos3i = fn (x: GLint, y: GLint, z: GLint) void;
    const glRasterPos3iv = fn (v: [*c]const GLint) void;
    const glRasterPos3s = fn (x: GLshort, y: GLshort, z: GLshort) void;
    const glRasterPos3sv = fn (v: [*c]const GLshort) void;
    const glRasterPos4d = fn (x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void;
    const glRasterPos4dv = fn (v: [*c]const GLdouble) void;
    const glRasterPos4f = fn (x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
    const glRasterPos4fv = fn (v: [*c]const GLfloat) void;
    const glRasterPos4i = fn (x: GLint, y: GLint, z: GLint, w: GLint) void;
    const glRasterPos4iv = fn (v: [*c]const GLint) void;
    const glRasterPos4s = fn (x: GLshort, y: GLshort, z: GLshort, w: GLshort) void;
    const glRasterPos4sv = fn (v: [*c]const GLshort) void;
    const glRectd = fn (x1: GLdouble, y1: GLdouble, x2: GLdouble, y2: GLdouble) void;
    const glRectdv = fn (v1: [*c]const GLdouble, v2: [*c]const GLdouble) void;
    const glRectf = fn (x1: GLfloat, y1: GLfloat, x2: GLfloat, y2: GLfloat) void;
    const glRectfv = fn (v1: [*c]const GLfloat, v2: [*c]const GLfloat) void;
    const glRecti = fn (x1: GLint, y1: GLint, x2: GLint, y2: GLint) void;
    const glRectiv = fn (v1: [*c]const GLint, v2: [*c]const GLint) void;
    const glRects = fn (x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) void;
    const glRectsv = fn (v1: [*c]const GLshort, v2: [*c]const GLshort) void;
    const glTexCoord1d = fn (s: GLdouble) void;
    const glTexCoord1dv = fn (v: [*c]const GLdouble) void;
    const glTexCoord1f = fn (s: GLfloat) void;
    const glTexCoord1fv = fn (v: [*c]const GLfloat) void;
    const glTexCoord1i = fn (s: GLint) void;
    const glTexCoord1iv = fn (v: [*c]const GLint) void;
    const glTexCoord1s = fn (s: GLshort) void;
    const glTexCoord1sv = fn (v: [*c]const GLshort) void;
    const glTexCoord2d = fn (s: GLdouble, t: GLdouble) void;
    const glTexCoord2dv = fn (v: [*c]const GLdouble) void;
    const glTexCoord2f = fn (s: GLfloat, t: GLfloat) void;
    const glTexCoord2fv = fn (v: [*c]const GLfloat) void;
    const glTexCoord2i = fn (s: GLint, t: GLint) void;
    const glTexCoord2iv = fn (v: [*c]const GLint) void;
    const glTexCoord2s = fn (s: GLshort, t: GLshort) void;
    const glTexCoord2sv = fn (v: [*c]const GLshort) void;
    const glTexCoord3d = fn (s: GLdouble, t: GLdouble, r: GLdouble) void;
    const glTexCoord3dv = fn (v: [*c]const GLdouble) void;
    const glTexCoord3f = fn (s: GLfloat, t: GLfloat, r: GLfloat) void;
    const glTexCoord3fv = fn (v: [*c]const GLfloat) void;
    const glTexCoord3i = fn (s: GLint, t: GLint, r: GLint) void;
    const glTexCoord3iv = fn (v: [*c]const GLint) void;
    const glTexCoord3s = fn (s: GLshort, t: GLshort, r: GLshort) void;
    const glTexCoord3sv = fn (v: [*c]const GLshort) void;
    const glTexCoord4d = fn (s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void;
    const glTexCoord4dv = fn (v: [*c]const GLdouble) void;
    const glTexCoord4f = fn (s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void;
    const glTexCoord4fv = fn (v: [*c]const GLfloat) void;
    const glTexCoord4i = fn (s: GLint, t: GLint, r: GLint, q: GLint) void;
    const glTexCoord4iv = fn (v: [*c]const GLint) void;
    const glTexCoord4s = fn (s: GLshort, t: GLshort, r: GLshort, q: GLshort) void;
    const glTexCoord4sv = fn (v: [*c]const GLshort) void;
    const glVertex2d = fn (x: GLdouble, y: GLdouble) void;
    const glVertex2dv = fn (v: [*c]const GLdouble) void;
    const glVertex2f = fn (x: GLfloat, y: GLfloat) void;
    const glVertex2fv = fn (v: [*c]const GLfloat) void;
    const glVertex2i = fn (x: GLint, y: GLint) void;
    const glVertex2iv = fn (v: [*c]const GLint) void;
    const glVertex2s = fn (x: GLshort, y: GLshort) void;
    const glVertex2sv = fn (v: [*c]const GLshort) void;
    const glVertex3d = fn (x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glVertex3dv = fn (v: [*c]const GLdouble) void;
    const glVertex3f = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glVertex3fv = fn (v: [*c]const GLfloat) void;
    const glVertex3i = fn (x: GLint, y: GLint, z: GLint) void;
    const glVertex3iv = fn (v: [*c]const GLint) void;
    const glVertex3s = fn (x: GLshort, y: GLshort, z: GLshort) void;
    const glVertex3sv = fn (v: [*c]const GLshort) void;
    const glVertex4d = fn (x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void;
    const glVertex4dv = fn (v: [*c]const GLdouble) void;
    const glVertex4f = fn (x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
    const glVertex4fv = fn (v: [*c]const GLfloat) void;
    const glVertex4i = fn (x: GLint, y: GLint, z: GLint, w: GLint) void;
    const glVertex4iv = fn (v: [*c]const GLint) void;
    const glVertex4s = fn (x: GLshort, y: GLshort, z: GLshort, w: GLshort) void;
    const glVertex4sv = fn (v: [*c]const GLshort) void;
    const glClipPlane = fn (plane: GLenum, equation: [*c]const GLdouble) void;
    const glColorMaterial = fn (face: GLenum, mode: GLenum) void;
    const glFogf = fn (pname: GLenum, param: GLfloat) void;
    const glFogfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glFogi = fn (pname: GLenum, param: GLint) void;
    const glFogiv = fn (pname: GLenum, params: [*c]const GLint) void;
    const glLightf = fn (light: GLenum, pname: GLenum, param: GLfloat) void;
    const glLightfv = fn (light: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glLighti = fn (light: GLenum, pname: GLenum, param: GLint) void;
    const glLightiv = fn (light: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glLightModelf = fn (pname: GLenum, param: GLfloat) void;
    const glLightModelfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glLightModeli = fn (pname: GLenum, param: GLint) void;
    const glLightModeliv = fn (pname: GLenum, params: [*c]const GLint) void;
    const glLineStipple = fn (factor: GLint, pattern: GLushort) void;
    const glMaterialf = fn (face: GLenum, pname: GLenum, param: GLfloat) void;
    const glMaterialfv = fn (face: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glMateriali = fn (face: GLenum, pname: GLenum, param: GLint) void;
    const glMaterialiv = fn (face: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glPolygonStipple = fn (mask: [*:0]const GLubyte) void;
    const glShadeModel = fn (mode: GLenum) void;
    const glTexEnvf = fn (target: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexEnvfv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTexEnvi = fn (target: GLenum, pname: GLenum, param: GLint) void;
    const glTexEnviv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexGend = fn (coord: GLenum, pname: GLenum, param: GLdouble) void;
    const glTexGendv = fn (coord: GLenum, pname: GLenum, params: [*c]const GLdouble) void;
    const glTexGenf = fn (coord: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexGenfv = fn (coord: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTexGeni = fn (coord: GLenum, pname: GLenum, param: GLint) void;
    const glTexGeniv = fn (coord: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glFeedbackBuffer = fn (size: GLsizei, type: GLenum, buffer: [*c]GLfloat) void;
    const glSelectBuffer = fn (size: GLsizei, buffer: [*c]GLuint) void;
    const glRenderMode = fn (mode: GLenum) GLint;
    const glInitNames = fn () void;
    const glLoadName = fn (name: GLuint) void;
    const glPassThrough = fn (token: GLfloat) void;
    const glPopName = fn () void;
    const glPushName = fn (name: GLuint) void;
    const glClearAccum = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glClearIndex = fn (c: GLfloat) void;
    const glIndexMask = fn (mask: GLuint) void;
    const glAccum = fn (op: GLenum, value: GLfloat) void;
    const glPopAttrib = fn () void;
    const glPushAttrib = fn (mask: GLbitfield) void;
    const glMap1d = fn (target: GLenum, u1: GLdouble, u2: GLdouble, stride: GLint, order: GLint, points: [*c]const GLdouble) void;
    const glMap1f = fn (target: GLenum, u1: GLfloat, u2: GLfloat, stride: GLint, order: GLint, points: [*c]const GLfloat) void;
    const glMap2d = fn (target: GLenum, u1: GLdouble, u2: GLdouble, ustride: GLint, uorder: GLint, v1: GLdouble, v2: GLdouble, vstride: GLint, vorder: GLint, points: [*c]const GLdouble) void;
    const glMap2f = fn (target: GLenum, u1: GLfloat, u2: GLfloat, ustride: GLint, uorder: GLint, v1: GLfloat, v2: GLfloat, vstride: GLint, vorder: GLint, points: [*c]const GLfloat) void;
    const glMapGrid1d = fn (un: GLint, u1: GLdouble, u2: GLdouble) void;
    const glMapGrid1f = fn (un: GLint, u1: GLfloat, u2: GLfloat) void;
    const glMapGrid2d = fn (un: GLint, u1: GLdouble, u2: GLdouble, vn: GLint, v1: GLdouble, v2: GLdouble) void;
    const glMapGrid2f = fn (un: GLint, u1: GLfloat, u2: GLfloat, vn: GLint, v1: GLfloat, v2: GLfloat) void;
    const glEvalCoord1d = fn (u: GLdouble) void;
    const glEvalCoord1dv = fn (u: [*c]const GLdouble) void;
    const glEvalCoord1f = fn (u: GLfloat) void;
    const glEvalCoord1fv = fn (u: [*c]const GLfloat) void;
    const glEvalCoord2d = fn (u: GLdouble, v: GLdouble) void;
    const glEvalCoord2dv = fn (u: [*c]const GLdouble) void;
    const glEvalCoord2f = fn (u: GLfloat, v: GLfloat) void;
    const glEvalCoord2fv = fn (u: [*c]const GLfloat) void;
    const glEvalMesh1 = fn (mode: GLenum, i1: GLint, i2: GLint) void;
    const glEvalPoint1 = fn (i: GLint) void;
    const glEvalMesh2 = fn (mode: GLenum, i1: GLint, i2: GLint, j1: GLint, j2: GLint) void;
    const glEvalPoint2 = fn (i: GLint, j: GLint) void;
    const glAlphaFunc = fn (func: GLenum, ref: GLfloat) void;
    const glPixelZoom = fn (xfactor: GLfloat, yfactor: GLfloat) void;
    const glPixelTransferf = fn (pname: GLenum, param: GLfloat) void;
    const glPixelTransferi = fn (pname: GLenum, param: GLint) void;
    const glPixelMapfv = fn (map: GLenum, mapsize: GLsizei, values: [*c]const GLfloat) void;
    const glPixelMapuiv = fn (map: GLenum, mapsize: GLsizei, values: [*c]const GLuint) void;
    const glPixelMapusv = fn (map: GLenum, mapsize: GLsizei, values: [*c]const GLushort) void;
    const glCopyPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, type: GLenum) void;
    const glDrawPixels = fn (width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glGetClipPlane = fn (plane: GLenum, equation: [*c]GLdouble) void;
    const glGetLightfv = fn (light: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetLightiv = fn (light: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetMapdv = fn (target: GLenum, query: GLenum, v: [*c]GLdouble) void;
    const glGetMapfv = fn (target: GLenum, query: GLenum, v: [*c]GLfloat) void;
    const glGetMapiv = fn (target: GLenum, query: GLenum, v: [*c]GLint) void;
    const glGetMaterialfv = fn (face: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetMaterialiv = fn (face: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetPixelMapfv = fn (map: GLenum, values: [*c]GLfloat) void;
    const glGetPixelMapuiv = fn (map: GLenum, values: [*c]GLuint) void;
    const glGetPixelMapusv = fn (map: GLenum, values: [*c]GLushort) void;
    const glGetPolygonStipple = fn (mask: [*c]GLubyte) void;
    const glGetTexEnvfv = fn (target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexEnviv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetTexGendv = fn (coord: GLenum, pname: GLenum, params: [*c]GLdouble) void;
    const glGetTexGenfv = fn (coord: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexGeniv = fn (coord: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glIsList = fn (list: GLuint) GLboolean;
    const glFrustum = fn (left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void;
    const glLoadIdentity = fn () void;
    const glLoadMatrixf = fn (m: [*c]const GLfloat) void;
    const glLoadMatrixd = fn (m: [*c]const GLdouble) void;
    const glMatrixMode = fn (mode: GLenum) void;
    const glMultMatrixf = fn (m: [*c]const GLfloat) void;
    const glMultMatrixd = fn (m: [*c]const GLdouble) void;
    const glOrtho = fn (left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void;
    const glPopMatrix = fn () void;
    const glPushMatrix = fn () void;
    const glRotated = fn (angle: GLdouble, x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glRotatef = fn (angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glScaled = fn (x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glScalef = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glTranslated = fn (x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glTranslatef = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glDrawArrays = fn (mode: GLenum, first: GLint, count: GLsizei) void;
    const glDrawElements = fn (mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void;
    const glGetPointerv = fn (pname: GLenum, params: **c_void) void;
    const glPolygonOffset = fn (factor: GLfloat, units: GLfloat) void;
    const glCopyTexImage1D = fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) void;
    const glCopyTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void;
    const glCopyTexSubImage1D = fn (target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) void;
    const glCopyTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glTexSubImage1D = fn (target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glBindTexture = fn (target: GLenum, texture: GLuint) void;
    const glDeleteTextures = fn (n: GLsizei, textures: [*c]const GLuint) void;
    const glGenTextures = fn (n: GLsizei, textures: [*c]GLuint) void;
    const glIsTexture = fn (texture: GLuint) GLboolean;
    const glArrayElement = fn (i: GLint) void;
    const glColorPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glDisableClientState = fn (array: GLenum) void;
    const glEdgeFlagPointer = fn (stride: GLsizei, pointer: *const c_void) void;
    const glEnableClientState = fn (array: GLenum) void;
    const glIndexPointer = fn (type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glInterleavedArrays = fn (format: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glNormalPointer = fn (type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glTexCoordPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glVertexPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glAreTexturesResident = fn (n: GLsizei, textures: [*c]const GLuint, residences: [*c]GLboolean) GLboolean;
    const glPrioritizeTextures = fn (n: GLsizei, textures: [*c]const GLuint, priorities: [*c]const GLfloat) void;
    const glIndexub = fn (c: GLubyte) void;
    const glIndexubv = fn (c: [*:0]const GLubyte) void;
    const glPopClientAttrib = fn () void;
    const glPushClientAttrib = fn (mask: GLbitfield) void;
    const glDrawRangeElements = fn (mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, type: GLenum, indices: *const c_void) void;
    const glTexImage3D = fn (target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTexSubImage3D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glCopyTexSubImage3D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glActiveTexture = fn (texture: GLenum) void;
    const glSampleCoverage = fn (value: GLfloat, invert: GLboolean) void;
    const glCompressedTexImage3D = fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexImage1D = fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexSubImage3D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexSubImage1D = fn (target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void;
    const glGetCompressedTexImage = fn (target: GLenum, level: GLint, img: *c_void) void;
    const glClientActiveTexture = fn (texture: GLenum) void;
    const glMultiTexCoord1d = fn (target: GLenum, s: GLdouble) void;
    const glMultiTexCoord1dv = fn (target: GLenum, v: [*c]const GLdouble) void;
    const glMultiTexCoord1f = fn (target: GLenum, s: GLfloat) void;
    const glMultiTexCoord1fv = fn (target: GLenum, v: [*c]const GLfloat) void;
    const glMultiTexCoord1i = fn (target: GLenum, s: GLint) void;
    const glMultiTexCoord1iv = fn (target: GLenum, v: [*c]const GLint) void;
    const glMultiTexCoord1s = fn (target: GLenum, s: GLshort) void;
    const glMultiTexCoord1sv = fn (target: GLenum, v: [*c]const GLshort) void;
    const glMultiTexCoord2d = fn (target: GLenum, s: GLdouble, t: GLdouble) void;
    const glMultiTexCoord2dv = fn (target: GLenum, v: [*c]const GLdouble) void;
    const glMultiTexCoord2f = fn (target: GLenum, s: GLfloat, t: GLfloat) void;
    const glMultiTexCoord2fv = fn (target: GLenum, v: [*c]const GLfloat) void;
    const glMultiTexCoord2i = fn (target: GLenum, s: GLint, t: GLint) void;
    const glMultiTexCoord2iv = fn (target: GLenum, v: [*c]const GLint) void;
    const glMultiTexCoord2s = fn (target: GLenum, s: GLshort, t: GLshort) void;
    const glMultiTexCoord2sv = fn (target: GLenum, v: [*c]const GLshort) void;
    const glMultiTexCoord3d = fn (target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble) void;
    const glMultiTexCoord3dv = fn (target: GLenum, v: [*c]const GLdouble) void;
    const glMultiTexCoord3f = fn (target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat) void;
    const glMultiTexCoord3fv = fn (target: GLenum, v: [*c]const GLfloat) void;
    const glMultiTexCoord3i = fn (target: GLenum, s: GLint, t: GLint, r: GLint) void;
    const glMultiTexCoord3iv = fn (target: GLenum, v: [*c]const GLint) void;
    const glMultiTexCoord3s = fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort) void;
    const glMultiTexCoord3sv = fn (target: GLenum, v: [*c]const GLshort) void;
    const glMultiTexCoord4d = fn (target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void;
    const glMultiTexCoord4dv = fn (target: GLenum, v: [*c]const GLdouble) void;
    const glMultiTexCoord4f = fn (target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void;
    const glMultiTexCoord4fv = fn (target: GLenum, v: [*c]const GLfloat) void;
    const glMultiTexCoord4i = fn (target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) void;
    const glMultiTexCoord4iv = fn (target: GLenum, v: [*c]const GLint) void;
    const glMultiTexCoord4s = fn (target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) void;
    const glMultiTexCoord4sv = fn (target: GLenum, v: [*c]const GLshort) void;
    const glLoadTransposeMatrixf = fn (m: [*c]const GLfloat) void;
    const glLoadTransposeMatrixd = fn (m: [*c]const GLdouble) void;
    const glMultTransposeMatrixf = fn (m: [*c]const GLfloat) void;
    const glMultTransposeMatrixd = fn (m: [*c]const GLdouble) void;
    const glBlendFuncSeparate = fn (sfactorRGB: GLenum, dfactorRGB: GLenum, sfactorAlpha: GLenum, dfactorAlpha: GLenum) void;
    const glMultiDrawArrays = fn (mode: GLenum, first: [*c]const GLint, count: [*c]const GLsizei, drawcount: GLsizei) void;
    const glMultiDrawElements = fn (mode: GLenum, count: [*c]const GLsizei, type: GLenum, indices: [*c]const *const c_void, drawcount: GLsizei) void;
    const glPointParameterf = fn (pname: GLenum, param: GLfloat) void;
    const glPointParameterfv = fn (pname: GLenum, params: [*c]const GLfloat) void;
    const glPointParameteri = fn (pname: GLenum, param: GLint) void;
    const glPointParameteriv = fn (pname: GLenum, params: [*c]const GLint) void;
    const glFogCoordf = fn (coord: GLfloat) void;
    const glFogCoordfv = fn (coord: [*c]const GLfloat) void;
    const glFogCoordd = fn (coord: GLdouble) void;
    const glFogCoorddv = fn (coord: [*c]const GLdouble) void;
    const glFogCoordPointer = fn (type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glSecondaryColor3b = fn (red: GLbyte, green: GLbyte, blue: GLbyte) void;
    const glSecondaryColor3bv = fn (v: [*c]const GLbyte) void;
    const glSecondaryColor3d = fn (red: GLdouble, green: GLdouble, blue: GLdouble) void;
    const glSecondaryColor3dv = fn (v: [*c]const GLdouble) void;
    const glSecondaryColor3f = fn (red: GLfloat, green: GLfloat, blue: GLfloat) void;
    const glSecondaryColor3fv = fn (v: [*c]const GLfloat) void;
    const glSecondaryColor3i = fn (red: GLint, green: GLint, blue: GLint) void;
    const glSecondaryColor3iv = fn (v: [*c]const GLint) void;
    const glSecondaryColor3s = fn (red: GLshort, green: GLshort, blue: GLshort) void;
    const glSecondaryColor3sv = fn (v: [*c]const GLshort) void;
    const glSecondaryColor3ub = fn (red: GLubyte, green: GLubyte, blue: GLubyte) void;
    const glSecondaryColor3ubv = fn (v: [*:0]const GLubyte) void;
    const glSecondaryColor3ui = fn (red: GLuint, green: GLuint, blue: GLuint) void;
    const glSecondaryColor3uiv = fn (v: [*c]const GLuint) void;
    const glSecondaryColor3us = fn (red: GLushort, green: GLushort, blue: GLushort) void;
    const glSecondaryColor3usv = fn (v: [*c]const GLushort) void;
    const glSecondaryColorPointer = fn (size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glWindowPos2d = fn (x: GLdouble, y: GLdouble) void;
    const glWindowPos2dv = fn (v: [*c]const GLdouble) void;
    const glWindowPos2f = fn (x: GLfloat, y: GLfloat) void;
    const glWindowPos2fv = fn (v: [*c]const GLfloat) void;
    const glWindowPos2i = fn (x: GLint, y: GLint) void;
    const glWindowPos2iv = fn (v: [*c]const GLint) void;
    const glWindowPos2s = fn (x: GLshort, y: GLshort) void;
    const glWindowPos2sv = fn (v: [*c]const GLshort) void;
    const glWindowPos3d = fn (x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glWindowPos3dv = fn (v: [*c]const GLdouble) void;
    const glWindowPos3f = fn (x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glWindowPos3fv = fn (v: [*c]const GLfloat) void;
    const glWindowPos3i = fn (x: GLint, y: GLint, z: GLint) void;
    const glWindowPos3iv = fn (v: [*c]const GLint) void;
    const glWindowPos3s = fn (x: GLshort, y: GLshort, z: GLshort) void;
    const glWindowPos3sv = fn (v: [*c]const GLshort) void;
    const glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glBlendEquation = fn (mode: GLenum) void;
    const glGenQueries = fn (n: GLsizei, ids: [*c]GLuint) void;
    const glDeleteQueries = fn (n: GLsizei, ids: [*c]const GLuint) void;
    const glIsQuery = fn (id: GLuint) GLboolean;
    const glBeginQuery = fn (target: GLenum, id: GLuint) void;
    const glEndQuery = fn (target: GLenum) void;
    const glGetQueryiv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetQueryObjectiv = fn (id: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetQueryObjectuiv = fn (id: GLuint, pname: GLenum, params: [*c]GLuint) void;
    const glBindBuffer = fn (target: GLenum, buffer: GLuint) void;
    const glDeleteBuffers = fn (n: GLsizei, buffers: [*c]const GLuint) void;
    const glGenBuffers = fn (n: GLsizei, buffers: [*c]GLuint) void;
    const glIsBuffer = fn (buffer: GLuint) GLboolean;
    const glBufferData = fn (target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void;
    const glBufferSubData = fn (target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void;
    const glGetBufferSubData = fn (target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *c_void) void;
    const glMapBuffer = fn (target: GLenum, access: GLenum) *c_void;
    const glUnmapBuffer = fn (target: GLenum) GLboolean;
    const glGetBufferParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetBufferPointerv = fn (target: GLenum, pname: GLenum, params: **c_void) void;
    const glBlendEquationSeparate = fn (modeRGB: GLenum, modeAlpha: GLenum) void;
    const glDrawBuffers = fn (n: GLsizei, bufs: [*c]const GLenum) void;
    const glStencilOpSeparate = fn (face: GLenum, sfail: GLenum, dpfail: GLenum, dppass: GLenum) void;
    const glStencilFuncSeparate = fn (face: GLenum, func: GLenum, ref: GLint, mask: GLuint) void;
    const glStencilMaskSeparate = fn (face: GLenum, mask: GLuint) void;
    const glAttachShader = fn (program: GLuint, shader: GLuint) void;
    const glBindAttribLocation = fn (program: GLuint, index: GLuint, name: [*c]const GLchar) void;
    const glCompileShader = fn (shader: GLuint) void;
    const glCreateProgram = fn () GLuint;
    const glCreateShader = fn (type: GLenum) GLuint;
    const glDeleteProgram = fn (program: GLuint) void;
    const glDeleteShader = fn (shader: GLuint) void;
    const glDetachShader = fn (program: GLuint, shader: GLuint) void;
    const glDisableVertexAttribArray = fn (index: GLuint) void;
    const glEnableVertexAttribArray = fn (index: GLuint) void;
    const glGetActiveAttrib = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void;
    const glGetActiveUniform = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void;
    const glGetAttachedShaders = fn (program: GLuint, maxCount: GLsizei, count: [*c]GLsizei, shaders: [*c]GLuint) void;
    const glGetAttribLocation = fn (program: GLuint, name: [*c]const GLchar) GLint;
    const glGetProgramiv = fn (program: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetProgramInfoLog = fn (program: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void;
    const glGetShaderiv = fn (shader: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetShaderInfoLog = fn (shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void;
    const glGetShaderSource = fn (shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, source: [*c]GLchar) void;
    const glGetUniformLocation = fn (program: GLuint, name: [*c]const GLchar) GLint;
    const glGetUniformfv = fn (program: GLuint, location: GLint, params: [*c]GLfloat) void;
    const glGetUniformiv = fn (program: GLuint, location: GLint, params: [*c]GLint) void;
    const glGetVertexAttribdv = fn (index: GLuint, pname: GLenum, params: [*c]GLdouble) void;
    const glGetVertexAttribfv = fn (index: GLuint, pname: GLenum, params: [*c]GLfloat) void;
    const glGetVertexAttribiv = fn (index: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetVertexAttribPointerv = fn (index: GLuint, pname: GLenum, pointer: **c_void) void;
    const glIsProgram = fn (program: GLuint) GLboolean;
    const glIsShader = fn (shader: GLuint) GLboolean;
    const glLinkProgram = fn (program: GLuint) void;
    const glShaderSource = fn (shader: GLuint, count: GLsizei, string: [*c]const [*c]const GLchar, length: [*c]const GLint) void;
    const glUseProgram = fn (program: GLuint) void;
    const glUniform1f = fn (location: GLint, v0: GLfloat) void;
    const glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat) void;
    const glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void;
    const glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void;
    const glUniform1i = fn (location: GLint, v0: GLint) void;
    const glUniform2i = fn (location: GLint, v0: GLint, v1: GLint) void;
    const glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint) void;
    const glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void;
    const glUniform1fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform2fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform3fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform4fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform1iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform2iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform3iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform4iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glValidateProgram = fn (program: GLuint) void;
    const glVertexAttrib1d = fn (index: GLuint, x: GLdouble) void;
    const glVertexAttrib1dv = fn (index: GLuint, v: [*c]const GLdouble) void;
    const glVertexAttrib1f = fn (index: GLuint, x: GLfloat) void;
    const glVertexAttrib1fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib1s = fn (index: GLuint, x: GLshort) void;
    const glVertexAttrib1sv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttrib2d = fn (index: GLuint, x: GLdouble, y: GLdouble) void;
    const glVertexAttrib2dv = fn (index: GLuint, v: [*c]const GLdouble) void;
    const glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat) void;
    const glVertexAttrib2fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib2s = fn (index: GLuint, x: GLshort, y: GLshort) void;
    const glVertexAttrib2sv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttrib3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) void;
    const glVertexAttrib3dv = fn (index: GLuint, v: [*c]const GLdouble) void;
    const glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glVertexAttrib3fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib3s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort) void;
    const glVertexAttrib3sv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttrib4Nbv = fn (index: GLuint, v: [*c]const GLbyte) void;
    const glVertexAttrib4Niv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttrib4Nsv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttrib4Nub = fn (index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) void;
    const glVertexAttrib4Nubv = fn (index: GLuint, v: [*:0]const GLubyte) void;
    const glVertexAttrib4Nuiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttrib4Nusv = fn (index: GLuint, v: [*c]const GLushort) void;
    const glVertexAttrib4bv = fn (index: GLuint, v: [*c]const GLbyte) void;
    const glVertexAttrib4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void;
    const glVertexAttrib4dv = fn (index: GLuint, v: [*c]const GLdouble) void;
    const glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
    const glVertexAttrib4fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib4iv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttrib4s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) void;
    const glVertexAttrib4sv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttrib4ubv = fn (index: GLuint, v: [*:0]const GLubyte) void;
    const glVertexAttrib4uiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttrib4usv = fn (index: GLuint, v: [*c]const GLushort) void;
    const glVertexAttribPointer = fn (index: GLuint, size: GLint, type: GLenum, normalized: GLboolean, stride: GLsizei, pointer: *const c_void) void;
    const glUniformMatrix2x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix3x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix2x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix4x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix3x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix4x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glColorMaski = fn (index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean) void;
    const glGetBooleani_v = fn (target: GLenum, index: GLuint, data: [*c]GLboolean) void;
    const glGetIntegeri_v = fn (target: GLenum, index: GLuint, data: [*c]GLint) void;
    const glEnablei = fn (target: GLenum, index: GLuint) void;
    const glDisablei = fn (target: GLenum, index: GLuint) void;
    const glIsEnabledi = fn (target: GLenum, index: GLuint) GLboolean;
    const glBeginTransformFeedback = fn (primitiveMode: GLenum) void;
    const glEndTransformFeedback = fn () void;
    const glBindBufferRange = fn (target: GLenum, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void;
    const glBindBufferBase = fn (target: GLenum, index: GLuint, buffer: GLuint) void;
    const glTransformFeedbackVaryings = fn (program: GLuint, count: GLsizei, varyings: [*c]const [*c]const GLchar, bufferMode: GLenum) void;
    const glGetTransformFeedbackVarying = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLsizei, type: [*c]GLenum, name: [*c]GLchar) void;
    const glClampColor = fn (target: GLenum, clamp: GLenum) void;
    const glBeginConditionalRender = fn (id: GLuint, mode: GLenum) void;
    const glEndConditionalRender = fn () void;
    const glVertexAttribIPointer = fn (index: GLuint, size: GLint, type: GLenum, stride: GLsizei, pointer: *const c_void) void;
    const glGetVertexAttribIiv = fn (index: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetVertexAttribIuiv = fn (index: GLuint, pname: GLenum, params: [*c]GLuint) void;
    const glVertexAttribI1i = fn (index: GLuint, x: GLint) void;
    const glVertexAttribI2i = fn (index: GLuint, x: GLint, y: GLint) void;
    const glVertexAttribI3i = fn (index: GLuint, x: GLint, y: GLint, z: GLint) void;
    const glVertexAttribI4i = fn (index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) void;
    const glVertexAttribI1ui = fn (index: GLuint, x: GLuint) void;
    const glVertexAttribI2ui = fn (index: GLuint, x: GLuint, y: GLuint) void;
    const glVertexAttribI3ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint) void;
    const glVertexAttribI4ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) void;
    const glVertexAttribI1iv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttribI2iv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttribI3iv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttribI4iv = fn (index: GLuint, v: [*c]const GLint) void;
    const glVertexAttribI1uiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttribI2uiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttribI3uiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttribI4uiv = fn (index: GLuint, v: [*c]const GLuint) void;
    const glVertexAttribI4bv = fn (index: GLuint, v: [*c]const GLbyte) void;
    const glVertexAttribI4sv = fn (index: GLuint, v: [*c]const GLshort) void;
    const glVertexAttribI4ubv = fn (index: GLuint, v: [*:0]const GLubyte) void;
    const glVertexAttribI4usv = fn (index: GLuint, v: [*c]const GLushort) void;
    const glGetUniformuiv = fn (program: GLuint, location: GLint, params: [*c]GLuint) void;
    const glBindFragDataLocation = fn (program: GLuint, color: GLuint, name: [*c]const GLchar) void;
    const glGetFragDataLocation = fn (program: GLuint, name: [*c]const GLchar) GLint;
    const glUniform1ui = fn (location: GLint, v0: GLuint) void;
    const glUniform2ui = fn (location: GLint, v0: GLuint, v1: GLuint) void;
    const glUniform3ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) void;
    const glUniform4ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) void;
    const glUniform1uiv = fn (location: GLint, count: GLsizei, value: [*c]const GLuint) void;
    const glUniform2uiv = fn (location: GLint, count: GLsizei, value: [*c]const GLuint) void;
    const glUniform3uiv = fn (location: GLint, count: GLsizei, value: [*c]const GLuint) void;
    const glUniform4uiv = fn (location: GLint, count: GLsizei, value: [*c]const GLuint) void;
    const glTexParameterIiv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexParameterIuiv = fn (target: GLenum, pname: GLenum, params: [*c]const GLuint) void;
    const glGetTexParameterIiv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetTexParameterIuiv = fn (target: GLenum, pname: GLenum, params: [*c]GLuint) void;
    const glClearBufferiv = fn (buffer: GLenum, drawbuffer: GLint, value: [*c]const GLint) void;
    const glClearBufferuiv = fn (buffer: GLenum, drawbuffer: GLint, value: [*c]const GLuint) void;
    const glClearBufferfv = fn (buffer: GLenum, drawbuffer: GLint, value: [*c]const GLfloat) void;
    const glClearBufferfi = fn (buffer: GLenum, drawbuffer: GLint, depth: GLfloat, stencil: GLint) void;
    const glGetStringi = fn (name: GLenum, index: GLuint) [*:0]const GLubyte;
    const glIsRenderbuffer = fn (renderbuffer: GLuint) GLboolean;
    const glBindRenderbuffer = fn (target: GLenum, renderbuffer: GLuint) void;
    const glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: [*c]const GLuint) void;
    const glGenRenderbuffers = fn (n: GLsizei, renderbuffers: [*c]GLuint) void;
    const glRenderbufferStorage = fn (target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) void;
    const glGetRenderbufferParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glIsFramebuffer = fn (framebuffer: GLuint) GLboolean;
    const glBindFramebuffer = fn (target: GLenum, framebuffer: GLuint) void;
    const glDeleteFramebuffers = fn (n: GLsizei, framebuffers: [*c]const GLuint) void;
    const glGenFramebuffers = fn (n: GLsizei, framebuffers: [*c]GLuint) void;
    const glCheckFramebufferStatus = fn (target: GLenum) GLenum;
    const glFramebufferTexture1D = fn (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void;
    const glFramebufferTexture2D = fn (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void;
    const glFramebufferTexture3D = fn (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint, zoffset: GLint) void;
    const glFramebufferRenderbuffer = fn (target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void;
    const glGetFramebufferAttachmentParameteriv = fn (target: GLenum, attachment: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGenerateMipmap = fn (target: GLenum) void;
    const glBlitFramebuffer = fn (srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: GLbitfield, filter: GLenum) void;
    const glRenderbufferStorageMultisample = fn (target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void;
    const glFramebufferTextureLayer = fn (target: GLenum, attachment: GLenum, texture: GLuint, level: GLint, layer: GLint) void;
    const glMapBufferRange = fn (target: GLenum, offset: GLintptr, length: GLsizeiptr, access: GLbitfield) *c_void;
    const glFlushMappedBufferRange = fn (target: GLenum, offset: GLintptr, length: GLsizeiptr) void;
    const glBindVertexArray = fn (array: GLuint) void;
    const glDeleteVertexArrays = fn (n: GLsizei, arrays: [*c]const GLuint) void;
    const glGenVertexArrays = fn (n: GLsizei, arrays: [*c]GLuint) void;
    const glIsVertexArray = fn (array: GLuint) GLboolean;
    const glDrawArraysInstanced = fn (mode: GLenum, first: GLint, count: GLsizei, instancecount: GLsizei) void;
    const glDrawElementsInstanced = fn (mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void, instancecount: GLsizei) void;
    const glTexBuffer = fn (target: GLenum, internalformat: GLenum, buffer: GLuint) void;
    const glPrimitiveRestartIndex = fn (index: GLuint) void;
    const glCopyBufferSubData = fn (readTarget: GLenum, writeTarget: GLenum, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr) void;
    const glGetUniformIndices = fn (program: GLuint, uniformCount: GLsizei, uniformNames: [*c]const [*c]const GLchar, uniformIndices: [*c]GLuint) void;
    const glGetActiveUniformsiv = fn (program: GLuint, uniformCount: GLsizei, uniformIndices: [*c]const GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetActiveUniformName = fn (program: GLuint, uniformIndex: GLuint, bufSize: GLsizei, length: [*c]GLsizei, uniformName: [*c]GLchar) void;
    const glGetUniformBlockIndex = fn (program: GLuint, uniformBlockName: [*c]const GLchar) GLuint;
    const glGetActiveUniformBlockiv = fn (program: GLuint, uniformBlockIndex: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetActiveUniformBlockName = fn (program: GLuint, uniformBlockIndex: GLuint, bufSize: GLsizei, length: [*c]GLsizei, uniformBlockName: [*c]GLchar) void;
    const glUniformBlockBinding = fn (program: GLuint, uniformBlockIndex: GLuint, uniformBlockBinding: GLuint) void;
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
    var glGenQueries: ?function_signatures.glGenQueries = null;
    var glDeleteQueries: ?function_signatures.glDeleteQueries = null;
    var glIsQuery: ?function_signatures.glIsQuery = null;
    var glBeginQuery: ?function_signatures.glBeginQuery = null;
    var glEndQuery: ?function_signatures.glEndQuery = null;
    var glGetQueryiv: ?function_signatures.glGetQueryiv = null;
    var glGetQueryObjectiv: ?function_signatures.glGetQueryObjectiv = null;
    var glGetQueryObjectuiv: ?function_signatures.glGetQueryObjectuiv = null;
    var glBindBuffer: ?function_signatures.glBindBuffer = null;
    var glDeleteBuffers: ?function_signatures.glDeleteBuffers = null;
    var glGenBuffers: ?function_signatures.glGenBuffers = null;
    var glIsBuffer: ?function_signatures.glIsBuffer = null;
    var glBufferData: ?function_signatures.glBufferData = null;
    var glBufferSubData: ?function_signatures.glBufferSubData = null;
    var glGetBufferSubData: ?function_signatures.glGetBufferSubData = null;
    var glMapBuffer: ?function_signatures.glMapBuffer = null;
    var glUnmapBuffer: ?function_signatures.glUnmapBuffer = null;
    var glGetBufferParameteriv: ?function_signatures.glGetBufferParameteriv = null;
    var glGetBufferPointerv: ?function_signatures.glGetBufferPointerv = null;
    var glBlendEquationSeparate: ?function_signatures.glBlendEquationSeparate = null;
    var glDrawBuffers: ?function_signatures.glDrawBuffers = null;
    var glStencilOpSeparate: ?function_signatures.glStencilOpSeparate = null;
    var glStencilFuncSeparate: ?function_signatures.glStencilFuncSeparate = null;
    var glStencilMaskSeparate: ?function_signatures.glStencilMaskSeparate = null;
    var glAttachShader: ?function_signatures.glAttachShader = null;
    var glBindAttribLocation: ?function_signatures.glBindAttribLocation = null;
    var glCompileShader: ?function_signatures.glCompileShader = null;
    var glCreateProgram: ?function_signatures.glCreateProgram = null;
    var glCreateShader: ?function_signatures.glCreateShader = null;
    var glDeleteProgram: ?function_signatures.glDeleteProgram = null;
    var glDeleteShader: ?function_signatures.glDeleteShader = null;
    var glDetachShader: ?function_signatures.glDetachShader = null;
    var glDisableVertexAttribArray: ?function_signatures.glDisableVertexAttribArray = null;
    var glEnableVertexAttribArray: ?function_signatures.glEnableVertexAttribArray = null;
    var glGetActiveAttrib: ?function_signatures.glGetActiveAttrib = null;
    var glGetActiveUniform: ?function_signatures.glGetActiveUniform = null;
    var glGetAttachedShaders: ?function_signatures.glGetAttachedShaders = null;
    var glGetAttribLocation: ?function_signatures.glGetAttribLocation = null;
    var glGetProgramiv: ?function_signatures.glGetProgramiv = null;
    var glGetProgramInfoLog: ?function_signatures.glGetProgramInfoLog = null;
    var glGetShaderiv: ?function_signatures.glGetShaderiv = null;
    var glGetShaderInfoLog: ?function_signatures.glGetShaderInfoLog = null;
    var glGetShaderSource: ?function_signatures.glGetShaderSource = null;
    var glGetUniformLocation: ?function_signatures.glGetUniformLocation = null;
    var glGetUniformfv: ?function_signatures.glGetUniformfv = null;
    var glGetUniformiv: ?function_signatures.glGetUniformiv = null;
    var glGetVertexAttribdv: ?function_signatures.glGetVertexAttribdv = null;
    var glGetVertexAttribfv: ?function_signatures.glGetVertexAttribfv = null;
    var glGetVertexAttribiv: ?function_signatures.glGetVertexAttribiv = null;
    var glGetVertexAttribPointerv: ?function_signatures.glGetVertexAttribPointerv = null;
    var glIsProgram: ?function_signatures.glIsProgram = null;
    var glIsShader: ?function_signatures.glIsShader = null;
    var glLinkProgram: ?function_signatures.glLinkProgram = null;
    var glShaderSource: ?function_signatures.glShaderSource = null;
    var glUseProgram: ?function_signatures.glUseProgram = null;
    var glUniform1f: ?function_signatures.glUniform1f = null;
    var glUniform2f: ?function_signatures.glUniform2f = null;
    var glUniform3f: ?function_signatures.glUniform3f = null;
    var glUniform4f: ?function_signatures.glUniform4f = null;
    var glUniform1i: ?function_signatures.glUniform1i = null;
    var glUniform2i: ?function_signatures.glUniform2i = null;
    var glUniform3i: ?function_signatures.glUniform3i = null;
    var glUniform4i: ?function_signatures.glUniform4i = null;
    var glUniform1fv: ?function_signatures.glUniform1fv = null;
    var glUniform2fv: ?function_signatures.glUniform2fv = null;
    var glUniform3fv: ?function_signatures.glUniform3fv = null;
    var glUniform4fv: ?function_signatures.glUniform4fv = null;
    var glUniform1iv: ?function_signatures.glUniform1iv = null;
    var glUniform2iv: ?function_signatures.glUniform2iv = null;
    var glUniform3iv: ?function_signatures.glUniform3iv = null;
    var glUniform4iv: ?function_signatures.glUniform4iv = null;
    var glUniformMatrix2fv: ?function_signatures.glUniformMatrix2fv = null;
    var glUniformMatrix3fv: ?function_signatures.glUniformMatrix3fv = null;
    var glUniformMatrix4fv: ?function_signatures.glUniformMatrix4fv = null;
    var glValidateProgram: ?function_signatures.glValidateProgram = null;
    var glVertexAttrib1d: ?function_signatures.glVertexAttrib1d = null;
    var glVertexAttrib1dv: ?function_signatures.glVertexAttrib1dv = null;
    var glVertexAttrib1f: ?function_signatures.glVertexAttrib1f = null;
    var glVertexAttrib1fv: ?function_signatures.glVertexAttrib1fv = null;
    var glVertexAttrib1s: ?function_signatures.glVertexAttrib1s = null;
    var glVertexAttrib1sv: ?function_signatures.glVertexAttrib1sv = null;
    var glVertexAttrib2d: ?function_signatures.glVertexAttrib2d = null;
    var glVertexAttrib2dv: ?function_signatures.glVertexAttrib2dv = null;
    var glVertexAttrib2f: ?function_signatures.glVertexAttrib2f = null;
    var glVertexAttrib2fv: ?function_signatures.glVertexAttrib2fv = null;
    var glVertexAttrib2s: ?function_signatures.glVertexAttrib2s = null;
    var glVertexAttrib2sv: ?function_signatures.glVertexAttrib2sv = null;
    var glVertexAttrib3d: ?function_signatures.glVertexAttrib3d = null;
    var glVertexAttrib3dv: ?function_signatures.glVertexAttrib3dv = null;
    var glVertexAttrib3f: ?function_signatures.glVertexAttrib3f = null;
    var glVertexAttrib3fv: ?function_signatures.glVertexAttrib3fv = null;
    var glVertexAttrib3s: ?function_signatures.glVertexAttrib3s = null;
    var glVertexAttrib3sv: ?function_signatures.glVertexAttrib3sv = null;
    var glVertexAttrib4Nbv: ?function_signatures.glVertexAttrib4Nbv = null;
    var glVertexAttrib4Niv: ?function_signatures.glVertexAttrib4Niv = null;
    var glVertexAttrib4Nsv: ?function_signatures.glVertexAttrib4Nsv = null;
    var glVertexAttrib4Nub: ?function_signatures.glVertexAttrib4Nub = null;
    var glVertexAttrib4Nubv: ?function_signatures.glVertexAttrib4Nubv = null;
    var glVertexAttrib4Nuiv: ?function_signatures.glVertexAttrib4Nuiv = null;
    var glVertexAttrib4Nusv: ?function_signatures.glVertexAttrib4Nusv = null;
    var glVertexAttrib4bv: ?function_signatures.glVertexAttrib4bv = null;
    var glVertexAttrib4d: ?function_signatures.glVertexAttrib4d = null;
    var glVertexAttrib4dv: ?function_signatures.glVertexAttrib4dv = null;
    var glVertexAttrib4f: ?function_signatures.glVertexAttrib4f = null;
    var glVertexAttrib4fv: ?function_signatures.glVertexAttrib4fv = null;
    var glVertexAttrib4iv: ?function_signatures.glVertexAttrib4iv = null;
    var glVertexAttrib4s: ?function_signatures.glVertexAttrib4s = null;
    var glVertexAttrib4sv: ?function_signatures.glVertexAttrib4sv = null;
    var glVertexAttrib4ubv: ?function_signatures.glVertexAttrib4ubv = null;
    var glVertexAttrib4uiv: ?function_signatures.glVertexAttrib4uiv = null;
    var glVertexAttrib4usv: ?function_signatures.glVertexAttrib4usv = null;
    var glVertexAttribPointer: ?function_signatures.glVertexAttribPointer = null;
    var glUniformMatrix2x3fv: ?function_signatures.glUniformMatrix2x3fv = null;
    var glUniformMatrix3x2fv: ?function_signatures.glUniformMatrix3x2fv = null;
    var glUniformMatrix2x4fv: ?function_signatures.glUniformMatrix2x4fv = null;
    var glUniformMatrix4x2fv: ?function_signatures.glUniformMatrix4x2fv = null;
    var glUniformMatrix3x4fv: ?function_signatures.glUniformMatrix3x4fv = null;
    var glUniformMatrix4x3fv: ?function_signatures.glUniformMatrix4x3fv = null;
    var glColorMaski: ?function_signatures.glColorMaski = null;
    var glGetBooleani_v: ?function_signatures.glGetBooleani_v = null;
    var glGetIntegeri_v: ?function_signatures.glGetIntegeri_v = null;
    var glEnablei: ?function_signatures.glEnablei = null;
    var glDisablei: ?function_signatures.glDisablei = null;
    var glIsEnabledi: ?function_signatures.glIsEnabledi = null;
    var glBeginTransformFeedback: ?function_signatures.glBeginTransformFeedback = null;
    var glEndTransformFeedback: ?function_signatures.glEndTransformFeedback = null;
    var glBindBufferRange: ?function_signatures.glBindBufferRange = null;
    var glBindBufferBase: ?function_signatures.glBindBufferBase = null;
    var glTransformFeedbackVaryings: ?function_signatures.glTransformFeedbackVaryings = null;
    var glGetTransformFeedbackVarying: ?function_signatures.glGetTransformFeedbackVarying = null;
    var glClampColor: ?function_signatures.glClampColor = null;
    var glBeginConditionalRender: ?function_signatures.glBeginConditionalRender = null;
    var glEndConditionalRender: ?function_signatures.glEndConditionalRender = null;
    var glVertexAttribIPointer: ?function_signatures.glVertexAttribIPointer = null;
    var glGetVertexAttribIiv: ?function_signatures.glGetVertexAttribIiv = null;
    var glGetVertexAttribIuiv: ?function_signatures.glGetVertexAttribIuiv = null;
    var glVertexAttribI1i: ?function_signatures.glVertexAttribI1i = null;
    var glVertexAttribI2i: ?function_signatures.glVertexAttribI2i = null;
    var glVertexAttribI3i: ?function_signatures.glVertexAttribI3i = null;
    var glVertexAttribI4i: ?function_signatures.glVertexAttribI4i = null;
    var glVertexAttribI1ui: ?function_signatures.glVertexAttribI1ui = null;
    var glVertexAttribI2ui: ?function_signatures.glVertexAttribI2ui = null;
    var glVertexAttribI3ui: ?function_signatures.glVertexAttribI3ui = null;
    var glVertexAttribI4ui: ?function_signatures.glVertexAttribI4ui = null;
    var glVertexAttribI1iv: ?function_signatures.glVertexAttribI1iv = null;
    var glVertexAttribI2iv: ?function_signatures.glVertexAttribI2iv = null;
    var glVertexAttribI3iv: ?function_signatures.glVertexAttribI3iv = null;
    var glVertexAttribI4iv: ?function_signatures.glVertexAttribI4iv = null;
    var glVertexAttribI1uiv: ?function_signatures.glVertexAttribI1uiv = null;
    var glVertexAttribI2uiv: ?function_signatures.glVertexAttribI2uiv = null;
    var glVertexAttribI3uiv: ?function_signatures.glVertexAttribI3uiv = null;
    var glVertexAttribI4uiv: ?function_signatures.glVertexAttribI4uiv = null;
    var glVertexAttribI4bv: ?function_signatures.glVertexAttribI4bv = null;
    var glVertexAttribI4sv: ?function_signatures.glVertexAttribI4sv = null;
    var glVertexAttribI4ubv: ?function_signatures.glVertexAttribI4ubv = null;
    var glVertexAttribI4usv: ?function_signatures.glVertexAttribI4usv = null;
    var glGetUniformuiv: ?function_signatures.glGetUniformuiv = null;
    var glBindFragDataLocation: ?function_signatures.glBindFragDataLocation = null;
    var glGetFragDataLocation: ?function_signatures.glGetFragDataLocation = null;
    var glUniform1ui: ?function_signatures.glUniform1ui = null;
    var glUniform2ui: ?function_signatures.glUniform2ui = null;
    var glUniform3ui: ?function_signatures.glUniform3ui = null;
    var glUniform4ui: ?function_signatures.glUniform4ui = null;
    var glUniform1uiv: ?function_signatures.glUniform1uiv = null;
    var glUniform2uiv: ?function_signatures.glUniform2uiv = null;
    var glUniform3uiv: ?function_signatures.glUniform3uiv = null;
    var glUniform4uiv: ?function_signatures.glUniform4uiv = null;
    var glTexParameterIiv: ?function_signatures.glTexParameterIiv = null;
    var glTexParameterIuiv: ?function_signatures.glTexParameterIuiv = null;
    var glGetTexParameterIiv: ?function_signatures.glGetTexParameterIiv = null;
    var glGetTexParameterIuiv: ?function_signatures.glGetTexParameterIuiv = null;
    var glClearBufferiv: ?function_signatures.glClearBufferiv = null;
    var glClearBufferuiv: ?function_signatures.glClearBufferuiv = null;
    var glClearBufferfv: ?function_signatures.glClearBufferfv = null;
    var glClearBufferfi: ?function_signatures.glClearBufferfi = null;
    var glGetStringi: ?function_signatures.glGetStringi = null;
    var glIsRenderbuffer: ?function_signatures.glIsRenderbuffer = null;
    var glBindRenderbuffer: ?function_signatures.glBindRenderbuffer = null;
    var glDeleteRenderbuffers: ?function_signatures.glDeleteRenderbuffers = null;
    var glGenRenderbuffers: ?function_signatures.glGenRenderbuffers = null;
    var glRenderbufferStorage: ?function_signatures.glRenderbufferStorage = null;
    var glGetRenderbufferParameteriv: ?function_signatures.glGetRenderbufferParameteriv = null;
    var glIsFramebuffer: ?function_signatures.glIsFramebuffer = null;
    var glBindFramebuffer: ?function_signatures.glBindFramebuffer = null;
    var glDeleteFramebuffers: ?function_signatures.glDeleteFramebuffers = null;
    var glGenFramebuffers: ?function_signatures.glGenFramebuffers = null;
    var glCheckFramebufferStatus: ?function_signatures.glCheckFramebufferStatus = null;
    var glFramebufferTexture1D: ?function_signatures.glFramebufferTexture1D = null;
    var glFramebufferTexture2D: ?function_signatures.glFramebufferTexture2D = null;
    var glFramebufferTexture3D: ?function_signatures.glFramebufferTexture3D = null;
    var glFramebufferRenderbuffer: ?function_signatures.glFramebufferRenderbuffer = null;
    var glGetFramebufferAttachmentParameteriv: ?function_signatures.glGetFramebufferAttachmentParameteriv = null;
    var glGenerateMipmap: ?function_signatures.glGenerateMipmap = null;
    var glBlitFramebuffer: ?function_signatures.glBlitFramebuffer = null;
    var glRenderbufferStorageMultisample: ?function_signatures.glRenderbufferStorageMultisample = null;
    var glFramebufferTextureLayer: ?function_signatures.glFramebufferTextureLayer = null;
    var glMapBufferRange: ?function_signatures.glMapBufferRange = null;
    var glFlushMappedBufferRange: ?function_signatures.glFlushMappedBufferRange = null;
    var glBindVertexArray: ?function_signatures.glBindVertexArray = null;
    var glDeleteVertexArrays: ?function_signatures.glDeleteVertexArrays = null;
    var glGenVertexArrays: ?function_signatures.glGenVertexArrays = null;
    var glIsVertexArray: ?function_signatures.glIsVertexArray = null;
    var glDrawArraysInstanced: ?function_signatures.glDrawArraysInstanced = null;
    var glDrawElementsInstanced: ?function_signatures.glDrawElementsInstanced = null;
    var glTexBuffer: ?function_signatures.glTexBuffer = null;
    var glPrimitiveRestartIndex: ?function_signatures.glPrimitiveRestartIndex = null;
    var glCopyBufferSubData: ?function_signatures.glCopyBufferSubData = null;
    var glGetUniformIndices: ?function_signatures.glGetUniformIndices = null;
    var glGetActiveUniformsiv: ?function_signatures.glGetActiveUniformsiv = null;
    var glGetActiveUniformName: ?function_signatures.glGetActiveUniformName = null;
    var glGetUniformBlockIndex: ?function_signatures.glGetUniformBlockIndex = null;
    var glGetActiveUniformBlockiv: ?function_signatures.glGetActiveUniformBlockiv = null;
    var glGetActiveUniformBlockName: ?function_signatures.glGetActiveUniformBlockName = null;
    var glUniformBlockBinding: ?function_signatures.glUniformBlockBinding = null;
};

test "" {
    _ = load;
}
