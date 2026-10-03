typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int64 len; int64 size; } FBSTRING;
typedef int8 boolean;
struct $13FBGNUARCHINFO {
	char* GNUID;
	int64 CPUTYPE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $13FBGNUARCHINFO ) == 16 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 24 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 16 );
typedef int64 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 64 );
struct $8HASHITEM;
struct $8HASHITEM {
	char* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
struct $10FBC_EXTOPT {
	FBSTRING GAS;
	FBSTRING LD;
	FBSTRING GCC;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_EXTOPT ) == 72 );
struct $9FBCIOFILE {
	FBSTRING SRCFILE;
	FBSTRING* OBJFILE;
	int64 IS_CUSTOM_OBJFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCIOFILE ) == 40 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 16 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int64 NODES;
	int64 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 24 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 88 );
typedef int64 $7FB_LANG;
struct $10FBC_OBJINF {
	$7FB_LANG LANG;
	int64 MT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_OBJINF ) == 16 );
struct $6FBCCTX {
	int64 OPTID;
	struct $9FBCIOFILE* LASTMODULE;
	FBSTRING OBJFILE;
	int64 BACKEND;
	int64 CPUTYPE;
	int64 CPUTYPE_IS_NATIVE;
	int64 ASMSYNTAX;
	int64 EMITASMONLY;
	int64 KEEPASM;
	int64 EMITFINALASMONLY;
	int64 KEEPFINALASM;
	int64 KEEPOBJ;
	int64 VERBOSE;
	int64 SHOWVERSION;
	int64 SHOWHELP;
	int64 PRINT;
	struct $5TLIST MODULES;
	struct $5TLIST RCS;
	struct $9FBCIOFILE XPM;
	struct $7TSTRSET TEMPS;
	struct $5TLIST OBJLIST;
	struct $5TLIST LIBFILES;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	struct $7TSTRSET EXCLUDEDLIBS;
	struct $7TSTRSET FINALLIBS;
	struct $7TSTRSET FINALLIBPATHS;
	char OUTNAME[261];
	char MAINNAME[261];
	char ENTRY[129];
	int64 MAINSET;
	char MAPFILE[261];
	char SUBSYSTEM[129];
	struct $10FBC_EXTOPT EXTOPT;
	char TARGET[129];
	char TARGETPREFIX[129];
	char XBE_TITLE[129];
	int64 NODEFLIBS;
	int64 STATICLINK;
	int64 STRIPSYMBOLS;
	char PREFIX[261];
	char BINPATH[261];
	char INCPATH[261];
	char LIBPATH[261];
	char BUILDPREFIX[261];
	struct $10FBC_OBJINF OBJINF;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBCCTX ) == 3840 );
typedef int64 $11FBCTOOLFLAG;
struct $11FBCTOOLINFO {
	char NAME[16];
	$11FBCTOOLFLAG FLAGS;
	char PATH[261];
};
__FB_STATIC_ASSERT( sizeof( struct $11FBCTOOLINFO ) == 288 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IcE {
	char* DATA;
	char* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 72 );
typedef int64 $7FBCTOOL;
struct $11FBGNUOSINFO {
	char* GNUID;
	int64 OS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBGNUOSINFO ) == 16 );
struct $12FBOSARCHINFO {
	char* TARGETID;
	int64 OS;
	int64 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBOSARCHINFO ) == 24 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 240 );
struct $7FBARRAYIKvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 240 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 240 );
struct $18FBC_CMDLINE_OPTION {
	boolean TAKES_ARGUMENT;
	boolean ALLOWED_IN_SOURCE;
	boolean PARSER_RESTART;
	int64 FBC_RESTART;
};
__FB_STATIC_ASSERT( sizeof( struct $18FBC_CMDLINE_OPTION ) == 16 );
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
int64 fb_ArrayLBound( struct $7FBARRAYIKvE*, int64 );
int64 fb_ArrayUBound( struct $7FBARRAYIKvE*, int64 );
void* fb_ErrorThrowAt( int32, char*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileOpenPipe( FBSTRING*, uint32, uint32, uint32, int32, int32, char* );
int32 fb_FileClose( int32 );
int32 fb_FilePutLarge( int32, int64, void*, uint64 );
int32 fb_FileLineInput( int32, void*, int64, int32 );
int32 fb_FileInput( int32 );
int32 fb_InputString( void*, int64, int32 );
int32 rename( char*, char* );
int32 fb_FileFree( void );
int32 fb_FileEof( int32 );
int32 fb_FileKill( FBSTRING* );
void fb_PrintVoid( int32, int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatByref( void*, int64, void*, int64, int32 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( char* );
FBSTRING* fb_StrAllocTempDescZEx( char*, int64 );
FBSTRING* fb_LongintToStr( int64 );
int64 fb_StrLen( void*, int64 );
int64 fb_StrInstr( int64, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
void fb_Init( int32, char**, int32 );
void fb_InitSignals( void );
void fb_End( int32 );
FBSTRING* fb_ExePath( void );
int32 fb_Shell( FBSTRING* );
int32 fb_Exec( FBSTRING*, FBSTRING* );
FBSTRING* fb_GetEnviron( FBSTRING* );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void STRLISTAPPEND( struct $5TLIST*, FBSTRING* );
void STRLISTINIT( struct $5TLIST*, int64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int64 );
void STRSETDEL( struct $7TSTRSET*, FBSTRING* );
void STRSETCOPY( struct $7TSTRSET*, struct $7TSTRSET* );
void STRSETINIT( struct $7TSTRSET*, int64 );
void ERRPREINIT( void );
int64 ERRGETCOUNT( void );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, char*, int64, $12FB_ERRMSGOPT, char* );
void ERRREPORTWARN( int64, char*, $12FB_ERRMSGOPT, char* );
void ERRREPORTWARNEX( int64, char*, int64, $12FB_ERRMSGOPT, char* );
void FBINIT( int64, char*, int64 );
void FBEND( void );
void FBCOMPILE( char*, char*, FBSTRING*, int64 );
int64 FBSHOULDRESTART( void );
typedef int64 $16FB_RESTART_FLAGS;
void FBRESTARTBEGINREQUEST( $16FB_RESTART_FLAGS );
void FBRESTARTENDREQUEST( $16FB_RESTART_FLAGS );
int64 FBRESTARTGETCOUNT( void );
void FBGLOBALINIT( void );
void FBADDINCLUDEPATH( FBSTRING* );
void FBADDPREDEFINE( FBSTRING* );
void FBADDPREINCLUDE( FBSTRING* );
void FBSETOPTION( int64, int64 );
int64 FBGETOPTION( int64 );
void FBSETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
void FBGETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
FBSTRING* FBGETTARGETID( void );
FBSTRING* FBGETHOSTID( void );
int64 FBIDENTIFYOS( FBSTRING* );
int64 FBCPUTYPEFROMCPUFAMILYID( FBSTRING* );
char* FBGETGCCARCH( void );
char* FBGETFBCARCH( void );
int64 FBGETBITS( void );
int64 FBGETHOSTBITS( void );
int64 FBGETCPUFAMILY( void );
int64 FBIDENTIFYFBCARCH( FBSTRING* );
int64 FBTARGETSUPPORTSELF( void );
int64 FBISCROSSCOMP( void );
typedef int64 $10FB_BACKEND;
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
$7FB_LANG FBGETLANGID( char* );
int64 HFILEEXISTS( char* );
FBSTRING* HSTRIPEXT( FBSTRING* );
FBSTRING* HSTRIPPATH( char* );
FBSTRING* HSTRIPFILENAME( char* );
FBSTRING* HGETFILEEXT( char* );
void HREPLACESLASH( char*, int64 );
FBSTRING* PATHSTRIPDIV( FBSTRING* );
FBSTRING* STRUNQUOTE( FBSTRING* );
FBSTRING* HREPLACE( char*, char*, char* );
void HSPLITSTR( FBSTRING*, FBSTRING*, struct $7FBARRAYI8FBSTRINGE* );
void OBJINFOREADOBJ( FBSTRING* );
void OBJINFOREADLIBFILE( FBSTRING* );
void OBJINFOREADLIB( FBSTRING*, struct $5TLIST* );
int64 OBJINFOREADNEXT( FBSTRING* );
char* OBJINFOGETFILENAME( void );
void OBJINFOREADEND( void );
int64 fb_FileLen( char* );
static void _ZN10FBC_EXTOPTC1Ev( struct $10FBC_EXTOPT* );
static void _ZN10FBC_EXTOPTaSERKS_( struct $10FBC_EXTOPT*, struct $10FBC_EXTOPT* );
static void _ZN10FBC_EXTOPTD1Ev( struct $10FBC_EXTOPT* );
static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* );
static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE*, struct $9FBCIOFILE* );
static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* );
static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* );
static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX*, struct $6FBCCTX* );
static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* );
static void FBCFINDBIN( int64, FBSTRING* );
static void HPRINTVERSION( int64 );
static void FBCINIT( void );
static void HSETOUTNAME( void );
static void FBCEND( int64 );
static void FBCADDTEMP( FBSTRING* );
static void FBCREMOVETEMP( FBSTRING* );
static FBSTRING* FBCADDOBJ( FBSTRING* );
static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* );
static FBSTRING* FBCQUERYGCC( FBSTRING* );
static FBSTRING* FBCBUILDPATHTOLIBFILE( char* );
static FBSTRING* FBCFINDLIBFILE( char* );
static void FBCADDDEFLIBPATH( FBSTRING* );
static void FBCADDLIBPATHFOR( char* );
static int64 FBCRUNBIN( char*, int64, FBSTRING* );
static int64 CLEARDEFLIST( FBSTRING* );
static int64 HGENERATEEMPTYDEFFILE( FBSTRING* );
static int64 MAKEIMPLIB( FBSTRING*, FBSTRING* );
static FBSTRING* HFINDLIB( char* );
static int64 FBCLINKERISGOLD( void );
static int64 FBCISUSINGGOLDLINKER( void );
static int64 HLINKFILES( void );
static void HREADOBJINFO( void );
static void HCOLLECTOBJINFO( void );
static void HFATALINVALIDOPTION( FBSTRING*, int64 );
static void HCHECKWAITINGOBJFILE( void );
static void HSETIOFILE( struct $9FBCIOFILE*, FBSTRING*, int64 );
static void HADDBAS( FBSTRING* );
static void HPARSEGNUTRIPLET( FBSTRING*, int64, int64*, int64* );
static void HPARSETARGETARG( FBSTRING*, int64*, int64*, int64* );
static void HANDLEOPT( int64, FBSTRING*, int64 );
static int64 PARSEOPTION( char* );
static void PARSEARGSFROMFILE( FBSTRING*, int64 );
static void HANDLEARG( FBSTRING*, int64, int64 );
void FBCPARSEARGSFROMSTRING( char*, int64, int64 );
static int64 HTARGETNEEDSPIC( void );
static void HPARSEARGS( int64, char** );
static void HCHECKARGS( void );
static void FBCDETERMINEPREFIX( void );
static void FBCSETUPCOMPILERPATHS( void );
static void FBCPRINTTARGETINFO( void );
static void FBCDETERMINEMAINNAME( void );
static FBSTRING* HGETASMNAME( struct $9FBCIOFILE*, int64 );
static void HCOMPILEBAS( struct $9FBCIOFILE*, int64, int64, int64 );
static void HCOMPILEMODULES( void );
static int64 HPARSEXPM( FBSTRING*, FBSTRING* );
static int64 HCOMPILEXPM( void );
static int64 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* );
static void HCOMPILESTAGE2MODULES( void );
static int64 HASSEMBLEMODULE( struct $9FBCIOFILE* );
static void HASSEMBLEMODULES( void );
static int64 HASSEMBLERC( struct $9FBCIOFILE* );
static void HASSEMBLERCS( void );
static void HASSEMBLEXPM( void );
static int64 HCOMPILEFBCTINF( void );
static int64 HARCHIVEFILES( void );
static void HSETDEFAULTLIBPATHS( void );
static void FBCADDDEFLIB( char* );
static FBSTRING* HGETFBLIBNAMESUFFIX( void );
static void HADDDEFAULTLIBS( void );
static void HEXCLUDELIBSFROMLINK( void );
static void HPRINTOPTIONS( int64 );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static struct $11FBCTOOLINFO FBCTOOLTB$[15] = { { "as", 3ll }, { "ar", 3ll }, { "ld", 3ll }, { "gcc", 3ll }, { "llc", 3ll }, { "clang", 3ll }, { "dlltool", 3ll }, { "GoRC", 3ll }, { "windres", 3ll }, { "cxbe", 3ll }, { "dxe3gen", 3ll }, { "emcc", 3ll }, { "emar", 3ll }, { "emcc", 3ll }, { "emcc", 3ll } };
static struct $6FBCCTX FBC$;
static struct $11FBGNUOSINFO GNUOSMAP$[12] = { { (char*)"linux", 2ll }, { (char*)"mingw", 0ll }, { (char*)"djgpp", 3ll }, { (char*)"msdosdjgpp", 3ll }, { (char*)"cygwin", 1ll }, { (char*)"darwin", 9ll }, { (char*)"freebsd", 5ll }, { (char*)"dragonfly", 6ll }, { (char*)"solaris", 7ll }, { (char*)"netbsd", 10ll }, { (char*)"openbsd", 8ll }, { (char*)"xbox", 4ll } };
static struct $13FBGNUARCHINFO GNUARCHMAP$[19] = { { (char*)"i386", 0ll }, { (char*)"i486", 1ll }, { (char*)"i586", 2ll }, { (char*)"i686", 3ll }, { (char*)"x86", 3ll }, { (char*)"x86_64", 13ll }, { (char*)"amd64", 13ll }, { (char*)"armv6", 14ll }, { (char*)"armv7a", 15ll }, { (char*)"arm", 15ll }, { (char*)"aarch64", 16ll }, { (char*)"ppc", 17ll }, { (char*)"powerpc", 17ll }, { (char*)"ppc64  ", 18ll }, { (char*)"powerpc64", 18ll }, { (char*)"ppc64le  ", 19ll }, { (char*)"powerpc64le", 19ll }, { (char*)"riscv64", 21ll }, { (char*)"loongarch64", 22ll } };
static struct $12FBOSARCHINFO FBOSARCHMAP$[12] = { { (char*)"win32", 0ll, 3ll }, { (char*)"win64", 0ll, 13ll }, { (char*)"dragonfly", 6ll, 13ll }, { (char*)"solaris", 7ll, 13ll }, { (char*)"dos", 3ll, 3ll }, { (char*)"xbox", 4ll, 3ll }, { (char*)"cygwin", 1ll, 22ll }, { (char*)"darwin", 9ll, 22ll }, { (char*)"freebsd", 5ll, 22ll }, { (char*)"linux", 2ll, 22ll }, { (char*)"netbsd", 10ll, 22ll }, { (char*)"openbsd", 8ll, 22ll } };
static struct $18FBC_CMDLINE_OPTION CMDLINEOPTIONTB$[71] = { { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)0, -1ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, -1ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, -1ll }, { (boolean)0, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)0, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, -1ll }, { (boolean)0, (boolean)1, (boolean)0, -1ll }, { (boolean)1, (boolean)1, (boolean)0, -1ll }, { (boolean)1, (boolean)0, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)0, (boolean)1, (boolean)1, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, -1ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll }, { (boolean)0, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)0, 0ll }, { (boolean)1, (boolean)1, (boolean)1, -1ll } };

int64 FBCPUTYPEFROMGNUARCHINFO( FBSTRING* ARCH$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$486:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$491:;
		{
			int32 vr$2 = fb_StrCompare( (void*)ARCH$1, -1ll, *(void**)((int64)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$2 << (4ll & 63ll))), 0ll );
			if( (int64)vr$2 != 0ll ) goto label$493;
			{
				fb$result$1 = *(int64*)(((int64)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$2 << (4ll & 63ll))) + 8ll);
				goto label$487;
			}
			label$493:;
			label$492:;
		}
		label$489:;
		I$2 = I$2 + 1ll;
		label$488:;
		if( I$2 <= 18ll ) goto label$491;
		label$490:;
	}
	fb$result$1 = -1ll;
	goto label$487;
	label$487:;
	return fb$result$1;
}

void FBCPARSEARGSFROMSTRING( char* ARGS_IN$1, int64 IS_SOURCE$1, int64 IS_FILE$1 )
{
	label$943:;
	FBSTRING ARGS$1;
	fb_StrInit( (void*)&ARGS$1, -1ll, (void*)ARGS_IN$1, 0ll, 0 );
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 24ll );
	label$945:;
	{
		int64 LENGTH$2;
		int64 vr$3 = fb_StrLen( (void*)&ARGS$1, -1ll );
		LENGTH$2 = vr$3;
		if( LENGTH$2 != 0ll ) goto label$949;
		{
			goto label$946;
		}
		label$949:;
		label$948:;
		int64 I$2;
		I$2 = 0ll;
		int64 QUOTECH$2;
		QUOTECH$2 = 0ll;
		label$950:;
		if( I$2 >= LENGTH$2 ) goto label$951;
		{
			int64 CH$3;
			CH$3 = (int64)*(uint8*)((uint8*)*(char**)&ARGS$1 + I$2);
			{
				uint64 TMP$467$4;
				TMP$467$4 = (uint64)CH$3;
				goto label$953;
				label$954:;
				{
					if( QUOTECH$2 != 0ll ) goto label$956;
					{
						goto label$951;
					}
					label$956:;
					label$955:;
				}
				goto label$952;
				label$957:;
				{
					if( QUOTECH$2 != CH$3 ) goto label$959;
					{
						QUOTECH$2 = 0ll;
					}
					goto label$958;
					label$959:;
					if( QUOTECH$2 != 0ll ) goto label$960;
					{
						QUOTECH$2 = CH$3;
					}
					label$960:;
					label$958:;
				}
				goto label$952;
				label$953:;
				static const void* tmp$469[8ll] = {
					&&label$954,
					&&label$952,
					&&label$957,
					&&label$952,
					&&label$952,
					&&label$952,
					&&label$952,
					&&label$957,
				};
				if( (TMP$467$4 - 32ull) > 7ull ) goto label$952;
				goto *tmp$469[TMP$467$4 - 32ull];
				label$952:;
			}
			I$2 = I$2 + 1ll;
		}
		goto label$950;
		label$951:;
		if( I$2 != 0ll ) goto label$962;
		{
			I$2 = 1ll;
		}
		goto label$961;
		label$962:;
		{
			FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)&ARGS$1, I$2 );
			fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$8, -1ll, 0 );
			FBSTRING* vr$11 = fb_TRIM( (FBSTRING*)&ARG$1 );
			fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$11, -1ll, 0 );
			FBSTRING* vr$14 = STRUNQUOTE( &ARG$1 );
			fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$14, -1ll, 0 );
			HANDLEARG( &ARG$1, IS_SOURCE$1, IS_FILE$1 );
		}
		label$961:;
		FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)&ARGS$1, LENGTH$2 - I$2 );
		fb_StrAssign( (void*)&ARGS$1, -1ll, (void*)vr$19, -1ll, 0 );
	}
	label$947:;
	goto label$945;
	label$946:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$944:;
}

int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
{
	int32 fb$result$0;
	__builtin_memset( &fb$result$0, 0, 4ll );
	fb_Init( __FB_ARGC__$0, (char**)__FB_ARGV__$0, 0 );
	fb_InitSignals(  );
	label$0:;
	FBCINIT(  );
	if( (int64)__FB_ARGC__$0 != 1ll ) goto label$1414;
	{
		HPRINTOPTIONS( 0ll );
		FBCEND( 1ll );
	}
	label$1414:;
	label$1413:;
	HPARSEARGS( (int64)__FB_ARGC__$0, (char**)__FB_ARGV__$0 );
	HCHECKARGS(  );
	if( *(int64*)((uint8*)&FBC$ + 120ll) == 0ll ) goto label$1416;
	{
		HPRINTVERSION( *(int64*)((uint8*)&FBC$ + 112ll) );
		FBCEND( 0ll );
	}
	label$1416:;
	label$1415:;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1418;
	{
		*(int64*)((uint8*)&FBC$ + 120ll) = -1ll;
		HPRINTVERSION( 0ll );
	}
	label$1418:;
	label$1417:;
	if( *(int64*)((uint8*)&FBC$ + 128ll) == 0ll ) goto label$1420;
	{
		HPRINTOPTIONS( *(int64*)((uint8*)&FBC$ + 112ll) );
		FBCEND( 1ll );
	}
	label$1420:;
	label$1419:;
	label$1421:;
	{
		FBSTRING TMP$797$1;
		FBCDETERMINEPREFIX(  );
		FBCSETUPCOMPILERPATHS(  );
		if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1425;
		{
			FBCPRINTTARGETINFO(  );
		}
		label$1425:;
		label$1424:;
		__builtin_memset( &TMP$797$1, 0, 24ll );
		fb_StrAssign( (void*)&TMP$797$1, -1ll, (void*)((uint8*)&FBC$ + 3034ll), 261ll, 0 );
		FBADDINCLUDEPATH( &TMP$797$1 );
		fb_StrDelete( (FBSTRING*)&TMP$797$1 );
		int64 HAVE_INPUT_FILES$1;
		void* vr$9 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
		void* vr$12 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
		void* vr$16 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 528ll) );
		void* vr$20 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 464ll) );
		HAVE_INPUT_FILES$1 = (((int64)-(vr$9 != (void*)0ull) | (int64)-(vr$12 != (void*)0ull)) | (int64)-(vr$16 != (void*)0ull)) | (int64)-(vr$20 != (void*)0ull);
		if( *(int64*)((uint8*)&FBC$ + 136ll) < 0ll ) goto label$1427;
		{
			{
				int64 TMP$798$3;
				TMP$798$3 = *(int64*)((uint8*)&FBC$ + 136ll);
				if( TMP$798$3 != 0ll ) goto label$1429;
				label$1430:;
				{
					FBSTRING* vr$23 = FBGETHOSTID(  );
					fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
				}
				goto label$1428;
				label$1429:;
				if( TMP$798$3 != 1ll ) goto label$1431;
				label$1432:;
				{
					FBSTRING* vr$24 = FBGETTARGETID(  );
					fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
				}
				goto label$1428;
				label$1431:;
				if( TMP$798$3 != 2ll ) goto label$1433;
				label$1434:;
				{
					if( HAVE_INPUT_FILES$1 == 0ll ) goto label$1436;
					{
						FBCDETERMINEMAINNAME(  );
					}
					label$1436:;
					label$1435:;
					HSETOUTNAME(  );
					FBSTRING* vr$26 = fb_StrAllocTempDescZ( (char*)((uint8*)&FBC$ + 968ll) );
					fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
				}
				goto label$1428;
				label$1433:;
				if( TMP$798$3 != 3ll ) goto label$1437;
				label$1438:;
				{
					FBSTRING* vr$28 = fb_StrAllocTempDescZ( (char*)((uint8*)&FBC$ + 3295ll) );
					fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
				}
				goto label$1428;
				label$1437:;
				if( TMP$798$3 != 4ll ) goto label$1439;
				label$1440:;
				{
					FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (char*)"", 0ll );
					fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
				}
				label$1439:;
				label$1428:;
			}
			FBCEND( 0ll );
		}
		label$1427:;
		label$1426:;
		FBCDETERMINEMAINNAME(  );
		if( HAVE_INPUT_FILES$1 != 0ll ) goto label$1442;
		{
			HPRINTOPTIONS( *(int64*)((uint8*)&FBC$ + 112ll) );
			FBCEND( 1ll );
		}
		label$1442:;
		label$1441:;
		HCOMPILEMODULES(  );
		int64 vr$30 = FBSHOULDRESTART(  );
		if( vr$30 != 0ll ) goto label$1444;
		{
			goto label$1422;
		}
		label$1444:;
		label$1443:;
		FBRESTARTENDREQUEST( 8ll );
		ERRPREINIT(  );
		HCHECKARGS(  );
		if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1446;
		{
			FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (char*)"Restarting fbc ...", 18ll );
			fb_PrintString( 0, (FBSTRING*)vr$31, 1 );
		}
		label$1446:;
		label$1445:;
	}
	label$1423:;
	goto label$1421;
	label$1422:;
	int64 vr$32 = HCOMPILEXPM(  );
	if( vr$32 != 0ll ) goto label$1448;
	{
		FBCEND( 1ll );
	}
	label$1448:;
	label$1447:;
	if( *(int64*)((uint8*)&FBC$ + 72ll) == 0ll ) goto label$1450;
	{
		FBCEND( 0ll );
	}
	label$1450:;
	label$1449:;
	int64 vr$33 = FBGETOPTION( 2ll );
	int64 vr$35 = FBGETOPTION( 2ll );
	if( ((int64)-(vr$33 != 0ll) & (int64)-(vr$35 != 3ll)) == 0ll ) goto label$1452;
	{
		HCOMPILESTAGE2MODULES(  );
	}
	label$1452:;
	label$1451:;
	if( *(int64*)((uint8*)&FBC$ + 88ll) == 0ll ) goto label$1454;
	{
		FBCEND( 0ll );
	}
	label$1454:;
	label$1453:;
	HASSEMBLEMODULES(  );
	HASSEMBLERCS(  );
	HASSEMBLEXPM(  );
	int64 vr$38 = FBGETOPTION( 0ll );
	if( vr$38 != 3ll ) goto label$1456;
	{
		FBCEND( 0ll );
	}
	label$1456:;
	label$1455:;
	HSETDEFAULTLIBPATHS(  );
	int64 vr$39 = FBGETOPTION( 39ll );
	int64 vr$40 = FBISCROSSCOMP(  );
	if( (vr$39 & ~vr$40) == 0ll ) goto label$1458;
	{
		HCOLLECTOBJINFO(  );
	}
	label$1458:;
	label$1457:;
	int64 vr$43 = FBGETOPTION( 0ll );
	if( vr$43 != 1ll ) goto label$1460;
	{
		int64 vr$44 = HARCHIVEFILES(  );
		if( vr$44 != 0ll ) goto label$1462;
		{
			FBCEND( 1ll );
		}
		label$1462:;
		label$1461:;
		FBCEND( 0ll );
	}
	label$1460:;
	label$1459:;
	if( *(int64*)((uint8*)&FBC$ + 2488ll) != 0ll ) goto label$1464;
	{
		HADDDEFAULTLIBS(  );
	}
	label$1464:;
	label$1463:;
	HEXCLUDELIBSFROMLINK(  );
	int64 vr$45 = HLINKFILES(  );
	if( vr$45 != 0ll ) goto label$1466;
	{
		FBCEND( 1ll );
	}
	label$1466:;
	label$1465:;
	FBCEND( 0ll );
	label$1:;
	fb_End( 0 );
	return fb$result$0;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void _ZN10FBC_EXTOPTC1Ev( struct $10FBC_EXTOPT* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 24ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 48ll), 0, 24ll );
	label$10:;
	label$11:;
}

static void _ZN10FBC_EXTOPTaSERKS_( struct $10FBC_EXTOPT* THIS$1, struct $10FBC_EXTOPT* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 24ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 24ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 48ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 48ll), -1ll, 0 );
	label$13:;
}

static void _ZN10FBC_EXTOPTD1Ev( struct $10FBC_EXTOPT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 48ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 24ll) );
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 24ll );
	__builtin_memset( (FBSTRING**)((uint8*)THIS$1 + 24ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 32ll), 0, 8ll );
	label$18:;
	label$19:;
}

static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE* THIS$1, struct $9FBCIOFILE* __FB_RHS__$1 )
{
	label$20:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(FBSTRING**)((uint8*)THIS$1 + 24ll) = *(FBSTRING**)((uint8*)__FB_RHS__$1 + 24ll);
	*(int64*)((uint8*)THIS$1 + 32ll) = *(int64*)((uint8*)__FB_RHS__$1 + 32ll);
	label$21:;
}

static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (struct $9FBCIOFILE**)((uint8*)THIS$1 + 8ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 16ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 40ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 48ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 56ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 64ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 72ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 80ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 88ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 96ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 104ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 112ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 120ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 128ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 136ll), 0, 8ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 144ll), 0, 64ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 208ll), 0, 64ll );
	_ZN9FBCIOFILEC1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll) );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 312ll), 0, 88ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 400ll), 0, 64ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 464ll), 0, 64ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 528ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 616ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 704ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 792ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 880ll), 0, 88ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 968ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 1229ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 1490ll), 0, 129ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 1624ll), 0, 8ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 1632ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 1893ll), 0, 129ll );
	_ZN10FBC_EXTOPTC1Ev( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 2024ll) );
	__builtin_memset( (char*)((uint8*)THIS$1 + 2096ll), 0, 129ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 2225ll), 0, 129ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 2354ll), 0, 129ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2488ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2496ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2504ll), 0, 8ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 2512ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 2773ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 3034ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 3295ll), 0, 261ll );
	__builtin_memset( (char*)((uint8*)THIS$1 + 3556ll), 0, 261ll );
	__builtin_memset( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3824ll), 0, 16ll );
	label$26:;
	label$27:;
}

static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX* THIS$1, struct $6FBCCTX* __FB_RHS__$1 )
{
	label$28:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	*(struct $9FBCIOFILE**)((uint8*)THIS$1 + 8ll) = *(struct $9FBCIOFILE**)((uint8*)__FB_RHS__$1 + 8ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 16ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 16ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 40ll) = *(int64*)((uint8*)__FB_RHS__$1 + 40ll);
	*(int64*)((uint8*)THIS$1 + 48ll) = *(int64*)((uint8*)__FB_RHS__$1 + 48ll);
	*(int64*)((uint8*)THIS$1 + 56ll) = *(int64*)((uint8*)__FB_RHS__$1 + 56ll);
	*(int64*)((uint8*)THIS$1 + 64ll) = *(int64*)((uint8*)__FB_RHS__$1 + 64ll);
	*(int64*)((uint8*)THIS$1 + 72ll) = *(int64*)((uint8*)__FB_RHS__$1 + 72ll);
	*(int64*)((uint8*)THIS$1 + 80ll) = *(int64*)((uint8*)__FB_RHS__$1 + 80ll);
	*(int64*)((uint8*)THIS$1 + 88ll) = *(int64*)((uint8*)__FB_RHS__$1 + 88ll);
	*(int64*)((uint8*)THIS$1 + 96ll) = *(int64*)((uint8*)__FB_RHS__$1 + 96ll);
	*(int64*)((uint8*)THIS$1 + 104ll) = *(int64*)((uint8*)__FB_RHS__$1 + 104ll);
	*(int64*)((uint8*)THIS$1 + 112ll) = *(int64*)((uint8*)__FB_RHS__$1 + 112ll);
	*(int64*)((uint8*)THIS$1 + 120ll) = *(int64*)((uint8*)__FB_RHS__$1 + 120ll);
	*(int64*)((uint8*)THIS$1 + 128ll) = *(int64*)((uint8*)__FB_RHS__$1 + 128ll);
	*(int64*)((uint8*)THIS$1 + 136ll) = *(int64*)((uint8*)__FB_RHS__$1 + 136ll);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 144ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 144ll), 64 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 208ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 208ll), 64 );
	_ZN9FBCIOFILEaSERKS_( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll), (struct $9FBCIOFILE*)((uint8*)__FB_RHS__$1 + 272ll) );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 312ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 312ll), 88 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 400ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 400ll), 64 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 464ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 464ll), 64 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 528ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 528ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 616ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 616ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 704ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 704ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 792ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 792ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 880ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 880ll), 88 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 968ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 968ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1229ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 1229ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1490ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 1490ll), 129ll, 0 );
	*(int64*)((uint8*)THIS$1 + 1624ll) = *(int64*)((uint8*)__FB_RHS__$1 + 1624ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1632ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 1632ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1893ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 1893ll), 129ll, 0 );
	_ZN10FBC_EXTOPTaSERKS_( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 2024ll), (struct $10FBC_EXTOPT*)((uint8*)__FB_RHS__$1 + 2024ll) );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2096ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2096ll), 129ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2225ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2225ll), 129ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2354ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2354ll), 129ll, 0 );
	*(int64*)((uint8*)THIS$1 + 2488ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2488ll);
	*(int64*)((uint8*)THIS$1 + 2496ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2496ll);
	*(int64*)((uint8*)THIS$1 + 2504ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2504ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2512ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 2512ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2773ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 2773ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3034ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 3034ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3295ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 3295ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3556ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 3556ll), 261ll, 0 );
	__builtin_memcpy( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3824ll), (struct $10FBC_OBJINF*)((uint8*)__FB_RHS__$1 + 3824ll), 16 );
	label$29:;
}

static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* THIS$1 )
{
	label$32:;
	label$33:;
	_ZN10FBC_EXTOPTD1Ev( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 2024ll) );
	_ZN9FBCIOFILED1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 16ll) );
}

static void FBCINIT( void )
{
	label$34:;
	*(int64*)((uint8*)&FBC$ + 40ll) = -1ll;
	*(int64*)((uint8*)&FBC$ + 48ll) = -1ll;
	*(int64*)((uint8*)&FBC$ + 64ll) = -1ll;
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 144ll), 64ll, 40ll, 4294967295ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 208ll), 16ll, 40ll, 4294967295ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 312ll), 16ll );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 400ll), 64ll );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 464ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 528ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 616ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 704ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), 32ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll), 32ll );
	FBGLOBALINIT(  );
	int64 vr$10 = FBGETOPTION( 10ll );
	*($7FB_LANG*)((uint8*)&FBC$ + 3824ll) = vr$10;
	*(int64*)((uint8*)&FBC$ + 136ll) = -1ll;
	label$35:;
}

static void HSETOUTNAME( void )
{
	label$36:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 968ll), 261ll );
	if( vr$1 <= 0ll ) goto label$39;
	{
		goto label$37;
	}
	label$39:;
	label$38:;
	int64 vr$2 = FBGETOPTION( 0ll );
	if( vr$2 != 1ll ) goto label$41;
	{
		FBSTRING TMP$40$2;
		FBSTRING TMP$41$2;
		FBSTRING TMP$42$2;
		FBSTRING* vr$4 = HSTRIPPATH( (char*)((uint8*)&FBC$ + 1229ll) );
		FBSTRING* vr$6 = HSTRIPFILENAME( (char*)((uint8*)&FBC$ + 1229ll) );
		__builtin_memset( &TMP$40$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$40$2, (void*)vr$6, -1ll, (void*)"lib", 4ll );
		__builtin_memset( &TMP$41$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$41$2, (void*)vr$9, -1ll, (void*)vr$4, -1ll );
		__builtin_memset( &TMP$42$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$42$2, (void*)vr$12, -1ll, (void*)".a", 3ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$15, -1ll, 0 );
		goto label$37;
	}
	label$41:;
	label$40:;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)((uint8*)&FBC$ + 1229ll), 261ll, 0 );
	{
		int64 TMP$43$2;
		int64 vr$19 = FBGETOPTION( 0ll );
		TMP$43$2 = vr$19;
		if( TMP$43$2 != 0ll ) goto label$43;
		label$44:;
		{
			{
				int64 TMP$44$4;
				int64 vr$20 = FBGETOPTION( 3ll );
				TMP$44$4 = vr$20;
				if( TMP$44$4 == 3ll ) goto label$47;
				label$48:;
				if( TMP$44$4 == 1ll ) goto label$47;
				label$49:;
				if( TMP$44$4 == 0ll ) goto label$47;
				label$50:;
				if( TMP$44$4 != 4ll ) goto label$46;
				label$47:;
				{
					FBSTRING TMP$46$5;
					__builtin_memset( &TMP$46$5, 0, 24ll );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$46$5, (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)".exe", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$24, -1ll, 0 );
				}
				goto label$45;
				label$46:;
				if( TMP$44$4 != 11ll ) goto label$51;
				label$52:;
				{
					FBSTRING TMP$48$5;
					__builtin_memset( &TMP$48$5, 0, 24ll );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$48$5, (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)".html", 6ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$29, -1ll, 0 );
				}
				label$51:;
				label$45:;
			}
		}
		goto label$42;
		label$43:;
		if( TMP$43$2 != 2ll ) goto label$53;
		label$54:;
		{
			{
				int64 TMP$49$4;
				int64 vr$31 = FBGETOPTION( 3ll );
				TMP$49$4 = vr$31;
				if( TMP$49$4 == 1ll ) goto label$57;
				label$58:;
				if( TMP$49$4 != 0ll ) goto label$56;
				label$57:;
				{
					FBSTRING TMP$51$5;
					__builtin_memset( &TMP$51$5, 0, 24ll );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$51$5, (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)".dll", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$35, -1ll, 0 );
				}
				goto label$55;
				label$56:;
				if( TMP$49$4 == 2ll ) goto label$60;
				label$61:;
				if( TMP$49$4 == 9ll ) goto label$60;
				label$62:;
				if( TMP$49$4 == 5ll ) goto label$60;
				label$63:;
				if( TMP$49$4 == 8ll ) goto label$60;
				label$64:;
				if( TMP$49$4 == 10ll ) goto label$60;
				label$65:;
				if( TMP$49$4 == 6ll ) goto label$60;
				label$66:;
				if( TMP$49$4 != 7ll ) goto label$59;
				label$60:;
				{
					FBSTRING TMP$53$5;
					FBSTRING TMP$54$5;
					FBSTRING TMP$55$5;
					FBSTRING* vr$38 = HSTRIPPATH( (char*)((uint8*)&FBC$ + 968ll) );
					FBSTRING* vr$40 = HSTRIPFILENAME( (char*)((uint8*)&FBC$ + 968ll) );
					__builtin_memset( &TMP$53$5, 0, 24ll );
					FBSTRING* vr$43 = fb_StrConcat( &TMP$53$5, (void*)vr$40, -1ll, (void*)"lib", 4ll );
					__builtin_memset( &TMP$54$5, 0, 24ll );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$54$5, (void*)vr$43, -1ll, (void*)vr$38, -1ll );
					__builtin_memset( &TMP$55$5, 0, 24ll );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$55$5, (void*)vr$46, -1ll, (void*)".so", 4ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$49, -1ll, 0 );
				}
				goto label$55;
				label$59:;
				if( TMP$49$4 != 3ll ) goto label$67;
				label$68:;
				{
					FBSTRING TMP$57$5;
					__builtin_memset( &TMP$57$5, 0, 24ll );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$57$5, (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)".dxe", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)vr$54, -1ll, 0 );
				}
				label$67:;
				label$55:;
			}
		}
		label$53:;
		label$42:;
	}
	label$37:;
}

static void FBCEND( int64 ERRNUM$1 )
{
	label$69:;
	struct $11TSTRSETITEM* FILE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 312ll) );
	FILE$1 = (struct $11TSTRSETITEM*)vr$1;
	label$71:;
	if( FILE$1 == (struct $11TSTRSETITEM*)0ull ) goto label$72;
	{
		int32 vr$4 = fb_FileKill( (FBSTRING*)FILE$1 );
		if( (int64)vr$4 == 0ll ) goto label$74;
		{
		}
		label$74:;
		label$73:;
		void* vr$6 = LISTGETNEXT( (void*)FILE$1 );
		FILE$1 = (struct $11TSTRSETITEM*)vr$6;
	}
	goto label$71;
	label$72:;
	fb_End( (int32)ERRNUM$1 );
	label$70:;
}

static void FBCADDTEMP( FBSTRING* FILE$1 )
{
	label$75:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 312ll), FILE$1, 0ll );
	label$76:;
}

static void FBCREMOVETEMP( FBSTRING* FILE$1 )
{
	label$77:;
	STRSETDEL( (struct $7TSTRSET*)((uint8*)&FBC$ + 312ll), (FBSTRING*)FILE$1 );
	label$78:;
}

static FBSTRING* FBCADDOBJ( FBSTRING* FILE$1 )
{
	FBSTRING* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$79:;
	FBSTRING* S$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
	S$1 = (FBSTRING*)vr$2;
	fb_StrAssign( (void*)S$1, -1ll, (void*)FILE$1, -1ll, 0 );
	fb$result$1 = S$1;
	label$80:;
	return fb$result$1;
}

static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* CMD$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$81:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpenPipe( (FBSTRING*)CMD$1, 2u, 0u, 0u, F$1, 0, (char*)0ull );
	if( (int64)vr$2 == 0ll ) goto label$84;
	{
		goto label$82;
	}
	label$84:;
	label$83:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_FileInput( F$1 );
	fb_InputString( (void*)&LN$1, -1ll, 0 );
	int32 vr$6 = fb_FileClose( F$1 );
	if( (int64)vr$6 == 0ll ) goto label$85;
	void* vr$8 = fb_ErrorThrowAt( 303, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$8;
	label$85:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&LN$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	goto label$82;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$82:;
	FBSTRING* vr$14 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$14;
}

static FBSTRING* FBCQUERYGCC( FBSTRING* OPTIONS$1 )
{
	FBSTRING TMP$62$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$86:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	FBCFINDBIN( 3ll, &PATH$1 );
	{
		int64 TMP$59$2;
		int64 vr$3 = FBGETCPUFAMILY(  );
		TMP$59$2 = vr$3;
		if( TMP$59$2 != 0ll ) goto label$89;
		label$90:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$88;
		label$89:;
		if( TMP$59$2 != 1ll ) goto label$91;
		label$92:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		goto label$88;
		label$91:;
		if( TMP$59$2 != 4ll ) goto label$93;
		label$94:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$88;
		label$93:;
		if( TMP$59$2 == 5ll ) goto label$96;
		label$97:;
		if( TMP$59$2 != 6ll ) goto label$95;
		label$96:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		label$95:;
		label$88:;
	}
	__builtin_memset( &TMP$62$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$62$1, (void*)&PATH$1, -1ll, (void*)OPTIONS$1, -1ll );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$11, -1ll, 0 );
	int64 FF$1;
	int32 vr$13 = fb_FileFree(  );
	FF$1 = (int64)vr$13;
	int32 vr$17 = fb_FileOpenPipe( (FBSTRING*)&PATH$1, 2u, 0u, 0u, (int32)FF$1, 0, (char*)0ull );
	if( (int64)vr$17 == 0ll ) goto label$99;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		goto label$87;
	}
	label$99:;
	label$98:;
	FBSTRING RET$1;
	__builtin_memset( &RET$1, 0, 24ll );
	fb_FileInput( (int32)FF$1 );
	fb_InputString( (void*)&RET$1, -1ll, 0 );
	int32 vr$24 = fb_FileClose( (int32)FF$1 );
	if( (int64)vr$24 == 0ll ) goto label$100;
	void* vr$26 = fb_ErrorThrowAt( 334, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$26;
	label$100:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RET$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RET$1 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	goto label$87;
	fb_StrDelete( (FBSTRING*)&RET$1 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$87:;
	FBSTRING* vr$34 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$34;
}

static FBSTRING* FBCBUILDPATHTOLIBFILE( char* FILE$1 )
{
	FBSTRING TMP$63$1;
	FBSTRING TMP$64$1;
	FBSTRING TMP$67$1;
	FBSTRING TMP$68$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$101:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 24ll );
	__builtin_memset( &TMP$63$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$63$1, (void*)((uint8*)&FBC$ + 3295ll), 261ll, (void*)"/", 2ll );
	__builtin_memset( &TMP$64$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$64$1, (void*)vr$5, -1ll, (void*)FILE$1, 0ll );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$8, -1ll, 0 );
	int64 vr$10 = HFILEEXISTS( (char*)*(char**)&FOUND$1 );
	if( vr$10 == 0ll ) goto label$104;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$104:;
	label$103:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	FBCFINDBIN( 3ll, &PATH$1 );
	{
		int64 TMP$65$2;
		int64 vr$16 = FBGETCPUFAMILY(  );
		TMP$65$2 = vr$16;
		if( TMP$65$2 != 0ll ) goto label$106;
		label$107:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$105;
		label$106:;
		if( TMP$65$2 != 1ll ) goto label$108;
		label$109:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		goto label$105;
		label$108:;
		if( TMP$65$2 != 4ll ) goto label$110;
		label$111:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$105;
		label$110:;
		if( TMP$65$2 == 5ll ) goto label$113;
		label$114:;
		if( TMP$65$2 != 6ll ) goto label$112;
		label$113:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		label$112:;
		label$105:;
	}
	__builtin_memset( &TMP$67$1, 0, 24ll );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$67$1, (void*)" -print-file-name=", 19ll, (void*)FILE$1, 0ll );
	__builtin_memset( &TMP$68$1, 0, 24ll );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$68$1, (void*)&PATH$1, -1ll, (void*)vr$23, -1ll );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$27, -1ll, 0 );
	FBSTRING* vr$30 = HGET1STOUTPUTLINEFROMCOMMAND( &PATH$1 );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$30, -1ll, 0 );
	int64 vr$33 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$33 != 0ll ) goto label$116;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$116:;
	label$115:;
	FBSTRING* vr$36 = HSTRIPPATH( (char*)*(char**)&FOUND$1 );
	int32 vr$38 = fb_StrCompare( (void*)&FOUND$1, -1ll, (void*)vr$36, -1ll );
	if( (int64)vr$38 != 0ll ) goto label$118;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$118:;
	label$117:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$102:;
	FBSTRING* vr$47 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$47;
}

static FBSTRING* FBCFINDLIBFILE( char* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$119:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 24ll );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$2, -1ll, 0 );
	int64 vr$5 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$5 <= 0ll ) goto label$122;
	{
		int64 vr$6 = HFILEEXISTS( (char*)*(char**)&FOUND$1 );
		if( vr$6 != 0ll ) goto label$124;
		{
			fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)"", 1ll, 0 );
		}
		label$124:;
		label$123:;
	}
	label$122:;
	label$121:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$120:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static void FBCADDDEFLIBPATH( FBSTRING* PATH$1 )
{
	label$125:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll), PATH$1, -1ll );
	label$126:;
}

static void FBCADDLIBPATHFOR( char* LIBNAME$1 )
{
	FBSTRING TMP$69$1;
	label$127:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	__builtin_memset( &TMP$69$1, 0, 24ll );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( LIBNAME$1 );
	fb_StrAssign( (void*)&TMP$69$1, -1ll, (void*)vr$2, -1ll, 0 );
	FBSTRING* vr$4 = HSTRIPFILENAME( (char*)*(char**)&TMP$69$1 );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$4, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$69$1 );
	FBSTRING* vr$8 = PATHSTRIPDIV( &PATH$1 );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$8, -1ll, 0 );
	int64 vr$11 = fb_StrLen( (void*)&PATH$1, -1ll );
	if( vr$11 <= 0ll ) goto label$130;
	{
		FBCADDDEFLIBPATH( &PATH$1 );
	}
	label$130:;
	label$129:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$128:;
}

static void FBCFINDBIN( int64 TOOL$1, FBSTRING* PATH$1 )
{
	label$131:;
	if( (*(int64*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) & 4ll) == 0ll ) goto label$134;
	{
		fb_StrAssign( (void*)PATH$1, -1ll, (void*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 24ll), 261ll, 0 );
		goto label$132;
	}
	label$134:;
	label$133:;
	*($11FBCTOOLFLAG*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) = *(int64*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) & -9ll;
	if( (*(int64*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) & 2ll) == 0ll ) goto label$136;
	{
		FBSTRING* vr$11 = fb_StrAllocTempDescZ( (char*)((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) );
		FBSTRING* vr$12 = fb_StrUcase2( (FBSTRING*)vr$11, 0 );
		FBSTRING* vr$13 = fb_GetEnviron( (FBSTRING*)vr$12 );
		fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$13, -1ll, 0 );
	}
	label$136:;
	label$135:;
	int64 vr$14 = fb_StrLen( (void*)PATH$1, -1ll );
	if( vr$14 != 0ll ) goto label$138;
	{
		FBSTRING TMP$70$2;
		FBSTRING TMP$71$2;
		__builtin_memset( &TMP$70$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$70$2, (void*)((uint8*)&FBC$ + 2773ll), 261ll, (void*)((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)), 16ll );
		__builtin_memset( &TMP$71$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$71$2, (void*)vr$20, -1ll, (void*)"", 1ll );
		fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$23, -1ll, 0 );
		int64 vr$25 = HFILEEXISTS( (char*)*(char**)PATH$1 );
		if( vr$25 != 0ll ) goto label$140;
		{
			{
				int64 TMP$72$4;
				int64 vr$26 = FBGETOPTION( 2ll );
				TMP$72$4 = vr$26;
				if( TMP$72$4 != 1ll ) goto label$142;
				label$143:;
				{
					if( TOOL$1 != 0ll ) goto label$145;
					{
						FBSTRING TMP$74$6;
						__builtin_memset( &TMP$74$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$74$6, -1ll, (void*)" -print-prog-name=as", 21ll, 0 );
						FBSTRING* vr$30 = FBCQUERYGCC( &TMP$74$6 );
						fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$30, -1ll, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$74$6 );
					}
					goto label$144;
					label$145:;
					if( TOOL$1 != 2ll ) goto label$146;
					{
						FBSTRING TMP$76$6;
						__builtin_memset( &TMP$76$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$76$6, -1ll, (void*)" -print-prog-name=ld", 21ll, 0 );
						FBSTRING* vr$35 = FBCQUERYGCC( &TMP$76$6 );
						fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$35, -1ll, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$76$6 );
					}
					label$146:;
					label$144:;
				}
				goto label$141;
				label$142:;
				if( TMP$72$4 == 0ll ) goto label$148;
				label$149:;
				if( TMP$72$4 != 3ll ) goto label$147;
				label$148:;
				{
				}
				label$147:;
				label$141:;
			}
		}
		label$140:;
		label$139:;
		int64 vr$38 = HFILEEXISTS( (char*)*(char**)PATH$1 );
		if( vr$38 != 0ll ) goto label$151;
		{
			int64 vr$39 = FBGETOPTION( 3ll );
			if( vr$39 == 11ll ) goto label$153;
			{
				int64 vr$41 = fb_StrLen( (void*)((uint8*)&FBC$ + 3556ll), 261ll );
				if( vr$41 <= 0ll ) goto label$155;
				{
					FBSTRING TMP$77$5;
					FBSTRING TMP$78$5;
					__builtin_memset( &TMP$77$5, 0, 24ll );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$77$5, (void*)((uint8*)&FBC$ + 3556ll), 261ll, (void*)((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)), 16ll );
					__builtin_memset( &TMP$78$5, 0, 24ll );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$78$5, (void*)vr$47, -1ll, (void*)"", 1ll );
					fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$50, -1ll, 0 );
				}
				goto label$154;
				label$155:;
				{
					FBSTRING TMP$79$5;
					FBSTRING TMP$80$5;
					__builtin_memset( &TMP$79$5, 0, 24ll );
					FBSTRING* vr$56 = fb_StrConcat( &TMP$79$5, (void*)((uint8*)&FBC$ + 2225ll), 129ll, (void*)((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)), 16ll );
					__builtin_memset( &TMP$80$5, 0, 24ll );
					FBSTRING* vr$59 = fb_StrConcat( &TMP$80$5, (void*)vr$56, -1ll, (void*)"", 1ll );
					fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$59, -1ll, 0 );
				}
				label$154:;
			}
			goto label$152;
			label$153:;
			{
				fb_StrAssign( (void*)PATH$1, -1ll, (void*)((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)), 16ll, 0 );
			}
			label$152:;
			*($11FBCTOOLFLAG*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) = *(int64*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) | 8ll;
		}
		label$151:;
		label$150:;
	}
	label$138:;
	label$137:;
	fb_StrAssign( (void*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 24ll), 261ll, (void*)PATH$1, -1ll, 0 );
	*($11FBCTOOLFLAG*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) = *(int64*)(((int64)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 288ll)) + 16ll) | 4ll;
	label$132:;
}

static int64 FBCRUNBIN( char* ACTION$1, int64 TOOL$1, FBSTRING* LN$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$156:;
	int64 RESULT$1;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	FBCFINDBIN( TOOL$1, &PATH$1 );
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$159;
	{
		FBSTRING TMP$82$2;
		FBSTRING TMP$84$2;
		FBSTRING TMP$85$2;
		__builtin_memset( &TMP$82$2, 0, 24ll );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$82$2, (void*)ACTION$1, 0ll, (void*)": ", 3ll );
		fb_PrintString( 0, (FBSTRING*)vr$5, 2 );
		__builtin_memset( &TMP$84$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$84$2, (void*)&PATH$1, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$85$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$85$2, (void*)vr$9, -1ll, (void*)LN$1, -1ll );
		fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	}
	label$159:;
	label$158:;
	int32 vr$14 = fb_Exec( (FBSTRING*)&PATH$1, (FBSTRING*)LN$1 );
	RESULT$1 = (int64)vr$14;
	if( RESULT$1 != 0ll ) goto label$161;
	{
		fb$result$1 = -1ll;
	}
	goto label$160;
	label$161:;
	if( RESULT$1 >= 0ll ) goto label$162;
	{
		ERRREPORTEX( 91ll, (char*)*(char**)&PATH$1, -1ll, 6ll, (char*)0ull );
	}
	goto label$160;
	label$162:;
	{
		if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$164;
		{
			FBSTRING TMP$88$3;
			FBSTRING TMP$89$3;
			FBSTRING TMP$90$3;
			FBSTRING TMP$91$3;
			FBSTRING* vr$16 = fb_LongintToStr( RESULT$1 );
			__builtin_memset( &TMP$88$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$88$3, (void*)ACTION$1, 0ll, (void*)" failed: '", 11ll );
			__builtin_memset( &TMP$89$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$89$3, (void*)vr$20, -1ll, (void*)&PATH$1, -1ll );
			__builtin_memset( &TMP$90$3, 0, 24ll );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$90$3, (void*)vr$23, -1ll, (void*)"' terminated with exit code ", 29ll );
			__builtin_memset( &TMP$91$3, 0, 24ll );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$91$3, (void*)vr$26, -1ll, (void*)vr$16, -1ll );
			fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
		}
		label$164:;
		label$163:;
	}
	label$160:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$157:;
	return fb$result$1;
}

static int64 CLEARDEFLIST( FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$93$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$165:;
	int64 FI$1;
	int32 vr$1 = fb_FileFree(  );
	FI$1 = (int64)vr$1;
	int32 vr$4 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 2u, 0u, 0u, (int32)FI$1, 0 );
	if( (int64)vr$4 == 0ll ) goto label$168;
	{
		fb$result$1 = 0ll;
		goto label$166;
	}
	label$168:;
	label$167:;
	FBSTRING CLEANED$1;
	FBSTRING* vr$6 = HSTRIPEXT( DEFFILE$1 );
	__builtin_memset( &TMP$93$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$93$1, (void*)vr$6, -1ll, (void*)".clean.def", 11ll );
	fb_StrInit( (void*)&CLEANED$1, -1ll, (void*)vr$9, -1ll, 0 );
	int64 FO$1;
	int32 vr$11 = fb_FileFree(  );
	FO$1 = (int64)vr$11;
	int32 vr$15 = fb_FileOpen( (FBSTRING*)&CLEANED$1, 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$15 == 0ll ) goto label$170;
	{
		int32 vr$18 = fb_FileClose( (int32)FI$1 );
		if( (int64)vr$18 == 0ll ) goto label$171;
		void* vr$20 = fb_ErrorThrowAt( 604, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
		goto *vr$20;
		label$171:;
		fb$result$1 = 0ll;
		fb_StrDelete( (FBSTRING*)&CLEANED$1 );
		goto label$166;
	}
	label$170:;
	label$169:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	label$172:;
	int32 vr$24 = fb_FileEof( (int32)FI$1 );
	if( (int64)vr$24 != 0ll ) goto label$173;
	{
		int64 TMP$95$2;
		fb_FileLineInput( (int32)FI$1, (void*)&LN$1, -1ll, 0 );
		FBSTRING* vr$29 = fb_RIGHT( (FBSTRING*)&LN$1, 4ll );
		int32 vr$30 = fb_StrCompare( (void*)vr$29, -1ll, (void*)"DATA", 5ll );
		if( (int64)vr$30 != 0ll ) goto label$175;
		{
			int64 vr$33 = fb_StrLen( (void*)&LN$1, -1ll );
			FBSTRING* vr$36 = fb_LEFT( (FBSTRING*)&LN$1, vr$33 + -4ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$36, -1ll, 0 );
		}
		label$175:;
		label$174:;
		TMP$95$2 = FO$1;
		fb_PrintString( (int32)TMP$95$2, (FBSTRING*)&LN$1, 1 );
	}
	goto label$172;
	label$173:;
	int32 vr$41 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$41 == 0ll ) goto label$176;
	void* vr$43 = fb_ErrorThrowAt( 619, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$43;
	label$176:;
	int32 vr$45 = fb_FileClose( (int32)FI$1 );
	if( (int64)vr$45 == 0ll ) goto label$177;
	void* vr$47 = fb_ErrorThrowAt( 620, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$47;
	label$177:;
	fb_FileKill( (FBSTRING*)DEFFILE$1 );
	int32 vr$49 = rename( (char*)*(char**)&CLEANED$1, (char*)*(char**)DEFFILE$1 );
	fb$result$1 = (int64)-((int64)vr$49 == 0ll);
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	goto label$166;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	label$166:;
	return fb$result$1;
}

static int64 HGENERATEEMPTYDEFFILE( FBSTRING* DEFFILE$1 )
{
	int32 TMP$96$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 3u, 0u, 0u, F$1, 0 );
	if( (int64)vr$2 == 0ll ) goto label$181;
	{
		goto label$179;
	}
	label$181:;
	label$180:;
	TMP$96$1 = F$1;
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (char*)"EXPORTS", 7ll );
	fb_PrintString( TMP$96$1, (FBSTRING*)vr$4, 1 );
	int32 vr$5 = fb_FileClose( F$1 );
	if( (int64)vr$5 == 0ll ) goto label$182;
	void* vr$7 = fb_ErrorThrowAt( 634, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$7;
	label$182:;
	fb$result$1 = -1ll;
	label$179:;
	return fb$result$1;
}

static int64 MAKEIMPLIB( FBSTRING* DLLNAME$1, FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$100$1;
	FBSTRING TMP$101$1;
	FBSTRING TMP$102$1;
	FBSTRING TMP$106$1;
	FBSTRING TMP$107$1;
	FBSTRING TMP$108$1;
	FBSTRING TMP$109$1;
	FBSTRING TMP$110$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$183:;
	int64 vr$1 = CLEARDEFLIST( DEFFILE$1 );
	if( vr$1 != 0ll ) goto label$186;
	{
		goto label$184;
	}
	label$186:;
	label$185:;
	int64 vr$3 = fb_FileLen( (char*)*(char**)DEFFILE$1 );
	if( vr$3 != 0ll ) goto label$188;
	{
		int64 vr$4 = HGENERATEEMPTYDEFFILE( DEFFILE$1 );
		if( vr$4 != 0ll ) goto label$190;
		{
			goto label$184;
		}
		label$190:;
		label$189:;
	}
	label$188:;
	label$187:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	__builtin_memset( &TMP$100$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$100$1, (void*)"--def \x22", 8ll, (void*)DEFFILE$1, -1ll );
	__builtin_memset( &TMP$101$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$101$1, (void*)vr$8, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$102$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$102$1, (void*)&LN$1, -1ll, (void*)vr$11, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$15, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" --dllname \x22", 13ll, 0 );
	FBSTRING* vr$19 = HSTRIPPATH( (char*)((uint8*)&FBC$ + 968ll) );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$19, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$23 = HSTRIPFILENAME( (char*)((uint8*)&FBC$ + 968ll) );
	__builtin_memset( &TMP$106$1, 0, 24ll );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$106$1, (void*)" --output-lib \x22", 16ll, (void*)vr$23, -1ll );
	__builtin_memset( &TMP$107$1, 0, 24ll );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$107$1, (void*)vr$26, -1ll, (void*)"lib", 4ll );
	__builtin_memset( &TMP$108$1, 0, 24ll );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$108$1, (void*)vr$29, -1ll, (void*)DLLNAME$1, -1ll );
	__builtin_memset( &TMP$109$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$109$1, (void*)vr$32, -1ll, (void*)".dll.a\x22", 8ll );
	__builtin_memset( &TMP$110$1, 0, 24ll );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$110$1, (void*)&LN$1, -1ll, (void*)vr$35, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$39, -1ll, 0 );
	int64 vr$42 = FBCRUNBIN( (char*)"creating import library", 6ll, &LN$1 );
	if( vr$42 != 0ll ) goto label$192;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$184;
	}
	label$192:;
	label$191:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$194;
	{
		FBCADDTEMP( DEFFILE$1 );
	}
	label$194:;
	label$193:;
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$184:;
	return fb$result$1;
}

static FBSTRING* HFINDLIB( char* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$195:;
	FBSTRING FOUND$1;
	FBSTRING* vr$1 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrInit( (void*)&FOUND$1, -1ll, (void*)vr$1, -1ll, 0 );
	int64 vr$4 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$4 <= 0ll ) goto label$198;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)" \x22", 3ll, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)"\x22", 2ll, 0 );
	}
	goto label$197;
	label$198:;
	{
		ERRREPORTEX( 23ll, (char*)FILE$1, -1ll, 1ll, (char*)0ull );
	}
	label$197:;
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$196:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

static int64 FBCLINKERISGOLD( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$199:;
	int64 vr$1 = FBGETOPTION( 3ll );
	if( vr$1 != 7ll ) goto label$202;
	{
		fb$result$1 = 0ll;
		goto label$200;
	}
	goto label$201;
	label$202:;
	{
		FBSTRING LDCMD$2;
		__builtin_memset( &LDCMD$2, 0, 24ll );
		FBCFINDBIN( 2ll, &LDCMD$2 );
		fb_StrConcatAssign( (void*)&LDCMD$2, -1ll, (void*)" --version", 11ll, 0 );
		FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (char*)"GNU gold", 8ll );
		FBSTRING* vr$7 = HGET1STOUTPUTLINEFROMCOMMAND( &LDCMD$2 );
		int64 vr$8 = fb_StrInstr( 1ll, (FBSTRING*)vr$7, (FBSTRING*)vr$5 );
		fb$result$1 = (int64)-(vr$8 > 0ll);
		fb_StrDelete( (FBSTRING*)&LDCMD$2 );
		goto label$200;
		fb_StrDelete( (FBSTRING*)&LDCMD$2 );
	}
	label$201:;
	label$200:;
	return fb$result$1;
}

static int64 FBCISUSINGGOLDLINKER( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$203:;
	int64 vr$1 = FBTARGETSUPPORTSELF(  );
	if( vr$1 == 0ll ) goto label$206;
	{
		int64 vr$2 = FBCLINKERISGOLD(  );
		fb$result$1 = vr$2;
		goto label$204;
	}
	label$206:;
	label$205:;
	fb$result$1 = 0ll;
	goto label$204;
	label$204:;
	return fb$result$1;
}

static int64 HLINKFILES( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$207:;
	FBSTRING LDCLINE$1;
	__builtin_memset( &LDCLINE$1, 0, 24ll );
	FBSTRING DLLNAME$1;
	__builtin_memset( &DLLNAME$1, 0, 24ll );
	FBSTRING DEFFILE$1;
	__builtin_memset( &DEFFILE$1, 0, 24ll );
	fb$result$1 = 0ll;
	HSETOUTNAME(  );
	{
		int64 TMP$115$2;
		int64 vr$4 = FBGETOPTION( 3ll );
		TMP$115$2 = vr$4;
		if( TMP$115$2 != 0ll ) goto label$210;
		label$211:;
		{
			{
				int64 TMP$116$4;
				int64 vr$5 = FBGETCPUFAMILY(  );
				TMP$116$4 = vr$5;
				if( TMP$116$4 != 0ll ) goto label$213;
				label$214:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m i386pe ", 11ll, 0 );
				}
				goto label$212;
				label$213:;
				if( TMP$116$4 != 1ll ) goto label$215;
				label$216:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m i386pep ", 12ll, 0 );
				}
				label$215:;
				label$212:;
			}
		}
		goto label$209;
		label$210:;
		if( TMP$115$2 != 2ll ) goto label$217;
		label$218:;
		{
			{
				int64 TMP$119$4;
				int64 vr$8 = FBGETCPUFAMILY(  );
				TMP$119$4 = vr$8;
				if( TMP$119$4 != 0ll ) goto label$220;
				label$221:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m elf_i386 ", 13ll, 0 );
				}
				goto label$219;
				label$220:;
				if( TMP$119$4 != 1ll ) goto label$222;
				label$223:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m elf_x86_64 ", 15ll, 0 );
				}
				goto label$219;
				label$222:;
				if( TMP$119$4 != 2ll ) goto label$224;
				label$225:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m armelf_linux_eabi ", 22ll, 0 );
				}
				label$224:;
				label$219:;
			}
		}
		goto label$209;
		label$217:;
		if( TMP$115$2 != 9ll ) goto label$226;
		label$227:;
		{
			{
				int64 TMP$123$4;
				int64 vr$12 = FBGETCPUFAMILY(  );
				TMP$123$4 = vr$12;
				if( TMP$123$4 != 0ll ) goto label$229;
				label$230:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-arch i386 ", 12ll, 0 );
				}
				goto label$228;
				label$229:;
				if( TMP$123$4 != 1ll ) goto label$231;
				label$232:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-arch x86_64 ", 14ll, 0 );
				}
				goto label$228;
				label$231:;
				if( TMP$123$4 != 2ll ) goto label$233;
				label$234:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-arch armv6 ", 13ll, 0 );
				}
				label$233:;
				label$228:;
			}
		}
		label$226:;
		label$209:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-o \x22", 5ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
	int64 vr$20 = FBGETOPTION( 3ll );
	int64 vr$22 = FBGETOPTION( 0ll );
	if( ((int64)-(vr$20 == 3ll) & (int64)-(vr$22 == 2ll)) == 0ll ) goto label$236;
	{
		FBSTRING TMP$131$2;
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -I \x22lib", 9ll, 0 );
		__builtin_memset( &TMP$131$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$131$2, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
		FBSTRING* vr$30 = HSTRIPEXT( &TMP$131$2 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$30, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"_il.a\x22", 7ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$131$2 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -U", 4ll, 0 );
		{
			FBSTRING* OBJFILE$3;
			void* vr$36 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
			OBJFILE$3 = (FBSTRING*)vr$36;
			label$237:;
			if( OBJFILE$3 == (FBSTRING*)0ull ) goto label$238;
			{
				FBSTRING TMP$134$4;
				FBSTRING TMP$135$4;
				FBSTRING TMP$136$4;
				__builtin_memset( &TMP$134$4, 0, 24ll );
				FBSTRING* vr$39 = fb_StrConcat( &TMP$134$4, (void*)" \x22", 3ll, (void*)OBJFILE$3, -1ll );
				__builtin_memset( &TMP$135$4, 0, 24ll );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$135$4, (void*)vr$39, -1ll, (void*)"\x22", 2ll );
				__builtin_memset( &TMP$136$4, 0, 24ll );
				FBSTRING* vr$46 = fb_StrConcat( &TMP$136$4, (void*)&LDCLINE$1, -1ll, (void*)vr$42, -1ll );
				fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$46, -1ll, 0 );
				void* vr$48 = LISTGETNEXT( (void*)OBJFILE$3 );
				OBJFILE$3 = (FBSTRING*)vr$48;
			}
			goto label$237;
			label$238:;
		}
		{
			FBSTRING* LIBFILE$3;
			void* vr$50 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 464ll) );
			LIBFILE$3 = (FBSTRING*)vr$50;
			if( LIBFILE$3 == (FBSTRING*)0ull ) goto label$240;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -lc", 5ll, 0 );
			}
			label$240:;
			label$239:;
			label$241:;
			if( LIBFILE$3 == (FBSTRING*)0ull ) goto label$242;
			{
				FBSTRING TMP$138$4;
				FBSTRING TMP$139$4;
				FBSTRING TMP$140$4;
				__builtin_memset( &TMP$138$4, 0, 24ll );
				FBSTRING* vr$54 = fb_StrConcat( &TMP$138$4, (void*)" \x22", 3ll, (void*)LIBFILE$3, -1ll );
				__builtin_memset( &TMP$139$4, 0, 24ll );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$139$4, (void*)vr$54, -1ll, (void*)"\x22", 2ll );
				__builtin_memset( &TMP$140$4, 0, 24ll );
				FBSTRING* vr$61 = fb_StrConcat( &TMP$140$4, (void*)&LDCLINE$1, -1ll, (void*)vr$57, -1ll );
				fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$61, -1ll, 0 );
				void* vr$63 = LISTGETNEXT( (void*)LIBFILE$3 );
				LIBFILE$3 = (FBSTRING*)vr$63;
			}
			goto label$241;
			label$242:;
		}
		int64 vr$65 = FBCRUNBIN( (char*)"making DXE", 10ll, &LDCLINE$1 );
		fb$result$1 = vr$65;
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$208;
	}
	label$236:;
	label$235:;
	{
		uint64 TMP$142$2;
		int64 vr$69 = FBGETOPTION( 3ll );
		TMP$142$2 = (uint64)vr$69;
		goto label$244;
		label$245:;
		{
			int64 vr$71 = fb_StrLen( (void*)((uint8*)&FBC$ + 1893ll), 129ll );
			if( vr$71 != 0ll ) goto label$247;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1893ll), 129ll, (void*)"console", 8ll, 0 );
			}
			goto label$246;
			label$247:;
			{
				int32 vr$74 = fb_StrCompare( (void*)((uint8*)&FBC$ + 1893ll), 129ll, (void*)"gui", 4ll );
				if( (int64)vr$74 != 0ll ) goto label$249;
				{
					fb_StrAssign( (void*)((uint8*)&FBC$ + 1893ll), 129ll, (void*)"windows", 8ll, 0 );
				}
				label$249:;
				label$248:;
			}
			label$246:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -subsystem ", 13ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 1893ll), 129ll, 0 );
			int64 vr$80 = FBGETOPTION( 0ll );
			if( vr$80 != 2ll ) goto label$251;
			{
				FBSTRING TMP$147$4;
				FBSTRING TMP$148$4;
				__builtin_memset( &TMP$148$4, 0, 24ll );
				__builtin_memset( &TMP$147$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$147$4, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
				FBSTRING* vr$86 = HSTRIPEXT( &TMP$147$4 );
				fb_StrAssign( (void*)&TMP$148$4, -1ll, (void*)vr$86, -1ll, 0 );
				FBSTRING* vr$88 = HSTRIPPATH( (char*)*(char**)&TMP$148$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$88, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$148$4 );
				fb_StrDelete( (FBSTRING*)&TMP$147$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --dll --enable-stdcall-fixup", 30ll, 0 );
				int64 vr$93 = FBGETCPUFAMILY(  );
				if( vr$93 != 0ll ) goto label$253;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e _DllMainCRTStartup@12", 26ll, 0 );
				}
				goto label$252;
				label$253:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e DllMainCRTStartup", 22ll, 0 );
				}
				label$252:;
			}
			label$251:;
			label$250:;
		}
		goto label$243;
		label$254:;
		{
			int64 vr$96 = FBGETOPTION( 0ll );
			if( vr$96 != 2ll ) goto label$256;
			{
				FBSTRING TMP$152$4;
				FBSTRING TMP$153$4;
				__builtin_memset( &TMP$153$4, 0, 24ll );
				__builtin_memset( &TMP$152$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$152$4, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
				FBSTRING* vr$102 = HSTRIPEXT( &TMP$152$4 );
				fb_StrAssign( (void*)&TMP$153$4, -1ll, (void*)vr$102, -1ll, 0 );
				FBSTRING* vr$104 = HSTRIPPATH( (char*)*(char**)&TMP$153$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$104, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$153$4 );
				fb_StrDelete( (FBSTRING*)&TMP$152$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -shared -h", 12ll, 0 );
				FBSTRING* vr$110 = HSTRIPPATH( (char*)((uint8*)&FBC$ + 968ll) );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$110, -1ll, 0 );
				FBSTRING* vr$113 = fb_LEFT( (FBSTRING*)&DLLNAME$1, 3ll );
				int32 vr$114 = fb_StrCompare( (void*)vr$113, -1ll, (void*)"lib", 4ll );
				if( (int64)vr$114 != 0ll ) goto label$258;
				{
					int64 vr$117 = fb_StrLen( (void*)&DLLNAME$1, -1ll );
					FBSTRING* vr$120 = fb_RIGHT( (FBSTRING*)&DLLNAME$1, vr$117 + -3ll );
					fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$120, -1ll, 0 );
				}
				label$258:;
				label$257:;
			}
			goto label$255;
			label$256:;
			{
				{
					uint64 TMP$155$5;
					int64 vr$122 = FBGETOPTION( 3ll );
					TMP$155$5 = (uint64)vr$122;
					goto label$260;
					label$261:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /libexec/ld-elf.so.1", 38ll, 0 );
					}
					goto label$259;
					label$262:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /libexec/ld-elf.so.2", 38ll, 0 );
					}
					goto label$259;
					label$263:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --dynamic-linker /lib/64/ld.so.1", 34ll, 0 );
					}
					goto label$259;
					label$264:;
					{
						{
							int64 TMP$159$7;
							int64 vr$126 = FBGETCPUFAMILY(  );
							TMP$159$7 = vr$126;
							if( TMP$159$7 != 0ll ) goto label$266;
							label$267:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux.so.2", 36ll, 0 );
							}
							goto label$265;
							label$266:;
							if( TMP$159$7 != 1ll ) goto label$268;
							label$269:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib64/ld-linux-x86-64.so.2", 45ll, 0 );
							}
							goto label$265;
							label$268:;
							if( TMP$159$7 != 2ll ) goto label$270;
							label$271:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux-armhf.so.3", 42ll, 0 );
							}
							goto label$265;
							label$270:;
							if( TMP$159$7 != 3ll ) goto label$272;
							label$273:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux-aarch64.so.1", 44ll, 0 );
							}
							goto label$265;
							label$272:;
							if( TMP$159$7 != 8ll ) goto label$274;
							label$275:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux-riscv64-lp64d.so.1", 50ll, 0 );
							}
							goto label$265;
							label$274:;
							if( TMP$159$7 != 9ll ) goto label$276;
							label$277:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib64/ld-linux-loongarch-lp64d.so.1", 54ll, 0 );
							}
							label$276:;
							label$265:;
						}
					}
					goto label$259;
					label$278:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /usr/libexec/ld.elf_so", 40ll, 0 );
					}
					goto label$259;
					label$279:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /usr/libexec/ld.so", 36ll, 0 );
					}
					goto label$259;
					label$260:;
					static const void* tmp$800[9ll] = {
						&&label$264,
						&&label$259,
						&&label$259,
						&&label$261,
						&&label$262,
						&&label$263,
						&&label$279,
						&&label$259,
						&&label$278,
					};
					if( (TMP$155$5 - 2ull) > 8ull ) goto label$259;
					goto *tmp$800[TMP$155$5 - 2ull];
					label$259:;
				}
			}
			label$255:;
			int64 vr$135 = FBGETOPTION( 0ll );
			int64 vr$137 = FBGETOPTION( 33ll );
			int64 vr$139 = FBGETOPTION( 3ll );
			if( (((int64)-(vr$135 == 2ll) | vr$137) & (int64)-(vr$139 != 7ll)) == 0ll ) goto label$281;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --export-dynamic", 18ll, 0 );
			}
			label$281:;
			label$280:;
		}
		goto label$243;
		label$282:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared", 66ll, 0 );
		}
		goto label$243;
		label$283:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -O", 4ll, 0 );
			int64 vr$145 = FBGETOPTION( 8ll );
			FBSTRING* vr$146 = fb_LongintToStr( vr$145 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$146, -1ll, 0 );
			static char EMSCRIPTEN_OPTIONS$3[5][32] = { "CASE_INSENSITIVE_FS=1", "TOTAL_MEMORY=67108864", "ALLOW_MEMORY_GROWTH=1", "RETAIN_COMPILER_SETTINGS=1", "ASYNCIFY=1" };
			static struct $8FBARRAY1IcE tmp$176$3 = { (char*)EMSCRIPTEN_OPTIONS$3, (char*)EMSCRIPTEN_OPTIONS$3, 160ll, 32ll, 1ll, 49ll, { { 5ll, 0ll, 4ll } } };
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Wno-warn-absolute-paths", 26ll, 0 );
			{
				int64 I$4;
				I$4 = 0ll;
				label$287:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -s ", 5ll, 0 );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((int64)(char*)EMSCRIPTEN_OPTIONS$3 + (I$4 << (5ll & 63ll))), 32ll, 0 );
				}
				label$285:;
				I$4 = I$4 + 1ll;
				label$284:;
				if( I$4 <= 4ll ) goto label$287;
				label$286:;
			}
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --shell-file", 14ll, 0 );
			FBSTRING* vr$155 = HFINDLIB( (char*)"fb_shell.html" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$155, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --post-js", 11ll, 0 );
			FBSTRING* vr$158 = HFINDLIB( (char*)"fb_rtlib.js" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$158, -1ll, 0 );
			int64 vr$161 = fb_StrLen( (void*)((uint8*)&FBC$ + 1893ll), 129ll );
			if( vr$161 != 0ll ) goto label$289;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --post-js", 11ll, 0 );
				FBSTRING* vr$163 = HFINDLIB( (char*)"termlib_min.js" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$163, -1ll, 0 );
			}
			label$289:;
			label$288:;
		}
		goto label$243;
		label$244:;
		static const void* tmp$801[12ll] = {
			&&label$245,
			&&label$245,
			&&label$254,
			&&label$243,
			&&label$282,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$283,
		};
		if( TMP$142$2 > 11ull ) goto label$243;
		goto *tmp$801[TMP$142$2 - 0ull];
		label$243:;
	}
	int64 vr$165 = FBGETOPTION( 3ll );
	if( vr$165 != 3ll ) goto label$291;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -T \x22", 6ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3295ll), 261ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"/i386go32.x\x22", 13ll, 0 );
	}
	goto label$290;
	label$291:;
	{
		int64 vr$170 = FBGETOPTION( 39ll );
		int64 vr$171 = FBGETOPTION( 3ll );
		int64 vr$174 = FBGETOPTION( 3ll );
		int64 vr$177 = FBGETOPTION( 3ll );
		int64 vr$180 = FBCISUSINGGOLDLINKER(  );
		if( ((((vr$170 & (int64)-(vr$171 != 9ll)) & (int64)-(vr$174 != 7ll)) & (int64)-(vr$177 != 11ll)) & ~vr$180) == 0ll ) goto label$293;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -T \x22", 6ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3295ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"/fbextra.x\x22", 12ll, 0 );
		}
		label$293:;
		label$292:;
	}
	label$290:;
	{
		uint64 TMP$189$2;
		int64 vr$187 = FBGETOPTION( 3ll );
		TMP$189$2 = (uint64)vr$187;
		goto label$295;
		label$296:;
		{
			int64 STACKSIZE$3;
			int64 vr$188 = FBGETOPTION( 38ll );
			STACKSIZE$3 = vr$188;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --stack ", 10ll, 0 );
			FBSTRING* vr$190 = fb_LongintToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$190, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)",", 2ll, 0 );
			FBSTRING* vr$193 = fb_LongintToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$193, -1ll, 0 );
			int64 vr$195 = FBGETOPTION( 0ll );
			if( vr$195 != 2ll ) goto label$298;
			{
				FBSTRING TMP$192$4;
				__builtin_memset( &TMP$192$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$192$4, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
				FBSTRING* vr$200 = HSTRIPEXT( &TMP$192$4 );
				fb_StrAssign( (void*)&DEFFILE$1, -1ll, (void*)vr$200, -1ll, 0 );
				fb_StrConcatAssign( (void*)&DEFFILE$1, -1ll, (void*)".def", 5ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$192$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --output-def \x22", 16ll, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)&DEFFILE$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
			}
			label$298:;
			label$297:;
		}
		goto label$294;
		label$299:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e _WinMainCRTStartup", 23ll, 0 );
		}
		goto label$294;
		label$295:;
		static const void* tmp$802[5ll] = {
			&&label$296,
			&&label$296,
			&&label$294,
			&&label$294,
			&&label$299,
		};
		if( TMP$189$2 > 4ull ) goto label$294;
		goto *tmp$802[TMP$189$2 - 0ull];
		label$294:;
	}
	if( *(int64*)((uint8*)&FBC$ + 2496ll) == 0ll ) goto label$301;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Bstatic", 10ll, 0 );
	}
	label$301:;
	label$300:;
	int64 vr$211 = fb_StrLen( (void*)((uint8*)&FBC$ + 1632ll), 261ll );
	if( vr$211 <= 0ll ) goto label$303;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Map ", 7ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 1632ll), 261ll, 0 );
	}
	label$303:;
	label$302:;
	int64 vr$215 = FBGETOPTION( 14ll );
	if( vr$215 != 0ll ) goto label$305;
	{
		int64 vr$216 = FBGETOPTION( 23ll );
		if( vr$216 != 0ll ) goto label$307;
		{
			int64 vr$217 = FBGETOPTION( 3ll );
			int64 vr$219 = FBGETOPTION( 3ll );
			if( ((int64)-(vr$217 != 9ll) & (int64)-(vr$219 != 11ll)) == 0ll ) goto label$309;
			{
				if( *(int64*)((uint8*)&FBC$ + 2504ll) == 0ll ) goto label$311;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -s", 4ll, 0 );
				}
				label$311:;
				label$310:;
			}
			label$309:;
			label$308:;
		}
		label$307:;
		label$306:;
	}
	label$305:;
	label$304:;
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$224 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 880ll) );
		I$2 = (struct $11TSTRSETITEM*)vr$224;
		FBSTRING L$2;
		__builtin_memset( &L$2, 0, 24ll );
		int64 vr$226 = FBGETOPTION( 3ll );
		if( vr$226 == 11ll ) goto label$313;
		{
			fb_StrAssign( (void*)&L$2, -1ll, (void*)" -L \x22", 6ll, 0 );
		}
		goto label$312;
		label$313:;
		{
			fb_StrAssign( (void*)&L$2, -1ll, (void*)" -L\x22", 5ll, 0 );
		}
		label$312:;
		label$314:;
		if( I$2 == (struct $11TSTRSETITEM*)0ull ) goto label$315;
		{
			FBSTRING TMP$201$3;
			FBSTRING TMP$202$3;
			FBSTRING TMP$203$3;
			__builtin_memset( &TMP$201$3, 0, 24ll );
			FBSTRING* vr$234 = fb_StrConcat( &TMP$201$3, (void*)&L$2, -1ll, (void*)I$2, -1ll );
			__builtin_memset( &TMP$202$3, 0, 24ll );
			FBSTRING* vr$237 = fb_StrConcat( &TMP$202$3, (void*)vr$234, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$203$3, 0, 24ll );
			FBSTRING* vr$241 = fb_StrConcat( &TMP$203$3, (void*)&LDCLINE$1, -1ll, (void*)vr$237, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$241, -1ll, 0 );
			void* vr$243 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$243;
		}
		goto label$314;
		label$315:;
		fb_StrDelete( (FBSTRING*)&L$2 );
	}
	{
		uint64 TMP$204$2;
		int64 vr$245 = FBGETOPTION( 3ll );
		TMP$204$2 = (uint64)vr$245;
		goto label$317;
		label$318:;
		{
			int64 vr$246 = FBGETOPTION( 0ll );
			if( vr$246 != 2ll ) goto label$320;
			{
				FBSTRING* vr$247 = HFINDLIB( (char*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$247, -1ll, 0 );
			}
			goto label$319;
			label$320:;
			{
				FBSTRING* vr$249 = HFINDLIB( (char*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$249, -1ll, 0 );
				int64 vr$251 = FBGETOPTION( 23ll );
				if( vr$251 == 0ll ) goto label$322;
				{
					FBSTRING* vr$252 = HFINDLIB( (char*)"gcrt0.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$252, -1ll, 0 );
				}
				label$322:;
				label$321:;
			}
			label$319:;
		}
		goto label$316;
		label$323:;
		{
			int64 vr$254 = FBGETOPTION( 0ll );
			if( vr$254 != 2ll ) goto label$325;
			{
				FBSTRING* vr$255 = HFINDLIB( (char*)"dllcrt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$255, -1ll, 0 );
			}
			goto label$324;
			label$325:;
			{
				FBSTRING* vr$257 = HFINDLIB( (char*)"crt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$257, -1ll, 0 );
				int64 vr$259 = FBGETOPTION( 23ll );
				if( vr$259 == 0ll ) goto label$327;
				{
					FBSTRING* vr$260 = HFINDLIB( (char*)"gcrt2.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$260, -1ll, 0 );
				}
				label$327:;
				label$326:;
			}
			label$324:;
			FBSTRING* vr$262 = HFINDLIB( (char*)"crtbegin.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$262, -1ll, 0 );
		}
		goto label$316;
		label$328:;
		{
			int64 vr$264 = FBGETOPTION( 23ll );
			if( vr$264 == 0ll ) goto label$330;
			{
				FBSTRING* vr$265 = HFINDLIB( (char*)"gcrt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$265, -1ll, 0 );
			}
			goto label$329;
			label$330:;
			{
				FBSTRING* vr$267 = HFINDLIB( (char*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$267, -1ll, 0 );
			}
			label$329:;
		}
		goto label$316;
		label$331:;
		{
			int64 vr$269 = FBGETOPTION( 0ll );
			if( vr$269 != 0ll ) goto label$333;
			{
				int64 vr$270 = FBGETOPTION( 23ll );
				if( vr$270 == 0ll ) goto label$335;
				{
					{
						uint64 TMP$211$6;
						int64 vr$271 = FBGETOPTION( 3ll );
						TMP$211$6 = (uint64)vr$271;
						goto label$337;
						label$338:;
						{
							FBSTRING* vr$272 = HFINDLIB( (char*)"gcrt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$272, -1ll, 0 );
						}
						goto label$336;
						label$339:;
						{
							FBSTRING* vr$274 = HFINDLIB( (char*)"gcrt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$274, -1ll, 0 );
						}
						goto label$336;
						label$337:;
						static const void* tmp$803[3ll] = {
							&&label$338,
							&&label$339,
							&&label$338,
						};
						if( (TMP$211$6 - 8ull) > 2ull ) goto label$339;
						goto *tmp$803[TMP$211$6 - 8ull];
						label$336:;
					}
				}
				goto label$334;
				label$335:;
				{
					{
						uint64 TMP$213$6;
						int64 vr$276 = FBGETOPTION( 3ll );
						TMP$213$6 = (uint64)vr$276;
						goto label$341;
						label$342:;
						{
							FBSTRING* vr$277 = HFINDLIB( (char*)"crt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$277, -1ll, 0 );
						}
						goto label$340;
						label$343:;
						{
							FBSTRING* vr$279 = HFINDLIB( (char*)"crt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$279, -1ll, 0 );
						}
						goto label$340;
						label$341:;
						static const void* tmp$804[3ll] = {
							&&label$342,
							&&label$343,
							&&label$342,
						};
						if( (TMP$213$6 - 8ull) > 2ull ) goto label$343;
						goto *tmp$804[TMP$213$6 - 8ull];
						label$340:;
					}
				}
				label$334:;
			}
			label$333:;
			label$332:;
			int64 vr$281 = FBGETOPTION( 3ll );
			if( vr$281 == 9ll ) goto label$345;
			{
				int64 vr$282 = FBGETOPTION( 3ll );
				if( vr$282 == 8ll ) goto label$347;
				{
					FBSTRING* vr$283 = HFINDLIB( (char*)"crti.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$283, -1ll, 0 );
				}
				label$347:;
				label$346:;
				int64 vr$285 = FBGETOPTION( 37ll );
				if( vr$285 == 0ll ) goto label$349;
				{
					FBSTRING* vr$286 = HFINDLIB( (char*)"crtbeginS.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$286, -1ll, 0 );
				}
				goto label$348;
				label$349:;
				{
					FBSTRING* vr$288 = HFINDLIB( (char*)"crtbegin.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$288, -1ll, 0 );
				}
				label$348:;
			}
			label$345:;
			label$344:;
		}
		goto label$316;
		label$350:;
		{
			FBSTRING* vr$290 = HFINDLIB( (char*)"crt0.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$290, -1ll, 0 );
		}
		goto label$316;
		label$317:;
		static const void* tmp$805[11ll] = {
			&&label$323,
			&&label$318,
			&&label$331,
			&&label$328,
			&&label$350,
			&&label$331,
			&&label$331,
			&&label$331,
			&&label$331,
			&&label$331,
			&&label$331,
		};
		if( TMP$204$2 > 10ull ) goto label$316;
		goto *tmp$805[TMP$204$2 - 0ull];
		label$316:;
	}
	if( *(int64*)((uint8*)&FBC$ + 2488ll) != 0ll ) goto label$352;
	{
		int64 vr$292 = FBGETOPTION( 3ll );
		if( vr$292 == 11ll ) goto label$354;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3295ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"/", 2ll, 0 );
			int64 vr$297 = FBGETOPTION( 37ll );
			if( vr$297 == 0ll ) goto label$356;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"fbrt0pic.o", 11ll, 0 );
			}
			goto label$355;
			label$356:;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"fbrt0.o", 8ll, 0 );
			}
			label$355:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
		}
		label$354:;
		label$353:;
	}
	label$352:;
	label$351:;
	{
		FBSTRING* OBJFILE$2;
		void* vr$302 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
		OBJFILE$2 = (FBSTRING*)vr$302;
		label$357:;
		if( OBJFILE$2 == (FBSTRING*)0ull ) goto label$358;
		{
			FBSTRING TMP$219$3;
			FBSTRING TMP$220$3;
			FBSTRING TMP$221$3;
			__builtin_memset( &TMP$219$3, 0, 24ll );
			FBSTRING* vr$305 = fb_StrConcat( &TMP$219$3, (void*)" \x22", 3ll, (void*)OBJFILE$2, -1ll );
			__builtin_memset( &TMP$220$3, 0, 24ll );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$220$3, (void*)vr$305, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$221$3, 0, 24ll );
			FBSTRING* vr$312 = fb_StrConcat( &TMP$221$3, (void*)&LDCLINE$1, -1ll, (void*)vr$308, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$312, -1ll, 0 );
			void* vr$314 = LISTGETNEXT( (void*)OBJFILE$2 );
			OBJFILE$2 = (FBSTRING*)vr$314;
		}
		goto label$357;
		label$358:;
	}
	int64 vr$315 = FBGETOPTION( 3ll );
	if( vr$315 == 9ll ) goto label$360;
	{
		int64 vr$316 = FBGETOPTION( 3ll );
		if( vr$316 == 11ll ) goto label$362;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22-(\x22", 6ll, 0 );
		}
		label$362:;
		label$361:;
	}
	label$360:;
	label$359:;
	{
		FBSTRING* LIBFILE$2;
		void* vr$319 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 464ll) );
		LIBFILE$2 = (FBSTRING*)vr$319;
		label$363:;
		if( LIBFILE$2 == (FBSTRING*)0ull ) goto label$364;
		{
			FBSTRING TMP$223$3;
			FBSTRING TMP$224$3;
			FBSTRING TMP$225$3;
			__builtin_memset( &TMP$223$3, 0, 24ll );
			FBSTRING* vr$322 = fb_StrConcat( &TMP$223$3, (void*)" \x22", 3ll, (void*)LIBFILE$2, -1ll );
			__builtin_memset( &TMP$224$3, 0, 24ll );
			FBSTRING* vr$325 = fb_StrConcat( &TMP$224$3, (void*)vr$322, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$225$3, 0, 24ll );
			FBSTRING* vr$329 = fb_StrConcat( &TMP$225$3, (void*)&LDCLINE$1, -1ll, (void*)vr$325, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$329, -1ll, 0 );
			void* vr$331 = LISTGETNEXT( (void*)LIBFILE$2 );
			LIBFILE$2 = (FBSTRING*)vr$331;
		}
		goto label$363;
		label$364:;
	}
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$333 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 792ll) );
		I$2 = (struct $11TSTRSETITEM*)vr$333;
		int64 CHECKDLLNAME$2;
		int64 vr$334 = FBGETOPTION( 0ll );
		CHECKDLLNAME$2 = (int64)-(vr$334 == 2ll);
		label$365:;
		if( I$2 == (struct $11TSTRSETITEM*)0ull ) goto label$366;
		{
			int64 TMP$226$3;
			if( CHECKDLLNAME$2 == 0ll ) goto label$367;
			int32 vr$339 = fb_StrCompare( (void*)I$2, -1ll, (void*)&DLLNAME$1, -1ll );
			TMP$226$3 = (int64)-((int64)vr$339 != 0ll);
			goto label$1473;
			label$367:;
			TMP$226$3 = -1ll;
			label$1473:;
			if( TMP$226$3 == 0ll ) goto label$369;
			{
				FBSTRING TMP$228$4;
				FBSTRING TMP$229$4;
				__builtin_memset( &TMP$228$4, 0, 24ll );
				FBSTRING* vr$346 = fb_StrConcat( &TMP$228$4, (void*)" -l", 4ll, (void*)I$2, -1ll );
				__builtin_memset( &TMP$229$4, 0, 24ll );
				FBSTRING* vr$350 = fb_StrConcat( &TMP$229$4, (void*)&LDCLINE$1, -1ll, (void*)vr$346, -1ll );
				fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$350, -1ll, 0 );
			}
			label$369:;
			label$368:;
			void* vr$352 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$352;
		}
		goto label$365;
		label$366:;
	}
	int64 vr$353 = FBGETOPTION( 3ll );
	if( vr$353 == 9ll ) goto label$371;
	{
		int64 vr$354 = FBGETOPTION( 3ll );
		if( vr$354 == 11ll ) goto label$373;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22-)\x22", 6ll, 0 );
		}
		goto label$372;
		label$373:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -lfb", 6ll, 0 );
		}
		label$372:;
	}
	label$371:;
	label$370:;
	{
		uint64 TMP$232$2;
		int64 vr$357 = FBGETOPTION( 3ll );
		TMP$232$2 = (uint64)vr$357;
		goto label$375;
		label$376:;
		{
			int64 vr$358 = FBGETOPTION( 37ll );
			if( vr$358 == 0ll ) goto label$378;
			{
				FBSTRING* vr$359 = HFINDLIB( (char*)"crtendS.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$359, -1ll, 0 );
			}
			goto label$377;
			label$378:;
			{
				FBSTRING* vr$361 = HFINDLIB( (char*)"crtend.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$361, -1ll, 0 );
			}
			label$377:;
			int64 vr$363 = FBGETOPTION( 3ll );
			if( vr$363 == 8ll ) goto label$380;
			{
				FBSTRING* vr$364 = HFINDLIB( (char*)"crtn.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$364, -1ll, 0 );
			}
			label$380:;
			label$379:;
		}
		goto label$374;
		label$381:;
		{
			FBSTRING* vr$366 = HFINDLIB( (char*)"crtend.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$366, -1ll, 0 );
		}
		goto label$374;
		label$375:;
		static const void* tmp$806[11ll] = {
			&&label$381,
			&&label$374,
			&&label$376,
			&&label$374,
			&&label$374,
			&&label$376,
			&&label$376,
			&&label$376,
			&&label$376,
			&&label$374,
			&&label$376,
		};
		if( TMP$232$2 > 10ull ) goto label$374;
		goto *tmp$806[TMP$232$2 - 0ull];
		label$374:;
	}
	int64 vr$368 = FBGETOPTION( 3ll );
	if( vr$368 != 9ll ) goto label$383;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -macosx_version_min 10.4", 26ll, 0 );
	}
	label$383:;
	label$382:;
	{
		uint64 TMP$237$2;
		int64 vr$370 = FBGETOPTION( 3ll );
		TMP$237$2 = (uint64)vr$370;
		goto label$385;
		label$386:;
		{
			int64 TMP$238$3;
			int32 OUTTYPE$3;
			int64 vr$371 = FBGETOPTION( 0ll );
			OUTTYPE$3 = (int32)vr$371;
			if( (int64)OUTTYPE$3 == 0ll ) goto label$387;
			TMP$238$3 = (int64)-((int64)OUTTYPE$3 == 2ll);
			goto label$1474;
			label$387:;
			TMP$238$3 = -1ll;
			label$1474:;
			if( TMP$238$3 == 0ll ) goto label$389;
			{
				int64 TMP$239$4;
				int64 TMP$240$4;
				int64 TMP$241$4;
				int64 TMP$242$4;
				int64 TMP$243$4;
				int32 CPUFAMILY$4;
				int64 vr$376 = FBGETCPUFAMILY(  );
				CPUFAMILY$4 = (int32)vr$376;
				if( (int64)CPUFAMILY$4 == 1ll ) goto label$390;
				TMP$239$4 = (int64)-((int64)CPUFAMILY$4 == 3ll);
				goto label$1475;
				label$390:;
				TMP$239$4 = -1ll;
				label$1475:;
				if( TMP$239$4 != 0ll ) goto label$391;
				TMP$240$4 = (int64)-((int64)CPUFAMILY$4 == 5ll);
				goto label$1476;
				label$391:;
				TMP$240$4 = -1ll;
				label$1476:;
				if( TMP$240$4 != 0ll ) goto label$392;
				TMP$241$4 = (int64)-((int64)CPUFAMILY$4 == 6ll);
				goto label$1477;
				label$392:;
				TMP$241$4 = -1ll;
				label$1477:;
				if( TMP$241$4 != 0ll ) goto label$393;
				TMP$242$4 = (int64)-((int64)CPUFAMILY$4 == 8ll);
				goto label$1478;
				label$393:;
				TMP$242$4 = -1ll;
				label$1478:;
				if( TMP$242$4 != 0ll ) goto label$394;
				TMP$243$4 = (int64)-((int64)CPUFAMILY$4 == 9ll);
				goto label$1479;
				label$394:;
				TMP$243$4 = -1ll;
				label$1479:;
				if( TMP$243$4 == 0ll ) goto label$396;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --eh-frame-hdr", 16ll, 0 );
				}
				label$396:;
				label$395:;
			}
			label$389:;
			label$388:;
		}
		goto label$384;
		label$385:;
		static const void* tmp$807[9ll] = {
			&&label$386,
			&&label$384,
			&&label$384,
			&&label$386,
			&&label$386,
			&&label$386,
			&&label$386,
			&&label$386,
			&&label$386,
		};
		if( (TMP$237$2 - 2ull) > 8ull ) goto label$384;
		goto *tmp$807[TMP$237$2 - 2ull];
		label$384:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" ", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 2048ll), -1ll, 0 );
	$7FBCTOOL LD$1;
	LD$1 = 2ll;
	int64 vr$393 = FBGETOPTION( 3ll );
	if( vr$393 != 11ll ) goto label$398;
	{
		LD$1 = 13ll;
	}
	label$398:;
	label$397:;
	int64 vr$395 = FBCRUNBIN( (char*)"linking", LD$1, &LDCLINE$1 );
	if( vr$395 != 0ll ) goto label$400;
	{
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$208;
	}
	label$400:;
	label$399:;
	{
		uint64 TMP$246$2;
		int64 vr$399 = FBGETOPTION( 3ll );
		TMP$246$2 = (uint64)vr$399;
		goto label$402;
		label$403:;
		{
			int64 F$3;
			int32 vr$400 = fb_FileFree(  );
			F$3 = (int64)vr$400;
			FBSTRING* vr$404 = fb_StrAllocTempDescZ( (char*)((uint8*)&FBC$ + 968ll) );
			int32 vr$405 = fb_FileOpen( (FBSTRING*)vr$404, 0u, 3u, 0u, (int32)F$3, 0 );
			if( (int64)vr$405 == 0ll ) goto label$405;
			{
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$208;
			}
			label$405:;
			label$404:;
			int32 VALUE$3;
			int64 vr$410 = FBGETOPTION( 38ll );
			VALUE$3 = (int32)vr$410;
			int32 vr$414 = fb_FilePutLarge( (int32)F$3, 533ll, (void*)&VALUE$3, 4ull );
			if( (int64)vr$414 == 0ll ) goto label$406;
			void* vr$416 = fb_ErrorThrowAt( 1275, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
			goto *vr$416;
			label$406:;
			int32 vr$418 = fb_FileClose( (int32)F$3 );
			if( (int64)vr$418 == 0ll ) goto label$407;
			void* vr$420 = fb_ErrorThrowAt( 1277, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
			goto *vr$420;
			label$407:;
		}
		goto label$401;
		label$408:;
		{
			int64 vr$421 = FBGETOPTION( 0ll );
			if( vr$421 != 2ll ) goto label$410;
			{
				int64 vr$424 = MAKEIMPLIB( &DLLNAME$1, &DEFFILE$1 );
				if( vr$424 != 0ll ) goto label$412;
				{
					fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
					fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
					fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
					goto label$208;
				}
				label$412:;
				label$411:;
			}
			label$410:;
			label$409:;
		}
		goto label$401;
		label$413:;
		{
			FBSTRING TMP$258$3;
			FBSTRING TMP$263$3;
			FBSTRING TMP$264$3;
			FBSTRING CXBEPATH$3;
			__builtin_memset( &CXBEPATH$3, 0, 24ll );
			FBSTRING CXBECLINE$3;
			__builtin_memset( &CXBECLINE$3, 0, 24ll );
			int64 RES$3;
			int64 vr$431 = fb_StrLen( (void*)((uint8*)&FBC$ + 2354ll), 129ll );
			if( vr$431 != 0ll ) goto label$415;
			{
				FBSTRING TMP$247$4;
				__builtin_memset( &TMP$247$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$247$4, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
				FBSTRING* vr$436 = HSTRIPEXT( &TMP$247$4 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2354ll), 129ll, (void*)vr$436, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$247$4 );
			}
			label$415:;
			label$414:;
			fb_StrAssign( (void*)&CXBECLINE$3, -1ll, (void*)"-TITLE:\x22", 9ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)((uint8*)&FBC$ + 2354ll), 129ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22 ", 3ll, 0 );
			int64 vr$443 = FBGETOPTION( 14ll );
			if( vr$443 == 0ll ) goto label$417;
			{
				FBSTRING TMP$253$4;
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"-DUMPINFO:\x22", 12ll, 0 );
				__builtin_memset( &TMP$253$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$253$4, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
				FBSTRING* vr$449 = HSTRIPEXT( &TMP$253$4 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)vr$449, -1ll, 0 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)".cxbe\x22", 7ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$253$4 );
			}
			label$417:;
			label$416:;
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" -OUT:\x22", 8ll, 0 );
			__builtin_memset( &TMP$258$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$258$3, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
			FBSTRING* vr$458 = HSTRIPEXT( &TMP$258$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)vr$458, -1ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)".xbe", 5ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22", 2ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$258$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" \x22", 3ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)((uint8*)&FBC$ + 968ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22", 2ll, 0 );
			if( *(int64*)((uint8*)&FBC$ + 112ll) != 0ll ) goto label$419;
			{
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" >nul", 6ll, 0 );
			}
			label$419:;
			label$418:;
			if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$421;
			{
				FBSTRING* vr$468 = fb_StrAllocTempDescZEx( (char*)"cxbe: ", 6ll );
				fb_PrintString( 0, (FBSTRING*)vr$468, 2 );
				fb_PrintString( 0, (FBSTRING*)&CXBECLINE$3, 1 );
			}
			label$421:;
			label$420:;
			FBCFINDBIN( 9ll, &CXBEPATH$3 );
			__builtin_memset( &TMP$263$3, 0, 24ll );
			FBSTRING* vr$475 = fb_StrConcat( &TMP$263$3, (void*)&CXBEPATH$3, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$264$3, 0, 24ll );
			FBSTRING* vr$478 = fb_StrConcat( &TMP$264$3, (void*)vr$475, -1ll, (void*)&CXBECLINE$3, -1ll );
			int32 vr$479 = fb_Shell( (FBSTRING*)vr$478 );
			RES$3 = (int64)vr$479;
			if( RES$3 == 0ll ) goto label$423;
			{
				if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$425;
				{
					FBSTRING TMP$266$5;
					FBSTRING* vr$481 = fb_LongintToStr( RES$3 );
					__builtin_memset( &TMP$266$5, 0, 24ll );
					FBSTRING* vr$484 = fb_StrConcat( &TMP$266$5, (void*)"cxbe failed: exit code ", 24ll, (void*)vr$481, -1ll );
					fb_PrintString( 0, (FBSTRING*)vr$484, 1 );
				}
				label$425:;
				label$424:;
				fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
				fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$208;
			}
			label$423:;
			label$422:;
			FBSTRING* vr$491 = fb_StrAllocTempDescZ( (char*)((uint8*)&FBC$ + 968ll) );
			fb_FileKill( (FBSTRING*)vr$491 );
			fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
			fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
		}
		goto label$401;
		label$402:;
		static const void* tmp$808[5ll] = {
			&&label$408,
			&&label$408,
			&&label$401,
			&&label$403,
			&&label$413,
		};
		if( TMP$246$2 > 4ull ) goto label$401;
		goto *tmp$808[TMP$246$2 - 0ull];
		label$401:;
	}
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
	fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
	fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
	label$208:;
	return fb$result$1;
}

static void HREADOBJINFO( void )
{
	label$426:;
	FBSTRING DAT$1;
	__builtin_memset( &DAT$1, 0, 24ll );
	int64 LANG$1;
	label$428:;
	{
		{
			uint64 TMP$267$3;
			int64 vr$2 = OBJINFOREADNEXT( &DAT$1 );
			TMP$267$3 = (uint64)vr$2;
			goto label$432;
			label$433:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), &DAT$1, 0ll );
			}
			goto label$431;
			label$434:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll), &DAT$1, 0ll );
			}
			goto label$431;
			label$435:;
			{
				if( *(int64*)((uint8*)&FBC$ + 3832ll) != 0ll ) goto label$437;
				{
					char* vr$7 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 20ll, (char*)vr$7, -1ll, 1ll, (char*)0ull );
					*(int64*)((uint8*)&FBC$ + 3832ll) = -1ll;
					FBSETOPTION( 35ll, -1ll );
				}
				label$437:;
				label$436:;
			}
			goto label$431;
			label$438:;
			{
				FBSETOPTION( 36ll, -1ll );
			}
			goto label$431;
			label$439:;
			{
				$7FB_LANG vr$8 = FBGETLANGID( (char*)*(char**)&DAT$1 );
				LANG$1 = vr$8;
				if( LANG$1 != -1ll ) goto label$441;
				{
					LANG$1 = 0ll;
				}
				label$441:;
				label$440:;
				if( LANG$1 == *(int64*)((uint8*)&FBC$ + 3824ll) ) goto label$443;
				{
					char* vr$9 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 21ll, (char*)vr$9, -1ll, 1ll, (char*)0ull );
					*($7FB_LANG*)((uint8*)&FBC$ + 3824ll) = LANG$1;
					FBSETOPTION( 10ll, LANG$1 );
				}
				label$443:;
				label$442:;
			}
			goto label$431;
			label$444:;
			{
				goto label$429;
			}
			goto label$431;
			label$432:;
			static const void* tmp$809[5ll] = {
				&&label$433,
				&&label$434,
				&&label$435,
				&&label$438,
				&&label$439,
			};
			if( TMP$267$3 > 4ull ) goto label$444;
			goto *tmp$809[TMP$267$3 - 0ull];
			label$431:;
		}
	}
	label$430:;
	goto label$428;
	label$429:;
	OBJINFOREADEND(  );
	fb_StrDelete( (FBSTRING*)&DAT$1 );
	label$427:;
}

static void HCOLLECTOBJINFO( void )
{
	label$445:;
	FBSTRING* S$1;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
	S$1 = (FBSTRING*)vr$1;
	label$447:;
	if( S$1 == (FBSTRING*)0ull ) goto label$448;
	{
		OBJINFOREADOBJ( S$1 );
		HREADOBJINFO(  );
		void* vr$2 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$2;
	}
	goto label$447;
	label$448:;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 792ll) );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$449:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$450;
	{
		if( *(int64*)((uint8*)I$1 + 24ll) != 0ll ) goto label$452;
		{
			OBJINFOREADLIB( (FBSTRING*)I$1, (struct $5TLIST*)((uint8*)&FBC$ + 880ll) );
			HREADOBJINFO(  );
		}
		label$452:;
		label$451:;
		void* vr$9 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$9;
	}
	goto label$449;
	label$450:;
	void* vr$11 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 464ll) );
	S$1 = (FBSTRING*)vr$11;
	label$453:;
	if( S$1 == (FBSTRING*)0ull ) goto label$454;
	{
		OBJINFOREADLIBFILE( S$1 );
		HREADOBJINFO(  );
		void* vr$12 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$12;
	}
	goto label$453;
	label$454:;
	label$446:;
}

static void HFATALINVALIDOPTION( FBSTRING* ARG$1, int64 IS_SOURCE$1 )
{
	FBSTRING TMP$268$1;
	FBSTRING TMP$269$1;
	FBSTRING TMP$270$1;
	int64 TMP$271$1;
	label$455:;
	if( IS_SOURCE$1 == 0ll ) goto label$457;
	TMP$271$1 = 0ll;
	goto label$1480;
	label$457:;
	TMP$271$1 = -1ll;
	label$1480:;
	__builtin_memset( &TMP$270$1, 0, 24ll );
	__builtin_memset( &TMP$268$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$268$1, (void*)"\x22", 2ll, (void*)ARG$1, -1ll );
	__builtin_memset( &TMP$269$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$269$1, (void*)vr$3, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)&TMP$270$1, -1ll, (void*)vr$6, -1ll, 0 );
	ERRREPORTEX( 81ll, (char*)*(char**)&TMP$270$1, TMP$271$1, 1ll, (char*)0ull );
	fb_StrDelete( (FBSTRING*)&TMP$270$1 );
	FBCEND( 1ll );
	label$456:;
}

static void HCHECKWAITINGOBJFILE( void )
{
	label$458:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 16ll), -1ll );
	if( vr$1 <= 0ll ) goto label$461;
	{
		FBSTRING TMP$272$2;
		FBSTRING TMP$273$2;
		__builtin_memset( &TMP$273$2, 0, 24ll );
		__builtin_memset( &TMP$272$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$272$2, (void*)"-o ", 4ll, (void*)((uint8*)&FBC$ + 16ll), -1ll );
		fb_StrAssign( (void*)&TMP$273$2, -1ll, (void*)vr$6, -1ll, 0 );
		ERRREPORTEX( 292ll, (char*)*(char**)&TMP$273$2, -1ll, 1ll, (char*)0ull );
		fb_StrDelete( (FBSTRING*)&TMP$273$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	}
	label$461:;
	label$460:;
	label$459:;
}

static void HSETIOFILE( struct $9FBCIOFILE* MODULE$1, FBSTRING* SRCFILE$1, int64 IS_RC$1 )
{
	label$462:;
	fb_StrAssign( (void*)MODULE$1, -1ll, (void*)SRCFILE$1, -1ll, 0 );
	int64 vr$3 = fb_StrLen( (void*)((uint8*)&FBC$ + 16ll), -1ll );
	if( vr$3 != 0ll ) goto label$465;
	{
		*(int64*)((uint8*)MODULE$1 + 32ll) = 0ll;
		if( IS_RC$1 == 0ll ) goto label$467;
		{
			FBSTRING TMP$275$3;
			__builtin_memset( &TMP$275$3, 0, 24ll );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$275$3, (void*)SRCFILE$1, -1ll, (void*)".o", 3ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)vr$7, -1ll, 0 );
		}
		goto label$466;
		label$467:;
		{
			FBSTRING TMP$276$3;
			FBSTRING* vr$9 = HSTRIPEXT( SRCFILE$1 );
			__builtin_memset( &TMP$276$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$276$3, (void*)vr$9, -1ll, (void*)".o", 3ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)vr$12, -1ll, 0 );
		}
		label$466:;
		*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) = MODULE$1;
	}
	goto label$464;
	label$465:;
	{
		*(int64*)((uint8*)MODULE$1 + 32ll) = -1ll;
	}
	label$464:;
	FBSTRING* vr$16 = FBCADDOBJ( (FBSTRING*)((uint8*)&FBC$ + 16ll) );
	*(FBSTRING**)((uint8*)MODULE$1 + 24ll) = vr$16;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	label$463:;
}

static void HADDBAS( FBSTRING* BASFILE$1 )
{
	label$468:;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	HSETIOFILE( (struct $9FBCIOFILE*)vr$1, BASFILE$1, 0ll );
	label$469:;
}

static void HPARSEGNUTRIPLET( FBSTRING* ARG$1, int64 SEPARATOR$1, int64* OS$1, int64* CPUTYPE$1 )
{
	label$470:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$475:;
		{
			FBSTRING* vr$1 = fb_StrAllocTempDescZ( (char*)*(char**)((int64)(struct $11FBGNUOSINFO*)GNUOSMAP$ + (I$2 << (4ll & 63ll))) );
			int64 vr$2 = fb_StrInstr( 1ll, (FBSTRING*)ARG$1, (FBSTRING*)vr$1 );
			if( vr$2 <= 0ll ) goto label$477;
			{
				*OS$1 = *(int64*)(((int64)(struct $11FBGNUOSINFO*)GNUOSMAP$ + (I$2 << (4ll & 63ll))) + 8ll);
				goto label$474;
			}
			label$477:;
			label$476:;
		}
		label$473:;
		I$2 = I$2 + 1ll;
		label$472:;
		if( I$2 <= 11ll ) goto label$475;
		label$474:;
	}
	if( SEPARATOR$1 <= 0ll ) goto label$479;
	{
		FBSTRING ARCH$2;
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)ARG$1, SEPARATOR$1 + -1ll );
		fb_StrInit( (void*)&ARCH$2, -1ll, (void*)vr$7, -1ll, 0 );
		{
			int64 I$3;
			I$3 = 0ll;
			label$483:;
			{
				int32 vr$11 = fb_StrCompare( (void*)&ARCH$2, -1ll, *(void**)((int64)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$3 << (4ll & 63ll))), 0ll );
				if( (int64)vr$11 != 0ll ) goto label$485;
				{
					*CPUTYPE$1 = *(int64*)(((int64)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$3 << (4ll & 63ll))) + 8ll);
					goto label$482;
				}
				label$485:;
				label$484:;
			}
			label$481:;
			I$3 = I$3 + 1ll;
			label$480:;
			if( I$3 <= 18ll ) goto label$483;
			label$482:;
		}
		fb_StrDelete( (FBSTRING*)&ARCH$2 );
	}
	label$479:;
	label$478:;
	label$471:;
}

static void HPARSETARGETARG( FBSTRING* ARG$1, int64* OS$1, int64* CPUTYPE$1, int64* IS_GNU_TRIPLET$1 )
{
	label$494:;
	*OS$1 = -1ll;
	*CPUTYPE$1 = -1ll;
	*IS_GNU_TRIPLET$1 = 0ll;
	FBSTRING LCASEARG$1;
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
	fb_StrInit( (void*)&LCASEARG$1, -1ll, (void*)vr$3, -1ll, 0 );
	{
		int64 I$2;
		I$2 = 0ll;
		label$499:;
		{
			int32 vr$7 = fb_StrCompare( (void*)&LCASEARG$1, -1ll, *(void**)((int64)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 24ll)), 0ll );
			if( (int64)vr$7 != 0ll ) goto label$501;
			{
				*OS$1 = *(int64*)(((int64)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 24ll)) + 8ll);
				*CPUTYPE$1 = *(int64*)(((int64)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 24ll)) + 16ll);
				fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
				goto label$495;
			}
			label$501:;
			label$500:;
		}
		label$497:;
		I$2 = I$2 + 1ll;
		label$496:;
		if( I$2 <= 11ll ) goto label$499;
		label$498:;
	}
	int64 SEPARATOR$1;
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (char*)"-", 1ll );
	int64 vr$16 = fb_StrInstr( 1ll, (FBSTRING*)ARG$1, (FBSTRING*)vr$15 );
	SEPARATOR$1 = vr$16;
	if( SEPARATOR$1 <= 0ll ) goto label$503;
	{
		FBSTRING TMP$315$2;
		FBSTRING TMP$316$2;
		__builtin_memset( &TMP$315$2, 0, 24ll );
		FBSTRING* vr$20 = fb_LEFT( (FBSTRING*)&LCASEARG$1, SEPARATOR$1 + -1ll );
		fb_StrAssign( (void*)&TMP$315$2, -1ll, (void*)vr$20, -1ll, 0 );
		int64 vr$23 = FBIDENTIFYOS( &TMP$315$2 );
		*OS$1 = vr$23;
		fb_StrDelete( (FBSTRING*)&TMP$315$2 );
		__builtin_memset( &TMP$316$2, 0, 24ll );
		int64 vr$28 = fb_StrLen( (void*)&LCASEARG$1, -1ll );
		FBSTRING* vr$31 = fb_RIGHT( (FBSTRING*)&LCASEARG$1, vr$28 - SEPARATOR$1 );
		fb_StrAssign( (void*)&TMP$316$2, -1ll, (void*)vr$31, -1ll, 0 );
		int64 vr$34 = FBCPUTYPEFROMCPUFAMILYID( &TMP$316$2 );
		*CPUTYPE$1 = vr$34;
		fb_StrDelete( (FBSTRING*)&TMP$316$2 );
	}
	label$503:;
	label$502:;
	if( ((int64)-(*OS$1 < 0ll) & (int64)-(*CPUTYPE$1 < 0ll)) == 0ll ) goto label$505;
	{
		HPARSEGNUTRIPLET( ARG$1, SEPARATOR$1, OS$1, CPUTYPE$1 );
		*IS_GNU_TRIPLET$1 = -1ll;
	}
	label$505:;
	label$504:;
	fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
	label$495:;
}

static void HANDLEOPT( int64 OPTID$1, FBSTRING* ARG$1, int64 IS_SOURCE$1 )
{
	label$506:;
	{
		uint64 TMP$319$2;
		TMP$319$2 = (uint64)OPTID$1;
		goto label$509;
		label$510:;
		{
			FBCADDOBJ( ARG$1 );
		}
		goto label$508;
		label$511:;
		{
			int32 vr$0 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"native", 7ll );
			*(int64*)((uint8*)&FBC$ + 56ll) = (int64)-((int64)vr$0 == 0ll);
			int64 vr$3 = FBIDENTIFYFBCARCH( ARG$1 );
			*(int64*)((uint8*)&FBC$ + 48ll) = vr$3;
			if( *(int64*)((uint8*)&FBC$ + 48ll) >= 0ll ) goto label$513;
			{
				FBSTRING TMP$322$4;
				FBSTRING TMP$323$4;
				__builtin_memset( &TMP$323$4, 0, 24ll );
				__builtin_memset( &TMP$322$4, 0, 24ll );
				FBSTRING* vr$7 = fb_StrConcat( &TMP$322$4, (void*)"-arch ", 7ll, (void*)ARG$1, -1ll );
				fb_StrAssign( (void*)&TMP$323$4, -1ll, (void*)vr$7, -1ll, 0 );
				HFATALINVALIDOPTION( &TMP$323$4, IS_SOURCE$1 );
				fb_StrDelete( (FBSTRING*)&TMP$323$4 );
			}
			label$513:;
			label$512:;
		}
		goto label$508;
		label$514:;
		{
			{
				FBSTRING TMP$324$4;
				fb_StrInit( (void*)&TMP$324$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$13 = fb_StrCompare( (void*)&TMP$324$4, -1ll, (void*)"att", 4ll );
				if( (int64)vr$13 != 0ll ) goto label$516;
				label$517:;
				{
					*(int64*)((uint8*)&FBC$ + 64ll) = 1ll;
				}
				goto label$515;
				label$516:;
				int32 vr$16 = fb_StrCompare( (void*)&TMP$324$4, -1ll, (void*)"intel", 6ll );
				if( (int64)vr$16 != 0ll ) goto label$518;
				label$519:;
				{
					*(int64*)((uint8*)&FBC$ + 64ll) = 0ll;
				}
				goto label$515;
				label$518:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$520:;
				label$515:;
				fb_StrDelete( (FBSTRING*)&TMP$324$4 );
			}
		}
		goto label$508;
		label$521:;
		{
			HADDBAS( ARG$1 );
		}
		goto label$508;
		label$522:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 3556ll), 261ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$508;
		label$523:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 104ll) = -1ll;
		}
		goto label$508;
		label$524:;
		{
			*(int64*)((uint8*)&FBC$ + 104ll) = -1ll;
		}
		goto label$508;
		label$525:;
		{
			FBADDPREDEFINE( ARG$1 );
		}
		goto label$508;
		label$526:;
		{
			FBSETOPTION( 0ll, 2ll );
		}
		goto label$508;
		label$527:;
		{
			FBSETOPTION( 16ll, -1ll );
			FBSETOPTION( 21ll, -1ll );
		}
		goto label$508;
		label$528:;
		{
			FBSETOPTION( 22ll, -1ll );
		}
		goto label$508;
		label$529:;
		{
			FBSETOPTION( 15ll, -1ll );
		}
		goto label$508;
		label$530:;
		{
			FBSETOPTION( 13ll, -1ll );
		}
		goto label$508;
		label$531:;
		{
			FBSETOPTION( 14ll, -1ll );
		}
		goto label$508;
		label$532:;
		{
			FBSETOPTION( 19ll, -1ll );
		}
		goto label$508;
		label$533:;
		{
			FBSETOPTION( 20ll, -1ll );
		}
		goto label$508;
		label$534:;
		{
			FBSETOPTION( 21ll, -1ll );
		}
		goto label$508;
		label$535:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1490ll), 129ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$508;
		label$536:;
		{
			FBSETOPTION( 16ll, -1ll );
			FBSETOPTION( 17ll, -1ll );
			FBSETOPTION( 21ll, -1ll );
		}
		goto label$508;
		label$537:;
		{
			FBSETOPTION( 16ll, -1ll );
			FBSETOPTION( 17ll, -1ll );
			FBSETOPTION( 18ll, -1ll );
			FBSETOPTION( 19ll, -1ll );
			FBSETOPTION( 22ll, -1ll );
			FBSETOPTION( 20ll, -1ll );
			FBSETOPTION( 21ll, -1ll );
		}
		goto label$508;
		label$538:;
		{
			FBSETOPTION( 33ll, -1ll );
		}
		goto label$508;
		label$539:;
		{
			FBSETOPTION( 36ll, -1ll );
		}
		goto label$508;
		label$540:;
		{
			int64 VALUE$3;
			$7FB_LANG vr$22 = FBGETLANGID( (char*)*(char**)ARG$1 );
			VALUE$3 = vr$22;
			if( VALUE$3 != -1ll ) goto label$542;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$542:;
			label$541:;
			int64 vr$23 = FBGETOPTION( 11ll );
			if( (IS_SOURCE$1 & vr$23) == 0ll ) goto label$544;
			{
				ERRREPORTWARN( 30ll, (char*)0ull, 1ll, (char*)0ull );
			}
			goto label$543;
			label$544:;
			{
				FBSETOPTION( 10ll, VALUE$3 );
				FBSETOPTION( 11ll, -1ll );
				*($7FB_LANG*)((uint8*)&FBC$ + 3824ll) = VALUE$3;
				if( IS_SOURCE$1 == 0ll ) goto label$546;
				{
					FBSETOPTION( 12ll, VALUE$3 );
				}
				label$546:;
				label$545:;
			}
			label$543:;
		}
		goto label$508;
		label$547:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$327$4;
				FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$327$4, -1ll, (void*)vr$25, -1ll, 0 );
				int32 vr$28 = fb_StrCompare( (void*)&TMP$327$4, -1ll, (void*)"PRECISE", 8ll );
				if( (int64)vr$28 != 0ll ) goto label$549;
				label$550:;
				{
					VALUE$3 = 0ll;
				}
				goto label$548;
				label$549:;
				int32 vr$31 = fb_StrCompare( (void*)&TMP$327$4, -1ll, (void*)"FAST", 5ll );
				if( (int64)vr$31 != 0ll ) goto label$551;
				label$552:;
				{
					VALUE$3 = 1ll;
				}
				goto label$548;
				label$551:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$553:;
				label$548:;
				fb_StrDelete( (FBSTRING*)&TMP$327$4 );
			}
			FBSETOPTION( 6ll, VALUE$3 );
		}
		goto label$508;
		label$554:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$330$4;
				FBSTRING* vr$34 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$330$4, -1ll, (void*)vr$34, -1ll, 0 );
				int32 vr$37 = fb_StrCompare( (void*)&TMP$330$4, -1ll, (void*)"X87", 4ll );
				if( (int64)vr$37 == 0ll ) goto label$557;
				label$558:;
				int32 vr$40 = fb_StrCompare( (void*)&TMP$330$4, -1ll, (void*)"FPU", 4ll );
				if( (int64)vr$40 != 0ll ) goto label$556;
				label$557:;
				{
					VALUE$3 = 0ll;
				}
				goto label$555;
				label$556:;
				int32 vr$43 = fb_StrCompare( (void*)&TMP$330$4, -1ll, (void*)"SSE", 4ll );
				if( (int64)vr$43 != 0ll ) goto label$559;
				label$560:;
				{
					VALUE$3 = 1ll;
				}
				goto label$555;
				label$559:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$561:;
				label$555:;
				fb_StrDelete( (FBSTRING*)&TMP$330$4 );
			}
			FBSETOPTION( 5ll, VALUE$3 );
		}
		goto label$508;
		label$562:;
		{
			FBSETOPTION( 13ll, -1ll );
			FBSETOPTION( 14ll, -1ll );
			FBSETOPTION( 15ll, -1ll );
		}
		goto label$508;
		label$563:;
		{
			{
				FBSTRING TMP$334$4;
				FBSTRING* vr$46 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$334$4, -1ll, (void*)vr$46, -1ll, 0 );
				int32 vr$49 = fb_StrCompare( (void*)&TMP$334$4, -1ll, (void*)"gas", 4ll );
				if( (int64)vr$49 != 0ll ) goto label$565;
				label$566:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 0ll;
				}
				goto label$564;
				label$565:;
				int32 vr$52 = fb_StrCompare( (void*)&TMP$334$4, -1ll, (void*)"gcc", 4ll );
				if( (int64)vr$52 != 0ll ) goto label$567;
				label$568:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 1ll;
				}
				goto label$564;
				label$567:;
				int32 vr$55 = fb_StrCompare( (void*)&TMP$334$4, -1ll, (void*)"llvm", 5ll );
				if( (int64)vr$55 != 0ll ) goto label$569;
				label$570:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 2ll;
				}
				goto label$564;
				label$569:;
				int32 vr$58 = fb_StrCompare( (void*)&TMP$334$4, -1ll, (void*)"gas64", 6ll );
				if( (int64)vr$58 != 0ll ) goto label$571;
				label$572:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 3ll;
				}
				goto label$564;
				label$571:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$573:;
				label$564:;
				fb_StrDelete( (FBSTRING*)&TMP$334$4 );
			}
		}
		goto label$508;
		label$574:;
		{
			*(int64*)((uint8*)&FBC$ + 128ll) = -1ll;
		}
		goto label$508;
		label$575:;
		{
			FBSTRING TMP$338$3;
			__builtin_memset( &TMP$338$3, 0, 24ll );
			FBSTRING* vr$62 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$338$3, -1ll, (void*)vr$62, -1ll, 0 );
			FBADDINCLUDEPATH( &TMP$338$3 );
			fb_StrDelete( (FBSTRING*)&TMP$338$3 );
		}
		goto label$508;
		label$576:;
		{
			FBADDPREINCLUDE( ARG$1 );
		}
		goto label$508;
		label$577:;
		{
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 528ll), ARG$1, 0ll );
		}
		goto label$508;
		label$578:;
		{
			int64 VALUE$3;
			$7FB_LANG vr$68 = FBGETLANGID( (char*)*(char**)ARG$1 );
			VALUE$3 = vr$68;
			if( VALUE$3 != -1ll ) goto label$580;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$580:;
			label$579:;
			int64 vr$69 = FBGETOPTION( 11ll );
			if( vr$69 != 0ll ) goto label$582;
			{
				FBSETOPTION( 10ll, VALUE$3 );
				*($7FB_LANG*)((uint8*)&FBC$ + 3824ll) = VALUE$3;
				if( IS_SOURCE$1 == 0ll ) goto label$584;
				{
					FBSETOPTION( 12ll, VALUE$3 );
				}
				label$584:;
				label$583:;
			}
			label$582:;
			label$581:;
		}
		goto label$508;
		label$585:;
		{
			FBSETOPTION( 0ll, 1ll );
		}
		goto label$508;
		label$586:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1229ll), 261ll, (void*)ARG$1, -1ll, 0 );
			*(int64*)((uint8*)&FBC$ + 1624ll) = -1ll;
		}
		goto label$508;
		label$587:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1632ll), 261ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$508;
		label$588:;
		{
			int64 VALUE$3;
			int32 vr$72 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"inf", 4ll );
			if( (int64)vr$72 != 0ll ) goto label$590;
			{
				VALUE$3 = 2147483647ll;
			}
			goto label$589;
			label$590:;
			{
				int32 vr$74 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = (int64)vr$74;
				if( VALUE$3 > 0ll ) goto label$592;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$592:;
				label$591:;
			}
			label$589:;
			FBSETOPTION( 26ll, VALUE$3 );
		}
		goto label$508;
		label$593:;
		{
			FBSETOPTION( 35ll, -1ll );
			*(int64*)((uint8*)&FBC$ + 3832ll) = -1ll;
		}
		goto label$508;
		label$594:;
		{
			*(int64*)((uint8*)&FBC$ + 2488ll) = -1ll;
		}
		goto label$508;
		label$595:;
		{
			FBSETOPTION( 25ll, 0ll );
		}
		goto label$508;
		label$596:;
		{
			FBSTRING TMP$340$3;
			struct $7FBARRAYI8FBSTRINGE LIBS$3;
			*(FBSTRING**)&LIBS$3 = (FBSTRING*)0ull;
			*(FBSTRING**)((uint8*)&LIBS$3 + 8ll) = (FBSTRING*)0ull;
			*(int64*)((uint8*)&LIBS$3 + 16ll) = 0ll;
			*(int64*)((uint8*)&LIBS$3 + 24ll) = 24ll;
			*(int64*)((uint8*)&LIBS$3 + 32ll) = 0ll;
			*(int64*)((uint8*)&LIBS$3 + 40ll) = 8ll;
			__builtin_memset( (void*)((uint8*)&LIBS$3 + 48ll), 0, 192ll );
			__builtin_memset( &TMP$340$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$340$3, -1ll, (void*)",", 2ll, 0 );
			HSPLITSTR( ARG$1, &TMP$340$3, &LIBS$3 );
			fb_StrDelete( (FBSTRING*)&TMP$340$3 );
			{
				int64 I$4;
				int64 vr$83 = fb_ArrayLBound( (struct $7FBARRAYIKvE*)&LIBS$3, 1ll );
				I$4 = vr$83;
				int64 TMP$341$4;
				int64 vr$85 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LIBS$3, 1ll );
				TMP$341$4 = vr$85;
				goto label$597;
				label$600:;
				{
					int64 vr$89 = fb_StrLen( (void*)((I$4 * 24ll) + *(int64*)&LIBS$3), -1ll );
					if( vr$89 <= 0ll ) goto label$602;
					{
						STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 704ll), (FBSTRING*)((I$4 * 24ll) + *(int64*)&LIBS$3), 0ll );
					}
					label$602:;
					label$601:;
				}
				label$598:;
				I$4 = I$4 + 1ll;
				label$597:;
				if( I$4 <= TMP$341$4 ) goto label$600;
				label$599:;
			}
			fb_ArrayStrErase( (struct $7FBARRAYIvE*)&LIBS$3 );
		}
		goto label$508;
		label$603:;
		{
			FBSETOPTION( 39ll, 0ll );
		}
		goto label$508;
		label$604:;
		{
			*(int64*)((uint8*)&FBC$ + 2504ll) = 0ll;
		}
		goto label$508;
		label$605:;
		{
			HCHECKWAITINGOBJFILE(  );
			if( *(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) == (struct $9FBCIOFILE*)0ull ) goto label$607;
			{
				fb_StrAssign( *(void**)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) + 24ll), -1ll, (void*)ARG$1, -1ll, 0 );
				*(int64*)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) + 32ll) = -1ll;
			}
			goto label$606;
			label$607:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)ARG$1, -1ll, 0 );
			}
			label$606:;
		}
		goto label$508;
		label$608:;
		{
			int64 VALUE$3;
			int32 vr$99 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"max", 4ll );
			if( (int64)vr$99 != 0ll ) goto label$610;
			{
				VALUE$3 = 3ll;
			}
			goto label$609;
			label$610:;
			{
				int32 vr$101 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = (int64)vr$101;
				if( VALUE$3 >= 0ll ) goto label$612;
				{
					VALUE$3 = 0ll;
				}
				goto label$611;
				label$612:;
				if( VALUE$3 <= 3ll ) goto label$613;
				{
					VALUE$3 = 3ll;
				}
				label$613:;
				label$611:;
			}
			label$609:;
			FBSETOPTION( 8ll, VALUE$3 );
		}
		goto label$508;
		label$614:;
		{
			FBSTRING TMP$343$3;
			__builtin_memset( &TMP$343$3, 0, 24ll );
			FBSTRING* vr$104 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$343$3, -1ll, (void*)vr$104, -1ll, 0 );
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 616ll), &TMP$343$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$343$3 );
		}
		goto label$508;
		label$615:;
		{
			FBSETOPTION( 37ll, -1ll );
		}
		goto label$508;
		label$616:;
		{
			FBSETOPTION( 1ll, -1ll );
			*(int64*)((uint8*)&FBC$ + 72ll) = -1ll;
		}
		goto label$508;
		label$617:;
		{
			FBSTRING* vr$109 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)vr$109, -1ll, 0 );
			HREPLACESLASH( (char*)((uint8*)&FBC$ + 2512ll), 47ll );
		}
		goto label$508;
		label$618:;
		{
			{
				FBSTRING TMP$344$4;
				fb_StrInit( (void*)&TMP$344$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$114 = fb_StrCompare( (void*)&TMP$344$4, -1ll, (void*)"host", 5ll );
				if( (int64)vr$114 != 0ll ) goto label$620;
				label$621:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 0ll;
				}
				goto label$619;
				label$620:;
				int32 vr$117 = fb_StrCompare( (void*)&TMP$344$4, -1ll, (void*)"target", 7ll );
				if( (int64)vr$117 != 0ll ) goto label$622;
				label$623:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 1ll;
				}
				goto label$619;
				label$622:;
				int32 vr$120 = fb_StrCompare( (void*)&TMP$344$4, -1ll, (void*)"x", 2ll );
				if( (int64)vr$120 != 0ll ) goto label$624;
				label$625:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 2ll;
				}
				goto label$619;
				label$624:;
				int32 vr$123 = fb_StrCompare( (void*)&TMP$344$4, -1ll, (void*)"fblibdir", 9ll );
				if( (int64)vr$123 != 0ll ) goto label$626;
				label$627:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 3ll;
				}
				goto label$619;
				label$626:;
				int32 vr$126 = fb_StrCompare( (void*)&TMP$344$4, -1ll, (void*)"sha-1", 6ll );
				if( (int64)vr$126 != 0ll ) goto label$628;
				label$629:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 4ll;
				}
				goto label$619;
				label$628:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$630:;
				label$619:;
				fb_StrDelete( (FBSTRING*)&TMP$344$4 );
			}
		}
		goto label$508;
		label$631:;
		{
			FBSETOPTION( 23ll, -1ll );
		}
		goto label$508;
		label$632:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 72ll) = -1ll;
			*(int64*)((uint8*)&FBC$ + 80ll) = -1ll;
		}
		goto label$508;
		label$633:;
		{
			*(int64*)((uint8*)&FBC$ + 80ll) = -1ll;
		}
		goto label$508;
		label$634:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 88ll) = -1ll;
			*(int64*)((uint8*)&FBC$ + 96ll) = -1ll;
		}
		goto label$508;
		label$635:;
		{
			*(int64*)((uint8*)&FBC$ + 96ll) = -1ll;
		}
		goto label$508;
		label$636:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1893ll), 129ll, (void*)ARG$1, -1ll, 0 );
			{
				FBSTRING TMP$350$4;
				fb_StrInit( (void*)&TMP$350$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$132 = fb_StrCompare( (void*)&TMP$350$4, -1ll, (void*)"gui", 4ll );
				if( (int64)vr$132 != 0ll ) goto label$638;
				label$639:;
				{
					FBSETOPTION( 41ll, 1ll );
				}
				label$638:;
				label$637:;
				fb_StrDelete( (FBSTRING*)&TMP$350$4 );
			}
		}
		goto label$508;
		label$640:;
		{
			FBSETOPTION( 40ll, -1ll );
		}
		goto label$508;
		label$641:;
		{
			*(int64*)((uint8*)&FBC$ + 2496ll) = -1ll;
		}
		goto label$508;
		label$642:;
		{
			*(int64*)((uint8*)&FBC$ + 2504ll) = -1ll;
		}
		goto label$508;
		label$643:;
		{
			int32 vr$135 = fb_VALINT( (FBSTRING*)ARG$1 );
			FBSETOPTION( 38ll, (int64)vr$135 << (10ll & 63ll) );
		}
		goto label$508;
		label$644:;
		{
			int64 OS$3;
			__builtin_memset( &OS$3, 0, 8ll );
			int64 CPUTYPE$3;
			__builtin_memset( &CPUTYPE$3, 0, 8ll );
			int64 IS_GNU_TRIPLET$3;
			__builtin_memset( &IS_GNU_TRIPLET$3, 0, 8ll );
			HPARSETARGETARG( ARG$1, &OS$3, &CPUTYPE$3, &IS_GNU_TRIPLET$3 );
			if( ((int64)-(OS$3 < 0ll) | (int64)-(CPUTYPE$3 < 0ll)) == 0ll ) goto label$646;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$646:;
			label$645:;
			FBSETOPTION( 3ll, OS$3 );
			FBSETOPTION( 4ll, CPUTYPE$3 );
			if( (((int64)-(OS$3 != 2ll) | (int64)-(CPUTYPE$3 != 22ll)) | IS_GNU_TRIPLET$3) == 0ll ) goto label$648;
			{
				FBSTRING TMP$351$4;
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2096ll), 129ll, (void*)ARG$1, -1ll, 0 );
				__builtin_memset( &TMP$351$4, 0, 24ll );
				FBSTRING* vr$155 = fb_StrConcat( &TMP$351$4, (void*)((uint8*)&FBC$ + 2096ll), 129ll, (void*)"-", 2ll );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2225ll), 129ll, (void*)vr$155, -1ll, 0 );
			}
			label$648:;
			label$647:;
		}
		goto label$508;
		label$649:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2354ll), 129ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$508;
		label$650:;
		{
			*(int64*)((uint8*)&FBC$ + 112ll) = -1ll;
		}
		goto label$508;
		label$651:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$352$4;
				FBSTRING* vr$158 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$352$4, -1ll, (void*)vr$158, -1ll, 0 );
				int32 vr$161 = fb_StrCompare( (void*)&TMP$352$4, -1ll, (void*)"NONE", 5ll );
				if( (int64)vr$161 == 0ll ) goto label$654;
				label$655:;
				int32 vr$164 = fb_StrCompare( (void*)&TMP$352$4, -1ll, (void*)"0", 2ll );
				if( (int64)vr$164 != 0ll ) goto label$653;
				label$654:;
				{
					VALUE$3 = 0ll;
				}
				goto label$652;
				label$653:;
				int32 vr$167 = fb_StrCompare( (void*)&TMP$352$4, -1ll, (void*)"1", 2ll );
				if( (int64)vr$167 != 0ll ) goto label$656;
				label$657:;
				{
					VALUE$3 = 1ll;
				}
				goto label$652;
				label$656:;
				int32 vr$170 = fb_StrCompare( (void*)&TMP$352$4, -1ll, (void*)"2", 2ll );
				if( (int64)vr$170 != 0ll ) goto label$658;
				label$659:;
				{
					VALUE$3 = 2ll;
				}
				goto label$652;
				label$658:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$660:;
				label$652:;
				fb_StrDelete( (FBSTRING*)&TMP$352$4 );
			}
			FBSETOPTION( 7ll, VALUE$3 );
		}
		goto label$508;
		label$661:;
		{
			if( IS_SOURCE$1 == 0ll ) goto label$663;
			{
				if( *(int64*)((uint8*)&FBC$ + 120ll) != 0ll ) goto label$665;
				{
					HPRINTVERSION( *(int64*)((uint8*)&FBC$ + 112ll) );
				}
				label$665:;
				label$664:;
			}
			label$663:;
			label$662:;
			*(int64*)((uint8*)&FBC$ + 120ll) = -1ll;
		}
		goto label$508;
		label$666:;
		{
			int64 VALUE$3;
			VALUE$3 = -1ll;
			{
				FBSTRING TMP$356$4;
				fb_StrInit( (void*)&TMP$356$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$175 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"all", 4ll );
				if( (int64)vr$175 != 0ll ) goto label$668;
				label$669:;
				{
					VALUE$3 = 0ll;
				}
				goto label$667;
				label$668:;
				int32 vr$178 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"none", 5ll );
				if( (int64)vr$178 != 0ll ) goto label$670;
				label$671:;
				{
					VALUE$3 = 4ll;
				}
				goto label$667;
				label$670:;
				int32 vr$181 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"param", 6ll );
				if( (int64)vr$181 != 0ll ) goto label$672;
				label$673:;
				{
					int64 vr$183 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$183 | 2ll );
				}
				goto label$667;
				label$672:;
				int32 vr$186 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"escape", 7ll );
				if( (int64)vr$186 != 0ll ) goto label$674;
				label$675:;
				{
					int64 vr$188 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$188 | 1ll );
				}
				goto label$667;
				label$674:;
				int32 vr$191 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"next", 5ll );
				if( (int64)vr$191 != 0ll ) goto label$676;
				label$677:;
				{
					int64 vr$193 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$193 | 8ll );
				}
				goto label$667;
				label$676:;
				int32 vr$196 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"signedness", 11ll );
				if( (int64)vr$196 != 0ll ) goto label$678;
				label$679:;
				{
					int64 vr$198 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$198 | 32ll );
				}
				goto label$667;
				label$678:;
				int32 vr$201 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"constness", 10ll );
				if( (int64)vr$201 != 0ll ) goto label$680;
				label$681:;
				{
					int64 vr$203 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$203 | 128ll );
					VALUE$3 = 0ll;
				}
				goto label$667;
				label$680:;
				int32 vr$206 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"funcptr", 8ll );
				if( (int64)vr$206 != 0ll ) goto label$682;
				label$683:;
				{
					int64 vr$208 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$208 | 64ll );
					VALUE$3 = 0ll;
				}
				goto label$667;
				label$682:;
				int32 vr$211 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"suffix", 7ll );
				if( (int64)vr$211 != 0ll ) goto label$684;
				label$685:;
				{
					int64 vr$213 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$213 | 256ll );
				}
				goto label$667;
				label$684:;
				int32 vr$216 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"pedantic", 9ll );
				if( (int64)vr$216 != 0ll ) goto label$686;
				label$687:;
				{
					FBSETOPTION( 27ll, 4294965527ll );
					if( VALUE$3 <= 1ll ) goto label$689;
					{
						VALUE$3 = 1ll;
					}
					label$689:;
					label$688:;
				}
				goto label$667;
				label$686:;
				int32 vr$219 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"error", 6ll );
				if( (int64)vr$219 != 0ll ) goto label$690;
				label$691:;
				{
					int64 vr$221 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$221 | 512ll );
				}
				goto label$667;
				label$690:;
				int32 vr$224 = fb_StrCompare( (void*)&TMP$356$4, -1ll, (void*)"upcast", 7ll );
				if( (int64)vr$224 != 0ll ) goto label$692;
				label$693:;
				{
					int64 vr$226 = FBGETOPTION( 27ll );
					FBSETOPTION( 27ll, vr$226 | 1024ll );
				}
				goto label$667;
				label$692:;
				{
					int32 vr$228 = fb_VALINT( (FBSTRING*)ARG$1 );
					VALUE$3 = (int64)vr$228;
				}
				label$694:;
				label$667:;
				fb_StrDelete( (FBSTRING*)&TMP$356$4 );
			}
			if( VALUE$3 < 0ll ) goto label$696;
			{
				FBSETOPTION( 24ll, VALUE$3 );
			}
			label$696:;
			label$695:;
		}
		goto label$508;
		label$697:;
		{
			FBSTRING TMP$369$3;
			FBSTRING TMP$370$3;
			FBSTRING TMP$371$3;
			FBSTRING* vr$232 = HREPLACE( (char*)*(char**)ARG$1, (char*)",", (char*)" " );
			__builtin_memset( &TMP$369$3, 0, 24ll );
			FBSTRING* vr$235 = fb_StrConcat( &TMP$369$3, (void*)" ", 2ll, (void*)vr$232, -1ll );
			__builtin_memset( &TMP$370$3, 0, 24ll );
			FBSTRING* vr$238 = fb_StrConcat( &TMP$370$3, (void*)vr$235, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$371$3, 0, 24ll );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$371$3, (void*)((uint8*)&FBC$ + 2024ll), -1ll, (void*)vr$238, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2024ll), -1ll, (void*)vr$242, -1ll, 0 );
		}
		goto label$508;
		label$698:;
		{
			FBSTRING TMP$372$3;
			FBSTRING TMP$373$3;
			FBSTRING TMP$374$3;
			FBSTRING* vr$245 = HREPLACE( (char*)*(char**)ARG$1, (char*)",", (char*)" " );
			__builtin_memset( &TMP$372$3, 0, 24ll );
			FBSTRING* vr$248 = fb_StrConcat( &TMP$372$3, (void*)" ", 2ll, (void*)vr$245, -1ll );
			__builtin_memset( &TMP$373$3, 0, 24ll );
			FBSTRING* vr$251 = fb_StrConcat( &TMP$373$3, (void*)vr$248, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$374$3, 0, 24ll );
			FBSTRING* vr$255 = fb_StrConcat( &TMP$374$3, (void*)((uint8*)&FBC$ + 2072ll), -1ll, (void*)vr$251, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2072ll), -1ll, (void*)vr$255, -1ll, 0 );
		}
		goto label$508;
		label$699:;
		{
			FBSTRING TMP$375$3;
			FBSTRING TMP$376$3;
			FBSTRING TMP$377$3;
			FBSTRING* vr$258 = HREPLACE( (char*)*(char**)ARG$1, (char*)",", (char*)" " );
			__builtin_memset( &TMP$375$3, 0, 24ll );
			FBSTRING* vr$261 = fb_StrConcat( &TMP$375$3, (void*)" ", 2ll, (void*)vr$258, -1ll );
			__builtin_memset( &TMP$376$3, 0, 24ll );
			FBSTRING* vr$264 = fb_StrConcat( &TMP$376$3, (void*)vr$261, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$377$3, 0, 24ll );
			FBSTRING* vr$268 = fb_StrConcat( &TMP$377$3, (void*)((uint8*)&FBC$ + 2048ll), -1ll, (void*)vr$264, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2048ll), -1ll, (void*)vr$268, -1ll, 0 );
		}
		goto label$508;
		label$700:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 968ll), 261ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$508;
		label$701:;
		{
			{
				FBSTRING TMP$378$4;
				FBSTRING* vr$271 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$378$4, -1ll, (void*)vr$271, -1ll, 0 );
				int32 vr$274 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"gosub-setjmp", 13ll );
				if( (int64)vr$274 != 0ll ) goto label$703;
				label$704:;
				{
					FBSETOPTION( 28ll, -1ll );
				}
				goto label$702;
				label$703:;
				int32 vr$277 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"valist-as-ptr", 14ll );
				if( (int64)vr$277 != 0ll ) goto label$705;
				label$706:;
				{
					FBSETOPTION( 29ll, -1ll );
				}
				goto label$702;
				label$705:;
				int32 vr$280 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"no-thiscall", 12ll );
				if( (int64)vr$280 != 0ll ) goto label$707;
				label$708:;
				{
					FBSETOPTION( 30ll, -1ll );
				}
				goto label$702;
				label$707:;
				int32 vr$283 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"no-fastcall", 12ll );
				if( (int64)vr$283 != 0ll ) goto label$709;
				label$710:;
				{
					FBSETOPTION( 31ll, -1ll );
				}
				goto label$702;
				label$709:;
				int32 vr$286 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"fbrt", 5ll );
				if( (int64)vr$286 != 0ll ) goto label$711;
				label$712:;
				{
					FBSETOPTION( 32ll, -1ll );
				}
				goto label$702;
				label$711:;
				int32 vr$289 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"nocmdline", 10ll );
				if( (int64)vr$289 != 0ll ) goto label$713;
				label$714:;
				{
					FBSETOPTION( 42ll, -1ll );
				}
				goto label$702;
				label$713:;
				int32 vr$292 = fb_StrCompare( (void*)&TMP$378$4, -1ll, (void*)"retinflts", 10ll );
				if( (int64)vr$292 != 0ll ) goto label$715;
				label$716:;
				{
					FBSETOPTION( 43ll, -1ll );
				}
				goto label$702;
				label$715:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$717:;
				label$702:;
				fb_StrDelete( (FBSTRING*)&TMP$378$4 );
			}
		}
		goto label$508;
		label$509:;
		static const void* tmp$810[71ll] = {
			&&label$510,
			&&label$511,
			&&label$514,
			&&label$521,
			&&label$522,
			&&label$523,
			&&label$524,
			&&label$525,
			&&label$526,
			&&label$526,
			&&label$527,
			&&label$528,
			&&label$529,
			&&label$530,
			&&label$531,
			&&label$532,
			&&label$533,
			&&label$534,
			&&label$535,
			&&label$536,
			&&label$537,
			&&label$538,
			&&label$539,
			&&label$540,
			&&label$547,
			&&label$554,
			&&label$562,
			&&label$563,
			&&label$574,
			&&label$575,
			&&label$576,
			&&label$577,
			&&label$578,
			&&label$585,
			&&label$586,
			&&label$587,
			&&label$588,
			&&label$593,
			&&label$594,
			&&label$595,
			&&label$596,
			&&label$603,
			&&label$604,
			&&label$605,
			&&label$608,
			&&label$614,
			&&label$615,
			&&label$616,
			&&label$617,
			&&label$618,
			&&label$631,
			&&label$632,
			&&label$633,
			&&label$634,
			&&label$635,
			&&label$636,
			&&label$640,
			&&label$641,
			&&label$642,
			&&label$643,
			&&label$644,
			&&label$649,
			&&label$650,
			&&label$651,
			&&label$661,
			&&label$666,
			&&label$697,
			&&label$698,
			&&label$699,
			&&label$700,
			&&label$701,
		};
		if( TMP$319$2 > 70ull ) goto label$508;
		goto *tmp$810[TMP$319$2 - 0ull];
		label$508:;
	}
	label$507:;
}

static int64 PARSEOPTION( char* OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$718:;
	{
		uint64 TMP$386$2;
		TMP$386$2 = (uint64)*(uint8*)OPT$1;
		goto label$721;
		label$722:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$724;
			{
				fb$result$1 = 0ll;
				goto label$719;
			}
			label$724:;
			label$723:;
			int32 vr$5 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"arch", 5ll );
			if( (int64)vr$5 != 0ll ) goto label$726;
			{
				fb$result$1 = 1ll;
				goto label$719;
			}
			label$726:;
			label$725:;
			int32 vr$7 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"asm", 4ll );
			if( (int64)vr$7 != 0ll ) goto label$728;
			{
				fb$result$1 = 2ll;
				goto label$719;
			}
			label$728:;
			label$727:;
		}
		goto label$720;
		label$729:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$731;
			{
				fb$result$1 = 3ll;
				goto label$719;
			}
			label$731:;
			label$730:;
			int32 vr$11 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"buildprefix", 12ll );
			if( (int64)vr$11 != 0ll ) goto label$733;
			{
				fb$result$1 = 4ll;
				goto label$719;
			}
			label$733:;
			label$732:;
		}
		goto label$720;
		label$734:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$736;
			{
				fb$result$1 = 5ll;
				goto label$719;
			}
			label$736:;
			label$735:;
		}
		goto label$720;
		label$737:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$739;
			{
				fb$result$1 = 6ll;
				goto label$719;
			}
			label$739:;
			label$738:;
		}
		goto label$720;
		label$740:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$742;
			{
				fb$result$1 = 7ll;
				goto label$719;
			}
			label$742:;
			label$741:;
			int32 vr$19 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"dll", 4ll );
			if( (int64)vr$19 != 0ll ) goto label$744;
			{
				fb$result$1 = 8ll;
				goto label$719;
			}
			label$744:;
			label$743:;
			int32 vr$21 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"dylib", 6ll );
			if( (int64)vr$21 != 0ll ) goto label$746;
			{
				fb$result$1 = 9ll;
				goto label$719;
			}
			label$746:;
			label$745:;
		}
		goto label$720;
		label$747:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$749;
			{
				fb$result$1 = 10ll;
				goto label$719;
			}
			label$749:;
			label$748:;
			int32 vr$25 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"ex", 3ll );
			if( (int64)vr$25 != 0ll ) goto label$751;
			{
				fb$result$1 = 19ll;
				goto label$719;
			}
			label$751:;
			label$750:;
			int32 vr$27 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"earray", 7ll );
			if( (int64)vr$27 != 0ll ) goto label$753;
			{
				fb$result$1 = 11ll;
				goto label$719;
			}
			label$753:;
			label$752:;
			int32 vr$29 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"eassert", 8ll );
			if( (int64)vr$29 != 0ll ) goto label$755;
			{
				fb$result$1 = 12ll;
				goto label$719;
			}
			label$755:;
			label$754:;
			int32 vr$31 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"edebug", 7ll );
			if( (int64)vr$31 != 0ll ) goto label$757;
			{
				fb$result$1 = 13ll;
				goto label$719;
			}
			label$757:;
			label$756:;
			int32 vr$33 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"edebuginfo", 11ll );
			if( (int64)vr$33 != 0ll ) goto label$759;
			{
				fb$result$1 = 14ll;
				goto label$719;
			}
			label$759:;
			label$758:;
			int32 vr$35 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"elocation", 10ll );
			if( (int64)vr$35 != 0ll ) goto label$761;
			{
				fb$result$1 = 15ll;
				goto label$719;
			}
			label$761:;
			label$760:;
			int32 vr$37 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"enullptr", 9ll );
			if( (int64)vr$37 != 0ll ) goto label$763;
			{
				fb$result$1 = 16ll;
				goto label$719;
			}
			label$763:;
			label$762:;
			int32 vr$39 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"eunwind", 8ll );
			if( (int64)vr$39 != 0ll ) goto label$765;
			{
				fb$result$1 = 17ll;
				goto label$719;
			}
			label$765:;
			label$764:;
			int32 vr$41 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"entry", 6ll );
			if( (int64)vr$41 != 0ll ) goto label$767;
			{
				fb$result$1 = 18ll;
				goto label$719;
			}
			label$767:;
			label$766:;
			int32 vr$43 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"exx", 4ll );
			if( (int64)vr$43 != 0ll ) goto label$769;
			{
				fb$result$1 = 20ll;
				goto label$719;
			}
			label$769:;
			label$768:;
			int32 vr$45 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"export", 7ll );
			if( (int64)vr$45 != 0ll ) goto label$771;
			{
				fb$result$1 = 21ll;
				goto label$719;
			}
			label$771:;
			label$770:;
		}
		goto label$720;
		label$772:;
		{
			int32 vr$47 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"fbgfx", 6ll );
			if( (int64)vr$47 != 0ll ) goto label$774;
			{
				fb$result$1 = 22ll;
				goto label$719;
			}
			label$774:;
			label$773:;
			int32 vr$49 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"forcelang", 10ll );
			if( (int64)vr$49 != 0ll ) goto label$776;
			{
				fb$result$1 = 23ll;
				goto label$719;
			}
			label$776:;
			label$775:;
			int32 vr$51 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"fpmode", 7ll );
			if( (int64)vr$51 != 0ll ) goto label$778;
			{
				fb$result$1 = 24ll;
				goto label$719;
			}
			label$778:;
			label$777:;
			int32 vr$53 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"fpu", 4ll );
			if( (int64)vr$53 != 0ll ) goto label$780;
			{
				fb$result$1 = 25ll;
				goto label$719;
			}
			label$780:;
			label$779:;
		}
		goto label$720;
		label$781:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$783;
			{
				fb$result$1 = 26ll;
				goto label$719;
			}
			label$783:;
			label$782:;
			int32 vr$57 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"gen", 4ll );
			if( (int64)vr$57 != 0ll ) goto label$785;
			{
				fb$result$1 = 27ll;
				goto label$719;
			}
			label$785:;
			label$784:;
		}
		goto label$720;
		label$786:;
		{
			int32 vr$59 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"help", 5ll );
			if( (int64)vr$59 != 0ll ) goto label$788;
			{
				fb$result$1 = 28ll;
				goto label$719;
			}
			label$788:;
			label$787:;
		}
		goto label$720;
		label$789:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$791;
			{
				fb$result$1 = 29ll;
				goto label$719;
			}
			label$791:;
			label$790:;
			int32 vr$63 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"include", 8ll );
			if( (int64)vr$63 != 0ll ) goto label$793;
			{
				fb$result$1 = 30ll;
				goto label$719;
			}
			label$793:;
			label$792:;
		}
		goto label$720;
		label$794:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$796;
			{
				fb$result$1 = 31ll;
				goto label$719;
			}
			label$796:;
			label$795:;
			int32 vr$67 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"lang", 5ll );
			if( (int64)vr$67 != 0ll ) goto label$798;
			{
				fb$result$1 = 32ll;
				goto label$719;
			}
			label$798:;
			label$797:;
			int32 vr$69 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"lib", 4ll );
			if( (int64)vr$69 != 0ll ) goto label$800;
			{
				fb$result$1 = 33ll;
				goto label$719;
			}
			label$800:;
			label$799:;
		}
		goto label$720;
		label$801:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$803;
			{
				fb$result$1 = 34ll;
				goto label$719;
			}
			label$803:;
			label$802:;
			int32 vr$73 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"map", 4ll );
			if( (int64)vr$73 != 0ll ) goto label$805;
			{
				fb$result$1 = 35ll;
				goto label$719;
			}
			label$805:;
			label$804:;
			int32 vr$75 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"maxerr", 7ll );
			if( (int64)vr$75 != 0ll ) goto label$807;
			{
				fb$result$1 = 36ll;
				goto label$719;
			}
			label$807:;
			label$806:;
			int32 vr$77 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"mt", 3ll );
			if( (int64)vr$77 != 0ll ) goto label$809;
			{
				fb$result$1 = 37ll;
				goto label$719;
			}
			label$809:;
			label$808:;
		}
		goto label$720;
		label$810:;
		{
			int32 vr$79 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"noerrline", 10ll );
			if( (int64)vr$79 != 0ll ) goto label$812;
			{
				fb$result$1 = 39ll;
				goto label$719;
			}
			label$812:;
			label$811:;
			int32 vr$81 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"nodeflibs", 10ll );
			if( (int64)vr$81 != 0ll ) goto label$814;
			{
				fb$result$1 = 38ll;
				goto label$719;
			}
			label$814:;
			label$813:;
			int32 vr$83 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"nolib", 6ll );
			if( (int64)vr$83 != 0ll ) goto label$816;
			{
				fb$result$1 = 40ll;
				goto label$719;
			}
			label$816:;
			label$815:;
			int32 vr$85 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"noobjinfo", 10ll );
			if( (int64)vr$85 != 0ll ) goto label$818;
			{
				fb$result$1 = 41ll;
				goto label$719;
			}
			label$818:;
			label$817:;
			int32 vr$87 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"nostrip", 8ll );
			if( (int64)vr$87 != 0ll ) goto label$820;
			{
				fb$result$1 = 42ll;
				goto label$719;
			}
			label$820:;
			label$819:;
		}
		goto label$720;
		label$821:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$823;
			{
				fb$result$1 = 43ll;
				goto label$719;
			}
			label$823:;
			label$822:;
		}
		goto label$720;
		label$824:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$826;
			{
				fb$result$1 = 44ll;
				goto label$719;
			}
			label$826:;
			label$825:;
		}
		goto label$720;
		label$827:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$829;
			{
				fb$result$1 = 45ll;
				goto label$719;
			}
			label$829:;
			label$828:;
			int32 vr$95 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"pic", 4ll );
			if( (int64)vr$95 != 0ll ) goto label$831;
			{
				fb$result$1 = 46ll;
				goto label$719;
			}
			label$831:;
			label$830:;
			int32 vr$97 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"pp", 3ll );
			if( (int64)vr$97 != 0ll ) goto label$833;
			{
				fb$result$1 = 47ll;
				goto label$719;
			}
			label$833:;
			label$832:;
			int32 vr$99 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"prefix", 7ll );
			if( (int64)vr$99 != 0ll ) goto label$835;
			{
				fb$result$1 = 48ll;
				goto label$719;
			}
			label$835:;
			label$834:;
			int32 vr$101 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"print", 6ll );
			if( (int64)vr$101 != 0ll ) goto label$837;
			{
				fb$result$1 = 49ll;
				goto label$719;
			}
			label$837:;
			label$836:;
			int32 vr$103 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"profile", 8ll );
			if( (int64)vr$103 != 0ll ) goto label$839;
			{
				fb$result$1 = 50ll;
				goto label$719;
			}
			label$839:;
			label$838:;
		}
		goto label$720;
		label$840:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$842;
			{
				fb$result$1 = 51ll;
				goto label$719;
			}
			label$842:;
			label$841:;
			int32 vr$107 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"rr", 3ll );
			if( (int64)vr$107 != 0ll ) goto label$844;
			{
				fb$result$1 = 53ll;
				goto label$719;
			}
			label$844:;
			label$843:;
		}
		goto label$720;
		label$845:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$847;
			{
				fb$result$1 = 52ll;
				goto label$719;
			}
			label$847:;
			label$846:;
			int32 vr$111 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"RR", 3ll );
			if( (int64)vr$111 != 0ll ) goto label$849;
			{
				fb$result$1 = 54ll;
				goto label$719;
			}
			label$849:;
			label$848:;
		}
		goto label$720;
		label$850:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$852;
			{
				fb$result$1 = 55ll;
				goto label$719;
			}
			label$852:;
			label$851:;
			int32 vr$115 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"showincludes", 13ll );
			if( (int64)vr$115 != 0ll ) goto label$854;
			{
				fb$result$1 = 56ll;
				goto label$719;
			}
			label$854:;
			label$853:;
			int32 vr$117 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"static", 7ll );
			if( (int64)vr$117 != 0ll ) goto label$856;
			{
				fb$result$1 = 57ll;
				goto label$719;
			}
			label$856:;
			label$855:;
			int32 vr$119 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"strip", 6ll );
			if( (int64)vr$119 != 0ll ) goto label$858;
			{
				fb$result$1 = 58ll;
				goto label$719;
			}
			label$858:;
			label$857:;
		}
		goto label$720;
		label$859:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$861;
			{
				fb$result$1 = 59ll;
				goto label$719;
			}
			label$861:;
			label$860:;
			int32 vr$123 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"target", 7ll );
			if( (int64)vr$123 != 0ll ) goto label$863;
			{
				fb$result$1 = 60ll;
				goto label$719;
			}
			label$863:;
			label$862:;
			int32 vr$125 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"title", 6ll );
			if( (int64)vr$125 != 0ll ) goto label$865;
			{
				fb$result$1 = 61ll;
				goto label$719;
			}
			label$865:;
			label$864:;
		}
		goto label$720;
		label$866:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$868;
			{
				fb$result$1 = 62ll;
				goto label$719;
			}
			label$868:;
			label$867:;
			int32 vr$129 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"vec", 4ll );
			if( (int64)vr$129 != 0ll ) goto label$870;
			{
				fb$result$1 = 63ll;
				goto label$719;
			}
			label$870:;
			label$869:;
			int32 vr$131 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"version", 8ll );
			if( (int64)vr$131 != 0ll ) goto label$872;
			{
				fb$result$1 = 64ll;
				goto label$719;
			}
			label$872:;
			label$871:;
		}
		goto label$720;
		label$873:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$875;
			{
				fb$result$1 = 65ll;
				goto label$719;
			}
			label$875:;
			label$874:;
		}
		goto label$720;
		label$876:;
		{
			int32 vr$135 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wa", 3ll );
			if( (int64)vr$135 != 0ll ) goto label$878;
			{
				fb$result$1 = 66ll;
				goto label$719;
			}
			label$878:;
			label$877:;
			int32 vr$137 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wl", 3ll );
			if( (int64)vr$137 != 0ll ) goto label$880;
			{
				fb$result$1 = 68ll;
				goto label$719;
			}
			label$880:;
			label$879:;
			int32 vr$139 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wc", 3ll );
			if( (int64)vr$139 != 0ll ) goto label$882;
			{
				fb$result$1 = 67ll;
				goto label$719;
			}
			label$882:;
			label$881:;
		}
		goto label$720;
		label$883:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$885;
			{
				fb$result$1 = 69ll;
				goto label$719;
			}
			label$885:;
			label$884:;
		}
		goto label$720;
		label$886:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$888;
			{
				fb$result$1 = 70ll;
				goto label$719;
			}
			label$888:;
			label$887:;
		}
		goto label$720;
		label$889:;
		{
			int32 vr$145 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"-version", 9ll );
			if( (int64)vr$145 != 0ll ) goto label$891;
			{
				fb$result$1 = 64ll;
				goto label$719;
			}
			label$891:;
			label$890:;
			int32 vr$147 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"-help", 6ll );
			if( (int64)vr$147 != 0ll ) goto label$893;
			{
				fb$result$1 = 28ll;
				goto label$719;
			}
			label$893:;
			label$892:;
		}
		goto label$720;
		label$721:;
		static const void* tmp$811[78ll] = {
			&&label$889,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$737,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$824,
			&&label$720,
			&&label$720,
			&&label$845,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$876,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$720,
			&&label$722,
			&&label$729,
			&&label$734,
			&&label$740,
			&&label$747,
			&&label$772,
			&&label$781,
			&&label$786,
			&&label$789,
			&&label$720,
			&&label$720,
			&&label$794,
			&&label$801,
			&&label$810,
			&&label$821,
			&&label$827,
			&&label$720,
			&&label$840,
			&&label$850,
			&&label$859,
			&&label$720,
			&&label$866,
			&&label$873,
			&&label$883,
			&&label$720,
			&&label$886,
		};
		if( (TMP$386$2 - 45ull) > 77ull ) goto label$720;
		goto *tmp$811[TMP$386$2 - 45ull];
		label$720:;
	}
	fb$result$1 = -1ll;
	goto label$719;
	label$719:;
	return fb$result$1;
}

static void HANDLEARG( FBSTRING* ARG$1, int64 IS_SOURCE$1, int64 IS_FILE$1 )
{
	label$894:;
	if( *(int64*)&FBC$ < 0ll ) goto label$897;
	{
		int64 vr$0 = fb_StrLen( (void*)ARG$1, -1ll );
		if( vr$0 != 0ll ) goto label$899;
		{
			HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
		}
		label$899:;
		label$898:;
		HANDLEOPT( *(int64*)&FBC$, ARG$1, IS_SOURCE$1 );
		*(int64*)&FBC$ = -1ll;
		goto label$895;
	}
	label$897:;
	label$896:;
	int64 vr$1 = fb_StrLen( (void*)ARG$1, -1ll );
	if( vr$1 != 0ll ) goto label$901;
	{
		goto label$895;
	}
	label$901:;
	label$900:;
	{
		uint8 TMP$461$2;
		TMP$461$2 = *(uint8*)*(char**)ARG$1;
		if( (uint64)(int64)TMP$461$2 != 45ull ) goto label$903;
		label$904:;
		{
			char* OPT$3;
			OPT$3 = (char*)((uint8*)*(char**)ARG$1 + 1ll);
			if( (int64)*(uint8*)OPT$3 != 0ll ) goto label$906;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$906:;
			label$905:;
			int64 OPTID$3;
			int64 vr$9 = PARSEOPTION( OPT$3 );
			OPTID$3 = vr$9;
			if( OPTID$3 >= 0ll ) goto label$908;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$908:;
			label$907:;
			if( IS_SOURCE$1 == 0ll ) goto label$910;
			{
				if( (boolean)(*(boolean*)(((int64)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (4ll & 63ll))) + 1ll) == 0ll) == (boolean)0ll ) goto label$912;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$912:;
				label$911:;
			}
			label$910:;
			label$909:;
			if( *(boolean*)((int64)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (4ll & 63ll))) == (boolean)0ll ) goto label$914;
			{
				*(int64*)&FBC$ = OPTID$3;
			}
			goto label$913;
			label$914:;
			{
				HANDLEOPT( OPTID$3, ARG$1, IS_SOURCE$1 );
			}
			label$913:;
			if( IS_SOURCE$1 == 0ll ) goto label$916;
			{
				if( *(boolean*)(((int64)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (4ll & 63ll))) + 2ll) == (boolean)0ll ) goto label$918;
				{
					FBRESTARTBEGINREQUEST( 2ll );
				}
				label$918:;
				label$917:;
				if( *(int64*)(((int64)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (4ll & 63ll))) + 8ll) == 0ll ) goto label$920;
				{
					FBRESTARTBEGINREQUEST( 8ll );
				}
				label$920:;
				label$919:;
			}
			label$916:;
			label$915:;
		}
		goto label$902;
		label$903:;
		if( (uint64)(int64)TMP$461$2 != 64ull ) goto label$921;
		label$922:;
		{
			static int64 RECLEVEL$3 = 0ll;
			if( RECLEVEL$3 <= 128ll ) goto label$924;
			{
				ERRREPORTEX( 27ll, (char*)*(char**)ARG$1, -1ll, 1ll, (char*)0ull );
				FBCEND( 1ll );
			}
			label$924:;
			label$923:;
			int64 vr$17 = fb_StrLen( (void*)ARG$1, -1ll );
			FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)ARG$1, vr$17 + -1ll );
			fb_StrAssign( (void*)ARG$1, -1ll, (void*)vr$19, -1ll, 0 );
			int64 vr$20 = fb_StrLen( (void*)ARG$1, -1ll );
			if( vr$20 != 0ll ) goto label$926;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$926:;
			label$925:;
			RECLEVEL$3 = RECLEVEL$3 + 1ll;
			PARSEARGSFROMFILE( ARG$1, IS_SOURCE$1 );
			RECLEVEL$3 = RECLEVEL$3 + -1ll;
		}
		goto label$902;
		label$921:;
		{
			FBSTRING EXT$3;
			FBSTRING* vr$24 = HGETFILEEXT( (char*)*(char**)ARG$1 );
			fb_StrInit( (void*)&EXT$3, -1ll, (void*)vr$24, -1ll, 0 );
			{
				int32 vr$27 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"bas", 4ll );
				if( (int64)vr$27 != 0ll ) goto label$929;
				label$930:;
				{
					HADDBAS( ARG$1 );
				}
				goto label$928;
				label$929:;
				int32 vr$30 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"o", 2ll );
				if( (int64)vr$30 != 0ll ) goto label$931;
				label$932:;
				{
					FBCADDOBJ( ARG$1 );
				}
				goto label$928;
				label$931:;
				int32 vr$33 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"a", 2ll );
				if( (int64)vr$33 != 0ll ) goto label$933;
				label$934:;
				{
					STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 464ll), ARG$1 );
				}
				goto label$928;
				label$933:;
				int32 vr$37 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"rc", 3ll );
				if( (int64)vr$37 == 0ll ) goto label$936;
				label$937:;
				int32 vr$40 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"res", 4ll );
				if( (int64)vr$40 != 0ll ) goto label$935;
				label$936:;
				{
					void* vr$43 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
					HSETIOFILE( (struct $9FBCIOFILE*)vr$43, ARG$1, -1ll );
				}
				goto label$928;
				label$935:;
				int32 vr$45 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"xpm", 4ll );
				if( (int64)vr$45 != 0ll ) goto label$938;
				label$939:;
				{
					int64 vr$48 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
					if( vr$48 <= 0ll ) goto label$941;
					{
						HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
					}
					label$941:;
					label$940:;
					HSETIOFILE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll), ARG$1, -1ll );
				}
				goto label$928;
				label$938:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$942:;
				label$928:;
			}
			fb_StrDelete( (FBSTRING*)&EXT$3 );
		}
		label$927:;
		label$902:;
	}
	label$895:;
}

static void PARSEARGSFROMFILE( FBSTRING* FILENAME$1, int64 IS_SOURCE$1 )
{
	label$963:;
	int64 F$1;
	int32 vr$0 = fb_FileFree(  );
	F$1 = (int64)vr$0;
	int32 vr$3 = fb_FileOpen( (FBSTRING*)FILENAME$1, 2u, 0u, 0u, (int32)F$1, 0 );
	if( (int64)vr$3 == 0ll ) goto label$966;
	{
		ERRREPORTEX( 26ll, (char*)*(char**)FILENAME$1, -1ll, 1ll, (char*)0ull );
		FBCEND( 1ll );
	}
	label$966:;
	label$965:;
	FBSTRING ARGS$1;
	__builtin_memset( &ARGS$1, 0, 24ll );
	label$967:;
	int32 vr$8 = fb_FileEof( (int32)F$1 );
	if( (int64)vr$8 != 0ll ) goto label$968;
	{
		fb_FileLineInput( (int32)F$1, (void*)&ARGS$1, -1ll, 0 );
		FBSTRING* vr$13 = fb_TRIM( (FBSTRING*)&ARGS$1 );
		fb_StrAssign( (void*)&ARGS$1, -1ll, (void*)vr$13, -1ll, 0 );
		FBCPARSEARGSFROMSTRING( (char*)*(char**)&ARGS$1, IS_SOURCE$1, -1ll );
	}
	goto label$967;
	label$968:;
	int32 vr$16 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$16 == 0ll ) goto label$969;
	void* vr$18 = fb_ErrorThrowAt( 2721, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$18;
	label$969:;
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$964:;
}

static int64 HTARGETNEEDSPIC( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$970:;
	fb$result$1 = 0ll;
	int64 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0ll ) goto label$973;
	{
		{
			uint64 TMP$470$3;
			int64 vr$2 = FBGETOPTION( 3ll );
			TMP$470$3 = (uint64)vr$2;
			goto label$975;
			label$976:;
			{
				fb$result$1 = -1ll;
			}
			goto label$974;
			label$975:;
			static const void* tmp$812[9ll] = {
				&&label$976,
				&&label$974,
				&&label$974,
				&&label$976,
				&&label$976,
				&&label$976,
				&&label$976,
				&&label$974,
				&&label$976,
			};
			if( (TMP$470$3 - 2ull) > 8ull ) goto label$974;
			goto *tmp$812[TMP$470$3 - 2ull];
			label$974:;
		}
	}
	label$973:;
	label$972:;
	label$971:;
	return fb$result$1;
}

static void HPARSEARGS( int64 ARGC$1, char** ARGV$1 )
{
	label$977:;
	*(int64*)&FBC$ = -1ll;
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 24ll );
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$471$2;
		TMP$471$2 = ARGC$1 + -1ll;
		goto label$979;
		label$982:;
		{
			fb_StrAssign( (void*)&ARG$1, -1ll, *(void**)((uint8*)ARGV$1 + (I$2 << (3ll & 63ll))), 0ll, 0 );
			HANDLEARG( &ARG$1, 0ll, 0ll );
		}
		label$980:;
		I$2 = I$2 + 1ll;
		label$979:;
		if( I$2 <= TMP$471$2 ) goto label$982;
		label$981:;
	}
	if( *(int64*)&FBC$ < 0ll ) goto label$984;
	{
		FBSTRING TMP$472$2;
		__builtin_memset( &TMP$472$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$472$2, -1ll, *(void**)((uint8*)((uint8*)ARGV$1 + (ARGC$1 << (3ll & 63ll))) + -8ll), 0ll, 0 );
		HFATALINVALIDOPTION( &TMP$472$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$472$2 );
	}
	label$984:;
	label$983:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	label$978:;
}

static void HCHECKARGS( void )
{
	label$985:;
	HCHECKWAITINGOBJFILE(  );
	int64 vr$0 = FBGETOPTION( 5ll );
	if( vr$0 != 0ll ) goto label$988;
	{
		int64 vr$1 = FBGETOPTION( 7ll );
		int64 vr$3 = FBGETOPTION( 6ll );
		if( ((int64)-(vr$1 >= 1ll) | (int64)-(vr$3 == 1ll)) == 0ll ) goto label$990;
		{
			ERRREPORTEX( 284ll, (char*)"", -1ll, 1ll, (char*)0ull );
			FBCEND( 1ll );
		}
		label$990:;
		label$989:;
	}
	label$988:;
	label$987:;
	if( *(int64*)((uint8*)&FBC$ + 48ll) < 0ll ) goto label$992;
	{
		FBSETOPTION( 4ll, *(int64*)((uint8*)&FBC$ + 48ll) );
	}
	label$992:;
	label$991:;
	int64 vr$6 = FBGETOPTION( 3ll );
	int64 vr$8 = FBGETCPUFAMILY(  );
	if( ((int64)-(vr$6 == 3ll) & (int64)-(vr$8 != 0ll)) == 0ll ) goto label$994;
	{
		char* vr$11 = FBGETFBCARCH(  );
		ERRREPORTEX( 82ll, (char*)vr$11, -1ll, 1ll, (char*)0ull );
		FBCEND( 1ll );
	}
	label$994:;
	label$993:;
	int64 vr$12 = FBGETCPUFAMILY(  );
	int64 vr$14 = FBGETOPTION( 3ll );
	if( ((int64)-(vr$12 == 0ll) & (int64)-(vr$14 != 9ll)) == 0ll ) goto label$996;
	{
		FBSETOPTION( 2ll, 0ll );
	}
	goto label$995;
	label$996:;
	{
		FBSETOPTION( 2ll, 1ll );
	}
	label$995:;
	if( *(int64*)((uint8*)&FBC$ + 40ll) < 0ll ) goto label$998;
	{
		FBSETOPTION( 2ll, *(int64*)((uint8*)&FBC$ + 40ll) );
	}
	label$998:;
	label$997:;
	int64 vr$17 = FBGETOPTION( 2ll );
	int64 vr$19 = FBGETCPUFAMILY(  );
	int64 vr$22 = FBGETOPTION( 2ll );
	int64 vr$24 = FBGETCPUFAMILY(  );
	if( (((int64)-(vr$17 == 0ll) & (int64)-(vr$19 != 0ll)) | ((int64)-(vr$22 == 3ll) & (int64)-(vr$24 != 1ll))) == 0ll ) goto label$1000;
	{
		char* vr$28 = FBGETFBCARCH(  );
		ERRREPORTEX( 83ll, (char*)vr$28, -1ll, 1ll, (char*)0ull );
		FBCEND( 1ll );
	}
	label$1000:;
	label$999:;
	{
		uint64 TMP$473$2;
		int64 vr$29 = FBGETOPTION( 3ll );
		TMP$473$2 = (uint64)vr$29;
		goto label$1002;
		label$1003:;
		{
		}
		goto label$1001;
		label$1004:;
		{
			struct $9FBCIOFILE* RC$3;
			void* vr$31 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
			RC$3 = (struct $9FBCIOFILE*)vr$31;
			if( RC$3 == (struct $9FBCIOFILE*)0ull ) goto label$1006;
			{
				ERRREPORTEX( 291ll, (char*)*(char**)RC$3, -1ll, 1ll, (char*)0ull );
				FBCEND( 1ll );
			}
			label$1006:;
			label$1005:;
		}
		goto label$1001;
		label$1002:;
		static const void* tmp$813[5ll] = {
			&&label$1003,
			&&label$1003,
			&&label$1004,
			&&label$1004,
			&&label$1003,
		};
		if( TMP$473$2 > 4ull ) goto label$1004;
		goto *tmp$813[TMP$473$2 - 0ull];
		label$1001:;
	}
	{
		uint64 TMP$474$2;
		int64 vr$33 = FBGETOPTION( 3ll );
		TMP$474$2 = (uint64)vr$33;
		goto label$1008;
		label$1009:;
		{
		}
		goto label$1007;
		label$1010:;
		{
			int64 vr$35 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
			if( vr$35 <= 0ll ) goto label$1012;
			{
				ERRREPORTEX( 291ll, (char*)*(char**)((uint8*)&FBC$ + 272ll), -1ll, 1ll, (char*)0ull );
				FBCEND( 1ll );
			}
			label$1012:;
			label$1011:;
		}
		goto label$1007;
		label$1008:;
		static const void* tmp$814[9ll] = {
			&&label$1009,
			&&label$1010,
			&&label$1010,
			&&label$1009,
			&&label$1009,
			&&label$1009,
			&&label$1009,
			&&label$1009,
			&&label$1009,
		};
		if( (TMP$474$2 - 2ull) > 8ull ) goto label$1010;
		goto *tmp$814[TMP$474$2 - 2ull];
		label$1007:;
	}
	int64 vr$36 = FBGETOPTION( 3ll );
	int64 vr$38 = FBGETOPTION( 2ll );
	if( ((int64)-(vr$36 == 9ll) & (int64)-(vr$38 != 0ll)) == 0ll ) goto label$1014;
	{
		FBSETOPTION( 9ll, 1ll );
	}
	label$1014:;
	label$1013:;
	if( *(int64*)((uint8*)&FBC$ + 64ll) < 0ll ) goto label$1016;
	{
		{
			int64 TMP$475$3;
			int64 vr$41 = FBGETCPUFAMILY(  );
			TMP$475$3 = vr$41;
			if( TMP$475$3 == 0ll ) goto label$1019;
			label$1020:;
			if( TMP$475$3 != 1ll ) goto label$1018;
			label$1019:;
			{
			}
			goto label$1017;
			label$1018:;
			{
				FBSTRING TMP$476$4;
				__builtin_memset( &TMP$476$4, 0, 24ll );
				FBSTRING* vr$43 = FBGETTARGETID(  );
				fb_StrAssign( (void*)&TMP$476$4, -1ll, (void*)vr$43, -1ll, 0 );
				ERRREPORTEX( 319ll, (char*)*(char**)&TMP$476$4, -1ll, 1ll, (char*)0ull );
				fb_StrDelete( (FBSTRING*)&TMP$476$4 );
			}
			label$1021:;
			label$1017:;
		}
		int64 vr$46 = FBGETOPTION( 2ll );
		int64 vr$48 = FBGETOPTION( 2ll );
		if( (((int64)-(vr$46 == 0ll) | (int64)-(vr$48 == 3ll)) & (int64)-(*(int64*)((uint8*)&FBC$ + 64ll) != 0ll)) == 0ll ) goto label$1023;
		{
			ERRREPORTEX( 84ll, (char*)"", -1ll, 1ll, (char*)0ull );
		}
		label$1023:;
		label$1022:;
		FBSETOPTION( 9ll, *(int64*)((uint8*)&FBC$ + 64ll) );
	}
	label$1016:;
	label$1015:;
	int64 vr$53 = FBGETOPTION( 0ll );
	if( vr$53 != 2ll ) goto label$1025;
	{
		int64 vr$54 = HTARGETNEEDSPIC(  );
		if( vr$54 == 0ll ) goto label$1027;
		{
			FBSETOPTION( 37ll, -1ll );
		}
		label$1027:;
		label$1026:;
	}
	label$1025:;
	label$1024:;
	int64 vr$55 = FBGETOPTION( 37ll );
	if( vr$55 == 0ll ) goto label$1029;
	{
		int64 vr$56 = FBGETOPTION( 0ll );
		if( vr$56 != 0ll ) goto label$1031;
		{
			ERRREPORTEX( 85ll, (char*)"", -1ll, 1ll, (char*)0ull );
		}
		goto label$1030;
		label$1031:;
		int64 vr$57 = HTARGETNEEDSPIC(  );
		if( vr$57 != 0ll ) goto label$1032;
		{
			ERRREPORTEX( 86ll, (char*)"", -1ll, 1ll, (char*)0ull );
		}
		label$1032:;
		label$1030:;
	}
	label$1029:;
	label$1028:;
	FBSETOPTION( 38ll, -1ll );
	label$986:;
}

static void FBCDETERMINEPREFIX( void )
{
	label$1033:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 2512ll), 261ll );
	if( vr$1 != 0ll ) goto label$1036;
	{
		FBSTRING TMP$477$2;
		FBSTRING TMP$478$2;
		FBSTRING TMP$481$2;
		__builtin_memset( &TMP$477$2, 0, 24ll );
		FBSTRING* vr$3 = fb_ExePath(  );
		fb_StrAssign( (void*)&TMP$477$2, -1ll, (void*)vr$3, -1ll, 0 );
		FBSTRING* vr$6 = PATHSTRIPDIV( &TMP$477$2 );
		__builtin_memset( &TMP$478$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$478$2, (void*)vr$6, -1ll, (void*)"/", 2ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)vr$9, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$477$2 );
		__builtin_memset( &TMP$481$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$481$2, (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)"../", 4ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)vr$15, -1ll, 0 );
	}
	goto label$1035;
	label$1036:;
	{
		FBSTRING TMP$482$2;
		FBSTRING TMP$483$2;
		__builtin_memset( &TMP$482$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$482$2, -1ll, (void*)((uint8*)&FBC$ + 2512ll), 261ll, 0 );
		FBSTRING* vr$21 = PATHSTRIPDIV( &TMP$482$2 );
		__builtin_memset( &TMP$483$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$483$2, (void*)vr$21, -1ll, (void*)"/", 2ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)vr$24, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$482$2 );
	}
	label$1035:;
	label$1034:;
}

static void FBCSETUPCOMPILERPATHS( void )
{
	FBSTRING TMP$492$1;
	FBSTRING TMP$493$1;
	FBSTRING TMP$494$1;
	FBSTRING TMP$495$1;
	FBSTRING TMP$496$1;
	FBSTRING TMP$497$1;
	FBSTRING TMP$498$1;
	FBSTRING TMP$499$1;
	label$1037:;
	FBSTRING TARGETID$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&TARGETID$1, -1ll, (void*)vr$0, -1ll, 0 );
	FBSTRING FBNAME$1;
	__builtin_memset( &FBNAME$1, 0, 24ll );
	fb_StrAssign( (void*)&FBNAME$1, -1ll, (void*)"freebasic", 10ll, 0 );
	FBSTRING LIBDIRNAME$1;
	fb_StrInit( (void*)&LIBDIRNAME$1, -1ll, (void*)"lib", 4ll, 0 );
	int64 vr$6 = fb_StrLen( (void*)((uint8*)&FBC$ + 3556ll), 261ll );
	if( vr$6 <= 0ll ) goto label$1040;
	{
		FBSTRING TMP$486$2;
		FBSTRING TMP$487$2;
		FBSTRING TMP$488$2;
		__builtin_memset( &TMP$486$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$486$2, (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)"bin", 4ll );
		__builtin_memset( &TMP$487$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$487$2, (void*)vr$11, -1ll, (void*)"/", 2ll );
		__builtin_memset( &TMP$488$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$488$2, (void*)vr$14, -1ll, (void*)((uint8*)&FBC$ + 3556ll), 261ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2773ll), 261ll, (void*)vr$17, -1ll, 0 );
	}
	goto label$1039;
	label$1040:;
	{
		FBSTRING TMP$489$2;
		FBSTRING TMP$490$2;
		FBSTRING TMP$491$2;
		__builtin_memset( &TMP$489$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$489$2, (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)"bin", 4ll );
		__builtin_memset( &TMP$490$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$490$2, (void*)vr$23, -1ll, (void*)"/", 2ll );
		__builtin_memset( &TMP$491$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$491$2, (void*)vr$26, -1ll, (void*)((uint8*)&FBC$ + 2225ll), 129ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2773ll), 261ll, (void*)vr$29, -1ll, 0 );
	}
	label$1039:;
	__builtin_memset( &TMP$492$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$492$1, (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)"include", 8ll );
	__builtin_memset( &TMP$493$1, 0, 24ll );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$493$1, (void*)vr$35, -1ll, (void*)"/", 2ll );
	__builtin_memset( &TMP$494$1, 0, 24ll );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$494$1, (void*)vr$38, -1ll, (void*)&FBNAME$1, -1ll );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 3034ll), 261ll, (void*)vr$41, -1ll, 0 );
	__builtin_memset( &TMP$495$1, 0, 24ll );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$495$1, (void*)((uint8*)&FBC$ + 2512ll), 261ll, (void*)&LIBDIRNAME$1, -1ll );
	__builtin_memset( &TMP$496$1, 0, 24ll );
	FBSTRING* vr$52 = fb_StrConcat( &TMP$496$1, (void*)vr$49, -1ll, (void*)"/", 2ll );
	__builtin_memset( &TMP$497$1, 0, 24ll );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$497$1, (void*)vr$52, -1ll, (void*)&FBNAME$1, -1ll );
	__builtin_memset( &TMP$498$1, 0, 24ll );
	FBSTRING* vr$58 = fb_StrConcat( &TMP$498$1, (void*)vr$55, -1ll, (void*)"/", 2ll );
	__builtin_memset( &TMP$499$1, 0, 24ll );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$499$1, (void*)vr$58, -1ll, (void*)&TARGETID$1, -1ll );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 3295ll), 261ll, (void*)vr$61, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&LIBDIRNAME$1 );
	fb_StrDelete( (FBSTRING*)&FBNAME$1 );
	fb_StrDelete( (FBSTRING*)&TARGETID$1 );
	label$1038:;
}

static void FBCPRINTTARGETINFO( void )
{
	FBSTRING TMP$501$1;
	FBSTRING TMP$502$1;
	label$1041:;
	FBSTRING S$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&S$1, -1ll, (void*)vr$0, -1ll, 0 );
	char* vr$2 = FBGETFBCARCH(  );
	__builtin_memset( &TMP$501$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$501$1, (void*)", ", 3ll, (void*)vr$2, 0ll );
	__builtin_memset( &TMP$502$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$502$1, (void*)&S$1, -1ll, (void*)vr$5, -1ll );
	fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$9, -1ll, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)", ", 3ll, 0 );
	int64 vr$12 = FBGETBITS(  );
	FBSTRING* vr$13 = fb_LongintToStr( vr$12 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$13, -1ll, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"bit", 4ll, 0 );
	int64 vr$17 = fb_StrLen( (void*)((uint8*)&FBC$ + 2096ll), 129ll );
	if( vr$17 <= 0ll ) goto label$1044;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" (", 3ll, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)((uint8*)&FBC$ + 2096ll), 129ll, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)")", 2ll, 0 );
	}
	label$1044:;
	label$1043:;
	FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (char*)"target:", 7ll );
	fb_PrintString( 0, (FBSTRING*)vr$22, 2 );
	fb_PrintString( 0, (FBSTRING*)&S$1, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (char*)"backend:", 8ll );
	fb_PrintString( 0, (FBSTRING*)vr$24, 2 );
	int64 vr$25 = FBGETOPTION( 2ll );
	FBSTRING* vr$26 = FBGETBACKENDNAME( vr$25 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1042:;
}

static void FBCDETERMINEMAINNAME( void )
{
	label$1045:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 1229ll), 261ll );
	if( vr$1 != 0ll ) goto label$1048;
	{
		FBSTRING TMP$509$2;
		struct $9FBCIOFILE* M$2;
		void* vr$3 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
		M$2 = (struct $9FBCIOFILE*)vr$3;
		if( M$2 == (struct $9FBCIOFILE*)0ull ) goto label$1050;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1229ll), 261ll, (void*)M$2, -1ll, 0 );
		}
		goto label$1049;
		label$1050:;
		{
			FBSTRING* OBJF$3;
			void* vr$8 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
			OBJF$3 = (FBSTRING*)vr$8;
			if( OBJF$3 == (FBSTRING*)0ull ) goto label$1052;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1229ll), 261ll, (void*)OBJF$3, -1ll, 0 );
			}
			goto label$1051;
			label$1052:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1229ll), 261ll, (void*)"unnamed", 8ll, 0 );
			}
			label$1051:;
		}
		label$1049:;
		__builtin_memset( &TMP$509$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$509$2, -1ll, (void*)((uint8*)&FBC$ + 1229ll), 261ll, 0 );
		FBSTRING* vr$15 = HSTRIPEXT( &TMP$509$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 1229ll), 261ll, (void*)vr$15, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$509$2 );
	}
	label$1048:;
	label$1047:;
	label$1046:;
}

static FBSTRING* HGETASMNAME( struct $9FBCIOFILE* MODULE$1, int64 STAGE$1 )
{
	FBSTRING TMP$514$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$1053:;
	char* EXT$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING* vr$3 = HSTRIPEXT( *(FBSTRING**)((uint8*)MODULE$1 + 24ll) );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	int64 vr$5 = FBGETOPTION( 3ll );
	if( vr$5 == 11ll ) goto label$1056;
	{
		EXT$1 = (char*)".asm";
	}
	goto label$1055;
	label$1056:;
	{
		EXT$1 = (char*)".o";
	}
	label$1055:;
	if( STAGE$1 != 1ll ) goto label$1058;
	{
		{
			int64 TMP$511$3;
			int64 vr$6 = FBGETOPTION( 2ll );
			TMP$511$3 = vr$6;
			if( TMP$511$3 != 1ll ) goto label$1060;
			label$1061:;
			{
				EXT$1 = (char*)".c";
			}
			goto label$1059;
			label$1060:;
			if( TMP$511$3 != 2ll ) goto label$1062;
			label$1063:;
			{
				EXT$1 = (char*)".ll";
			}
			label$1062:;
			label$1059:;
		}
	}
	label$1058:;
	label$1057:;
	__builtin_memset( &TMP$514$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$514$1, (void*)&ASMFILE$1, -1ll, (void*)EXT$1, 0ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$10, -1ll, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&ASMFILE$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$1054:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static void HCOMPILEBAS( struct $9FBCIOFILE* MODULE$1, int64 IS_MAIN$1, int64 IS_FBCTINF$1, int64 MODULE_COUNT$1 )
{
	label$1064:;
	int64 PREVLANG$1;
	int64 PREVOUTTYPE$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING PPONLYFILE$1;
	__builtin_memset( &PPONLYFILE$1, 0, 24ll );
	FBSTRING* vr$2 = HGETASMNAME( MODULE$1, 1ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$2, -1ll, 0 );
	int64 vr$4 = FBGETOPTION( 1ll );
	if( vr$4 == 0ll ) goto label$1067;
	{
		fb_StrAssign( (void*)&PPONLYFILE$1, -1ll, *(void**)((uint8*)MODULE$1 + 24ll), -1ll, 0 );
		if( *(int64*)((uint8*)MODULE$1 + 32ll) != 0ll ) goto label$1069;
		{
			FBSTRING TMP$516$3;
			FBSTRING* vr$9 = HSTRIPEXT( &PPONLYFILE$1 );
			__builtin_memset( &TMP$516$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$516$3, (void*)vr$9, -1ll, (void*)".pp.bas", 8ll );
			fb_StrAssign( (void*)&PPONLYFILE$1, -1ll, (void*)vr$12, -1ll, 0 );
		}
		label$1069:;
		label$1068:;
	}
	label$1067:;
	label$1066:;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1071;
	{
		FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (char*)"compiling: ", 11ll );
		fb_PrintString( 0, (FBSTRING*)vr$14, 2 );
		fb_PrintString( 0, (FBSTRING*)MODULE$1, 0 );
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (char*)" -o ", 4ll );
		fb_PrintString( 0, (FBSTRING*)vr$17, 0 );
		fb_PrintString( 0, (FBSTRING*)&ASMFILE$1, 0 );
		int64 vr$19 = FBGETOPTION( 1ll );
		if( vr$19 == 0ll ) goto label$1073;
		{
			FBSTRING TMP$520$3;
			__builtin_memset( &TMP$520$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$520$3, (void*)" -pp ", 6ll, (void*)&PPONLYFILE$1, -1ll );
			fb_PrintString( 0, (FBSTRING*)vr$23, 0 );
		}
		label$1073:;
		label$1072:;
		if( IS_MAIN$1 == 0ll ) goto label$1075;
		{
			FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (char*)" (main module)", 14ll );
			fb_PrintString( 0, (FBSTRING*)vr$24, 0 );
		}
		goto label$1074;
		label$1075:;
		if( IS_FBCTINF$1 == 0ll ) goto label$1076;
		{
			FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (char*)" (FB compile-time info)", 23ll );
			fb_PrintString( 0, (FBSTRING*)vr$25, 0 );
		}
		label$1076:;
		label$1074:;
		fb_PrintVoid( 0, 1 );
	}
	label$1071:;
	label$1070:;
	int64 vr$26 = FBGETOPTION( 12ll );
	if( vr$26 == -1ll ) goto label$1078;
	{
		int64 vr$27 = FBGETOPTION( 12ll );
		FBSETOPTION( 10ll, vr$27 );
	}
	label$1078:;
	label$1077:;
	int64 vr$28 = FBGETOPTION( 10ll );
	PREVLANG$1 = vr$28;
	int64 vr$29 = FBGETOPTION( 0ll );
	PREVOUTTYPE$1 = vr$29;
	if( IS_FBCTINF$1 == 0ll ) goto label$1080;
	{
		FBSETOPTION( 0ll, 3ll );
	}
	label$1080:;
	label$1079:;
	label$1081:;
	{
		int64 vr$31 = FBGETOPTION( 2ll );
		int64 vr$33 = FBGETOPTION( 2ll );
		if( (~(*(int64*)((uint8*)&FBC$ + 80ll)) & (((int64)-(vr$31 != 0ll) & (int64)-(vr$33 != 3ll)) | ~(*(int64*)((uint8*)&FBC$ + 96ll)))) == 0ll ) goto label$1085;
		{
			FBCADDTEMP( &ASMFILE$1 );
		}
		goto label$1084;
		label$1085:;
		if( MODULE_COUNT$1 != 1ll ) goto label$1086;
		{
			int64 vr$40 = FBRESTARTGETCOUNT(  );
			if( vr$40 <= 0ll ) goto label$1088;
			{
				FBCREMOVETEMP( &ASMFILE$1 );
			}
			label$1088:;
			label$1087:;
		}
		label$1086:;
		label$1084:;
		FBINIT( IS_MAIN$1, (char*)((uint8*)&FBC$ + 1490ll), MODULE_COUNT$1 );
		if( IS_FBCTINF$1 == 0ll ) goto label$1090;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll) );
		}
		goto label$1089;
		label$1090:;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 528ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 616ll) );
		}
		label$1089:;
		FBCOMPILE( (char*)*(char**)MODULE$1, (char*)*(char**)&ASMFILE$1, &PPONLYFILE$1, IS_MAIN$1 );
		int64 vr$49 = ERRGETCOUNT(  );
		if( vr$49 <= 0ll ) goto label$1092;
		{
			FBCEND( 1ll );
		}
		label$1092:;
		label$1091:;
		int64 vr$50 = FBSHOULDRESTART(  );
		if( vr$50 != 0ll ) goto label$1094;
		{
			goto label$1082;
		}
		label$1094:;
		label$1093:;
		FBRESTARTENDREQUEST( 7ll );
		FBEND(  );
		int64 vr$51 = FBSHOULDRESTART(  );
		if( vr$51 == 0ll ) goto label$1096;
		{
			int64 vr$52 = FBGETOPTION( 12ll );
			if( vr$52 != -1ll ) goto label$1098;
			{
				FBSETOPTION( 10ll, PREVLANG$1 );
			}
			label$1098:;
			label$1097:;
			fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
			fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
			goto label$1065;
		}
		label$1096:;
		label$1095:;
	}
	label$1083:;
	goto label$1081;
	label$1082:;
	if( IS_FBCTINF$1 != 0ll ) goto label$1100;
	{
		FBGETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll) );
	}
	label$1100:;
	label$1099:;
	FBEND(  );
	if( IS_FBCTINF$1 == 0ll ) goto label$1102;
	{
		FBSETOPTION( 0ll, PREVOUTTYPE$1 );
	}
	label$1102:;
	label$1101:;
	FBSETOPTION( 10ll, PREVLANG$1 );
	fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$1065:;
}

static void HCOMPILEMODULES( void )
{
	label$1103:;
	int64 ISMAIN$1;
	int64 CHECKMAIN$1;
	FBSTRING MAINFILE$1;
	__builtin_memset( &MAINFILE$1, 0, 24ll );
	struct $9FBCIOFILE* MODULE$1;
	ISMAIN$1 = 0ll;
	{
		int64 TMP$523$2;
		int64 vr$1 = FBGETOPTION( 0ll );
		TMP$523$2 = vr$1;
		if( TMP$523$2 == 0ll ) goto label$1107;
		label$1108:;
		if( TMP$523$2 != 2ll ) goto label$1106;
		label$1107:;
		{
			CHECKMAIN$1 = -1ll;
		}
		goto label$1105;
		label$1106:;
		{
			CHECKMAIN$1 = *(int64*)((uint8*)&FBC$ + 1624ll);
		}
		label$1109:;
		label$1105:;
	}
	if( CHECKMAIN$1 == 0ll ) goto label$1111;
	{
		FBSTRING* vr$3 = HSTRIPPATH( (char*)((uint8*)&FBC$ + 1229ll) );
		fb_StrAssign( (void*)&MAINFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	}
	label$1111:;
	label$1110:;
	void* vr$6 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$6;
	if( MODULE$1 != (struct $9FBCIOFILE*)0ull ) goto label$1113;
	{
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 528ll) );
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 880ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 616ll) );
		fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
		goto label$1104;
	}
	label$1113:;
	label$1112:;
	int64 MODULE_COUNT$1;
	MODULE_COUNT$1 = 0ll;
	label$1114:;
	{
		if( CHECKMAIN$1 == 0ll ) goto label$1118;
		{
			FBSTRING TMP$524$3;
			__builtin_memset( &TMP$524$3, 0, 24ll );
			FBSTRING* vr$15 = HSTRIPEXT( (FBSTRING*)MODULE$1 );
			fb_StrAssign( (void*)&TMP$524$3, -1ll, (void*)vr$15, -1ll, 0 );
			FBSTRING* vr$17 = HSTRIPPATH( (char*)*(char**)&TMP$524$3 );
			int32 vr$19 = fb_StrCompare( (void*)&MAINFILE$1, -1ll, (void*)vr$17, -1ll );
			ISMAIN$1 = (int64)-((int64)vr$19 == 0ll);
			fb_StrDelete( (FBSTRING*)&TMP$524$3 );
		}
		label$1118:;
		label$1117:;
		MODULE_COUNT$1 = MODULE_COUNT$1 + 1ll;
		HCOMPILEBAS( MODULE$1, ISMAIN$1, 0ll, MODULE_COUNT$1 );
		int64 vr$24 = FBSHOULDRESTART(  );
		if( vr$24 == 0ll ) goto label$1120;
		{
			fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
			goto label$1104;
		}
		label$1120:;
		label$1119:;
		void* vr$26 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$26;
	}
	label$1116:;
	if( MODULE$1 != (struct $9FBCIOFILE*)0ull ) goto label$1114;
	label$1115:;
	fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
	label$1104:;
}

static int64 HPARSEXPM( FBSTRING* XPMFILE$1, FBSTRING* CODE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1121:;
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"\x0A" "dim shared as zstring ptr ", 28ll, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"fb_program_icon_data", 21ll, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"(0 to ...) = _\x0A{ _\x0A", 20ll, 0 );
	int64 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = (int64)vr$1;
	int32 vr$4 = fb_FileOpen( (FBSTRING*)XPMFILE$1, 2u, 0u, 0u, (int32)F$1, 0 );
	if( (int64)vr$4 == 0ll ) goto label$1124;
	{
		goto label$1122;
	}
	label$1124:;
	label$1123:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_FileLineInput( (int32)F$1, (void*)&LN$1, -1ll, 0 );
	FBSTRING* vr$10 = fb_StrUcase2( (FBSTRING*)&LN$1, 0 );
	int32 vr$11 = fb_StrCompare( (void*)vr$10, -1ll, (void*)"/* XPM */", 10ll );
	if( (int64)vr$11 == 0ll ) goto label$1126;
	{
		int32 vr$14 = fb_FileClose( (int32)F$1 );
		if( (int64)vr$14 == 0ll ) goto label$1127;
		void* vr$16 = fb_ErrorThrowAt( 3301, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
		goto *vr$16;
		label$1127:;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1122;
	}
	label$1126:;
	label$1125:;
	int64 SAW_ROWS$1;
	SAW_ROWS$1 = 0ll;
	label$1128:;
	int32 vr$19 = fb_FileEof( (int32)F$1 );
	if( (int64)vr$19 != 0ll ) goto label$1129;
	{
		fb_FileLineInput( (int32)F$1, (void*)&LN$1, -1ll, 0 );
		int64 vr$24 = fb_StrLen( (void*)&LN$1, -1ll );
		FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (char*)"\x22", 1ll );
		int64 vr$27 = fb_StrInstr( 1ll, (FBSTRING*)&LN$1, (FBSTRING*)vr$25 );
		FBSTRING* vr$31 = fb_RIGHT( (FBSTRING*)&LN$1, (vr$24 - vr$27) + 1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$31, -1ll, 0 );
		FBSTRING* vr$33 = fb_StrAllocTempDescZEx( (char*)"\x22", 1ll );
		int64 vr$35 = fb_StrInstr( 2ll, (FBSTRING*)&LN$1, (FBSTRING*)vr$33 );
		FBSTRING* vr$37 = fb_LEFT( (FBSTRING*)&LN$1, vr$35 );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$37, -1ll, 0 );
		int64 vr$40 = fb_StrLen( (void*)&LN$1, -1ll );
		if( vr$40 <= 0ll ) goto label$1131;
		{
			FBSTRING TMP$531$3;
			if( SAW_ROWS$1 == 0ll ) goto label$1133;
			{
				fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)", _\x0A", 5ll, 0 );
			}
			label$1133:;
			label$1132:;
			__builtin_memset( &TMP$531$3, 0, 24ll );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$531$3, (void*)"\x09@", 3ll, (void*)&LN$1, -1ll );
			fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)vr$44, -1ll, 0 );
			SAW_ROWS$1 = -1ll;
		}
		label$1131:;
		label$1130:;
	}
	goto label$1128;
	label$1129:;
	int32 vr$46 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$46 == 0ll ) goto label$1134;
	void* vr$48 = fb_ErrorThrowAt( 3331, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$48;
	label$1134:;
	if( SAW_ROWS$1 != 0ll ) goto label$1136;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1122;
	}
	label$1136:;
	label$1135:;
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)" _ \x0A", 5ll, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"}\x0A\x0A", 4ll, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"extern as zstring ptr ptr fb_program_icon alias \x22" "fb_program_icon\x22\x0A", 67ll, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1ll, (void*)"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\x0A", 74ll, 0 );
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1122:;
	return fb$result$1;
}

static int64 HCOMPILEXPM( void )
{
	int64 TMP$542$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1137:;
	FBSTRING XPMFILE$1;
	__builtin_memset( &XPMFILE$1, 0, 24ll );
	FBSTRING CODE$1;
	__builtin_memset( &CODE$1, 0, 24ll );
	int64 FO$1;
	int64 vr$4 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
	if( vr$4 != 0ll ) goto label$1140;
	{
		fb$result$1 = -1ll;
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1138;
	}
	label$1140:;
	label$1139:;
	fb_StrAssign( (void*)&XPMFILE$1, -1ll, (void*)((uint8*)&FBC$ + 272ll), -1ll, 0 );
	int64 vr$9 = fb_StrLen( *(void**)((uint8*)&FBC$ + 296ll), -1ll );
	if( vr$9 <= 0ll ) goto label$1142;
	{
		FBSTRING* vr$10 = HSTRIPEXT( *(FBSTRING**)((uint8*)&FBC$ + 296ll) );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 272ll), -1ll, (void*)vr$10, -1ll, 0 );
	}
	label$1142:;
	label$1141:;
	fb_StrConcatByref( (void*)((uint8*)&FBC$ + 272ll), -1ll, (void*)".bas", 5ll, 0 );
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1144;
	{
		FBSTRING TMP$540$2;
		FBSTRING TMP$541$2;
		FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (char*)"parsing xpm: ", 13ll );
		fb_PrintString( 0, (FBSTRING*)vr$13, 2 );
		__builtin_memset( &TMP$540$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$540$2, (void*)&XPMFILE$1, -1ll, (void*)" -o ", 5ll );
		__builtin_memset( &TMP$541$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$541$2, (void*)vr$18, -1ll, (void*)((uint8*)&FBC$ + 272ll), -1ll );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
	}
	label$1144:;
	label$1143:;
	int64 vr$24 = HPARSEXPM( &XPMFILE$1, &CODE$1 );
	if( vr$24 != 0ll ) goto label$1146;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1138;
	}
	label$1146:;
	label$1145:;
	int32 vr$27 = fb_FileFree(  );
	FO$1 = (int64)vr$27;
	int32 vr$31 = fb_FileOpen( (FBSTRING*)((uint8*)&FBC$ + 272ll), 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$31 == 0ll ) goto label$1148;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1138;
	}
	label$1148:;
	label$1147:;
	TMP$542$1 = FO$1;
	fb_PrintString( (int32)TMP$542$1, (FBSTRING*)&CODE$1, 0 );
	int32 vr$38 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$38 == 0ll ) goto label$1149;
	void* vr$40 = fb_ErrorThrowAt( 3387, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$40;
	label$1149:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$1151;
	{
		FBCADDTEMP( (FBSTRING*)((uint8*)&FBC$ + 272ll) );
	}
	label$1151:;
	label$1150:;
	HCOMPILEBAS( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll), 0ll, 0ll, -1ll );
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&CODE$1 );
	fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
	label$1138:;
	return fb$result$1;
}

static int64 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* MODULE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1152:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING* vr$3 = HGETASMNAME( MODULE$1, 2ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	int64 vr$6 = FBGETOPTION( 3ll );
	if( (~(*(int64*)((uint8*)&FBC$ + 96ll)) & ((int64)-(vr$6 != 11ll) | ~(*(int64*)((uint8*)&FBC$ + 104ll)))) == 0ll ) goto label$1155;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$1155:;
	label$1154:;
	{
		int64 TMP$543$2;
		int64 vr$12 = FBGETOPTION( 2ll );
		TMP$543$2 = vr$12;
		if( TMP$543$2 != 1ll ) goto label$1157;
		label$1158:;
		{
			boolean ISM64TARGET$3;
			ISM64TARGET$3 = (boolean)0ll;
			{
				int64 TMP$544$4;
				int64 vr$13 = FBGETCPUFAMILY(  );
				TMP$544$4 = vr$13;
				if( TMP$544$4 != 0ll ) goto label$1160;
				label$1161:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m32 ", 6ll, 0 );
				}
				goto label$1159;
				label$1160:;
				if( TMP$544$4 != 1ll ) goto label$1162;
				label$1163:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m64 ", 6ll, 0 );
					ISM64TARGET$3 = (boolean)1ll;
				}
				goto label$1159;
				label$1162:;
				if( TMP$544$4 != 4ll ) goto label$1164;
				label$1165:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m32 ", 6ll, 0 );
				}
				goto label$1159;
				label$1164:;
				if( TMP$544$4 == 5ll ) goto label$1167;
				label$1168:;
				if( TMP$544$4 != 6ll ) goto label$1166;
				label$1167:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m64 ", 6ll, 0 );
					ISM64TARGET$3 = (boolean)1ll;
				}
				goto label$1159;
				label$1166:;
				if( TMP$544$4 != 8ll ) goto label$1169;
				label$1170:;
				{
					ISM64TARGET$3 = (boolean)1ll;
				}
				goto label$1159;
				label$1169:;
				if( TMP$544$4 != 9ll ) goto label$1171;
				label$1172:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mabi=lp64d ", 13ll, 0 );
					ISM64TARGET$3 = (boolean)1ll;
				}
				label$1171:;
				label$1159:;
			}
			int64 vr$19 = FBGETOPTION( 3ll );
			if( vr$19 == 11ll ) goto label$1174;
			{
				int64 TMP$548$4;
				int64 TMP$549$4;
				int64 vr$20 = FBGETCPUFAMILY(  );
				if( vr$20 == 4ll ) goto label$1175;
				int64 vr$21 = FBGETCPUFAMILY(  );
				TMP$548$4 = (int64)-(vr$21 == 5ll);
				goto label$1481;
				label$1175:;
				TMP$548$4 = -1ll;
				label$1481:;
				if( TMP$548$4 != 0ll ) goto label$1176;
				int64 vr$23 = FBGETCPUFAMILY(  );
				TMP$549$4 = (int64)-(vr$23 == 6ll);
				goto label$1482;
				label$1176:;
				TMP$549$4 = -1ll;
				label$1482:;
				if( TMP$549$4 == 0ll ) goto label$1178;
				{
					if( *(int64*)((uint8*)&FBC$ + 56ll) == 0ll ) goto label$1180;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mcpu=native ", 14ll, 0 );
					}
					goto label$1179;
					label$1180:;
					{
						FBSTRING TMP$552$6;
						FBSTRING TMP$553$6;
						FBSTRING TMP$554$6;
						char* vr$26 = FBGETGCCARCH(  );
						__builtin_memset( &TMP$552$6, 0, 24ll );
						FBSTRING* vr$29 = fb_StrConcat( &TMP$552$6, (void*)"-mcpu=", 7ll, (void*)vr$26, 0ll );
						__builtin_memset( &TMP$553$6, 0, 24ll );
						FBSTRING* vr$32 = fb_StrConcat( &TMP$553$6, (void*)vr$29, -1ll, (void*)" ", 2ll );
						__builtin_memset( &TMP$554$6, 0, 24ll );
						FBSTRING* vr$36 = fb_StrConcat( &TMP$554$6, (void*)&LN$1, -1ll, (void*)vr$32, -1ll );
						fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$36, -1ll, 0 );
					}
					label$1179:;
				}
				goto label$1177;
				label$1178:;
				{
					if( *(int64*)((uint8*)&FBC$ + 56ll) == 0ll ) goto label$1182;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=native ", 15ll, 0 );
					}
					goto label$1181;
					label$1182:;
					{
						FBSTRING TMP$557$6;
						FBSTRING TMP$558$6;
						FBSTRING TMP$559$6;
						char* vr$39 = FBGETGCCARCH(  );
						__builtin_memset( &TMP$557$6, 0, 24ll );
						FBSTRING* vr$42 = fb_StrConcat( &TMP$557$6, (void*)"-march=", 8ll, (void*)vr$39, 0ll );
						__builtin_memset( &TMP$558$6, 0, 24ll );
						FBSTRING* vr$45 = fb_StrConcat( &TMP$558$6, (void*)vr$42, -1ll, (void*)" ", 2ll );
						__builtin_memset( &TMP$559$6, 0, 24ll );
						FBSTRING* vr$49 = fb_StrConcat( &TMP$559$6, (void*)&LN$1, -1ll, (void*)vr$45, -1ll );
						fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$49, -1ll, 0 );
					}
					label$1181:;
				}
				label$1177:;
			}
			label$1174:;
			label$1173:;
			int64 vr$51 = FBGETOPTION( 37ll );
			if( vr$51 == 0ll ) goto label$1184;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fPIC ", 7ll, 0 );
			}
			label$1184:;
			label$1183:;
			int64 vr$53 = FBGETOPTION( 3ll );
			if( vr$53 == 11ll ) goto label$1186;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-S -nostdlib -nostdinc -Wall ", 30ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-unused ", 13ll, 0 );
			}
			goto label$1185;
			label$1186:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-warn-absolute-paths ", 26ll, 0 );
			}
			label$1185:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-main ", 11ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Werror-implicit-function-declaration ", 39ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-O", 3ll, 0 );
			int64 vr$61 = FBGETOPTION( 8ll );
			FBSTRING* vr$62 = fb_LongintToStr( vr$61 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$62, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-strict-aliasing ", 22ll, 0 );
			{
				uint64 TMP$571$4;
				int64 vr$66 = FBGETOPTION( 3ll );
				TMP$571$4 = (uint64)vr$66;
				goto label$1188;
				label$1189:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-ident ", 12ll, 0 );
				}
				goto label$1187;
				label$1188:;
				static const void* tmp$815[1ll] = {
					&&label$1189,
				};
				if( TMP$571$4 > 0ull ) goto label$1187;
				goto *tmp$815[TMP$571$4 - 0ull];
				label$1187:;
			}
			int64 vr$68 = FBGETOPTION( 3ll );
			if( vr$68 == 11ll ) goto label$1191;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-frounding-math ", 17ll, 0 );
			}
			label$1191:;
			label$1190:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-math-errno ", 17ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fwrapv ", 9ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-exceptions -fno-asynchronous-unwind-tables ", 49ll, 0 );
			int64 vr$75 = FBGETOPTION( 21ll );
			if( ((int64)-((int64)-ISM64TARGET$3 == -1ll) | (int64)-(vr$75 == -1ll)) == 0ll ) goto label$1193;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-funwind-tables ", 17ll, 0 );
			}
			goto label$1192;
			label$1193:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-unwind-tables ", 20ll, 0 );
			}
			label$1192:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-format ", 13ll, 0 );
			int64 vr$81 = FBGETOPTION( 14ll );
			if( vr$81 == 0ll ) goto label$1195;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-g ", 4ll, 0 );
			}
			label$1195:;
			label$1194:;
			int64 vr$83 = FBGETOPTION( 5ll );
			if( vr$83 != 1ll ) goto label$1197;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mfpmath=sse -msse2 ", 21ll, 0 );
			}
			label$1197:;
			label$1196:;
			{
				int64 TMP$582$4;
				int64 vr$85 = FBGETCPUFAMILY(  );
				TMP$582$4 = vr$85;
				if( TMP$582$4 == 0ll ) goto label$1200;
				label$1201:;
				if( TMP$582$4 != 1ll ) goto label$1199;
				label$1200:;
				{
					int64 vr$86 = FBGETOPTION( 9ll );
					if( vr$86 != 0ll ) goto label$1203;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-masm=intel ", 13ll, 0 );
					}
					label$1203:;
					label$1202:;
				}
				label$1199:;
				label$1198:;
			}
		}
		goto label$1156;
		label$1157:;
		if( TMP$543$2 != 2ll ) goto label$1204;
		label$1205:;
		{
			{
				int64 TMP$584$4;
				int64 vr$88 = FBGETCPUFAMILY(  );
				TMP$584$4 = vr$88;
				if( TMP$584$4 != 0ll ) goto label$1207;
				label$1208:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=x86 ", 12ll, 0 );
				}
				goto label$1206;
				label$1207:;
				if( TMP$584$4 != 1ll ) goto label$1209;
				label$1210:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=x86-64 ", 15ll, 0 );
				}
				goto label$1206;
				label$1209:;
				if( TMP$584$4 != 2ll ) goto label$1211;
				label$1212:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=arm ", 12ll, 0 );
				}
				goto label$1206;
				label$1211:;
				if( TMP$584$4 != 3ll ) goto label$1213;
				label$1214:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=armv8-a ", 16ll, 0 );
				}
				goto label$1206;
				label$1213:;
				if( TMP$584$4 != 4ll ) goto label$1215;
				label$1216:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mcpu=powerpc ", 15ll, 0 );
				}
				goto label$1206;
				label$1215:;
				if( TMP$584$4 != 5ll ) goto label$1217;
				label$1218:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mcpu=powerpc64 ", 17ll, 0 );
				}
				goto label$1206;
				label$1217:;
				if( TMP$584$4 != 6ll ) goto label$1219;
				label$1220:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mcpu=powerpc64le ", 19ll, 0 );
				}
				goto label$1206;
				label$1219:;
				if( TMP$584$4 != 8ll ) goto label$1221;
				label$1222:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=riscv64 -mattr=+m,+a,+f,+d,+c ", 38ll, 0 );
				}
				goto label$1206;
				label$1221:;
				if( TMP$584$4 != 9ll ) goto label$1223;
				label$1224:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=loongarch64 -mattr=+d ", 30ll, 0 );
				}
				label$1223:;
				label$1206:;
			}
			int64 vr$98 = FBGETOPTION( 37ll );
			if( vr$98 == 0ll ) goto label$1226;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-relocation-model=pic ", 23ll, 0 );
			}
			label$1226:;
			label$1225:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-O", 3ll, 0 );
			int64 vr$101 = FBGETOPTION( 8ll );
			FBSTRING* vr$102 = fb_LongintToStr( vr$101 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$102, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			{
				int64 TMP$595$4;
				int64 vr$105 = FBGETCPUFAMILY(  );
				TMP$595$4 = vr$105;
				if( TMP$595$4 == 0ll ) goto label$1229;
				label$1230:;
				if( TMP$595$4 != 1ll ) goto label$1228;
				label$1229:;
				{
					int64 vr$106 = FBGETOPTION( 9ll );
					if( vr$106 != 0ll ) goto label$1232;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--x86-asm-syntax=intel ", 24ll, 0 );
					}
					label$1232:;
					label$1231:;
				}
				label$1228:;
				label$1227:;
			}
		}
		label$1204:;
		label$1156:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$109 = HGETASMNAME( MODULE$1, 1ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$109, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22 ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-o \x22", 5ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&ASMFILE$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&FBC$ + 2072ll), -1ll, 0 );
	{
		int64 TMP$599$2;
		int64 vr$118 = FBGETOPTION( 2ll );
		TMP$599$2 = vr$118;
		if( TMP$599$2 != 1ll ) goto label$1234;
		label$1235:;
		{
			$7FBCTOOL GCC$3;
			GCC$3 = 3ll;
			int64 vr$119 = FBGETOPTION( 3ll );
			if( vr$119 != 11ll ) goto label$1237;
			{
				GCC$3 = 14ll;
			}
			label$1237:;
			label$1236:;
			int64 vr$121 = FBCRUNBIN( (char*)"compiling C", GCC$3, &LN$1 );
			fb$result$1 = vr$121;
		}
		goto label$1233;
		label$1234:;
		if( TMP$599$2 != 2ll ) goto label$1238;
		label$1239:;
		{
			int64 vr$123 = FBCRUNBIN( (char*)"compiling LLVM IR", 4ll, &LN$1 );
			fb$result$1 = vr$123;
		}
		label$1238:;
		label$1233:;
	}
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1153:;
	return fb$result$1;
}

static void HCOMPILESTAGE2MODULES( void )
{
	label$1240:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1242:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0ull ) goto label$1243;
	{
		int64 vr$2 = HCOMPILESTAGE2MODULE( MODULE$1 );
		if( vr$2 != 0ll ) goto label$1245;
		{
			FBCEND( 1ll );
		}
		label$1245:;
		label$1244:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1242;
	label$1243:;
	label$1241:;
}

static int64 HASSEMBLEMODULE( struct $9FBCIOFILE* MODULE$1 )
{
	FBSTRING TMP$606$1;
	FBSTRING TMP$607$1;
	FBSTRING TMP$608$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1246:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	{
		int64 TMP$602$2;
		int64 vr$2 = FBGETCPUFAMILY(  );
		TMP$602$2 = vr$2;
		if( TMP$602$2 != 0ll ) goto label$1249;
		label$1250:;
		{
			int64 vr$3 = FBGETOPTION( 3ll );
			if( vr$3 != 9ll ) goto label$1252;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-arch i386 ", 12ll, 0 );
			}
			goto label$1251;
			label$1252:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--32 ", 6ll, 0 );
			}
			label$1251:;
		}
		goto label$1248;
		label$1249:;
		if( TMP$602$2 != 1ll ) goto label$1253;
		label$1254:;
		{
			int64 vr$6 = FBGETOPTION( 3ll );
			if( vr$6 != 9ll ) goto label$1256;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-arch x86_64 ", 14ll, 0 );
			}
			goto label$1255;
			label$1256:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--64 ", 6ll, 0 );
			}
			label$1255:;
		}
		label$1253:;
		label$1248:;
	}
	int64 vr$9 = FBGETOPTION( 14ll );
	if( vr$9 != 0ll ) goto label$1258;
	{
		int64 vr$10 = FBGETOPTION( 3ll );
		if( vr$10 == 9ll ) goto label$1260;
		{
			int64 vr$11 = FBGETOPTION( 3ll );
			if( vr$11 == 11ll ) goto label$1262;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--strip-local-absolute ", 24ll, 0 );
			}
			label$1262:;
			label$1261:;
		}
		label$1260:;
		label$1259:;
	}
	label$1258:;
	label$1257:;
	int64 vr$13 = FBGETOPTION( 3ll );
	if( vr$13 != 11ll ) goto label$1264;
	{
		fb$result$1 = -1ll;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1247;
	}
	label$1264:;
	label$1263:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$16 = HGETASMNAME( MODULE$1, 2ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$16, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22 ", 3ll, 0 );
	__builtin_memset( &TMP$606$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$606$1, (void*)"-o \x22", 5ll, *(void**)((uint8*)MODULE$1 + 24ll), -1ll );
	__builtin_memset( &TMP$607$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$607$1, (void*)vr$22, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$608$1, 0, 24ll );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$608$1, (void*)&LN$1, -1ll, (void*)vr$25, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$29, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&FBC$ + 2024ll), -1ll, 0 );
	$7FBCTOOL GAS$1;
	GAS$1 = 0ll;
	int64 vr$33 = FBGETOPTION( 3ll );
	if( vr$33 != 11ll ) goto label$1266;
	{
		GAS$1 = 11ll;
	}
	label$1266:;
	label$1265:;
	int64 vr$35 = FBCRUNBIN( (char*)"assembling", GAS$1, &LN$1 );
	if( vr$35 != 0ll ) goto label$1268;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1247;
	}
	label$1268:;
	label$1267:;
	if( *(int64*)((uint8*)&FBC$ + 104ll) != 0ll ) goto label$1270;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)MODULE$1 + 24ll) );
	}
	label$1270:;
	label$1269:;
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1247:;
	return fb$result$1;
}

static void HASSEMBLEMODULES( void )
{
	label$1271:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1273:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0ull ) goto label$1274;
	{
		int64 vr$2 = HASSEMBLEMODULE( MODULE$1 );
		if( vr$2 != 0ll ) goto label$1276;
		{
			FBCEND( 1ll );
		}
		label$1276:;
		label$1275:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1273;
	label$1274:;
	label$1272:;
}

static int64 HASSEMBLERC( struct $9FBCIOFILE* RC$1 )
{
	FBSTRING TMP$611$1;
	FBSTRING TMP$612$1;
	FBSTRING TMP$613$1;
	FBSTRING TMP$614$1;
	FBSTRING TMP$615$1;
	FBSTRING TMP$616$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1277:;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1ll, (void*)"--output-format=coff --include-dir=.", 37ll, 0 );
	__builtin_memset( &TMP$611$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$611$1, (void*)" \x22", 3ll, (void*)RC$1, -1ll );
	__builtin_memset( &TMP$612$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$612$1, (void*)vr$6, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$613$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$613$1, (void*)&LN$1, -1ll, (void*)vr$9, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$13, -1ll, 0 );
	__builtin_memset( &TMP$614$1, 0, 24ll );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$614$1, (void*)" \x22", 3ll, *(void**)((uint8*)RC$1 + 24ll), -1ll );
	__builtin_memset( &TMP$615$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$615$1, (void*)vr$18, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$616$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$616$1, (void*)&LN$1, -1ll, (void*)vr$21, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$25, -1ll, 0 );
	int64 vr$28 = FBCRUNBIN( (char*)"compiling rc", 8ll, &LN$1 );
	fb$result$1 = vr$28;
	if( *(int64*)((uint8*)&FBC$ + 104ll) != 0ll ) goto label$1280;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)RC$1 + 24ll) );
	}
	label$1280:;
	label$1279:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1278:;
	return fb$result$1;
}

static void HASSEMBLERCS( void )
{
	label$1281:;
	struct $9FBCIOFILE* RC$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
	RC$1 = (struct $9FBCIOFILE*)vr$1;
	label$1283:;
	if( RC$1 == (struct $9FBCIOFILE*)0ull ) goto label$1284;
	{
		int64 vr$2 = HASSEMBLERC( RC$1 );
		if( vr$2 != 0ll ) goto label$1286;
		{
			FBCEND( 1ll );
		}
		label$1286:;
		label$1285:;
		void* vr$3 = LISTGETNEXT( (void*)RC$1 );
		RC$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1283;
	label$1284:;
	label$1282:;
}

static void HASSEMBLEXPM( void )
{
	label$1287:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
	if( vr$1 <= 0ll ) goto label$1290;
	{
		int64 vr$2 = FBGETOPTION( 2ll );
		if( vr$2 == 0ll ) goto label$1292;
		{
			HCOMPILESTAGE2MODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll) );
		}
		label$1292:;
		label$1291:;
		int64 vr$5 = HASSEMBLEMODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll) );
		if( vr$5 != 0ll ) goto label$1294;
		{
			FBCEND( 1ll );
		}
		label$1294:;
		label$1293:;
	}
	label$1290:;
	label$1289:;
	label$1288:;
}

static int64 HCOMPILEFBCTINF( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1295:;
	struct $9FBCIOFILE FBCTINF$1;
	_ZN9FBCIOFILEC1Ev( &FBCTINF$1 );
	FBSTRING OBJFILE$1;
	__builtin_memset( &OBJFILE$1, 0, 24ll );
	int64 FO$1;
	fb_StrAssign( (void*)&FBCTINF$1, -1ll, (void*)"__fb_ct.inf.bas", 16ll, 0 );
	fb_StrAssign( (void*)&OBJFILE$1, -1ll, (void*)"__fb_ct.inf", 12ll, 0 );
	*(FBSTRING**)((uint8*)&FBCTINF$1 + 24ll) = &OBJFILE$1;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1298;
	{
		FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (char*)"creating: ", 10ll );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		fb_PrintString( 0, (FBSTRING*)&FBCTINF$1, 1 );
	}
	label$1298:;
	label$1297:;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = (int64)vr$8;
	int32 vr$12 = fb_FileOpen( (FBSTRING*)&FBCTINF$1, 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$12 == 0ll ) goto label$1300;
	{
		fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
		_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
		goto label$1296;
	}
	label$1300:;
	label$1299:;
	int32 vr$17 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$17 == 0ll ) goto label$1301;
	void* vr$19 = fb_ErrorThrowAt( 3809, (char*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$19;
	label$1301:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$1303;
	{
		FBCADDTEMP( (FBSTRING*)&FBCTINF$1 );
	}
	label$1303:;
	label$1302:;
	HCOMPILEBAS( &FBCTINF$1, 0ll, -1ll, -1ll );
	int64 vr$22 = FBGETOPTION( 2ll );
	if( vr$22 == 0ll ) goto label$1305;
	{
		HCOMPILESTAGE2MODULE( &FBCTINF$1 );
	}
	label$1305:;
	label$1304:;
	int64 vr$25 = HASSEMBLEMODULE( &FBCTINF$1 );
	fb$result$1 = vr$25;
	fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
	_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
	label$1296:;
	return fb$result$1;
}

static int64 HARCHIVEFILES( void )
{
	FBSTRING TMP$621$1;
	FBSTRING TMP$622$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1306:;
	HSETOUTNAME(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (char*)((uint8*)&FBC$ + 968ll) );
	int32 vr$3 = fb_FileKill( (FBSTRING*)vr$2 );
	if( (int64)vr$3 == 0ll ) goto label$1309;
	{
	}
	label$1309:;
	label$1308:;
	FBSTRING LN$1;
	__builtin_memset( &TMP$621$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$621$1, (void*)"-rsc \x22", 7ll, (void*)((uint8*)&FBC$ + 968ll), 261ll );
	__builtin_memset( &TMP$622$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$622$1, (void*)vr$8, -1ll, (void*)"\x22 ", 3ll );
	fb_StrInit( (void*)&LN$1, -1ll, (void*)vr$11, -1ll, 0 );
	int64 vr$13 = FBGETOPTION( 39ll );
	int64 vr$14 = FBISCROSSCOMP(  );
	if( (vr$13 & ~vr$14) == 0ll ) goto label$1311;
	{
		FBSTRING TMP$626$2;
		int64 vr$17 = HCOMPILEFBCTINF(  );
		if( vr$17 == 0ll ) goto label$1313;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22__fb_ct.inf\x22 ", 15ll, 0 );
		}
		label$1313:;
		label$1312:;
		__builtin_memset( &TMP$626$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$626$2, -1ll, (void*)"__fb_ct.inf", 12ll, 0 );
		FBCADDTEMP( &TMP$626$2 );
		fb_StrDelete( (FBSTRING*)&TMP$626$2 );
	}
	label$1311:;
	label$1310:;
	FBSTRING* OBJFILE$1;
	void* vr$24 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 400ll) );
	OBJFILE$1 = (FBSTRING*)vr$24;
	label$1314:;
	if( OBJFILE$1 == (FBSTRING*)0ull ) goto label$1315;
	{
		FBSTRING TMP$627$2;
		FBSTRING TMP$628$2;
		FBSTRING TMP$629$2;
		__builtin_memset( &TMP$627$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$627$2, (void*)"\x22", 2ll, (void*)OBJFILE$1, -1ll );
		__builtin_memset( &TMP$628$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$628$2, (void*)vr$27, -1ll, (void*)"\x22 ", 3ll );
		__builtin_memset( &TMP$629$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$629$2, (void*)&LN$1, -1ll, (void*)vr$30, -1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$34, -1ll, 0 );
		void* vr$36 = LISTGETNEXT( (void*)OBJFILE$1 );
		OBJFILE$1 = (FBSTRING*)vr$36;
	}
	goto label$1314;
	label$1315:;
	$7FBCTOOL AR$1;
	AR$1 = 1ll;
	int64 vr$37 = FBGETOPTION( 3ll );
	if( vr$37 != 11ll ) goto label$1317;
	{
		AR$1 = 12ll;
	}
	label$1317:;
	label$1316:;
	int64 vr$39 = FBCRUNBIN( (char*)"archiving", AR$1, &LN$1 );
	fb$result$1 = vr$39;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1307:;
	return fb$result$1;
}

static void HSETDEFAULTLIBPATHS( void )
{
	FBSTRING TMP$631$1;
	FBSTRING TMP$632$1;
	label$1318:;
	__builtin_memset( &TMP$631$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$631$1, -1ll, (void*)((uint8*)&FBC$ + 3295ll), 261ll, 0 );
	FBCADDDEFLIBPATH( &TMP$631$1 );
	fb_StrDelete( (FBSTRING*)&TMP$631$1 );
	__builtin_memset( &TMP$632$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$632$1, -1ll, (void*)".", 2ll, 0 );
	FBCADDDEFLIBPATH( &TMP$632$1 );
	fb_StrDelete( (FBSTRING*)&TMP$632$1 );
	int64 vr$9 = FBGETOPTION( 3ll );
	if( vr$9 == 11ll ) goto label$1321;
	{
		FBCADDLIBPATHFOR( (char*)"libgcc.a" );
		{
			int64 TMP$634$3;
			int64 vr$10 = FBGETOPTION( 3ll );
			TMP$634$3 = vr$10;
			if( TMP$634$3 != 5ll ) goto label$1323;
			label$1324:;
			{
				FBCADDLIBPATHFOR( (char*)"libc++.so" );
			}
			goto label$1322;
			label$1323:;
			if( TMP$634$3 != 3ll ) goto label$1325;
			label$1326:;
			{
				FBCADDLIBPATHFOR( (char*)"libstdcx.a" );
			}
			goto label$1322;
			label$1325:;
			{
				FBCADDLIBPATHFOR( (char*)"libstdc++.so" );
			}
			label$1327:;
			label$1322:;
		}
	}
	label$1321:;
	label$1320:;
	{
		int64 TMP$638$2;
		int64 vr$11 = FBGETOPTION( 3ll );
		TMP$638$2 = vr$11;
		if( TMP$638$2 != 3ll ) goto label$1329;
		label$1330:;
		{
			FBCADDLIBPATHFOR( (char*)"libm.a" );
		}
		goto label$1328;
		label$1329:;
		if( TMP$638$2 != 0ll ) goto label$1331;
		label$1332:;
		{
			FBCADDLIBPATHFOR( (char*)"libmingw32.a" );
		}
		label$1331:;
		label$1328:;
	}
	label$1319:;
}

static void FBCADDDEFLIB( char* LIBNAME$1 )
{
	FBSTRING TMP$641$1;
	label$1333:;
	__builtin_memset( &TMP$641$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$641$1, -1ll, (void*)LIBNAME$1, 0ll, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), &TMP$641$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$641$1 );
	label$1334:;
}

static FBSTRING* HGETFBLIBNAMESUFFIX( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$1335:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 vr$2 = FBGETOPTION( 35ll );
	if( vr$2 == 0ll ) goto label$1338;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"mt", 3ll, 0 );
	}
	label$1338:;
	label$1337:;
	int64 vr$4 = FBGETOPTION( 37ll );
	if( vr$4 == 0ll ) goto label$1340;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"pic", 4ll, 0 );
	}
	label$1340:;
	label$1339:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1336:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static void HADDDEFAULTLIBS( void )
{
	label$1341:;
	int64 vr$0 = FBGETOPTION( 32ll );
	if( vr$0 == 0ll ) goto label$1344;
	{
		FBSTRING TMP$642$2;
		FBSTRING TMP$643$2;
		__builtin_memset( &TMP$643$2, 0, 24ll );
		FBSTRING* vr$2 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$642$2, 0, 24ll );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$642$2, (void*)"fbrt", 5ll, (void*)vr$2, -1ll );
		fb_StrAssign( (void*)&TMP$643$2, -1ll, (void*)vr$5, -1ll, 0 );
		FBCADDDEFLIB( (char*)*(char**)&TMP$643$2 );
		fb_StrDelete( (FBSTRING*)&TMP$643$2 );
	}
	goto label$1343;
	label$1344:;
	{
		FBSTRING TMP$644$2;
		FBSTRING TMP$645$2;
		__builtin_memset( &TMP$645$2, 0, 24ll );
		FBSTRING* vr$9 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$644$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$644$2, (void*)"fb", 3ll, (void*)vr$9, -1ll );
		fb_StrAssign( (void*)&TMP$645$2, -1ll, (void*)vr$12, -1ll, 0 );
		FBCADDDEFLIB( (char*)*(char**)&TMP$645$2 );
		fb_StrDelete( (FBSTRING*)&TMP$645$2 );
	}
	label$1343:;
	int64 vr$15 = FBGETOPTION( 36ll );
	if( vr$15 == 0ll ) goto label$1346;
	{
		FBSTRING TMP$646$2;
		FBSTRING TMP$647$2;
		__builtin_memset( &TMP$647$2, 0, 24ll );
		FBSTRING* vr$17 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$646$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$646$2, (void*)"fbgfx", 6ll, (void*)vr$17, -1ll );
		fb_StrAssign( (void*)&TMP$647$2, -1ll, (void*)vr$20, -1ll, 0 );
		FBCADDDEFLIB( (char*)*(char**)&TMP$647$2 );
		fb_StrDelete( (FBSTRING*)&TMP$647$2 );
		{
			uint64 TMP$648$3;
			int64 vr$23 = FBGETOPTION( 3ll );
			TMP$648$3 = (uint64)vr$23;
			goto label$1348;
			label$1349:;
			{
				FBCADDDEFLIB( (char*)"gdi32" );
				FBCADDDEFLIB( (char*)"winmm" );
			}
			goto label$1347;
			label$1350:;
			{
				FBSTRING TMP$652$4;
				__builtin_memset( &TMP$652$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$652$4, -1ll, (void*)"/usr/X11R6/lib", 15ll, 0 );
				FBCADDDEFLIBPATH( &TMP$652$4 );
				fb_StrDelete( (FBSTRING*)&TMP$652$4 );
				FBCADDDEFLIB( (char*)"X11" );
				FBCADDDEFLIB( (char*)"Xext" );
				FBCADDDEFLIB( (char*)"Xpm" );
				FBCADDDEFLIB( (char*)"Xrandr" );
				FBCADDDEFLIB( (char*)"Xrender" );
			}
			goto label$1347;
			label$1348:;
			static const void* tmp$816[11ll] = {
				&&label$1349,
				&&label$1349,
				&&label$1350,
				&&label$1347,
				&&label$1347,
				&&label$1350,
				&&label$1350,
				&&label$1350,
				&&label$1350,
				&&label$1350,
				&&label$1350,
			};
			if( TMP$648$3 > 10ull ) goto label$1347;
			goto *tmp$816[TMP$648$3 - 0ull];
			label$1347:;
		}
	}
	label$1346:;
	label$1345:;
	{
		uint64 TMP$658$2;
		int64 vr$28 = FBGETOPTION( 3ll );
		TMP$658$2 = (uint64)vr$28;
		goto label$1352;
		label$1353:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"cygwin" );
			FBCADDDEFLIB( (char*)"kernel32" );
			FBCADDDEFLIB( (char*)"user32" );
			int64 vr$29 = FBGETOPTION( 23ll );
			if( vr$29 == 0ll ) goto label$1355;
			{
				FBCADDDEFLIB( (char*)"gmon" );
			}
			label$1355:;
			label$1354:;
		}
		goto label$1351;
		label$1356:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"System" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"ncurses" );
		}
		goto label$1351;
		label$1357:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"m" );
			int64 vr$30 = FBGETOPTION( 35ll );
			if( vr$30 == 0ll ) goto label$1359;
			{
				FBCADDDEFLIB( (char*)"pthread" );
				FBCADDDEFLIB( (char*)"socket" );
			}
			label$1359:;
			label$1358:;
		}
		goto label$1351;
		label$1360:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"m" );
			FBCADDDEFLIB( (char*)"ncurses" );
		}
		goto label$1351;
		label$1361:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"m" );
			FBCADDDEFLIB( (char*)"ncurses" );
		}
		goto label$1351;
		label$1362:;
		{
			FBSTRING* vr$31 = FBCFINDLIBFILE( (char*)"libtinfo.a" );
			int64 vr$32 = fb_StrLen( (void*)vr$31, -1ll );
			FBSTRING* vr$34 = FBCFINDLIBFILE( (char*)"libtinfo.so" );
			int64 vr$35 = fb_StrLen( (void*)vr$34, -1ll );
			if( ((int64)-(vr$32 > 0ll) | (int64)-(vr$35 > 0ll)) == 0ll ) goto label$1364;
			{
				FBCADDDEFLIB( (char*)"tinfo" );
			}
			goto label$1363;
			label$1364:;
			{
				FBCADDDEFLIB( (char*)"ncurses" );
			}
			label$1363:;
			FBCADDDEFLIB( (char*)"m" );
			FBCADDDEFLIB( (char*)"dl" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"gcc" );
			FBSTRING* vr$38 = FBCFINDLIBFILE( (char*)"libgcc_eh.a" );
			int64 vr$39 = fb_StrLen( (void*)vr$38, -1ll );
			FBSTRING* vr$41 = FBCFINDLIBFILE( (char*)"libgcc_eh.so" );
			int64 vr$42 = fb_StrLen( (void*)vr$41, -1ll );
			if( ((int64)-(vr$39 > 0ll) | (int64)-(vr$42 > 0ll)) == 0ll ) goto label$1366;
			{
				FBCADDDEFLIB( (char*)"gcc_eh" );
			}
			label$1366:;
			label$1365:;
			FBCADDDEFLIB( (char*)"c" );
		}
		goto label$1351;
		label$1367:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"m" );
			FBCADDDEFLIB( (char*)"ncurses" );
		}
		goto label$1351;
		label$1368:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"pthread" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"m" );
			FBCADDDEFLIB( (char*)"ncurses" );
		}
		goto label$1351;
		label$1369:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"msvcrt" );
			FBCADDDEFLIB( (char*)"kernel32" );
			FBCADDDEFLIB( (char*)"user32" );
			FBCADDDEFLIB( (char*)"mingw32" );
			FBCADDDEFLIB( (char*)"mingwex" );
			FBCADDDEFLIB( (char*)"moldname" );
			FBSTRING* vr$45 = FBCFINDLIBFILE( (char*)"libgcc_eh.a" );
			int64 vr$46 = fb_StrLen( (void*)vr$45, -1ll );
			FBSTRING* vr$48 = FBCFINDLIBFILE( (char*)"libgcc_eh.dll.a" );
			int64 vr$49 = fb_StrLen( (void*)vr$48, -1ll );
			if( ((int64)-(vr$46 > 0ll) | (int64)-(vr$49 > 0ll)) == 0ll ) goto label$1371;
			{
				FBCADDDEFLIB( (char*)"gcc_eh" );
			}
			label$1371:;
			label$1370:;
			int64 vr$52 = FBGETOPTION( 23ll );
			if( vr$52 == 0ll ) goto label$1373;
			{
				FBCADDDEFLIB( (char*)"gmon" );
			}
			label$1373:;
			label$1372:;
		}
		goto label$1351;
		label$1374:;
		{
			FBCADDDEFLIB( (char*)"gcc" );
			FBCADDDEFLIB( (char*)"fbgfx" );
			FBCADDDEFLIB( (char*)"openxdk" );
			FBCADDDEFLIB( (char*)"hal" );
			FBCADDDEFLIB( (char*)"c" );
			FBCADDDEFLIB( (char*)"usb" );
			FBCADDDEFLIB( (char*)"xboxkrnl" );
			FBCADDDEFLIB( (char*)"m" );
			int64 vr$53 = FBGETOPTION( 23ll );
			if( vr$53 == 0ll ) goto label$1376;
			{
				FBCADDDEFLIB( (char*)"gmon" );
			}
			label$1376:;
			label$1375:;
		}
		goto label$1351;
		label$1352:;
		static const void* tmp$817[11ll] = {
			&&label$1369,
			&&label$1353,
			&&label$1362,
			&&label$1357,
			&&label$1374,
			&&label$1360,
			&&label$1361,
			&&label$1361,
			&&label$1368,
			&&label$1356,
			&&label$1367,
		};
		if( TMP$658$2 > 10ull ) goto label$1351;
		goto *tmp$817[TMP$658$2 - 0ull];
		label$1351:;
	}
	label$1342:;
}

static void HEXCLUDELIBSFROMLINK( void )
{
	label$1377:;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 704ll) );
	I$1 = (struct $11TSTRSETITEM*)vr$1;
	label$1379:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$1380;
	{
		STRSETDEL( (struct $7TSTRSET*)((uint8*)&FBC$ + 792ll), (FBSTRING*)I$1 );
		void* vr$5 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$5;
	}
	goto label$1379;
	label$1380:;
	label$1378:;
}

static void HPRINTOPTIONS( int64 VERBOSE$1 )
{
	label$1381:;
	FBSTRING* vr$0 = fb_StrAllocTempDescZEx( (char*)"usage: fbc [options] <input files>", 34ll );
	fb_PrintString( 0, (FBSTRING*)vr$0, 1 );
	FBSTRING* vr$1 = fb_StrAllocTempDescZEx( (char*)"input files:", 12ll );
	fb_PrintString( 0, (FBSTRING*)vr$1, 1 );
	FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (char*)"  *.a = static library, *.o = object file, *.bas = source", 57ll );
	fb_PrintString( 0, (FBSTRING*)vr$2, 1 );
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (char*)"  *.rc = resource script, *.res = compiled resource (win32)", 59ll );
	fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (char*)"  *.xpm = icon resource (*nix/*bsd)", 35ll );
	fb_PrintString( 0, (FBSTRING*)vr$4, 1 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (char*)"options:", 8ll );
	fb_PrintString( 0, (FBSTRING*)vr$5, 1 );
	FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (char*)"  @<file>          Read more command line arguments from a file", 63ll );
	fb_PrintString( 0, (FBSTRING*)vr$6, 1 );
	FBSTRING* vr$7 = fb_StrAllocTempDescZEx( (char*)"  -a <file>        Treat file as .o/.a input file", 49ll );
	fb_PrintString( 0, (FBSTRING*)vr$7, 1 );
	FBSTRING* vr$8 = fb_StrAllocTempDescZEx( (char*)"  -arch <type>     Set target architecture (default: 686)", 57ll );
	fb_PrintString( 0, (FBSTRING*)vr$8, 1 );
	FBSTRING* vr$9 = fb_StrAllocTempDescZEx( (char*)"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$9, 1 );
	FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (char*)"  -b <file>        Treat file as .bas input file", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$10, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1384;
	{
		FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (char*)"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)", 64ll );
		fb_PrintString( 0, (FBSTRING*)vr$11, 1 );
	}
	label$1384:;
	label$1383:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (char*)"  -c               Compile only, do not link", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (char*)"  -C               Preserve temporary .o files", 46ll );
	fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (char*)"  -d <name>[=<val>]  Add a global #define", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$14, 1 );
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (char*)"  -dll             Same as -dylib", 33ll );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (char*)"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (char*)"  -e               Enable runtime error checking", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$17, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1386;
	{
		FBSTRING* vr$18 = fb_StrAllocTempDescZEx( (char*)"  -earray          Enable array bounds checking", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$18, 1 );
		FBSTRING* vr$19 = fb_StrAllocTempDescZEx( (char*)"  -eassert         Enable assert() and assertwarn() checking", 60ll );
		fb_PrintString( 0, (FBSTRING*)vr$19, 1 );
		FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (char*)"  -edebug          Enable __FB_DEBUG__", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (char*)"  -edebuginfo      Add debug info", 33ll );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
		FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (char*)"  -elocation       Enable error location reporting", 50ll );
		fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
		FBSTRING* vr$23 = fb_StrAllocTempDescZEx( (char*)"  -enullptr        Enable null-pointer checking", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
		FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (char*)"  -eunwind         Enable call stack unwind information", 55ll );
		fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
		FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (char*)"  -entry           Change the entry point of the program from main()", 68ll );
		fb_PrintString( 0, (FBSTRING*)vr$25, 1 );
	}
	label$1386:;
	label$1385:;
	FBSTRING* vr$26 = fb_StrAllocTempDescZEx( (char*)"  -ex              -e plus RESUME support", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (char*)"  -exx             -ex plus array bounds/null-pointer checking", 62ll );
	fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
	FBSTRING* vr$28 = fb_StrAllocTempDescZEx( (char*)"  -export          Export symbols for dynamic linkage", 53ll );
	fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1388;
	{
		FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (char*)"  -fbgfx           Link to the appropriate libfbgfx variant (normally automatic)", 80ll );
		fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
	}
	label$1388:;
	label$1387:;
	FBSTRING* vr$30 = fb_StrAllocTempDescZEx( (char*)"  -forcelang <name>  Override #lang statements in source code", 61ll );
	fb_PrintString( 0, (FBSTRING*)vr$30, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1390;
	{
		FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (char*)"  -fpmode fast|precise  Select floating-point math accuracy/speed", 65ll );
		fb_PrintString( 0, (FBSTRING*)vr$31, 1 );
		FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (char*)"  -fpu x87|sse     Set target FPU", 33ll );
		fb_PrintString( 0, (FBSTRING*)vr$32, 1 );
	}
	label$1390:;
	label$1389:;
	FBSTRING* vr$33 = fb_StrAllocTempDescZEx( (char*)"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()", 75ll );
	fb_PrintString( 0, (FBSTRING*)vr$33, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1392;
	{
		FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (char*)"  -gen gas         Select GNU gas 32-bit assembler backend", 58ll );
		fb_PrintString( 0, (FBSTRING*)vr$34, 1 );
		FBSTRING* vr$35 = fb_StrAllocTempDescZEx( (char*)"  -gen gas64       Select GNU gas 64-bit assembler backend", 58ll );
		fb_PrintString( 0, (FBSTRING*)vr$35, 1 );
		FBSTRING* vr$36 = fb_StrAllocTempDescZEx( (char*)"  -gen gcc         Select GNU gcc C backend", 43ll );
		fb_PrintString( 0, (FBSTRING*)vr$36, 1 );
		FBSTRING* vr$37 = fb_StrAllocTempDescZEx( (char*)"  -gen llvm        Select LLVM backend", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$37, 1 );
	}
	goto label$1391;
	label$1392:;
	{
		FBSTRING* vr$38 = fb_StrAllocTempDescZEx( (char*)"  -gen gas|gas64|gcc|llvm  Select code generation backend", 57ll );
		fb_PrintString( 0, (FBSTRING*)vr$38, 1 );
	}
	label$1391:;
	FBSTRING* vr$39 = fb_StrAllocTempDescZEx( (char*)"  [-]-help         Show this help output; use '-help -v' to show verbose help", 77ll );
	fb_PrintString( 0, (FBSTRING*)vr$39, 1 );
	FBSTRING* vr$40 = fb_StrAllocTempDescZEx( (char*)"  -i <path>        Add an include file search path", 50ll );
	fb_PrintString( 0, (FBSTRING*)vr$40, 1 );
	FBSTRING* vr$41 = fb_StrAllocTempDescZEx( (char*)"  -include <file>  Pre-#include a file for each input .bas", 58ll );
	fb_PrintString( 0, (FBSTRING*)vr$41, 1 );
	FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (char*)"  -l <name>        Link in a library", 36ll );
	fb_PrintString( 0, (FBSTRING*)vr$42, 1 );
	FBSTRING* vr$43 = fb_StrAllocTempDescZEx( (char*)"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb", 64ll );
	fb_PrintString( 0, (FBSTRING*)vr$43, 1 );
	FBSTRING* vr$44 = fb_StrAllocTempDescZEx( (char*)"  -lib             Create a static library", 42ll );
	fb_PrintString( 0, (FBSTRING*)vr$44, 1 );
	FBSTRING* vr$45 = fb_StrAllocTempDescZEx( (char*)"  -m <name>        Specify main module (default if not -c: first input .bas)", 76ll );
	fb_PrintString( 0, (FBSTRING*)vr$45, 1 );
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (char*)"  -map <file>      Save linking map to file", 43ll );
	fb_PrintString( 0, (FBSTRING*)vr$46, 1 );
	FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (char*)"  -maxerr <n>      Only show <n> errors", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$47, 1 );
	FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (char*)"  -mt              Use thread-safe FB runtime", 45ll );
	fb_PrintString( 0, (FBSTRING*)vr$48, 1 );
	FBSTRING* vr$49 = fb_StrAllocTempDescZEx( (char*)"  -nodeflibs       Do not include the default libraries when linking", 68ll );
	fb_PrintString( 0, (FBSTRING*)vr$49, 1 );
	FBSTRING* vr$50 = fb_StrAllocTempDescZEx( (char*)"  -noerrline       Do not show source context in error messages", 63ll );
	fb_PrintString( 0, (FBSTRING*)vr$50, 1 );
	FBSTRING* vr$51 = fb_StrAllocTempDescZEx( (char*)"  -nolib <a,b,c>   Do not include the specified libraries when linking", 70ll );
	fb_PrintString( 0, (FBSTRING*)vr$51, 1 );
	FBSTRING* vr$52 = fb_StrAllocTempDescZEx( (char*)"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files", 78ll );
	fb_PrintString( 0, (FBSTRING*)vr$52, 1 );
	FBSTRING* vr$53 = fb_StrAllocTempDescZEx( (char*)"  -nostrip         Do not strip symbol information from the output file", 71ll );
	fb_PrintString( 0, (FBSTRING*)vr$53, 1 );
	FBSTRING* vr$54 = fb_StrAllocTempDescZEx( (char*)"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file", 74ll );
	fb_PrintString( 0, (FBSTRING*)vr$54, 1 );
	FBSTRING* vr$55 = fb_StrAllocTempDescZEx( (char*)"  -O <value>       Optimization level (default: 0)", 50ll );
	fb_PrintString( 0, (FBSTRING*)vr$55, 1 );
	FBSTRING* vr$56 = fb_StrAllocTempDescZEx( (char*)"  -p <path>        Add a library search path", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$56, 1 );
	FBSTRING* vr$57 = fb_StrAllocTempDescZEx( (char*)"  -pic             Generate position-independent code (non-x86 Unix shared libs)", 80ll );
	fb_PrintString( 0, (FBSTRING*)vr$57, 1 );
	FBSTRING* vr$58 = fb_StrAllocTempDescZEx( (char*)"  -pp              Write out preprocessed input file (.pp.bas) only", 67ll );
	fb_PrintString( 0, (FBSTRING*)vr$58, 1 );
	FBSTRING* vr$59 = fb_StrAllocTempDescZEx( (char*)"  -prefix <path>   Set the compiler prefix path", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$59, 1 );
	FBSTRING* vr$60 = fb_StrAllocTempDescZEx( (char*)"  -print host|target  Display host/target system name", 53ll );
	fb_PrintString( 0, (FBSTRING*)vr$60, 1 );
	FBSTRING* vr$61 = fb_StrAllocTempDescZEx( (char*)"  -print fblibdir  Display the compiler's lib/ path", 51ll );
	fb_PrintString( 0, (FBSTRING*)vr$61, 1 );
	FBSTRING* vr$62 = fb_StrAllocTempDescZEx( (char*)"  -print x         Display output binary/library file name (if known)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$62, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1394;
	{
		FBSTRING* vr$63 = fb_StrAllocTempDescZEx( (char*)"  -print sha-1     Display compiler's source code commit sha-1 (if known)", 73ll );
		fb_PrintString( 0, (FBSTRING*)vr$63, 1 );
	}
	label$1394:;
	label$1393:;
	FBSTRING* vr$64 = fb_StrAllocTempDescZEx( (char*)"  -profile         Enable function profiling", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$64, 1 );
	FBSTRING* vr$65 = fb_StrAllocTempDescZEx( (char*)"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only", 65ll );
	fb_PrintString( 0, (FBSTRING*)vr$65, 1 );
	FBSTRING* vr$66 = fb_StrAllocTempDescZEx( (char*)"  -rr              Write out the final .asm only", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$66, 1 );
	FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (char*)"  -R               Preserve temporary .asm/.c/.ll/.def files", 60ll );
	fb_PrintString( 0, (FBSTRING*)vr$67, 1 );
	FBSTRING* vr$68 = fb_StrAllocTempDescZEx( (char*)"  -RR              Preserve the final .asm file", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$68, 1 );
	FBSTRING* vr$69 = fb_StrAllocTempDescZEx( (char*)"  -s console|gui   Select win32 subsystem", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$69, 1 );
	FBSTRING* vr$70 = fb_StrAllocTempDescZEx( (char*)"  -showincludes    Display a tree of file names of #included files", 66ll );
	fb_PrintString( 0, (FBSTRING*)vr$70, 1 );
	FBSTRING* vr$71 = fb_StrAllocTempDescZEx( (char*)"  -static          Prefer static libraries over dynamic ones when linking", 73ll );
	fb_PrintString( 0, (FBSTRING*)vr$71, 1 );
	FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (char*)"  -strip           Omit all symbol information from the output file", 67ll );
	fb_PrintString( 0, (FBSTRING*)vr$72, 1 );
	FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (char*)"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)", 75ll );
	fb_PrintString( 0, (FBSTRING*)vr$73, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1396;
	{
		FBSTRING* vr$74 = fb_StrAllocTempDescZEx( (char*)"  -target <name>   Set cross-compilation target", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$74, 1 );
	}
	goto label$1395;
	label$1396:;
	{
		FBSTRING* vr$75 = fb_StrAllocTempDescZEx( (char*)"  -target <name>   Set cross-compilation target", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$75, 1 );
	}
	label$1395:;
	FBSTRING* vr$76 = fb_StrAllocTempDescZEx( (char*)"  -title <name>    Set XBE display title (xbox)", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$76, 1 );
	FBSTRING* vr$77 = fb_StrAllocTempDescZEx( (char*)"  -v               Be verbose", 29ll );
	fb_PrintString( 0, (FBSTRING*)vr$77, 1 );
	FBSTRING* vr$78 = fb_StrAllocTempDescZEx( (char*)"  -vec <n>         Automatic vectorization level (default: 0)", 61ll );
	fb_PrintString( 0, (FBSTRING*)vr$78, 1 );
	FBSTRING* vr$79 = fb_StrAllocTempDescZEx( (char*)"  [-]-version      Show compiler version", 40ll );
	fb_PrintString( 0, (FBSTRING*)vr$79, 1 );
	FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (char*)"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value", 70ll );
	fb_PrintString( 0, (FBSTRING*)vr$80, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1398;
	{
		FBSTRING* vr$81 = fb_StrAllocTempDescZEx( (char*)"  -w all           Enable all warnings", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$81, 1 );
		FBSTRING* vr$82 = fb_StrAllocTempDescZEx( (char*)"  -w none          Disable all warnings", 39ll );
		fb_PrintString( 0, (FBSTRING*)vr$82, 1 );
		FBSTRING* vr$83 = fb_StrAllocTempDescZEx( (char*)"  -w param         Enable parameter warnings", 44ll );
		fb_PrintString( 0, (FBSTRING*)vr$83, 1 );
		FBSTRING* vr$84 = fb_StrAllocTempDescZEx( (char*)"  -w escape        Enable string escape sequence warnings", 57ll );
		fb_PrintString( 0, (FBSTRING*)vr$84, 1 );
		FBSTRING* vr$85 = fb_StrAllocTempDescZEx( (char*)"  -w next          Enable next statement warnings", 49ll );
		fb_PrintString( 0, (FBSTRING*)vr$85, 1 );
		FBSTRING* vr$86 = fb_StrAllocTempDescZEx( (char*)"  -w signedness    Enable type signedness warnings", 50ll );
		fb_PrintString( 0, (FBSTRING*)vr$86, 1 );
		FBSTRING* vr$87 = fb_StrAllocTempDescZEx( (char*)"  -w constness     Enable const type warnings", 45ll );
		fb_PrintString( 0, (FBSTRING*)vr$87, 1 );
		FBSTRING* vr$88 = fb_StrAllocTempDescZEx( (char*)"  -w suffix        Enable invalid suffix warnings", 49ll );
		fb_PrintString( 0, (FBSTRING*)vr$88, 1 );
		FBSTRING* vr$89 = fb_StrAllocTempDescZEx( (char*)"  -w error         Report warnings as errors", 44ll );
		fb_PrintString( 0, (FBSTRING*)vr$89, 1 );
		FBSTRING* vr$90 = fb_StrAllocTempDescZEx( (char*)"  -w upcast        Enable warning when up-casting discards initializers", 71ll );
		fb_PrintString( 0, (FBSTRING*)vr$90, 1 );
	}
	label$1398:;
	label$1397:;
	FBSTRING* vr$91 = fb_StrAllocTempDescZEx( (char*)"  -Wa <a,b,c>      Pass options to 'as'", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$91, 1 );
	FBSTRING* vr$92 = fb_StrAllocTempDescZEx( (char*)"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)", 72ll );
	fb_PrintString( 0, (FBSTRING*)vr$92, 1 );
	FBSTRING* vr$93 = fb_StrAllocTempDescZEx( (char*)"  -Wl <a,b,c>      Pass options to 'ld'", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$93, 1 );
	FBSTRING* vr$94 = fb_StrAllocTempDescZEx( (char*)"  -x <file>        Set output executable/library file name", 58ll );
	fb_PrintString( 0, (FBSTRING*)vr$94, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1400;
	{
		FBSTRING* vr$95 = fb_StrAllocTempDescZEx( (char*)"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB", 56ll );
		fb_PrintString( 0, (FBSTRING*)vr$95, 1 );
		FBSTRING* vr$96 = fb_StrAllocTempDescZEx( (char*)"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros", 70ll );
		fb_PrintString( 0, (FBSTRING*)vr$96, 1 );
		FBSTRING* vr$97 = fb_StrAllocTempDescZEx( (char*)"  -z no-thiscall   Don't use '__thiscall' calling convention", 60ll );
		fb_PrintString( 0, (FBSTRING*)vr$97, 1 );
		FBSTRING* vr$98 = fb_StrAllocTempDescZEx( (char*)"  -z no-fastcall   Don't use '__fastcall' calling convention", 60ll );
		fb_PrintString( 0, (FBSTRING*)vr$98, 1 );
		FBSTRING* vr$99 = fb_StrAllocTempDescZEx( (char*)"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library", 67ll );
		fb_PrintString( 0, (FBSTRING*)vr$99, 1 );
		FBSTRING* vr$100 = fb_StrAllocTempDescZEx( (char*)"  -z nocmdline     Disable #cmdline source directives", 53ll );
		fb_PrintString( 0, (FBSTRING*)vr$100, 1 );
		FBSTRING* vr$101 = fb_StrAllocTempDescZEx( (char*)"  -z retinflts     Enable returning some types in floating point registers", 74ll );
		fb_PrintString( 0, (FBSTRING*)vr$101, 1 );
	}
	label$1400:;
	label$1399:;
	label$1382:;
}

static void HPRINTVERSION( int64 VERBOSE$1 )
{
	FBSTRING TMP$791$1;
	FBSTRING TMP$792$1;
	FBSTRING TMP$793$1;
	FBSTRING TMP$794$1;
	label$1405:;
	FBSTRING CONFIG$1;
	__builtin_memset( &CONFIG$1, 0, 24ll );
	int64 vr$1 = FBGETHOSTBITS(  );
	FBSTRING* vr$2 = fb_LongintToStr( vr$1 );
	FBSTRING* vr$3 = FBGETHOSTID(  );
	__builtin_memset( &TMP$791$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$791$1, (void*)"FreeBASIC Compiler - Version 1.10.1 (2026-09-30), built for ", 61ll, (void*)vr$3, -1ll );
	__builtin_memset( &TMP$792$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$792$1, (void*)vr$6, -1ll, (void*)" (", 3ll );
	__builtin_memset( &TMP$793$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$793$1, (void*)vr$9, -1ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$794$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$794$1, (void*)vr$12, -1ll, (void*)"bit)", 5ll );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (char*)"Copyright (C) 2004-2023 The FreeBASIC development team.", 55ll );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	int64 vr$18 = fb_StrLen( (void*)&CONFIG$1, -1ll );
	if( vr$18 <= 0ll ) goto label$1408;
	{
		fb_PrintString( 0, (FBSTRING*)&CONFIG$1, 1 );
	}
	label$1408:;
	label$1407:;
	if( VERBOSE$1 == 0ll ) goto label$1410;
	{
		FBCPRINTTARGETINFO(  );
		goto label$1412;
		{
			FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (char*)"source sha-1: ", 14ll );
			fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		}
		label$1412:;
		label$1411:;
	}
	label$1410:;
	label$1409:;
	fb_StrDelete( (FBSTRING*)&CONFIG$1 );
	label$1406:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1468:;
	_ZN6FBCCTXC1Ev( &FBC$ );
	label$1469:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1471:;
	_ZN6FBCCTXD1Ev( &FBC$ );
	label$1472:;
}
