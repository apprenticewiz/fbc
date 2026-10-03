typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int32 len; int32 size; } FBSTRING;
typedef int8 boolean;
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 12 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 8 );
typedef int32 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 32 );
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	char* NAME;
	char* ALIAS;
	char* MANGLED;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 12 );
typedef int32 $11FB_DATATYPE;
struct $8FBSYMBOL;
typedef int32 $13AST_NODECLASS;
union $7FBVALUE {
	struct $8FBSYMBOL* S;
	int64 I;
	double F;
};
__FB_STATIC_ASSERT( sizeof( union $7FBVALUE ) == 8 );
struct $12AST_NODE_VAR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_VAR ) == 8 );
struct $12AST_NODE_IDX {
	int64 OFS;
	int32 MULT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IDX ) == 16 );
struct $12AST_NODE_PTR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_PTR ) == 8 );
struct $7ASTNODE;
struct $19AST_TMPSTRLIST_ITEM;
struct $19AST_TMPSTRLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $7ASTNODE* SRCTREE;
	struct $19AST_TMPSTRLIST_ITEM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $19AST_TMPSTRLIST_ITEM ) == 12 );
struct $13AST_NODE_CALL {
	int32 ISRTL;
	int32 ARGS;
	struct $8FBSYMBOL* CURRARG;
	struct $7ASTNODE* ARGTAIL;
	struct $19AST_TMPSTRLIST_ITEM* STRTAIL;
	struct $8FBSYMBOL* TMPRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CALL ) == 24 );
struct $12AST_NODE_ARG {
	int32 MODE;
	int64 LGT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ARG ) == 16 );
struct $12AST_NODE_IIF {
	struct $8FBSYMBOL* FALSELABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IIF ) == 4 );
typedef int32 $9AST_OPOPT;
struct $11AST_NODE_OP {
	int32 OP;
	$9AST_OPOPT OPTIONS;
	struct $8FBSYMBOL* EX;
};
__FB_STATIC_ASSERT( sizeof( struct $11AST_NODE_OP ) == 12 );
struct $13AST_NODE_LOAD {
	int32 ISRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LOAD ) == 4 );
struct $14AST_NODE_LABEL {
	int32 FLUSH;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_LABEL ) == 4 );
struct $13AST_NODE_OFFS {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_OFFS ) == 8 );
struct $12AST_NODE_LIT {
	char* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_LIT ) == 4 );
typedef int32 $14AST_ASMTOKTYPE;
struct $9ASTASMTOK;
struct $9ASTASMTOK {
	$14AST_ASMTOKTYPE TYPE;
	union {
		struct $8FBSYMBOL* SYM;
		char* TEXT;
	};
	struct $9ASTASMTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9ASTASMTOK ) == 12 );
struct $12AST_NODE_ASM {
	struct $9ASTASMTOK* TOKHEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ASM ) == 4 );
struct $14AST_NODE_JMPTB {
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_JMPTB ) == 32 );
struct $12AST_NODE_DBG {
	int32 EX;
	char* FILENAME;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_DBG ) == 12 );
struct $12AST_NODE_MEM {
	int64 BYTES;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_MEM ) == 16 );
struct $14AST_NODE_STACK {
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_STACK ) == 4 );
struct $16AST_NODE_TYPEINI {
	int64 OFS;
	union {
		int64 BYTES;
		int64 ELEMENTS;
	};
	struct $8FBSYMBOL* SCP;
	struct $8FBSYMBOL* LASTSCP;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_NODE_TYPEINI ) == 24 );
struct $21AST_NODE_TYPEINISCOPE {
	int32 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $21AST_NODE_TYPEINISCOPE ) == 4 );
struct $13AST_BREAKLIST {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_BREAKLIST ) == 8 );
struct $13AST_NODE_PROC {
	int32 ISMAIN;
	struct $7ASTNODE* DECL_LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_PROC ) == 8 );
struct $14AST_NODE_BLOCK {
	struct $7ASTNODE* PARENT;
	int32 INISTMT;
	int32 ENDSTMT;
	struct $8FBSYMBOL* INITLABEL;
	struct $8FBSYMBOL* EXITLABEL;
	struct $13AST_BREAKLIST BREAKLIST;
	struct $13AST_NODE_PROC PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BLOCK ) == 36 );
struct $14AST_NODE_BREAK {
	struct $7ASTNODE* PARENT;
	int32 SCOPE;
	int32 LINENUM;
	int32 STMTNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BREAK ) == 16 );
struct $17AST_NODE_DATASTMT {
	union {
		int32 ID;
		int32 ELMTS;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_NODE_DATASTMT ) == 4 );
struct $13AST_NODE_LINK {
	int32 RET;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LINK ) == 4 );
struct $13AST_NODE_CAST {
	int32 DOCONV;
	int32 DO_CONVFD2FS;
	int32 CONVCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CAST ) == 12 );
struct $7ASTNODE {
	$13AST_NODECLASS CLASS;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8FBSYMBOL* SYM;
	int32 VECTOR;
	union {
		union $7FBVALUE VAL;
		struct $12AST_NODE_VAR VAR_;
		struct $12AST_NODE_IDX IDX;
		struct $12AST_NODE_PTR PTR;
		struct $13AST_NODE_CALL CALL;
		struct $12AST_NODE_ARG ARG;
		struct $12AST_NODE_IIF IIF;
		struct $11AST_NODE_OP OP;
		struct $13AST_NODE_LOAD LOD;
		struct $14AST_NODE_LABEL LBL;
		struct $13AST_NODE_OFFS OFS;
		struct $12AST_NODE_LIT LIT;
		struct $12AST_NODE_ASM ASM;
		struct $14AST_NODE_JMPTB JMPTB;
		struct $12AST_NODE_DBG DBG;
		struct $12AST_NODE_MEM MEM;
		struct $14AST_NODE_STACK STACK;
		struct $16AST_NODE_TYPEINI TYPEINI;
		struct $21AST_NODE_TYPEINISCOPE TYPEINISCOPE;
		struct $14AST_NODE_BLOCK BLOCK;
		struct $14AST_NODE_BREAK BREAK;
		struct $17AST_NODE_DATASTMT DATA;
		struct $13AST_NODE_LINK LINK;
		struct $13AST_NODE_CAST CAST;
	};
	struct $7ASTNODE* L;
	struct $7ASTNODE* R;
	struct $7ASTNODE* PREV;
	struct $7ASTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7ASTNODE ) == 80 );
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $9FBS_ARRAY {
	int32 DIMENSIONS;
	struct $10FBARRAYDIM* DIMTB;
	int64 DIFF;
	int64 ELEMENTS;
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* DESCTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_ARRAY ) == 32 );
struct $10FBVAR_DESC {
	struct $8FBSYMBOL* ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DESC ) == 4 );
struct $10FBVAR_DATA {
	struct $8FBSYMBOL* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DATA ) == 4 );
struct $7FBS_VAR {
	union {
		char* LITTEXT;
		uint32* LITTEXTW;
		struct $7ASTNODE* INITREE;
	};
	struct $9FBS_ARRAY ARRAY;
	struct $10FBVAR_DESC DESC;
	int32 STMTNUM;
	int32 ALIGN;
	struct $10FBVAR_DATA DATA;
	int32 BITPOS;
	int32 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBS_VAR ) == 64 );
struct $10FBSYMBOLTB {
	struct $8FBSYMBOL* OWNER;
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 12 );
struct $8HASHITEM;
struct $8HASHITEM {
	char* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 8 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int32 NODES;
	int32 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 12 );
struct $8FBHASHTB;
struct $8FBHASHTB {
	struct $8FBSYMBOL* OWNER;
	struct $5THASH TB;
	struct $8FBHASHTB* PREV;
	struct $8FBHASHTB* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBHASHTB ) == 24 );
struct $9FBSYMLIST {
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMLIST ) == 8 );
struct $10FBSYMCHAIN;
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int32 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 24 );
struct $13FBNAMESPC_EXT {
	struct $9FBSYMLIST IMPLIST;
	struct $9FBSYMLIST EXPLIST;
	int32 CNT;
	struct $10FBSYMCHAIN* IMPSYM_HEAD;
	struct $10FBSYMCHAIN* IMPSYM_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBNAMESPC_EXT ) == 28 );
struct $9FBNAMESPC {
	struct $10FBSYMBOLTB SYMTB;
	struct $8FBHASHTB HASHTB;
	struct $13FBNAMESPC_EXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBNAMESPC ) == 40 );
typedef int32 $15FB_STRUCT_INREG;
struct $13FB_STRUCT_DBG {
	int32 TYPENUM;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_STRUCT_DBG ) == 4 );
struct $12FB_STRUCTEXT {
	struct $8FBSYMBOL* CTORHEAD;
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* DTOR1;
	struct $8FBSYMBOL* DTOR0;
	struct $8FBSYMBOL* COPYLETOP;
	struct $8FBSYMBOL* COPYLETOPCONST;
	struct $8FBSYMBOL* OPOVLTB[28];
	int32 VTABLEELEMENTS;
	struct $8FBSYMBOL* VTABLE;
	struct $8FBSYMBOL* RTTI;
	int32 ABSTRACTCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_STRUCTEXT ) == 160 );
struct $10FBS_STRUCT {
	struct $9FBNAMESPC NS;
	struct $8FBSYMBOL* BASE;
	struct $8FBSYMBOL* ANONPARENT;
	int32 NATALIGN;
	int64 UNPADLGT;
	int32 OPTIONS;
	uint8 BITPOS;
	uint8 ALIGN;
	$11FB_DATATYPE RETDTYPE;
	$15FB_STRUCT_INREG RETIN2REGS;
	struct $13FB_STRUCT_DBG DBG;
	struct $12FB_STRUCTEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_STRUCT ) == 88 );
struct $8FBS_ENUM {
	struct $9FBNAMESPC NS;
	int32 ELEMENTS;
	struct $13FB_STRUCT_DBG DBG;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_ENUM ) == 48 );
typedef int32 $11FB_FUNCMODE;
typedef int32 $21FB_PROC_RETURN_METHOD;
typedef int32 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCRTL ) == 4 );
struct $10FB_PROCOVL {
	int16 MINPARAMS;
	int16 MAXPARAMS;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCOVL ) == 8 );
struct $10FB_PROCSTK {
	int32 ARGOFS;
	int32 LOCALOFS;
	int32 LOCALMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCSTK ) == 12 );
struct $10FB_PROCDBG {
	int32 INILINE;
	int32 ENDLINE;
	char* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCDBG ) == 12 );
struct $10FB_PROCERR {
	struct $8FBSYMBOL* LASTHND;
	struct $8FBSYMBOL* LASTMOD;
	struct $8FBSYMBOL* LASTFUN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCERR ) == 12 );
typedef int32 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
typedef int32 $12FB_PROCSTATS;
struct $10FB_PROCGSB {
	struct $8FBSYMBOL* CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCGSB ) == 4 );
struct $10FB_PROCEXT {
	struct $8FBSYMBOL* RES;
	struct $10FB_PROCSTK STK;
	struct $10FB_PROCDBG DBG;
	struct $10FB_PROCERR ERR;
	struct $12FB_PROCOPOVL OPOVL;
	struct $5TLIST* STATDTOR;
	$12FB_PROCSTATS STATS;
	int32 STMTNUM;
	int32 PRIORITY;
	struct $10FB_PROCGSB GOSUB;
	struct $7ASTNODE* BASE_INITREE;
	int32 VTABLEINDEX;
	struct $8FBSYMBOL* OVERRIDDEN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCEXT ) == 76 );
struct $8FBS_PROC {
	struct $10FBSYMBOLTB SYMTB;
	int16 PARAMS;
	int16 OPTPARAMS;
	struct $10FBSYMBOLTB PARAMTB;
	$11FB_FUNCMODE MODE;
	$11FB_DATATYPE REALDTYPE;
	struct $8FBSYMBOL* REALSUBTYPE;
	$21FB_PROC_RETURN_METHOD RETURNMETHOD;
	struct $10FB_PROCRTL RTL;
	struct $10FB_PROCOVL OVL;
	struct $10FB_PROCEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_PROC ) == 60 );
typedef int32 $12FB_PARAMMODE;
struct $9FBS_PARAM {
	$12FB_PARAMMODE MODE;
	struct $8FBSYMBOL* VAR;
	struct $7ASTNODE* OPTEXPR;
	int32 BYDESCDIMENSIONS;
	struct $8FBSYMBOL* BYDESCREALSUBTYPE;
	int32 REGNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_PARAM ) == 24 );
struct $9FBS_LABEL {
	struct $8FBSYMBOL* PARENT;
	int32 DECLARED;
	int32 STMTNUM;
	boolean GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_LABEL ) == 16 );
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	char* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
typedef int32 $14FB_DEFTOK_TYPE;
struct $9FB_DEFTOK;
struct $9FB_DEFTOK {
	$14FB_DEFTOK_TYPE TYPE;
	union {
		char* TEXT;
		uint32* TEXTW;
		int32 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 16 );
typedef int32 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	char* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 12 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int32 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 388 );
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int32* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int32* );
struct $10FBS_DEFINE {
	int32 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		char* TEXT;
		uint32* TEXTW;
	};
	int32 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_DEFINE ) == 28 );
typedef int32 $10FB_TKCLASS;
struct $11FBS_KEYWORD {
	int32 ID;
	$10FB_TKCLASS TKCLASS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBS_KEYWORD ) == 8 );
struct $8FBFWDREF;
struct $8FBFWDREF {
	struct $8FBSYMBOL* REF;
	struct $8FBFWDREF* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBFWDREF ) == 8 );
struct $10FBS_FWDREF {
	struct $8FBFWDREF* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_FWDREF ) == 4 );
struct $11FB_SCOPEDBG {
	int32 INILINE;
	int32 ENDLINE;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* ENDLABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SCOPEDBG ) == 16 );
struct $12FB_SCOPEEMIT {
	int32 BASEOFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_SCOPEEMIT ) == 4 );
struct $9FBS_SCOPE {
	struct $7ASTNODE* BACKNODE;
	struct $10FBSYMBOLTB SYMTB;
	struct $11FB_SCOPEDBG DBG;
	struct $12FB_SCOPEEMIT EMIT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_SCOPE ) == 36 );
struct $13FBS_NAMESPACE {
	struct $9FBNAMESPC NS;
	int32 CNT;
	struct $8FBSYMBOL* LAST_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBS_NAMESPACE ) == 48 );
struct $12FBS_NSIMPORT {
	struct $8FBSYMBOL* IMP_NS;
	struct $8FBSYMBOL* IMP_PREV;
	struct $8FBSYMBOL* IMP_NEXT;
	struct $8FBSYMBOL* EXP_NS;
	struct $8FBSYMBOL* EXP_PREV;
	struct $8FBSYMBOL* EXP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBS_NSIMPORT ) == 24 );
struct $9FBSYMHASH {
	struct $8FBHASHTB* TB;
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMHASH ) == 20 );
struct $8FBSYMBOL {
	$12FB_SYMBCLASS CLASS;
	$13FB_SYMBATTRIB ATTRIB;
	$13FB_PROCATTRIB PATTRIB;
	$12FB_SYMBSTATS STATS;
	struct $9FB_SYMBID ID;
	$11FB_DATATYPE TYP;
	struct $8FBSYMBOL* SUBTYPE;
	uint16 SCOPE;
	int16 MANGLING;
	int64 LGT;
	int64 OFS;
	union {
		struct $7FBS_VAR VAR_;
		union $7FBVALUE VAL;
		struct $10FBS_STRUCT UDT;
		struct $8FBS_ENUM ENUM_;
		struct $8FBS_PROC PROC;
		struct $9FBS_PARAM PARAM;
		struct $9FBS_LABEL LBL;
		struct $10FBS_DEFINE DEF;
		struct $11FBS_KEYWORD KEY;
		struct $10FBS_FWDREF FWD;
		struct $9FBS_SCOPE SCP;
		struct $13FBS_NAMESPACE NSPC;
		struct $12FBS_NSIMPORT NSIMP;
	};
	struct $9FBSYMHASH HASH;
	struct $10FBSYMBOLTB* SYMTB;
	struct $8FBSYMBOL* PARENT;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBSYMBOL ) == 184 );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int32 ID;
	int32 CLASS;
	int32 DTYPE;
	union {
		char TEXT[1025];
		uint32 TEXTW[1025];
	};
	int32 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int32 PRDPOS;
		int32 HASESC;
	};
	int32 SUFFIXCHAR;
	int32 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4136 );
typedef int32 $17LEX_TKCTX_CONTEXT;
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int32 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint32 CURRCHAR;
	uint32 LAHDCHAR1;
	uint32 LAHDCHAR2;
	int32 LINENUM;
	int32 LASTTK_ID;
	int32 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	$17LEX_TKCTX_CONTEXT KIND;
	int32 DEFLEN;
	union {
		struct {
			char* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint32* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int32 BUFFLEN;
	union {
		struct {
			char* BUFFPTR;
			char BUFF[8193];
		};
		struct {
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int32 FILEPOS;
	int32 LASTFILEPOS;
	int32 PHYSFILEPOS;
	struct $8DZSTRING CURRLINE;
	int32 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49420 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
uint32* fb_WstrConcat( uint32*, uint32* );
int32 fb_StrCompare( void*, int32, void*, int32 );
int32 fb_WstrCompare( uint32*, uint32* );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempDescZ( char* );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( char* );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_TRIM( FBSTRING* );
uint32* fb_WstrTrim( uint32* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__ppzdefine( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* HASHLOOKUP( struct $5THASH*, char* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, char*, int32, $12FB_ERRMSGOPT, char* );
void ERRREPORT( int32, int32, char* );
void ERRREPORTWARN( int32, char*, $12FB_ERRMSGOPT, char* );
struct $8FBSYMBOL* SYMBADDDEFINE( char*, char*, int32, int32, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEW( char*, uint32*, int32, int32, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( char*, struct $9FB_DEFTOK*, int32, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, char* );
struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK*, $14FB_DEFTOK_TYPE );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
char* SYMBUNIQUELABEL( void );
int32 HISVALIDSYMBOLNAME( char* );
void ZSTRASSIGN( char**, char* );
void ZSTRCONCATASSIGN( char**, char* );
void WSTRASSIGN( uint32**, uint32* );
FBSTRING* HREPLACE( char*, char*, char* );
uint32* HREPLACEW( uint32*, uint32*, uint32* );
void DZSTRZERO( struct $8DZSTRING* );
void DZSTRASSIGN( struct $8DZSTRING*, char* );
void DZSTRASSIGNW( struct $8DZSTRING*, uint32* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, char* );
void DZSTRCONCATASSIGNW( struct $8DZSTRING*, uint32* );
void DWSTRZERO( struct $8DWSTRING* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRASSIGNA( struct $8DWSTRING*, char* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, char* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
char* LEXGETTEXT( void );
void LEXEATTOKEN( char*, $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint32 LEXCURRENTCHAR( void );
void LEXEATCHAR( void );
int32 LEXEATWHITESPACE( void );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
char* PPREADLITERAL( int32 );
uint32* PPREADLITERALW( int32 );
static void HREPORTMACROERROR( struct $8FBSYMBOL*, int32 );
static int32 ISMACROALLOWED( struct $8FBSYMBOL* );
static int32 HLOADMACRO( struct $8FBSYMBOL* );
static int32 HLOADDEFINE( struct $8FBSYMBOL* );
static int32 HLOADMACROW( struct $8FBSYMBOL* );
static int32 HLOADDEFINEW( struct $8FBSYMBOL* );
static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK*, struct $9FB_DEFTOK* );
static struct $9FB_DEFTOK* HREADMACROTEXT( int32, struct $11FB_DEFPARAM*, int32 );
static void HREADDEFINETEXT( struct $8FBSYMBOL*, char*, int32, int32, int32 );
static int32 HMATCHPARAMELLIPSIS( void );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	char* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 36 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 8 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 12 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $10TSTACKNODE* TOS;
	int32 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 24 );
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 12 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 8 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int32 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 348 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 4 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 8 );
struct $7SYMBCTX {
	int32 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int32 CHAINPOOLHEAD;
	struct $8FBSYMBOL GLOBNSPC;
	struct $8FBSYMBOL* NAMESPC;
	struct $8FBHASHTB* HASHTB;
	struct $10FBSYMBOLTB* SYMTB;
	struct $6TSTACK NESTSTK;
	struct $5THASH IMPHASHTB;
	struct $5TLIST IMPHASHLIST;
	struct $5TPOOL NAMEPOOL;
	struct $5TLIST FWDLIST;
	struct $5TLIST NSEXTLIST;
	int32 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int32 FBARRAY_DATA;
	int32 FBARRAY_PTR;
	int32 FBARRAY_SIZE;
	int32 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int32 FBARRAYDIM_LBOUND;
	int32 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 99648 );
extern struct $7SYMBCTX SYMB$;
typedef int32 $12FB_DATACLASS;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int32 SIZE;
	int32 SIGNED;
	int32 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int32 SIZETYPE;
	char* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 28 );
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 36 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
struct $8FBARRAY2IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 48 );
static struct $8FBARRAY2IlE tmp$81$;
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_BACKEND;
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
typedef int32 $7FB_LANG;
typedef int32 $10FB_PDCHECK;
typedef int32 $11FB_MODEVIEW;
struct $12FBCMMLINEOPT {
	$10FB_OUTTYPE OUTTYPE;
	int32 PPONLY;
	$10FB_BACKEND BACKEND;
	$13FB_COMPTARGET TARGET;
	$10FB_CPUTYPE CPUTYPE;
	$10FB_FPUTYPE FPUTYPE;
	$9FB_FPMODE FPMODE;
	$17FB_VECTORIZELEVEL VECTORIZE;
	int32 OPTLEVEL;
	$12FB_ASMSYNTAX ASMSYNTAX;
	$7FB_LANG LANG;
	int32 FORCELANG;
	int32 DEBUG;
	int32 DEBUGINFO;
	int32 ASSERTIONS;
	int32 ERRORCHECK;
	int32 RESUMEERR;
	int32 EXTRAERRCHK;
	int32 ERRLOCATION;
	int32 ARRAYBOUNDCHK;
	int32 NULLPTRCHK;
	int32 UNWINDINFO;
	int32 PROFILE;
	int32 WARNINGLEVEL;
	int32 SHOWERROR;
	int32 MAXERRORS;
	$10FB_PDCHECK PDCHECKOPT;
	int32 GOSUBSETJMP;
	int32 VALISTASPTR;
	int32 NOTHISCALL;
	int32 NOFASTCALL;
	int32 FBRT;
	int32 EXPORT;
	int32 MSBITFIELDS;
	int32 MULTITHREADED;
	int32 FBGFX;
	int32 PIC;
	int32 STACKSIZE;
	int32 OBJINFO;
	int32 SHOWINCLUDES;
	$11FB_MODEVIEW MODEVIEW;
	int32 NOCMDLINE;
	int32 RETURNINFLTS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBCMMLINEOPT ) == 172 );
typedef int32 $12FB_TARGETOPT;
struct $8FBTARGET {
	char* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 20 );
typedef int32 $12FB_WCHARCONV;
typedef int32 $13FBFILE_FORMAT;
struct $6FBFILE {
	int32 NUM;
	char NAME[261];
	char* INCFILE;
	int32 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 280 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 8 );
typedef int32 $11FB_LANG_OPT;
struct $11FB_LANG_CTX {
	$11FB_LANG_OPT OPT;
	$11FB_DATATYPE INTEGERKEYWORDDTYPE;
	$11FB_DATATYPE INT15LITERALDTYPE;
	$11FB_DATATYPE INT16LITERALDTYPE;
	$11FB_DATATYPE INT31LITERALDTYPE;
	$11FB_DATATYPE INT32LITERALDTYPE;
	$11FB_DATATYPE INT63LITERALDTYPE;
	$11FB_DATATYPE INT64LITERALDTYPE;
	$11FB_DATATYPE FLOATLITERALDTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_LANG_CTX ) == 36 );
struct $8FBOPTION {
	int32 BASE;
	int32 PARAMMODE;
	int32 EXPLICIT;
	int32 PROCPUBLIC;
	int32 ESCAPESTR;
	int32 DYNAMIC;
	int32 GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBOPTION ) == 28 );
typedef int32 $16FB_RESTART_FLAGS;
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
struct $5FBENV {
	struct $5TLIST PREDEFINES;
	struct $5TLIST PREINCLUDES;
	struct $5TLIST INCLUDEPATHS;
	struct $12FBCMMLINEOPT CLOPT;
	struct $8FBTARGET TARGET;
	$12FB_WCHARCONV WCHARCONV;
	int32 UNDERSCOREPREFIX;
	int32 POINTERSIZE;
	struct $6FBFILE INF;
	struct $6FBFILE OUTF;
	int32 PPFILE_NUM;
	struct $5THASH FILENAMEHASH;
	struct $5THASH INCFILEHASH;
	struct $5THASH INCONCEHASH;
	int32 INCLUDEREC;
	char ENTRY[128];
	struct $6FBMAIN MAIN;
	struct $11FB_LANG_CTX LANG;
	struct $8FBOPTION OPT;
	int32 INITED;
	int32 MODULE_COUNT;
	$16FB_RESTART_FLAGS RESTART_REQUEST;
	$16FB_RESTART_FLAGS RESTART_ACTION;
	$16FB_RESTART_FLAGS RESTART_STATUS;
	int32 RESTART_COUNT;
	$7FB_LANG RESTART_LANG;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	int32 FBCTINF_STARTED;
};
__FB_STATIC_ASSERT( sizeof( struct $5FBENV ) == 1224 );
extern struct $5FBENV ENV$;
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840148 );
extern struct $7LEX_CTX LEX$;
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int32 LEVEL;
	int32 SKIPPING;
	int32 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 232 );
extern struct $6PP_CTX PP$;

void PPDEFINEINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PP$ + 184), 8, 388, 6 );
	label$11:;
}

void PPDEFINEEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PP$ + 184) );
	label$13:;
}

int32 PPDEFINELOAD( struct $8FBSYMBOL* S$1, struct $8FBSYMBOL* CURRMACRO$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$368:;
	if( S$1 != CURRMACRO$1 ) goto label$371;
	{
		ERRREPORT( 89, 0, (char*)0u );
		HSKIPUNTIL( -1, 0, 62, 0 );
		fb$result$1 = -1;
		goto label$369;
	}
	label$371:;
	label$370:;
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$373;
	{
		int32 vr$1 = HLOADDEFINE( S$1 );
		fb$result$1 = vr$1;
	}
	goto label$372;
	label$373:;
	{
		int32 vr$2 = HLOADDEFINEW( S$1 );
		fb$result$1 = vr$2;
	}
	label$372:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) <= 0 ) goto label$375;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16580) != (struct $8FBSYMBOL*)0u ) goto label$377;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16580) = S$1;
		}
		label$377:;
		label$376:;
	}
	label$375:;
	label$374:;
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16556) = 4294967295u;
	label$369:;
	return fb$result$1;
}

void PPDEFINE( int32 ISMULTILINE$1 )
{
	label$477:;
	static char DEFNAME$1[129];
	int32 PARAMS$1;
	int32 ISARGLESS$1;
	int32 FLAGS$1;
	struct $11FB_DEFPARAM* PARAMHEAD$1;
	struct $11FB_DEFPARAM* LASTPARAM$1;
	struct $8FBSYMBOL* SYM$1;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $9FB_DEFTOK* TOKHEAD$1;
	$15FB_DEFINE_FLAGS DEFINE_FLAGS$1;
	struct $10FBSYMCHAIN* vr$1 = CIDENTIFIER( &BASE_PARENT$1, 38 );
	CHAIN_$1 = vr$1;
	FLAGS$1 = 62;
	if( ISMULTILINE$1 == 0 ) goto label$480;
	{
		FLAGS$1 = FLAGS$1 & -5;
	}
	label$480:;
	label$479:;
	LEXEATTOKEN( (char*)DEFNAME$1, FLAGS$1 );
	int32 vr$3 = HISVALIDSYMBOLNAME( (char*)DEFNAME$1 );
	if( vr$3 != 0 ) goto label$482;
	{
		ERRREPORT( 14, 0, (char*)0u );
		goto label$478;
	}
	label$482:;
	label$481:;
	int32 vr$4 = LEXGETTOKEN( FLAGS$1 );
	if( vr$4 != 46 ) goto label$484;
	{
		ERRREPORT( 90, 0, (char*)0u );
	}
	label$484:;
	label$483:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$486;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		if( *(int32*)SYM$1 == 5 ) goto label$488;
		{
			if( (*(int32*)((uint8*)SYM$1 + 12) & 1048576) == 0 ) goto label$490;
			{
				ERRREPORTWARN( 39, (char*)0u, 1, (char*)0u );
				SYMBDELFROMHASH( SYM$1 );
				SYM$1 = (struct $8FBSYMBOL*)0u;
			}
			goto label$489;
			label$490:;
			{
				ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
				char* vr$9 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)DEFNAME$1, 129, (void*)vr$9, 0, 0 );
			}
			label$489:;
		}
		label$488:;
		label$487:;
	}
	goto label$485;
	label$486:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0u;
	}
	label$485:;
	PARAMS$1 = 0;
	PARAMHEAD$1 = (struct $11FB_DEFPARAM*)0u;
	ISARGLESS$1 = 0;
	DEFINE_FLAGS$1 = 8;
	if( ISMULTILINE$1 == 0 ) goto label$492;
	{
		int32 vr$10 = LEXGETTOKEN( FLAGS$1 );
		if( vr$10 != 63 ) goto label$494;
		{
			LEXSKIPTOKEN( 2 );
			DEFINE_FLAGS$1 = DEFINE_FLAGS$1 & -9;
		}
		label$494:;
		label$493:;
	}
	label$492:;
	label$491:;
	int32 vr$12 = LEXGETTOKEN( FLAGS$1 );
	if( vr$12 != 40 ) goto label$496;
	{
		LEXSKIPTOKEN( 34 );
		int32 vr$13 = LEXGETTOKEN( 34 );
		if( vr$13 == 41 ) goto label$498;
		{
			LASTPARAM$1 = (struct $11FB_DEFPARAM*)0u;
			label$499:;
			{
				{
					uint32 TMP$147$5;
					int32 vr$14 = LEXGETCLASS( 0 );
					TMP$147$5 = (uint32)vr$14;
					goto label$503;
					label$504:;
					{
						char* vr$15 = LEXGETTEXT(  );
						struct $11FB_DEFPARAM* vr$16 = SYMBADDDEFINEPARAM( LASTPARAM$1, (char*)vr$15 );
						LASTPARAM$1 = vr$16;
					}
					goto label$502;
					label$505:;
					{
						ERRREPORT( 14, 0, (char*)0u );
						char* vr$17 = SYMBUNIQUELABEL(  );
						struct $11FB_DEFPARAM* vr$18 = SYMBADDDEFINEPARAM( LASTPARAM$1, (char*)vr$17 );
						LASTPARAM$1 = vr$18;
					}
					goto label$502;
					label$503:;
					static const void* tmp$148[3] = {
						&&label$504,
						&&label$504,
						&&label$504,
					};
					if( TMP$147$5 > 2u ) goto label$505;
					goto *tmp$148[TMP$147$5 - 0u];
					label$502:;
				}
				if( LASTPARAM$1 != (struct $11FB_DEFPARAM*)0u ) goto label$507;
				{
					ERRREPORT( 4, 0, (char*)0u );
				}
				label$507:;
				label$506:;
				LEXSKIPTOKEN( 34 );
				PARAMS$1 = PARAMS$1 + 1;
				if( PARAMS$1 < 32 ) goto label$509;
				{
					ERRREPORT( 79, 0, (char*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
					goto label$478;
				}
				label$509:;
				label$508:;
				if( PARAMHEAD$1 != (struct $11FB_DEFPARAM*)0u ) goto label$511;
				{
					PARAMHEAD$1 = LASTPARAM$1;
				}
				label$511:;
				label$510:;
				int32 vr$20 = LEXGETTOKEN( 34 );
				if( vr$20 == 44 ) goto label$513;
				{
					goto label$500;
				}
				label$513:;
				label$512:;
				LEXSKIPTOKEN( 34 );
			}
			label$501:;
			goto label$499;
			label$500:;
			int32 vr$21 = HMATCHPARAMELLIPSIS(  );
			if( vr$21 == 0 ) goto label$515;
			{
				DEFINE_FLAGS$1 = DEFINE_FLAGS$1 | 4;
			}
			label$515:;
			label$514:;
		}
		goto label$497;
		label$498:;
		{
			ISARGLESS$1 = -1;
		}
		label$497:;
		int32 vr$23 = LEXGETTOKEN( 62 );
		if( vr$23 == 41 ) goto label$517;
		{
			ERRREPORT( 7, 0, (char*)0u );
			HSKIPUNTIL( 41, -1, 62, 0 );
		}
		goto label$516;
		label$517:;
		{
			LEXSKIPTOKEN( 58 );
		}
		label$516:;
	}
	goto label$495;
	label$496:;
	{
		if( ISMULTILINE$1 != 0 ) goto label$519;
		{
			int32 vr$24 = LEXGETTOKEN( 62 );
			if( vr$24 != 32 ) goto label$521;
			{
				LEXSKIPTOKEN( 58 );
			}
			label$521:;
			label$520:;
		}
		label$519:;
		label$518:;
	}
	label$495:;
	if( PARAMS$1 != 0 ) goto label$523;
	{
		HREADDEFINETEXT( SYM$1, (char*)DEFNAME$1, ISARGLESS$1, ISMULTILINE$1, DEFINE_FLAGS$1 );
		goto label$478;
	}
	label$523:;
	label$522:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$525;
	{
		ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
	}
	goto label$524;
	label$525:;
	{
		struct $9FB_DEFTOK* vr$25 = HREADMACROTEXT( PARAMS$1, PARAMHEAD$1, ISMULTILINE$1 );
		TOKHEAD$1 = vr$25;
		SYMBADDDEFINEMACRO( (char*)DEFNAME$1, TOKHEAD$1, PARAMS$1, PARAMHEAD$1, DEFINE_FLAGS$1 );
	}
	label$524:;
	label$478:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HREPORTMACROERROR( struct $8FBSYMBOL* S$1, int32 ERRNUM$1 )
{
	FBSTRING TMP$93$1;
	FBSTRING TMP$94$1;
	label$14:;
	__builtin_memset( &TMP$94$1, 0, 12 );
	__builtin_memset( &TMP$93$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$93$1, (void*)"expanding: ", 12, *(void**)((uint8*)S$1 + 16), 0 );
	fb_StrAssign( (void*)&TMP$94$1, -1, (void*)vr$4, -1, 0 );
	ERRREPORTEX( ERRNUM$1, (char*)*(char**)&TMP$94$1, 0, 1, (char*)0u );
	fb_StrDelete( (FBSTRING*)&TMP$94$1 );
	label$15:;
}

static int32 ISMACROALLOWED( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	if( *(int32*)((uint8*)&PP$ + 220) != 0 ) goto label$19;
	{
		if( (*(int32*)((uint8*)S$1 + 72) & 2) == 0 ) goto label$21;
		{
			if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$23;
			{
				ERRREPORT( 286, 0, (char*)0u );
				fb$result$1 = 0;
				goto label$17;
			}
			label$23:;
			label$22:;
		}
		label$21:;
		label$20:;
	}
	label$19:;
	label$18:;
	fb$result$1 = -1;
	goto label$17;
	label$17:;
	return fb$result$1;
}

static int32 HLOADMACRO( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int32 PRNTCNT$1;
	int32 NUM$1;
	int32 REACHED_VARARG$1;
	int32 IS_VARIADIC$1;
	char* ARGTEXT$1;
	static FBSTRING TEXT$1;
	fb$result$1 = -1;
	int32 HASPARENS$1;
	HASPARENS$1 = 0;
	int32 HASWHITESPACE$1;
	int32 vr$1 = LEXEATWHITESPACE(  );
	HASWHITESPACE$1 = vr$1;
	uint32 vr$2 = LEXCURRENTCHAR(  );
	if( vr$2 != 40u ) goto label$27;
	{
		HASPARENS$1 = -1;
	}
	label$27:;
	label$26:;
	if( (*(int32*)((uint8*)S$1 + 72) & 8) == 0 ) goto label$29;
	{
		if( HASPARENS$1 != 0 ) goto label$31;
		{
			goto label$25;
		}
		label$31:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		HASPARENS$1 = HASPARENS$1 & ~HASWHITESPACE$1;
	}
	label$28:;
	int32 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0 ) goto label$33;
	{
		goto label$25;
	}
	label$33:;
	label$32:;
	*(int32*)((uint8*)&PP$ + 224) = *(int32*)((uint8*)&PP$ + 224) + 1;
	if( HASPARENS$1 == 0 ) goto label$35;
	{
		LEXEATCHAR(  );
	}
	label$35:;
	label$34:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 60);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$37;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 184) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$36;
	label$37:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0u;
	}
	label$36:;
	PRNTCNT$1 = 1;
	REACHED_VARARG$1 = 0;
	IS_VARIADIC$1 = -((*(int32*)((uint8*)S$1 + 72) & 4) != 0);
	int32 READDCHAR$1;
	READDCHAR$1 = -1;
	NUM$1 = 0;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$39;
	{
		*(int32*)((uint8*)ARGTB$1 + 384) = 0;
	}
	label$39:;
	label$38:;
	label$40:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$44;
		{
			DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)) );
		}
		label$44:;
		label$43:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0u ) goto label$46;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$46:;
		label$45:;
		label$47:;
		{
			LEXNEXTTOKEN( &T$1, 92 );
			{
				uint32 TMP$95$4;
				TMP$95$4 = *(uint32*)&T$1;
				goto label$51;
				label$52:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1;
				}
				goto label$50;
				label$53:;
				{
					if( PRNTCNT$1 <= 0 ) goto label$55;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1;
						if( PRNTCNT$1 != 0 ) goto label$57;
						{
							if( (*(int32*)((uint8*)S$1 + 72) & 8) != 0 ) goto label$59;
							{
								if( HASPARENS$1 != 0 ) goto label$61;
								{
									if( *(int32*)((uint8*)ARGTB$1 + 384) < *(int32*)((uint8*)S$1 + 56) ) goto label$63;
									{
										if( *(int32*)((uint8*)&PP$ + 224) <= 1 ) goto label$65;
										{
											READDCHAR$1 = 41;
										}
										label$65:;
										label$64:;
									}
									label$63:;
									label$62:;
								}
								label$61:;
								label$60:;
							}
							label$59:;
							label$58:;
							goto label$48;
						}
						label$57:;
						label$56:;
					}
					label$55:;
					label$54:;
				}
				goto label$50;
				label$66:;
				{
					if( PRNTCNT$1 != 1 ) goto label$68;
					{
						if( (*(int32*)((uint8*)S$1 + 72) & 8) != 0 ) goto label$70;
						{
							if( IS_VARIADIC$1 != 0 ) goto label$72;
							{
								if( HASPARENS$1 != 0 ) goto label$74;
								{
									if( *(int32*)((uint8*)ARGTB$1 + 384) < *(int32*)((uint8*)S$1 + 56) ) goto label$76;
									{
										if( *(int32*)((uint8*)&PP$ + 224) <= 1 ) goto label$78;
										{
											READDCHAR$1 = 44;
										}
										label$78:;
										label$77:;
										PRNTCNT$1 = 0;
										goto label$48;
									}
									label$76:;
									label$75:;
								}
								label$74:;
								label$73:;
							}
							label$72:;
							label$71:;
						}
						label$70:;
						label$69:;
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$80;
						{
							if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$82;
							{
								*(int32*)((uint8*)ARGTB$1 + 384) = 1;
							}
							label$82:;
							label$81:;
							*(int32*)((uint8*)ARGTB$1 + 384) = *(int32*)((uint8*)ARGTB$1 + 384) + 1;
						}
						label$80:;
						label$79:;
						if( REACHED_VARARG$1 != 0 ) goto label$84;
						{
							goto label$48;
						}
						label$84:;
						label$83:;
					}
					label$68:;
					label$67:;
				}
				goto label$50;
				label$85:;
				{
					if( ~HASPARENS$1 == 0 ) goto label$87;
					{
						READDCHAR$1 = 58;
						if( PRNTCNT$1 <= 0 ) goto label$89;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$89:;
						label$88:;
						goto label$48;
					}
					label$87:;
					label$86:;
				}
				goto label$50;
				label$90:;
				{
					if( HASPARENS$1 == 0 ) goto label$92;
					{
						HREPORTMACROERROR( S$1, 7 );
						PRNTCNT$1 = 0;
					}
					goto label$91;
					label$92:;
					{
						int32 TMP$96$6;
						if( PRNTCNT$1 <= 0 ) goto label$94;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$94:;
						label$93:;
						if( *(int32*)&T$1 != 256 ) goto label$95;
						TMP$96$6 = 0;
						goto label$526;
						label$95:;
						TMP$96$6 = 10;
						label$526:;
						READDCHAR$1 = TMP$96$6;
					}
					label$91:;
					goto label$48;
				}
				goto label$50;
				label$96:;
				{
					if( HASPARENS$1 == 0 ) goto label$98;
					{
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$100;
						{
							if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$102;
							{
								*(int32*)((uint8*)ARGTB$1 + 384) = 1;
							}
							label$102:;
							label$101:;
						}
						label$100:;
						label$99:;
					}
					goto label$97;
					label$98:;
					{
						int32 TMP$98$6;
						label$103:;
						{
							LEXSKIPTOKEN( 574 );
							{
								int32 TMP$97$8;
								int32 vr$41 = LEXGETTOKEN( 62 );
								TMP$97$8 = vr$41;
								if( TMP$97$8 == 257 ) goto label$108;
								label$109:;
								if( TMP$97$8 != 256 ) goto label$107;
								label$108:;
								{
									goto label$104;
								}
								label$107:;
								label$106:;
							}
						}
						label$105:;
						goto label$103;
						label$104:;
						LEXSKIPTOKEN( 574 );
						if( *(int32*)&T$1 != 256 ) goto label$110;
						TMP$98$6 = 0;
						goto label$527;
						label$110:;
						TMP$98$6 = 10;
						label$527:;
						READDCHAR$1 = TMP$98$6;
						if( PRNTCNT$1 <= 0 ) goto label$112;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$112:;
						label$111:;
						goto label$48;
					}
					label$97:;
				}
				goto label$50;
				label$113:;
				{
				}
				goto label$50;
				label$114:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$116;
					{
						if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$118;
						{
							*(int32*)((uint8*)ARGTB$1 + 384) = 1;
						}
						label$118:;
						label$117:;
					}
					label$116:;
					label$115:;
				}
				goto label$50;
				label$51:;
				static const void* tmp$149[251] = {
					&&label$113,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$113,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$52,
					&&label$53,
					&&label$114,
					&&label$114,
					&&label$66,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$114,
					&&label$90,
					&&label$90,
					&&label$85,
					&&label$96,
				};
				if( (TMP$95$4 - 9u) > 250u ) goto label$114;
				goto *tmp$149[TMP$95$4 - 9u];
				label$50:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$120;
			{
				if( *(int32*)((uint8*)&T$1 + 8) == 7 ) goto label$122;
				{
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (char*)((uint8*)&T$1 + 12) );
				}
				goto label$121;
				label$122:;
				{
					DZSTRCONCATASSIGNW( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (uint32*)((uint8*)&T$1 + 12) );
				}
				label$121:;
			}
			label$120:;
			label$119:;
		}
		label$49:;
		goto label$47;
		label$48:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$124;
		{
			{
				struct $9LEXPP_ARG* TMP$99$4;
				TMP$99$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 12));
				if( *(char**)TMP$99$4 == (char*)0u ) goto label$126;
				{
					int32 vr$63 = fb_StrLen( *(void**)TMP$99$4, 0 );
					if( (-((int32)*(uint8*)*(char**)TMP$99$4 == 32) | -((int32)*(uint8*)((uint8*)((uint8*)*(char**)TMP$99$4 + vr$63) + -1) == 32)) == 0 ) goto label$128;
					{
						FBSTRING TMP$100$6;
						__builtin_memset( &TMP$100$6, 0, 12 );
						FBSTRING* vr$70 = fb_StrAllocTempDescZ( (char*)*(char**)TMP$99$4 );
						FBSTRING* vr$71 = fb_TRIM( (FBSTRING*)vr$70 );
						fb_StrAssign( (void*)&TMP$100$6, -1, (void*)vr$71, -1, 0 );
						DZSTRASSIGN( (struct $8DZSTRING*)TMP$99$4, (char*)*(char**)&TMP$100$6 );
						fb_StrDelete( (FBSTRING*)&TMP$100$6 );
					}
					label$128:;
					label$127:;
				}
				label$126:;
				label$125:;
			}
		}
		label$124:;
		label$123:;
		if( PRNTCNT$1 != 0 ) goto label$130;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$132;
			{
				if( (-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 8) != (struct $11FB_DEFPARAM*)0u) | ~IS_VARIADIC$1) == 0 ) goto label$134;
				{
					HREPORTMACROERROR( S$1, 1 );
				}
				label$134:;
				label$133:;
				label$135:;
				{
					NUM$1 = NUM$1 + 1;
					DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)) );
				}
				label$137:;
				if( NUM$1 < (*(int32*)((uint8*)S$1 + 56) + -1) ) goto label$135;
				label$136:;
			}
			label$132:;
			label$131:;
			goto label$41;
		}
		label$130:;
		label$129:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0u ) goto label$139;
		{
			HREPORTMACROERROR( S$1, 1 );
			HSKIPUNTIL( 41, -1, 62, 0 );
			goto label$41;
		}
		label$139:;
		label$138:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1;
	}
	label$42:;
	goto label$40;
	label$41:;
	fb_StrAssign( (void*)&TEXT$1, -1, (void*)"", 1, 0 );
	if( *(tmp$28*)((uint8*)S$1 + 76) == (tmp$28)0u ) goto label$141;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0;
		FBSTRING RES$2;
		FBSTRING* vr$89 = (*(tmp$28*)((uint8*)S$1 + 76))( ARGTB$1, (int32*)&ERRNUM$2 );
		fb_StrInit( (void*)&RES$2, -1, (void*)vr$89, -1, 0 );
		if( ERRNUM$2 != 0 ) goto label$143;
		{
			fb_StrAssign( (void*)&TEXT$1, -1, (void*)&RES$2, -1, 0 );
		}
		goto label$142;
		label$143:;
		{
			HREPORTMACROERROR( S$1, ERRNUM$2 );
		}
		label$142:;
		fb_StrDelete( (FBSTRING*)&RES$2 );
	}
	goto label$140;
	label$141:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$145;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 64);
			label$146:;
			if( DT$1 == (struct $9FB_DEFTOK*)0u ) goto label$147;
			{
				{
					uint32 TMP$101$5;
					TMP$101$5 = *(uint32*)DT$1;
					goto label$149;
					label$150:;
					{
						ARGTEXT$1 = *(char**)((uint8*)ARGTB$1 + (*(int32*)((uint8*)DT$1 + 4) * 12));
						if( ARGTEXT$1 == (char*)0u ) goto label$152;
						{
							FBSTRING TMP$102$7;
							__builtin_memset( &TMP$102$7, 0, 12 );
							FBSTRING* vr$101 = fb_StrConcat( &TMP$102$7, (void*)&TEXT$1, -1, (void*)ARGTEXT$1, 0 );
							fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$101, -1, 0 );
						}
						label$152:;
						label$151:;
					}
					goto label$148;
					label$153:;
					{
						ARGTEXT$1 = *(char**)((uint8*)ARGTB$1 + (*(int32*)((uint8*)DT$1 + 4) * 12));
						if( ARGTEXT$1 == (char*)0u ) goto label$155;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)"$\x22", 3, 0 );
							FBSTRING* vr$105 = HREPLACE( ARGTEXT$1, (char*)"\x22", (char*)"\x22\x22" );
							fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)vr$105, -1, 0 );
							fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)"\x22", 2, 0 );
						}
						goto label$154;
						label$155:;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)"\x22\x22", 3, 0 );
						}
						label$154:;
					}
					goto label$148;
					label$156:;
					{
						FBSTRING TMP$107$6;
						__builtin_memset( &TMP$107$6, 0, 12 );
						FBSTRING* vr$109 = fb_StrConcat( &TMP$107$6, (void*)&TEXT$1, -1, *(void**)((uint8*)DT$1 + 4), 0 );
						fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$109, -1, 0 );
					}
					goto label$148;
					label$157:;
					{
						FBSTRING TMP$108$6;
						FBSTRING* vr$111 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)DT$1 + 4) );
						__builtin_memset( &TMP$108$6, 0, 12 );
						FBSTRING* vr$114 = fb_StrConcat( &TMP$108$6, (void*)&TEXT$1, -1, (void*)vr$111, -1 );
						fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$114, -1, 0 );
					}
					goto label$148;
					label$149:;
					static const void* tmp$150[4] = {
						&&label$150,
						&&label$153,
						&&label$156,
						&&label$157,
					};
					if( TMP$101$5 > 3u ) goto label$148;
					goto *tmp$150[TMP$101$5 - 0u];
					label$148:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 12);
			}
			goto label$146;
			label$147:;
			label$158:;
			if( NUM$1 <= 0 ) goto label$159;
			{
				NUM$1 = NUM$1 + -1;
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (char*)0u );
			}
			goto label$158;
			label$159:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 184), (void*)ARGTB$1 );
		}
		label$145:;
		label$144:;
		if( READDCHAR$1 == -1 ) goto label$161;
		{
			FBSTRING* vr$121 = fb_CHR( 1, READDCHAR$1 );
			fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)vr$121, -1, 0 );
		}
		label$161:;
		label$160:;
	}
	label$140:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$163;
	{
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TEXT$1 );
	}
	goto label$162;
	label$163:;
	{
		FBSTRING TMP$109$2;
		FBSTRING TMP$110$2;
		__builtin_memset( &TMP$110$2, 0, 12 );
		__builtin_memset( &TMP$109$2, 0, 12 );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$109$2, (void*)&TEXT$1, -1, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596), 0 );
		fb_StrAssign( (void*)&TMP$110$2, -1, (void*)vr$129, -1, 0 );
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TMP$110$2 );
		fb_StrDelete( (FBSTRING*)&TMP$110$2 );
	}
	label$162:;
	*(int32*)((uint8*)&PP$ + 224) = *(int32*)((uint8*)&PP$ + 224) + -1;
	int32 vr$135 = fb_StrLen( (void*)&TEXT$1, -1 );
	fb$result$1 = vr$135;
	label$25:;
	return fb$result$1;
}

static int32 HLOADDEFINE( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$164:;
	static FBSTRING TEXT$1;
	int32 LGT$1;
	fb$result$1 = 0;
	if( *(int32*)((uint8*)S$1 + 56) <= 0 ) goto label$167;
	{
		int32 vr$2 = HLOADMACRO( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1 ) goto label$169;
		{
			goto label$165;
		}
		label$169:;
		label$168:;
	}
	goto label$166;
	label$167:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 76) == (tmp$27)0u ) goto label$171;
		{
			if( (*(int32*)((uint8*)S$1 + 72) & 1) == 0 ) goto label$173;
			{
				FBSTRING TMP$111$4;
				FBSTRING TMP$112$4;
				FBSTRING* vr$6 = (*(tmp$27*)((uint8*)S$1 + 76))(  );
				__builtin_memset( &TMP$111$4, 0, 12 );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$111$4, (void*)"$\x22", 3, (void*)vr$6, -1 );
				__builtin_memset( &TMP$112$4, 0, 12 );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$112$4, (void*)vr$10, -1, (void*)"\x22", 2 );
				fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$13, -1, 0 );
			}
			goto label$172;
			label$173:;
			{
				FBSTRING* vr$14 = (*(tmp$27*)((uint8*)S$1 + 76))(  );
				fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$14, -1, 0 );
			}
			label$172:;
			if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$175;
			{
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TEXT$1 );
			}
			goto label$174;
			label$175:;
			{
				FBSTRING TMP$113$4;
				FBSTRING TMP$114$4;
				__builtin_memset( &TMP$114$4, 0, 12 );
				__builtin_memset( &TMP$113$4, 0, 12 );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$113$4, (void*)&TEXT$1, -1, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596), 0 );
				fb_StrAssign( (void*)&TMP$114$4, -1, (void*)vr$23, -1, 0 );
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TMP$114$4 );
				fb_StrDelete( (FBSTRING*)&TMP$114$4 );
			}
			label$174:;
			int32 vr$28 = fb_StrLen( (void*)&TEXT$1, -1 );
			LGT$1 = vr$28;
		}
		goto label$170;
		label$171:;
		{
			if( *(int32*)((uint8*)S$1 + 68) == 0 ) goto label$177;
			{
				int32 HASPARENS$4;
				HASPARENS$4 = 0;
				int32 HASWHITESPACE$4;
				int32 vr$30 = LEXEATWHITESPACE(  );
				HASWHITESPACE$4 = vr$30;
				uint32 vr$31 = LEXCURRENTCHAR(  );
				if( vr$31 != 40u ) goto label$179;
				{
					HASPARENS$4 = -1;
				}
				label$179:;
				label$178:;
				if( (*(int32*)((uint8*)S$1 + 72) & 8) == 0 ) goto label$181;
				{
					if( HASPARENS$4 != 0 ) goto label$183;
					{
						goto label$165;
					}
					label$183:;
					label$182:;
				}
				goto label$180;
				label$181:;
				{
					HASPARENS$4 = HASPARENS$4 & ~HASWHITESPACE$4;
				}
				label$180:;
				if( HASPARENS$4 == 0 ) goto label$185;
				{
					LEXEATCHAR(  );
					LEXEATWHITESPACE(  );
					uint32 vr$36 = LEXCURRENTCHAR(  );
					if( vr$36 == 41u ) goto label$187;
					{
						ERRREPORT( 7, 0, (char*)0u );
					}
					goto label$186;
					label$187:;
					{
						LEXEATCHAR(  );
					}
					label$186:;
				}
				label$185:;
				label$184:;
			}
			label$177:;
			label$176:;
			if( (*(int32*)((uint8*)S$1 + 28) & 511) == 7 ) goto label$189;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$191;
				{
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)((uint8*)S$1 + 64) );
				}
				goto label$190;
				label$191:;
				{
					FBSTRING TMP$115$5;
					FBSTRING TMP$116$5;
					__builtin_memset( &TMP$116$5, 0, 12 );
					__builtin_memset( &TMP$115$5, 0, 12 );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$115$5, *(void**)((uint8*)S$1 + 64), 0, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596), 0 );
					fb_StrAssign( (void*)&TMP$116$5, -1, (void*)vr$48, -1, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TMP$116$5 );
					fb_StrDelete( (FBSTRING*)&TMP$116$5 );
				}
				label$190:;
			}
			goto label$188;
			label$189:;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$193;
				{
					DZSTRASSIGNW( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)*(uint32**)((uint8*)S$1 + 64) );
				}
				goto label$192;
				label$193:;
				{
					FBSTRING TMP$117$5;
					FBSTRING TMP$118$5;
					__builtin_memset( &TMP$118$5, 0, 12 );
					FBSTRING* vr$60 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)S$1 + 64) );
					__builtin_memset( &TMP$117$5, 0, 12 );
					FBSTRING* vr$63 = fb_StrConcat( &TMP$117$5, (void*)vr$60, -1, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596), 0 );
					fb_StrAssign( (void*)&TMP$118$5, -1, (void*)vr$63, -1, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)&TMP$118$5 );
					fb_StrDelete( (FBSTRING*)&TMP$118$5 );
				}
				label$192:;
			}
			label$188:;
			LGT$1 = (int32)*(int64*)((uint8*)S$1 + 40);
		}
		label$170:;
	}
	label$166:;
	*(char**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) = *(char**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600);
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) + LGT$1;
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16556) = 4294967295u;
	fb$result$1 = -1;
	label$165:;
	return fb$result$1;
}

static int32 HLOADMACROW( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$194:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int32 PRNTCNT$1;
	int32 LGT$1;
	int32 NUM$1;
	int32 REACHED_VARARG$1;
	int32 IS_VARIADIC$1;
	uint32* ARGTEXT$1;
	static struct $8DWSTRING TEXT$1;
	fb$result$1 = -1;
	int32 HASPARENS$1;
	HASPARENS$1 = 0;
	int32 HASWHITESPACE$1;
	int32 vr$1 = LEXEATWHITESPACE(  );
	HASWHITESPACE$1 = vr$1;
	uint32 vr$2 = LEXCURRENTCHAR(  );
	if( vr$2 != 40u ) goto label$197;
	{
		HASPARENS$1 = -1;
	}
	label$197:;
	label$196:;
	if( (*(int32*)((uint8*)S$1 + 72) & 8) == 0 ) goto label$199;
	{
		if( HASPARENS$1 != 0 ) goto label$201;
		{
			goto label$195;
		}
		label$201:;
		label$200:;
	}
	goto label$198;
	label$199:;
	{
		HASPARENS$1 = HASPARENS$1 & ~HASWHITESPACE$1;
	}
	label$198:;
	int32 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0 ) goto label$203;
	{
		goto label$195;
	}
	label$203:;
	label$202:;
	*(int32*)((uint8*)&PP$ + 224) = *(int32*)((uint8*)&PP$ + 224) + 1;
	if( HASPARENS$1 == 0 ) goto label$205;
	{
		LEXEATCHAR(  );
	}
	label$205:;
	label$204:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 60);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$207;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 184) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$206;
	label$207:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0u;
	}
	label$206:;
	PRNTCNT$1 = 1;
	REACHED_VARARG$1 = 0;
	IS_VARIADIC$1 = -((*(int32*)((uint8*)S$1 + 72) & 4) != 0);
	int32 READDCHAR$1;
	READDCHAR$1 = -1;
	NUM$1 = 0;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$209;
	{
		*(int32*)((uint8*)ARGTB$1 + 384) = 0;
	}
	label$209:;
	label$208:;
	label$210:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$214;
		{
			DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)) );
		}
		label$214:;
		label$213:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0u ) goto label$216;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$216:;
		label$215:;
		label$217:;
		{
			LEXNEXTTOKEN( &T$1, 92 );
			{
				uint32 TMP$119$4;
				TMP$119$4 = *(uint32*)&T$1;
				goto label$221;
				label$222:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1;
				}
				goto label$220;
				label$223:;
				{
					if( PRNTCNT$1 <= 0 ) goto label$225;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1;
						if( PRNTCNT$1 != 0 ) goto label$227;
						{
							if( (*(int32*)((uint8*)S$1 + 72) & 8) != 0 ) goto label$229;
							{
								if( HASPARENS$1 != 0 ) goto label$231;
								{
									if( *(int32*)((uint8*)ARGTB$1 + 384) < *(int32*)((uint8*)S$1 + 56) ) goto label$233;
									{
										if( *(int32*)((uint8*)&PP$ + 224) <= 1 ) goto label$235;
										{
											READDCHAR$1 = 41;
										}
										label$235:;
										label$234:;
									}
									label$233:;
									label$232:;
								}
								label$231:;
								label$230:;
							}
							label$229:;
							label$228:;
							goto label$218;
						}
						label$227:;
						label$226:;
					}
					label$225:;
					label$224:;
				}
				goto label$220;
				label$236:;
				{
					if( PRNTCNT$1 != 1 ) goto label$238;
					{
						if( (*(int32*)((uint8*)S$1 + 72) & 8) != 0 ) goto label$240;
						{
							if( IS_VARIADIC$1 != 0 ) goto label$242;
							{
								if( HASPARENS$1 != 0 ) goto label$244;
								{
									if( *(int32*)((uint8*)ARGTB$1 + 384) < *(int32*)((uint8*)S$1 + 56) ) goto label$246;
									{
										if( *(int32*)((uint8*)&PP$ + 224) <= 1 ) goto label$248;
										{
											READDCHAR$1 = 44;
										}
										label$248:;
										label$247:;
										PRNTCNT$1 = 0;
										goto label$218;
									}
									label$246:;
									label$245:;
								}
								label$244:;
								label$243:;
							}
							label$242:;
							label$241:;
						}
						label$240:;
						label$239:;
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$250;
						{
							if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$252;
							{
								*(int32*)((uint8*)ARGTB$1 + 384) = 1;
							}
							label$252:;
							label$251:;
							*(int32*)((uint8*)ARGTB$1 + 384) = *(int32*)((uint8*)ARGTB$1 + 384) + 1;
						}
						label$250:;
						label$249:;
						if( REACHED_VARARG$1 != 0 ) goto label$254;
						{
							goto label$218;
						}
						label$254:;
						label$253:;
					}
					label$238:;
					label$237:;
				}
				goto label$220;
				label$255:;
				{
					if( ~HASPARENS$1 == 0 ) goto label$257;
					{
						READDCHAR$1 = 58;
						if( PRNTCNT$1 <= 0 ) goto label$259;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$259:;
						label$258:;
						goto label$218;
					}
					label$257:;
					label$256:;
				}
				goto label$220;
				label$260:;
				{
					if( HASPARENS$1 == 0 ) goto label$262;
					{
						HREPORTMACROERROR( S$1, 7 );
						PRNTCNT$1 = 0;
					}
					goto label$261;
					label$262:;
					{
						int32 TMP$120$6;
						if( PRNTCNT$1 <= 0 ) goto label$264;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$264:;
						label$263:;
						if( *(int32*)&T$1 != 256 ) goto label$265;
						TMP$120$6 = 0;
						goto label$528;
						label$265:;
						TMP$120$6 = 10;
						label$528:;
						READDCHAR$1 = TMP$120$6;
					}
					label$261:;
					goto label$218;
				}
				goto label$220;
				label$266:;
				{
					if( HASPARENS$1 == 0 ) goto label$268;
					{
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$270;
						{
							if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$272;
							{
								*(int32*)((uint8*)ARGTB$1 + 384) = 1;
							}
							label$272:;
							label$271:;
						}
						label$270:;
						label$269:;
					}
					goto label$267;
					label$268:;
					{
						int32 TMP$122$6;
						label$273:;
						{
							LEXSKIPTOKEN( 574 );
							{
								int32 TMP$121$8;
								int32 vr$41 = LEXGETTOKEN( 62 );
								TMP$121$8 = vr$41;
								if( TMP$121$8 == 257 ) goto label$278;
								label$279:;
								if( TMP$121$8 != 256 ) goto label$277;
								label$278:;
								{
									goto label$274;
								}
								label$277:;
								label$276:;
							}
						}
						label$275:;
						goto label$273;
						label$274:;
						LEXSKIPTOKEN( 574 );
						if( *(int32*)&T$1 != 256 ) goto label$280;
						TMP$122$6 = 0;
						goto label$529;
						label$280:;
						TMP$122$6 = 10;
						label$529:;
						READDCHAR$1 = TMP$122$6;
						if( PRNTCNT$1 <= 0 ) goto label$282;
						{
							PRNTCNT$1 = PRNTCNT$1 + -1;
						}
						label$282:;
						label$281:;
						goto label$218;
					}
					label$267:;
				}
				goto label$220;
				label$283:;
				{
				}
				goto label$220;
				label$284:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$286;
					{
						if( *(int32*)((uint8*)ARGTB$1 + 384) != 0 ) goto label$288;
						{
							*(int32*)((uint8*)ARGTB$1 + 384) = 1;
						}
						label$288:;
						label$287:;
					}
					label$286:;
					label$285:;
				}
				goto label$220;
				label$221:;
				static const void* tmp$151[251] = {
					&&label$283,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$283,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$222,
					&&label$223,
					&&label$284,
					&&label$284,
					&&label$236,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$284,
					&&label$260,
					&&label$260,
					&&label$255,
					&&label$266,
				};
				if( (TMP$119$4 - 9u) > 250u ) goto label$284;
				goto *tmp$151[TMP$119$4 - 9u];
				label$220:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$290;
			{
				if( *(int32*)((uint8*)&T$1 + 8) == 7 ) goto label$292;
				{
					DWSTRCONCATASSIGNA( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (char*)((uint8*)&T$1 + 12) );
				}
				goto label$291;
				label$292:;
				{
					DWSTRCONCATASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (uint32*)((uint8*)&T$1 + 12) );
				}
				label$291:;
			}
			label$290:;
			label$289:;
		}
		label$219:;
		goto label$217;
		label$218:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$294;
		{
			{
				struct $9LEXPP_ARG* TMP$123$4;
				TMP$123$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 12));
				if( *(uint32**)TMP$123$4 == (uint32*)0u ) goto label$296;
				{
					int32 vr$62 = fb_WstrLen( (uint32*)*(uint32**)TMP$123$4 );
					if( (-(*(uint32*)*(uint32**)TMP$123$4 == 32u) | -(*(uint32*)((uint8*)((uint8*)*(uint32**)TMP$123$4 + (vr$62 << (2 & 31))) + -4) == 32u)) == 0 ) goto label$298;
					{
						uint32* TMP$124$6;
						uint32* vr$68 = fb_WstrTrim( (uint32*)*(uint32**)TMP$123$4 );
						TMP$124$6 = vr$68;
						DWSTRASSIGN( (struct $8DWSTRING*)TMP$123$4, (uint32*)TMP$124$6 );
						fb_WstrDelete( (uint32*)TMP$124$6 );
					}
					label$298:;
					label$297:;
				}
				label$296:;
				label$295:;
			}
		}
		label$294:;
		label$293:;
		if( PRNTCNT$1 != 0 ) goto label$300;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$302;
			{
				if( (-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 8) != (struct $11FB_DEFPARAM*)0u) | ~IS_VARIADIC$1) == 0 ) goto label$304;
				{
					HREPORTMACROERROR( S$1, 1 );
				}
				label$304:;
				label$303:;
				label$305:;
				{
					NUM$1 = NUM$1 + 1;
					DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)) );
				}
				label$307:;
				if( NUM$1 < (*(int32*)((uint8*)S$1 + 56) + -1) ) goto label$305;
				label$306:;
			}
			label$302:;
			label$301:;
			goto label$211;
		}
		label$300:;
		label$299:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0u ) goto label$309;
		{
			HREPORTMACROERROR( S$1, 1 );
			HSKIPUNTIL( 41, -1, 62, 0 );
			goto label$211;
		}
		label$309:;
		label$308:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1;
	}
	label$212:;
	goto label$210;
	label$211:;
	DWSTRASSIGN( &TEXT$1, (uint32*)0u );
	if( *(tmp$28*)((uint8*)S$1 + 76) == (tmp$28)0u ) goto label$311;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0;
		if( *(tmp$29*)((uint8*)S$1 + 80) == (tmp$29)0u ) goto label$313;
		{
			uint32* RES$3;
			uint32* vr$85 = (*(tmp$29*)((uint8*)S$1 + 80))( ARGTB$1, (int32*)&ERRNUM$2 );
			RES$3 = vr$85;
			if( ERRNUM$2 != 0 ) goto label$315;
			{
				DWSTRASSIGN( &TEXT$1, (uint32*)RES$3 );
			}
			goto label$314;
			label$315:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$314:;
		}
		goto label$312;
		label$313:;
		{
			FBSTRING RES$3;
			FBSTRING* vr$88 = (*(tmp$28*)((uint8*)S$1 + 76))( ARGTB$1, (int32*)&ERRNUM$2 );
			fb_StrInit( (void*)&RES$3, -1, (void*)vr$88, -1, 0 );
			if( ERRNUM$2 != 0 ) goto label$317;
			{
				DWSTRASSIGNA( &TEXT$1, (char*)*(char**)&RES$3 );
			}
			goto label$316;
			label$317:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$316:;
			fb_StrDelete( (FBSTRING*)&RES$3 );
		}
		label$312:;
	}
	goto label$310;
	label$311:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$319;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 64);
			label$320:;
			if( DT$1 == (struct $9FB_DEFTOK*)0u ) goto label$321;
			{
				{
					uint32 TMP$125$5;
					TMP$125$5 = *(uint32*)DT$1;
					goto label$323;
					label$324:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int32*)((uint8*)DT$1 + 4) * 12));
						if( ARGTEXT$1 == (uint32*)0u ) goto label$326;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)ARGTEXT$1 );
						}
						label$326:;
						label$325:;
					}
					goto label$322;
					label$327:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int32*)((uint8*)DT$1 + 4) * 12));
						if( ARGTEXT$1 == (uint32*)0u ) goto label$329;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"$\x00000022" );
							uint32* vr$100 = HREPLACEW( ARGTEXT$1, (uint32*)L"\x00000022", (uint32*)L"\x00000022\x00000022" );
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)vr$100 );
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022" );
						}
						goto label$328;
						label$329:;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022\x00000022" );
						}
						label$328:;
					}
					goto label$322;
					label$330:;
					{
						DWSTRCONCATASSIGNA( &TEXT$1, (char*)*(char**)((uint8*)DT$1 + 4) );
					}
					goto label$322;
					label$331:;
					{
						DWSTRCONCATASSIGN( &TEXT$1, (uint32*)*(uint32**)((uint8*)DT$1 + 4) );
					}
					goto label$322;
					label$323:;
					static const void* tmp$152[4] = {
						&&label$324,
						&&label$327,
						&&label$330,
						&&label$331,
					};
					if( TMP$125$5 > 3u ) goto label$322;
					goto *tmp$152[TMP$125$5 - 0u];
					label$322:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 12);
			}
			goto label$320;
			label$321:;
			label$332:;
			if( NUM$1 <= 0 ) goto label$333;
			{
				NUM$1 = NUM$1 + -1;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 12)), (uint32*)0u );
			}
			goto label$332;
			label$333:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 184), (void*)ARGTB$1 );
		}
		label$319:;
		label$318:;
	}
	label$310:;
	if( READDCHAR$1 == -1 ) goto label$335;
	{
		FBSTRING TMP$129$2;
		__builtin_memset( &TMP$129$2, 0, 12 );
		FBSTRING* vr$110 = fb_CHR( 1, READDCHAR$1 );
		fb_StrAssign( (void*)&TMP$129$2, -1, (void*)vr$110, -1, 0 );
		DWSTRCONCATASSIGNA( &TEXT$1, (char*)*(char**)&TMP$129$2 );
		fb_StrDelete( (FBSTRING*)&TMP$129$2 );
	}
	label$335:;
	label$334:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$337;
	{
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)*(uint32**)&TEXT$1 );
	}
	goto label$336;
	label$337:;
	{
		uint32* TMP$130$2;
		uint32* vr$117 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) );
		TMP$130$2 = vr$117;
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)TMP$130$2 );
		fb_WstrDelete( (uint32*)TMP$130$2 );
	}
	label$336:;
	*(int32*)((uint8*)&PP$ + 224) = *(int32*)((uint8*)&PP$ + 224) + -1;
	int32 vr$121 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
	fb$result$1 = vr$121;
	label$195:;
	return fb$result$1;
}

static int32 HLOADDEFINEW( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$338:;
	static struct $8DWSTRING TEXT$1;
	int32 LGT$1;
	fb$result$1 = 0;
	if( *(int32*)((uint8*)S$1 + 56) <= 0 ) goto label$341;
	{
		int32 vr$2 = HLOADMACROW( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1 ) goto label$343;
		{
			goto label$339;
		}
		label$343:;
		label$342:;
	}
	goto label$340;
	label$341:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 76) == (tmp$27)0u ) goto label$345;
		{
			if( (*(int32*)((uint8*)S$1 + 72) & 1) == 0 ) goto label$347;
			{
				FBSTRING TMP$131$4;
				FBSTRING TMP$132$4;
				FBSTRING TMP$133$4;
				__builtin_memset( &TMP$133$4, 0, 12 );
				FBSTRING* vr$7 = (*(tmp$27*)((uint8*)S$1 + 76))(  );
				__builtin_memset( &TMP$131$4, 0, 12 );
				FBSTRING* vr$11 = fb_StrConcat( &TMP$131$4, (void*)"$\x22", 3, (void*)vr$7, -1 );
				__builtin_memset( &TMP$132$4, 0, 12 );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$132$4, (void*)vr$11, -1, (void*)"\x22", 2 );
				fb_StrAssign( (void*)&TMP$133$4, -1, (void*)vr$14, -1, 0 );
				DWSTRASSIGNA( &TEXT$1, (char*)*(char**)&TMP$133$4 );
				fb_StrDelete( (FBSTRING*)&TMP$133$4 );
			}
			goto label$346;
			label$347:;
			{
				FBSTRING TMP$134$4;
				__builtin_memset( &TMP$134$4, 0, 12 );
				FBSTRING* vr$18 = (*(tmp$27*)((uint8*)S$1 + 76))(  );
				fb_StrAssign( (void*)&TMP$134$4, -1, (void*)vr$18, -1, 0 );
				DWSTRASSIGNA( &TEXT$1, (char*)*(char**)&TMP$134$4 );
				fb_StrDelete( (FBSTRING*)&TMP$134$4 );
			}
			label$346:;
			if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$349;
			{
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)*(uint32**)&TEXT$1 );
			}
			goto label$348;
			label$349:;
			{
				uint32* TMP$135$4;
				uint32* vr$26 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) );
				TMP$135$4 = vr$26;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)TMP$135$4 );
				fb_WstrDelete( (uint32*)TMP$135$4 );
			}
			label$348:;
			int32 vr$29 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
			LGT$1 = vr$29;
		}
		goto label$344;
		label$345:;
		{
			if( *(int32*)((uint8*)S$1 + 68) == 0 ) goto label$351;
			{
				int32 HASPARENS$4;
				HASPARENS$4 = 0;
				int32 HASWHITESPACE$4;
				int32 vr$31 = LEXEATWHITESPACE(  );
				HASWHITESPACE$4 = vr$31;
				uint32 vr$32 = LEXCURRENTCHAR(  );
				if( vr$32 != 40u ) goto label$353;
				{
					HASPARENS$4 = -1;
				}
				label$353:;
				label$352:;
				if( (*(int32*)((uint8*)S$1 + 72) & 8) == 0 ) goto label$355;
				{
					if( HASPARENS$4 != 0 ) goto label$357;
					{
						goto label$339;
					}
					label$357:;
					label$356:;
				}
				goto label$354;
				label$355:;
				{
					HASPARENS$4 = HASPARENS$4 & ~HASWHITESPACE$4;
				}
				label$354:;
				if( HASPARENS$4 == 0 ) goto label$359;
				{
					LEXEATCHAR(  );
					LEXEATWHITESPACE(  );
					uint32 vr$37 = LEXCURRENTCHAR(  );
					if( vr$37 == 41u ) goto label$361;
					{
						ERRREPORT( 7, 0, (char*)0u );
					}
					goto label$360;
					label$361:;
					{
						LEXEATCHAR(  );
					}
					label$360:;
				}
				label$359:;
				label$358:;
			}
			label$351:;
			label$350:;
			if( (*(int32*)((uint8*)S$1 + 28) & 511) == 7 ) goto label$363;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$365;
				{
					DWSTRASSIGNA( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (char*)*(char**)((uint8*)S$1 + 64) );
				}
				goto label$364;
				label$365:;
				{
					uint32* TMP$136$5;
					uint32* TMP$137$5;
					uint32* vr$46 = fb_StrToWstr( (char*)*(char**)((uint8*)S$1 + 64) );
					TMP$136$5 = vr$46;
					uint32* vr$47 = fb_WstrConcat( (uint32*)TMP$136$5, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) );
					TMP$137$5 = vr$47;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)TMP$137$5 );
					fb_WstrDelete( (uint32*)TMP$137$5 );
					fb_WstrDelete( (uint32*)TMP$136$5 );
				}
				label$364:;
			}
			goto label$362;
			label$363:;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) != 0 ) goto label$367;
				{
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)*(uint32**)((uint8*)S$1 + 64) );
				}
				goto label$366;
				label$367:;
				{
					uint32* TMP$138$5;
					uint32* vr$56 = fb_WstrConcat( (uint32*)*(uint32**)((uint8*)S$1 + 64), (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) );
					TMP$138$5 = vr$56;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600), (uint32*)TMP$138$5 );
					fb_WstrDelete( (uint32*)TMP$138$5 );
				}
				label$366:;
			}
			label$362:;
			LGT$1 = (int32)*(int64*)((uint8*)S$1 + 40);
		}
		label$344:;
	}
	label$340:;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16596) = *(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16600);
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16592) + LGT$1;
	fb$result$1 = -1;
	label$339:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK* TOKHEAD$1, struct $9FB_DEFTOK* TOKTAIL$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$378:;
	label$380:;
	if( TOKTAIL$1 == (struct $9FB_DEFTOK*)0u ) goto label$381;
	{
		if( *(int32*)TOKTAIL$1 == 2 ) goto label$383;
		{
			goto label$381;
		}
		label$383:;
		label$382:;
		{
			uint32 TMP$139$3;
			TMP$139$3 = (uint32)*(uint8*)*(char**)((uint8*)TOKTAIL$1 + 4);
			goto label$385;
			label$386:;
			{
				struct $9FB_DEFTOK* vr$5 = SYMBDELDEFINETOK( TOKTAIL$1 );
				TOKTAIL$1 = vr$5;
			}
			goto label$384;
			label$387:;
			{
				goto label$381;
			}
			goto label$384;
			label$385:;
			static const void* tmp$153[24] = {
				&&label$386,
				&&label$386,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$387,
				&&label$386,
			};
			if( (TMP$139$3 - 9u) > 23u ) goto label$387;
			goto *tmp$153[TMP$139$3 - 9u];
			label$384:;
		}
	}
	goto label$380;
	label$381:;
	if( TOKTAIL$1 != (struct $9FB_DEFTOK*)0u ) goto label$389;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0u;
	}
	goto label$388;
	label$389:;
	{
		fb$result$1 = TOKHEAD$1;
	}
	label$388:;
	label$379:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HREADMACROTEXT( int32 ARGS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, int32 ISMULTILINE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$390:;
	static char ARG$1[129];
	struct $11FB_DEFPARAM* PARAM$1;
	struct $9FB_DEFTOK* TOKTAIL$1;
	TOKTAIL$1 = (struct $9FB_DEFTOK*)0u;
	struct $9FB_DEFTOK* TOKHEAD$1;
	TOKHEAD$1 = (struct $9FB_DEFTOK*)0u;
	int32 ADDQUOTES$1;
	int32 NESTEDCNT$1;
	NESTEDCNT$1 = 0;
	label$392:;
	{
		ADDQUOTES$1 = 0;
		{
			uint32 TMP$140$3;
			int32 vr$1 = LEXGETTOKEN( 62 );
			TMP$140$3 = (uint32)vr$1;
			goto label$396;
			label$397:;
			{
				if( ISMULTILINE$1 == 0 ) goto label$399;
				{
					ERRREPORT( 134, 0, (char*)0u );
				}
				label$399:;
				label$398:;
				goto label$393;
			}
			goto label$395;
			label$400:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$402;
				{
					goto label$393;
				}
				label$402:;
				label$401:;
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0u ) goto label$404;
				{
					struct $9FB_DEFTOK* vr$2 = SYMBADDDEFINETOK( TOKTAIL$1, 2 );
					TOKTAIL$1 = vr$2;
					ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), (char*)"\x0A" );
				}
				label$404:;
				label$403:;
				LEXSKIPTOKEN( 62 );
				goto label$394;
			}
			goto label$395;
			label$405:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$407;
				{
					goto label$393;
				}
				label$407:;
				label$406:;
				label$408:;
				{
					LEXSKIPTOKEN( 62 );
					{
						int32 TMP$142$6;
						int32 vr$5 = LEXGETTOKEN( 62 );
						TMP$142$6 = vr$5;
						if( TMP$142$6 == 257 ) goto label$413;
						label$414:;
						if( TMP$142$6 != 256 ) goto label$412;
						label$413:;
						{
							goto label$409;
						}
						label$412:;
						label$411:;
					}
				}
				label$410:;
				goto label$408;
				label$409:;
				goto label$394;
			}
			goto label$395;
			label$415:;
			{
				{
					int32 TMP$143$5;
					int32 vr$6 = LEXGETLOOKAHEAD( 1, 314 );
					TMP$143$5 = vr$6;
					if( TMP$143$5 != 35 ) goto label$417;
					label$418:;
					{
						LEXSKIPTOKEN( 62 );
						LEXSKIPTOKEN( 63 );
						goto label$394;
					}
					goto label$416;
					label$417:;
					if( TMP$143$5 != 274 ) goto label$419;
					label$420:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$422;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1;
						}
						label$422:;
						label$421:;
					}
					goto label$416;
					label$419:;
					if( TMP$143$5 != 275 ) goto label$423;
					label$424:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$426;
						{
							if( NESTEDCNT$1 != 0 ) goto label$428;
							{
								LEXSKIPTOKEN( 62 );
								LEXSKIPTOKEN( 0 );
								struct $9FB_DEFTOK* vr$8 = HRTRIMMACROTEXT( TOKHEAD$1, TOKTAIL$1 );
								TOKHEAD$1 = vr$8;
								goto label$393;
							}
							label$428:;
							label$427:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1;
						}
						label$426:;
						label$425:;
					}
					goto label$416;
					label$423:;
					if( TMP$143$5 != 265 ) goto label$429;
					label$430:;
					{
						LEXSKIPTOKEN( 62 );
						ADDQUOTES$1 = -1;
					}
					label$429:;
					label$416:;
				}
			}
			goto label$395;
			label$431:;
			{
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0u ) goto label$433;
				{
					struct $9FB_DEFTOK* vr$10 = SYMBADDDEFINETOK( TOKTAIL$1, 2 );
					TOKTAIL$1 = vr$10;
					ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), (char*)" " );
				}
				label$433:;
				label$432:;
				LEXSKIPTOKEN( 62 );
				goto label$394;
			}
			goto label$395;
			label$396:;
			static const void* tmp$154[252] = {
				&&label$431,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$431,
				&&label$395,
				&&label$395,
				&&label$415,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$395,
				&&label$397,
				&&label$400,
				&&label$395,
				&&label$405,
				&&label$405,
			};
			if( (TMP$140$3 - 9u) > 251u ) goto label$395;
			goto *tmp$154[TMP$140$3 - 9u];
			label$395:;
		}
		{
			uint32 TMP$145$3;
			int32 vr$13 = LEXGETCLASS( 62 );
			TMP$145$3 = (uint32)vr$13;
			goto label$435;
			label$436:;
			{
				if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$438;
				{
					struct $9FB_DEFTOK* vr$14 = SYMBADDDEFINETOK( TOKTAIL$1, 2 );
					TOKTAIL$1 = vr$14;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0u ) goto label$440;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$440:;
					label$439:;
					char* vr$15 = LEXGETTEXT(  );
					ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), vr$15 );
				}
				goto label$437;
				label$438:;
				{
					struct $9FB_DEFTOK* vr$18 = SYMBADDDEFINETOK( TOKTAIL$1, 3 );
					TOKTAIL$1 = vr$18;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0u ) goto label$442;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$442:;
					label$441:;
					WSTRASSIGN( (uint32**)((uint8*)TOKTAIL$1 + 4), (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16548) + 12) );
				}
				label$437:;
				LEXSKIPTOKEN( 62 );
			}
			goto label$434;
			label$443:;
			{
				struct $9FB_DEFTOK* vr$24 = SYMBADDDEFINETOK( TOKTAIL$1, 2 );
				TOKTAIL$1 = vr$24;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0u ) goto label$445;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$445:;
				label$444:;
				char* vr$25 = LEXGETTEXT(  );
				FBSTRING* vr$26 = fb_StrAllocTempDescZ( (char*)vr$25 );
				FBSTRING* vr$27 = fb_StrUcase2( (FBSTRING*)vr$26, 0 );
				fb_StrAssign( (void*)ARG$1, 129, (void*)vr$27, -1, 0 );
				void* vr$29 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98776), (char*)ARG$1 );
				PARAM$1 = (struct $11FB_DEFPARAM*)vr$29;
				if( PARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$447;
				{
					if( ADDQUOTES$1 != 0 ) goto label$449;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 0;
					}
					goto label$448;
					label$449:;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 1;
					}
					label$448:;
					*(int32*)((uint8*)TOKTAIL$1 + 4) = *(int32*)((uint8*)PARAM$1 + 4);
				}
				goto label$446;
				label$447:;
				{
					if( ADDQUOTES$1 == 0 ) goto label$451;
					{
						ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), (char*)"#" );
						char* vr$36 = LEXGETTEXT(  );
						ZSTRCONCATASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), vr$36 );
					}
					goto label$450;
					label$451:;
					{
						char* vr$39 = LEXGETTEXT(  );
						ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), vr$39 );
					}
					label$450:;
				}
				label$446:;
				LEXSKIPTOKEN( 62 );
			}
			goto label$434;
			label$452:;
			{
				struct $9FB_DEFTOK* vr$42 = SYMBADDDEFINETOK( TOKTAIL$1, 2 );
				TOKTAIL$1 = vr$42;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0u ) goto label$454;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$454:;
				label$453:;
				char* vr$43 = LEXGETTEXT(  );
				ZSTRASSIGN( (char**)((uint8*)TOKTAIL$1 + 4), vr$43 );
				LEXSKIPTOKEN( 62 );
			}
			goto label$434;
			label$435:;
			static const void* tmp$155[5] = {
				&&label$443,
				&&label$443,
				&&label$443,
				&&label$452,
				&&label$436,
			};
			if( TMP$145$3 > 4u ) goto label$452;
			goto *tmp$155[TMP$145$3 - 0u];
			label$434:;
		}
	}
	label$394:;
	goto label$392;
	label$393:;
	fb$result$1 = TOKHEAD$1;
	label$391:;
	return fb$result$1;
}

static void HREADDEFINETEXT( struct $8FBSYMBOL* SYM$1, char* DEFNAME$1, int32 ISARGLESS$1, int32 ISMULTILINE$1, int32 FLAGS$1 )
{
	label$455:;
	char* TEXT$1;
	uint32* TEXTW$1;
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$458;
	{
		char* vr$0 = PPREADLITERAL( ISMULTILINE$1 );
		TEXT$1 = vr$0;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$460;
		{
			if( (-(*(int32*)((uint8*)SYM$1 + 56) > 0) | -((*(int32*)((uint8*)SYM$1 + 28) & 511) != 4)) == 0 ) goto label$462;
			{
				ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
			}
			goto label$461;
			label$462:;
			int32 vr$8 = fb_StrCompare( *(void**)((uint8*)SYM$1 + 64), 0, (void*)TEXT$1, 0 );
			if( vr$8 == 0 ) goto label$463;
			{
				ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
			}
			label$463:;
			label$461:;
		}
		goto label$459;
		label$460:;
		{
			int32 vr$9 = fb_StrLen( (void*)TEXT$1, 0 );
			SYMBADDDEFINE( (char*)DEFNAME$1, TEXT$1, vr$9, ISARGLESS$1, (tmp$27)0u, FLAGS$1 );
		}
		label$459:;
	}
	goto label$457;
	label$458:;
	{
		uint32* vr$10 = PPREADLITERALW( ISMULTILINE$1 );
		TEXTW$1 = vr$10;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$465;
		{
			if( (-(*(int32*)((uint8*)SYM$1 + 56) > 0) | -((*(int32*)((uint8*)SYM$1 + 28) & 511) != 7)) == 0 ) goto label$467;
			{
				ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
			}
			goto label$466;
			label$467:;
			int32 vr$18 = fb_WstrCompare( (uint32*)*(uint32**)((uint8*)SYM$1 + 64), (uint32*)TEXTW$1 );
			if( vr$18 == 0 ) goto label$468;
			{
				ERRREPORTEX( 4, (char*)DEFNAME$1, 0, 1, (char*)0u );
			}
			label$468:;
			label$466:;
		}
		goto label$464;
		label$465:;
		{
			int32 vr$19 = fb_WstrLen( (uint32*)TEXTW$1 );
			SYMBADDDEFINEW( DEFNAME$1, TEXTW$1, vr$19, ISARGLESS$1, (tmp$27)0u, FLAGS$1 );
		}
		label$464:;
	}
	label$457:;
	label$456:;
}

static int32 HMATCHPARAMELLIPSIS( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$469:;
	fb$result$1 = 0;
	int32 vr$1 = LEXGETTOKEN( 34 );
	if( vr$1 != 46 ) goto label$472;
	{
		int32 vr$2 = LEXGETLOOKAHEAD( 1, 34 );
		if( vr$2 != 46 ) goto label$474;
		{
			int32 vr$3 = LEXGETLOOKAHEAD( 2, 34 );
			if( vr$3 != 46 ) goto label$476;
			{
				LEXSKIPTOKEN( 34 );
				LEXSKIPTOKEN( 34 );
				LEXSKIPTOKEN( 34 );
				fb$result$1 = -1;
			}
			label$476:;
			label$475:;
		}
		label$474:;
		label$473:;
	}
	label$472:;
	label$471:;
	label$470:;
	return fb$result$1;
}
