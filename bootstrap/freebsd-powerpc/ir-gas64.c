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
struct $14ASM64_SAVEDREG {
	int32 ID;
	int32 SDVREG;
	int32 SDOFFSET;
	int32 SPILBRANCH1;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $14ASM64_SAVEDREG ) == 16 );
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
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
struct $6TFLIST {
	int32 TOTITEMS;
	int32 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int32 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 56 );
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $11FB_DATATYPE;
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
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	char* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $13FB_COMPTARGET;
struct $13ASM64_CONTEXT {
	int32 INDENT;
	int32 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
	FBSTRING PROLOG_TXT;
	FBSTRING PROC_TXT;
	FBSTRING EPILOG_TXT;
	int32 ARGCPTMAX;
	int32 ARGINTEG;
	int32 ARGFLOAT;
	int32 OFS;
	int64 STK;
	int64 STKMAX;
	int64 STKSPIL;
	int64 STKCOPY;
	int32 USEDREG;
	int32 JMPREG;
	int32 JMPVREG;
	int32 JMPPASS;
	int32 CTORCOUNT;
	int32 DTORCOUNT;
	boolean ROUNDFLOAT;
	boolean PROCCALLING;
	struct $6TFLIST SPILLVREGS;
	int32 VREG_COUNT;
	struct $8FBSYMBOL* LABELBRANCH2;
	struct $8FBSYMBOL* LABELJUMP;
	boolean VARIADIC;
	$13FB_COMPTARGET TARGET;
	boolean SYSTEMV;
	int32 OPEREG;
	int32 OPEPASS;
	int32 MAXSTACK;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_CONTEXT ) == 248 );
struct $6DBGCTX {
	uint32 TYPECNT;
	int32 LNUM;
	FBSTRING PREVFILENAME;
	FBSTRING LINEFILENAME;
	struct $8FBSYMBOL* PROC;
	int32 STRNB;
	int32 STRMAX;
	int32 STABNB;
	int32 STABMAX;
	int64 OFFST;
};
__FB_STATIC_ASSERT( sizeof( struct $6DBGCTX ) == 64 );
struct $7TDBGSTR {
	int64 OFFST;
	FBSTRING TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7TDBGSTR ) == 24 );
struct $8TDBGSTAB {
	int64 STAB;
	FBSTRING VALUE;
};
__FB_STATIC_ASSERT( sizeof( struct $8TDBGSTAB ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
union $5USTAB {
	int64 FULL;
	struct {
		int32 OFFST;
		int16 COD;
		int16 DESC;
	};
};
__FB_STATIC_ASSERT( sizeof( union $5USTAB ) == 8 );
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
struct $13ASM64_REGROOM {
	int32 STATUS;
	struct $14ASM64_SAVEDREG* VREG;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_REGROOM ) == 8 );
struct $7FBARRAYIKvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 120 );
typedef int32 $6IR_OPT;
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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef int32 $14IR_OPTIONVALUE;
struct $7FBARRAYIiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIiE ) == 120 );
typedef int32 $19FB_CVA_LIST_TYPEDEF;
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int32 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 12 );
struct $8FBARRAY1I8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 36 );
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayRedimObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
int32 fb_ArrayRedimPresvObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
void fb_ArrayDestructStr( struct $7FBARRAYIvE* );
int32 fb_ArrayEraseObj( struct $7FBARRAYIvE*, void*, void* );
int32 fb_ArrayUBound( struct $7FBARRAYIKvE*, int32 );
void* fb_ErrorThrowAt( int32, char*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
int64 __moddi3( int64, int64 );
double pow( double, double );
double fb_FRACd( double );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( char* );
FBSTRING* fb_StrAllocTempDescZEx( char*, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
void fb_StrAssignMid( FBSTRING*, int32, int32, FBSTRING* );
FBSTRING* fb_StrFill1( int32, int32 );
int32 fb_StrLen( void*, int32 );
uint32 fb_ASC( FBSTRING*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_RTRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__irzgas64( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, char*, int32, $12FB_ERRMSGOPT, char* );
void ERRREPORTWARN( int32, char*, $12FB_ERRMSGOPT, char* );
void ERRREPORTWARNEX( int32, char*, int32, $12FB_ERRMSGOPT, char* );
int32 FBGETOPTION( int32 );
FBSTRING* FBGETENTRYPOINT( void );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBISDATADESC( struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32, struct $8FBSYMBOL* );
char* SYMBUNIQUELABEL( void );
char* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
char* SYMBGETDBGNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMFIRSTELM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMNEXTELM( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( char* );
int32 PATHISABSOLUTE( char* );
FBSTRING* HCURDIR( void );
char* HESCAPE( char* );
char* HESCAPEW( uint32* );
FBSTRING* HREPLACE( char*, char*, char* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
void IRHLINIT( void );
void IRHLEND( void );
void IRHLEMITPROCBEGIN( void );
void IRHLEMITPROCEND( void );
void IRHLEMITPUSHARG( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVREG( int32, struct $8FBSYMBOL* );
struct $6IRVREG* IRHLALLOCVRIMM( int32, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIMMF( int32, struct $8FBSYMBOL*, double );
struct $6IRVREG* IRHLALLOCVRVAR( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIDX( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVRPTR( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVROFS( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
void IRFOREACHDATASTMT( tmp$41 );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void CFI_WINDOWS_ASM_CODE( FBSTRING* );
static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT*, struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* );
static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* );
static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX*, struct $6DBGCTX* );
static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* );
static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* );
static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR*, struct $7TDBGSTR* );
static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* );
static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* );
static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB*, struct $8TDBGSTAB* );
static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, char* );
static void CHECK_OPTIM( FBSTRING* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL*, int32 );
static void HWRITEASM64( FBSTRING*, int32 );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int32 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFEND( void );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
void SAVE_CALL( FBSTRING*, struct $6IRVREG*, int32 );
int32 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* );
static void DBG_ADDSTAB( FBSTRING*, uint8, int16, FBSTRING* );
static void REG_FREEABLE( FBSTRING* );
static int32 PW2( int32 );
static void ASM_SECTION( FBSTRING* );
static void EMITOP3_OP4( FBSTRING* );
void DBG_FILENAME( FBSTRING* );
static FBSTRING* HFLOATTOHEX_ASM64( double, int32, int8 );
static int32 DBG_ADDSTR( FBSTRING*, int32 );
static void DBG_EMITSTR( void );
static void DBG_EMITSTAB( void );
static void EDBGEMITHEADER_ASM64( char* );
static void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL*, int32 );
static void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL*, int32 );
static void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* );
static void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* );
static FBSTRING* HDECLPOINTER_ASM64( int32* );
static void HDECLUDT_ASM64( struct $8FBSYMBOL*, int32 );
static void HDECLENUM_ASM64( struct $8FBSYMBOL* );
static void REG_MARK( struct $8FBSYMBOL* );
static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 );
static void REG_SPILLING( int32 );
static void REG_SAVE( void );
static void REG_ALLOWED( boolean );
static int32 REG_FINDFREE( int32, int32 );
static void REG_CALLPTR( FBSTRING*, FBSTRING* );
static void REG_BRANCH( struct $8FBSYMBOL* );
int32 REG_FINDREAL( int32 );
char* REG_TEMPO( void );
static void REG_TRANSFER( int32, int32 );
static void MEMCLEAR( int32, FBSTRING*, int32 );
static void MEMCOPY( int32, FBSTRING*, FBSTRING*, int32, int32 );
static void _INIT( void );
static void _END( void );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void NO_ROUNDSD( char* );
static int32 _EMITBEGIN( void );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _SUPPORTSOP( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static int32 PARAM_ANALYZE( $11FB_DATATYPE, struct $8FBSYMBOL*, int32*, int32*, int32* );
static void REG_FILLM( int32, struct $7FBARRAYIiE*, int32, int32, int32 );
static void REG_FILLR( int32, FBSTRING*, int32, struct $7FBARRAYIiE*, int32 );
static void REG_FILLX( int32, FBSTRING*, int32 );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void PREPARE_IDX( struct $6IRVREG*, FBSTRING*, FBSTRING* );
static char* HGETBOPCODE( int32 );
static void RESTORE_VRREG( struct $6IRVREG*, int32 );
static void BOP_FLOAT( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, struct $8FBSYMBOL* );
static void HLOADOPERANDSANDWRITEBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HEMITROUNDFLOAT( $11FB_DATATYPE, $11FB_DATATYPE );
static void EMITSTORESTRUCT( struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING* );
static int32 HISSTRUCTIN2REGS( struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( struct $8FBSYMBOL*, FBSTRING*, FBSTRING*, struct $6IRVREG*, int32, boolean, boolean );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITRETURN( int32 );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITCOMMENT( char* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITFBCTINFSTRING( char* );
static void _EMITVARINISTR( int64, char*, int64 );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef char* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( char* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$55)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int32, struct $8FBSYMBOL*, int32, char* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, char*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int32 );
typedef void (*tmp$67)( char* );
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$75)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$51 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$53 EMITCALL;
	tmp$54 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$55 EMITBRANCH;
	tmp$56 EMITJMPTB;
	tmp$57 EMITMEM;
	tmp$58 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$59 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$60 EMITVARINII;
	tmp$61 EMITVARINIF;
	tmp$62 EMITVARINIOFS;
	tmp$63 EMITVARINISTR;
	tmp$64 EMITVARINIWSTR;
	tmp$65 EMITVARINIPAD;
	tmp$66 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$67 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$68 ALLOCVREG;
	tmp$69 ALLOCVRIMM;
	tmp$70 ALLOCVRIMMF;
	tmp$71 ALLOCVRVAR;
	tmp$72 ALLOCVRIDX;
	tmp$73 ALLOCVRPTR;
	tmp$71 ALLOCVROFS;
	tmp$74 SETVREGDATATYPE;
	tmp$75 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
extern struct $7IR_VTBL IRGAS64_VTBL$;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 276 );
extern struct $5IRCTX IR$;
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	char* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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
struct $11IRHLCONTEXT {
	int32 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 92 );
extern struct $11IRHLCONTEXT IRHL$;
static struct $6DBGCTX CTXDBG$;
static int32 REGHANDLE$[18];
static struct $13ASM64_REGROOM REGROOM$[18];
static struct $13ASM64_CONTEXT CTX$;
struct $7FBARRAYI7TDBGSTRE {
	struct $7TDBGSTR* DATA;
	struct $7TDBGSTR* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI7TDBGSTRE ) == 120 );
static struct $7FBARRAYI7TDBGSTRE DBGSTR$ = { (struct $7TDBGSTR*)0u, (struct $7TDBGSTR*)0u, 0, 24, 0, 8, {  } };
struct $7FBARRAYI8TDBGSTABE {
	struct $8TDBGSTAB* DATA;
	struct $8TDBGSTAB* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8TDBGSTABE ) == 120 );
static struct $7FBARRAYI8TDBGSTABE DBGSTAB$ = { (struct $8TDBGSTAB*)0u, (struct $8TDBGSTAB*)0u, 0, 24, 0, 8, {  } };
static int32 REMAPTB$[26] = { 7, 16, 2, 3, 4, 5, 6, 6, 9, 10, 9, 1, 8, 9, 10, 11, 12, 13, 14, 17 };
static char* STABSTB$[17] = { (char*)"integer:t1=-1", (char*)"void:t7=-11", (char*)"byte:t2=-6", (char*)"ubyte:t3=-5", (char*)"char:t4=-2", (char*)"short:t5=-3", (char*)"ushort:t6=-7", (char*)"uinteger:t8=-8", (char*)"longint:t9=-31", (char*)"ulongint:t10=-32", (char*)"single:t11=-12", (char*)"double:t12=-13", (char*)"string:t13=s12data:*2,0,64;len:1,64,64;size:1,128,64;;", (char*)"fixstr:t14=-2", (char*)"pchar:t15=*4;", (char*)"boolean:t16=@s8;-16", (char*)"va_list:t17=-11" };
static char* REGSTRQ$[18] = { (char*)"rax", (char*)"rbx", (char*)"rcx", (char*)"rdx", (char*)"rsi", (char*)"rdi", (char*)"rbp", (char*)"rsp", (char*)"r8", (char*)"r9", (char*)"r10", (char*)"r11", (char*)"r12", (char*)"r13", (char*)"r14", (char*)"r15", (char*)"rip", (char*)"* X_Q" };
static char* REGSTRD$[18] = { (char*)"eax", (char*)"ebx", (char*)"ecx", (char*)"edx", (char*)"esi", (char*)"edi", (char*)"ebp", (char*)"esp", (char*)"r8d", (char*)"r9d", (char*)"r10d", (char*)"r11d", (char*)"r12d", (char*)"r13d", (char*)"r14d", (char*)"r15d", (char*)"", (char*)"* X_D" };
static char* REGSTRW$[18] = { (char*)"ax", (char*)"bx", (char*)"cx", (char*)"dx", (char*)"si", (char*)"di", (char*)"bp", (char*)"sp", (char*)"r8w", (char*)"r9w", (char*)"r10w", (char*)"r11w", (char*)"r12w", (char*)"r13w", (char*)"r14w", (char*)"r15w", (char*)"", (char*)"* X_W" };
static char* REGSTRB$[18] = { (char*)"al", (char*)"bl", (char*)"cl", (char*)"dl", (char*)"sil", (char*)"dil", (char*)"bpl", (char*)"spl", (char*)"r8b", (char*)"r9b", (char*)"r10b", (char*)"r11b", (char*)"r12b", (char*)"r13b", (char*)"r14b", (char*)"r15b", (char*)"", (char*)"* X_B" };
static int8 REG_PRIO$[13] = { (int8)11, (int8)10, (int8)8, (int8)9, (int8)3, (int8)2, (int8)12, (int8)13, (int8)14, (int8)15, (int8)1, (int8)5, (int8)4 };
struct $8FBARRAY1IiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IiE ) == 36 );
static struct $8FBARRAY1IiE LISTREG$ = { (int32*)0u, (int32*)0u, 0, 4, 1, 17, {  } };
struct $7IR_VTBL IRGAS64_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)0u, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)&_EMITRETURN, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$51)0u, (tmp$51)&_EMITADDR, (tmp$53)&_EMITCALL, (tmp$54)&_EMITCALLPTR, (tmp$45)0u, (tmp$52)&_EMITJUMPPTR, (tmp$55)&_EMITBRANCH, (tmp$56)&_EMITJMPTB, (tmp$57)&_EMITMEM, (tmp$58)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$59)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$60)&_EMITVARINII, (tmp$61)&_EMITVARINIF, (tmp$62)&_EMITVARINIOFS, (tmp$63)&_EMITVARINISTR, (tmp$64)&_EMITVARINIWSTR, (tmp$65)&_EMITVARINIPAD, (tmp$66)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$67)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$68)&IRHLALLOCVREG, (tmp$69)&IRHLALLOCVRIMM, (tmp$70)&IRHLALLOCVRIMMF, (tmp$71)&IRHLALLOCVRVAR, (tmp$72)&IRHLALLOCVRIDX, (tmp$73)&IRHLALLOCVRPTR, (tmp$71)&IRHLALLOCVROFS, (tmp$74)&_SETVREGDATATYPE, (tmp$75)0u, (tmp$51)0u, (tmp$44)0u, (tmp$45)0u };

void DBG_FILENAME( FBSTRING* FILENAME$1 )
{
	label$201:;
	int32 vr$1 = fb_StrCompare( (void*)FILENAME$1, -1, (void*)((uint8*)&CTXDBG$ + 8), -1 );
	if( vr$1 == 0 ) goto label$204;
	{
		FBSTRING TMP$386$2;
		__builtin_memset( &TMP$386$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$386$2, -1, (void*)"0", 2, 0 );
		DBG_ADDSTAB( FILENAME$1, (uint8)132u, (int16)0, &TMP$386$2 );
		fb_StrDelete( (FBSTRING*)&TMP$386$2 );
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 8), -1, (void*)FILENAME$1, -1, 0 );
	}
	label$204:;
	label$203:;
	label$202:;
}

int32 REG_FINDREAL( int32 VREG$1 )
{
	FBSTRING TMP$575$1;
	FBSTRING TMP$576$1;
	FBSTRING TMP$577$1;
	FBSTRING TMP$578$1;
	FBSTRING TMP$579$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$494:;
	int32 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$499:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != VREG$1 ) goto label$501;
			{
				fb$result$1 = IREG$2;
				goto label$495;
			}
			label$501:;
			label$500:;
		}
		label$497:;
		IREG$2 = IREG$2 + 1;
		label$496:;
		if( IREG$2 <= 15 ) goto label$499;
		label$498:;
	}
	struct $14ASM64_SAVEDREG* V$1;
	V$1 = (struct $14ASM64_SAVEDREG*)0u;
	if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$503;
	{
		void* vr$5 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$5;
		label$504:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$505;
		{
			if( *(int32*)((uint8*)V$1 + 4) != VREG$1 ) goto label$507;
			{
				goto label$505;
			}
			label$507:;
			label$506:;
			void* vr$7 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$7;
		}
		goto label$504;
		label$505:;
	}
	label$503:;
	label$502:;
	if( V$1 != (struct $14ASM64_SAVEDREG*)0u ) goto label$509;
	{
		FBSTRING TMP$567$2;
		FBSTRING TMP$571$2;
		FBSTRING TMP$572$2;
		FBSTRING TMP$573$2;
		FBSTRING TMP$574$2;
		__builtin_memset( &TMP$567$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$567$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$567$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$567$2 );
		__builtin_memset( &TMP$573$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( VREG$1 );
		__builtin_memset( &TMP$571$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$571$2, (void*)"FOUND AN ERROR : virtual register=", 35, (void*)vr$13, -1 );
		__builtin_memset( &TMP$572$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$572$2, (void*)vr$16, -1, (void*)" no real register corresponding, using KREG_XXX", 48 );
		fb_StrAssign( (void*)&TMP$573$2, -1, (void*)vr$19, -1, 0 );
		HWRITEASM64( &TMP$573$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$573$2 );
		__builtin_memset( &TMP$574$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$574$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$574$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$574$2 );
		fb$result$1 = 17;
		goto label$495;
	}
	label$509:;
	label$508:;
	int32 vr$27 = REG_FINDFREE( VREG$1, -1 );
	REALREG$1 = vr$27;
	__builtin_memset( &TMP$579$1, 0, 12 );
	FBSTRING* vr$30 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$575$1, 0, 12 );
	FBSTRING* vr$34 = fb_StrConcat( &TMP$575$1, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REALREG$1 << (2 & 31))), 0 );
	__builtin_memset( &TMP$576$1, 0, 12 );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$576$1, (void*)vr$34, -1, (void*)", QWORD PTR ", 13 );
	__builtin_memset( &TMP$577$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$577$1, (void*)vr$37, -1, (void*)vr$30, -1 );
	__builtin_memset( &TMP$578$1, 0, 12 );
	FBSTRING* vr$43 = fb_StrConcat( &TMP$578$1, (void*)vr$40, -1, (void*)"[rbp]", 6 );
	fb_StrAssign( (void*)&TMP$579$1, -1, (void*)vr$43, -1, 0 );
	HWRITEASM64( &TMP$579$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$579$1 );
	*(int32*)((uint8*)V$1 + 4) = -2;
	fb$result$1 = REALREG$1;
	goto label$495;
	label$495:;
	return fb$result$1;
}

char* REG_TEMPO( void )
{
	char* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$510:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	static int32 COUNTER$1 = 9999999;
	COUNTER$1 = COUNTER$1 + 1;
	int32 vr$3 = REG_FINDFREE( COUNTER$1, -1 );
	REG$1 = vr$3;
	fb$result$1 = *(char**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31)));
	goto label$511;
	label$511:;
	return fb$result$1;
}

void SAVE_CALL( FBSTRING* FUNC$1, struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	int32 TMP$2977$1;
	label$2287:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2290;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = -2;
		label$2290:;
	}
	REG_SAVE(  );
	if( *(int32*)((uint8*)&CTX$ + 80) != 0 ) goto label$2292;
	{
		*(int32*)((uint8*)&CTX$ + 80) = 1;
	}
	label$2292:;
	label$2291:;
	if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2293;
	int32 vr$2 = FBGETOPTION( 0 );
	TMP$2977$1 = -(vr$2 == 2);
	goto label$2298;
	label$2293:;
	TMP$2977$1 = 0;
	label$2298:;
	if( TMP$2977$1 == 0 ) goto label$2295;
	{
		FBSTRING TMP$2980$2;
		FBSTRING TMP$2981$2;
		FBSTRING TMP$2982$2;
		__builtin_memset( &TMP$2982$2, 0, 12 );
		__builtin_memset( &TMP$2980$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$2980$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		__builtin_memset( &TMP$2981$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$2981$2, (void*)vr$7, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$2982$2, -1, (void*)vr$10, -1, 0 );
		HWRITEASM64( &TMP$2982$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2982$2 );
	}
	goto label$2294;
	label$2295:;
	{
		FBSTRING TMP$2983$2;
		FBSTRING TMP$2984$2;
		__builtin_memset( &TMP$2984$2, 0, 12 );
		__builtin_memset( &TMP$2983$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$2983$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		fb_StrAssign( (void*)&TMP$2984$2, -1, (void*)vr$17, -1, 0 );
		HWRITEASM64( &TMP$2984$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2984$2 );
	}
	label$2294:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2297;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
		label$2297:;
	}
	label$2288:;
}

__attribute__(( constructor )) static void fb_ctor__irzgas64( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 32), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 44), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 56), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 68), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 80), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 84), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 88), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 92), 0, 4 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 96), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 104), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 112), 0, 8 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 120), 0, 8 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 128), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 132), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 136), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 140), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 144), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 148), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 152), 0, 1 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 153), 0, 1 );
	__builtin_memset( (struct $6TFLIST*)((uint8*)THIS$1 + 156), 0, 56 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 212), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 216), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 220), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 224), 0, 1 );
	__builtin_memset( ($13FB_COMPTARGET*)((uint8*)THIS$1 + 228), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 232), 0, 1 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 236), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 240), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 244), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT* THIS$1, struct $13ASM64_CONTEXT* __FB_RHS__$1 )
{
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 32), -1, (void*)((uint8*)__FB_RHS__$1 + 32), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 44), -1, (void*)((uint8*)__FB_RHS__$1 + 44), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 56), -1, (void*)((uint8*)__FB_RHS__$1 + 56), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 68), -1, (void*)((uint8*)__FB_RHS__$1 + 68), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 80) = *(int32*)((uint8*)__FB_RHS__$1 + 80);
	*(int32*)((uint8*)THIS$1 + 84) = *(int32*)((uint8*)__FB_RHS__$1 + 84);
	*(int32*)((uint8*)THIS$1 + 88) = *(int32*)((uint8*)__FB_RHS__$1 + 88);
	*(int32*)((uint8*)THIS$1 + 92) = *(int32*)((uint8*)__FB_RHS__$1 + 92);
	*(int64*)((uint8*)THIS$1 + 96) = *(int64*)((uint8*)__FB_RHS__$1 + 96);
	*(int64*)((uint8*)THIS$1 + 104) = *(int64*)((uint8*)__FB_RHS__$1 + 104);
	*(int64*)((uint8*)THIS$1 + 112) = *(int64*)((uint8*)__FB_RHS__$1 + 112);
	*(int64*)((uint8*)THIS$1 + 120) = *(int64*)((uint8*)__FB_RHS__$1 + 120);
	*(int32*)((uint8*)THIS$1 + 128) = *(int32*)((uint8*)__FB_RHS__$1 + 128);
	*(int32*)((uint8*)THIS$1 + 132) = *(int32*)((uint8*)__FB_RHS__$1 + 132);
	*(int32*)((uint8*)THIS$1 + 136) = *(int32*)((uint8*)__FB_RHS__$1 + 136);
	*(int32*)((uint8*)THIS$1 + 140) = *(int32*)((uint8*)__FB_RHS__$1 + 140);
	*(int32*)((uint8*)THIS$1 + 144) = *(int32*)((uint8*)__FB_RHS__$1 + 144);
	*(int32*)((uint8*)THIS$1 + 148) = *(int32*)((uint8*)__FB_RHS__$1 + 148);
	*(boolean*)((uint8*)THIS$1 + 152) = *(boolean*)((uint8*)__FB_RHS__$1 + 152);
	*(boolean*)((uint8*)THIS$1 + 153) = *(boolean*)((uint8*)__FB_RHS__$1 + 153);
	__builtin_memcpy( (struct $6TFLIST*)((uint8*)THIS$1 + 156), (struct $6TFLIST*)((uint8*)__FB_RHS__$1 + 156), 56 );
	*(int32*)((uint8*)THIS$1 + 212) = *(int32*)((uint8*)__FB_RHS__$1 + 212);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 216) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 216);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 220) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 220);
	*(boolean*)((uint8*)THIS$1 + 224) = *(boolean*)((uint8*)__FB_RHS__$1 + 224);
	*($13FB_COMPTARGET*)((uint8*)THIS$1 + 228) = *($13FB_COMPTARGET*)((uint8*)__FB_RHS__$1 + 228);
	*(boolean*)((uint8*)THIS$1 + 232) = *(boolean*)((uint8*)__FB_RHS__$1 + 232);
	*(int32*)((uint8*)THIS$1 + 236) = *(int32*)((uint8*)__FB_RHS__$1 + 236);
	*(int32*)((uint8*)THIS$1 + 240) = *(int32*)((uint8*)__FB_RHS__$1 + 240);
	*(int32*)((uint8*)THIS$1 + 244) = *(int32*)((uint8*)__FB_RHS__$1 + 244);
	label$13:;
}

static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 68) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 56) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 44) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 32) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* THIS$1 )
{
	__builtin_memset( (uint32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 32), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 36), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 40), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 44), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 48), 0, 4 );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 56), 0, 8 );
	label$18:;
	label$19:;
}

static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX* THIS$1, struct $6DBGCTX* __FB_RHS__$1 )
{
	label$20:;
	*(uint32*)THIS$1 = *(uint32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 32);
	*(int32*)((uint8*)THIS$1 + 36) = *(int32*)((uint8*)__FB_RHS__$1 + 36);
	*(int32*)((uint8*)THIS$1 + 40) = *(int32*)((uint8*)__FB_RHS__$1 + 40);
	*(int32*)((uint8*)THIS$1 + 44) = *(int32*)((uint8*)__FB_RHS__$1 + 44);
	*(int32*)((uint8*)THIS$1 + 48) = *(int32*)((uint8*)__FB_RHS__$1 + 48);
	*(int64*)((uint8*)THIS$1 + 56) = *(int64*)((uint8*)__FB_RHS__$1 + 56);
	label$21:;
}

static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	label$26:;
	label$27:;
}

static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR* THIS$1, struct $7TDBGSTR* __FB_RHS__$1 )
{
	label$28:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	label$29:;
}

static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* THIS$1 )
{
	label$32:;
	label$33:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	label$34:;
	label$35:;
}

static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB* THIS$1, struct $8TDBGSTAB* __FB_RHS__$1 )
{
	label$36:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	label$37:;
}

static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* THIS$1 )
{
	label$40:;
	label$41:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void CHECK_OPTIM( FBSTRING* CODE$1 )
{
	label$42:;
	FBSTRING PART1$1;
	__builtin_memset( &PART1$1, 0, 12 );
	FBSTRING PART2$1;
	__builtin_memset( &PART2$1, 0, 12 );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 12 );
	FBSTRING NEWCODE$1;
	__builtin_memset( &NEWCODE$1, 0, 12 );
	static FBSTRING PREVPART1$1;
	static FBSTRING PREVPART2$1;
	static FBSTRING PREVINSTRUC$1;
	static int32 PREVWPOS$1;
	static int32 FLAG$1;
	int32 POSCHAR1$1;
	__builtin_memset( &POSCHAR1$1, 0, 4 );
	int32 POSCHAR2$1;
	__builtin_memset( &POSCHAR2$1, 0, 4 );
	int32 WRITEPOS$1;
	__builtin_memset( &WRITEPOS$1, 0, 4 );
	int32 vr$7 = fb_StrLen( (void*)CODE$1, -1 );
	if( vr$7 != 0 ) goto label$45;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$45:;
	label$44:;
	if( FLAG$1 != 2 ) goto label$47;
	{
		FBSTRING TMP$191$2;
		__builtin_memset( &TMP$191$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$191$2, (void*)&PREVPART1$1, -1, (void*)":", 2 );
		int32 vr$15 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$14 );
		if( vr$15 == 0 ) goto label$49;
		{
			FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (char*)"#O9", 3 );
			fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$16 );
		}
		label$49:;
		label$48:;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$47:;
	label$46:;
	{
		FBSTRING TMP$193$2;
		FBSTRING* vr$22 = fb_LEFT( (FBSTRING*)CODE$1, 3 );
		fb_StrInit( (void*)&TMP$193$2, -1, (void*)vr$22, -1, 0 );
		int32 vr$25 = fb_StrCompare( (void*)&TMP$193$2, -1, (void*)"mov", 4 );
		if( vr$25 != 0 ) goto label$51;
		label$52:;
		{
			int32 vr$27 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$27 + 1;
			FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (char*)" ", 1 );
			int32 vr$30 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$29 );
			POSCHAR1$1 = vr$30;
			FBSTRING* vr$32 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$32, -1, 0 );
			FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (char*)",", 1 );
			int32 vr$35 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$34 );
			POSCHAR2$1 = vr$35;
			FBSTRING* vr$39 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$40 = fb_TRIM( (FBSTRING*)vr$39 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$40, -1, 0 );
			FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (char*)"#", 1 );
			int32 vr$43 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$42 );
			POSCHAR1$1 = vr$43;
			if( POSCHAR1$1 != 0 ) goto label$54;
			{
				int32 vr$44 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$44;
			}
			goto label$53;
			label$54:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$53:;
			FBSTRING* vr$48 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$49 = fb_TRIM( (FBSTRING*)vr$48 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$49, -1, 0 );
			int32 vr$53 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PART2$1, -1 );
			if( vr$53 != 0 ) goto label$56;
			{
				FBSTRING TMP$199$4;
				__builtin_memset( &TMP$199$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$199$4, (void*)"#O0", 4, (void*)CODE$1, -1 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$56, -1, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
				fb_StrDelete( (FBSTRING*)&TMP$193$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$56:;
			label$55:;
		}
		goto label$50;
		label$51:;
		int32 vr$63 = fb_StrCompare( (void*)&TMP$193$2, -1, (void*)"lea", 4 );
		if( vr$63 != 0 ) goto label$57;
		label$58:;
		{
			int32 vr$65 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$65 + 1;
			FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (char*)" ", 1 );
			int32 vr$68 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$67 );
			POSCHAR1$1 = vr$68;
			FBSTRING* vr$70 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$70, -1, 0 );
			FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (char*)",", 1 );
			int32 vr$73 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$72 );
			POSCHAR2$1 = vr$73;
			FBSTRING* vr$77 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$78 = fb_TRIM( (FBSTRING*)vr$77 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$78, -1, 0 );
			FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (char*)"#", 1 );
			int32 vr$81 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$80 );
			POSCHAR1$1 = vr$81;
			if( POSCHAR1$1 != 0 ) goto label$60;
			{
				int32 vr$82 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$82;
			}
			goto label$59;
			label$60:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$59:;
			FBSTRING* vr$86 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$87 = fb_TRIM( (FBSTRING*)vr$86 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$87, -1, 0 );
			FBSTRING* vr$89 = fb_StrAllocTempDescZEx( (char*)"   add ", 7 );
			int32 vr$90 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$89 );
			if( vr$90 == 0 ) goto label$62;
			{
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$193$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$62:;
			label$61:;
			FLAG$1 = 1;
			fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
			PREVWPOS$1 = WRITEPOS$1;
			fb_StrDelete( (FBSTRING*)&TMP$193$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		goto label$50;
		label$57:;
		int32 vr$104 = fb_StrCompare( (void*)&TMP$193$2, -1, (void*)"jmp", 4 );
		if( vr$104 != 0 ) goto label$63;
		label$64:;
		{
			int32 vr$106 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
			WRITEPOS$1 = vr$106 + 1;
			FBSTRING* vr$108 = fb_StrAllocTempDescZEx( (char*)" ", 1 );
			int32 vr$109 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$108 );
			POSCHAR1$1 = vr$109;
			FBSTRING* vr$111 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
			fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$111, -1, 0 );
			FBSTRING* vr$113 = fb_StrAllocTempDescZEx( (char*)",", 1 );
			int32 vr$114 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$113 );
			POSCHAR2$1 = vr$114;
			FBSTRING* vr$118 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
			FBSTRING* vr$119 = fb_TRIM( (FBSTRING*)vr$118 );
			fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$119, -1, 0 );
			FBSTRING* vr$121 = fb_StrAllocTempDescZEx( (char*)"#", 1 );
			int32 vr$122 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$121 );
			POSCHAR1$1 = vr$122;
			if( POSCHAR1$1 != 0 ) goto label$66;
			{
				int32 vr$123 = fb_StrLen( (void*)CODE$1, -1 );
				POSCHAR1$1 = vr$123;
			}
			goto label$65;
			label$66:;
			{
				POSCHAR1$1 = POSCHAR1$1 + -2;
			}
			label$65:;
			FBSTRING* vr$127 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
			FBSTRING* vr$128 = fb_TRIM( (FBSTRING*)vr$127 );
			fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$128, -1, 0 );
			int32 vr$131 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART1$1, -1 );
			if( vr$131 != 0 ) goto label$68;
			{
				FBSTRING TMP$207$4;
				FBSTRING TMP$208$4;
				FBSTRING TMP$209$4;
				FBSTRING TMP$210$4;
				FBSTRING TMP$211$4;
				FBSTRING TMP$212$4;
				FBSTRING* vr$132 = fb_StrAllocTempDescZEx( (char*)"#10", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$132 );
				FBSTRING* vr$135 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$207$4, 0, 12 );
				FBSTRING* vr$138 = fb_StrConcat( &TMP$207$4, (void*)"#10", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$208$4, 0, 12 );
				FBSTRING* vr$141 = fb_StrConcat( &TMP$208$4, (void*)vr$138, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$209$4, 0, 12 );
				FBSTRING* vr$144 = fb_StrConcat( &TMP$209$4, (void*)vr$141, -1, (void*)vr$135, -1 );
				__builtin_memset( &TMP$210$4, 0, 12 );
				FBSTRING* vr$147 = fb_StrConcat( &TMP$210$4, (void*)vr$144, -1, (void*)"jmp ", 5 );
				__builtin_memset( &TMP$211$4, 0, 12 );
				FBSTRING* vr$150 = fb_StrConcat( &TMP$211$4, (void*)vr$147, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$212$4, 0, 12 );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$212$4, (void*)vr$150, -1, (void*)" #Optim 10", 11 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$153, -1, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
				fb_StrDelete( (FBSTRING*)&TMP$193$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			goto label$67;
			label$68:;
			{
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
				FLAG$1 = 2;
				PREVWPOS$1 = WRITEPOS$1;
				fb_StrDelete( (FBSTRING*)&TMP$193$2 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$67:;
		}
		goto label$50;
		label$63:;
		int32 vr$166 = fb_StrCompare( (void*)&TMP$193$2, -1, (void*)"cmp", 4 );
		if( vr$166 != 0 ) goto label$69;
		label$70:;
		{
			int32 vr$167 = fb_StrLen( (void*)&PREVPART1$1, -1 );
			if( vr$167 == 0 ) goto label$72;
			{
				if( FLAG$1 == 1 ) goto label$74;
				{
					int32 vr$169 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					WRITEPOS$1 = vr$169 + 1;
					FBSTRING* vr$171 = fb_StrAllocTempDescZEx( (char*)" ", 1 );
					int32 vr$172 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$171 );
					POSCHAR1$1 = vr$172;
					FBSTRING* vr$174 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
					fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$174, -1, 0 );
					FBSTRING* vr$176 = fb_StrAllocTempDescZEx( (char*)",", 1 );
					int32 vr$177 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$176 );
					POSCHAR2$1 = vr$177;
					FBSTRING* vr$181 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
					FBSTRING* vr$182 = fb_TRIM( (FBSTRING*)vr$181 );
					fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$182, -1, 0 );
					FBSTRING* vr$184 = fb_StrAllocTempDescZEx( (char*)"#", 1 );
					int32 vr$185 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$184 );
					POSCHAR1$1 = vr$185;
					if( POSCHAR1$1 != 0 ) goto label$76;
					{
						int32 vr$186 = fb_StrLen( (void*)CODE$1, -1 );
						POSCHAR1$1 = vr$186;
					}
					goto label$75;
					label$76:;
					{
						POSCHAR1$1 = POSCHAR1$1 + -2;
					}
					label$75:;
					FBSTRING* vr$190 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
					FBSTRING* vr$191 = fb_TRIM( (FBSTRING*)vr$190 );
					fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$191, -1, 0 );
					if( (uint32)(int32)*(uint8*)*(char**)&PART1$1 != 114u ) goto label$78;
					{
						int32 vr$196 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART1$1, -1 );
						if( (-(vr$196 == 0) & -((uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 == 114u)) == 0 ) goto label$80;
						{
							FBSTRING TMP$219$7;
							FBSTRING TMP$220$7;
							FBSTRING TMP$221$7;
							FBSTRING TMP$222$7;
							FBSTRING TMP$223$7;
							FBSTRING TMP$224$7;
							FBSTRING TMP$225$7;
							FBSTRING TMP$226$7;
							FBSTRING* vr$202 = fb_StrAllocTempDescZEx( (char*)"#13", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$202 );
							FBSTRING* vr$206 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$219$7, 0, 12 );
							FBSTRING* vr$209 = fb_StrConcat( &TMP$219$7, (void*)"#13", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$220$7, 0, 12 );
							FBSTRING* vr$212 = fb_StrConcat( &TMP$220$7, (void*)vr$209, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$221$7, 0, 12 );
							FBSTRING* vr$215 = fb_StrConcat( &TMP$221$7, (void*)vr$212, -1, (void*)vr$206, -1 );
							__builtin_memset( &TMP$222$7, 0, 12 );
							FBSTRING* vr$218 = fb_StrConcat( &TMP$222$7, (void*)vr$215, -1, (void*)"cmp ", 5 );
							__builtin_memset( &TMP$223$7, 0, 12 );
							FBSTRING* vr$221 = fb_StrConcat( &TMP$223$7, (void*)vr$218, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$224$7, 0, 12 );
							FBSTRING* vr$224 = fb_StrConcat( &TMP$224$7, (void*)vr$221, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$225$7, 0, 12 );
							FBSTRING* vr$227 = fb_StrConcat( &TMP$225$7, (void*)vr$224, -1, (void*)&PART2$1, -1 );
							__builtin_memset( &TMP$226$7, 0, 12 );
							FBSTRING* vr$230 = fb_StrConcat( &TMP$226$7, (void*)vr$227, -1, (void*)" #Optim 13", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$230, -1, 0 );
						}
						goto label$79;
						label$80:;
						int32 vr$232 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
						FBSTRING* vr$234 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
						int32 vr$235 = fb_StrInstr( 1, (FBSTRING*)&PREVPART2$1, (FBSTRING*)vr$234 );
						if( (-(vr$232 == 0) & vr$235) == 0 ) goto label$81;
						{
							FBSTRING TMP$230$7;
							FBSTRING TMP$231$7;
							FBSTRING TMP$232$7;
							FBSTRING TMP$233$7;
							FBSTRING TMP$234$7;
							FBSTRING TMP$235$7;
							FBSTRING TMP$236$7;
							FBSTRING TMP$237$7;
							FBSTRING* vr$237 = fb_StrAllocTempDescZEx( (char*)"#14", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$237 );
							FBSTRING* vr$241 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$230$7, 0, 12 );
							FBSTRING* vr$244 = fb_StrConcat( &TMP$230$7, (void*)"#14", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$231$7, 0, 12 );
							FBSTRING* vr$247 = fb_StrConcat( &TMP$231$7, (void*)vr$244, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$232$7, 0, 12 );
							FBSTRING* vr$250 = fb_StrConcat( &TMP$232$7, (void*)vr$247, -1, (void*)vr$241, -1 );
							__builtin_memset( &TMP$233$7, 0, 12 );
							FBSTRING* vr$253 = fb_StrConcat( &TMP$233$7, (void*)vr$250, -1, (void*)"cmp ", 5 );
							__builtin_memset( &TMP$234$7, 0, 12 );
							FBSTRING* vr$256 = fb_StrConcat( &TMP$234$7, (void*)vr$253, -1, (void*)&PART1$1, -1 );
							__builtin_memset( &TMP$235$7, 0, 12 );
							FBSTRING* vr$259 = fb_StrConcat( &TMP$235$7, (void*)vr$256, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$236$7, 0, 12 );
							FBSTRING* vr$262 = fb_StrConcat( &TMP$236$7, (void*)vr$259, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$237$7, 0, 12 );
							FBSTRING* vr$265 = fb_StrConcat( &TMP$237$7, (void*)vr$262, -1, (void*)" #Optim 14", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$265, -1, 0 );
						}
						label$81:;
						label$79:;
					}
					label$78:;
					label$77:;
				}
				label$74:;
				label$73:;
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
			}
			label$72:;
			label$71:;
			fb_StrDelete( (FBSTRING*)&TMP$193$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		goto label$50;
		label$69:;
		{
			{
				FBSTRING TMP$238$4;
				FBSTRING* vr$271 = fb_LEFT( (FBSTRING*)CODE$1, 4 );
				fb_StrInit( (void*)&TMP$238$4, -1, (void*)vr$271, -1, 0 );
				int32 vr$274 = fb_StrCompare( (void*)&TMP$238$4, -1, (void*)"adds", 5 );
				if( vr$274 == 0 ) goto label$85;
				label$86:;
				int32 vr$276 = fb_StrCompare( (void*)&TMP$238$4, -1, (void*)"subs", 5 );
				if( vr$276 == 0 ) goto label$85;
				label$87:;
				int32 vr$278 = fb_StrCompare( (void*)&TMP$238$4, -1, (void*)"muls", 5 );
				if( vr$278 == 0 ) goto label$85;
				label$88:;
				int32 vr$280 = fb_StrCompare( (void*)&TMP$238$4, -1, (void*)"divs", 5 );
				if( vr$280 != 0 ) goto label$84;
				label$85:;
				{
					int32 vr$282 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					WRITEPOS$1 = vr$282 + 1;
					FBSTRING* vr$284 = fb_StrAllocTempDescZEx( (char*)" ", 1 );
					int32 vr$285 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$284 );
					POSCHAR1$1 = vr$285;
					FBSTRING* vr$287 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
					fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$287, -1, 0 );
					FBSTRING* vr$289 = fb_StrAllocTempDescZEx( (char*)",", 1 );
					int32 vr$290 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$289 );
					POSCHAR2$1 = vr$290;
					FBSTRING* vr$294 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
					FBSTRING* vr$295 = fb_TRIM( (FBSTRING*)vr$294 );
					fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$295, -1, 0 );
					FBSTRING* vr$297 = fb_StrAllocTempDescZEx( (char*)"#", 1 );
					int32 vr$298 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$297 );
					POSCHAR1$1 = vr$298;
					if( POSCHAR1$1 != 0 ) goto label$90;
					{
						int32 vr$299 = fb_StrLen( (void*)CODE$1, -1 );
						POSCHAR1$1 = vr$299;
					}
					goto label$89;
					label$90:;
					{
						POSCHAR1$1 = POSCHAR1$1 + -2;
					}
					label$89:;
					FBSTRING* vr$303 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 1, POSCHAR1$1 - POSCHAR2$1 );
					FBSTRING* vr$304 = fb_TRIM( (FBSTRING*)vr$303 );
					fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$304, -1, 0 );
					int32 vr$307 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
					if( vr$307 != 0 ) goto label$92;
					{
						FBSTRING* vr$308 = fb_StrAllocTempDescZEx( (char*)"[r", 2 );
						int32 vr$309 = fb_StrInstr( 1, (FBSTRING*)&PREVPART2$1, (FBSTRING*)vr$308 );
						if( vr$309 == 0 ) goto label$94;
						{
							FBSTRING TMP$246$7;
							FBSTRING TMP$247$7;
							FBSTRING TMP$248$7;
							FBSTRING TMP$249$7;
							FBSTRING TMP$250$7;
							FBSTRING TMP$251$7;
							FBSTRING TMP$252$7;
							FBSTRING TMP$253$7;
							FBSTRING TMP$254$7;
							FBSTRING* vr$310 = fb_StrAllocTempDescZEx( (char*)"#15", 3 );
							fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$310 );
							FBSTRING* vr$315 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$246$7, 0, 12 );
							FBSTRING* vr$318 = fb_StrConcat( &TMP$246$7, (void*)"#15", 4, (void*)CODE$1, -1 );
							__builtin_memset( &TMP$247$7, 0, 12 );
							FBSTRING* vr$321 = fb_StrConcat( &TMP$247$7, (void*)vr$318, -1, (void*)"\x0A", 2 );
							__builtin_memset( &TMP$248$7, 0, 12 );
							FBSTRING* vr$324 = fb_StrConcat( &TMP$248$7, (void*)vr$321, -1, (void*)vr$315, -1 );
							__builtin_memset( &TMP$249$7, 0, 12 );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$249$7, (void*)vr$324, -1, (void*)&INSTRUC$1, -1 );
							__builtin_memset( &TMP$250$7, 0, 12 );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$250$7, (void*)vr$327, -1, (void*)" ", 2 );
							__builtin_memset( &TMP$251$7, 0, 12 );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$251$7, (void*)vr$330, -1, (void*)&PART1$1, -1 );
							__builtin_memset( &TMP$252$7, 0, 12 );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$252$7, (void*)vr$333, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$253$7, 0, 12 );
							FBSTRING* vr$339 = fb_StrConcat( &TMP$253$7, (void*)vr$336, -1, (void*)&PREVPART2$1, -1 );
							__builtin_memset( &TMP$254$7, 0, 12 );
							FBSTRING* vr$342 = fb_StrConcat( &TMP$254$7, (void*)vr$339, -1, (void*)" #Optim 15", 11 );
							fb_StrAssign( (void*)CODE$1, -1, (void*)vr$342, -1, 0 );
						}
						label$94:;
						label$93:;
					}
					label$92:;
					label$91:;
				}
				label$84:;
				label$83:;
				fb_StrDelete( (FBSTRING*)&TMP$238$4 );
			}
			fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
			fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
			FLAG$1 = 0;
			fb_StrDelete( (FBSTRING*)&TMP$193$2 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
		}
		label$82:;
		label$50:;
		fb_StrDelete( (FBSTRING*)&TMP$193$2 );
	}
	int32 vr$351 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsxd", 7 );
	if( vr$351 != 0 ) goto label$96;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$96:;
	}
	int32 vr$357 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsx", 6 );
	if( vr$357 != 0 ) goto label$98;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$98:;
	}
	int32 vr$363 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movzx", 6 );
	if( vr$363 != 0 ) goto label$100;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$100:;
	}
	if( FLAG$1 != 1 ) goto label$102;
	{
		FBSTRING TMP$259$2;
		FBSTRING TMP$260$2;
		__builtin_memset( &TMP$259$2, 0, 12 );
		FBSTRING* vr$370 = fb_StrConcat( &TMP$259$2, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
		__builtin_memset( &TMP$260$2, 0, 12 );
		FBSTRING* vr$373 = fb_StrConcat( &TMP$260$2, (void*)vr$370, -1, (void*)"]", 2 );
		int32 vr$375 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$373 );
		if( vr$375 == 0 ) goto label$104;
		{
			FBSTRING* vr$384 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$385 = fb_ASC( (FBSTRING*)vr$384, 1 );
			FBSTRING* vr$388 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$389 = fb_ASC( (FBSTRING*)vr$388, 1 );
			if( ((-((uint32)(int32)*(uint8*)*(char**)&PART2$1 == 114u) | -((uint32)(int32)*(uint8*)*(char**)&PART2$1 == 101u)) | (-(vr$385 >= 48u) & -(vr$389 <= 57u))) == 0 ) goto label$106;
			{
				FBSTRING TMP$264$4;
				FBSTRING TMP$265$4;
				FBSTRING TMP$266$4;
				FBSTRING TMP$267$4;
				FBSTRING TMP$268$4;
				FBSTRING* vr$393 = fb_StrAllocTempDescZEx( (char*)"#O4", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$393 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&INSTRUC$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
				FBSTRING* vr$398 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$400 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$398 );
				FBSTRING* vr$403 = fb_StrMid( (FBSTRING*)&PART1$1, 1, vr$400 + -1 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)vr$403, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART2$1, -1, 0 );
				int32 vr$410 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$411 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$410 + vr$411) + 9;
				FBSTRING* vr$416 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$264$4, 0, 12 );
				FBSTRING* vr$419 = fb_StrConcat( &TMP$264$4, (void*)"#O4", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$265$4, 0, 12 );
				FBSTRING* vr$422 = fb_StrConcat( &TMP$265$4, (void*)vr$419, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$266$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$266$4, (void*)vr$422, -1, (void*)vr$416, -1 );
				__builtin_memset( &TMP$267$4, 0, 12 );
				FBSTRING* vr$428 = fb_StrConcat( &TMP$267$4, (void*)vr$425, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$268$4, 0, 12 );
				FBSTRING* vr$431 = fb_StrConcat( &TMP$268$4, (void*)vr$428, -1, (void*)" #Optim 4", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$431, -1, 0 );
			}
			label$106:;
			label$105:;
		}
		goto label$103;
		label$104:;
		{
			int32 vr$433 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
			if( (-(vr$433 == 0) & -((uint32)(int32)*(uint8*)*(char**)&PART1$1 == 114u)) == 0 ) goto label$108;
			{
				FBSTRING TMP$272$4;
				FBSTRING TMP$273$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$275$4;
				FBSTRING TMP$276$4;
				FBSTRING* vr$439 = fb_StrAllocTempDescZEx( (char*)"#O5", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$439 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)"lea ", 5, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				int32 vr$447 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$448 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$447 + vr$448) + 9;
				FBSTRING* vr$453 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$272$4, 0, 12 );
				FBSTRING* vr$456 = fb_StrConcat( &TMP$272$4, (void*)"#O5", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$273$4, 0, 12 );
				FBSTRING* vr$459 = fb_StrConcat( &TMP$273$4, (void*)vr$456, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$274$4, 0, 12 );
				FBSTRING* vr$462 = fb_StrConcat( &TMP$274$4, (void*)vr$459, -1, (void*)vr$453, -1 );
				__builtin_memset( &TMP$275$4, 0, 12 );
				FBSTRING* vr$465 = fb_StrConcat( &TMP$275$4, (void*)vr$462, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$276$4, 0, 12 );
				FBSTRING* vr$468 = fb_StrConcat( &TMP$276$4, (void*)vr$465, -1, (void*)" #Optim 5", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$468, -1, 0 );
			}
			goto label$107;
			label$108:;
			{
				FBSTRING TMP$277$4;
				FBSTRING TMP$278$4;
				int32 TMP$279$4;
				if( (uint32)(int32)*(uint8*)*(char**)&PART1$1 != 114u ) goto label$109;
				__builtin_memset( &TMP$277$4, 0, 12 );
				FBSTRING* vr$473 = fb_StrConcat( &TMP$277$4, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
				__builtin_memset( &TMP$278$4, 0, 12 );
				FBSTRING* vr$476 = fb_StrConcat( &TMP$278$4, (void*)vr$473, -1, (void*)"]", 2 );
				int32 vr$478 = fb_StrCompare( (void*)&PART2$1, -1, (void*)vr$476, -1 );
				TMP$279$4 = -(vr$478 == 0);
				goto label$3075;
				label$109:;
				TMP$279$4 = 0;
				label$3075:;
				if( TMP$279$4 == 0 ) goto label$111;
				{
					FBSTRING TMP$282$5;
					FBSTRING TMP$283$5;
					FBSTRING TMP$284$5;
					FBSTRING TMP$285$5;
					FBSTRING TMP$286$5;
					FBSTRING* vr$480 = fb_StrAllocTempDescZEx( (char*)"#O7", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$480 );
					fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&INSTRUC$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
					int32 vr$490 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					int32 vr$491 = fb_StrLen( (void*)CODE$1, -1 );
					WRITEPOS$1 = (vr$490 + vr$491) + 9;
					FBSTRING* vr$496 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
					__builtin_memset( &TMP$282$5, 0, 12 );
					FBSTRING* vr$499 = fb_StrConcat( &TMP$282$5, (void*)"#O7", 4, (void*)CODE$1, -1 );
					__builtin_memset( &TMP$283$5, 0, 12 );
					FBSTRING* vr$502 = fb_StrConcat( &TMP$283$5, (void*)vr$499, -1, (void*)"\x0A", 2 );
					__builtin_memset( &TMP$284$5, 0, 12 );
					FBSTRING* vr$505 = fb_StrConcat( &TMP$284$5, (void*)vr$502, -1, (void*)vr$496, -1 );
					__builtin_memset( &TMP$285$5, 0, 12 );
					FBSTRING* vr$508 = fb_StrConcat( &TMP$285$5, (void*)vr$505, -1, (void*)&NEWCODE$1, -1 );
					__builtin_memset( &TMP$286$5, 0, 12 );
					FBSTRING* vr$511 = fb_StrConcat( &TMP$286$5, (void*)vr$508, -1, (void*)" #Optim 7", 10 );
					fb_StrAssign( (void*)CODE$1, -1, (void*)vr$511, -1, 0 );
				}
				goto label$110;
				label$111:;
				{
					fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
					fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
					fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					PREVWPOS$1 = WRITEPOS$1;
					FLAG$1 = 0;
					fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
					fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
					fb_StrDelete( (FBSTRING*)&PART2$1 );
					fb_StrDelete( (FBSTRING*)&PART1$1 );
					goto label$43;
				}
				label$110:;
			}
			label$107:;
		}
		label$103:;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$102:;
	label$101:;
	int32 vr$524 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
	if( vr$524 != 0 ) goto label$113;
	{
		int32 vr$526 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART2$1, -1 );
		if( vr$526 != 0 ) goto label$115;
		{
			FBSTRING TMP$288$3;
			__builtin_memset( &TMP$288$3, 0, 12 );
			FBSTRING* vr$529 = fb_StrConcat( &TMP$288$3, (void*)"#O1 ", 5, (void*)CODE$1, -1 );
			fb_StrAssign( (void*)CODE$1, -1, (void*)vr$529, -1, 0 );
		}
		goto label$114;
		label$115:;
		{
			int32 vr$530 = fb_StrCompare( (void*)&PREVPART2$1, -1, (void*)"", 1 );
			if( vr$530 != 0 ) goto label$117;
			{
				FBSTRING TMP$289$4;
				FBSTRING TMP$298$4;
				FBSTRING TMP$299$4;
				FBSTRING TMP$300$4;
				FBSTRING TMP$301$4;
				FBSTRING TMP$302$4;
				FBSTRING TMP$303$4;
				FBSTRING TMP$304$4;
				FBSTRING TMP$305$4;
				FBSTRING TMP$306$4;
				__builtin_memset( &TMP$289$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$289$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$289$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$289$4 );
				__builtin_memset( &TMP$305$4, 0, 12 );
				__builtin_memset( &TMP$298$4, 0, 12 );
				FBSTRING* vr$540 = fb_StrConcat( &TMP$298$4, (void*)"FOUND AN ERROR : prev/part empty part1=", 40, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$299$4, 0, 12 );
				FBSTRING* vr$543 = fb_StrConcat( &TMP$299$4, (void*)vr$540, -1, (void*)" part2=", 8 );
				__builtin_memset( &TMP$300$4, 0, 12 );
				FBSTRING* vr$546 = fb_StrConcat( &TMP$300$4, (void*)vr$543, -1, (void*)&PART2$1, -1 );
				__builtin_memset( &TMP$301$4, 0, 12 );
				FBSTRING* vr$549 = fb_StrConcat( &TMP$301$4, (void*)vr$546, -1, (void*)" prevpart1=", 12 );
				__builtin_memset( &TMP$302$4, 0, 12 );
				FBSTRING* vr$552 = fb_StrConcat( &TMP$302$4, (void*)vr$549, -1, (void*)&PREVPART1$1, -1 );
				__builtin_memset( &TMP$303$4, 0, 12 );
				FBSTRING* vr$555 = fb_StrConcat( &TMP$303$4, (void*)vr$552, -1, (void*)" prevpart2=", 12 );
				__builtin_memset( &TMP$304$4, 0, 12 );
				FBSTRING* vr$558 = fb_StrConcat( &TMP$304$4, (void*)vr$555, -1, (void*)&PREVPART2$1, -1 );
				fb_StrAssign( (void*)&TMP$305$4, -1, (void*)vr$558, -1, 0 );
				HWRITEASM64( &TMP$305$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$305$4 );
				__builtin_memset( &TMP$306$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$306$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$306$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$306$4 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$117:;
			label$116:;
			if( ((-((uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 == 114u) & -((uint32)(int32)*(uint8*)((uint8*)*(char**)&PART1$1 + 3) != 100u)) & -((uint32)(int32)*(uint8*)*(char**)&PART1$1 != 101u)) == 0 ) goto label$119;
			{
				FBSTRING TMP$314$4;
				FBSTRING TMP$315$4;
				FBSTRING TMP$316$4;
				FBSTRING TMP$317$4;
				FBSTRING TMP$318$4;
				FBSTRING TMP$319$4;
				FBSTRING TMP$320$4;
				FBSTRING TMP$321$4;
				FBSTRING TMP$322$4;
				FBSTRING* vr$581 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$582 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$581 );
				if( vr$582 == 0 ) goto label$121;
				{
					if( (uint32)(int32)*(uint8*)*(char**)&PART1$1 != 120u ) goto label$123;
					{
						int32 vr$586 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movss", 6 );
						if( vr$586 != 0 ) goto label$125;
						{
							fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$124;
						label$125:;
						{
							fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)"movq", 5, 0 );
						}
						label$124:;
					}
					label$123:;
					label$122:;
				}
				goto label$120;
				label$121:;
				{
					FBSTRING* vr$587 = fb_StrAllocTempDescZEx( (char*)"#O2", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$587 );
					int32 vr$590 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movq", 5 );
					int32 vr$593 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movd", 5 );
					if( (-(vr$590 == 0) | -(vr$593 == 0)) == 0 ) goto label$127;
					{
						fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					}
					goto label$126;
					label$127:;
					int32 vr$598 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"movsx", 6 );
					if( vr$598 != 0 ) goto label$128;
					{
						fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
					}
					label$128:;
					label$126:;
				}
				label$120:;
				int32 vr$601 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$602 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$601 + vr$602) + 9;
				FBSTRING* vr$607 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$314$4, 0, 12 );
				FBSTRING* vr$610 = fb_StrConcat( &TMP$314$4, (void*)"#O2", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$315$4, 0, 12 );
				FBSTRING* vr$613 = fb_StrConcat( &TMP$315$4, (void*)vr$610, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$316$4, 0, 12 );
				FBSTRING* vr$616 = fb_StrConcat( &TMP$316$4, (void*)vr$613, -1, (void*)vr$607, -1 );
				__builtin_memset( &TMP$317$4, 0, 12 );
				FBSTRING* vr$619 = fb_StrConcat( &TMP$317$4, (void*)vr$616, -1, (void*)&PREVINSTRUC$1, -1 );
				__builtin_memset( &TMP$318$4, 0, 12 );
				FBSTRING* vr$622 = fb_StrConcat( &TMP$318$4, (void*)vr$619, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$319$4, 0, 12 );
				FBSTRING* vr$625 = fb_StrConcat( &TMP$319$4, (void*)vr$622, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$320$4, 0, 12 );
				FBSTRING* vr$628 = fb_StrConcat( &TMP$320$4, (void*)vr$625, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$321$4, 0, 12 );
				FBSTRING* vr$631 = fb_StrConcat( &TMP$321$4, (void*)vr$628, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$322$4, 0, 12 );
				FBSTRING* vr$634 = fb_StrConcat( &TMP$322$4, (void*)vr$631, -1, (void*)" #Optim 2", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$634, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$119:;
			if( (uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 != 120u ) goto label$129;
			{
				FBSTRING TMP$332$4;
				FBSTRING TMP$333$4;
				FBSTRING TMP$334$4;
				FBSTRING TMP$335$4;
				FBSTRING TMP$336$4;
				FBSTRING TMP$337$4;
				FBSTRING TMP$338$4;
				FBSTRING TMP$339$4;
				FBSTRING TMP$340$4;
				FBSTRING* vr$638 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$639 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$638 );
				if( vr$639 == 0 ) goto label$131;
				{
					int32 vr$640 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movss", 6 );
					if( vr$640 != 0 ) goto label$133;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
					}
					goto label$132;
					label$133:;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
					}
					label$132:;
				}
				goto label$130;
				label$131:;
				{
					FBSTRING* vr$643 = fb_StrAllocTempDescZEx( (char*)"#O3", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$643 );
					int32 vr$645 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movq", 5 );
					if( vr$645 != 0 ) goto label$135;
					{
						FBSTRING* vr$646 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
						int32 vr$648 = fb_StrInstr( 1, (FBSTRING*)&PART2$1, (FBSTRING*)vr$646 );
						if( vr$648 == 0 ) goto label$137;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movsd", 6, 0 );
						}
						goto label$136;
						label$137:;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
						}
						label$136:;
					}
					goto label$134;
					label$135:;
					int32 vr$651 = fb_StrCompare( (void*)&PREVINSTRUC$1, -1, (void*)"movd", 5 );
					if( vr$651 != 0 ) goto label$138;
					{
						if( (-((uint32)(int32)*(uint8*)*(char**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(char**)&PART1$1 == 101u)) == 0 ) goto label$140;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$139;
						label$140:;
						{
							fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movss", 6, 0 );
						}
						label$139:;
					}
					goto label$134;
					label$138:;
					{
						FBSTRING TMP$325$6;
						FBSTRING TMP$328$6;
						FBSTRING TMP$329$6;
						FBSTRING TMP$330$6;
						__builtin_memset( &TMP$325$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$325$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$325$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$325$6 );
						__builtin_memset( &TMP$329$6, 0, 12 );
						__builtin_memset( &TMP$328$6, 0, 12 );
						FBSTRING* vr$669 = fb_StrConcat( &TMP$328$6, (void*)"FOUND AN ERROR : in check_optim 3-2 instruc unknown=", 53, (void*)&INSTRUC$1, -1 );
						fb_StrAssign( (void*)&TMP$329$6, -1, (void*)vr$669, -1, 0 );
						HWRITEASM64( &TMP$329$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$329$6 );
						__builtin_memset( &TMP$330$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$330$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$330$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$330$6 );
					}
					label$134:;
				}
				label$130:;
				int32 vr$678 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$679 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$678 + vr$679) + 9;
				FBSTRING* vr$685 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$332$4, 0, 12 );
				FBSTRING* vr$688 = fb_StrConcat( &TMP$332$4, (void*)"#O3", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$333$4, 0, 12 );
				FBSTRING* vr$691 = fb_StrConcat( &TMP$333$4, (void*)vr$688, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$334$4, 0, 12 );
				FBSTRING* vr$694 = fb_StrConcat( &TMP$334$4, (void*)vr$691, -1, (void*)vr$685, -1 );
				__builtin_memset( &TMP$335$4, 0, 12 );
				FBSTRING* vr$697 = fb_StrConcat( &TMP$335$4, (void*)vr$694, -1, (void*)&INSTRUC$1, -1 );
				__builtin_memset( &TMP$336$4, 0, 12 );
				FBSTRING* vr$700 = fb_StrConcat( &TMP$336$4, (void*)vr$697, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$337$4, 0, 12 );
				FBSTRING* vr$703 = fb_StrConcat( &TMP$337$4, (void*)vr$700, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$338$4, 0, 12 );
				FBSTRING* vr$706 = fb_StrConcat( &TMP$338$4, (void*)vr$703, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$339$4, 0, 12 );
				FBSTRING* vr$709 = fb_StrConcat( &TMP$339$4, (void*)vr$706, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$340$4, 0, 12 );
				FBSTRING* vr$712 = fb_StrConcat( &TMP$340$4, (void*)vr$709, -1, (void*)" #Optim 3", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$712, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$129:;
			int32 vr$722 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
			FBSTRING* vr$725 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
			int32 vr$726 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$725 );
			if( (((-((uint32)(int32)*(uint8*)*(char**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(char**)&PART1$1 == 101u)) & -(vr$722 == 0)) & -(vr$726 == 0)) == 0 ) goto label$141;
			{
				FBSTRING TMP$343$4;
				FBSTRING TMP$344$4;
				FBSTRING TMP$345$4;
				FBSTRING TMP$346$4;
				FBSTRING TMP$347$4;
				FBSTRING TMP$348$4;
				FBSTRING TMP$349$4;
				FBSTRING TMP$350$4;
				FBSTRING TMP$351$4;
				FBSTRING* vr$729 = fb_StrAllocTempDescZEx( (char*)"#O6", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$729 );
				int32 vr$732 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$733 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$732 + vr$733) + 9;
				FBSTRING* vr$738 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$343$4, 0, 12 );
				FBSTRING* vr$741 = fb_StrConcat( &TMP$343$4, (void*)"#O6", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$344$4, 0, 12 );
				FBSTRING* vr$744 = fb_StrConcat( &TMP$344$4, (void*)vr$741, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$345$4, 0, 12 );
				FBSTRING* vr$747 = fb_StrConcat( &TMP$345$4, (void*)vr$744, -1, (void*)vr$738, -1 );
				__builtin_memset( &TMP$346$4, 0, 12 );
				FBSTRING* vr$750 = fb_StrConcat( &TMP$346$4, (void*)vr$747, -1, (void*)&PREVINSTRUC$1, -1 );
				__builtin_memset( &TMP$347$4, 0, 12 );
				FBSTRING* vr$753 = fb_StrConcat( &TMP$347$4, (void*)vr$750, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$348$4, 0, 12 );
				FBSTRING* vr$756 = fb_StrConcat( &TMP$348$4, (void*)vr$753, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$349$4, 0, 12 );
				FBSTRING* vr$759 = fb_StrConcat( &TMP$349$4, (void*)vr$756, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$350$4, 0, 12 );
				FBSTRING* vr$762 = fb_StrConcat( &TMP$350$4, (void*)vr$759, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$351$4, 0, 12 );
				FBSTRING* vr$765 = fb_StrConcat( &TMP$351$4, (void*)vr$762, -1, (void*)" #Optim 6", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$765, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$118;
			label$141:;
			int32 vr$775 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
			if( ((-((uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 == 114u) | -((uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 == 101u)) & -(vr$775 == 0)) == 0 ) goto label$142;
			{
				FBSTRING TMP$354$4;
				FBSTRING TMP$355$4;
				FBSTRING TMP$356$4;
				FBSTRING TMP$357$4;
				FBSTRING TMP$358$4;
				FBSTRING TMP$359$4;
				FBSTRING TMP$360$4;
				FBSTRING TMP$361$4;
				FBSTRING TMP$362$4;
				FBSTRING* vr$778 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$779 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$778 );
				if( vr$779 != 0 ) goto label$144;
				{
					FBSTRING* vr$780 = fb_StrAllocTempDescZEx( (char*)"#16", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$780 );
				}
				label$144:;
				label$143:;
				if( (uint32)(int32)*(uint8*)*(char**)&PART1$1 != 120u ) goto label$146;
				{
					if( (uint32)(int32)*(uint8*)*(char**)&PREVPART2$1 != 101u ) goto label$148;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movd", 5, 0 );
					}
					goto label$147;
					label$148:;
					{
						fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"movq", 5, 0 );
					}
					label$147:;
				}
				label$146:;
				label$145:;
				int32 vr$789 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$790 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$789 + vr$790) + 9;
				FBSTRING* vr$796 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$354$4, 0, 12 );
				FBSTRING* vr$799 = fb_StrConcat( &TMP$354$4, (void*)"#16", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$355$4, 0, 12 );
				FBSTRING* vr$802 = fb_StrConcat( &TMP$355$4, (void*)vr$799, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$356$4, 0, 12 );
				FBSTRING* vr$805 = fb_StrConcat( &TMP$356$4, (void*)vr$802, -1, (void*)vr$796, -1 );
				__builtin_memset( &TMP$357$4, 0, 12 );
				FBSTRING* vr$808 = fb_StrConcat( &TMP$357$4, (void*)vr$805, -1, (void*)&INSTRUC$1, -1 );
				__builtin_memset( &TMP$358$4, 0, 12 );
				FBSTRING* vr$811 = fb_StrConcat( &TMP$358$4, (void*)vr$808, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$359$4, 0, 12 );
				FBSTRING* vr$814 = fb_StrConcat( &TMP$359$4, (void*)vr$811, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$360$4, 0, 12 );
				FBSTRING* vr$817 = fb_StrConcat( &TMP$360$4, (void*)vr$814, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$361$4, 0, 12 );
				FBSTRING* vr$820 = fb_StrConcat( &TMP$361$4, (void*)vr$817, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$362$4, 0, 12 );
				FBSTRING* vr$823 = fb_StrConcat( &TMP$362$4, (void*)vr$820, -1, (void*)" #Optim 16", 11 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$823, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			label$142:;
			label$118:;
		}
		label$114:;
	}
	label$113:;
	label$112:;
	fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
	fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
	fb_StrAssign( (void*)&PREVINSTRUC$1, -1, (void*)&INSTRUC$1, -1, 0 );
	PREVWPOS$1 = WRITEPOS$1;
	fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	fb_StrDelete( (FBSTRING*)&PART2$1 );
	fb_StrDelete( (FBSTRING*)&PART1$1 );
	label$43:;
}

static void REG_FREEABLE( FBSTRING* LINEASM$1 )
{
	int32 TMP$365$1;
	int32 TMP$367$1;
	int32 TMP$369$1;
	label$149:;
	int32 REGFOUND1$1;
	__builtin_memset( &REGFOUND1$1, 0, 4 );
	int32 REGFOUND2$1;
	__builtin_memset( &REGFOUND2$1, 0, 4 );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 12 );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)LINEASM$1 );
	FBSTRING* vr$4 = fb_LEFT( (FBSTRING*)vr$3, 3 );
	fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$4, -1, 0 );
	int32 vr$7 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"inc", 4 );
	if( vr$7 == 0 ) goto label$151;
	int32 vr$9 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"dec", 4 );
	TMP$365$1 = -(vr$9 == 0);
	goto label$3076;
	label$151:;
	TMP$365$1 = -1;
	label$3076:;
	if( TMP$365$1 != 0 ) goto label$152;
	int32 vr$12 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"not", 4 );
	TMP$367$1 = -(vr$12 == 0);
	goto label$3077;
	label$152:;
	TMP$367$1 = -1;
	label$3077:;
	if( TMP$367$1 != 0 ) goto label$153;
	int32 vr$15 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"neg", 4 );
	TMP$369$1 = -(vr$15 == 0);
	goto label$3078;
	label$153:;
	TMP$369$1 = -1;
	label$3078:;
	if( TMP$369$1 == 0 ) goto label$155;
	{
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
		int32 vr$18 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$17 );
		if( vr$18 != 0 ) goto label$157;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$150;
		}
		label$157:;
		label$156:;
	}
	goto label$154;
	label$155:;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (char*)"mov lea cmp add sub imu idiv div shl shr sar and xor or call jmp push test cvt ", 79 );
		int32 vr$22 = fb_StrInstr( 1, (FBSTRING*)vr$21, (FBSTRING*)&INSTRUC$1 );
		if( vr$22 != 0 ) goto label$159;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$150;
			label$159:;
		}
	}
	label$154:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$163:;
		{
			FBSTRING TMP$371$3;
			FBSTRING TMP$372$3;
			FBSTRING TMP$373$3;
			FBSTRING TMP$374$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3 ) goto label$165;
			{
				goto label$161;
				label$165:;
			}
			REGFOUND1$1 = -1;
			REGFOUND2$1 = -1;
			__builtin_memset( &TMP$371$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$371$3, *(void**)((int32)(char**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$29 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$28 );
			if( vr$29 == 0 ) goto label$167;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$167:;
			__builtin_memset( &TMP$372$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$372$3, *(void**)((int32)(char**)REGSTRD$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$34 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$33 );
			if( vr$34 == 0 ) goto label$168;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$168:;
			__builtin_memset( &TMP$373$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$373$3, *(void**)((int32)(char**)REGSTRW$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$39 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$38 );
			if( vr$39 == 0 ) goto label$169;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$166;
			label$169:;
			__builtin_memset( &TMP$374$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$374$3, *(void**)((int32)(char**)REGSTRB$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$44 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$43 );
			if( vr$44 == 0 ) goto label$170;
			{
				REGFOUND1$1 = IREG$2;
			}
			label$170:;
			label$166:;
			if( REGFOUND1$1 == -1 ) goto label$172;
			{
				int32 TMP$377$4;
				int32 TMP$379$4;
				int32 vr$46 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"add", 4 );
				if( vr$46 == 0 ) goto label$173;
				int32 vr$48 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"sub", 4 );
				TMP$377$4 = -(vr$48 == 0);
				goto label$3079;
				label$173:;
				TMP$377$4 = -1;
				label$3079:;
				if( TMP$377$4 != 0 ) goto label$174;
				int32 vr$51 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"imu", 4 );
				TMP$379$4 = -(vr$51 == 0);
				goto label$3080;
				label$174:;
				TMP$379$4 = -1;
				label$3080:;
				if( TMP$379$4 == 0 ) goto label$176;
				{
					goto label$161;
				}
				goto label$175;
				label$176:;
				int32 vr$54 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"cmp", 4 );
				if( vr$54 != 0 ) goto label$177;
				{
					*(int32*)((uint8*)&CTX$ + 132) = REGFOUND1$1;
					*(int32*)((uint8*)&CTX$ + 136) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31)));
					*(int32*)((uint8*)&CTX$ + 140) = 2;
					*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
					goto label$161;
				}
				goto label$175;
				label$177:;
				{
					FBSTRING TMP$380$5;
					FBSTRING TMP$381$5;
					__builtin_memset( &TMP$380$5, 0, 12 );
					FBSTRING* vr$61 = fb_StrConcat( &TMP$380$5, *(void**)((int32)(char**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)", ", 3 );
					__builtin_memset( &TMP$381$5, 0, 12 );
					FBSTRING* vr$64 = fb_StrConcat( &TMP$381$5, (void*)vr$61, -1, *(void**)((int32)(char**)REGSTRQ$ + (IREG$2 << (2 & 31))), 0 );
					int32 vr$65 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$64 );
					if( vr$65 == 0 ) goto label$179;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
						fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
						goto label$150;
					}
					label$179:;
					label$178:;
				}
				label$175:;
			}
			label$172:;
			label$171:;
			if( REGFOUND1$1 != -1 ) goto label$181;
			{
				FBSTRING* vr$69 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRQ$ + (IREG$2 << (2 & 31))) );
				int32 vr$70 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$69 );
				if( vr$70 == 0 ) goto label$183;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$183:;
				FBSTRING* vr$72 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRD$ + (IREG$2 << (2 & 31))) );
				int32 vr$73 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$72 );
				if( vr$73 == 0 ) goto label$184;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$184:;
				FBSTRING* vr$75 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRW$ + (IREG$2 << (2 & 31))) );
				int32 vr$76 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$75 );
				if( vr$76 == 0 ) goto label$185;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$182;
				label$185:;
				FBSTRING* vr$78 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRB$ + (IREG$2 << (2 & 31))) );
				int32 vr$79 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$78 );
				if( vr$79 == 0 ) goto label$186;
				{
					REGFOUND2$1 = IREG$2;
				}
				label$186:;
				label$182:;
			}
			label$181:;
			label$180:;
			if( REGFOUND2$1 == -1 ) goto label$188;
			{
				*(int32*)((int32)(int32*)REGHANDLE$ + (REGFOUND2$1 << (2 & 31))) = -2;
			}
			label$188:;
			label$187:;
		}
		label$161:;
		IREG$2 = IREG$2 + 1;
		label$160:;
		if( IREG$2 <= 15 ) goto label$163;
		label$162:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	label$150:;
}

static int32 PW2( int32 NUM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$189:;
	double A$1;
	A$1 = __builtin_log( (double)NUM$1 ) / 0x1.62E42FEFA39EFp-1;
	double vr$4 = fb_FRACd( A$1 );
	if( vr$4 != 0x0p+0 ) goto label$192;
	{
		double vr$5 = pow( 0x1.p+1, A$1 );
		fb$result$1 = fb_D2I( vr$5 );
		goto label$190;
	}
	goto label$191;
	label$192:;
	{
		double vr$9 = pow( 0x1.p+1, __builtin_floor( A$1 ) + 0x1.p+0 );
		fb$result$1 = fb_D2I( vr$9 );
		goto label$190;
	}
	label$191:;
	label$190:;
	return fb$result$1;
}

static void ASM_SECTION( FBSTRING* SECTION$1 )
{
	label$193:;
	static FBSTRING SECTION_CURRENT$1;
	int32 vr$0 = fb_StrCompare( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1 );
	if( vr$0 == 0 ) goto label$196;
	{
		FBSTRING TMP$383$2;
		FBSTRING TMP$384$2;
		__builtin_memset( &TMP$384$2, 0, 12 );
		__builtin_memset( &TMP$383$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$383$2, (void*)".section ", 10, (void*)SECTION$1, -1 );
		fb_StrAssign( (void*)&TMP$384$2, -1, (void*)vr$4, -1, 0 );
		HWRITEASM64( &TMP$384$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$384$2 );
		fb_StrAssign( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1, 0 );
	}
	label$196:;
	label$195:;
	label$194:;
}

static void EMITOP3_OP4( FBSTRING* OP$1 )
{
	label$197:;
	FBSTRING* vr$0 = fb_RIGHT( (FBSTRING*)OP$1, 3 );
	int32 vr$1 = fb_StrCompare( (void*)vr$0, -1, (void*)"#NO", 4 );
	if( vr$1 != 0 ) goto label$200;
	{
		HWRITEASM64( OP$1, 3 );
	}
	goto label$199;
	label$200:;
	{
		HWRITEASM64( OP$1, 0 );
	}
	label$199:;
	label$198:;
}

static void HWRITEASM64( FBSTRING* LN2$1, int32 OPT$1 )
{
	FBSTRING TMP$395$1;
	label$205:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)LN2$1, -1, 0 );
	if( *(int32*)((uint8*)&CTX$ + 236) == 0 ) goto label$208;
	{
		if( *(int32*)((uint8*)&CTX$ + 240) != 1 ) goto label$210;
		{
			*(int32*)((uint8*)&CTX$ + 240) = 2;
		}
		goto label$209;
		label$210:;
		{
			*(int32*)((uint8*)&CTX$ + 236) = 0;
		}
		label$209:;
	}
	label$208:;
	label$207:;
	if( *(int32*)((uint8*)&CTX$ + 140) == 0 ) goto label$212;
	{
		*(int32*)((uint8*)&CTX$ + 140) = *(int32*)((uint8*)&CTX$ + 140) + -1;
		if( *(int32*)((uint8*)&CTX$ + 140) != 0 ) goto label$214;
		{
			*(int32*)((uint8*)&CTX$ + 136) = -2;
		}
		label$214:;
		label$213:;
	}
	label$212:;
	label$211:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$216;
	{
		if( *(int32*)((uint8*)&CTXDBG$ + 4) == -1 ) goto label$218;
		{
			FBSTRING TMP$387$3;
			FBSTRING TMP$389$3;
			FBSTRING TMP$390$3;
			FBSTRING TMP$391$3;
			FBSTRING TMP$392$3;
			FBSTRING TMP$393$3;
			DBG_FILENAME( (FBSTRING*)((uint8*)&CTXDBG$ + 20) );
			char* vr$5 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$5, 0, 0 );
			__builtin_memset( &TMP$391$3, 0, 12 );
			char* vr$8 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
			__builtin_memset( &TMP$389$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$389$3, (void*)&LNAME$1, -1, (void*)"-", 2 );
			__builtin_memset( &TMP$390$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$390$3, (void*)vr$12, -1, (void*)vr$8, 0 );
			fb_StrAssign( (void*)&TMP$391$3, -1, (void*)vr$15, -1, 0 );
			__builtin_memset( &TMP$387$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$387$3, -1, (void*)"", 1, 0 );
			DBG_ADDSTAB( &TMP$387$3, (uint8)68u, (int16)*(int32*)((uint8*)&CTXDBG$ + 4), &TMP$391$3 );
			fb_StrDelete( (FBSTRING*)&TMP$391$3 );
			fb_StrDelete( (FBSTRING*)&TMP$387$3 );
			*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
			__builtin_memset( &TMP$393$3, 0, 12 );
			__builtin_memset( &TMP$392$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$392$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$393$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$393$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$393$3 );
		}
		label$218:;
		label$217:;
	}
	label$216:;
	label$215:;
	if( (-(OPT$1 != 2) & -(OPT$1 != 1)) == 0 ) goto label$220;
	{
		REG_FREEABLE( &LN$1 );
		label$220:;
	}
	if( (-(OPT$1 == 3) | -(OPT$1 == 1)) == 0 ) goto label$222;
	{
		FBSTRING TMP$394$2;
		__builtin_memset( &TMP$394$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$394$2, -1, (void*)"", 1, 0 );
		CHECK_OPTIM( &TMP$394$2 );
		fb_StrDelete( (FBSTRING*)&TMP$394$2 );
	}
	goto label$221;
	label$222:;
	{
		CHECK_OPTIM( &LN$1 );
	}
	label$221:;
	FBSTRING* vr$46 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
	__builtin_memset( &TMP$395$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$395$1, (void*)vr$46, -1, (void*)&LN$1, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$49, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x0A", 2, 0 );
	{
		uint32 TMP$396$2;
		TMP$396$2 = *(uint32*)((uint8*)&CTX$ + 4);
		goto label$224;
		label$225:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 56), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$226:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 44), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$227:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 68), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$228:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$229:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 32), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$230:;
		{
			fb_StrConcatByref( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$223;
		label$224:;
		static const void* tmp$4059[6] = {
			&&label$228,
			&&label$230,
			&&label$229,
			&&label$226,
			&&label$225,
			&&label$227,
		};
		if( TMP$396$2 > 5u ) goto label$230;
		goto *tmp$4059[TMP$396$2 - 0u];
		label$223:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$206:;
}

static FBSTRING* HFLOATTOHEX_ASM64( double VALUE$1, int32 DTYPE$1, int8 FULL$1 )
{
	int32 TMP$397$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$231:;
	FBSTRING RAWBYTES$1;
	__builtin_memset( &RAWBYTES$1, 0, 12 );
	float SINGLEVALUE$1;
	SINGLEVALUE$1 = (float)VALUE$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$233;
	TMP$397$1 = 24;
	goto label$3081;
	label$233:;
	TMP$397$1 = DTYPE$1 & 31;
	label$3081:;
	if( TMP$397$1 != 16 ) goto label$235;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$6 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$6, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # DBL=", 8, 0 );
		FBSTRING* vr$9 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$9, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$237;
		{
			FBSTRING TMP$401$3;
			__builtin_memset( &TMP$401$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$401$3, (void*)".quad ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$15, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		goto label$236;
		label$237:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		label$236:;
	}
	goto label$234;
	label$235:;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$22 = fb_HEXEx_i( *(uint32*)&SINGLEVALUE$1, 8 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$22, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # SNG=", 8, 0 );
		FBSTRING* vr$25 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$25, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$239;
		{
			FBSTRING TMP$404$3;
			__builtin_memset( &TMP$404$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$404$3, (void*)".long ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$31, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		goto label$238;
		label$239:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$232;
		}
		label$238:;
	}
	label$234:;
	fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
	label$232:;
	FBSTRING* vr$39 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$39;
}

static int32 DBG_ADDSTR( FBSTRING* STRG$1, int32 NOSEARCH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$240:;
	if( NOSEARCH$1 != 0 ) goto label$243;
	{
		{
			int32 ISTR$3;
			ISTR$3 = 0;
			int32 TMP$405$3;
			TMP$405$3 = *(int32*)((uint8*)&CTXDBG$ + 36);
			goto label$244;
			label$247:;
			{
				int32 vr$4 = fb_StrCompare( (void*)STRG$1, -1, (void*)((uint8*)((ISTR$3 * 24) + *(int32*)&DBGSTR$) + 8), -1 );
				if( vr$4 != 0 ) goto label$249;
				{
					fb$result$1 = (int32)*(int64*)((ISTR$3 * 24) + *(int32*)&DBGSTR$);
					goto label$241;
				}
				label$249:;
				label$248:;
			}
			label$245:;
			ISTR$3 = ISTR$3 + 1;
			label$244:;
			if( ISTR$3 <= TMP$405$3 ) goto label$247;
			label$246:;
		}
	}
	label$243:;
	label$242:;
	*(int32*)((uint8*)&CTXDBG$ + 36) = *(int32*)((uint8*)&CTXDBG$ + 36) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 36) <= *(int32*)((uint8*)&CTXDBG$ + 40) ) goto label$251;
	{
		*(int32*)((uint8*)&CTXDBG$ + 40) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 40) * 0x1.4CCCCCCCCCCCDp+0 );
		int32 vr$13 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
		if( vr$13 == 0 ) goto label$252;
		void* vr$14 = fb_ErrorThrowAt( 948, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$14;
		label$252:;
	}
	label$251:;
	label$250:;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 36) * 24) + *(int32*)&DBGSTR$) + 8), -1, (void*)STRG$1, -1, 0 );
	*(int64*)((*(int32*)((uint8*)&CTXDBG$ + 36) * 24) + *(int32*)&DBGSTR$) = *(int64*)((uint8*)&CTXDBG$ + 56);
	fb$result$1 = (int32)*(int64*)((uint8*)&CTXDBG$ + 56);
	int32 vr$21 = fb_StrLen( (void*)STRG$1, -1 );
	*(int64*)((uint8*)&CTXDBG$ + 56) = *(int64*)((uint8*)&CTXDBG$ + 56) + (int64)(vr$21 + 1);
	label$241:;
	return fb$result$1;
}

static void DBG_ADDSTAB( FBSTRING* TXT$1, uint8 COD$1, int16 DESC$1, FBSTRING* VALUE$1 )
{
	label$253:;
	int64 OFFST$1;
	__builtin_memset( &OFFST$1, 0, 8 );
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	int32 vr$2 = fb_StrCompare( (void*)TXT$1, -1, (void*)"", 1 );
	if( vr$2 == 0 ) goto label$256;
	{
		if( (-((int32)COD$1 == 100) | -((int32)COD$1 == 132)) == 0 ) goto label$258;
		{
			int32 vr$8 = DBG_ADDSTR( TXT$1, 0 );
			OFFST$1 = (int64)vr$8;
		}
		goto label$257;
		label$258:;
		{
			int32 vr$10 = DBG_ADDSTR( TXT$1, 1 );
			OFFST$1 = (int64)vr$10;
		}
		label$257:;
	}
	label$256:;
	label$255:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = *(int32*)((uint8*)&CTXDBG$ + 44) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 44) <= *(int32*)((uint8*)&CTXDBG$ + 48) ) goto label$260;
	{
		*(int32*)((uint8*)&CTXDBG$ + 48) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 48) * 0x1.8p+0 );
		int32 vr$16 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
		if( vr$16 == 0 ) goto label$261;
		void* vr$17 = fb_ErrorThrowAt( 968, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$17;
		label$261:;
	}
	label$260:;
	label$259:;
	*(int32*)&STAB$1 = (int32)OFFST$1;
	*(int16*)((uint8*)&STAB$1 + 4) = (int16)COD$1;
	*(int16*)((uint8*)&STAB$1 + 6) = DESC$1;
	*(int64*)((*(int32*)((uint8*)&CTXDBG$ + 44) * 24) + *(int32*)&DBGSTAB$) = *(int64*)&STAB$1;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 44) * 24) + *(int32*)&DBGSTAB$) + 8), -1, (void*)VALUE$1, -1, 0 );
	label$254:;
}

static void DBG_EMITSTR( void )
{
	FBSTRING TMP$414$1;
	label$262:;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$265;
	{
		FBSTRING TMP$410$2;
		__builtin_memset( &TMP$410$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$410$2, -1, (void*)".dbgstr,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$410$2 );
		fb_StrDelete( (FBSTRING*)&TMP$410$2 );
	}
	goto label$264;
	label$265:;
	{
		FBSTRING TMP$412$2;
		__builtin_memset( &TMP$412$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$412$2, -1, (void*)".dbgstr,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$412$2 );
		fb_StrDelete( (FBSTRING*)&TMP$412$2 );
	}
	label$264:;
	__builtin_memset( &TMP$414$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$414$1, -1, (void*)".byte 0", 8, 0 );
	HWRITEASM64( &TMP$414$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$414$1 );
	{
		int32 ISTR$2;
		ISTR$2 = 0;
		int32 TMP$415$2;
		TMP$415$2 = *(int32*)((uint8*)&CTXDBG$ + 36);
		goto label$266;
		label$269:;
		{
			FBSTRING TMP$420$3;
			FBSTRING TMP$421$3;
			FBSTRING TMP$422$3;
			__builtin_memset( &TMP$422$3, 0, 12 );
			FBSTRING* vr$15 = HREPLACE( (char*)*(char**)((uint8*)((ISTR$2 * 24) + *(int32*)&DBGSTR$) + 8), (char*)"\x5C", (char*)"\x5C\x5C" );
			__builtin_memset( &TMP$420$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$420$3, (void*)".ascii \x22", 9, (void*)vr$15, -1 );
			__builtin_memset( &TMP$421$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$421$3, (void*)vr$18, -1, (void*)"\x5C" "0\x22", 4 );
			fb_StrAssign( (void*)&TMP$422$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$422$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$422$3 );
		}
		label$267:;
		ISTR$2 = ISTR$2 + 1;
		label$266:;
		if( ISTR$2 <= TMP$415$2 ) goto label$269;
		label$268:;
	}
	label$263:;
}

static void DBG_EMITSTAB( void )
{
	label$270:;
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$273;
	{
		FBSTRING TMP$424$2;
		__builtin_memset( &TMP$424$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$424$2, -1, (void*)".dbgdat,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$424$2 );
		fb_StrDelete( (FBSTRING*)&TMP$424$2 );
	}
	goto label$272;
	label$273:;
	{
		FBSTRING TMP$426$2;
		__builtin_memset( &TMP$426$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$426$2, -1, (void*)".dbgdat,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$426$2 );
		fb_StrDelete( (FBSTRING*)&TMP$426$2 );
	}
	label$272:;
	{
		int32 ISTAB$2;
		ISTAB$2 = 0;
		int32 TMP$427$2;
		TMP$427$2 = *(int32*)((uint8*)&CTXDBG$ + 44);
		goto label$274;
		label$277:;
		{
			FBSTRING TMP$430$3;
			FBSTRING TMP$431$3;
			FBSTRING TMP$432$3;
			FBSTRING TMP$433$3;
			FBSTRING TMP$434$3;
			FBSTRING TMP$435$3;
			FBSTRING TMP$436$3;
			FBSTRING TMP$437$3;
			FBSTRING TMP$438$3;
			FBSTRING TMP$439$3;
			*(int64*)&STAB$1 = *(int64*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$);
			__builtin_memset( &TMP$437$3, 0, 12 );
			FBSTRING* vr$12 = fb_IntToStr( *(int32*)&STAB$1 );
			FBSTRING* vr$14 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 6) );
			FBSTRING* vr$16 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 4) );
			FBSTRING* vr$19 = fb_HEX_l( *(uint64*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$) );
			__builtin_memset( &TMP$430$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$430$3, (void*)".quad 0x", 9, (void*)vr$19, -1 );
			__builtin_memset( &TMP$431$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$431$3, (void*)vr$22, -1, (void*)" # ", 4 );
			__builtin_memset( &TMP$432$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$432$3, (void*)vr$25, -1, (void*)vr$16, -1 );
			__builtin_memset( &TMP$433$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$433$3, (void*)vr$28, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$434$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$434$3, (void*)vr$31, -1, (void*)vr$14, -1 );
			__builtin_memset( &TMP$435$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$435$3, (void*)vr$34, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$436$3, 0, 12 );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$436$3, (void*)vr$37, -1, (void*)vr$12, -1 );
			fb_StrAssign( (void*)&TMP$437$3, -1, (void*)vr$40, -1, 0 );
			HWRITEASM64( &TMP$437$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$437$3 );
			__builtin_memset( &TMP$439$3, 0, 12 );
			__builtin_memset( &TMP$438$3, 0, 12 );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$438$3, (void*)".quad ", 7, (void*)((uint8*)((ISTAB$2 * 24) + *(int32*)&DBGSTAB$) + 8), -1 );
			fb_StrAssign( (void*)&TMP$439$3, -1, (void*)vr$50, -1, 0 );
			HWRITEASM64( &TMP$439$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$439$3 );
		}
		label$275:;
		ISTAB$2 = ISTAB$2 + 1;
		label$274:;
		if( ISTAB$2 <= TMP$427$2 ) goto label$277;
		label$276:;
	}
	label$271:;
}

static void EDBGEMITHEADER_ASM64( char* FILENAME$1 )
{
	FBSTRING TMP$443$1;
	FBSTRING TMP$444$1;
	FBSTRING TMP$445$1;
	FBSTRING TMP$447$1;
	FBSTRING TMP$448$1;
	FBSTRING TMP$449$1;
	FBSTRING TMP$450$1;
	FBSTRING TMP$453$1;
	FBSTRING TMP$454$1;
	FBSTRING TMP$455$1;
	label$278:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	*(uint32*)&CTXDBG$ = 1u;
	*(int32*)((uint8*)&CTXDBG$ + 36) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 40) = 1000;
	int32 vr$1 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
	if( vr$1 == 0 ) goto label$280;
	void* vr$2 = fb_ErrorThrowAt( 1007, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$2;
	label$280:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 48) = 1000;
	int32 vr$3 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
	if( vr$3 == 0 ) goto label$281;
	void* vr$4 = fb_ErrorThrowAt( 1010, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$4;
	label$281:;
	*(int64*)((uint8*)&CTXDBG$ + 56) = 1ll;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	__builtin_memset( &TMP$445$1, 0, 12 );
	char* vr$6 = HESCAPE( (char*)FILENAME$1 );
	__builtin_memset( &TMP$443$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$443$1, (void*)".file \x22", 8, (void*)vr$6, 0 );
	__builtin_memset( &TMP$444$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$444$1, (void*)vr$9, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$445$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$445$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$445$1 );
	char* vr$16 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$16, 0, 0 );
	__builtin_memset( &TMP$448$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$448$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$447$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$447$1, -1, (void*)"DUMMY", 6, 0 );
	DBG_ADDSTAB( &TMP$447$1, (uint8)0u, (int16)0, &TMP$448$1 );
	fb_StrDelete( (FBSTRING*)&TMP$448$1 );
	fb_StrDelete( (FBSTRING*)&TMP$447$1 );
	__builtin_memset( &TMP$450$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$450$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$449$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$449$1, -1, (void*)"FreeBASIC 1.10.1", 17, 0 );
	DBG_ADDSTAB( &TMP$449$1, (uint8)255u, (int16)0, &TMP$450$1 );
	fb_StrDelete( (FBSTRING*)&TMP$450$1 );
	fb_StrDelete( (FBSTRING*)&TMP$449$1 );
	int32 vr$34 = PATHISABSOLUTE( FILENAME$1 );
	if( vr$34 != 0 ) goto label$283;
	{
		FBSTRING TMP$451$2;
		FBSTRING TMP$452$2;
		__builtin_memset( &TMP$452$2, 0, 12 );
		FBSTRING* vr$37 = HCURDIR(  );
		__builtin_memset( &TMP$451$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$451$2, (void*)vr$37, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)&TMP$452$2, -1, (void*)vr$40, -1, 0 );
		DBG_ADDSTAB( &TMP$452$2, (uint8)100u, (int16)0, &LNAME$1 );
		fb_StrDelete( (FBSTRING*)&TMP$452$2 );
	}
	label$283:;
	label$282:;
	__builtin_memset( &TMP$453$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$453$1, -1, (void*)FILENAME$1, 0, 0 );
	DBG_ADDSTAB( &TMP$453$1, (uint8)100u, (int16)0, &LNAME$1 );
	fb_StrDelete( (FBSTRING*)&TMP$453$1 );
	__builtin_memset( &TMP$455$1, 0, 12 );
	__builtin_memset( &TMP$454$1, 0, 12 );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$454$1, (void*)&LNAME$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$455$1, -1, (void*)vr$53, -1, 0 );
	HWRITEASM64( &TMP$455$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$455$1 );
	{
		int32 I$2;
		I$2 = 0;
		label$287:;
		{
			FBSTRING TMP$456$3;
			FBSTRING STRG$3;
			fb_StrInit( (void*)&STRG$3, -1, *(void**)((int32)(char**)STABSTB$ + (I$2 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$456$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$456$3, -1, (void*)"0", 2, 0 );
			DBG_ADDSTAB( &STRG$3, (uint8)128u, (int16)0, &TMP$456$3 );
			fb_StrDelete( (FBSTRING*)&TMP$456$3 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			fb_StrDelete( (FBSTRING*)&STRG$3 );
		}
		label$285:;
		I$2 = I$2 + 1;
		label$284:;
		if( I$2 <= 16 ) goto label$287;
		label$286:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$279:;
}

static void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 SECTION$1 )
{
	FBSTRING TMP$459$1;
	label$288:;
	int32 T$1;
	int32 ATTRIB$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	{
		if( SECTION$1 != 0 ) goto label$291;
		label$292:;
		{
			T$1 = 36;
		}
		goto label$290;
		label$291:;
		if( SECTION$1 != 2 ) goto label$293;
		label$294:;
		{
			T$1 = 40;
		}
		goto label$290;
		label$293:;
		{
			T$1 = 38;
		}
		label$295:;
		label$290:;
	}
	char* vr$1 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$1, 0, 0 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0)) == 0 ) goto label$297;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":G", 3, 0 );
	}
	goto label$296;
	label$297:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$298;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":S", 3, 0 );
	}
	goto label$296;
	label$298:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
	}
	label$296:;
	FBSTRING* vr$15 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$15, -1, 0 );
	__builtin_memset( &TMP$459$1, 0, 12 );
	char* vr$18 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&TMP$459$1, -1, (void*)vr$18, 0, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &TMP$459$1 );
	fb_StrDelete( (FBSTRING*)&TMP$459$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$289:;
}

static void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 ISSTATIC$1 )
{
	label$299:;
	int32 T$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	fb_StrAssign( (void*)&DESC$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
	if( ISSTATIC$1 == 0 ) goto label$302;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$304;
		{
			fb_StrDelete( (FBSTRING*)&VALUE$1 );
			fb_StrDelete( (FBSTRING*)&DESC$1 );
			goto label$300;
		}
		label$304:;
		label$303:;
		if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 56) == (struct $7ASTNODE*)0u ) goto label$306;
		{
			T$1 = 38;
		}
		goto label$305;
		label$306:;
		{
			T$1 = 40;
		}
		label$305:;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":V", 3, 0 );
		char* vr$10 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$10, 0, 0 );
	}
	goto label$301;
	label$302:;
	{
		T$1 = 128;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
		FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$14, -1, 0 );
	}
	label$301:;
	FBSTRING* vr$16 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$16, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &VALUE$1 );
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$300:;
}

static void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING TMP$465$1;
	FBSTRING TMP$466$1;
	label$307:;
	static FBSTRING DESC$1;
	static FBSTRING PROCNAME$1;
	static FBSTRING FILENAME$1;
	fb_StrAssign( (void*)&FILENAME$1, -1, (void*)((uint8*)&ENV$ + 304), 261, 0 );
	DBG_FILENAME( &FILENAME$1 );
	if( (*(int32*)((uint8*)PROC$1 + 12) & 4096) == 0 ) goto label$310;
	{
		FBSTRING TMP$461$2;
		FBSTRING TMP$462$2;
		__builtin_memset( &TMP$462$2, 0, 12 );
		char* vr$4 = SYMBGETMANGLEDNAME( PROC$1 );
		fb_StrAssign( (void*)&TMP$462$2, -1, (void*)vr$4, 0, 0 );
		__builtin_memset( &TMP$461$2, 0, 12 );
		FBSTRING* vr$8 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&TMP$461$2, -1, (void*)vr$8, -1, 0 );
		DBG_ADDSTAB( &TMP$461$2, (uint8)42u, (int16)1, &TMP$462$2 );
		fb_StrDelete( (FBSTRING*)&TMP$462$2 );
		fb_StrDelete( (FBSTRING*)&TMP$461$2 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = 1;
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16568);
		FBSTRING* vr$18 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	}
	goto label$309;
	label$310:;
	{
		char* vr$19 = SYMBGETDBGNAME( PROC$1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$19, 0, 0 );
	}
	label$309:;
	char* vr$20 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1, (void*)vr$20, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) = PROC$1;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 32) == 0 ) goto label$312;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":F", 3, 0 );
	}
	goto label$311;
	label$312:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":f", 3, 0 );
	}
	label$311:;
	FBSTRING* vr$23 = HGETDATATYPE_ASM64( PROC$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$23, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)36u, (int16)*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16), &PROCNAME$1 );
	__builtin_memset( &TMP$466$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$466$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$465$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$465$1, -1, (void*)"", 1, 0 );
	DBG_ADDSTAB( &TMP$465$1, (uint8)68u, (int16)1, &TMP$466$1 );
	fb_StrDelete( (FBSTRING*)&TMP$466$1 );
	fb_StrDelete( (FBSTRING*)&TMP$465$1 );
	label$308:;
}

static void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$467$1;
	FBSTRING TMP$470$1;
	label$313:;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	__builtin_memset( &TMP$467$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$467$1, *(void**)((uint8*)SYM$1 + 16), 0, (void*)":", 2 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, -1, 0 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$316;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"p", 2, 0 );
	}
	goto label$315;
	label$316:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"v", 2, 0 );
	}
	label$315:;
	FBSTRING* vr$10 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$10, -1, 0 );
	__builtin_memset( &TMP$470$1, 0, 12 );
	FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
	fb_StrAssign( (void*)&TMP$470$1, -1, (void*)vr$14, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)160u, (int16)0, &TMP$470$1 );
	fb_StrDelete( (FBSTRING*)&TMP$470$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$314:;
}

static FBSTRING* HDECLPOINTER_ASM64( int32* DTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$317:;
	static FBSTRING DESC$1;
	fb_StrAssign( (void*)&DESC$1, -1, (void*)"", 1, 0 );
	label$319:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$320;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + -32)) | (((*DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (*DTYPE$1 & 32505856);
		FBSTRING* vr$18 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=*", 3, 0 );
		*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	}
	goto label$319;
	label$320:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	label$318:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static void HDECLUDT_ASM64( struct $8FBSYMBOL* SYM$1, int32 DIMTBELEMENTS$1 )
{
	FBSTRING TMP$474$1;
	FBSTRING TMP$475$1;
	FBSTRING TMP$476$1;
	FBSTRING TMP$477$1;
	FBSTRING TMP$488$1;
	label$321:;
	struct $8FBSYMBOL* FLD$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 136) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	char* vr$3 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$3, 0, 0 );
	FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 40) );
	FBSTRING* vr$8 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
	__builtin_memset( &TMP$474$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$474$1, (void*)":Tt", 4, (void*)vr$8, -1 );
	__builtin_memset( &TMP$475$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$475$1, (void*)vr$11, -1, (void*)"=s", 3 );
	__builtin_memset( &TMP$476$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$476$1, (void*)vr$14, -1, (void*)vr$6, -1 );
	__builtin_memset( &TMP$477$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$477$1, (void*)&DESC$1, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$21, -1, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$23;
	label$323:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$324;
	{
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) != 0 ) goto label$326;
		{
			FBSTRING TMP$478$3;
			FBSTRING TMP$479$3;
			FBSTRING TMP$480$3;
			int32 TMP$481$3;
			FBSTRING TMP$482$3;
			FBSTRING TMP$483$3;
			int64 TMP$484$3;
			FBSTRING TMP$485$3;
			FBSTRING TMP$486$3;
			FBSTRING* vr$26 = HGETDATATYPE_ASM64( FLD$1, DIMTBELEMENTS$1 );
			__builtin_memset( &TMP$478$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$478$3, *(void**)((uint8*)FLD$1 + 16), 0, (void*)":", 2 );
			__builtin_memset( &TMP$479$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$479$3, (void*)vr$30, -1, (void*)vr$26, -1 );
			__builtin_memset( &TMP$480$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$480$3, (void*)&DESC$1, -1, (void*)vr$33, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$37, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$327;
			TMP$481$3 = *(int32*)((uint8*)FLD$1 + 112);
			goto label$3082;
			label$327:;
			TMP$481$3 = 0;
			label$3082:;
			FBSTRING* vr$45 = fb_LongintToStr( (*(int64*)((uint8*)FLD$1 + 48) << (3ll & 63)) + (int64)TMP$481$3 );
			__builtin_memset( &TMP$482$3, 0, 12 );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$482$3, (void*)",", 2, (void*)vr$45, -1 );
			__builtin_memset( &TMP$483$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$483$3, (void*)&DESC$1, -1, (void*)vr$48, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$328;
			TMP$484$3 = (int64)*(int32*)((uint8*)FLD$1 + 116);
			goto label$3083;
			label$328:;
			int64 vr$57 = SYMBGETREALSIZE( FLD$1 );
			TMP$484$3 = vr$57 << (3ll & 63);
			label$3083:;
			FBSTRING* vr$59 = fb_LongintToStr( TMP$484$3 );
			__builtin_memset( &TMP$485$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$485$3, (void*)",", 2, (void*)vr$59, -1 );
			__builtin_memset( &TMP$486$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$486$3, (void*)&DESC$1, -1, (void*)vr$62, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$66, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
		}
		label$326:;
		label$325:;
		struct $8FBSYMBOL* vr$69 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$69;
	}
	goto label$323;
	label$324:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$488$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$488$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$488$1 );
	fb_StrDelete( (FBSTRING*)&TMP$488$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$322:;
}

static void HDECLENUM_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$491$1;
	FBSTRING TMP$492$1;
	FBSTRING TMP$493$1;
	FBSTRING TMP$498$1;
	label$329:;
	struct $8FBSYMBOL* E$1;
	__builtin_memset( &E$1, 0, 4 );
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 100) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	char* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	FBSTRING* vr$7 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 100) );
	__builtin_memset( &TMP$491$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$491$1, (void*)":T", 3, (void*)vr$7, -1 );
	__builtin_memset( &TMP$492$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$492$1, (void*)vr$10, -1, (void*)"=e", 3 );
	__builtin_memset( &TMP$493$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$493$1, (void*)&DESC$1, -1, (void*)vr$13, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$17, -1, 0 );
	struct $8FBSYMBOL* vr$19 = SYMBGETENUMFIRSTELM( SYM$1 );
	E$1 = vr$19;
	label$331:;
	if( E$1 == (struct $8FBSYMBOL*)0u ) goto label$332;
	{
		FBSTRING TMP$494$2;
		FBSTRING TMP$495$2;
		FBSTRING TMP$496$2;
		FBSTRING TMP$497$2;
		FBSTRING* vr$21 = fb_LongintToStr( *(int64*)((uint8*)E$1 + 56) );
		__builtin_memset( &TMP$494$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$494$2, *(void**)((uint8*)E$1 + 16), 0, (void*)":", 2 );
		__builtin_memset( &TMP$495$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$495$2, (void*)vr$25, -1, (void*)vr$21, -1 );
		__builtin_memset( &TMP$496$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$496$2, (void*)vr$28, -1, (void*)",", 2 );
		__builtin_memset( &TMP$497$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$497$2, (void*)&DESC$1, -1, (void*)vr$31, -1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$35, -1, 0 );
		struct $8FBSYMBOL* vr$37 = SYMBGETENUMNEXTELM( E$1 );
		E$1 = vr$37;
	}
	goto label$331;
	label$332:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$498$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$498$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$498$1 );
	fb_StrDelete( (FBSTRING*)&TMP$498$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$330:;
}

static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL* SYM$1, int32 REQUESTEDDIMTBELEMENTS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$333:;
	int32 DTYPE$1;
	int32 DIMTBELEMENTS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$336;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)REMAPTB$ );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$334;
	}
	label$336:;
	label$335:;
	DIMTBELEMENTS$1 = 0;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$338;
	{
		DTYPE$1 = 20;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92);
		DIMTBELEMENTS$1 = *(int32*)((uint8*)SYM$1 + 64);
	}
	goto label$337;
	label$338:;
	{
		DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
		if( (-(*(int32*)SYM$1 == 1) | -(*(int32*)SYM$1 == 12)) == 0 ) goto label$340;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$342;
			{
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			label$342:;
			label$341:;
			if( *(int32*)((uint8*)SYM$1 + 64) <= 0 ) goto label$344;
			{
				FBSTRING* vr$29 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$29, -1, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=", 2, 0 );
				*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
				if( REQUESTEDDIMTBELEMENTS$1 <= 0 ) goto label$346;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"0;", 3, 0 );
					FBSTRING* vr$36 = fb_IntToStr( REQUESTEDDIMTBELEMENTS$1 + -1 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$36, -1, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
				}
				goto label$345;
				label$346:;
				{
					{
						int32 I$6;
						I$6 = 0;
						int32 TMP$502$6;
						TMP$502$6 = *(int32*)((uint8*)SYM$1 + 64) + -1;
						goto label$347;
						label$350:;
						{
							FBSTRING TMP$503$7;
							FBSTRING TMP$504$7;
							FBSTRING TMP$505$7;
							FBSTRING TMP$506$7;
							fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
							FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) );
							__builtin_memset( &TMP$503$7, 0, 12 );
							FBSTRING* vr$48 = fb_StrConcat( &TMP$503$7, (void*)vr$45, -1, (void*)";", 2 );
							__builtin_memset( &TMP$504$7, 0, 12 );
							FBSTRING* vr$52 = fb_StrConcat( &TMP$504$7, (void*)&DESC$1, -1, (void*)vr$48, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
							FBSTRING* vr$57 = fb_LongintToStr( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) + 8) );
							__builtin_memset( &TMP$505$7, 0, 12 );
							FBSTRING* vr$60 = fb_StrConcat( &TMP$505$7, (void*)vr$57, -1, (void*)";", 2 );
							__builtin_memset( &TMP$506$7, 0, 12 );
							FBSTRING* vr$64 = fb_StrConcat( &TMP$506$7, (void*)&DESC$1, -1, (void*)vr$60, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$64, -1, 0 );
						}
						label$348:;
						I$6 = I$6 + 1;
						label$347:;
						if( I$6 <= TMP$502$6 ) goto label$350;
						label$349:;
					}
				}
				label$345:;
			}
			label$344:;
			label$343:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 8192) == 0 ) goto label$352;
			{
				DIMTBELEMENTS$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) + 64);
			}
			label$352:;
			label$351:;
		}
		label$340:;
		label$339:;
	}
	label$337:;
	if( DIMTBELEMENTS$1 >= 0 ) goto label$354;
	{
		DIMTBELEMENTS$1 = 1;
	}
	label$354:;
	label$353:;
	if( (DTYPE$1 & 480) == 0 ) goto label$356;
	{
		FBSTRING* vr$73 = HDECLPOINTER_ASM64( &DTYPE$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$73, -1, 0 );
	}
	label$356:;
	label$355:;
	DTYPE$1 = DTYPE$1 & -513;
	{
		uint32 TMP$507$2;
		TMP$507$2 = (uint32)DTYPE$1;
		goto label$358;
		label$359:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$361;
			{
				FBSTRING TMP$508$4;
				if( *(int32*)((uint8*)SUBTYPE$1 + 136) != -1 ) goto label$363;
				{
					HDECLUDT_ASM64( SUBTYPE$1, DIMTBELEMENTS$1 );
					label$363:;
				}
				FBSTRING* vr$78 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 136) );
				__builtin_memset( &TMP$508$4, 0, 12 );
				FBSTRING* vr$82 = fb_StrConcat( &TMP$508$4, (void*)&DESC$1, -1, (void*)vr$78, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$82, -1, 0 );
			}
			goto label$360;
			label$361:;
			{
				FBSTRING TMP$509$4;
				if( *(int32*)((uint8*)SYM$1 + 136) != -1 ) goto label$365;
				{
					HDECLUDT_ASM64( SYM$1, DIMTBELEMENTS$1 );
					label$365:;
				}
				FBSTRING* vr$86 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
				__builtin_memset( &TMP$509$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$509$4, (void*)&DESC$1, -1, (void*)vr$86, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$90, -1, 0 );
			}
			label$360:;
		}
		goto label$357;
		label$366:;
		{
			FBSTRING TMP$510$3;
			if( *(int32*)((uint8*)SUBTYPE$1 + 100) != -1 ) goto label$368;
			{
				HDECLENUM_ASM64( SUBTYPE$1 );
			}
			label$368:;
			label$367:;
			FBSTRING* vr$94 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 100) );
			__builtin_memset( &TMP$510$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$510$3, (void*)&DESC$1, -1, (void*)vr$94, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$98, -1, 0 );
		}
		goto label$357;
		label$369:;
		{
			FBSTRING* vr$100 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$100, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=f", 3, 0 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			FBSTRING* vr$104 = HGETDATATYPE_ASM64( SUBTYPE$1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$104, -1, 0 );
		}
		goto label$357;
		label$370:;
		{
			FBSTRING* vr$106 = fb_IntToStr( *(int32*)REMAPTB$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$106, -1, 0 );
		}
		goto label$357;
		label$371:;
		{
			FBSTRING* vr$109 = fb_IntToStr( *(int32*)((int32)(int32*)REMAPTB$ + (DTYPE$1 << (2 & 31))) );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$109, -1, 0 );
		}
		goto label$357;
		label$358:;
		static const void* tmp$4060[14] = {
			&&label$366,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$371,
			&&label$359,
			&&label$371,
			&&label$369,
			&&label$370,
		};
		if( (TMP$507$2 - 10u) > 13u ) goto label$371;
		goto *tmp$4060[TMP$507$2 - 10u];
		label$357:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$334:;
	FBSTRING* vr$115 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$115;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 LNUM$1, char* FILENAME$1 )
{
	label$372:;
	if( OP$1 != 113 ) goto label$375;
	{
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 20), -1, (void*)FILENAME$1, 0, 0 );
		*(int32*)((uint8*)&CTXDBG$ + 4) = LNUM$1;
	}
	goto label$374;
	label$375:;
	{
		if( OP$1 != 114 ) goto label$377;
		{
		}
		goto label$376;
		label$377:;
		if( OP$1 != 115 ) goto label$378;
		{
		}
		goto label$376;
		label$378:;
		if( OP$1 != 116 ) goto label$379;
		{
		}
		goto label$376;
		label$379:;
		{
			FBSTRING TMP$512$3;
			FBSTRING TMP$517$3;
			FBSTRING TMP$518$3;
			FBSTRING TMP$519$3;
			FBSTRING TMP$520$3;
			FBSTRING TMP$521$3;
			__builtin_memset( &TMP$512$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$512$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$512$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$512$3 );
			__builtin_memset( &TMP$520$3, 0, 12 );
			FBSTRING* vr$6 = fb_IntToStr( OP$1 );
			__builtin_memset( &TMP$517$3, 0, 12 );
			FBSTRING* vr$9 = fb_StrConcat( &TMP$517$3, (void*)"FOUND AN ERROR : Other emitdbg not handled=", 44, (void*)vr$6, -1 );
			__builtin_memset( &TMP$518$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$518$3, (void*)vr$9, -1, (void*)"for ref AST_OP_DBG_LINEEND=", 28 );
			__builtin_memset( &TMP$519$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$519$3, (void*)vr$12, -1, (void*)"114", 4 );
			fb_StrAssign( (void*)&TMP$520$3, -1, (void*)vr$15, -1, 0 );
			HWRITEASM64( &TMP$520$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$520$3 );
			__builtin_memset( &TMP$521$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$521$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$521$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$521$3 );
		}
		label$376:;
	}
	label$374:;
	label$373:;
}

static void REG_MARK( struct $8FBSYMBOL* LABELPTR$1 )
{
	label$380:;
	boolean FLAGMARK$1;
	FLAGMARK$1 = (boolean)0;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$385:;
		{
			if( (-(*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -2) & -(*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3)) == 0 ) goto label$387;
			{
				*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) = -2;
				FLAGMARK$1 = (boolean)1;
			}
			label$387:;
			label$386:;
		}
		label$383:;
		IREG$2 = IREG$2 + 1;
		label$382:;
		if( IREG$2 <= 15 ) goto label$385;
		label$384:;
	}
	if( FLAGMARK$1 == (boolean)0 ) goto label$389;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = LABELPTR$1;
		label$389:;
	}
	label$381:;
}

static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 REGSPILLED$1 )
{
	struct $14ASM64_SAVEDREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$390:;
	struct $14ASM64_SAVEDREG* V$1;
	if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$393;
	{
		void* vr$2 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$2;
		label$394:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$395;
		{
			if( *(int32*)((uint8*)V$1 + 4) != -2 ) goto label$397;
			{
				*(int32*)((uint8*)V$1 + 4) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
				fb$result$1 = V$1;
				goto label$391;
			}
			label$397:;
			label$396:;
			void* vr$6 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$6;
		}
		goto label$394;
		label$395:;
	}
	label$393:;
	label$392:;
	*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + 8ll;
	if( *(int64*)((uint8*)&CTX$ + 112) == 0ll ) goto label$399;
	{
		if( *(int64*)((uint8*)&CTX$ + 96) != *(int64*)((uint8*)&CTX$ + 112) ) goto label$401;
		{
			FBSTRING TMP$522$3;
			FBSTRING TMP$525$3;
			FBSTRING TMP$526$3;
			__builtin_memset( &TMP$522$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$522$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$522$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$522$3 );
			__builtin_memset( &TMP$525$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$525$3, -1, (void*)"FOUND AN ERROR : Spilling overflow when proc calling", 53, 0 );
			HWRITEASM64( &TMP$525$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$525$3 );
			__builtin_memset( &TMP$526$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$526$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$526$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$526$3 );
		}
		label$401:;
		label$400:;
	}
	label$399:;
	label$398:;
	void* vr$21 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	V$1 = (struct $14ASM64_SAVEDREG*)vr$21;
	*(int32*)((uint8*)&CTX$ + 212) = *(int32*)((uint8*)&CTX$ + 212) + 1;
	*(int32*)V$1 = *(int32*)((uint8*)&CTX$ + 212);
	*(int32*)((uint8*)V$1 + 8) = (int32)-(*(int64*)((uint8*)&CTX$ + 96));
	*(int32*)((uint8*)V$1 + 4) = *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
	fb$result$1 = V$1;
	goto label$391;
	label$391:;
	return fb$result$1;
}

static void REG_SPILLING( int32 REGSPILLED$1 )
{
	FBSTRING TMP$529$1;
	FBSTRING TMP$530$1;
	FBSTRING TMP$531$1;
	FBSTRING TMP$532$1;
	int32 TMP$533$1;
	label$402:;
	struct $14ASM64_SAVEDREG* V$1;
	struct $14ASM64_SAVEDREG* vr$0 = ASM64_SPILLREG( REGSPILLED$1 );
	V$1 = vr$0;
	__builtin_memset( &TMP$532$1, 0, 12 );
	FBSTRING* vr$4 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$529$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$529$1, (void*)"mov QWORD PTR ", 15, (void*)vr$4, -1 );
	__builtin_memset( &TMP$530$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$530$1, (void*)vr$7, -1, (void*)"[rbp], ", 8 );
	__builtin_memset( &TMP$531$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$531$1, (void*)vr$10, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGSPILLED$1 << (2 & 31))), 0 );
	fb_StrAssign( (void*)&TMP$532$1, -1, (void*)vr$13, -1, 0 );
	HWRITEASM64( &TMP$532$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$532$1 );
	*(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31))) = -2;
	if( *(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) != -2 ) goto label$405;
	{
		*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) + 4) = V$1;
		*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) = -3;
	}
	label$405:;
	label$404:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == (struct $8FBSYMBOL*)0u ) goto label$406;
	TMP$533$1 = -1;
	goto label$3084;
	label$406:;
	TMP$533$1 = 0;
	label$3084:;
	*(int32*)((uint8*)V$1 + 12) = TMP$533$1;
	label$403:;
}

static void REG_SAVE( void )
{
	label$407:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$534$2;
		int32 vr$0 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$534$2 = vr$0;
		goto label$409;
		label$412:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) == -2 ) goto label$414;
			{
				REG_SPILLING( *(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) );
			}
			label$414:;
			label$413:;
		}
		label$410:;
		IREG$2 = IREG$2 + 1;
		label$409:;
		if( IREG$2 <= TMP$534$2 ) goto label$412;
		label$411:;
	}
	label$408:;
}

static void REG_ALLOWED( boolean ALLOWED$1 )
{
	label$415:;
	if( -ALLOWED$1 != 0 ) goto label$418;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$535$3;
			int32 vr$1 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$535$3 = vr$1 + -2;
			goto label$419;
			label$422:;
			{
				if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -2 ) goto label$424;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				}
				label$424:;
				label$423:;
			}
			label$420:;
			IREG$3 = IREG$3 + 1;
			label$419:;
			if( IREG$3 <= TMP$535$3 ) goto label$422;
			label$421:;
		}
	}
	goto label$417;
	label$418:;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$536$3;
			int32 vr$10 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$536$3 = vr$10 + -2;
			goto label$425;
			label$428:;
			{
				if( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -4 ) goto label$430;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -2;
				}
				label$430:;
				label$429:;
			}
			label$426:;
			IREG$3 = IREG$3 + 1;
			label$425:;
			if( IREG$3 <= TMP$536$3 ) goto label$428;
			label$427:;
		}
	}
	label$417:;
	label$416:;
}

static int32 REG_FINDFREE( int32 VREG$1, int32 REGPARAM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$431:;
	int32 REGFREE$1;
	REGFREE$1 = -1;
	int32 NUMROOM$1;
	__builtin_memset( &NUMROOM$1, 0, 4 );
	static int32 REGSPILL$1 = -1;
	if( *(boolean*)((uint8*)&CTX$ + 153) == (boolean)0 ) goto label$434;
	{
		REG_ALLOWED( (boolean)0 );
		label$434:;
	}
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$438:;
		{
			if( *(int32*)((int32)(int32*)REGHANDLE$ + ((int32)*(int8*)((int32)(int8*)REG_PRIO$ + IREG$2) << (2 & 31))) != -2 ) goto label$440;
			{
				REGFREE$1 = (int32)*(int8*)((int32)(int8*)REG_PRIO$ + IREG$2);
				goto label$437;
				label$440:;
			}
		}
		label$436:;
		IREG$2 = IREG$2 + 1;
		label$435:;
		if( IREG$2 <= 12 ) goto label$438;
		label$437:;
	}
	if( REGFREE$1 != -1 ) goto label$442;
	{
		if( REGPARAM$1 != -1 ) goto label$444;
		{
			REGSPILL$1 = REGSPILL$1 + 1;
			if( REGSPILL$1 != 6 ) goto label$446;
			{
				REGSPILL$1 = 0;
				label$446:;
			}
			label$447:;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + (REGSPILL$1 << (2 & 31))) != -4 ) goto label$448;
			{
				REGSPILL$1 = REGSPILL$1 + 1;
				if( REGSPILL$1 != 6 ) goto label$450;
				{
					REGSPILL$1 = 0;
					label$450:;
				}
			}
			goto label$447;
			label$448:;
			REGFREE$1 = (int32)*(int8*)((int32)(int8*)REG_PRIO$ + REGSPILL$1);
		}
		goto label$443;
		label$444:;
		{
			REGFREE$1 = REGPARAM$1;
		}
		label$443:;
		REG_SPILLING( REGFREE$1 );
	}
	label$442:;
	label$441:;
	if( REGPARAM$1 == REGFREE$1 ) goto label$452;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGFREE$1 << (2 & 31))) = VREG$1;
		*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | (1 << (REGFREE$1 & 31));
	}
	label$452:;
	label$451:;
	if( *(boolean*)((uint8*)&CTX$ + 153) == (boolean)0 ) goto label$454;
	{
		REG_ALLOWED( (boolean)1 );
		label$454:;
	}
	fb$result$1 = REGFREE$1;
	goto label$432;
	label$432:;
	return fb$result$1;
}

static void REG_CALLPTR( FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	label$455:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	int32 P$1;
	__builtin_memset( &P$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$537$2;
		int32 vr$2 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$537$2 = vr$2 + -2;
		goto label$457;
		label$460:;
		{
			FBSTRING TMP$539$3;
			FBSTRING TMP$540$3;
			FBSTRING TMP$541$3;
			FBSTRING TMP$542$3;
			FBSTRING* vr$7 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
			int32 vr$8 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$7 );
			P$1 = vr$8;
			if( P$1 != 0 ) goto label$462;
			{
				goto label$458;
				label$462:;
			}
			int32 vr$12 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
			REGFREE$1 = vr$12;
			__builtin_memset( &TMP$542$3, 0, 12 );
			__builtin_memset( &TMP$539$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$539$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$540$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$540$3, (void*)vr$20, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$541$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$541$3, (void*)vr$23, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$542$3, -1, (void*)vr$26, -1, 0 );
			HWRITEASM64( &TMP$542$3, 3 );
			fb_StrDelete( (FBSTRING*)&TMP$542$3 );
			*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
			int32 vr$34 = fb_StrLen( *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			int32 vr$38 = fb_StrLen( *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			if( vr$34 != vr$38 ) goto label$464;
			{
				FBSTRING* vr$40 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
				fb_StrAssignMid( OP1$1, P$1, -1, (FBSTRING*)vr$40 );
			}
			goto label$463;
			label$464:;
			{
				FBSTRING TMP$543$4;
				FBSTRING TMP$544$4;
				FBSTRING* vr$42 = fb_StrMid( (FBSTRING*)OP1$1, P$1 + 2, -1 );
				FBSTRING* vr$45 = fb_LEFT( (FBSTRING*)OP1$1, P$1 + -1 );
				__builtin_memset( &TMP$543$4, 0, 12 );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$543$4, (void*)vr$45, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$544$4, 0, 12 );
				FBSTRING* vr$51 = fb_StrConcat( &TMP$544$4, (void*)vr$48, -1, (void*)vr$42, -1 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$51, -1, 0 );
			}
			label$463:;
		}
		label$458:;
		IREG$2 = IREG$2 + 1;
		label$457:;
		if( IREG$2 <= TMP$537$2 ) goto label$460;
		label$459:;
	}
	int32 vr$53 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$53 == 0 ) goto label$466;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$545$3;
			int32 vr$54 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$545$3 = vr$54 + -2;
			goto label$467;
			label$470:;
			{
				FBSTRING TMP$546$4;
				FBSTRING TMP$547$4;
				FBSTRING TMP$548$4;
				FBSTRING TMP$549$4;
				FBSTRING* vr$59 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
				int32 vr$60 = fb_StrInstr( 1, (FBSTRING*)OP3$1, (FBSTRING*)vr$59 );
				P$1 = vr$60;
				if( P$1 != 0 ) goto label$472;
				{
					goto label$468;
					label$472:;
				}
				int32 vr$64 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
				REGFREE$1 = vr$64;
				__builtin_memset( &TMP$549$4, 0, 12 );
				__builtin_memset( &TMP$546$4, 0, 12 );
				FBSTRING* vr$72 = fb_StrConcat( &TMP$546$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$547$4, 0, 12 );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$547$4, (void*)vr$72, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$548$4, 0, 12 );
				FBSTRING* vr$78 = fb_StrConcat( &TMP$548$4, (void*)vr$75, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$549$4, -1, (void*)vr$78, -1, 0 );
				HWRITEASM64( &TMP$549$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$549$4 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				int32 vr$86 = fb_StrLen( *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				int32 vr$90 = fb_StrLen( *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				if( vr$86 != vr$90 ) goto label$474;
				{
					FBSTRING* vr$92 = fb_StrAllocTempDescZ( *(char**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
					fb_StrAssignMid( OP3$1, P$1, -1, (FBSTRING*)vr$92 );
				}
				goto label$473;
				label$474:;
				{
					FBSTRING TMP$550$5;
					FBSTRING TMP$551$5;
					FBSTRING* vr$94 = fb_StrMid( (FBSTRING*)OP3$1, P$1 + 2, -1 );
					FBSTRING* vr$97 = fb_LEFT( (FBSTRING*)OP3$1, P$1 + -1 );
					__builtin_memset( &TMP$550$5, 0, 12 );
					FBSTRING* vr$100 = fb_StrConcat( &TMP$550$5, (void*)vr$97, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$551$5, 0, 12 );
					FBSTRING* vr$103 = fb_StrConcat( &TMP$551$5, (void*)vr$100, -1, (void*)vr$94, -1 );
					fb_StrAssign( (void*)OP3$1, -1, (void*)vr$103, -1, 0 );
				}
				label$473:;
			}
			label$468:;
			IREG$3 = IREG$3 + 1;
			label$467:;
			if( IREG$3 <= TMP$545$3 ) goto label$470;
			label$469:;
		}
	}
	label$466:;
	label$465:;
	label$456:;
}

static void REG_BRANCH( struct $8FBSYMBOL* LABEL$1 )
{
	label$475:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) ) goto label$478;
	{
		FBSTRING TMP$552$2;
		FBSTRING TMP$553$2;
		__builtin_memset( &TMP$553$2, 0, 12 );
		char* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$552$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$552$2, (void*)vr$2, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$553$2, -1, (void*)vr$5, -1, 0 );
		HWRITEASM64( &TMP$553$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$553$2 );
		{
			int32 IREG$3;
			IREG$3 = 1;
			label$482:;
			{
				if( *(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) != -3 ) goto label$484;
				{
					FBSTRING TMP$554$5;
					FBSTRING TMP$555$5;
					FBSTRING TMP$556$5;
					FBSTRING TMP$557$5;
					__builtin_memset( &TMP$557$5, 0, 12 );
					FBSTRING* vr$14 = fb_IntToStr( *(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 8) );
					__builtin_memset( &TMP$554$5, 0, 12 );
					FBSTRING* vr$17 = fb_StrConcat( &TMP$554$5, (void*)"mov QWORD PTR ", 15, (void*)vr$14, -1 );
					__builtin_memset( &TMP$555$5, 0, 12 );
					FBSTRING* vr$20 = fb_StrConcat( &TMP$555$5, (void*)vr$17, -1, (void*)"[rbp], ", 8 );
					__builtin_memset( &TMP$556$5, 0, 12 );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$556$5, (void*)vr$20, -1, *(void**)((int32)(char**)REGSTRQ$ + (IREG$3 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$557$5, -1, (void*)vr$23, -1, 0 );
					HWRITEASM64( &TMP$557$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$557$5 );
					*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$3 << (2 & 31))) = -2;
					*(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 12) = 0;
				}
				label$484:;
				label$483:;
				*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) = -1;
				*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
			}
			label$480:;
			IREG$3 = IREG$3 + 1;
			label$479:;
			if( IREG$3 <= 15 ) goto label$482;
			label$481:;
		}
		if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) != (struct $8FBSYMBOL*)0u ) goto label$486;
		{
			*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
		}
		label$486:;
		label$485:;
	}
	goto label$477;
	label$478:;
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) ) goto label$487;
	{
		FBSTRING TMP$565$2;
		FBSTRING TMP$566$2;
		if( *(int32*)((uint8*)&CTX$ + 212) <= 0 ) goto label$489;
		{
			struct $14ASM64_SAVEDREG* V$3;
			void* vr$34 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
			V$3 = (struct $14ASM64_SAVEDREG*)vr$34;
			label$490:;
			if( V$3 == (struct $14ASM64_SAVEDREG*)0u ) goto label$491;
			{
				if( *(int32*)((uint8*)V$3 + 12) == 0 ) goto label$493;
				{
					FBSTRING TMP$560$5;
					FBSTRING TMP$561$5;
					FBSTRING TMP$562$5;
					FBSTRING TMP$563$5;
					FBSTRING TMP$564$5;
					int32 vr$37 = REG_FINDFREE( *(int32*)((uint8*)V$3 + 4), -1 );
					REGFREE$1 = vr$37;
					*(int32*)((uint8*)V$3 + 4) = -2;
					__builtin_memset( &TMP$564$5, 0, 12 );
					FBSTRING* vr$41 = fb_IntToStr( *(int32*)((uint8*)V$3 + 8) );
					__builtin_memset( &TMP$560$5, 0, 12 );
					FBSTRING* vr$45 = fb_StrConcat( &TMP$560$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$561$5, 0, 12 );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$561$5, (void*)vr$45, -1, (void*)", QWORD PTR ", 13 );
					__builtin_memset( &TMP$562$5, 0, 12 );
					FBSTRING* vr$51 = fb_StrConcat( &TMP$562$5, (void*)vr$48, -1, (void*)vr$41, -1 );
					__builtin_memset( &TMP$563$5, 0, 12 );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$563$5, (void*)vr$51, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$564$5, -1, (void*)vr$54, -1, 0 );
					HWRITEASM64( &TMP$564$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$564$5 );
				}
				label$493:;
				label$492:;
				void* vr$58 = FLISTGETNEXT( (void*)V$3 );
				V$3 = (struct $14ASM64_SAVEDREG*)vr$58;
			}
			goto label$490;
			label$491:;
		}
		label$489:;
		label$488:;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
		__builtin_memset( &TMP$566$2, 0, 12 );
		char* vr$60 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$565$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$565$2, (void*)vr$60, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$566$2, -1, (void*)vr$63, -1, 0 );
		HWRITEASM64( &TMP$566$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$566$2 );
	}
	label$487:;
	label$477:;
	label$476:;
}

static void REG_TRANSFER( int32 REGTRANS$1, int32 REGSOURCE$1 )
{
	label$512:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( (-(*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -2) | -(*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -4)) == 0 ) goto label$515;
	{
		goto label$513;
		label$515:;
	}
	if( REGTRANS$1 != REGSOURCE$1 ) goto label$517;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) = -2;
		goto label$513;
	}
	label$517:;
	label$516:;
	int32 vr$8 = REG_FINDFREE( *(int32*)((int32)(int32*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))), REGTRANS$1 );
	REGFREE$1 = vr$8;
	if( REGFREE$1 == REGTRANS$1 ) goto label$519;
	{
		FBSTRING TMP$580$2;
		FBSTRING TMP$581$2;
		FBSTRING TMP$582$2;
		FBSTRING TMP$583$2;
		__builtin_memset( &TMP$583$2, 0, 12 );
		__builtin_memset( &TMP$580$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$580$2, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$581$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$581$2, (void*)vr$14, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$582$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$582$2, (void*)vr$17, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGTRANS$1 << (2 & 31))), 0 );
		fb_StrAssign( (void*)&TMP$583$2, -1, (void*)vr$20, -1, 0 );
		HWRITEASM64( &TMP$583$2, 3 );
		fb_StrDelete( (FBSTRING*)&TMP$583$2 );
	}
	goto label$518;
	label$519:;
	{
	}
	label$518:;
	label$513:;
}

static void MEMCLEAR( int32 BYTESTOCLEAR$1, FBSTRING* DST$1, int32 DTYP$1 )
{
	label$520:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	uint32 NOOPTIM$1;
	__builtin_memset( &NOOPTIM$1, 0, 4 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (char*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$6 = fb_StrInstr( 1, (FBSTRING*)vr$5, (FBSTRING*)DST$1 );
	if( vr$6 == 0 ) goto label$523;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$522;
	label$523:;
	{
		int32 vr$8 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$8;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$525;
		{
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			FBSTRING TMP$587$3;
			FBSTRING TMP$588$3;
			__builtin_memset( &TMP$588$3, 0, 12 );
			__builtin_memset( &TMP$585$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$585$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$586$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$586$3, (void*)vr$15, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$587$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$587$3, (void*)vr$18, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$588$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$588$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$588$3 );
		}
		goto label$524;
		label$525:;
		{
			FBSTRING TMP$589$3;
			FBSTRING TMP$590$3;
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			__builtin_memset( &TMP$592$3, 0, 12 );
			__builtin_memset( &TMP$589$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$589$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$590$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$590$3, (void*)vr$29, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$591$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$591$3, (void*)vr$32, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$592$3, -1, (void*)vr$35, -1, 0 );
			HWRITEASM64( &TMP$592$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$592$3 );
		}
		label$524:;
		*(int32*)((int32)(int32*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
	}
	label$522:;
	if( (((-(NBBYTES$1 != 1u) & -(NBBYTES$1 != 2u)) & -(NBBYTES$1 != 4u)) & -(NBBYTES$1 != 8u)) == 0 ) goto label$527;
	{
		NOOPTIM$1 = 3u;
	}
	goto label$526;
	label$527:;
	{
		NOOPTIM$1 = 0u;
	}
	label$526:;
	if( NBBYTES$1 <= 7u ) goto label$529;
	{
		NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
		if( NB8$1 <= 7 ) goto label$531;
		{
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$597$3;
			FBSTRING TMP$600$3;
			FBSTRING TMP$601$3;
			FBSTRING TMP$602$3;
			FBSTRING TMP$605$3;
			FBSTRING TMP$606$3;
			FBSTRING TMP$607$3;
			FBSTRING TMP$609$3;
			FBSTRING TMP$611$3;
			FBSTRING TMP$612$3;
			__builtin_memset( &TMP$595$3, 0, 12 );
			FBSTRING* vr$49 = fb_IntToStr( NB8$1 );
			__builtin_memset( &TMP$594$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$594$3, (void*)"mov rax, ", 10, (void*)vr$49, -1 );
			fb_StrAssign( (void*)&TMP$595$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$595$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$595$3 );
			char* vr$56 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$56, 0, 0 );
			__builtin_memset( &TMP$597$3, 0, 12 );
			__builtin_memset( &TMP$596$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$596$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$597$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$597$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$597$3 );
			__builtin_memset( &TMP$602$3, 0, 12 );
			__builtin_memset( &TMP$600$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$600$3, (void*)"mov QWORD PTR [", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$601$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$601$3, (void*)vr$70, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$602$3, -1, (void*)vr$73, -1, 0 );
			HWRITEASM64( &TMP$602$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$602$3 );
			__builtin_memset( &TMP$607$3, 0, 12 );
			__builtin_memset( &TMP$605$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$605$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$606$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$606$3, (void*)vr$81, -1, (void*)", 8", 4 );
			fb_StrAssign( (void*)&TMP$607$3, -1, (void*)vr$84, -1, 0 );
			HWRITEASM64( &TMP$607$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$607$3 );
			__builtin_memset( &TMP$609$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$609$3, -1, (void*)"dec rax", 8, 0 );
			HWRITEASM64( &TMP$609$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$609$3 );
			__builtin_memset( &TMP$612$3, 0, 12 );
			__builtin_memset( &TMP$611$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$611$3, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$612$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$612$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$612$3 );
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		}
		goto label$530;
		label$531:;
		{
			{
				int32 INB8$4;
				INB8$4 = 0;
				int32 TMP$613$4;
				TMP$613$4 = NB8$1 + -1;
				goto label$532;
				label$535:;
				{
					FBSTRING TMP$614$5;
					FBSTRING TMP$615$5;
					FBSTRING TMP$616$5;
					FBSTRING TMP$617$5;
					FBSTRING TMP$618$5;
					__builtin_memset( &TMP$618$5, 0, 12 );
					FBSTRING* vr$106 = fb_IntToStr( INB8$4 << (3 & 31) );
					__builtin_memset( &TMP$614$5, 0, 12 );
					FBSTRING* vr$109 = fb_StrConcat( &TMP$614$5, (void*)"mov QWORD PTR ", 15, (void*)vr$106, -1 );
					__builtin_memset( &TMP$615$5, 0, 12 );
					FBSTRING* vr$112 = fb_StrConcat( &TMP$615$5, (void*)vr$109, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$616$5, 0, 12 );
					FBSTRING* vr$115 = fb_StrConcat( &TMP$616$5, (void*)vr$112, -1, (void*)&REGDST$1, -1 );
					__builtin_memset( &TMP$617$5, 0, 12 );
					FBSTRING* vr$118 = fb_StrConcat( &TMP$617$5, (void*)vr$115, -1, (void*)"], 0", 5 );
					fb_StrAssign( (void*)&TMP$618$5, -1, (void*)vr$118, -1, 0 );
					HWRITEASM64( &TMP$618$5, (int32)NOOPTIM$1 );
					fb_StrDelete( (FBSTRING*)&TMP$618$5 );
				}
				label$533:;
				INB8$4 = INB8$4 + 1;
				label$532:;
				if( INB8$4 <= TMP$613$4 ) goto label$535;
				label$534:;
			}
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
			if( NBBYTES$1 == 0u ) goto label$537;
			{
				FBSTRING TMP$619$4;
				FBSTRING TMP$620$4;
				FBSTRING TMP$621$4;
				FBSTRING TMP$622$4;
				__builtin_memset( &TMP$622$4, 0, 12 );
				FBSTRING* vr$127 = fb_IntToStr( NB8$1 << (3 & 31) );
				__builtin_memset( &TMP$619$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$619$4, (void*)"add ", 5, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$620$4, 0, 12 );
				FBSTRING* vr$134 = fb_StrConcat( &TMP$620$4, (void*)vr$131, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$621$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$621$4, (void*)vr$134, -1, (void*)vr$127, -1 );
				fb_StrAssign( (void*)&TMP$622$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$622$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$622$4 );
			}
			label$537:;
			label$536:;
		}
		label$530:;
	}
	label$529:;
	label$528:;
	if( NBBYTES$1 <= 3u ) goto label$539;
	{
		FBSTRING TMP$624$2;
		FBSTRING TMP$625$2;
		FBSTRING TMP$626$2;
		__builtin_memset( &TMP$626$2, 0, 12 );
		__builtin_memset( &TMP$624$2, 0, 12 );
		FBSTRING* vr$145 = fb_StrConcat( &TMP$624$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$625$2, 0, 12 );
		FBSTRING* vr$148 = fb_StrConcat( &TMP$625$2, (void*)vr$145, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$626$2, -1, (void*)vr$148, -1, 0 );
		HWRITEASM64( &TMP$626$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$626$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$541;
		{
			FBSTRING TMP$628$3;
			FBSTRING TMP$629$3;
			FBSTRING TMP$630$3;
			__builtin_memset( &TMP$630$3, 0, 12 );
			__builtin_memset( &TMP$628$3, 0, 12 );
			FBSTRING* vr$157 = fb_StrConcat( &TMP$628$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$629$3, 0, 12 );
			FBSTRING* vr$160 = fb_StrConcat( &TMP$629$3, (void*)vr$157, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$630$3, -1, (void*)vr$160, -1, 0 );
			HWRITEASM64( &TMP$630$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$630$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$543;
			{
				FBSTRING TMP$632$4;
				FBSTRING TMP$633$4;
				FBSTRING TMP$634$4;
				__builtin_memset( &TMP$634$4, 0, 12 );
				__builtin_memset( &TMP$632$4, 0, 12 );
				FBSTRING* vr$169 = fb_StrConcat( &TMP$632$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$633$4, 0, 12 );
				FBSTRING* vr$172 = fb_StrConcat( &TMP$633$4, (void*)vr$169, -1, (void*)"], 0", 5 );
				fb_StrAssign( (void*)&TMP$634$4, -1, (void*)vr$172, -1, 0 );
				HWRITEASM64( &TMP$634$4, (int32)NOOPTIM$1 );
				fb_StrDelete( (FBSTRING*)&TMP$634$4 );
			}
			label$543:;
			label$542:;
		}
		goto label$540;
		label$541:;
		if( NBBYTES$1 <= 0u ) goto label$544;
		{
			FBSTRING TMP$636$3;
			FBSTRING TMP$637$3;
			FBSTRING TMP$638$3;
			__builtin_memset( &TMP$638$3, 0, 12 );
			__builtin_memset( &TMP$636$3, 0, 12 );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$636$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$637$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$637$3, (void*)vr$180, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$638$3, -1, (void*)vr$183, -1, 0 );
			HWRITEASM64( &TMP$638$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$638$3 );
		}
		label$544:;
		label$540:;
	}
	goto label$538;
	label$539:;
	if( NBBYTES$1 <= 1u ) goto label$545;
	{
		FBSTRING TMP$640$2;
		FBSTRING TMP$641$2;
		FBSTRING TMP$642$2;
		__builtin_memset( &TMP$642$2, 0, 12 );
		__builtin_memset( &TMP$640$2, 0, 12 );
		FBSTRING* vr$191 = fb_StrConcat( &TMP$640$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$641$2, 0, 12 );
		FBSTRING* vr$194 = fb_StrConcat( &TMP$641$2, (void*)vr$191, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$642$2, -1, (void*)vr$194, -1, 0 );
		HWRITEASM64( &TMP$642$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$642$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$547;
		{
			FBSTRING TMP$644$3;
			FBSTRING TMP$645$3;
			FBSTRING TMP$646$3;
			__builtin_memset( &TMP$646$3, 0, 12 );
			__builtin_memset( &TMP$644$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$644$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$645$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$645$3, (void*)vr$203, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$646$3, -1, (void*)vr$206, -1, 0 );
			HWRITEASM64( &TMP$646$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$646$3 );
		}
		label$547:;
		label$546:;
	}
	goto label$538;
	label$545:;
	if( NBBYTES$1 <= 0u ) goto label$548;
	{
		FBSTRING TMP$648$2;
		FBSTRING TMP$649$2;
		FBSTRING TMP$650$2;
		__builtin_memset( &TMP$650$2, 0, 12 );
		__builtin_memset( &TMP$648$2, 0, 12 );
		FBSTRING* vr$214 = fb_StrConcat( &TMP$648$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$649$2, 0, 12 );
		FBSTRING* vr$217 = fb_StrConcat( &TMP$649$2, (void*)vr$214, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$650$2, -1, (void*)vr$217, -1, 0 );
		HWRITEASM64( &TMP$650$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$650$2 );
	}
	label$548:;
	label$538:;
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$521:;
}

static void MEMCOPY( int32 BYTESTOCLEAR$1, FBSTRING* SRC$1, FBSTRING* DST$1, int32 STYP$1, int32 DTYP$1 )
{
	label$549:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	FBSTRING REGNBB$1;
	__builtin_memset( &REGNBB$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RSRC$1;
	__builtin_memset( &RSRC$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	int32 RNBB$1;
	__builtin_memset( &RNBB$1, 0, 4 );
	if( BYTESTOCLEAR$1 != 0 ) goto label$552;
	{
		fb_StrDelete( (FBSTRING*)&REGNBB$1 );
		fb_StrDelete( (FBSTRING*)&REGDST$1 );
		fb_StrDelete( (FBSTRING*)&REGSRC$1 );
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$550;
	}
	label$552:;
	label$551:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (char*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$13 = fb_StrInstr( 1, (FBSTRING*)vr$12, (FBSTRING*)SRC$1 );
	if( vr$13 == 0 ) goto label$554;
	{
		fb_StrAssign( (void*)&REGSRC$1, -1, (void*)SRC$1, -1, 0 );
	}
	goto label$553;
	label$554:;
	{
		int32 vr$15 = REG_FINDFREE( 999998, -1 );
		RSRC$1 = vr$15;
		fb_StrAssign( (void*)&REGSRC$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (RSRC$1 << (2 & 31))), 0, 0 );
		if( STYP$1 != 1 ) goto label$556;
		{
			FBSTRING TMP$651$3;
			FBSTRING TMP$652$3;
			FBSTRING TMP$653$3;
			FBSTRING TMP$654$3;
			__builtin_memset( &TMP$654$3, 0, 12 );
			__builtin_memset( &TMP$651$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$651$3, (void*)"lea ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$652$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$652$3, (void*)vr$22, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$653$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$653$3, (void*)vr$25, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$654$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$654$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$654$3 );
		}
		goto label$555;
		label$556:;
		{
			FBSTRING TMP$655$3;
			FBSTRING TMP$656$3;
			FBSTRING TMP$657$3;
			FBSTRING TMP$658$3;
			__builtin_memset( &TMP$658$3, 0, 12 );
			__builtin_memset( &TMP$655$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$655$3, (void*)"mov ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$656$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$656$3, (void*)vr$36, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$657$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$657$3, (void*)vr$39, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$658$3, -1, (void*)vr$42, -1, 0 );
			HWRITEASM64( &TMP$658$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$658$3 );
		}
		label$555:;
	}
	label$553:;
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (char*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$47 = fb_StrInstr( 1, (FBSTRING*)vr$46, (FBSTRING*)DST$1 );
	if( vr$47 == 0 ) goto label$558;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$557;
	label$558:;
	{
		int32 vr$49 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$49;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$560;
		{
			FBSTRING TMP$659$3;
			FBSTRING TMP$660$3;
			FBSTRING TMP$661$3;
			FBSTRING TMP$662$3;
			__builtin_memset( &TMP$662$3, 0, 12 );
			__builtin_memset( &TMP$659$3, 0, 12 );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$659$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$660$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$660$3, (void*)vr$56, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$661$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$661$3, (void*)vr$59, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$662$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$662$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$662$3 );
		}
		goto label$559;
		label$560:;
		{
			FBSTRING TMP$663$3;
			FBSTRING TMP$664$3;
			FBSTRING TMP$665$3;
			FBSTRING TMP$666$3;
			__builtin_memset( &TMP$666$3, 0, 12 );
			__builtin_memset( &TMP$663$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$663$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$664$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$664$3, (void*)vr$70, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$665$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$665$3, (void*)vr$73, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$666$3, -1, (void*)vr$76, -1, 0 );
			HWRITEASM64( &TMP$666$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$666$3 );
		}
		label$559:;
	}
	label$557:;
	NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
	if( NB8$1 <= 7 ) goto label$562;
	{
		FBSTRING TMP$667$2;
		FBSTRING TMP$668$2;
		FBSTRING TMP$669$2;
		FBSTRING TMP$670$2;
		FBSTRING TMP$671$2;
		FBSTRING TMP$672$2;
		FBSTRING TMP$674$2;
		FBSTRING TMP$675$2;
		FBSTRING TMP$676$2;
		FBSTRING TMP$679$2;
		FBSTRING TMP$680$2;
		FBSTRING TMP$681$2;
		FBSTRING TMP$682$2;
		FBSTRING TMP$683$2;
		FBSTRING TMP$684$2;
		FBSTRING TMP$685$2;
		FBSTRING TMP$686$2;
		FBSTRING TMP$687$2;
		FBSTRING TMP$689$2;
		FBSTRING TMP$690$2;
		FBSTRING TMP$691$2;
		FBSTRING TMP$692$2;
		int32 vr$81 = REG_FINDFREE( 999996, -1 );
		RNBB$1 = vr$81;
		fb_StrAssign( (void*)&REGNBB$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (RNBB$1 << (2 & 31))), 0, 0 );
		*(int32*)((int32)(int32*)REGHANDLE$ + (RNBB$1 << (2 & 31))) = -2;
		__builtin_memset( &TMP$670$2, 0, 12 );
		FBSTRING* vr$86 = fb_IntToStr( NB8$1 );
		__builtin_memset( &TMP$667$2, 0, 12 );
		FBSTRING* vr$90 = fb_StrConcat( &TMP$667$2, (void*)"mov ", 5, (void*)&REGNBB$1, -1 );
		__builtin_memset( &TMP$668$2, 0, 12 );
		FBSTRING* vr$93 = fb_StrConcat( &TMP$668$2, (void*)vr$90, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$669$2, 0, 12 );
		FBSTRING* vr$96 = fb_StrConcat( &TMP$669$2, (void*)vr$93, -1, (void*)vr$86, -1 );
		fb_StrAssign( (void*)&TMP$670$2, -1, (void*)vr$96, -1, 0 );
		HWRITEASM64( &TMP$670$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$670$2 );
		char* vr$100 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$100, 0, 0 );
		__builtin_memset( &TMP$672$2, 0, 12 );
		__builtin_memset( &TMP$671$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$671$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$672$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$672$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$672$2 );
		__builtin_memset( &TMP$676$2, 0, 12 );
		__builtin_memset( &TMP$674$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$674$2, (void*)"mov rax, [", 11, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$675$2, 0, 12 );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$675$2, (void*)vr$114, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$676$2, -1, (void*)vr$117, -1, 0 );
		HWRITEASM64( &TMP$676$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$676$2 );
		__builtin_memset( &TMP$681$2, 0, 12 );
		__builtin_memset( &TMP$679$2, 0, 12 );
		FBSTRING* vr$125 = fb_StrConcat( &TMP$679$2, (void*)"mov [", 6, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$680$2, 0, 12 );
		FBSTRING* vr$128 = fb_StrConcat( &TMP$680$2, (void*)vr$125, -1, (void*)"], rax", 7 );
		fb_StrAssign( (void*)&TMP$681$2, -1, (void*)vr$128, -1, 0 );
		HWRITEASM64( &TMP$681$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$681$2 );
		__builtin_memset( &TMP$684$2, 0, 12 );
		__builtin_memset( &TMP$682$2, 0, 12 );
		FBSTRING* vr$136 = fb_StrConcat( &TMP$682$2, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$683$2, 0, 12 );
		FBSTRING* vr$139 = fb_StrConcat( &TMP$683$2, (void*)vr$136, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$684$2, -1, (void*)vr$139, -1, 0 );
		HWRITEASM64( &TMP$684$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$684$2 );
		__builtin_memset( &TMP$687$2, 0, 12 );
		__builtin_memset( &TMP$685$2, 0, 12 );
		FBSTRING* vr$147 = fb_StrConcat( &TMP$685$2, (void*)"add ", 5, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$686$2, 0, 12 );
		FBSTRING* vr$150 = fb_StrConcat( &TMP$686$2, (void*)vr$147, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$687$2, -1, (void*)vr$150, -1, 0 );
		HWRITEASM64( &TMP$687$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$687$2 );
		__builtin_memset( &TMP$690$2, 0, 12 );
		__builtin_memset( &TMP$689$2, 0, 12 );
		FBSTRING* vr$158 = fb_StrConcat( &TMP$689$2, (void*)"dec ", 5, (void*)&REGNBB$1, -1 );
		fb_StrAssign( (void*)&TMP$690$2, -1, (void*)vr$158, -1, 0 );
		HWRITEASM64( &TMP$690$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$690$2 );
		__builtin_memset( &TMP$692$2, 0, 12 );
		__builtin_memset( &TMP$691$2, 0, 12 );
		FBSTRING* vr$166 = fb_StrConcat( &TMP$691$2, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$692$2, -1, (void*)vr$166, -1, 0 );
		HWRITEASM64( &TMP$692$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$692$2 );
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
	}
	goto label$561;
	label$562:;
	if( NB8$1 <= 0 ) goto label$563;
	{
		{
			int32 INB8$3;
			INB8$3 = 0;
			int32 TMP$693$3;
			TMP$693$3 = NB8$1 + -1;
			goto label$564;
			label$567:;
			{
				FBSTRING TMP$694$4;
				FBSTRING TMP$695$4;
				FBSTRING TMP$696$4;
				FBSTRING TMP$697$4;
				FBSTRING TMP$698$4;
				FBSTRING TMP$699$4;
				FBSTRING TMP$700$4;
				FBSTRING TMP$701$4;
				FBSTRING TMP$702$4;
				FBSTRING TMP$703$4;
				__builtin_memset( &TMP$698$4, 0, 12 );
				FBSTRING* vr$176 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$694$4, 0, 12 );
				FBSTRING* vr$179 = fb_StrConcat( &TMP$694$4, (void*)"mov rax, ", 10, (void*)vr$176, -1 );
				__builtin_memset( &TMP$695$4, 0, 12 );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$695$4, (void*)vr$179, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$696$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$696$4, (void*)vr$182, -1, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$697$4, 0, 12 );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$697$4, (void*)vr$185, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$698$4, -1, (void*)vr$188, -1, 0 );
				HWRITEASM64( &TMP$698$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$698$4 );
				__builtin_memset( &TMP$703$4, 0, 12 );
				FBSTRING* vr$195 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$699$4, 0, 12 );
				FBSTRING* vr$198 = fb_StrConcat( &TMP$699$4, (void*)"mov ", 5, (void*)vr$195, -1 );
				__builtin_memset( &TMP$700$4, 0, 12 );
				FBSTRING* vr$201 = fb_StrConcat( &TMP$700$4, (void*)vr$198, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$701$4, 0, 12 );
				FBSTRING* vr$204 = fb_StrConcat( &TMP$701$4, (void*)vr$201, -1, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$702$4, 0, 12 );
				FBSTRING* vr$207 = fb_StrConcat( &TMP$702$4, (void*)vr$204, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$703$4, -1, (void*)vr$207, -1, 0 );
				HWRITEASM64( &TMP$703$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$703$4 );
			}
			label$565:;
			INB8$3 = INB8$3 + 1;
			label$564:;
			if( INB8$3 <= TMP$693$3 ) goto label$567;
			label$566:;
		}
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		if( NBBYTES$1 == 0u ) goto label$569;
		{
			FBSTRING TMP$704$3;
			FBSTRING TMP$705$3;
			FBSTRING TMP$706$3;
			FBSTRING TMP$707$3;
			FBSTRING TMP$708$3;
			FBSTRING TMP$709$3;
			FBSTRING TMP$710$3;
			FBSTRING TMP$711$3;
			__builtin_memset( &TMP$707$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$704$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$704$3, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$705$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$705$3, (void*)vr$220, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$706$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$706$3, (void*)vr$223, -1, (void*)vr$216, -1 );
			fb_StrAssign( (void*)&TMP$707$3, -1, (void*)vr$226, -1, 0 );
			HWRITEASM64( &TMP$707$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$707$3 );
			__builtin_memset( &TMP$711$3, 0, 12 );
			FBSTRING* vr$232 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$708$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$708$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$709$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$709$3, (void*)vr$236, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$710$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$710$3, (void*)vr$239, -1, (void*)vr$232, -1 );
			fb_StrAssign( (void*)&TMP$711$3, -1, (void*)vr$242, -1, 0 );
			HWRITEASM64( &TMP$711$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$711$3 );
		}
		label$569:;
		label$568:;
	}
	label$563:;
	label$561:;
	if( NBBYTES$1 <= 3u ) goto label$571;
	{
		FBSTRING TMP$713$2;
		FBSTRING TMP$714$2;
		FBSTRING TMP$715$2;
		FBSTRING TMP$717$2;
		FBSTRING TMP$718$2;
		FBSTRING TMP$719$2;
		__builtin_memset( &TMP$715$2, 0, 12 );
		__builtin_memset( &TMP$713$2, 0, 12 );
		FBSTRING* vr$250 = fb_StrConcat( &TMP$713$2, (void*)"mov eax, dword ptr [", 21, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$714$2, 0, 12 );
		FBSTRING* vr$253 = fb_StrConcat( &TMP$714$2, (void*)vr$250, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$715$2, -1, (void*)vr$253, -1, 0 );
		HWRITEASM64( &TMP$715$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$715$2 );
		__builtin_memset( &TMP$719$2, 0, 12 );
		__builtin_memset( &TMP$717$2, 0, 12 );
		FBSTRING* vr$261 = fb_StrConcat( &TMP$717$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$718$2, 0, 12 );
		FBSTRING* vr$264 = fb_StrConcat( &TMP$718$2, (void*)vr$261, -1, (void*)"], eax", 7 );
		fb_StrAssign( (void*)&TMP$719$2, -1, (void*)vr$264, -1, 0 );
		HWRITEASM64( &TMP$719$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$719$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$573;
		{
			FBSTRING TMP$721$3;
			FBSTRING TMP$722$3;
			FBSTRING TMP$723$3;
			FBSTRING TMP$725$3;
			FBSTRING TMP$726$3;
			FBSTRING TMP$727$3;
			__builtin_memset( &TMP$723$3, 0, 12 );
			__builtin_memset( &TMP$721$3, 0, 12 );
			FBSTRING* vr$273 = fb_StrConcat( &TMP$721$3, (void*)"mov ax, word ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$722$3, 0, 12 );
			FBSTRING* vr$276 = fb_StrConcat( &TMP$722$3, (void*)vr$273, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$723$3, -1, (void*)vr$276, -1, 0 );
			HWRITEASM64( &TMP$723$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$723$3 );
			__builtin_memset( &TMP$727$3, 0, 12 );
			__builtin_memset( &TMP$725$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$725$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$726$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$726$3, (void*)vr$284, -1, (void*)"], ax", 6 );
			fb_StrAssign( (void*)&TMP$727$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$727$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$727$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$575;
			{
				FBSTRING TMP$729$4;
				FBSTRING TMP$730$4;
				FBSTRING TMP$731$4;
				FBSTRING TMP$733$4;
				FBSTRING TMP$734$4;
				FBSTRING TMP$735$4;
				__builtin_memset( &TMP$731$4, 0, 12 );
				__builtin_memset( &TMP$729$4, 0, 12 );
				FBSTRING* vr$296 = fb_StrConcat( &TMP$729$4, (void*)"mov al, byte ptr 6[", 20, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$730$4, 0, 12 );
				FBSTRING* vr$299 = fb_StrConcat( &TMP$730$4, (void*)vr$296, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$731$4, -1, (void*)vr$299, -1, 0 );
				HWRITEASM64( &TMP$731$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$731$4 );
				__builtin_memset( &TMP$735$4, 0, 12 );
				__builtin_memset( &TMP$733$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$733$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$734$4, 0, 12 );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$734$4, (void*)vr$307, -1, (void*)"], al", 6 );
				fb_StrAssign( (void*)&TMP$735$4, -1, (void*)vr$310, -1, 0 );
				HWRITEASM64( &TMP$735$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$735$4 );
			}
			label$575:;
			label$574:;
		}
		goto label$572;
		label$573:;
		if( NBBYTES$1 <= 0u ) goto label$576;
		{
			FBSTRING TMP$737$3;
			FBSTRING TMP$738$3;
			FBSTRING TMP$739$3;
			FBSTRING TMP$740$3;
			FBSTRING TMP$741$3;
			FBSTRING TMP$742$3;
			__builtin_memset( &TMP$739$3, 0, 12 );
			__builtin_memset( &TMP$737$3, 0, 12 );
			FBSTRING* vr$318 = fb_StrConcat( &TMP$737$3, (void*)"mov al, byte ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$738$3, 0, 12 );
			FBSTRING* vr$321 = fb_StrConcat( &TMP$738$3, (void*)vr$318, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$739$3, -1, (void*)vr$321, -1, 0 );
			HWRITEASM64( &TMP$739$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$739$3 );
			__builtin_memset( &TMP$742$3, 0, 12 );
			__builtin_memset( &TMP$740$3, 0, 12 );
			FBSTRING* vr$329 = fb_StrConcat( &TMP$740$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$741$3, 0, 12 );
			FBSTRING* vr$332 = fb_StrConcat( &TMP$741$3, (void*)vr$329, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$742$3, -1, (void*)vr$332, -1, 0 );
			HWRITEASM64( &TMP$742$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$742$3 );
		}
		label$576:;
		label$572:;
	}
	goto label$570;
	label$571:;
	if( NBBYTES$1 <= 1u ) goto label$577;
	{
		FBSTRING TMP$744$2;
		FBSTRING TMP$745$2;
		FBSTRING TMP$746$2;
		FBSTRING TMP$747$2;
		FBSTRING TMP$748$2;
		FBSTRING TMP$749$2;
		__builtin_memset( &TMP$746$2, 0, 12 );
		__builtin_memset( &TMP$744$2, 0, 12 );
		FBSTRING* vr$340 = fb_StrConcat( &TMP$744$2, (void*)"mov ax, word ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$745$2, 0, 12 );
		FBSTRING* vr$343 = fb_StrConcat( &TMP$745$2, (void*)vr$340, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$746$2, -1, (void*)vr$343, -1, 0 );
		HWRITEASM64( &TMP$746$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$746$2 );
		__builtin_memset( &TMP$749$2, 0, 12 );
		__builtin_memset( &TMP$747$2, 0, 12 );
		FBSTRING* vr$351 = fb_StrConcat( &TMP$747$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$748$2, 0, 12 );
		FBSTRING* vr$354 = fb_StrConcat( &TMP$748$2, (void*)vr$351, -1, (void*)"], ax", 6 );
		fb_StrAssign( (void*)&TMP$749$2, -1, (void*)vr$354, -1, 0 );
		HWRITEASM64( &TMP$749$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$749$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$579;
		{
			FBSTRING TMP$751$3;
			FBSTRING TMP$752$3;
			FBSTRING TMP$753$3;
			FBSTRING TMP$754$3;
			FBSTRING TMP$755$3;
			FBSTRING TMP$756$3;
			__builtin_memset( &TMP$753$3, 0, 12 );
			__builtin_memset( &TMP$751$3, 0, 12 );
			FBSTRING* vr$363 = fb_StrConcat( &TMP$751$3, (void*)"mov al, byte ptr 2[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$752$3, 0, 12 );
			FBSTRING* vr$366 = fb_StrConcat( &TMP$752$3, (void*)vr$363, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$753$3, -1, (void*)vr$366, -1, 0 );
			HWRITEASM64( &TMP$753$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$753$3 );
			__builtin_memset( &TMP$756$3, 0, 12 );
			__builtin_memset( &TMP$754$3, 0, 12 );
			FBSTRING* vr$374 = fb_StrConcat( &TMP$754$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$755$3, 0, 12 );
			FBSTRING* vr$377 = fb_StrConcat( &TMP$755$3, (void*)vr$374, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$756$3, -1, (void*)vr$377, -1, 0 );
			HWRITEASM64( &TMP$756$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$756$3 );
		}
		label$579:;
		label$578:;
	}
	goto label$570;
	label$577:;
	if( NBBYTES$1 <= 0u ) goto label$580;
	{
		FBSTRING TMP$758$2;
		FBSTRING TMP$759$2;
		FBSTRING TMP$760$2;
		FBSTRING TMP$761$2;
		FBSTRING TMP$762$2;
		FBSTRING TMP$763$2;
		__builtin_memset( &TMP$760$2, 0, 12 );
		__builtin_memset( &TMP$758$2, 0, 12 );
		FBSTRING* vr$385 = fb_StrConcat( &TMP$758$2, (void*)"mov al, byte ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$759$2, 0, 12 );
		FBSTRING* vr$388 = fb_StrConcat( &TMP$759$2, (void*)vr$385, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$760$2, -1, (void*)vr$388, -1, 0 );
		HWRITEASM64( &TMP$760$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$760$2 );
		__builtin_memset( &TMP$763$2, 0, 12 );
		__builtin_memset( &TMP$761$2, 0, 12 );
		FBSTRING* vr$396 = fb_StrConcat( &TMP$761$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$762$2, 0, 12 );
		FBSTRING* vr$399 = fb_StrConcat( &TMP$762$2, (void*)vr$396, -1, (void*)"], al", 6 );
		fb_StrAssign( (void*)&TMP$763$2, -1, (void*)vr$399, -1, 0 );
		HWRITEASM64( &TMP$763$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$763$2 );
	}
	label$580:;
	label$570:;
	int32 vr$404 = fb_StrCompare( (void*)&REGSRC$1, -1, (void*)SRC$1, -1 );
	if( vr$404 == 0 ) goto label$582;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (RSRC$1 << (2 & 31))) = -2;
		label$582:;
	}
	int32 vr$407 = fb_StrCompare( (void*)&REGDST$1, -1, (void*)DST$1, -1 );
	if( vr$407 == 0 ) goto label$584;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
		label$584:;
	}
	fb_StrDelete( (FBSTRING*)&REGNBB$1 );
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&REGSRC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$550:;
}

static void _INIT( void )
{
	label$585:;
	FLISTINIT( (struct $6TFLIST*)((uint8*)&CTX$ + 156), 256, 16 );
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 272) = *(int32*)((uint8*)&IR$ + 272) | 131840;
	label$586:;
}

static void _END( void )
{
	label$587:;
	IRHLEND(  );
	FLISTEND( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	label$588:;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$589:;
	int32 IS_GLOBAL$1;
	int32 LENGTH$1;
	int32 LGT$1;
	int32 ALIGN$1;
	FBSTRING STRG$1;
	__builtin_memset( &STRG$1, 0, 12 );
	FBSTRING NEWSTRG$1;
	__builtin_memset( &NEWSTRG$1, 0, 12 );
	int32 PNEW$1;
	__builtin_memset( &PNEW$1, 0, 4 );
	int32 POLD$1;
	__builtin_memset( &POLD$1, 0, 4 );
	int32 LENSTRG$1;
	__builtin_memset( &LENSTRG$1, 0, 4 );
	int32 vr$5 = SYMBISARRAY( SYM$1 );
	if( vr$5 == 0 ) goto label$592;
	{
	}
	label$592:;
	label$591:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 1024) == 0 ) goto label$594;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$596;
		{
			fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
			fb_StrDelete( (FBSTRING*)&STRG$1 );
			goto label$590;
		}
		label$596:;
		label$595:;
		{
			int32 TMP$764$3;
			TMP$764$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$764$3 == 4 ) goto label$599;
			label$600:;
			if( TMP$764$3 != 7 ) goto label$598;
			label$599:;
			{
				FBSTRING TMP$766$4;
				FBSTRING TMP$768$4;
				FBSTRING TMP$772$4;
				FBSTRING TMP$773$4;
				__builtin_memset( &TMP$766$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$766$4, -1, (void*)".data", 6, 0 );
				ASM_SECTION( &TMP$766$4 );
				fb_StrDelete( (FBSTRING*)&TMP$766$4 );
				__builtin_memset( &TMP$768$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$768$4, -1, (void*)".align 8", 9, 0 );
				HWRITEASM64( &TMP$768$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$768$4 );
				if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$602;
				{
					FBSTRING TMP$770$5;
					FBSTRING TMP$771$5;
					__builtin_memset( &TMP$771$5, 0, 12 );
					char* vr$25 = SYMBGETMANGLEDNAME( SYM$1 );
					__builtin_memset( &TMP$770$5, 0, 12 );
					FBSTRING* vr$28 = fb_StrConcat( &TMP$770$5, (void*)".globl ", 8, (void*)vr$25, 0 );
					fb_StrAssign( (void*)&TMP$771$5, -1, (void*)vr$28, -1, 0 );
					HWRITEASM64( &TMP$771$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$771$5 );
				}
				label$602:;
				label$601:;
				__builtin_memset( &TMP$773$4, 0, 12 );
				char* vr$33 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$772$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$772$4, (void*)vr$33, 0, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$773$4, -1, (void*)vr$36, -1, 0 );
				HWRITEASM64( &TMP$773$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$773$4 );
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 7 ) goto label$604;
				{
					FBSTRING TMP$776$5;
					FBSTRING TMP$777$5;
					FBSTRING TMP$778$5;
					FBSTRING TMP$779$5;
					char* vr$43 = HESCAPEW( (uint32*)*(uint32**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$43, 0, 0 );
					__builtin_memset( &TMP$779$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (char*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
					FBSTRING* vr$48 = fb_LEFT( (FBSTRING*)vr$47, *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) << (1 & 31) );
					__builtin_memset( &TMP$776$5, 0, 12 );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$776$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$777$5, 0, 12 );
					FBSTRING* vr$55 = fb_StrConcat( &TMP$777$5, (void*)vr$52, -1, (void*)vr$48, -1 );
					__builtin_memset( &TMP$778$5, 0, 12 );
					FBSTRING* vr$58 = fb_StrConcat( &TMP$778$5, (void*)vr$55, -1, (void*)"\x22", 2 );
					fb_StrAssign( (void*)&TMP$779$5, -1, (void*)vr$58, -1, 0 );
					HWRITEASM64( &TMP$779$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$779$5 );
				}
				goto label$603;
				label$604:;
				{
					FBSTRING TMP$780$5;
					FBSTRING TMP$781$5;
					FBSTRING TMP$782$5;
					char* vr$63 = HESCAPE( (char*)*(char**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$63, 0, 0 );
					__builtin_memset( &TMP$782$5, 0, 12 );
					__builtin_memset( &TMP$780$5, 0, 12 );
					FBSTRING* vr$69 = fb_StrConcat( &TMP$780$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$781$5, 0, 12 );
					FBSTRING* vr$72 = fb_StrConcat( &TMP$781$5, (void*)vr$69, -1, (void*)"\x5C" "0\x22", 4 );
					fb_StrAssign( (void*)&TMP$782$5, -1, (void*)vr$72, -1, 0 );
					HWRITEASM64( &TMP$782$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$782$5 );
				}
				label$603:;
			}
			label$598:;
			label$597:;
		}
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$590;
	}
	label$594:;
	label$593:;
	if( (-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) != (struct $7ASTNODE*)0u) & (-((*(int32*)((uint8*)SYM$1 + 4) & 128) == 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0))) == 0 ) goto label$606;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$608;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 32) != 0 ) goto label$610;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$590;
			}
			label$610:;
			label$609:;
		}
		label$608:;
		label$607:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$590;
	}
	label$606:;
	label$605:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$612;
	{
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$590;
	}
	label$612:;
	label$611:;
	IS_GLOBAL$1 = *(int32*)((uint8*)SYM$1 + 4) & 59;
	if( IS_GLOBAL$1 == 0 ) goto label$614;
	{
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$616;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 16) == 0 ) goto label$618;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$590;
			}
			label$618:;
			label$617:;
		}
		goto label$615;
		label$616:;
		{
			if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$620;
			{
				if( IS_GLOBAL$1 != 2 ) goto label$622;
				{
					EDBGEMITLOCALVAR_ASM64( SYM$1, -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) );
				}
				goto label$621;
				label$622:;
				{
					EDBGEMITGLOBALVAR_ASM64( SYM$1, 2 );
				}
				label$621:;
			}
			label$620:;
			label$619:;
		}
		label$615:;
	}
	goto label$613;
	label$614:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$624;
		{
			LGT$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368);
		}
		goto label$623;
		label$624:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$623:;
		{
			$12FB_SYMBCLASS TMP$783$3;
			TMP$783$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$783$3 == 1 ) goto label$627;
			label$628:;
			if( TMP$783$3 != 12 ) goto label$626;
			label$627:;
			{
				int32 NBELEMENTS$4;
				NBELEMENTS$4 = 1;
				{
					int32 I$5;
					I$5 = *(int32*)((uint8*)SYM$1 + 64) + -1;
					goto label$629;
					label$632:;
					{
						NBELEMENTS$4 = (int32)((int64)NBELEMENTS$4 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31)))) + 1ll));
					}
					label$630:;
					I$5 = I$5 + -1;
					label$629:;
					if( I$5 >= 0 ) goto label$632;
					label$631:;
				}
				LENGTH$1 = LGT$1 * NBELEMENTS$4;
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$634;
				{
					ALIGN$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
					if( ALIGN$1 >= 4 ) goto label$636;
					{
						ALIGN$1 = 4;
					}
					label$636:;
					label$635:;
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LENGTH$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)ALIGN$1) + -1ll) & (int64)~(ALIGN$1 + -1);
				}
				goto label$633;
				label$634:;
				{
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LENGTH$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
				}
				label$633:;
				*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
			}
			label$626:;
			label$625:;
		}
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$638;
		{
			EDBGEMITLOCALVAR_ASM64( SYM$1, -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) );
			label$638:;
		}
	}
	label$613:;
	if( IS_GLOBAL$1 == 0 ) goto label$640;
	{
		FBSTRING TMP$785$2;
		*(int32*)((uint8*)&CTX$ + 4) = 2;
		__builtin_memset( &TMP$785$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$785$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$785$2 );
		fb_StrDelete( (FBSTRING*)&TMP$785$2 );
		int32 SIZE$2;
		__builtin_memset( &SIZE$2, 0, 4 );
		int32 ALIGN$2;
		__builtin_memset( &ALIGN$2, 0, 4 );
		int32 NBELEMENTS$2;
		__builtin_memset( &NBELEMENTS$2, 0, 4 );
		NBELEMENTS$2 = 1;
		{
			int32 I$3;
			I$3 = *(int32*)((uint8*)SYM$1 + 64) + -1;
			goto label$641;
			label$644:;
			{
				NBELEMENTS$2 = (int32)((int64)NBELEMENTS$2 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31)))) + 1ll));
			}
			label$642:;
			I$3 = I$3 + -1;
			label$641:;
			if( I$3 >= 0 ) goto label$644;
			label$643:;
		}
		LENGTH$1 = (int32)(*(int64*)((uint8*)SYM$1 + 40) * (int64)NBELEMENTS$2);
		if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$646;
		{
			ALIGN$2 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
		}
		goto label$645;
		label$646:;
		{
			ALIGN$2 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$645:;
		int32 vr$194 = PW2( ALIGN$2 );
		ALIGN$2 = vr$194;
		if( ALIGN$2 <= 8 ) goto label$648;
		{
			ALIGN$2 = 8;
			label$648:;
		}
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0)) == 0 ) goto label$650;
		{
			FBSTRING TMP$787$3;
			FBSTRING TMP$788$3;
			FBSTRING TMP$789$3;
			FBSTRING TMP$790$3;
			FBSTRING TMP$791$3;
			FBSTRING TMP$792$3;
			__builtin_memset( &TMP$792$3, 0, 12 );
			FBSTRING* vr$203 = fb_IntToStr( ALIGN$2 );
			FBSTRING* vr$204 = fb_IntToStr( LENGTH$1 );
			char* vr$205 = SYMBGETMANGLEDNAME( SYM$1 );
			__builtin_memset( &TMP$787$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$787$3, (void*)".comm ", 7, (void*)vr$205, 0 );
			__builtin_memset( &TMP$788$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$788$3, (void*)vr$208, -1, (void*)",", 2 );
			__builtin_memset( &TMP$789$3, 0, 12 );
			FBSTRING* vr$214 = fb_StrConcat( &TMP$789$3, (void*)vr$211, -1, (void*)vr$204, -1 );
			__builtin_memset( &TMP$790$3, 0, 12 );
			FBSTRING* vr$217 = fb_StrConcat( &TMP$790$3, (void*)vr$214, -1, (void*)",", 2 );
			__builtin_memset( &TMP$791$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$791$3, (void*)vr$217, -1, (void*)vr$203, -1 );
			fb_StrAssign( (void*)&TMP$792$3, -1, (void*)vr$220, -1, 0 );
			HWRITEASM64( &TMP$792$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$792$3 );
		}
		goto label$649;
		label$650:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$652;
			{
				FBSTRING TMP$794$4;
				FBSTRING TMP$795$4;
				FBSTRING TMP$796$4;
				FBSTRING TMP$797$4;
				FBSTRING TMP$798$4;
				FBSTRING TMP$799$4;
				FBSTRING TMP$800$4;
				FBSTRING TMP$801$4;
				__builtin_memset( &TMP$795$4, 0, 12 );
				char* vr$225 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$794$4, 0, 12 );
				FBSTRING* vr$228 = fb_StrConcat( &TMP$794$4, (void*)".local ", 8, (void*)vr$225, 0 );
				fb_StrAssign( (void*)&TMP$795$4, -1, (void*)vr$228, -1, 0 );
				HWRITEASM64( &TMP$795$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$795$4 );
				__builtin_memset( &TMP$801$4, 0, 12 );
				FBSTRING* vr$233 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$234 = fb_IntToStr( LENGTH$1 );
				char* vr$235 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$796$4, 0, 12 );
				FBSTRING* vr$238 = fb_StrConcat( &TMP$796$4, (void*)".comm ", 7, (void*)vr$235, 0 );
				__builtin_memset( &TMP$797$4, 0, 12 );
				FBSTRING* vr$241 = fb_StrConcat( &TMP$797$4, (void*)vr$238, -1, (void*)",", 2 );
				__builtin_memset( &TMP$798$4, 0, 12 );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$798$4, (void*)vr$241, -1, (void*)vr$234, -1 );
				__builtin_memset( &TMP$799$4, 0, 12 );
				FBSTRING* vr$247 = fb_StrConcat( &TMP$799$4, (void*)vr$244, -1, (void*)",", 2 );
				__builtin_memset( &TMP$800$4, 0, 12 );
				FBSTRING* vr$250 = fb_StrConcat( &TMP$800$4, (void*)vr$247, -1, (void*)vr$233, -1 );
				fb_StrAssign( (void*)&TMP$801$4, -1, (void*)vr$250, -1, 0 );
				HWRITEASM64( &TMP$801$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$801$4 );
			}
			goto label$651;
			label$652:;
			{
				FBSTRING TMP$803$4;
				FBSTRING TMP$804$4;
				FBSTRING TMP$805$4;
				FBSTRING TMP$806$4;
				FBSTRING TMP$807$4;
				FBSTRING TMP$808$4;
				__builtin_memset( &TMP$808$4, 0, 12 );
				FBSTRING* vr$255 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$256 = fb_IntToStr( LENGTH$1 );
				char* vr$257 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$803$4, 0, 12 );
				FBSTRING* vr$260 = fb_StrConcat( &TMP$803$4, (void*)".lcomm ", 8, (void*)vr$257, 0 );
				__builtin_memset( &TMP$804$4, 0, 12 );
				FBSTRING* vr$263 = fb_StrConcat( &TMP$804$4, (void*)vr$260, -1, (void*)",", 2 );
				__builtin_memset( &TMP$805$4, 0, 12 );
				FBSTRING* vr$266 = fb_StrConcat( &TMP$805$4, (void*)vr$263, -1, (void*)vr$256, -1 );
				__builtin_memset( &TMP$806$4, 0, 12 );
				FBSTRING* vr$269 = fb_StrConcat( &TMP$806$4, (void*)vr$266, -1, (void*)",", 2 );
				__builtin_memset( &TMP$807$4, 0, 12 );
				FBSTRING* vr$272 = fb_StrConcat( &TMP$807$4, (void*)vr$269, -1, (void*)vr$255, -1 );
				fb_StrAssign( (void*)&TMP$808$4, -1, (void*)vr$272, -1, 0 );
				HWRITEASM64( &TMP$808$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$808$4 );
			}
			label$651:;
		}
		label$649:;
	}
	label$640:;
	label$639:;
	fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
	fb_StrDelete( (FBSTRING*)&STRG$1 );
	label$590:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$653:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	int32 vr$1 = SYMBISDATADESC( SYM$1 );
	if( vr$1 != 0 ) goto label$656;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$656:;
	label$655:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	label$654:;
}

static void NO_ROUNDSD( char* SIZE$1 )
{
	FBSTRING TMP$810$1;
	FBSTRING TMP$812$1;
	FBSTRING TMP$814$1;
	FBSTRING TMP$816$1;
	FBSTRING TMP$819$1;
	FBSTRING TMP$820$1;
	FBSTRING TMP$821$1;
	FBSTRING TMP$823$1;
	FBSTRING TMP$824$1;
	label$657:;
	__builtin_memset( &TMP$810$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$810$1, -1, (void*)"stmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$810$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$810$1 );
	__builtin_memset( &TMP$812$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$812$1, -1, (void*)"push $mxcsr[rip]", 17, 0 );
	HWRITEASM64( &TMP$812$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$812$1 );
	__builtin_memset( &TMP$814$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$814$1, -1, (void*)"and dword ptr $mxcsr[rip], 0xFFFF9FFF", 38, 0 );
	HWRITEASM64( &TMP$814$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$814$1 );
	__builtin_memset( &TMP$816$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$816$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$816$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$816$1 );
	__builtin_memset( &TMP$821$1, 0, 12 );
	__builtin_memset( &TMP$819$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$819$1, (void*)"cvts", 5, (void*)SIZE$1, 0 );
	__builtin_memset( &TMP$820$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$820$1, (void*)vr$19, -1, (void*)"2si rax, xmm0", 14 );
	fb_StrAssign( (void*)&TMP$821$1, -1, (void*)vr$22, -1, 0 );
	HWRITEASM64( &TMP$821$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$821$1 );
	__builtin_memset( &TMP$823$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$823$1, -1, (void*)"pop $mxcsr[rip]", 16, 0 );
	HWRITEASM64( &TMP$823$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$823$1 );
	__builtin_memset( &TMP$824$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$824$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$824$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$824$1 );
	label$658:;
}

static int32 _EMITBEGIN( void )
{
	FBSTRING TMP$827$1;
	FBSTRING TMP$829$1;
	FBSTRING TMP$831$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$659:;
	int32 vr$2 = HFILEEXISTS( (char*)((uint8*)&ENV$ + 584) );
	if( vr$2 == 0 ) goto label$662;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (char*)((uint8*)&ENV$ + 584) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$662:;
	label$661:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 580) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (char*)((uint8*)&ENV$ + 584) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 580), 0 );
	if( vr$8 == 0 ) goto label$664;
	{
		fb$result$1 = 0;
		goto label$660;
	}
	label$664:;
	label$663:;
	*(int32*)&CTX$ = 0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 32), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	*(int32*)((uint8*)&CTX$ + 144) = 0;
	*(int32*)((uint8*)&CTX$ + 148) = 0;
	*(boolean*)((uint8*)&CTX$ + 152) = (boolean)0;
	int32 vr$12 = FBGETOPTION( 3 );
	*($13FB_COMPTARGET*)((uint8*)&CTX$ + 228) = vr$12;
	{
		$13FB_COMPTARGET TMP$825$2;
		TMP$825$2 = *($13FB_COMPTARGET*)((uint8*)&CTX$ + 228);
		if( TMP$825$2 == 2 ) goto label$667;
		label$668:;
		if( TMP$825$2 != 5 ) goto label$666;
		label$667:;
		{
			*(boolean*)((uint8*)&CTX$ + 232) = (boolean)1;
		}
		goto label$665;
		label$666:;
		{
			*(boolean*)((uint8*)&CTX$ + 232) = (boolean)0;
		}
		label$669:;
		label$665:;
	}
	*(int32*)((uint8*)&CTX$ + 236) = 0;
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$673:;
		{
			*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$2 << (2 & 31))) = -2;
			*(int32*)((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) = -1;
			*(struct $14ASM64_SAVEDREG**)(((int32)(struct $13ASM64_REGROOM*)REGROOM$ + (IREG$2 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
		}
		label$671:;
		IREG$2 = IREG$2 + 1;
		label$670:;
		if( IREG$2 <= 15 ) goto label$673;
		label$672:;
	}
	*(int32*)((int32)(int32*)REGHANDLE$ + 24) = -3;
	*(int32*)((int32)(int32*)REGHANDLE$ + 28) = -3;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$675;
	{
		*(int32*)((uint8*)&CTX$ + 244) = 8388608;
		int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 8 );
		if( vr$17 == 0 ) goto label$676;
		void* vr$18 = fb_ErrorThrowAt( 2269, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$676:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 5;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 4;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 28) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 32) = 11;
	}
	goto label$674;
	label$675:;
	{
		*(int32*)((uint8*)&CTX$ + 244) = *(int32*)((uint8*)&ENV$ + 244);
		int32 vr$19 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 6 );
		if( vr$19 == 0 ) goto label$677;
		void* vr$20 = fb_ErrorThrowAt( 2273, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$20;
		label$677:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 11;
	}
	label$674:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$679;
	{
		EDBGEMITHEADER_ASM64( (char*)((uint8*)&ENV$ + 304) );
	}
	goto label$678;
	label$679:;
	{
		*(uint32*)&CTXDBG$ = 1u;
		*(int32*)((uint8*)&CTXDBG$ + 36) = -1;
		*(int32*)((uint8*)&CTXDBG$ + 40) = 4;
		int32 vr$23 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 24u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
		if( vr$23 == 0 ) goto label$680;
		void* vr$24 = fb_ErrorThrowAt( 2286, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$24;
		label$680:;
		*(int32*)((uint8*)&CTXDBG$ + 44) = -1;
		*(int32*)((uint8*)&CTXDBG$ + 48) = 4;
		int32 vr$25 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 24u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
		if( vr$25 == 0 ) goto label$681;
		void* vr$26 = fb_ErrorThrowAt( 2289, (char*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$26;
		label$681:;
		*(int64*)((uint8*)&CTXDBG$ + 56) = 1ll;
		*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	}
	label$678:;
	__builtin_memset( &TMP$827$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$827$1, -1, (void*)".intel_syntax noprefix", 23, 0 );
	HWRITEASM64( &TMP$827$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$827$1 );
	__builtin_memset( &TMP$829$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$829$1, -1, (void*)".cfi_sections .debug_frame", 27, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$829$1 );
	fb_StrDelete( (FBSTRING*)&TMP$829$1 );
	__builtin_memset( &TMP$831$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$831$1, -1, (void*)".text", 6, 0 );
	ASM_SECTION( &TMP$831$1 );
	fb_StrDelete( (FBSTRING*)&TMP$831$1 );
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$683;
	{
		FBSTRING TMP$833$2;
		__builtin_memset( &TMP$833$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$833$2, -1, (void*)"mov qword ptr $totalstacksize[rip], 0", 38, 0 );
		HWRITEASM64( &TMP$833$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$833$2 );
	}
	label$683:;
	label$682:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	fb$result$1 = -1;
	label$660:;
	return fb$result$1;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$684:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 16384) == 0 ) goto label$687;
	{
		goto label$685;
	}
	label$687:;
	label$686:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 65536) == 0 ) goto label$689;
	{
		if( (*(int32*)((uint8*)PROC$1 + 12) & 16777216) == 0 ) goto label$691;
		{
			int32 TMP$834$3;
			FBSTRING TMP$839$3;
			FBSTRING TMP$840$3;
			FBSTRING TMP$841$3;
			FBSTRING TMP$842$3;
			*(int32*)((uint8*)&CTX$ + 144) = *(int32*)((uint8*)&CTX$ + 144) + 1;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$692;
			int32 vr$8 = FBGETOPTION( 0 );
			TMP$834$3 = -(vr$8 == 2);
			goto label$3085;
			label$692:;
			TMP$834$3 = 0;
			label$3085:;
			if( TMP$834$3 == 0 ) goto label$694;
			{
				FBSTRING TMP$836$4;
				__builtin_memset( &TMP$836$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$836$4, -1, (void*)".init_array", 12, 0 );
				ASM_SECTION( &TMP$836$4 );
				fb_StrDelete( (FBSTRING*)&TMP$836$4 );
			}
			goto label$693;
			label$694:;
			{
				FBSTRING TMP$838$4;
				__builtin_memset( &TMP$838$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$838$4, -1, (void*)".ctors", 7, 0 );
				ASM_SECTION( &TMP$838$4 );
				fb_StrDelete( (FBSTRING*)&TMP$838$4 );
			}
			label$693:;
			__builtin_memset( &TMP$839$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$839$3, -1, (void*)".align 8", 9, 0 );
			HWRITEASM64( &TMP$839$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$839$3 );
			__builtin_memset( &TMP$841$3, 0, 12 );
			char* vr$23 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$840$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$840$3, (void*)".quad ", 7, (void*)vr$23, 0 );
			fb_StrAssign( (void*)&TMP$841$3, -1, (void*)vr$26, -1, 0 );
			HWRITEASM64( &TMP$841$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$841$3 );
			__builtin_memset( &TMP$842$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$842$3, -1, (void*)".text", 6, 0 );
			ASM_SECTION( &TMP$842$3 );
			fb_StrDelete( (FBSTRING*)&TMP$842$3 );
		}
		label$691:;
		label$690:;
	}
	goto label$688;
	label$689:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 131072) == 0 ) goto label$695;
	{
		int32 TMP$843$2;
		FBSTRING TMP$848$2;
		FBSTRING TMP$849$2;
		FBSTRING TMP$850$2;
		FBSTRING TMP$851$2;
		*(int32*)((uint8*)&CTX$ + 148) = *(int32*)((uint8*)&CTX$ + 148) + 1;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$696;
		int32 vr$38 = FBGETOPTION( 0 );
		TMP$843$2 = -(vr$38 == 2);
		goto label$3086;
		label$696:;
		TMP$843$2 = 0;
		label$3086:;
		if( TMP$843$2 == 0 ) goto label$698;
		{
			FBSTRING TMP$845$3;
			__builtin_memset( &TMP$845$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$845$3, -1, (void*)".fini_array", 12, 0 );
			ASM_SECTION( &TMP$845$3 );
			fb_StrDelete( (FBSTRING*)&TMP$845$3 );
		}
		goto label$697;
		label$698:;
		{
			FBSTRING TMP$847$3;
			__builtin_memset( &TMP$847$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$847$3, -1, (void*)".dtors", 7, 0 );
			ASM_SECTION( &TMP$847$3 );
			fb_StrDelete( (FBSTRING*)&TMP$847$3 );
		}
		label$697:;
		__builtin_memset( &TMP$848$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$848$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$848$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$848$2 );
		__builtin_memset( &TMP$850$2, 0, 12 );
		char* vr$53 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$849$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$849$2, (void*)".quad ", 7, (void*)vr$53, 0 );
		fb_StrAssign( (void*)&TMP$850$2, -1, (void*)vr$56, -1, 0 );
		HWRITEASM64( &TMP$850$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$850$2 );
		__builtin_memset( &TMP$851$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$851$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$851$2 );
		fb_StrDelete( (FBSTRING*)&TMP$851$2 );
	}
	label$695:;
	label$688:;
	label$685:;
}

static void _EMITEND( void )
{
	label$699:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAR );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	IRFOREACHDATASTMT( (tmp$41)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HADDGLOBALCTORDTOR );
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$702;
	{
		FBSTRING TMP$852$2;
		__builtin_memset( &TMP$852$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$852$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$852$2 );
		fb_StrDelete( (FBSTRING*)&TMP$852$2 );
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$704;
		{
			FBSTRING TMP$854$3;
			FBSTRING TMP$856$3;
			__builtin_memset( &TMP$854$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$854$3, -1, (void*)".local $totalstacksize", 23, 0 );
			HWRITEASM64( &TMP$854$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$854$3 );
			__builtin_memset( &TMP$856$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$856$3, -1, (void*)".comm $totalstacksize,8,8", 26, 0 );
			HWRITEASM64( &TMP$856$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$856$3 );
		}
		goto label$703;
		label$704:;
		{
			FBSTRING TMP$858$3;
			__builtin_memset( &TMP$858$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$858$3, -1, (void*)".lcomm $totalstacksize,8,8", 27, 0 );
			HWRITEASM64( &TMP$858$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$858$3 );
		}
		label$703:;
	}
	label$702:;
	label$701:;
	if( -(*(boolean*)((uint8*)&CTX$ + 152)) != -1 ) goto label$706;
	{
		FBSTRING TMP$859$2;
		int32 TMP$872$2;
		FBSTRING TMP$875$2;
		FBSTRING TMP$877$2;
		FBSTRING TMP$878$2;
		FBSTRING TMP$880$2;
		FBSTRING TMP$882$2;
		FBSTRING TMP$884$2;
		FBSTRING TMP$886$2;
		FBSTRING TMP$888$2;
		FBSTRING TMP$890$2;
		FBSTRING TMP$892$2;
		FBSTRING TMP$894$2;
		FBSTRING TMP$896$2;
		FBSTRING TMP$898$2;
		FBSTRING TMP$900$2;
		FBSTRING TMP$902$2;
		__builtin_memset( &TMP$859$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$859$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$859$2 );
		fb_StrDelete( (FBSTRING*)&TMP$859$2 );
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$708;
		{
			FBSTRING TMP$861$3;
			FBSTRING TMP$863$3;
			FBSTRING TMP$865$3;
			FBSTRING TMP$867$3;
			__builtin_memset( &TMP$861$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$861$3, -1, (void*)".local $mxcsr", 14, 0 );
			HWRITEASM64( &TMP$861$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$861$3 );
			__builtin_memset( &TMP$863$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$863$3, -1, (void*)".comm $mxcsr,8,8", 17, 0 );
			HWRITEASM64( &TMP$863$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$863$3 );
			__builtin_memset( &TMP$865$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$865$3, -1, (void*)".local $sse41", 14, 0 );
			HWRITEASM64( &TMP$865$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$865$3 );
			__builtin_memset( &TMP$867$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$867$3, -1, (void*)".comm $sse41,4,8", 17, 0 );
			HWRITEASM64( &TMP$867$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$867$3 );
		}
		goto label$707;
		label$708:;
		{
			FBSTRING TMP$869$3;
			FBSTRING TMP$871$3;
			__builtin_memset( &TMP$869$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$869$3, -1, (void*)".lcomm $mxcsr,8,8", 18, 0 );
			HWRITEASM64( &TMP$869$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$869$3 );
			__builtin_memset( &TMP$871$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$871$3, -1, (void*)".lcomm $sse41,4,8", 18, 0 );
			HWRITEASM64( &TMP$871$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$871$3 );
		}
		label$707:;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$709;
		int32 vr$49 = FBGETOPTION( 0 );
		TMP$872$2 = -(vr$49 == 2);
		goto label$3087;
		label$709:;
		TMP$872$2 = 0;
		label$3087:;
		if( TMP$872$2 == 0 ) goto label$711;
		{
			FBSTRING TMP$873$3;
			__builtin_memset( &TMP$873$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$873$3, -1, (void*)".init_array", 12, 0 );
			ASM_SECTION( &TMP$873$3 );
			fb_StrDelete( (FBSTRING*)&TMP$873$3 );
		}
		goto label$710;
		label$711:;
		{
			FBSTRING TMP$874$3;
			__builtin_memset( &TMP$874$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$874$3, -1, (void*)".ctors", 7, 0 );
			ASM_SECTION( &TMP$874$3 );
			fb_StrDelete( (FBSTRING*)&TMP$874$3 );
		}
		label$710:;
		__builtin_memset( &TMP$875$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$875$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$875$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$875$2 );
		__builtin_memset( &TMP$877$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$877$2, -1, (void*)".quad $sse41_test", 18, 0 );
		HWRITEASM64( &TMP$877$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$877$2 );
		__builtin_memset( &TMP$878$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$878$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$878$2 );
		fb_StrDelete( (FBSTRING*)&TMP$878$2 );
		__builtin_memset( &TMP$880$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$880$2, -1, (void*)"$sse41_test:", 13, 0 );
		HWRITEASM64( &TMP$880$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$880$2 );
		__builtin_memset( &TMP$882$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$882$2, -1, (void*)"push rbx", 9, 0 );
		HWRITEASM64( &TMP$882$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$882$2 );
		__builtin_memset( &TMP$884$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$884$2, -1, (void*)"push rcx", 9, 0 );
		HWRITEASM64( &TMP$884$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$884$2 );
		__builtin_memset( &TMP$886$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$886$2, -1, (void*)"push rdx", 9, 0 );
		HWRITEASM64( &TMP$886$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$886$2 );
		__builtin_memset( &TMP$888$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$888$2, -1, (void*)"mov  eax, 1", 12, 0 );
		HWRITEASM64( &TMP$888$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$888$2 );
		__builtin_memset( &TMP$890$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$890$2, -1, (void*)"cpuid", 6, 0 );
		HWRITEASM64( &TMP$890$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$890$2 );
		__builtin_memset( &TMP$892$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$892$2, -1, (void*)"and ecx, 0b10000000000000000000", 32, 0 );
		HWRITEASM64( &TMP$892$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$892$2 );
		__builtin_memset( &TMP$894$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$894$2, -1, (void*)"mov $sse41[rip], ecx", 21, 0 );
		HWRITEASM64( &TMP$894$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$894$2 );
		__builtin_memset( &TMP$896$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$896$2, -1, (void*)"pop rdx", 8, 0 );
		HWRITEASM64( &TMP$896$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$896$2 );
		__builtin_memset( &TMP$898$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$898$2, -1, (void*)"pop rcx", 8, 0 );
		HWRITEASM64( &TMP$898$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$898$2 );
		__builtin_memset( &TMP$900$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$900$2, -1, (void*)"pop rbx", 8, 0 );
		HWRITEASM64( &TMP$900$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$900$2 );
		__builtin_memset( &TMP$902$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$902$2, -1, (void*)"ret", 4, 0 );
		HWRITEASM64( &TMP$902$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$902$2 );
	}
	label$706:;
	label$705:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$713;
	{
		FBSTRING TMP$903$2;
		FBSTRING TMP$904$2;
		FBSTRING TMP$905$2;
		FBSTRING TMP$906$2;
		FBSTRING LNAME$2;
		char* vr$119 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$119, 0, 0 );
		__builtin_memset( &TMP$903$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$903$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$903$2, (uint8)100u, (int16)0, &LNAME$2 );
		fb_StrDelete( (FBSTRING*)&TMP$903$2 );
		__builtin_memset( &TMP$904$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$904$2, -1, (void*)".text", 6, 0 );
		HWRITEASM64( &TMP$904$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$904$2 );
		__builtin_memset( &TMP$906$2, 0, 12 );
		__builtin_memset( &TMP$905$2, 0, 12 );
		FBSTRING* vr$134 = fb_StrConcat( &TMP$905$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$906$2, -1, (void*)vr$134, -1, 0 );
		HWRITEASM64( &TMP$906$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$906$2 );
		DBG_EMITSTAB(  );
		DBG_EMITSTR(  );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$713:;
	label$712:;
	int32 vr$140 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 8), -1 );
	if( vr$140 == 0 ) goto label$715;
	{
	}
	label$715:;
	label$714:;
	int32 vr$142 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 20), -1 );
	if( vr$142 == 0 ) goto label$717;
	{
	}
	label$717:;
	label$716:;
	int32 vr$144 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 580), 0, (void*)((uint8*)&CTX$ + 32), -1 );
	if( vr$144 == 0 ) goto label$719;
	{
	}
	label$719:;
	label$718:;
	int32 vr$145 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 580) );
	if( vr$145 == 0 ) goto label$721;
	{
	}
	label$721:;
	label$720:;
	*(int32*)((uint8*)&ENV$ + 580) = 0;
	label$700:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$722:;
	{
		if( OPT$1 != 1 ) goto label$725;
		label$726:;
		{
			fb$result$1 = 0;
			goto label$723;
		}
		goto label$724;
		label$725:;
		{
			ERRREPORTEX( 21, (char*)"_GETOPTIONVALUE", 0, 1, (char*)0u );
		}
		label$727:;
		label$724:;
	}
	label$723:;
	return fb$result$1;
}

static int32 _SUPPORTSOP( int32 OP$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$728:;
	{
		uint32 TMP$908$2;
		TMP$908$2 = (uint32)OP$1;
		goto label$731;
		label$732:;
		{
			int32 TMP$909$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$733;
			TMP$909$3 = 24;
			goto label$3088;
			label$733:;
			TMP$909$3 = DTYPE$1 & 31;
			label$3088:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$909$3 * 28)) != 1 ) goto label$735;
			{
				fb$result$1 = 0;
				goto label$729;
			}
			goto label$734;
			label$735:;
			{
				fb$result$1 = -1;
				goto label$729;
			}
			label$734:;
		}
		goto label$730;
		label$736:;
		{
			fb$result$1 = 0;
			goto label$729;
		}
		goto label$730;
		label$737:;
		{
			fb$result$1 = -1;
			goto label$729;
		}
		goto label$730;
		label$738:;
		{
			fb$result$1 = -1;
		}
		goto label$730;
		label$731:;
		static const void* tmp$4061[16] = {
			&&label$737,
			&&label$738,
			&&label$737,
			&&label$738,
			&&label$737,
			&&label$732,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$738,
			&&label$737,
			&&label$736,
			&&label$736,
		};
		if( (TMP$908$2 - 52u) > 15u ) goto label$738;
		goto *tmp$4061[TMP$908$2 - 52u];
		label$730:;
	}
	label$729:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$739:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16568);
	label$740:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$741:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840140) + 16568);
	label$742:;
}

static int32 PARAM_ANALYZE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* STRUC$1, int32* CPTARG$1, int32* CPTINT$1, int32* CPTFLOAT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$743:;
	struct $8FBSYMBOL* FLD$1;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 INTCPT$1;
	__builtin_memset( &INTCPT$1, 0, 4 );
	int32 FLOATCPT$1;
	__builtin_memset( &FLOATCPT$1, 0, 4 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$746;
	{
		if( DTYPE$1 == 20 ) goto label$748;
		{
			int32 TMP$910$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$749;
			TMP$910$3 = 24;
			goto label$3089;
			label$749:;
			TMP$910$3 = DTYPE$1 & 31;
			label$3089:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$910$3 * 28)) != 1 ) goto label$751;
			{
				if( *CPTFLOAT$1 >= 8 ) goto label$753;
				{
					*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
					fb$result$1 = 1;
					goto label$744;
				}
				goto label$752;
				label$753:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$744;
				}
				label$752:;
			}
			goto label$750;
			label$751:;
			{
				if( *CPTINT$1 >= 6 ) goto label$755;
				{
					*CPTINT$1 = *CPTINT$1 + 1;
					fb$result$1 = 0;
					goto label$744;
				}
				goto label$754;
				label$755:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$744;
				}
				label$754:;
			}
			label$750:;
		}
		goto label$747;
		label$748:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( LGT$1 > (*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368) << (1 & 31)) ) goto label$757;
			{
				{
					uint32 TMP$911$5;
					int32 vr$24 = HGETMAGICSTRUCTNUMBER( STRUC$1 );
					TMP$911$5 = (uint32)vr$24;
					goto label$759;
					label$760:;
					{
						if( *CPTINT$1 >= 6 ) goto label$762;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 0;
							goto label$744;
						}
						label$762:;
						label$761:;
					}
					goto label$758;
					label$763:;
					{
						if( *CPTFLOAT$1 >= 8 ) goto label$765;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 1;
							goto label$744;
						}
						label$765:;
						label$764:;
					}
					goto label$758;
					label$766:;
					{
						if( *CPTINT$1 >= 5 ) goto label$768;
						{
							*CPTINT$1 = *CPTINT$1 + 2;
							fb$result$1 = 2;
							goto label$744;
						}
						label$768:;
						label$767:;
					}
					goto label$758;
					label$769:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$771;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 3;
							goto label$744;
						}
						label$771:;
						label$770:;
					}
					goto label$758;
					label$772:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$774;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 4;
							goto label$744;
						}
						label$774:;
						label$773:;
					}
					goto label$758;
					label$775:;
					{
						if( *CPTFLOAT$1 >= 7 ) goto label$777;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 2;
							fb$result$1 = 5;
							goto label$744;
						}
						label$777:;
						label$776:;
					}
					goto label$758;
					label$759:;
					static const void* tmp$4062[10] = {
						&&label$760,
						&&label$763,
						&&label$758,
						&&label$758,
						&&label$766,
						&&label$772,
						&&label$758,
						&&label$758,
						&&label$769,
						&&label$775,
					};
					if( (TMP$911$5 - 1u) > 9u ) goto label$758;
					goto *tmp$4062[TMP$911$5 - 1u];
					label$758:;
				}
			}
			label$757:;
			label$756:;
			fb$result$1 = 10;
			goto label$744;
		}
		label$747:;
	}
	goto label$745;
	label$746:;
	{
		*CPTARG$1 = *CPTARG$1 + 1;
		*CPTINT$1 = *CPTARG$1;
		*CPTFLOAT$1 = *CPTARG$1;
		if( DTYPE$1 == 20 ) goto label$779;
		{
			int32 TMP$912$3;
			if( *CPTARG$1 <= 4 ) goto label$781;
			{
				fb$result$1 = 10;
				goto label$744;
				label$781:;
			}
			if( (DTYPE$1 & 480) == 0 ) goto label$782;
			TMP$912$3 = 24;
			goto label$3090;
			label$782:;
			TMP$912$3 = DTYPE$1 & 31;
			label$3090:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$912$3 * 28)) != 1 ) goto label$784;
			{
				fb$result$1 = 1;
				goto label$744;
			}
			goto label$783;
			label$784:;
			{
				fb$result$1 = 0;
				goto label$744;
			}
			label$783:;
		}
		goto label$778;
		label$779:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( ((((-(LGT$1 > *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368)) | -(LGT$1 == 3)) | -(LGT$1 == 5)) | -(LGT$1 == 6)) | -(LGT$1 == 7)) == 0 ) goto label$786;
			{
				if( *CPTARG$1 <= 4 ) goto label$788;
				{
					fb$result$1 = 13;
					goto label$744;
				}
				goto label$787;
				label$788:;
				{
					fb$result$1 = 12;
					goto label$744;
				}
				label$787:;
			}
			label$786:;
			label$785:;
			struct $8FBSYMBOL* vr$86 = SYMBUDTGETFIRSTFIELD( STRUC$1 );
			FLD$1 = vr$86;
			label$789:;
			if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$790;
			{
				int32 TMP$913$4;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 480) == 0 ) goto label$791;
				TMP$913$4 = 24;
				goto label$3091;
				label$791:;
				TMP$913$4 = *(int32*)((uint8*)FLD$1 + 28) & 31;
				label$3091:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$913$4 * 28)) != 1 ) goto label$793;
				{
					FLOATCPT$1 = FLOATCPT$1 + 1;
				}
				goto label$792;
				label$793:;
				{
					INTCPT$1 = INTCPT$1 + 1;
				}
				label$792:;
				struct $8FBSYMBOL* vr$94 = SYMBUDTGETNEXTFIELD( FLD$1 );
				FLD$1 = vr$94;
			}
			goto label$789;
			label$790:;
			if( (-(FLOATCPT$1 == 1) & -(INTCPT$1 == 0)) == 0 ) goto label$795;
			{
				if( *CPTARG$1 <= 4 ) goto label$797;
				{
					fb$result$1 = 11;
					goto label$744;
				}
				goto label$796;
				label$797:;
				{
					fb$result$1 = 1;
					goto label$744;
				}
				label$796:;
			}
			goto label$794;
			label$795:;
			{
				if( *CPTARG$1 <= 4 ) goto label$799;
				{
					fb$result$1 = 11;
					goto label$744;
				}
				goto label$798;
				label$799:;
				{
					fb$result$1 = 0;
					goto label$744;
				}
				label$798:;
			}
			label$794:;
		}
		label$778:;
	}
	label$745:;
	label$744:;
	return fb$result$1;
}

static void REG_FILLM( int32 OFS$1, struct $7FBARRAYIiE* LISTREG$1, int32 LGT$1, int32 PREV$1, int32 OFFST$1 )
{
	label$800:;
	{
		uint32 TMP$914$2;
		TMP$914$2 = (uint32)(LGT$1 - OFFST$1);
		goto label$803;
		label$804:;
		{
			FBSTRING TMP$915$3;
			FBSTRING TMP$916$3;
			FBSTRING TMP$917$3;
			FBSTRING TMP$918$3;
			__builtin_memset( &TMP$918$3, 0, 12 );
			FBSTRING* vr$8 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$915$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$915$3, (void*)"mov ", 5, (void*)vr$8, -1 );
			__builtin_memset( &TMP$916$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$916$3, (void*)vr$11, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$917$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$917$3, (void*)vr$14, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$918$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$918$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$918$3 );
		}
		goto label$802;
		label$805:;
		{
			FBSTRING TMP$919$3;
			FBSTRING TMP$920$3;
			FBSTRING TMP$921$3;
			FBSTRING TMP$922$3;
			__builtin_memset( &TMP$922$3, 0, 12 );
			FBSTRING* vr$28 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$919$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$919$3, (void*)"mov ", 5, (void*)vr$28, -1 );
			__builtin_memset( &TMP$920$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$920$3, (void*)vr$31, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$921$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$921$3, (void*)vr$34, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$922$3, -1, (void*)vr$37, -1, 0 );
			HWRITEASM64( &TMP$922$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$922$3 );
		}
		goto label$802;
		label$806:;
		{
			FBSTRING TMP$923$3;
			FBSTRING TMP$924$3;
			FBSTRING TMP$925$3;
			FBSTRING TMP$926$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$932$3;
			FBSTRING TMP$933$3;
			FBSTRING TMP$934$3;
			FBSTRING TMP$935$3;
			__builtin_memset( &TMP$926$3, 0, 12 );
			FBSTRING* vr$48 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$923$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$923$3, (void*)"mov ", 5, (void*)vr$48, -1 );
			__builtin_memset( &TMP$924$3, 0, 12 );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$924$3, (void*)vr$51, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$925$3, 0, 12 );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$925$3, (void*)vr$54, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$926$3, -1, (void*)vr$57, -1, 0 );
			HWRITEASM64( &TMP$926$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$926$3 );
			__builtin_memset( &TMP$931$3, 0, 12 );
			__builtin_memset( &TMP$929$3, 0, 12 );
			FBSTRING* vr$69 = fb_StrConcat( &TMP$929$3, (void*)"shr ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$930$3, 0, 12 );
			FBSTRING* vr$72 = fb_StrConcat( &TMP$930$3, (void*)vr$69, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$931$3, -1, (void*)vr$72, -1, 0 );
			HWRITEASM64( &TMP$931$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$931$3 );
			__builtin_memset( &TMP$935$3, 0, 12 );
			FBSTRING* vr$84 = fb_IntToStr( (OFS$1 + OFFST$1) + 2 );
			__builtin_memset( &TMP$932$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$932$3, (void*)"mov ", 5, (void*)vr$84, -1 );
			__builtin_memset( &TMP$933$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$933$3, (void*)vr$87, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$934$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$934$3, (void*)vr$90, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$935$3, -1, (void*)vr$93, -1, 0 );
			HWRITEASM64( &TMP$935$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$935$3 );
		}
		goto label$802;
		label$807:;
		{
			FBSTRING TMP$936$3;
			FBSTRING TMP$937$3;
			FBSTRING TMP$938$3;
			FBSTRING TMP$939$3;
			__builtin_memset( &TMP$939$3, 0, 12 );
			FBSTRING* vr$104 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$936$3, 0, 12 );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$936$3, (void*)"mov ", 5, (void*)vr$104, -1 );
			__builtin_memset( &TMP$937$3, 0, 12 );
			FBSTRING* vr$110 = fb_StrConcat( &TMP$937$3, (void*)vr$107, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$938$3, 0, 12 );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$938$3, (void*)vr$110, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$939$3, -1, (void*)vr$113, -1, 0 );
			HWRITEASM64( &TMP$939$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$939$3 );
		}
		goto label$802;
		label$808:;
		{
			FBSTRING TMP$940$3;
			FBSTRING TMP$941$3;
			FBSTRING TMP$942$3;
			FBSTRING TMP$943$3;
			FBSTRING TMP$945$3;
			FBSTRING TMP$946$3;
			FBSTRING TMP$947$3;
			FBSTRING TMP$948$3;
			FBSTRING TMP$949$3;
			FBSTRING TMP$950$3;
			FBSTRING TMP$951$3;
			__builtin_memset( &TMP$943$3, 0, 12 );
			FBSTRING* vr$124 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$940$3, 0, 12 );
			FBSTRING* vr$127 = fb_StrConcat( &TMP$940$3, (void*)"mov ", 5, (void*)vr$124, -1 );
			__builtin_memset( &TMP$941$3, 0, 12 );
			FBSTRING* vr$130 = fb_StrConcat( &TMP$941$3, (void*)vr$127, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$942$3, 0, 12 );
			FBSTRING* vr$133 = fb_StrConcat( &TMP$942$3, (void*)vr$130, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$943$3, -1, (void*)vr$133, -1, 0 );
			HWRITEASM64( &TMP$943$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$943$3 );
			__builtin_memset( &TMP$947$3, 0, 12 );
			__builtin_memset( &TMP$945$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$945$3, (void*)"shr ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$946$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$946$3, (void*)vr$145, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$947$3, -1, (void*)vr$148, -1, 0 );
			HWRITEASM64( &TMP$947$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$947$3 );
			__builtin_memset( &TMP$951$3, 0, 12 );
			FBSTRING* vr$160 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$948$3, 0, 12 );
			FBSTRING* vr$163 = fb_StrConcat( &TMP$948$3, (void*)"mov ", 5, (void*)vr$160, -1 );
			__builtin_memset( &TMP$949$3, 0, 12 );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$949$3, (void*)vr$163, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$950$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$950$3, (void*)vr$166, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$951$3, -1, (void*)vr$169, -1, 0 );
			HWRITEASM64( &TMP$951$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$951$3 );
		}
		goto label$802;
		label$809:;
		{
			FBSTRING TMP$952$3;
			FBSTRING TMP$953$3;
			FBSTRING TMP$954$3;
			FBSTRING TMP$955$3;
			FBSTRING TMP$956$3;
			FBSTRING TMP$957$3;
			FBSTRING TMP$958$3;
			FBSTRING TMP$959$3;
			FBSTRING TMP$960$3;
			FBSTRING TMP$961$3;
			FBSTRING TMP$962$3;
			__builtin_memset( &TMP$955$3, 0, 12 );
			FBSTRING* vr$180 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$952$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$952$3, (void*)"mov ", 5, (void*)vr$180, -1 );
			__builtin_memset( &TMP$953$3, 0, 12 );
			FBSTRING* vr$186 = fb_StrConcat( &TMP$953$3, (void*)vr$183, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$954$3, 0, 12 );
			FBSTRING* vr$189 = fb_StrConcat( &TMP$954$3, (void*)vr$186, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$955$3, -1, (void*)vr$189, -1, 0 );
			HWRITEASM64( &TMP$955$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$955$3 );
			__builtin_memset( &TMP$958$3, 0, 12 );
			__builtin_memset( &TMP$956$3, 0, 12 );
			FBSTRING* vr$201 = fb_StrConcat( &TMP$956$3, (void*)"shr ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$957$3, 0, 12 );
			FBSTRING* vr$204 = fb_StrConcat( &TMP$957$3, (void*)vr$201, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$958$3, -1, (void*)vr$204, -1, 0 );
			HWRITEASM64( &TMP$958$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$958$3 );
			__builtin_memset( &TMP$962$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$959$3, 0, 12 );
			FBSTRING* vr$219 = fb_StrConcat( &TMP$959$3, (void*)"mov ", 5, (void*)vr$216, -1 );
			__builtin_memset( &TMP$960$3, 0, 12 );
			FBSTRING* vr$222 = fb_StrConcat( &TMP$960$3, (void*)vr$219, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$961$3, 0, 12 );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$961$3, (void*)vr$222, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$962$3, -1, (void*)vr$225, -1, 0 );
			HWRITEASM64( &TMP$962$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$962$3 );
		}
		goto label$802;
		label$810:;
		{
			FBSTRING TMP$963$3;
			FBSTRING TMP$964$3;
			FBSTRING TMP$965$3;
			FBSTRING TMP$966$3;
			FBSTRING TMP$967$3;
			FBSTRING TMP$968$3;
			FBSTRING TMP$969$3;
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			FBSTRING TMP$973$3;
			FBSTRING TMP$974$3;
			FBSTRING TMP$975$3;
			FBSTRING TMP$976$3;
			FBSTRING TMP$977$3;
			FBSTRING TMP$978$3;
			FBSTRING TMP$979$3;
			FBSTRING TMP$980$3;
			__builtin_memset( &TMP$966$3, 0, 12 );
			FBSTRING* vr$236 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$963$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$963$3, (void*)"mov ", 5, (void*)vr$236, -1 );
			__builtin_memset( &TMP$964$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$964$3, (void*)vr$239, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$965$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$965$3, (void*)vr$242, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$966$3, -1, (void*)vr$245, -1, 0 );
			HWRITEASM64( &TMP$966$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$966$3 );
			__builtin_memset( &TMP$969$3, 0, 12 );
			__builtin_memset( &TMP$967$3, 0, 12 );
			FBSTRING* vr$257 = fb_StrConcat( &TMP$967$3, (void*)"shr ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$968$3, 0, 12 );
			FBSTRING* vr$260 = fb_StrConcat( &TMP$968$3, (void*)vr$257, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$969$3, -1, (void*)vr$260, -1, 0 );
			HWRITEASM64( &TMP$969$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$969$3 );
			__builtin_memset( &TMP$973$3, 0, 12 );
			FBSTRING* vr$272 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$970$3, 0, 12 );
			FBSTRING* vr$275 = fb_StrConcat( &TMP$970$3, (void*)"mov ", 5, (void*)vr$272, -1 );
			__builtin_memset( &TMP$971$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$971$3, (void*)vr$275, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$972$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$972$3, (void*)vr$278, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$973$3, -1, (void*)vr$281, -1, 0 );
			HWRITEASM64( &TMP$973$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$973$3 );
			__builtin_memset( &TMP$976$3, 0, 12 );
			__builtin_memset( &TMP$974$3, 0, 12 );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$974$3, (void*)"shr ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$975$3, 0, 12 );
			FBSTRING* vr$296 = fb_StrConcat( &TMP$975$3, (void*)vr$293, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$976$3, -1, (void*)vr$296, -1, 0 );
			HWRITEASM64( &TMP$976$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$976$3 );
			__builtin_memset( &TMP$980$3, 0, 12 );
			FBSTRING* vr$308 = fb_IntToStr( (OFS$1 + OFFST$1) + 6 );
			__builtin_memset( &TMP$977$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$977$3, (void*)"mov ", 5, (void*)vr$308, -1 );
			__builtin_memset( &TMP$978$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$978$3, (void*)vr$311, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$979$3, 0, 12 );
			FBSTRING* vr$317 = fb_StrConcat( &TMP$979$3, (void*)vr$314, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$980$3, -1, (void*)vr$317, -1, 0 );
			HWRITEASM64( &TMP$980$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$980$3 );
		}
		goto label$802;
		label$811:;
		{
			FBSTRING TMP$981$3;
			FBSTRING TMP$982$3;
			FBSTRING TMP$983$3;
			FBSTRING TMP$984$3;
			__builtin_memset( &TMP$984$3, 0, 12 );
			FBSTRING* vr$328 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$981$3, 0, 12 );
			FBSTRING* vr$331 = fb_StrConcat( &TMP$981$3, (void*)"mov ", 5, (void*)vr$328, -1 );
			__builtin_memset( &TMP$982$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$982$3, (void*)vr$331, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$983$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$983$3, (void*)vr$334, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$984$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$984$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$984$3 );
		}
		goto label$802;
		label$803:;
		static const void* tmp$4063[8] = {
			&&label$804,
			&&label$805,
			&&label$806,
			&&label$807,
			&&label$808,
			&&label$809,
			&&label$810,
			&&label$811,
		};
		if( (TMP$914$2 - 1u) > 7u ) goto label$802;
		goto *tmp$4063[TMP$914$2 - 1u];
		label$802:;
	}
	label$801:;
}

static void REG_FILLR( int32 LGT$1, FBSTRING* SRC$1, int32 CPTINT$1, struct $7FBARRAYIiE* LISTREG$1, int32 REG2$1 )
{
	label$812:;
	char* REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	FBSTRING REGDST$1;
	fb_StrInit( (void*)&REGDST$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0, 0 );
	if( LGT$1 <= 8 ) goto label$815;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(char**)SRC$1 != 45u ) goto label$817;
		{
			FBSTRING TMP$985$3;
			FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (char*)"[rbp]", 5 );
			int32 vr$11 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$10 );
			FBSTRING* vr$13 = fb_LEFT( (FBSTRING*)SRC$1, vr$11 + -1 );
			int32 vr$14 = fb_VALINT( (FBSTRING*)vr$13 );
			FBSTRING* vr$16 = fb_IntToStr( vr$14 + 8 );
			__builtin_memset( &TMP$985$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$985$3, (void*)vr$16, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$19, -1, 0 );
		}
		goto label$816;
		label$817:;
		{
			FBSTRING TMP$987$3;
			FBSTRING TMP$988$3;
			FBSTRING TMP$990$3;
			__builtin_memset( &TMP$988$3, 0, 12 );
			__builtin_memset( &TMP$987$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$987$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$988$3, -1, (void*)vr$23, -1, 0 );
			HWRITEASM64( &TMP$988$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$988$3 );
			__builtin_memset( &TMP$990$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$990$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$990$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$990$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$816:;
	}
	label$815:;
	label$814:;
	if( (((-(LGT$1 != 1) & -(LGT$1 != 2)) & -(LGT$1 != 4)) & -(LGT$1 != 8)) == 0 ) goto label$819;
	{
		char* vr$38 = REG_TEMPO(  );
		REGSRC$1 = vr$38;
	}
	label$819:;
	label$818:;
	REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1), REG2$1 );
	{
		uint32 TMP$992$2;
		TMP$992$2 = (uint32)LGT$1;
		goto label$821;
		label$822:;
		{
			FBSTRING TMP$995$3;
			FBSTRING TMP$996$3;
			FBSTRING TMP$997$3;
			FBSTRING TMP$998$3;
			__builtin_memset( &TMP$998$3, 0, 12 );
			__builtin_memset( &TMP$995$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$995$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$996$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$996$3, (void*)vr$46, -1, (void*)", BYTE PTR ", 12 );
			__builtin_memset( &TMP$997$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$997$3, (void*)vr$49, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$998$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$998$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$998$3 );
		}
		goto label$820;
		label$823:;
		{
			FBSTRING TMP$1000$3;
			FBSTRING TMP$1001$3;
			FBSTRING TMP$1002$3;
			FBSTRING TMP$1003$3;
			__builtin_memset( &TMP$1003$3, 0, 12 );
			__builtin_memset( &TMP$1000$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$1000$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1001$3, 0, 12 );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$1001$3, (void*)vr$60, -1, (void*)", WORD PTR ", 12 );
			__builtin_memset( &TMP$1002$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$1002$3, (void*)vr$63, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1003$3, -1, (void*)vr$66, -1, 0 );
			HWRITEASM64( &TMP$1003$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1003$3 );
		}
		goto label$820;
		label$824:;
		{
			FBSTRING TMP$1004$3;
			FBSTRING TMP$1005$3;
			FBSTRING TMP$1006$3;
			FBSTRING TMP$1007$3;
			FBSTRING TMP$1009$3;
			FBSTRING TMP$1010$3;
			FBSTRING TMP$1011$3;
			FBSTRING TMP$1012$3;
			FBSTRING TMP$1013$3;
			FBSTRING TMP$1015$3;
			FBSTRING TMP$1016$3;
			FBSTRING TMP$1017$3;
			FBSTRING TMP$1019$3;
			FBSTRING TMP$1022$3;
			FBSTRING TMP$1023$3;
			FBSTRING TMP$1024$3;
			__builtin_memset( &TMP$1007$3, 0, 12 );
			__builtin_memset( &TMP$1004$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$1004$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1005$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$1005$3, (void*)vr$73, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1006$3, 0, 12 );
			FBSTRING* vr$79 = fb_StrConcat( &TMP$1006$3, (void*)vr$76, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1007$3, -1, (void*)vr$79, -1, 0 );
			HWRITEASM64( &TMP$1007$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1007$3 );
			__builtin_memset( &TMP$1013$3, 0, 12 );
			__builtin_memset( &TMP$1009$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1009$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1010$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$1010$3, (void*)vr$87, -1, (void*)", WORD PTR [", 13 );
			__builtin_memset( &TMP$1011$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$1011$3, (void*)vr$90, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1012$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$1012$3, (void*)vr$93, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1013$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$1013$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1013$3 );
			__builtin_memset( &TMP$1017$3, 0, 12 );
			__builtin_memset( &TMP$1015$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$1015$3, (void*)"movzx eax, BYTE PTR 2[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1016$3, 0, 12 );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$1016$3, (void*)vr$103, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1017$3, -1, (void*)vr$106, -1, 0 );
			HWRITEASM64( &TMP$1017$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1017$3 );
			__builtin_memset( &TMP$1019$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1019$3, -1, (void*)"shl rax, 16", 12, 0 );
			HWRITEASM64( &TMP$1019$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1019$3 );
			__builtin_memset( &TMP$1024$3, 0, 12 );
			__builtin_memset( &TMP$1022$3, 0, 12 );
			FBSTRING* vr$118 = fb_StrConcat( &TMP$1022$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1023$3, 0, 12 );
			FBSTRING* vr$121 = fb_StrConcat( &TMP$1023$3, (void*)vr$118, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1024$3, -1, (void*)vr$121, -1, 0 );
			HWRITEASM64( &TMP$1024$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1024$3 );
		}
		goto label$820;
		label$825:;
		{
			FBSTRING TMP$1026$3;
			FBSTRING TMP$1027$3;
			FBSTRING TMP$1028$3;
			FBSTRING TMP$1029$3;
			__builtin_memset( &TMP$1029$3, 0, 12 );
			__builtin_memset( &TMP$1026$3, 0, 12 );
			FBSTRING* vr$132 = fb_StrConcat( &TMP$1026$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1027$3, 0, 12 );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$1027$3, (void*)vr$132, -1, (void*)", DWORD PTR ", 13 );
			__builtin_memset( &TMP$1028$3, 0, 12 );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$1028$3, (void*)vr$135, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1029$3, -1, (void*)vr$138, -1, 0 );
			HWRITEASM64( &TMP$1029$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1029$3 );
		}
		goto label$820;
		label$826:;
		{
			FBSTRING TMP$1030$3;
			FBSTRING TMP$1031$3;
			FBSTRING TMP$1032$3;
			FBSTRING TMP$1033$3;
			FBSTRING TMP$1035$3;
			FBSTRING TMP$1036$3;
			FBSTRING TMP$1037$3;
			FBSTRING TMP$1038$3;
			FBSTRING TMP$1039$3;
			FBSTRING TMP$1041$3;
			FBSTRING TMP$1042$3;
			FBSTRING TMP$1043$3;
			FBSTRING TMP$1045$3;
			FBSTRING TMP$1046$3;
			FBSTRING TMP$1047$3;
			FBSTRING TMP$1048$3;
			__builtin_memset( &TMP$1033$3, 0, 12 );
			__builtin_memset( &TMP$1030$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$1030$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1031$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$1031$3, (void*)vr$145, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1032$3, 0, 12 );
			FBSTRING* vr$151 = fb_StrConcat( &TMP$1032$3, (void*)vr$148, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1033$3, -1, (void*)vr$151, -1, 0 );
			HWRITEASM64( &TMP$1033$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1033$3 );
			__builtin_memset( &TMP$1039$3, 0, 12 );
			__builtin_memset( &TMP$1035$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$1035$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1036$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$1036$3, (void*)vr$162, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1037$3, 0, 12 );
			FBSTRING* vr$168 = fb_StrConcat( &TMP$1037$3, (void*)vr$165, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1038$3, 0, 12 );
			FBSTRING* vr$171 = fb_StrConcat( &TMP$1038$3, (void*)vr$168, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1039$3, -1, (void*)vr$171, -1, 0 );
			HWRITEASM64( &TMP$1039$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1039$3 );
			__builtin_memset( &TMP$1043$3, 0, 12 );
			__builtin_memset( &TMP$1041$3, 0, 12 );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$1041$3, (void*)"movzx eax, BYTE PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1042$3, 0, 12 );
			FBSTRING* vr$181 = fb_StrConcat( &TMP$1042$3, (void*)vr$178, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1043$3, -1, (void*)vr$181, -1, 0 );
			HWRITEASM64( &TMP$1043$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1043$3 );
			__builtin_memset( &TMP$1045$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1045$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1045$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1045$3 );
			__builtin_memset( &TMP$1048$3, 0, 12 );
			__builtin_memset( &TMP$1046$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$1046$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1047$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$1047$3, (void*)vr$193, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1048$3, -1, (void*)vr$196, -1, 0 );
			HWRITEASM64( &TMP$1048$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1048$3 );
		}
		goto label$820;
		label$827:;
		{
			FBSTRING TMP$1049$3;
			FBSTRING TMP$1050$3;
			FBSTRING TMP$1051$3;
			FBSTRING TMP$1052$3;
			FBSTRING TMP$1053$3;
			FBSTRING TMP$1054$3;
			FBSTRING TMP$1055$3;
			FBSTRING TMP$1056$3;
			FBSTRING TMP$1057$3;
			FBSTRING TMP$1059$3;
			FBSTRING TMP$1060$3;
			FBSTRING TMP$1061$3;
			FBSTRING TMP$1062$3;
			FBSTRING TMP$1063$3;
			FBSTRING TMP$1064$3;
			FBSTRING TMP$1065$3;
			__builtin_memset( &TMP$1052$3, 0, 12 );
			__builtin_memset( &TMP$1049$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$1049$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1050$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$1050$3, (void*)vr$203, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1051$3, 0, 12 );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$1051$3, (void*)vr$206, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1052$3, -1, (void*)vr$209, -1, 0 );
			HWRITEASM64( &TMP$1052$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1052$3 );
			__builtin_memset( &TMP$1057$3, 0, 12 );
			__builtin_memset( &TMP$1053$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$1053$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1054$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$1054$3, (void*)vr$220, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1055$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$1055$3, (void*)vr$223, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1056$3, 0, 12 );
			FBSTRING* vr$229 = fb_StrConcat( &TMP$1056$3, (void*)vr$226, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1057$3, -1, (void*)vr$229, -1, 0 );
			HWRITEASM64( &TMP$1057$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1057$3 );
			__builtin_memset( &TMP$1061$3, 0, 12 );
			__builtin_memset( &TMP$1059$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$1059$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1060$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$1060$3, (void*)vr$236, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1061$3, -1, (void*)vr$239, -1, 0 );
			HWRITEASM64( &TMP$1061$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1061$3 );
			__builtin_memset( &TMP$1062$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1062$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1062$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1062$3 );
			__builtin_memset( &TMP$1065$3, 0, 12 );
			__builtin_memset( &TMP$1063$3, 0, 12 );
			FBSTRING* vr$251 = fb_StrConcat( &TMP$1063$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1064$3, 0, 12 );
			FBSTRING* vr$254 = fb_StrConcat( &TMP$1064$3, (void*)vr$251, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1065$3, -1, (void*)vr$254, -1, 0 );
			HWRITEASM64( &TMP$1065$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1065$3 );
		}
		goto label$820;
		label$828:;
		{
			FBSTRING TMP$1066$3;
			FBSTRING TMP$1067$3;
			FBSTRING TMP$1068$3;
			FBSTRING TMP$1069$3;
			FBSTRING TMP$1070$3;
			FBSTRING TMP$1071$3;
			FBSTRING TMP$1072$3;
			FBSTRING TMP$1073$3;
			FBSTRING TMP$1074$3;
			FBSTRING TMP$1075$3;
			FBSTRING TMP$1076$3;
			FBSTRING TMP$1077$3;
			FBSTRING TMP$1078$3;
			FBSTRING TMP$1079$3;
			FBSTRING TMP$1080$3;
			FBSTRING TMP$1081$3;
			FBSTRING TMP$1083$3;
			FBSTRING TMP$1084$3;
			FBSTRING TMP$1085$3;
			FBSTRING TMP$1087$3;
			FBSTRING TMP$1088$3;
			FBSTRING TMP$1089$3;
			FBSTRING TMP$1090$3;
			__builtin_memset( &TMP$1069$3, 0, 12 );
			__builtin_memset( &TMP$1066$3, 0, 12 );
			FBSTRING* vr$261 = fb_StrConcat( &TMP$1066$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1067$3, 0, 12 );
			FBSTRING* vr$264 = fb_StrConcat( &TMP$1067$3, (void*)vr$261, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1068$3, 0, 12 );
			FBSTRING* vr$267 = fb_StrConcat( &TMP$1068$3, (void*)vr$264, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1069$3, -1, (void*)vr$267, -1, 0 );
			HWRITEASM64( &TMP$1069$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1069$3 );
			__builtin_memset( &TMP$1074$3, 0, 12 );
			__builtin_memset( &TMP$1070$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$1070$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$1071$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$1071$3, (void*)vr$278, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$1072$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$1072$3, (void*)vr$281, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1073$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$1073$3, (void*)vr$284, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1074$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$1074$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1074$3 );
			__builtin_memset( &TMP$1077$3, 0, 12 );
			__builtin_memset( &TMP$1075$3, 0, 12 );
			FBSTRING* vr$294 = fb_StrConcat( &TMP$1075$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1076$3, 0, 12 );
			FBSTRING* vr$297 = fb_StrConcat( &TMP$1076$3, (void*)vr$294, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1077$3, -1, (void*)vr$297, -1, 0 );
			HWRITEASM64( &TMP$1077$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1077$3 );
			__builtin_memset( &TMP$1078$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1078$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$1078$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1078$3 );
			__builtin_memset( &TMP$1081$3, 0, 12 );
			__builtin_memset( &TMP$1079$3, 0, 12 );
			FBSTRING* vr$309 = fb_StrConcat( &TMP$1079$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1080$3, 0, 12 );
			FBSTRING* vr$312 = fb_StrConcat( &TMP$1080$3, (void*)vr$309, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1081$3, -1, (void*)vr$312, -1, 0 );
			HWRITEASM64( &TMP$1081$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1081$3 );
			__builtin_memset( &TMP$1085$3, 0, 12 );
			__builtin_memset( &TMP$1083$3, 0, 12 );
			FBSTRING* vr$319 = fb_StrConcat( &TMP$1083$3, (void*)"movzx eax, BYTE PTR 6[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1084$3, 0, 12 );
			FBSTRING* vr$322 = fb_StrConcat( &TMP$1084$3, (void*)vr$319, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1085$3, -1, (void*)vr$322, -1, 0 );
			HWRITEASM64( &TMP$1085$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1085$3 );
			__builtin_memset( &TMP$1087$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1087$3, -1, (void*)"shl rax, 48", 12, 0 );
			HWRITEASM64( &TMP$1087$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1087$3 );
			__builtin_memset( &TMP$1090$3, 0, 12 );
			__builtin_memset( &TMP$1088$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$1088$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1089$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$1089$3, (void*)vr$334, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1090$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$1090$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1090$3 );
		}
		goto label$820;
		label$829:;
		{
			FBSTRING TMP$1091$3;
			FBSTRING TMP$1092$3;
			FBSTRING TMP$1093$3;
			FBSTRING TMP$1094$3;
			__builtin_memset( &TMP$1094$3, 0, 12 );
			__builtin_memset( &TMP$1091$3, 0, 12 );
			FBSTRING* vr$345 = fb_StrConcat( &TMP$1091$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1092$3, 0, 12 );
			FBSTRING* vr$348 = fb_StrConcat( &TMP$1092$3, (void*)vr$345, -1, (void*)", QWORD PTR ", 13 );
			__builtin_memset( &TMP$1093$3, 0, 12 );
			FBSTRING* vr$351 = fb_StrConcat( &TMP$1093$3, (void*)vr$348, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1094$3, -1, (void*)vr$351, -1, 0 );
			HWRITEASM64( &TMP$1094$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1094$3 );
		}
		goto label$820;
		label$821:;
		static const void* tmp$4064[8] = {
			&&label$822,
			&&label$823,
			&&label$824,
			&&label$825,
			&&label$826,
			&&label$827,
			&&label$828,
			&&label$829,
		};
		if( (TMP$992$2 - 1u) > 7u ) goto label$820;
		goto *tmp$4064[TMP$992$2 - 1u];
		label$820:;
	}
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	label$813:;
}

static void REG_FILLX( int32 LGT$1, FBSTRING* SRC$1, int32 CPTFLOAT$1 )
{
	label$830:;
	if( LGT$1 <= 8 ) goto label$833;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(char**)SRC$1 != 45u ) goto label$835;
		{
			FBSTRING TMP$1095$3;
			FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (char*)"[rbp]", 5 );
			int32 vr$5 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$4 );
			FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)SRC$1, vr$5 + -1 );
			int32 vr$8 = fb_VALINT( (FBSTRING*)vr$7 );
			FBSTRING* vr$10 = fb_IntToStr( vr$8 + 8 );
			__builtin_memset( &TMP$1095$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$1095$3, (void*)vr$10, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$13, -1, 0 );
		}
		goto label$834;
		label$835:;
		{
			FBSTRING TMP$1096$3;
			FBSTRING TMP$1097$3;
			FBSTRING TMP$1098$3;
			__builtin_memset( &TMP$1097$3, 0, 12 );
			__builtin_memset( &TMP$1096$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$1096$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1097$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$1097$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1097$3 );
			__builtin_memset( &TMP$1098$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1098$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$1098$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1098$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$834:;
	}
	label$833:;
	label$832:;
	if( LGT$1 != 4 ) goto label$837;
	{
		FBSTRING TMP$1100$2;
		FBSTRING TMP$1101$2;
		FBSTRING TMP$1102$2;
		FBSTRING TMP$1103$2;
		__builtin_memset( &TMP$1103$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1100$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1100$2, (void*)"movd xmm", 9, (void*)vr$27, -1 );
		__builtin_memset( &TMP$1101$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1101$2, (void*)vr$30, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1102$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1102$2, (void*)vr$33, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1103$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$1103$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1103$2 );
	}
	goto label$836;
	label$837:;
	{
		FBSTRING TMP$1105$2;
		FBSTRING TMP$1106$2;
		FBSTRING TMP$1107$2;
		FBSTRING TMP$1108$2;
		__builtin_memset( &TMP$1108$2, 0, 12 );
		FBSTRING* vr$42 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1105$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1105$2, (void*)"movq xmm", 9, (void*)vr$42, -1 );
		__builtin_memset( &TMP$1106$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1106$2, (void*)vr$45, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1107$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1107$2, (void*)vr$48, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1108$2, -1, (void*)vr$51, -1, 0 );
		HWRITEASM64( &TMP$1108$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1108$2 );
	}
	label$836:;
	label$831:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$838:;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	FBSTRING REGSTR$1;
	__builtin_memset( &REGSTR$1, 0, 12 );
	FBSTRING REGX$1;
	__builtin_memset( &REGX$1, 0, 12 );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$841;
	{
		$19FB_CVA_LIST_TYPEDEF vr$11 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
		if( (-((DTYPE$1 & 480) == 0) & -(vr$11 == 3)) == 0 ) goto label$843;
		{
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) ^ 32768;
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) | 65536;
		}
		label$843:;
		label$842:;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$845;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$847;
			{
				int32 TMP$1109$4;
				TMP$1109$4 = 0;
				int32 vr$27 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), &TMP$1109$4, (int32*)((uint8*)&CTX$ + 84), (int32*)((uint8*)&CTX$ + 88) );
				PARAMTYPE$1 = vr$27;
				if( PARAMTYPE$1 != 10 ) goto label$849;
				{
					*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					*(int32*)((uint8*)&CTX$ + 92) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 92) + *(int64*)((uint8*)SYM$1 + 40));
				}
				goto label$848;
				label$849:;
				{
					LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
					*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
					*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
					{
						uint32 TMP$1110$6;
						TMP$1110$6 = (uint32)PARAMTYPE$1;
						goto label$851;
						label$852:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 0 );
						}
						goto label$850;
						label$853:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 1, 0 );
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$850;
						label$854:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 0, 0 );
							if( LGT$1 >= 13 ) goto label$856;
							{
								FBSTRING TMP$1113$8;
								FBSTRING TMP$1114$8;
								FBSTRING TMP$1115$8;
								FBSTRING TMP$1116$8;
								__builtin_memset( &TMP$1116$8, 0, 12 );
								FBSTRING* vr$57 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$60 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1113$8, 0, 12 );
								FBSTRING* vr$63 = fb_StrConcat( &TMP$1113$8, (void*)"movd ", 6, (void*)vr$60, -1 );
								__builtin_memset( &TMP$1114$8, 0, 12 );
								FBSTRING* vr$66 = fb_StrConcat( &TMP$1114$8, (void*)vr$63, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1115$8, 0, 12 );
								FBSTRING* vr$69 = fb_StrConcat( &TMP$1115$8, (void*)vr$66, -1, (void*)vr$57, -1 );
								fb_StrAssign( (void*)&TMP$1116$8, -1, (void*)vr$69, -1, 0 );
								HWRITEASM64( &TMP$1116$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1116$8 );
							}
							goto label$855;
							label$856:;
							{
								FBSTRING TMP$1118$8;
								FBSTRING TMP$1119$8;
								FBSTRING TMP$1120$8;
								FBSTRING TMP$1121$8;
								__builtin_memset( &TMP$1121$8, 0, 12 );
								FBSTRING* vr$75 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1118$8, 0, 12 );
								FBSTRING* vr$81 = fb_StrConcat( &TMP$1118$8, (void*)"movq ", 6, (void*)vr$78, -1 );
								__builtin_memset( &TMP$1119$8, 0, 12 );
								FBSTRING* vr$84 = fb_StrConcat( &TMP$1119$8, (void*)vr$81, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1120$8, 0, 12 );
								FBSTRING* vr$87 = fb_StrConcat( &TMP$1120$8, (void*)vr$84, -1, (void*)vr$75, -1 );
								fb_StrAssign( (void*)&TMP$1121$8, -1, (void*)vr$87, -1, 0 );
								HWRITEASM64( &TMP$1121$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1121$8 );
							}
							label$855:;
						}
						goto label$850;
						label$857:;
						{
							if( LGT$1 != 4 ) goto label$859;
							{
								FBSTRING TMP$1122$8;
								FBSTRING TMP$1123$8;
								FBSTRING TMP$1124$8;
								FBSTRING TMP$1125$8;
								__builtin_memset( &TMP$1125$8, 0, 12 );
								FBSTRING* vr$93 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$95 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1122$8, 0, 12 );
								FBSTRING* vr$98 = fb_StrConcat( &TMP$1122$8, (void*)"movd ", 6, (void*)vr$95, -1 );
								__builtin_memset( &TMP$1123$8, 0, 12 );
								FBSTRING* vr$101 = fb_StrConcat( &TMP$1123$8, (void*)vr$98, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1124$8, 0, 12 );
								FBSTRING* vr$104 = fb_StrConcat( &TMP$1124$8, (void*)vr$101, -1, (void*)vr$93, -1 );
								fb_StrAssign( (void*)&TMP$1125$8, -1, (void*)vr$104, -1, 0 );
								HWRITEASM64( &TMP$1125$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1125$8 );
							}
							goto label$858;
							label$859:;
							{
								FBSTRING TMP$1126$8;
								FBSTRING TMP$1127$8;
								FBSTRING TMP$1128$8;
								FBSTRING TMP$1129$8;
								__builtin_memset( &TMP$1129$8, 0, 12 );
								FBSTRING* vr$110 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$112 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1126$8, 0, 12 );
								FBSTRING* vr$115 = fb_StrConcat( &TMP$1126$8, (void*)"movq ", 6, (void*)vr$112, -1 );
								__builtin_memset( &TMP$1127$8, 0, 12 );
								FBSTRING* vr$118 = fb_StrConcat( &TMP$1127$8, (void*)vr$115, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1128$8, 0, 12 );
								FBSTRING* vr$121 = fb_StrConcat( &TMP$1128$8, (void*)vr$118, -1, (void*)vr$110, -1 );
								fb_StrAssign( (void*)&TMP$1129$8, -1, (void*)vr$121, -1, 0 );
								HWRITEASM64( &TMP$1129$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1129$8 );
							}
							label$858:;
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$850;
						label$860:;
						{
							if( LGT$1 != 4 ) goto label$862;
							{
								FBSTRING TMP$1130$8;
								FBSTRING TMP$1131$8;
								FBSTRING TMP$1132$8;
								FBSTRING TMP$1133$8;
								__builtin_memset( &TMP$1133$8, 0, 12 );
								FBSTRING* vr$129 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$131 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1130$8, 0, 12 );
								FBSTRING* vr$134 = fb_StrConcat( &TMP$1130$8, (void*)"movd ", 6, (void*)vr$131, -1 );
								__builtin_memset( &TMP$1131$8, 0, 12 );
								FBSTRING* vr$137 = fb_StrConcat( &TMP$1131$8, (void*)vr$134, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1132$8, 0, 12 );
								FBSTRING* vr$140 = fb_StrConcat( &TMP$1132$8, (void*)vr$137, -1, (void*)vr$129, -1 );
								fb_StrAssign( (void*)&TMP$1133$8, -1, (void*)vr$140, -1, 0 );
								HWRITEASM64( &TMP$1133$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1133$8 );
							}
							goto label$861;
							label$862:;
							{
								FBSTRING TMP$1134$8;
								FBSTRING TMP$1135$8;
								FBSTRING TMP$1136$8;
								FBSTRING TMP$1137$8;
								__builtin_memset( &TMP$1137$8, 0, 12 );
								FBSTRING* vr$146 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$148 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1134$8, 0, 12 );
								FBSTRING* vr$151 = fb_StrConcat( &TMP$1134$8, (void*)"movq ", 6, (void*)vr$148, -1 );
								__builtin_memset( &TMP$1135$8, 0, 12 );
								FBSTRING* vr$154 = fb_StrConcat( &TMP$1135$8, (void*)vr$151, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1136$8, 0, 12 );
								FBSTRING* vr$157 = fb_StrConcat( &TMP$1136$8, (void*)vr$154, -1, (void*)vr$146, -1 );
								fb_StrAssign( (void*)&TMP$1137$8, -1, (void*)vr$157, -1, 0 );
								HWRITEASM64( &TMP$1137$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1137$8 );
							}
							label$861:;
						}
						goto label$850;
						label$863:;
						{
							FBSTRING TMP$1138$7;
							FBSTRING TMP$1139$7;
							FBSTRING TMP$1140$7;
							FBSTRING TMP$1141$7;
							__builtin_memset( &TMP$1141$7, 0, 12 );
							FBSTRING* vr$163 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -2 );
							FBSTRING* vr$165 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1138$7, 0, 12 );
							FBSTRING* vr$168 = fb_StrConcat( &TMP$1138$7, (void*)"movq ", 6, (void*)vr$165, -1 );
							__builtin_memset( &TMP$1139$7, 0, 12 );
							FBSTRING* vr$171 = fb_StrConcat( &TMP$1139$7, (void*)vr$168, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1140$7, 0, 12 );
							FBSTRING* vr$174 = fb_StrConcat( &TMP$1140$7, (void*)vr$171, -1, (void*)vr$163, -1 );
							fb_StrAssign( (void*)&TMP$1141$7, -1, (void*)vr$174, -1, 0 );
							HWRITEASM64( &TMP$1141$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1141$7 );
							if( LGT$1 >= 13 ) goto label$865;
							{
								FBSTRING TMP$1142$8;
								FBSTRING TMP$1143$8;
								FBSTRING TMP$1144$8;
								FBSTRING TMP$1145$8;
								__builtin_memset( &TMP$1145$8, 0, 12 );
								FBSTRING* vr$180 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$183 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1142$8, 0, 12 );
								FBSTRING* vr$186 = fb_StrConcat( &TMP$1142$8, (void*)"movd ", 6, (void*)vr$183, -1 );
								__builtin_memset( &TMP$1143$8, 0, 12 );
								FBSTRING* vr$189 = fb_StrConcat( &TMP$1143$8, (void*)vr$186, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1144$8, 0, 12 );
								FBSTRING* vr$192 = fb_StrConcat( &TMP$1144$8, (void*)vr$189, -1, (void*)vr$180, -1 );
								fb_StrAssign( (void*)&TMP$1145$8, -1, (void*)vr$192, -1, 0 );
								HWRITEASM64( &TMP$1145$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1145$8 );
							}
							goto label$864;
							label$865:;
							{
								FBSTRING TMP$1146$8;
								FBSTRING TMP$1147$8;
								FBSTRING TMP$1148$8;
								FBSTRING TMP$1149$8;
								__builtin_memset( &TMP$1149$8, 0, 12 );
								FBSTRING* vr$198 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$201 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1146$8, 0, 12 );
								FBSTRING* vr$204 = fb_StrConcat( &TMP$1146$8, (void*)"movq ", 6, (void*)vr$201, -1 );
								__builtin_memset( &TMP$1147$8, 0, 12 );
								FBSTRING* vr$207 = fb_StrConcat( &TMP$1147$8, (void*)vr$204, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1148$8, 0, 12 );
								FBSTRING* vr$210 = fb_StrConcat( &TMP$1148$8, (void*)vr$207, -1, (void*)vr$198, -1 );
								fb_StrAssign( (void*)&TMP$1149$8, -1, (void*)vr$210, -1, 0 );
								HWRITEASM64( &TMP$1149$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1149$8 );
							}
							label$864:;
						}
						goto label$850;
						label$851:;
						static const void* tmp$4065[6] = {
							&&label$852,
							&&label$860,
							&&label$853,
							&&label$854,
							&&label$857,
							&&label$863,
						};
						if( TMP$1110$6 > 5u ) goto label$850;
						goto *tmp$4065[TMP$1110$6 - 0u];
						label$850:;
					}
				}
				label$848:;
			}
			goto label$846;
			label$847:;
			{
				int32 TMP$1150$4;
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				if( (DTYPE$1 & 480) == 0 ) goto label$866;
				TMP$1150$4 = 24;
				goto label$3092;
				label$866:;
				TMP$1150$4 = DTYPE$1 & 31;
				label$3092:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1150$4 * 28)) != 1 ) goto label$868;
				{
					*(int32*)((uint8*)&CTX$ + 88) = *(int32*)((uint8*)&CTX$ + 88) + 1;
					if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$870;
					{
						*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						if( LGT$1 != 4 ) goto label$872;
						{
							FBSTRING TMP$1151$7;
							FBSTRING TMP$1152$7;
							FBSTRING TMP$1153$7;
							FBSTRING TMP$1154$7;
							__builtin_memset( &TMP$1154$7, 0, 12 );
							FBSTRING* vr$233 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$235 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1151$7, 0, 12 );
							FBSTRING* vr$238 = fb_StrConcat( &TMP$1151$7, (void*)"movd ", 6, (void*)vr$235, -1 );
							__builtin_memset( &TMP$1152$7, 0, 12 );
							FBSTRING* vr$241 = fb_StrConcat( &TMP$1152$7, (void*)vr$238, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1153$7, 0, 12 );
							FBSTRING* vr$244 = fb_StrConcat( &TMP$1153$7, (void*)vr$241, -1, (void*)vr$233, -1 );
							fb_StrAssign( (void*)&TMP$1154$7, -1, (void*)vr$244, -1, 0 );
							HWRITEASM64( &TMP$1154$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1154$7 );
						}
						goto label$871;
						label$872:;
						{
							FBSTRING TMP$1155$7;
							FBSTRING TMP$1156$7;
							FBSTRING TMP$1157$7;
							FBSTRING TMP$1158$7;
							__builtin_memset( &TMP$1158$7, 0, 12 );
							FBSTRING* vr$250 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$252 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1155$7, 0, 12 );
							FBSTRING* vr$255 = fb_StrConcat( &TMP$1155$7, (void*)"movq ", 6, (void*)vr$252, -1 );
							__builtin_memset( &TMP$1156$7, 0, 12 );
							FBSTRING* vr$258 = fb_StrConcat( &TMP$1156$7, (void*)vr$255, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1157$7, 0, 12 );
							FBSTRING* vr$261 = fb_StrConcat( &TMP$1157$7, (void*)vr$258, -1, (void*)vr$250, -1 );
							fb_StrAssign( (void*)&TMP$1158$7, -1, (void*)vr$261, -1, 0 );
							HWRITEASM64( &TMP$1158$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1158$7 );
						}
						label$871:;
					}
					goto label$869;
					label$870:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$869:;
				}
				goto label$867;
				label$868:;
				{
					*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
					if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$874;
					{
						*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						{
							uint32 TMP$1159$7;
							TMP$1159$7 = (uint32)LGT$1;
							goto label$876;
							label$877:;
							{
								FBSTRING TMP$1161$8;
								FBSTRING TMP$1162$8;
								FBSTRING TMP$1163$8;
								FBSTRING TMP$1164$8;
								__builtin_memset( &TMP$1164$8, 0, 12 );
								FBSTRING* vr$285 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1161$8, 0, 12 );
								FBSTRING* vr$288 = fb_StrConcat( &TMP$1161$8, (void*)"mov BYTE PTR ", 14, (void*)vr$285, -1 );
								__builtin_memset( &TMP$1162$8, 0, 12 );
								FBSTRING* vr$291 = fb_StrConcat( &TMP$1162$8, (void*)vr$288, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1163$8, 0, 12 );
								FBSTRING* vr$294 = fb_StrConcat( &TMP$1163$8, (void*)vr$291, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1164$8, -1, (void*)vr$294, -1, 0 );
								HWRITEASM64( &TMP$1164$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1164$8 );
							}
							goto label$875;
							label$878:;
							{
								FBSTRING TMP$1166$8;
								FBSTRING TMP$1167$8;
								FBSTRING TMP$1168$8;
								FBSTRING TMP$1169$8;
								__builtin_memset( &TMP$1169$8, 0, 12 );
								FBSTRING* vr$303 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1166$8, 0, 12 );
								FBSTRING* vr$306 = fb_StrConcat( &TMP$1166$8, (void*)"mov WORD PTR ", 14, (void*)vr$303, -1 );
								__builtin_memset( &TMP$1167$8, 0, 12 );
								FBSTRING* vr$309 = fb_StrConcat( &TMP$1167$8, (void*)vr$306, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1168$8, 0, 12 );
								FBSTRING* vr$312 = fb_StrConcat( &TMP$1168$8, (void*)vr$309, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1169$8, -1, (void*)vr$312, -1, 0 );
								HWRITEASM64( &TMP$1169$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1169$8 );
							}
							goto label$875;
							label$879:;
							{
								FBSTRING TMP$1171$8;
								FBSTRING TMP$1172$8;
								FBSTRING TMP$1173$8;
								FBSTRING TMP$1174$8;
								__builtin_memset( &TMP$1174$8, 0, 12 );
								FBSTRING* vr$321 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1171$8, 0, 12 );
								FBSTRING* vr$324 = fb_StrConcat( &TMP$1171$8, (void*)"mov DWORD PTR ", 15, (void*)vr$321, -1 );
								__builtin_memset( &TMP$1172$8, 0, 12 );
								FBSTRING* vr$327 = fb_StrConcat( &TMP$1172$8, (void*)vr$324, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1173$8, 0, 12 );
								FBSTRING* vr$330 = fb_StrConcat( &TMP$1173$8, (void*)vr$327, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1174$8, -1, (void*)vr$330, -1, 0 );
								HWRITEASM64( &TMP$1174$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1174$8 );
							}
							goto label$875;
							label$880:;
							{
								FBSTRING TMP$1175$8;
								FBSTRING TMP$1176$8;
								FBSTRING TMP$1177$8;
								FBSTRING TMP$1178$8;
								__builtin_memset( &TMP$1178$8, 0, 12 );
								FBSTRING* vr$339 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1175$8, 0, 12 );
								FBSTRING* vr$342 = fb_StrConcat( &TMP$1175$8, (void*)"mov QWORD PTR ", 15, (void*)vr$339, -1 );
								__builtin_memset( &TMP$1176$8, 0, 12 );
								FBSTRING* vr$345 = fb_StrConcat( &TMP$1176$8, (void*)vr$342, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1177$8, 0, 12 );
								FBSTRING* vr$348 = fb_StrConcat( &TMP$1177$8, (void*)vr$345, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1178$8, -1, (void*)vr$348, -1, 0 );
								HWRITEASM64( &TMP$1178$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1178$8 );
							}
							goto label$875;
							label$876:;
							static const void* tmp$4066[8] = {
								&&label$877,
								&&label$878,
								&&label$875,
								&&label$879,
								&&label$875,
								&&label$875,
								&&label$875,
								&&label$880,
							};
							if( (TMP$1159$7 - 1u) > 7u ) goto label$875;
							goto *tmp$4066[TMP$1159$7 - 1u];
							label$875:;
						}
					}
					goto label$873;
					label$874:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$873:;
				}
				label$867:;
			}
			label$846:;
		}
		goto label$844;
		label$845:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			LGT$1 = 8;
			if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$882;
			{
				FBSTRING TMP$1179$4;
				FBSTRING TMP$1180$4;
				FBSTRING TMP$1181$4;
				FBSTRING TMP$1182$4;
				*(int64*)((uint8*)&CTX$ + 96) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 96)) + (int64)LGT$1) + -1ll) & (int64)~(LGT$1 + -1);
				*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
				__builtin_memset( &TMP$1182$4, 0, 12 );
				FBSTRING* vr$372 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
				__builtin_memset( &TMP$1179$4, 0, 12 );
				FBSTRING* vr$375 = fb_StrConcat( &TMP$1179$4, (void*)"mov QWORD PTR ", 15, (void*)vr$372, -1 );
				__builtin_memset( &TMP$1180$4, 0, 12 );
				FBSTRING* vr$378 = fb_StrConcat( &TMP$1180$4, (void*)vr$375, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1181$4, 0, 12 );
				FBSTRING* vr$381 = fb_StrConcat( &TMP$1181$4, (void*)vr$378, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1182$4, -1, (void*)vr$381, -1, 0 );
				HWRITEASM64( &TMP$1182$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1182$4 );
			}
			goto label$881;
			label$882:;
			{
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
			}
			label$881:;
		}
		label$844:;
	}
	goto label$840;
	label$841:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$884;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$886;
			{
				int32 TMP$1183$4;
				int32 TMP$1184$4;
				TMP$1184$4 = 0;
				TMP$1183$4 = 0;
				int32 vr$396 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (int32*)((uint8*)&CTX$ + 84), &TMP$1183$4, &TMP$1184$4 );
				PARAMTYPE$1 = vr$396;
				{
					uint32 TMP$1185$5;
					TMP$1185$5 = (uint32)PARAMTYPE$1;
					goto label$888;
					label$889:;
					{
						*(int64*)((uint8*)&CTX$ + 96) = (((*(int64*)((uint8*)SYM$1 + 40) + *(int64*)((uint8*)&CTX$ + 96)) + *(int64*)((uint8*)SYM$1 + 40)) + -1ll) & ~(*(int64*)((uint8*)SYM$1 + 40) + -1ll);
						*(int64*)((uint8*)SYM$1 + 48) = -(*(int64*)((uint8*)&CTX$ + 96));
						if( PARAMTYPE$1 != 12 ) goto label$891;
						{
							FBSTRING TMP$1186$7;
							FBSTRING TMP$1187$7;
							fb_StrAssign( (void*)&REGSTR$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
							__builtin_memset( &TMP$1187$7, 0, 12 );
							FBSTRING* vr$414 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1186$7, 0, 12 );
							FBSTRING* vr$417 = fb_StrConcat( &TMP$1186$7, (void*)vr$414, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1187$7, -1, (void*)vr$417, -1, 0 );
							int64 vr$421 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$421, &REGSTR$1, &TMP$1187$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1187$7 );
						}
						goto label$890;
						label$891:;
						{
							FBSTRING TMP$1188$7;
							FBSTRING TMP$1189$7;
							FBSTRING TMP$1190$7;
							FBSTRING TMP$1191$7;
							__builtin_memset( &TMP$1191$7, 0, 12 );
							FBSTRING* vr$426 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1190$7, 0, 12 );
							FBSTRING* vr$429 = fb_StrConcat( &TMP$1190$7, (void*)vr$426, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1191$7, -1, (void*)vr$429, -1, 0 );
							__builtin_memset( &TMP$1189$7, 0, 12 );
							FBSTRING* vr$433 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1188$7, 0, 12 );
							FBSTRING* vr$436 = fb_StrConcat( &TMP$1188$7, (void*)vr$433, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1189$7, -1, (void*)vr$436, -1, 0 );
							int64 vr$439 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$439, &TMP$1189$7, &TMP$1191$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1191$7 );
							fb_StrDelete( (FBSTRING*)&TMP$1189$7 );
						}
						label$890:;
					}
					goto label$887;
					label$892:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						if( -(*(boolean*)((uint8*)&CTX$ + 224)) != 0 ) goto label$894;
						{
							LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
							if( PARAMTYPE$1 != 1 ) goto label$896;
							{
								if( LGT$1 != 4 ) goto label$898;
								{
									FBSTRING TMP$1192$9;
									FBSTRING TMP$1193$9;
									FBSTRING TMP$1194$9;
									FBSTRING TMP$1195$9;
									__builtin_memset( &TMP$1195$9, 0, 12 );
									FBSTRING* vr$450 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$451 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1192$9, 0, 12 );
									FBSTRING* vr$454 = fb_StrConcat( &TMP$1192$9, (void*)"movd ", 6, (void*)vr$451, -1 );
									__builtin_memset( &TMP$1193$9, 0, 12 );
									FBSTRING* vr$457 = fb_StrConcat( &TMP$1193$9, (void*)vr$454, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1194$9, 0, 12 );
									FBSTRING* vr$460 = fb_StrConcat( &TMP$1194$9, (void*)vr$457, -1, (void*)vr$450, -1 );
									fb_StrAssign( (void*)&TMP$1195$9, -1, (void*)vr$460, -1, 0 );
									HWRITEASM64( &TMP$1195$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1195$9 );
								}
								goto label$897;
								label$898:;
								{
									FBSTRING TMP$1196$9;
									FBSTRING TMP$1197$9;
									FBSTRING TMP$1198$9;
									FBSTRING TMP$1199$9;
									__builtin_memset( &TMP$1199$9, 0, 12 );
									FBSTRING* vr$466 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$467 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1196$9, 0, 12 );
									FBSTRING* vr$470 = fb_StrConcat( &TMP$1196$9, (void*)"movq ", 6, (void*)vr$467, -1 );
									__builtin_memset( &TMP$1197$9, 0, 12 );
									FBSTRING* vr$473 = fb_StrConcat( &TMP$1197$9, (void*)vr$470, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1198$9, 0, 12 );
									FBSTRING* vr$476 = fb_StrConcat( &TMP$1198$9, (void*)vr$473, -1, (void*)vr$466, -1 );
									fb_StrAssign( (void*)&TMP$1199$9, -1, (void*)vr$476, -1, 0 );
									HWRITEASM64( &TMP$1199$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1199$9 );
								}
								label$897:;
							}
							goto label$895;
							label$896:;
							{
								{
									uint32 TMP$1200$9;
									TMP$1200$9 = (uint32)LGT$1;
									goto label$900;
									label$901:;
									{
										FBSTRING TMP$1201$10;
										FBSTRING TMP$1202$10;
										FBSTRING TMP$1203$10;
										FBSTRING TMP$1204$10;
										__builtin_memset( &TMP$1204$10, 0, 12 );
										FBSTRING* vr$484 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1201$10, 0, 12 );
										FBSTRING* vr$487 = fb_StrConcat( &TMP$1201$10, (void*)"mov BYTE PTR ", 14, (void*)vr$484, -1 );
										__builtin_memset( &TMP$1202$10, 0, 12 );
										FBSTRING* vr$490 = fb_StrConcat( &TMP$1202$10, (void*)vr$487, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1203$10, 0, 12 );
										FBSTRING* vr$493 = fb_StrConcat( &TMP$1203$10, (void*)vr$490, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1204$10, -1, (void*)vr$493, -1, 0 );
										HWRITEASM64( &TMP$1204$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1204$10 );
									}
									goto label$899;
									label$902:;
									{
										FBSTRING TMP$1205$10;
										FBSTRING TMP$1206$10;
										FBSTRING TMP$1207$10;
										FBSTRING TMP$1208$10;
										__builtin_memset( &TMP$1208$10, 0, 12 );
										FBSTRING* vr$501 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1205$10, 0, 12 );
										FBSTRING* vr$504 = fb_StrConcat( &TMP$1205$10, (void*)"mov WORD PTR ", 14, (void*)vr$501, -1 );
										__builtin_memset( &TMP$1206$10, 0, 12 );
										FBSTRING* vr$507 = fb_StrConcat( &TMP$1206$10, (void*)vr$504, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1207$10, 0, 12 );
										FBSTRING* vr$510 = fb_StrConcat( &TMP$1207$10, (void*)vr$507, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1208$10, -1, (void*)vr$510, -1, 0 );
										HWRITEASM64( &TMP$1208$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1208$10 );
									}
									goto label$899;
									label$903:;
									{
										FBSTRING TMP$1209$10;
										FBSTRING TMP$1210$10;
										FBSTRING TMP$1211$10;
										FBSTRING TMP$1212$10;
										__builtin_memset( &TMP$1212$10, 0, 12 );
										FBSTRING* vr$518 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1209$10, 0, 12 );
										FBSTRING* vr$521 = fb_StrConcat( &TMP$1209$10, (void*)"mov DWORD PTR ", 15, (void*)vr$518, -1 );
										__builtin_memset( &TMP$1210$10, 0, 12 );
										FBSTRING* vr$524 = fb_StrConcat( &TMP$1210$10, (void*)vr$521, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1211$10, 0, 12 );
										FBSTRING* vr$527 = fb_StrConcat( &TMP$1211$10, (void*)vr$524, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1212$10, -1, (void*)vr$527, -1, 0 );
										HWRITEASM64( &TMP$1212$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1212$10 );
									}
									goto label$899;
									label$904:;
									{
										FBSTRING TMP$1213$10;
										FBSTRING TMP$1214$10;
										FBSTRING TMP$1215$10;
										FBSTRING TMP$1216$10;
										__builtin_memset( &TMP$1216$10, 0, 12 );
										FBSTRING* vr$535 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1213$10, 0, 12 );
										FBSTRING* vr$538 = fb_StrConcat( &TMP$1213$10, (void*)"mov QWORD PTR ", 15, (void*)vr$535, -1 );
										__builtin_memset( &TMP$1214$10, 0, 12 );
										FBSTRING* vr$541 = fb_StrConcat( &TMP$1214$10, (void*)vr$538, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1215$10, 0, 12 );
										FBSTRING* vr$544 = fb_StrConcat( &TMP$1215$10, (void*)vr$541, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1216$10, -1, (void*)vr$544, -1, 0 );
										HWRITEASM64( &TMP$1216$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1216$10 );
									}
									goto label$899;
									label$900:;
									static const void* tmp$4067[8] = {
										&&label$901,
										&&label$902,
										&&label$899,
										&&label$903,
										&&label$899,
										&&label$899,
										&&label$899,
										&&label$904,
									};
									if( (TMP$1200$9 - 1u) > 7u ) goto label$899;
									goto *tmp$4067[TMP$1200$9 - 1u];
									label$899:;
								}
							}
							label$895:;
						}
						label$894:;
						label$893:;
					}
					goto label$887;
					label$905:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					}
					goto label$887;
					label$888:;
					static const void* tmp$4068[14] = {
						&&label$892,
						&&label$892,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$905,
						&&label$889,
						&&label$889,
					};
					if( TMP$1185$5 > 13u ) goto label$905;
					goto *tmp$4068[TMP$1185$5 - 0u];
					label$887:;
				}
			}
			goto label$885;
			label$886:;
			{
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
				if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 224)) == 0)) == 0 ) goto label$907;
				{
					int32 TMP$1217$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$908;
					TMP$1217$5 = 24;
					goto label$3093;
					label$908:;
					TMP$1217$5 = DTYPE$1 & 31;
					label$3093:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1217$5 * 28)) != 1 ) goto label$910;
					{
						if( LGT$1 != 4 ) goto label$912;
						{
							FBSTRING TMP$1218$7;
							FBSTRING TMP$1219$7;
							FBSTRING TMP$1220$7;
							FBSTRING TMP$1221$7;
							__builtin_memset( &TMP$1221$7, 0, 12 );
							FBSTRING* vr$564 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$565 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1218$7, 0, 12 );
							FBSTRING* vr$568 = fb_StrConcat( &TMP$1218$7, (void*)"movd ", 6, (void*)vr$565, -1 );
							__builtin_memset( &TMP$1219$7, 0, 12 );
							FBSTRING* vr$571 = fb_StrConcat( &TMP$1219$7, (void*)vr$568, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1220$7, 0, 12 );
							FBSTRING* vr$574 = fb_StrConcat( &TMP$1220$7, (void*)vr$571, -1, (void*)vr$564, -1 );
							fb_StrAssign( (void*)&TMP$1221$7, -1, (void*)vr$574, -1, 0 );
							HWRITEASM64( &TMP$1221$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1221$7 );
						}
						goto label$911;
						label$912:;
						{
							FBSTRING TMP$1222$7;
							FBSTRING TMP$1223$7;
							FBSTRING TMP$1224$7;
							FBSTRING TMP$1225$7;
							__builtin_memset( &TMP$1225$7, 0, 12 );
							FBSTRING* vr$580 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$581 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1222$7, 0, 12 );
							FBSTRING* vr$584 = fb_StrConcat( &TMP$1222$7, (void*)"movq ", 6, (void*)vr$581, -1 );
							__builtin_memset( &TMP$1223$7, 0, 12 );
							FBSTRING* vr$587 = fb_StrConcat( &TMP$1223$7, (void*)vr$584, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1224$7, 0, 12 );
							FBSTRING* vr$590 = fb_StrConcat( &TMP$1224$7, (void*)vr$587, -1, (void*)vr$580, -1 );
							fb_StrAssign( (void*)&TMP$1225$7, -1, (void*)vr$590, -1, 0 );
							HWRITEASM64( &TMP$1225$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1225$7 );
						}
						label$911:;
					}
					goto label$909;
					label$910:;
					{
						{
							uint32 TMP$1226$7;
							TMP$1226$7 = (uint32)LGT$1;
							goto label$914;
							label$915:;
							{
								FBSTRING TMP$1227$8;
								FBSTRING TMP$1228$8;
								FBSTRING TMP$1229$8;
								FBSTRING TMP$1230$8;
								__builtin_memset( &TMP$1230$8, 0, 12 );
								FBSTRING* vr$598 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1227$8, 0, 12 );
								FBSTRING* vr$601 = fb_StrConcat( &TMP$1227$8, (void*)"mov BYTE PTR ", 14, (void*)vr$598, -1 );
								__builtin_memset( &TMP$1228$8, 0, 12 );
								FBSTRING* vr$604 = fb_StrConcat( &TMP$1228$8, (void*)vr$601, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1229$8, 0, 12 );
								FBSTRING* vr$607 = fb_StrConcat( &TMP$1229$8, (void*)vr$604, -1, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1230$8, -1, (void*)vr$607, -1, 0 );
								HWRITEASM64( &TMP$1230$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1230$8 );
							}
							goto label$913;
							label$916:;
							{
								FBSTRING TMP$1231$8;
								FBSTRING TMP$1232$8;
								FBSTRING TMP$1233$8;
								FBSTRING TMP$1234$8;
								__builtin_memset( &TMP$1234$8, 0, 12 );
								FBSTRING* vr$615 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1231$8, 0, 12 );
								FBSTRING* vr$618 = fb_StrConcat( &TMP$1231$8, (void*)"mov WORD PTR ", 14, (void*)vr$615, -1 );
								__builtin_memset( &TMP$1232$8, 0, 12 );
								FBSTRING* vr$621 = fb_StrConcat( &TMP$1232$8, (void*)vr$618, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1233$8, 0, 12 );
								FBSTRING* vr$624 = fb_StrConcat( &TMP$1233$8, (void*)vr$621, -1, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1234$8, -1, (void*)vr$624, -1, 0 );
								HWRITEASM64( &TMP$1234$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1234$8 );
							}
							goto label$913;
							label$917:;
							{
								FBSTRING TMP$1235$8;
								FBSTRING TMP$1236$8;
								FBSTRING TMP$1237$8;
								FBSTRING TMP$1238$8;
								__builtin_memset( &TMP$1238$8, 0, 12 );
								FBSTRING* vr$632 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1235$8, 0, 12 );
								FBSTRING* vr$635 = fb_StrConcat( &TMP$1235$8, (void*)"mov DWORD PTR ", 15, (void*)vr$632, -1 );
								__builtin_memset( &TMP$1236$8, 0, 12 );
								FBSTRING* vr$638 = fb_StrConcat( &TMP$1236$8, (void*)vr$635, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1237$8, 0, 12 );
								FBSTRING* vr$641 = fb_StrConcat( &TMP$1237$8, (void*)vr$638, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1238$8, -1, (void*)vr$641, -1, 0 );
								HWRITEASM64( &TMP$1238$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1238$8 );
							}
							goto label$913;
							label$918:;
							{
								FBSTRING TMP$1239$8;
								FBSTRING TMP$1240$8;
								FBSTRING TMP$1241$8;
								FBSTRING TMP$1242$8;
								__builtin_memset( &TMP$1242$8, 0, 12 );
								FBSTRING* vr$649 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1239$8, 0, 12 );
								FBSTRING* vr$652 = fb_StrConcat( &TMP$1239$8, (void*)"mov QWORD PTR ", 15, (void*)vr$649, -1 );
								__builtin_memset( &TMP$1240$8, 0, 12 );
								FBSTRING* vr$655 = fb_StrConcat( &TMP$1240$8, (void*)vr$652, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1241$8, 0, 12 );
								FBSTRING* vr$658 = fb_StrConcat( &TMP$1241$8, (void*)vr$655, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1242$8, -1, (void*)vr$658, -1, 0 );
								HWRITEASM64( &TMP$1242$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1242$8 );
							}
							goto label$913;
							label$914:;
							static const void* tmp$4069[8] = {
								&&label$915,
								&&label$916,
								&&label$913,
								&&label$917,
								&&label$913,
								&&label$913,
								&&label$913,
								&&label$918,
							};
							if( (TMP$1226$7 - 1u) > 7u ) goto label$913;
							goto *tmp$4069[TMP$1226$7 - 1u];
							label$913:;
						}
					}
					label$909:;
				}
				label$907:;
				label$906:;
			}
			label$885:;
		}
		goto label$883;
		label$884:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
			if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 224)) == 0)) == 0 ) goto label$920;
			{
				FBSTRING TMP$1243$4;
				FBSTRING TMP$1244$4;
				FBSTRING TMP$1245$4;
				FBSTRING TMP$1246$4;
				__builtin_memset( &TMP$1246$4, 0, 12 );
				FBSTRING* vr$673 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
				__builtin_memset( &TMP$1243$4, 0, 12 );
				FBSTRING* vr$676 = fb_StrConcat( &TMP$1243$4, (void*)"mov QWORD PTR ", 15, (void*)vr$673, -1 );
				__builtin_memset( &TMP$1244$4, 0, 12 );
				FBSTRING* vr$679 = fb_StrConcat( &TMP$1244$4, (void*)vr$676, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1245$4, 0, 12 );
				FBSTRING* vr$682 = fb_StrConcat( &TMP$1245$4, (void*)vr$679, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1246$4, -1, (void*)vr$682, -1, 0 );
				HWRITEASM64( &TMP$1246$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1246$4 );
			}
			label$920:;
			label$919:;
		}
		label$883:;
	}
	label$840:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$922;
	{
		EDBGEMITPROCARG_ASM64( SYM$1 );
		label$922:;
	}
	fb_StrDelete( (FBSTRING*)&REGX$1 );
	fb_StrDelete( (FBSTRING*)&REGSTR$1 );
	label$839:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$923:;
	HEMITVARIABLE( SYM$1 );
	label$924:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* SYM$1 )
{
	label$925:;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	label$927:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$928;
	{
		{
			$12FB_SYMBCLASS TMP$1247$3;
			TMP$1247$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$1247$3 != 15 ) goto label$930;
			label$931:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64) );
			}
			goto label$929;
			label$930:;
			if( TMP$1247$3 != 1 ) goto label$932;
			label$933:;
			{
				if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$935;
				{
					HMAYBEEMITGLOBALVAR( SYM$1 );
				}
				label$935:;
				label$934:;
			}
			label$932:;
			label$929:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$927;
	label$928:;
	label$926:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$936:;
	struct $6IRVREG* TEMP0$1;
	if( (-(*(int32*)((uint8*)V$1 + 4) != DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) != SUBTYPE$1)) == 0 ) goto label$939;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		_EMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 72 );
	}
	label$939:;
	label$938:;
	label$937:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$940:;
	if( (-(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == LABEL$1) | -(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) == LABEL$1)) == 0 ) goto label$943;
	{
		REG_BRANCH( LABEL$1 );
	}
	goto label$942;
	label$943:;
	{
		FBSTRING TMP$1248$2;
		FBSTRING TMP$1249$2;
		__builtin_memset( &TMP$1249$2, 0, 12 );
		char* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$1248$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$1248$2, (void*)vr$4, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$1249$2, -1, (void*)vr$7, -1, 0 );
		HWRITEASM64( &TMP$1249$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1249$2 );
	}
	label$942:;
	if( *(boolean*)((uint8*)LABEL$1 + 68) == (boolean)0 ) goto label$945;
	{
		FBSTRING TMP$1251$2;
		__builtin_memset( &TMP$1251$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1251$2, -1, (void*)"sub rsp, 88 #stack for gosub", 29, 0 );
		HWRITEASM64( &TMP$1251$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1251$2 );
	}
	label$945:;
	label$944:;
	label$941:;
}

static void PREPARE_IDX( struct $6IRVREG* V1$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$1321$1;
	FBSTRING TMP$1324$1;
	FBSTRING TMP$1325$1;
	label$946:;
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$949;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$951;
		{
			if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) == -1 ) goto label$953;
			{
				FBSTRING TMP$1252$4;
				FBSTRING TMP$1253$4;
				FBSTRING TMP$1254$4;
				int32 vr$8 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				FBSTRING* vr$11 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1252$4, 0, 12 );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$1252$4, (void*)vr$11, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1253$4, 0, 12 );
				FBSTRING* vr$17 = fb_StrConcat( &TMP$1253$4, (void*)vr$14, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$8 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1254$4, 0, 12 );
				FBSTRING* vr$20 = fb_StrConcat( &TMP$1254$4, (void*)vr$17, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$20, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			goto label$952;
			label$953:;
			{
				FBSTRING TMP$1255$4;
				FBSTRING TMP$1256$4;
				FBSTRING TMP$1257$4;
				FBSTRING TMP$1258$4;
				FBSTRING TMP$1259$4;
				FBSTRING TMP$1260$4;
				FBSTRING TMP$1261$4;
				FBSTRING TMP$1262$4;
				int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 52) + 12) );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$25 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$1255$4, 0, 12 );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$1255$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1256$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$1256$4, (void*)vr$32, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1257$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$1257$4, (void*)vr$35, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1258$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$1258$4, (void*)vr$38, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1259$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$1259$4, (void*)vr$41, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$44, -1, 0 );
				FBSTRING* vr$47 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1260$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$1260$4, (void*)vr$47, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1261$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$1261$4, (void*)vr$50, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1262$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$1262$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$56, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			label$952:;
		}
		goto label$950;
		label$951:;
		{
			char* vr$58 = REG_TEMPO(  );
			fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$58, 0, 0 );
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$955;
			{
				FBSTRING TMP$1264$4;
				FBSTRING TMP$1265$4;
				FBSTRING TMP$1266$4;
				FBSTRING TMP$1267$4;
				FBSTRING TMP$1268$4;
				FBSTRING TMP$1269$4;
				FBSTRING TMP$1271$4;
				FBSTRING TMP$1272$4;
				FBSTRING TMP$1273$4;
				FBSTRING TMP$1274$4;
				FBSTRING TMP$1275$4;
				FBSTRING TMP$1276$4;
				FBSTRING TMP$1277$4;
				FBSTRING TMP$1278$4;
				FBSTRING TMP$1279$4;
				FBSTRING TMP$1280$4;
				FBSTRING* vr$73 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				char* vr$76 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				__builtin_memset( &TMP$1264$4, 0, 12 );
				FBSTRING* vr$80 = fb_StrConcat( &TMP$1264$4, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1265$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$1265$4, (void*)vr$80, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1266$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$1266$4, (void*)vr$83, -1, (void*)vr$76, 0 );
				__builtin_memset( &TMP$1267$4, 0, 12 );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$1267$4, (void*)vr$86, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1268$4, 0, 12 );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$1268$4, (void*)vr$89, -1, (void*)vr$73, -1 );
				__builtin_memset( &TMP$1269$4, 0, 12 );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$1269$4, (void*)vr$92, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$95, -1, 0 );
				FBSTRING* vr$99 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1271$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$1271$4, (void*)"\x0A", 2, (void*)vr$99, -1 );
				__builtin_memset( &TMP$1272$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$1272$4, (void*)vr$102, -1, (void*)"mov ", 5 );
				__builtin_memset( &TMP$1273$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$1273$4, (void*)vr$105, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1274$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$1274$4, (void*)vr$108, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1275$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$1275$4, (void*)vr$111, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1276$4, 0, 12 );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$1276$4, (void*)vr$114, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1277$4, 0, 12 );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$1277$4, (void*)vr$117, -1, (void*)"] #NO", 6 );
				fb_StrConcatByref( (void*)OP3$1, -1, (void*)vr$120, -1, 0 );
				FBSTRING* vr$123 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1278$4, 0, 12 );
				FBSTRING* vr$126 = fb_StrConcat( &TMP$1278$4, (void*)vr$123, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1279$4, 0, 12 );
				FBSTRING* vr$129 = fb_StrConcat( &TMP$1279$4, (void*)vr$126, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1280$4, 0, 12 );
				FBSTRING* vr$132 = fb_StrConcat( &TMP$1280$4, (void*)vr$129, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$132, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			goto label$954;
			label$955:;
			{
				FBSTRING TMP$1281$4;
				FBSTRING TMP$1282$4;
				FBSTRING TMP$1283$4;
				FBSTRING TMP$1284$4;
				FBSTRING TMP$1285$4;
				FBSTRING TMP$1286$4;
				FBSTRING TMP$1287$4;
				FBSTRING* vr$136 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				__builtin_memset( &TMP$1281$4, 0, 12 );
				FBSTRING* vr$140 = fb_StrConcat( &TMP$1281$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1282$4, 0, 12 );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$1282$4, (void*)vr$140, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1283$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$1283$4, (void*)vr$143, -1, (void*)vr$136, -1 );
				__builtin_memset( &TMP$1284$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$1284$4, (void*)vr$146, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$149, -1, 0 );
				FBSTRING* vr$152 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1285$4, 0, 12 );
				FBSTRING* vr$155 = fb_StrConcat( &TMP$1285$4, (void*)vr$152, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1286$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$1286$4, (void*)vr$155, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1287$4, 0, 12 );
				FBSTRING* vr$161 = fb_StrConcat( &TMP$1287$4, (void*)vr$158, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$161, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$947;
			}
			label$954:;
		}
		label$950:;
	}
	goto label$948;
	label$949:;
	{
		char* vr$163 = REG_TEMPO(  );
		fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$163, 0, 0 );
		if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$957;
		{
			FBSTRING TMP$1288$3;
			FBSTRING TMP$1289$3;
			FBSTRING TMP$1290$3;
			FBSTRING TMP$1291$3;
			FBSTRING TMP$1292$3;
			FBSTRING TMP$1293$3;
			FBSTRING* vr$175 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			char* vr$177 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1288$3, 0, 12 );
			FBSTRING* vr$181 = fb_StrConcat( &TMP$1288$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1289$3, 0, 12 );
			FBSTRING* vr$184 = fb_StrConcat( &TMP$1289$3, (void*)vr$181, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1290$3, 0, 12 );
			FBSTRING* vr$187 = fb_StrConcat( &TMP$1290$3, (void*)vr$184, -1, (void*)vr$177, 0 );
			__builtin_memset( &TMP$1291$3, 0, 12 );
			FBSTRING* vr$190 = fb_StrConcat( &TMP$1291$3, (void*)vr$187, -1, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1292$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$1292$3, (void*)vr$190, -1, (void*)vr$175, -1 );
			__builtin_memset( &TMP$1293$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$1293$3, (void*)vr$193, -1, (void*)"] #NO", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$196, -1, 0 );
		}
		goto label$956;
		label$957:;
		{
			FBSTRING TMP$1294$3;
			FBSTRING TMP$1295$3;
			FBSTRING TMP$1296$3;
			FBSTRING TMP$1297$3;
			FBSTRING* vr$198 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1294$3, 0, 12 );
			FBSTRING* vr$202 = fb_StrConcat( &TMP$1294$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1295$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$1295$3, (void*)vr$202, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1296$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$1296$3, (void*)vr$205, -1, (void*)vr$198, -1 );
			__builtin_memset( &TMP$1297$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$1297$3, (void*)vr$208, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$211, -1, 0 );
		}
		label$956:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 4 ) goto label$959;
		{
			FBSTRING TMP$1299$3;
			FBSTRING TMP$1300$3;
			FBSTRING TMP$1301$3;
			FBSTRING TMP$1302$3;
			int32 vr$216 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			__builtin_memset( &TMP$1299$3, 0, 12 );
			FBSTRING* vr$221 = fb_StrConcat( &TMP$1299$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1300$3, 0, 12 );
			FBSTRING* vr$224 = fb_StrConcat( &TMP$1300$3, (void*)vr$221, -1, (void*)"+", 2 );
			__builtin_memset( &TMP$1301$3, 0, 12 );
			FBSTRING* vr$227 = fb_StrConcat( &TMP$1301$3, (void*)vr$224, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$216 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1302$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$1302$3, (void*)vr$227, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$230, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$947;
		}
		goto label$958;
		label$959:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 1 ) goto label$960;
		{
			FBSTRING TMP$1319$3;
			FBSTRING TMP$1320$3;
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$962;
			{
				FBSTRING TMP$1303$4;
				FBSTRING TMP$1304$4;
				FBSTRING TMP$1305$4;
				FBSTRING TMP$1306$4;
				FBSTRING TMP$1307$4;
				FBSTRING TMP$1308$4;
				FBSTRING TMP$1309$4;
				FBSTRING TMP$1310$4;
				FBSTRING TMP$1311$4;
				FBSTRING* vr$247 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				char* vr$250 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				FBSTRING* vr$253 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1303$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$1303$4, (void*)"\x0A", 2, (void*)vr$253, -1 );
				__builtin_memset( &TMP$1304$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$1304$4, (void*)vr$256, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1305$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$1305$4, (void*)vr$259, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1306$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$1306$4, (void*)vr$262, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1307$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$1307$4, (void*)vr$265, -1, (void*)vr$250, 0 );
				__builtin_memset( &TMP$1308$4, 0, 12 );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1308$4, (void*)vr$268, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1309$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$1309$4, (void*)vr$271, -1, (void*)vr$247, -1 );
				__builtin_memset( &TMP$1310$4, 0, 12 );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$1310$4, (void*)vr$274, -1, (void*)"]", 2 );
				__builtin_memset( &TMP$1311$4, 0, 12 );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$1311$4, (void*)OP3$1, -1, (void*)vr$277, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$280, -1, 0 );
			}
			goto label$961;
			label$962:;
			{
				FBSTRING TMP$1312$4;
				FBSTRING TMP$1313$4;
				FBSTRING TMP$1314$4;
				FBSTRING TMP$1315$4;
				FBSTRING TMP$1316$4;
				FBSTRING TMP$1317$4;
				FBSTRING TMP$1318$4;
				FBSTRING* vr$283 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				FBSTRING* vr$286 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1312$4, 0, 12 );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$1312$4, (void*)"\x0A", 2, (void*)vr$286, -1 );
				__builtin_memset( &TMP$1313$4, 0, 12 );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$1313$4, (void*)vr$289, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1314$4, 0, 12 );
				FBSTRING* vr$295 = fb_StrConcat( &TMP$1314$4, (void*)vr$292, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1315$4, 0, 12 );
				FBSTRING* vr$298 = fb_StrConcat( &TMP$1315$4, (void*)vr$295, -1, (void*)",", 2 );
				__builtin_memset( &TMP$1316$4, 0, 12 );
				FBSTRING* vr$301 = fb_StrConcat( &TMP$1316$4, (void*)vr$298, -1, (void*)vr$283, -1 );
				__builtin_memset( &TMP$1317$4, 0, 12 );
				FBSTRING* vr$304 = fb_StrConcat( &TMP$1317$4, (void*)vr$301, -1, (void*)"[rbp]", 6 );
				__builtin_memset( &TMP$1318$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$1318$4, (void*)OP3$1, -1, (void*)vr$304, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$307, -1, 0 );
			}
			label$961:;
			__builtin_memset( &TMP$1319$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$1319$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1320$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$1320$3, (void*)vr$311, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$314, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$947;
		}
		label$960:;
		label$958:;
	}
	label$948:;
	__builtin_memset( &TMP$1321$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1321$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1321$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1321$1 );
	__builtin_memset( &TMP$1324$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1324$1, -1, (void*)"FOUND AN ERROR : prepare_IDX case not handled 01", 49, 0 );
	HWRITEASM64( &TMP$1324$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1324$1 );
	__builtin_memset( &TMP$1325$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1325$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1325$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1325$1 );
	int32 vr$328 = fb_StrCompare( (void*)OP1$1, -1, (void*)"", 1 );
	if( vr$328 != 0 ) goto label$964;
	{
		fb_StrAssign( (void*)OP1$1, -1, (void*)"X X", 4, 0 );
		label$964:;
	}
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	label$947:;
}

static char* HGETBOPCODE( int32 OP$1 )
{
	char* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$965:;
	{
		uint32 TMP$1327$2;
		TMP$1327$2 = (uint32)OP$1;
		goto label$968;
		label$969:;
		{
			fb$result$1 = (char*)"add";
		}
		goto label$967;
		label$970:;
		{
			fb$result$1 = (char*)"sub";
		}
		goto label$967;
		label$971:;
		{
			fb$result$1 = (char*)"mul";
		}
		goto label$967;
		label$972:;
		{
			fb$result$1 = (char*)"div";
		}
		goto label$967;
		label$973:;
		{
			fb$result$1 = (char*)"intdiv";
		}
		goto label$967;
		label$974:;
		{
			fb$result$1 = (char*)"mod";
		}
		goto label$967;
		label$975:;
		{
			fb$result$1 = (char*)"shl";
		}
		goto label$967;
		label$976:;
		{
			fb$result$1 = (char*)"ashr";
		}
		goto label$967;
		label$977:;
		{
			fb$result$1 = (char*)"and";
		}
		goto label$967;
		label$978:;
		{
			fb$result$1 = (char*)"or";
		}
		goto label$967;
		label$979:;
		{
			fb$result$1 = (char*)"xor";
		}
		goto label$967;
		label$980:;
		{
			fb$result$1 = (char*)"icmp eq";
		}
		goto label$967;
		label$981:;
		{
			fb$result$1 = (char*)"icmp ne";
		}
		goto label$967;
		label$982:;
		{
			fb$result$1 = (char*)"icmp sgt";
		}
		goto label$967;
		label$983:;
		{
			fb$result$1 = (char*)"icmp slt";
		}
		goto label$967;
		label$984:;
		{
			fb$result$1 = (char*)"icmp sge";
		}
		goto label$967;
		label$985:;
		{
			fb$result$1 = (char*)"icmp sle";
		}
		goto label$967;
		label$986:;
		{
			fb$result$1 = (char*)"eqv";
		}
		goto label$967;
		label$987:;
		{
			fb$result$1 = (char*)"imp";
		}
		goto label$967;
		label$988:;
		{
			fb$result$1 = (char*)"jmp";
		}
		goto label$967;
		label$989:;
		{
			fb$result$1 = (char*)"je";
		}
		goto label$967;
		label$990:;
		{
			fb$result$1 = (char*)"jgt";
		}
		goto label$967;
		label$991:;
		{
			fb$result$1 = (char*)"jlt";
		}
		goto label$967;
		label$992:;
		{
			fb$result$1 = (char*)"jne";
		}
		goto label$967;
		label$993:;
		{
			fb$result$1 = (char*)"jge";
		}
		goto label$967;
		label$994:;
		{
			fb$result$1 = (char*)"jle";
		}
		goto label$967;
		label$995:;
		{
			fb$result$1 = (char*)"call";
		}
		goto label$967;
		label$996:;
		{
			fb$result$1 = (char*)"bop unknown";
		}
		goto label$967;
		label$968:;
		static const void* tmp$4070[72] = {
			&&label$969,
			&&label$970,
			&&label$971,
			&&label$972,
			&&label$973,
			&&label$974,
			&&label$977,
			&&label$978,
			&&label$996,
			&&label$996,
			&&label$979,
			&&label$986,
			&&label$987,
			&&label$975,
			&&label$976,
			&&label$996,
			&&label$996,
			&&label$980,
			&&label$982,
			&&label$983,
			&&label$981,
			&&label$984,
			&&label$985,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$996,
			&&label$989,
			&&label$990,
			&&label$991,
			&&label$992,
			&&label$993,
			&&label$994,
			&&label$988,
			&&label$995,
		};
		if( (TMP$1327$2 - 28u) > 71u ) goto label$996;
		goto *tmp$4070[TMP$1327$2 - 28u];
		label$967:;
	}
	label$966:;
	return fb$result$1;
}

static void RESTORE_VRREG( struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	label$997:;
	*(int32*)((uint8*)&CTX$ + 236) = VRREG$1;
	*(int32*)((uint8*)&CTX$ + 240) = 1;
	if( *(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) != -2 ) goto label$1000;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
	}
	label$1000:;
	label$999:;
	label$998:;
}

static void BOP_FLOAT( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, FBSTRING* OP1$1, FBSTRING* OP2$1, FBSTRING* OP3$1, FBSTRING* OP4$1, FBSTRING* PREFIX$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$1001:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING MOVREG$1;
	__builtin_memset( &MOVREG$1, 0, 12 );
	FBSTRING MOVMEM$1;
	__builtin_memset( &MOVMEM$1, 0, 12 );
	FBSTRING COMPREG$1;
	__builtin_memset( &COMPREG$1, 0, 12 );
	FBSTRING IMMREG$1;
	__builtin_memset( &IMMREG$1, 0, 12 );
	FBSTRING ADDREG$1;
	__builtin_memset( &ADDREG$1, 0, 12 );
	FBSTRING SUBREG$1;
	__builtin_memset( &SUBREG$1, 0, 12 );
	FBSTRING MULREG$1;
	__builtin_memset( &MULREG$1, 0, 12 );
	FBSTRING DIVREG$1;
	__builtin_memset( &DIVREG$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	char* JMPCODE$1;
	__builtin_memset( &JMPCODE$1, 0, 4 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1004;
	{
		int32 vr$14 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
		VRREG$1 = vr$14;
	}
	label$1004:;
	label$1003:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( V1DTYPE$1 != 16 ) goto label$1006;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movq ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movsd ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomisd ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"rax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addsd ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subsd ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulsd ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divsd ", 7, 0 );
	}
	goto label$1005;
	label$1006:;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movd ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movss ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomiss ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"eax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addss ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subss ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulss ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divss ", 7, 0 );
	}
	label$1005:;
	if( *(int32*)V1$1 != 4 ) goto label$1008;
	{
		FBSTRING TMP$1366$2;
		FBSTRING TMP$1367$2;
		FBSTRING TMP$1368$2;
		__builtin_memset( &TMP$1368$2, 0, 12 );
		__builtin_memset( &TMP$1366$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$1366$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1367$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$1367$2, (void*)vr$38, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1368$2, -1, (void*)vr$41, -1, 0 );
		HWRITEASM64( &TMP$1368$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1368$2 );
	}
	goto label$1007;
	label$1008:;
	if( *(int32*)V1$1 != 0 ) goto label$1009;
	{
		FBSTRING TMP$1369$2;
		FBSTRING TMP$1370$2;
		FBSTRING TMP$1371$2;
		FBSTRING TMP$1372$2;
		FBSTRING TMP$1373$2;
		FBSTRING TMP$1374$2;
		FBSTRING TMP$1375$2;
		__builtin_memset( &TMP$1372$2, 0, 12 );
		__builtin_memset( &TMP$1369$2, 0, 12 );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$1369$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1370$2, 0, 12 );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$1370$2, (void*)vr$50, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1371$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$1371$2, (void*)vr$53, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1372$2, -1, (void*)vr$56, -1, 0 );
		HWRITEASM64( &TMP$1372$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1372$2 );
		__builtin_memset( &TMP$1375$2, 0, 12 );
		__builtin_memset( &TMP$1373$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$1373$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1374$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$1374$2, (void*)vr$65, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1375$2, -1, (void*)vr$68, -1, 0 );
		HWRITEASM64( &TMP$1375$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1375$2 );
	}
	goto label$1007;
	label$1009:;
	{
		FBSTRING TMP$1376$2;
		FBSTRING TMP$1377$2;
		FBSTRING TMP$1378$2;
		__builtin_memset( &TMP$1378$2, 0, 12 );
		__builtin_memset( &TMP$1376$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$1376$2, (void*)&MOVMEM$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1377$2, 0, 12 );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1377$2, (void*)vr$76, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1378$2, -1, (void*)vr$79, -1, 0 );
		HWRITEASM64( &TMP$1378$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1378$2 );
	}
	label$1007:;
	if( *(int32*)V2$1 != 4 ) goto label$1011;
	{
		FBSTRING TMP$1380$2;
		FBSTRING TMP$1381$2;
		FBSTRING TMP$1382$2;
		__builtin_memset( &TMP$1382$2, 0, 12 );
		__builtin_memset( &TMP$1380$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$1380$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1381$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$1381$2, (void*)vr$88, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1382$2, -1, (void*)vr$91, -1, 0 );
		HWRITEASM64( &TMP$1382$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1382$2 );
	}
	goto label$1010;
	label$1011:;
	if( *(int32*)V2$1 != 0 ) goto label$1012;
	{
		FBSTRING TMP$1383$2;
		FBSTRING TMP$1384$2;
		FBSTRING TMP$1385$2;
		FBSTRING TMP$1386$2;
		FBSTRING TMP$1387$2;
		FBSTRING TMP$1388$2;
		FBSTRING TMP$1389$2;
		__builtin_memset( &TMP$1386$2, 0, 12 );
		__builtin_memset( &TMP$1383$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$1383$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1384$2, 0, 12 );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$1384$2, (void*)vr$100, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1385$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$1385$2, (void*)vr$103, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1386$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$1386$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1386$2 );
		__builtin_memset( &TMP$1389$2, 0, 12 );
		__builtin_memset( &TMP$1387$2, 0, 12 );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$1387$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1388$2, 0, 12 );
		FBSTRING* vr$118 = fb_StrConcat( &TMP$1388$2, (void*)vr$115, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1389$2, -1, (void*)vr$118, -1, 0 );
		HWRITEASM64( &TMP$1389$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1389$2 );
	}
	goto label$1010;
	label$1012:;
	{
		FBSTRING TMP$1390$2;
		FBSTRING TMP$1391$2;
		FBSTRING TMP$1392$2;
		__builtin_memset( &TMP$1392$2, 0, 12 );
		__builtin_memset( &TMP$1390$2, 0, 12 );
		FBSTRING* vr$126 = fb_StrConcat( &TMP$1390$2, (void*)&MOVMEM$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1391$2, 0, 12 );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$1391$2, (void*)vr$126, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1392$2, -1, (void*)vr$129, -1, 0 );
		HWRITEASM64( &TMP$1392$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1392$2 );
	}
	label$1010:;
	{
		if( OP$1 == 45 ) goto label$1015;
		label$1016:;
		if( OP$1 == 48 ) goto label$1015;
		label$1017:;
		if( OP$1 == 47 ) goto label$1015;
		label$1018:;
		if( OP$1 == 50 ) goto label$1015;
		label$1019:;
		if( OP$1 == 46 ) goto label$1015;
		label$1020:;
		if( OP$1 != 49 ) goto label$1014;
		label$1015:;
		{
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1022;
			{
				FBSTRING TMP$1394$4;
				FBSTRING TMP$1395$4;
				FBSTRING TMP$1396$4;
				char* vr$133 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$133, 0, 0 );
				__builtin_memset( &TMP$1396$4, 0, 12 );
				__builtin_memset( &TMP$1394$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1394$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1395$4, 0, 12 );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$1395$4, (void*)vr$139, -1, (void*)", -1", 5 );
				fb_StrAssign( (void*)&TMP$1396$4, -1, (void*)vr$142, -1, 0 );
				HWRITEASM64( &TMP$1396$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1396$4 );
			}
			label$1022:;
			label$1021:;
			{
				if( OP$1 != 45 ) goto label$1024;
				label$1025:;
				{
					FBSTRING TMP$1398$5;
					FBSTRING TMP$1399$5;
					FBSTRING TMP$1401$5;
					FBSTRING TMP$1402$5;
					__builtin_memset( &TMP$1399$5, 0, 12 );
					__builtin_memset( &TMP$1398$5, 0, 12 );
					FBSTRING* vr$150 = fb_StrConcat( &TMP$1398$5, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1399$5, -1, (void*)vr$150, -1, 0 );
					HWRITEASM64( &TMP$1399$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1399$5 );
					char* vr$154 = SYMBUNIQUELABEL(  );
					fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$154, 0, 0 );
					__builtin_memset( &TMP$1402$5, 0, 12 );
					__builtin_memset( &TMP$1401$5, 0, 12 );
					FBSTRING* vr$160 = fb_StrConcat( &TMP$1401$5, (void*)"jp ", 4, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$1402$5, -1, (void*)vr$160, -1, 0 );
					HWRITEASM64( &TMP$1402$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1402$5 );
					JMPCODE$1 = (char*)"je ";
				}
				goto label$1023;
				label$1024:;
				if( OP$1 != 48 ) goto label$1026;
				label$1027:;
				{
					FBSTRING TMP$1404$5;
					FBSTRING TMP$1405$5;
					__builtin_memset( &TMP$1405$5, 0, 12 );
					__builtin_memset( &TMP$1404$5, 0, 12 );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$1404$5, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1405$5, -1, (void*)vr$168, -1, 0 );
					HWRITEASM64( &TMP$1405$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1405$5 );
					if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1029;
					{
						FBSTRING TMP$1406$6;
						FBSTRING TMP$1407$6;
						__builtin_memset( &TMP$1407$6, 0, 12 );
						__builtin_memset( &TMP$1406$6, 0, 12 );
						FBSTRING* vr$176 = fb_StrConcat( &TMP$1406$6, (void*)"jp ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$1407$6, -1, (void*)vr$176, -1, 0 );
						HWRITEASM64( &TMP$1407$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1407$6 );
					}
					goto label$1028;
					label$1029:;
					{
						FBSTRING TMP$1408$6;
						FBSTRING TMP$1409$6;
						__builtin_memset( &TMP$1409$6, 0, 12 );
						char* vr$181 = SYMBGETMANGLEDNAME( LABEL$1 );
						__builtin_memset( &TMP$1408$6, 0, 12 );
						FBSTRING* vr$184 = fb_StrConcat( &TMP$1408$6, (void*)"jp ", 4, (void*)vr$181, 0 );
						fb_StrAssign( (void*)&TMP$1409$6, -1, (void*)vr$184, -1, 0 );
						HWRITEASM64( &TMP$1409$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1409$6 );
					}
					label$1028:;
					JMPCODE$1 = (char*)"jne ";
				}
				goto label$1023;
				label$1026:;
				if( OP$1 != 47 ) goto label$1030;
				label$1031:;
				{
					if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1033;
					{
						FBSTRING TMP$1411$6;
						FBSTRING TMP$1412$6;
						__builtin_memset( &TMP$1412$6, 0, 12 );
						__builtin_memset( &TMP$1411$6, 0, 12 );
						FBSTRING* vr$192 = fb_StrConcat( &TMP$1411$6, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
						fb_StrAssign( (void*)&TMP$1412$6, -1, (void*)vr$192, -1, 0 );
						HWRITEASM64( &TMP$1412$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1412$6 );
						JMPCODE$1 = (char*)"jb ";
					}
					goto label$1032;
					label$1033:;
					{
						FBSTRING TMP$1415$6;
						FBSTRING TMP$1416$6;
						__builtin_memset( &TMP$1416$6, 0, 12 );
						__builtin_memset( &TMP$1415$6, 0, 12 );
						FBSTRING* vr$200 = fb_StrConcat( &TMP$1415$6, (void*)&COMPREG$1, -1, (void*)"xmm1, xmm0", 11 );
						fb_StrAssign( (void*)&TMP$1416$6, -1, (void*)vr$200, -1, 0 );
						HWRITEASM64( &TMP$1416$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1416$6 );
						JMPCODE$1 = (char*)"ja ";
					}
					label$1032:;
				}
				goto label$1023;
				label$1030:;
				if( OP$1 != 50 ) goto label$1034;
				label$1035:;
				{
					if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1037;
					{
						FBSTRING TMP$1418$6;
						FBSTRING TMP$1419$6;
						__builtin_memset( &TMP$1419$6, 0, 12 );
						__builtin_memset( &TMP$1418$6, 0, 12 );
						FBSTRING* vr$208 = fb_StrConcat( &TMP$1418$6, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
						fb_StrAssign( (void*)&TMP$1419$6, -1, (void*)vr$208, -1, 0 );
						HWRITEASM64( &TMP$1419$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1419$6 );
						JMPCODE$1 = (char*)"jbe ";
					}
					goto label$1036;
					label$1037:;
					{
						FBSTRING TMP$1421$6;
						FBSTRING TMP$1422$6;
						__builtin_memset( &TMP$1422$6, 0, 12 );
						__builtin_memset( &TMP$1421$6, 0, 12 );
						FBSTRING* vr$216 = fb_StrConcat( &TMP$1421$6, (void*)&COMPREG$1, -1, (void*)"xmm1, xmm0", 11 );
						fb_StrAssign( (void*)&TMP$1422$6, -1, (void*)vr$216, -1, 0 );
						HWRITEASM64( &TMP$1422$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1422$6 );
						JMPCODE$1 = (char*)"jae ";
					}
					label$1036:;
				}
				goto label$1023;
				label$1034:;
				if( OP$1 != 46 ) goto label$1038;
				label$1039:;
				{
					if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1041;
					{
						FBSTRING TMP$1424$6;
						FBSTRING TMP$1425$6;
						__builtin_memset( &TMP$1425$6, 0, 12 );
						__builtin_memset( &TMP$1424$6, 0, 12 );
						FBSTRING* vr$224 = fb_StrConcat( &TMP$1424$6, (void*)&COMPREG$1, -1, (void*)"xmm1, xmm0", 11 );
						fb_StrAssign( (void*)&TMP$1425$6, -1, (void*)vr$224, -1, 0 );
						HWRITEASM64( &TMP$1425$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1425$6 );
						JMPCODE$1 = (char*)"jb ";
					}
					goto label$1040;
					label$1041:;
					{
						FBSTRING TMP$1426$6;
						FBSTRING TMP$1427$6;
						__builtin_memset( &TMP$1427$6, 0, 12 );
						__builtin_memset( &TMP$1426$6, 0, 12 );
						FBSTRING* vr$232 = fb_StrConcat( &TMP$1426$6, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
						fb_StrAssign( (void*)&TMP$1427$6, -1, (void*)vr$232, -1, 0 );
						HWRITEASM64( &TMP$1427$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1427$6 );
						JMPCODE$1 = (char*)"ja ";
					}
					label$1040:;
				}
				goto label$1023;
				label$1038:;
				if( OP$1 != 49 ) goto label$1042;
				label$1043:;
				{
					if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1045;
					{
						FBSTRING TMP$1428$6;
						FBSTRING TMP$1429$6;
						__builtin_memset( &TMP$1429$6, 0, 12 );
						__builtin_memset( &TMP$1428$6, 0, 12 );
						FBSTRING* vr$240 = fb_StrConcat( &TMP$1428$6, (void*)&COMPREG$1, -1, (void*)"xmm1, xmm0", 11 );
						fb_StrAssign( (void*)&TMP$1429$6, -1, (void*)vr$240, -1, 0 );
						HWRITEASM64( &TMP$1429$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1429$6 );
						JMPCODE$1 = (char*)"jbe ";
					}
					goto label$1044;
					label$1045:;
					{
						FBSTRING TMP$1430$6;
						FBSTRING TMP$1431$6;
						__builtin_memset( &TMP$1431$6, 0, 12 );
						__builtin_memset( &TMP$1430$6, 0, 12 );
						FBSTRING* vr$248 = fb_StrConcat( &TMP$1430$6, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
						fb_StrAssign( (void*)&TMP$1431$6, -1, (void*)vr$248, -1, 0 );
						HWRITEASM64( &TMP$1431$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1431$6 );
						JMPCODE$1 = (char*)"jae ";
					}
					label$1044:;
				}
				label$1042:;
				label$1023:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1047;
			{
				FBSTRING TMP$1432$4;
				FBSTRING TMP$1433$4;
				__builtin_memset( &TMP$1433$4, 0, 12 );
				__builtin_memset( &TMP$1432$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$1432$4, (void*)JMPCODE$1, 0, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$1433$4, -1, (void*)vr$256, -1, 0 );
				HWRITEASM64( &TMP$1433$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1433$4 );
			}
			goto label$1046;
			label$1047:;
			{
				FBSTRING TMP$1434$4;
				FBSTRING TMP$1435$4;
				__builtin_memset( &TMP$1435$4, 0, 12 );
				char* vr$261 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1434$4, 0, 12 );
				FBSTRING* vr$264 = fb_StrConcat( &TMP$1434$4, (void*)JMPCODE$1, 0, (void*)vr$261, 0 );
				fb_StrAssign( (void*)&TMP$1435$4, -1, (void*)vr$264, -1, 0 );
				HWRITEASM64( &TMP$1435$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1435$4 );
				REG_MARK( LABEL$1 );
			}
			label$1046:;
			if( OP$1 != 45 ) goto label$1049;
			{
				FBSTRING TMP$1436$4;
				FBSTRING TMP$1437$4;
				__builtin_memset( &TMP$1437$4, 0, 12 );
				__builtin_memset( &TMP$1436$4, 0, 12 );
				FBSTRING* vr$272 = fb_StrConcat( &TMP$1436$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1437$4, -1, (void*)vr$272, -1, 0 );
				HWRITEASM64( &TMP$1437$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1437$4 );
				label$1049:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1051;
			{
				FBSTRING TMP$1439$4;
				FBSTRING TMP$1440$4;
				FBSTRING TMP$1441$4;
				FBSTRING TMP$1442$4;
				FBSTRING TMP$1443$4;
				FBSTRING TMP$1444$4;
				__builtin_memset( &TMP$1442$4, 0, 12 );
				__builtin_memset( &TMP$1439$4, 0, 12 );
				FBSTRING* vr$281 = fb_StrConcat( &TMP$1439$4, (void*)"xor ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1440$4, 0, 12 );
				FBSTRING* vr$284 = fb_StrConcat( &TMP$1440$4, (void*)vr$281, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1441$4, 0, 12 );
				FBSTRING* vr$287 = fb_StrConcat( &TMP$1441$4, (void*)vr$284, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1442$4, -1, (void*)vr$287, -1, 0 );
				HWRITEASM64( &TMP$1442$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1442$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
				__builtin_memset( &TMP$1444$4, 0, 12 );
				__builtin_memset( &TMP$1443$4, 0, 12 );
				FBSTRING* vr$295 = fb_StrConcat( &TMP$1443$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1444$4, -1, (void*)vr$295, -1, 0 );
				HWRITEASM64( &TMP$1444$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1444$4 );
			}
			label$1051:;
			label$1050:;
		}
		goto label$1013;
		label$1014:;
		if( OP$1 == 28 ) goto label$1053;
		label$1054:;
		if( OP$1 == 29 ) goto label$1053;
		label$1055:;
		if( OP$1 == 30 ) goto label$1053;
		label$1056:;
		if( OP$1 != 31 ) goto label$1052;
		label$1053:;
		{
			{
				if( OP$1 != 28 ) goto label$1058;
				label$1059:;
				{
					FBSTRING TMP$1445$5;
					FBSTRING TMP$1446$5;
					__builtin_memset( &TMP$1446$5, 0, 12 );
					__builtin_memset( &TMP$1445$5, 0, 12 );
					FBSTRING* vr$303 = fb_StrConcat( &TMP$1445$5, (void*)&ADDREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1446$5, -1, (void*)vr$303, -1, 0 );
					HWRITEASM64( &TMP$1446$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1446$5 );
				}
				goto label$1057;
				label$1058:;
				if( OP$1 != 29 ) goto label$1060;
				label$1061:;
				{
					FBSTRING TMP$1447$5;
					FBSTRING TMP$1448$5;
					__builtin_memset( &TMP$1448$5, 0, 12 );
					__builtin_memset( &TMP$1447$5, 0, 12 );
					FBSTRING* vr$311 = fb_StrConcat( &TMP$1447$5, (void*)&SUBREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1448$5, -1, (void*)vr$311, -1, 0 );
					HWRITEASM64( &TMP$1448$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1448$5 );
				}
				goto label$1057;
				label$1060:;
				if( OP$1 != 30 ) goto label$1062;
				label$1063:;
				{
					FBSTRING TMP$1449$5;
					FBSTRING TMP$1450$5;
					__builtin_memset( &TMP$1450$5, 0, 12 );
					__builtin_memset( &TMP$1449$5, 0, 12 );
					FBSTRING* vr$319 = fb_StrConcat( &TMP$1449$5, (void*)&MULREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1450$5, -1, (void*)vr$319, -1, 0 );
					HWRITEASM64( &TMP$1450$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1450$5 );
				}
				goto label$1057;
				label$1062:;
				if( OP$1 != 31 ) goto label$1064;
				label$1065:;
				{
					FBSTRING TMP$1451$5;
					FBSTRING TMP$1452$5;
					__builtin_memset( &TMP$1452$5, 0, 12 );
					__builtin_memset( &TMP$1451$5, 0, 12 );
					FBSTRING* vr$327 = fb_StrConcat( &TMP$1451$5, (void*)&DIVREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1452$5, -1, (void*)vr$327, -1, 0 );
					HWRITEASM64( &TMP$1452$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1452$5 );
				}
				label$1064:;
				label$1057:;
			}
			if( *(int32*)((uint8*)VR$1 + 4) != 16 ) goto label$1067;
			{
				FBSTRING TMP$1456$4;
				FBSTRING TMP$1457$4;
				FBSTRING TMP$1458$4;
				if( V1DTYPE$1 != 15 ) goto label$1069;
				{
					FBSTRING TMP$1454$5;
					__builtin_memset( &TMP$1454$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1454$5, -1, (void*)"cvtss2sd xmm0, xmm0", 20, 0 );
					HWRITEASM64( &TMP$1454$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1454$5 );
				}
				label$1069:;
				label$1068:;
				__builtin_memset( &TMP$1458$4, 0, 12 );
				__builtin_memset( &TMP$1456$4, 0, 12 );
				FBSTRING* vr$340 = fb_StrConcat( &TMP$1456$4, (void*)"movq ", 6, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1457$4, 0, 12 );
				FBSTRING* vr$343 = fb_StrConcat( &TMP$1457$4, (void*)vr$340, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1458$4, -1, (void*)vr$343, -1, 0 );
				HWRITEASM64( &TMP$1458$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1458$4 );
			}
			goto label$1066;
			label$1067:;
			{
				FBSTRING TMP$1459$4;
				FBSTRING TMP$1460$4;
				FBSTRING TMP$1461$4;
				__builtin_memset( &TMP$1461$4, 0, 12 );
				__builtin_memset( &TMP$1459$4, 0, 12 );
				FBSTRING* vr$351 = fb_StrConcat( &TMP$1459$4, (void*)"movd ", 6, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1460$4, 0, 12 );
				FBSTRING* vr$354 = fb_StrConcat( &TMP$1460$4, (void*)vr$351, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1461$4, -1, (void*)vr$354, -1, 0 );
				HWRITEASM64( &TMP$1461$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1461$4 );
			}
			label$1066:;
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1013;
		label$1052:;
		if( OP$1 != 64 ) goto label$1070;
		label$1071:;
		{
			if( V1DTYPE$1 != 16 ) goto label$1073;
			{
				FBSTRING TMP$1463$4;
				FBSTRING TMP$1464$4;
				FBSTRING TMP$1465$4;
				FBSTRING TMP$1466$4;
				__builtin_memset( &TMP$1463$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1463$4, -1, (void*)"atan2", 6, 0 );
				SAVE_CALL( &TMP$1463$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1463$4 );
				__builtin_memset( &TMP$1466$4, 0, 12 );
				__builtin_memset( &TMP$1464$4, 0, 12 );
				FBSTRING* vr$366 = fb_StrConcat( &TMP$1464$4, (void*)"movq ", 6, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1465$4, 0, 12 );
				FBSTRING* vr$369 = fb_StrConcat( &TMP$1465$4, (void*)vr$366, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1466$4, -1, (void*)vr$369, -1, 0 );
				HWRITEASM64( &TMP$1466$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1466$4 );
			}
			goto label$1072;
			label$1073:;
			{
				FBSTRING TMP$1468$4;
				FBSTRING TMP$1469$4;
				FBSTRING TMP$1470$4;
				FBSTRING TMP$1471$4;
				__builtin_memset( &TMP$1468$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1468$4, -1, (void*)"atan2f", 7, 0 );
				SAVE_CALL( &TMP$1468$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1468$4 );
				__builtin_memset( &TMP$1471$4, 0, 12 );
				__builtin_memset( &TMP$1469$4, 0, 12 );
				FBSTRING* vr$381 = fb_StrConcat( &TMP$1469$4, (void*)"movd ", 6, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1470$4, 0, 12 );
				FBSTRING* vr$384 = fb_StrConcat( &TMP$1470$4, (void*)vr$381, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1471$4, -1, (void*)vr$384, -1, 0 );
				HWRITEASM64( &TMP$1471$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1471$4 );
			}
			label$1072:;
		}
		goto label$1013;
		label$1070:;
		{
			FBSTRING TMP$1472$3;
			FBSTRING TMP$1475$3;
			FBSTRING TMP$1476$3;
			FBSTRING TMP$1477$3;
			__builtin_memset( &TMP$1472$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1472$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1472$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1472$3 );
			__builtin_memset( &TMP$1476$3, 0, 12 );
			char* vr$393 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1475$3, 0, 12 );
			FBSTRING* vr$396 = fb_StrConcat( &TMP$1475$3, (void*)"FOUND AN ERROR : in bop float needs to be coded : ", 51, (void*)vr$393, 0 );
			fb_StrAssign( (void*)&TMP$1476$3, -1, (void*)vr$396, -1, 0 );
			HWRITEASM64( &TMP$1476$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1476$3 );
			__builtin_memset( &TMP$1477$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1477$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1477$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1477$3 );
		}
		label$1074:;
		label$1013:;
	}
	fb_StrDelete( (FBSTRING*)&DIVREG$1 );
	fb_StrDelete( (FBSTRING*)&MULREG$1 );
	fb_StrDelete( (FBSTRING*)&SUBREG$1 );
	fb_StrDelete( (FBSTRING*)&ADDREG$1 );
	fb_StrDelete( (FBSTRING*)&IMMREG$1 );
	fb_StrDelete( (FBSTRING*)&COMPREG$1 );
	fb_StrDelete( (FBSTRING*)&MOVMEM$1 );
	fb_StrDelete( (FBSTRING*)&MOVREG$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1002:;
}

static void HLOADOPERANDSANDWRITEBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1550$1;
	int32 TMP$1551$1;
	FBSTRING TMP$1552$1;
	FBSTRING TMP$1553$1;
	label$1075:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	FBSTRING SUFFIX$1;
	__builtin_memset( &SUFFIX$1, 0, 12 );
	FBSTRING OP1PREV$1;
	__builtin_memset( &OP1PREV$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1BIS$1;
	__builtin_memset( &OP1BIS$1, 0, 12 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	$11FB_DATATYPE TEMPO2DTYPE$1;
	__builtin_memset( &TEMPO2DTYPE$1, 0, 4 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 VRREG2$1;
	__builtin_memset( &VRREG2$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	struct $6IRVREG* VRTEMPO$1;
	__builtin_memset( &VRTEMPO$1, 0, 4 );
	TEMPODTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1078;
	{
		TEMPODTYPE$1 = 8;
		label$1078:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1081;
		label$1082:;
		if( TEMPODTYPE$1 == 9 ) goto label$1081;
		label$1083:;
		if( TEMPODTYPE$1 == 13 ) goto label$1081;
		label$1084:;
		if( TEMPODTYPE$1 == 14 ) goto label$1081;
		label$1085:;
		if( TEMPODTYPE$1 == 10 ) goto label$1081;
		label$1086:;
		if( TEMPODTYPE$1 != 16 ) goto label$1080;
		label$1081:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1079;
		label$1080:;
		if( TEMPODTYPE$1 == 11 ) goto label$1088;
		label$1089:;
		if( TEMPODTYPE$1 == 12 ) goto label$1088;
		label$1090:;
		if( TEMPODTYPE$1 != 15 ) goto label$1087;
		label$1088:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1079;
		label$1087:;
		if( TEMPODTYPE$1 == 5 ) goto label$1092;
		label$1093:;
		if( TEMPODTYPE$1 != 6 ) goto label$1091;
		label$1092:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1079;
		label$1091:;
		if( TEMPODTYPE$1 == 2 ) goto label$1095;
		label$1096:;
		if( TEMPODTYPE$1 == 3 ) goto label$1095;
		label$1097:;
		if( TEMPODTYPE$1 == 1 ) goto label$1095;
		label$1098:;
		if( TEMPODTYPE$1 != 4 ) goto label$1094;
		label$1095:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1079;
		label$1094:;
		{
			FBSTRING TMP$1482$3;
			FBSTRING TMP$1486$3;
			FBSTRING TMP$1487$3;
			FBSTRING TMP$1488$3;
			__builtin_memset( &TMP$1482$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1482$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1482$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1482$3 );
			__builtin_memset( &TMP$1487$3, 0, 12 );
			FBSTRING* vr$29 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1486$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$1486$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48, (void*)vr$29, -1 );
			fb_StrAssign( (void*)&TMP$1487$3, -1, (void*)vr$32, -1, 0 );
			HWRITEASM64( &TMP$1487$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1487$3 );
			__builtin_memset( &TMP$1488$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1488$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1488$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1488$3 );
		}
		label$1099:;
		label$1079:;
	}
	fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)&PREFIX1$1, -1, 0 );
	{
		$15IRVREGTYPE_ENUM TMP$1489$2;
		TMP$1489$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1489$2 != 4 ) goto label$1101;
		label$1102:;
		{
			int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$44;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1105;
				label$1106:;
				if( TEMPODTYPE$1 == 9 ) goto label$1105;
				label$1107:;
				if( TEMPODTYPE$1 == 13 ) goto label$1105;
				label$1108:;
				if( TEMPODTYPE$1 == 14 ) goto label$1105;
				label$1109:;
				if( TEMPODTYPE$1 == 10 ) goto label$1105;
				label$1110:;
				if( TEMPODTYPE$1 != 16 ) goto label$1104;
				label$1105:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1103;
				label$1104:;
				if( TEMPODTYPE$1 == 11 ) goto label$1112;
				label$1113:;
				if( TEMPODTYPE$1 == 12 ) goto label$1112;
				label$1114:;
				if( TEMPODTYPE$1 != 15 ) goto label$1111;
				label$1112:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1103;
				label$1111:;
				if( TEMPODTYPE$1 == 5 ) goto label$1116;
				label$1117:;
				if( TEMPODTYPE$1 != 6 ) goto label$1115;
				label$1116:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1103;
				label$1115:;
				if( TEMPODTYPE$1 == 2 ) goto label$1119;
				label$1120:;
				if( TEMPODTYPE$1 == 3 ) goto label$1119;
				label$1121:;
				if( TEMPODTYPE$1 == 1 ) goto label$1119;
				label$1122:;
				if( TEMPODTYPE$1 != 4 ) goto label$1118;
				label$1119:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1103;
				label$1118:;
				{
					FBSTRING TMP$1490$5;
					FBSTRING TMP$1494$5;
					FBSTRING TMP$1495$5;
					FBSTRING TMP$1496$5;
					__builtin_memset( &TMP$1490$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1490$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1490$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1490$5 );
					__builtin_memset( &TMP$1495$5, 0, 12 );
					FBSTRING* vr$59 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1494$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$1494$5, (void*)"FOUND AN ERROR : BOP datatype not handled 010 ", 47, (void*)vr$59, -1 );
					fb_StrAssign( (void*)&TMP$1495$5, -1, (void*)vr$62, -1, 0 );
					HWRITEASM64( &TMP$1495$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1495$5 );
					__builtin_memset( &TMP$1496$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1496$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1496$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1496$5 );
				}
				label$1123:;
				label$1103:;
			}
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1100;
		label$1101:;
		if( TMP$1489$2 != 2 ) goto label$1124;
		label$1125:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1100;
		label$1124:;
		if( TMP$1489$2 != 3 ) goto label$1126;
		label$1127:;
		{
			FBSTRING TMP$1497$3;
			FBSTRING TMP$1498$3;
			FBSTRING TMP$1499$3;
			int32 vr$75 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1497$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$1497$3, (void*)vr$78, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1498$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$1498$3, (void*)vr$81, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$75 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1499$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1499$3, (void*)vr$84, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$87, -1, 0 );
		}
		goto label$1100;
		label$1126:;
		if( TMP$1489$2 != 5 ) goto label$1128;
		label$1129:;
		{
			FBSTRING TMP$1500$3;
			FBSTRING TMP$1501$3;
			FBSTRING TMP$1502$3;
			FBSTRING* vr$90 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			char* vr$92 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1500$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$1500$3, (void*)vr$92, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1501$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$1501$3, (void*)vr$95, -1, (void*)vr$90, -1 );
			__builtin_memset( &TMP$1502$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$1502$3, (void*)vr$98, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$101, -1, 0 );
		}
		goto label$1100;
		label$1128:;
		if( TMP$1489$2 != 0 ) goto label$1130;
		label$1131:;
		{
			int32 TMP$1503$3;
			if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1132;
			TMP$1503$3 = 24;
			goto label$3094;
			label$1132:;
			TMP$1503$3 = *(int32*)((uint8*)V1$1 + 4) & 31;
			label$3094:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1503$3 * 28)) != 1 ) goto label$1134;
			{
				FBSTRING* vr$110 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V1$1 + 24), *(int32*)((uint8*)V1$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$110, -1, 0 );
			}
			goto label$1133;
			label$1134:;
			{
				if( TEMPODTYPE$1 != 1 ) goto label$1136;
				{
					if( *(int64*)((uint8*)V1$1 + 24) == 0ll ) goto label$1138;
					{
						*(int64*)((uint8*)V1$1 + 24) = 1ll;
					}
					label$1138:;
					label$1137:;
				}
				label$1136:;
				label$1135:;
				FBSTRING* vr$115 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$115, -1, 0 );
			}
			label$1133:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1100;
		label$1130:;
		if( TMP$1489$2 != 1 ) goto label$1139;
		label$1140:;
		{
			int32 TMP$1504$3;
			int32 TMP$1505$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1141;
			int32 vr$119 = FBGETOPTION( 0 );
			TMP$1504$3 = -(vr$119 == 2);
			goto label$3095;
			label$1141:;
			TMP$1504$3 = 0;
			label$3095:;
			if( TMP$1504$3 == 0 ) goto label$1142;
			TMP$1505$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
			goto label$3096;
			label$1142:;
			TMP$1505$3 = 0;
			label$3096:;
			if( TMP$1505$3 == 0 ) goto label$1144;
			{
				FBSTRING TMP$1507$4;
				FBSTRING TMP$1508$4;
				FBSTRING TMP$1509$4;
				FBSTRING TMP$1510$4;
				int32 vr$125 = REG_FINDFREE( 999994, -1 );
				TEMPO$1 = vr$125;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				char* vr$129 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1507$4, 0, 12 );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$1507$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1508$4, 0, 12 );
				FBSTRING* vr$136 = fb_StrConcat( &TMP$1508$4, (void*)vr$133, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1509$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1509$4, (void*)vr$136, -1, (void*)vr$129, 0 );
				__builtin_memset( &TMP$1510$4, 0, 12 );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$1510$4, (void*)vr$139, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$142, -1, 0 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
			}
			goto label$1143;
			label$1144:;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1146;
				{
					FBSTRING TMP$1511$5;
					FBSTRING TMP$1512$5;
					FBSTRING TMP$1513$5;
					FBSTRING* vr$158 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					char* vr$160 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$1511$5, 0, 12 );
					FBSTRING* vr$163 = fb_StrConcat( &TMP$1511$5, (void*)vr$160, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$1512$5, 0, 12 );
					FBSTRING* vr$166 = fb_StrConcat( &TMP$1512$5, (void*)vr$163, -1, (void*)vr$158, -1 );
					__builtin_memset( &TMP$1513$5, 0, 12 );
					FBSTRING* vr$169 = fb_StrConcat( &TMP$1513$5, (void*)vr$166, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$169, -1, 0 );
				}
				goto label$1145;
				label$1146:;
				{
					FBSTRING TMP$1514$5;
					FBSTRING* vr$172 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$1514$5, 0, 12 );
					FBSTRING* vr$175 = fb_StrConcat( &TMP$1514$5, (void*)vr$172, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$175, -1, 0 );
				}
				label$1145:;
			}
			label$1143:;
		}
		goto label$1100;
		label$1139:;
		{
			FBSTRING TMP$1515$3;
			FBSTRING TMP$1518$3;
			FBSTRING TMP$1519$3;
			__builtin_memset( &TMP$1515$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1515$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1515$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1515$3 );
			__builtin_memset( &TMP$1518$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1518$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$1518$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1518$3 );
			__builtin_memset( &TMP$1519$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1519$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1519$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1519$3 );
		}
		label$1147:;
		label$1100:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1520$2;
		TMP$1520$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$1520$2 != 4 ) goto label$1149;
		label$1150:;
		{
			int32 vr$191 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			TEMPO$1 = vr$191;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1153;
				label$1154:;
				if( TEMPODTYPE$1 == 9 ) goto label$1153;
				label$1155:;
				if( TEMPODTYPE$1 == 13 ) goto label$1153;
				label$1156:;
				if( TEMPODTYPE$1 == 14 ) goto label$1153;
				label$1157:;
				if( TEMPODTYPE$1 == 10 ) goto label$1153;
				label$1158:;
				if( TEMPODTYPE$1 != 16 ) goto label$1152;
				label$1153:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1151;
				label$1152:;
				if( TEMPODTYPE$1 == 11 ) goto label$1160;
				label$1161:;
				if( TEMPODTYPE$1 == 12 ) goto label$1160;
				label$1162:;
				if( TEMPODTYPE$1 != 15 ) goto label$1159;
				label$1160:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRD$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1151;
				label$1159:;
				if( TEMPODTYPE$1 == 5 ) goto label$1164;
				label$1165:;
				if( TEMPODTYPE$1 != 6 ) goto label$1163;
				label$1164:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRW$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1151;
				label$1163:;
				if( TEMPODTYPE$1 == 2 ) goto label$1167;
				label$1168:;
				if( TEMPODTYPE$1 == 3 ) goto label$1167;
				label$1169:;
				if( TEMPODTYPE$1 == 1 ) goto label$1167;
				label$1170:;
				if( TEMPODTYPE$1 != 4 ) goto label$1166;
				label$1167:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRB$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1151;
				label$1166:;
				{
					FBSTRING TMP$1521$5;
					FBSTRING TMP$1525$5;
					FBSTRING TMP$1526$5;
					FBSTRING TMP$1527$5;
					__builtin_memset( &TMP$1521$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1521$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1521$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1521$5 );
					__builtin_memset( &TMP$1526$5, 0, 12 );
					FBSTRING* vr$206 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1525$5, 0, 12 );
					FBSTRING* vr$209 = fb_StrConcat( &TMP$1525$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 ", 47, (void*)vr$206, -1 );
					fb_StrAssign( (void*)&TMP$1526$5, -1, (void*)vr$209, -1, 0 );
					HWRITEASM64( &TMP$1526$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1526$5 );
					__builtin_memset( &TMP$1527$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1527$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1527$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1527$5 );
				}
				label$1171:;
				label$1151:;
			}
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
		}
		goto label$1148;
		label$1149:;
		if( TMP$1520$2 != 0 ) goto label$1172;
		label$1173:;
		{
			int32 TMP$1528$3;
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1174;
			TMP$1528$3 = 24;
			goto label$3097;
			label$1174:;
			TMP$1528$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3097:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1528$3 * 28)) != 1 ) goto label$1176;
			{
				FBSTRING* vr$226 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$226, -1, 0 );
			}
			goto label$1175;
			label$1176:;
			{
				if( *(int32*)((uint8*)V2$1 + 4) != 1 ) goto label$1178;
				{
					if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$1180;
					{
						*(int64*)((uint8*)V2$1 + 24) = 1ll;
					}
					label$1180:;
					label$1179:;
				}
				label$1178:;
				label$1177:;
				FBSTRING* vr$232 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$232, -1, 0 );
			}
			label$1175:;
		}
		goto label$1148;
		label$1172:;
		if( TMP$1520$2 != 3 ) goto label$1181;
		label$1182:;
		{
			FBSTRING TMP$1529$3;
			FBSTRING TMP$1530$3;
			FBSTRING TMP$1531$3;
			int32 vr$236 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$239 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$1529$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$1529$3, (void*)vr$239, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1530$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$1530$3, (void*)vr$242, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$236 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1531$3, 0, 12 );
			FBSTRING* vr$248 = fb_StrConcat( &TMP$1531$3, (void*)vr$245, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$248, -1, 0 );
		}
		goto label$1148;
		label$1181:;
		if( TMP$1520$2 != 5 ) goto label$1183;
		label$1184:;
		{
			FBSTRING TMP$1532$3;
			FBSTRING TMP$1533$3;
			FBSTRING TMP$1534$3;
			FBSTRING* vr$251 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			char* vr$253 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$1532$3, 0, 12 );
			FBSTRING* vr$256 = fb_StrConcat( &TMP$1532$3, (void*)vr$253, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1533$3, 0, 12 );
			FBSTRING* vr$259 = fb_StrConcat( &TMP$1533$3, (void*)vr$256, -1, (void*)vr$251, -1 );
			__builtin_memset( &TMP$1534$3, 0, 12 );
			FBSTRING* vr$262 = fb_StrConcat( &TMP$1534$3, (void*)vr$259, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$262, -1, 0 );
		}
		goto label$1148;
		label$1183:;
		if( TMP$1520$2 != 2 ) goto label$1185;
		label$1186:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1148;
		label$1185:;
		if( TMP$1520$2 != 1 ) goto label$1187;
		label$1188:;
		{
			int32 TMP$1535$3;
			int32 TMP$1536$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1189;
			int32 vr$267 = FBGETOPTION( 0 );
			TMP$1535$3 = -(vr$267 == 2);
			goto label$3098;
			label$1189:;
			TMP$1535$3 = 0;
			label$3098:;
			if( TMP$1535$3 == 0 ) goto label$1190;
			TMP$1536$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
			goto label$3099;
			label$1190:;
			TMP$1536$3 = 0;
			label$3099:;
			if( TMP$1536$3 == 0 ) goto label$1192;
			{
				FBSTRING TMP$1537$4;
				FBSTRING TMP$1538$4;
				FBSTRING TMP$1539$4;
				FBSTRING TMP$1540$4;
				int32 vr$273 = REG_FINDFREE( 999993, -1 );
				TEMPO$1 = vr$273;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				char* vr$277 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1537$4, 0, 12 );
				FBSTRING* vr$281 = fb_StrConcat( &TMP$1537$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1538$4, 0, 12 );
				FBSTRING* vr$284 = fb_StrConcat( &TMP$1538$4, (void*)vr$281, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1539$4, 0, 12 );
				FBSTRING* vr$287 = fb_StrConcat( &TMP$1539$4, (void*)vr$284, -1, (void*)vr$277, 0 );
				__builtin_memset( &TMP$1540$4, 0, 12 );
				FBSTRING* vr$290 = fb_StrConcat( &TMP$1540$4, (void*)vr$287, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&OP4$1, -1, (void*)vr$290, -1, 0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)"]", 2, 0 );
			}
			goto label$1191;
			label$1192:;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1194;
				{
					FBSTRING TMP$1541$5;
					FBSTRING TMP$1542$5;
					FBSTRING TMP$1543$5;
					FBSTRING* vr$306 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					char* vr$308 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$1541$5, 0, 12 );
					FBSTRING* vr$311 = fb_StrConcat( &TMP$1541$5, (void*)vr$308, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$1542$5, 0, 12 );
					FBSTRING* vr$314 = fb_StrConcat( &TMP$1542$5, (void*)vr$311, -1, (void*)vr$306, -1 );
					__builtin_memset( &TMP$1543$5, 0, 12 );
					FBSTRING* vr$317 = fb_StrConcat( &TMP$1543$5, (void*)vr$314, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$317, -1, 0 );
				}
				goto label$1193;
				label$1194:;
				{
					FBSTRING TMP$1544$5;
					FBSTRING* vr$320 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$1544$5, 0, 12 );
					FBSTRING* vr$323 = fb_StrConcat( &TMP$1544$5, (void*)vr$320, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$323, -1, 0 );
				}
				label$1193:;
			}
			label$1191:;
		}
		goto label$1148;
		label$1187:;
		{
			FBSTRING TMP$1545$3;
			FBSTRING TMP$1548$3;
			FBSTRING TMP$1549$3;
			__builtin_memset( &TMP$1545$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1545$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1545$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1545$3 );
			__builtin_memset( &TMP$1548$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1548$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v2", 51, 0 );
			HWRITEASM64( &TMP$1548$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1548$3 );
			__builtin_memset( &TMP$1549$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1549$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1549$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1549$3 );
		}
		label$1195:;
		label$1148:;
	}
	int32 vr$338 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$338 == 0 ) goto label$1197;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1197:;
	}
	int32 vr$341 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$341 == 0 ) goto label$1199;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1199:;
	}
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1200;
	TMP$1550$1 = 24;
	goto label$3100;
	label$1200:;
	TMP$1550$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3100:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1201;
	TMP$1551$1 = 24;
	goto label$3101;
	label$1201:;
	TMP$1551$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$3101:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1550$1 * 28)) == 1) | -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1551$1 * 28)) == 1)) == 0 ) goto label$1203;
	{
		BOP_FLOAT( OP$1, V1$1, V2$1, VR$1, &OP1$1, &OP2$1, &OP3$1, &OP4$1, &PREFIX1$1, LABEL$1 );
		fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
		fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1076;
	}
	label$1203:;
	label$1202:;
	__builtin_memset( &TMP$1552$1, 0, 12 );
	FBSTRING* vr$375 = fb_StrConcat( &TMP$1552$1, (void*)&PREFIX1$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$375, -1, 0 );
	__builtin_memset( &TMP$1553$1, 0, 12 );
	FBSTRING* vr$381 = fb_StrConcat( &TMP$1553$1, (void*)&PREFIX2$1, -1, (void*)&OP2$1, -1 );
	fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$381, -1, 0 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1205;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1207;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
		}
		goto label$1206;
		label$1207:;
		{
			int32 vr$387 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
			VRREG$1 = vr$387;
			if( *(int32*)V1$1 != 5 ) goto label$1209;
			{
				FBSTRING TMP$1554$4;
				FBSTRING TMP$1555$4;
				FBSTRING TMP$1556$4;
				FBSTRING TMP$1557$4;
				__builtin_memset( &TMP$1557$4, 0, 12 );
				__builtin_memset( &TMP$1554$4, 0, 12 );
				FBSTRING* vr$394 = fb_StrConcat( &TMP$1554$4, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1555$4, 0, 12 );
				FBSTRING* vr$397 = fb_StrConcat( &TMP$1555$4, (void*)vr$394, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1556$4, 0, 12 );
				FBSTRING* vr$400 = fb_StrConcat( &TMP$1556$4, (void*)vr$397, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1557$4, -1, (void*)vr$400, -1, 0 );
				HWRITEASM64( &TMP$1557$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1557$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			goto label$1208;
			label$1209:;
			{
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1212;
					label$1213:;
					if( TEMPODTYPE$1 == 9 ) goto label$1212;
					label$1214:;
					if( TEMPODTYPE$1 == 13 ) goto label$1212;
					label$1215:;
					if( TEMPODTYPE$1 == 14 ) goto label$1212;
					label$1216:;
					if( TEMPODTYPE$1 != 10 ) goto label$1211;
					label$1212:;
					{
						FBSTRING TMP$1558$6;
						FBSTRING TMP$1559$6;
						FBSTRING TMP$1560$6;
						FBSTRING TMP$1561$6;
						__builtin_memset( &TMP$1561$6, 0, 12 );
						__builtin_memset( &TMP$1558$6, 0, 12 );
						FBSTRING* vr$411 = fb_StrConcat( &TMP$1558$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1559$6, 0, 12 );
						FBSTRING* vr$414 = fb_StrConcat( &TMP$1559$6, (void*)vr$411, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1560$6, 0, 12 );
						FBSTRING* vr$417 = fb_StrConcat( &TMP$1560$6, (void*)vr$414, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1561$6, -1, (void*)vr$417, -1, 0 );
						HWRITEASM64( &TMP$1561$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1561$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1210;
					label$1211:;
					if( TEMPODTYPE$1 == 11 ) goto label$1218;
					label$1219:;
					if( TEMPODTYPE$1 != 12 ) goto label$1217;
					label$1218:;
					{
						FBSTRING TMP$1562$6;
						FBSTRING TMP$1563$6;
						FBSTRING TMP$1564$6;
						FBSTRING TMP$1565$6;
						__builtin_memset( &TMP$1565$6, 0, 12 );
						__builtin_memset( &TMP$1562$6, 0, 12 );
						FBSTRING* vr$428 = fb_StrConcat( &TMP$1562$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1563$6, 0, 12 );
						FBSTRING* vr$431 = fb_StrConcat( &TMP$1563$6, (void*)vr$428, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1564$6, 0, 12 );
						FBSTRING* vr$434 = fb_StrConcat( &TMP$1564$6, (void*)vr$431, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1565$6, -1, (void*)vr$434, -1, 0 );
						HWRITEASM64( &TMP$1565$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1565$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1210;
					label$1217:;
					if( TEMPODTYPE$1 == 5 ) goto label$1221;
					label$1222:;
					if( TEMPODTYPE$1 != 6 ) goto label$1220;
					label$1221:;
					{
						FBSTRING TMP$1566$6;
						FBSTRING TMP$1567$6;
						FBSTRING TMP$1568$6;
						FBSTRING TMP$1569$6;
						__builtin_memset( &TMP$1569$6, 0, 12 );
						__builtin_memset( &TMP$1566$6, 0, 12 );
						FBSTRING* vr$445 = fb_StrConcat( &TMP$1566$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1567$6, 0, 12 );
						FBSTRING* vr$448 = fb_StrConcat( &TMP$1567$6, (void*)vr$445, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1568$6, 0, 12 );
						FBSTRING* vr$451 = fb_StrConcat( &TMP$1568$6, (void*)vr$448, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1569$6, -1, (void*)vr$451, -1, 0 );
						HWRITEASM64( &TMP$1569$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1569$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1210;
					label$1220:;
					if( TEMPODTYPE$1 == 2 ) goto label$1224;
					label$1225:;
					if( TEMPODTYPE$1 == 3 ) goto label$1224;
					label$1226:;
					if( TEMPODTYPE$1 == 1 ) goto label$1224;
					label$1227:;
					if( TEMPODTYPE$1 != 4 ) goto label$1223;
					label$1224:;
					{
						FBSTRING TMP$1570$6;
						FBSTRING TMP$1571$6;
						FBSTRING TMP$1572$6;
						FBSTRING TMP$1573$6;
						__builtin_memset( &TMP$1573$6, 0, 12 );
						__builtin_memset( &TMP$1570$6, 0, 12 );
						FBSTRING* vr$462 = fb_StrConcat( &TMP$1570$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1571$6, 0, 12 );
						FBSTRING* vr$465 = fb_StrConcat( &TMP$1571$6, (void*)vr$462, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1572$6, 0, 12 );
						FBSTRING* vr$468 = fb_StrConcat( &TMP$1572$6, (void*)vr$465, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1573$6, -1, (void*)vr$468, -1, 0 );
						HWRITEASM64( &TMP$1573$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1573$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1210;
					label$1223:;
					{
						FBSTRING TMP$1574$6;
						FBSTRING TMP$1578$6;
						FBSTRING TMP$1579$6;
						FBSTRING TMP$1580$6;
						__builtin_memset( &TMP$1574$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1574$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1574$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1574$6 );
						__builtin_memset( &TMP$1579$6, 0, 12 );
						FBSTRING* vr$480 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1578$6, 0, 12 );
						FBSTRING* vr$483 = fb_StrConcat( &TMP$1578$6, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49, (void*)vr$480, -1 );
						fb_StrAssign( (void*)&TMP$1579$6, -1, (void*)vr$483, -1, 0 );
						HWRITEASM64( &TMP$1579$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1579$6 );
						__builtin_memset( &TMP$1580$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1580$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1580$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1580$6 );
					}
					label$1228:;
					label$1210:;
				}
			}
			label$1208:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		label$1206:;
		if( *(int32*)V2$1 != 5 ) goto label$1230;
		{
			FBSTRING TMP$1581$3;
			FBSTRING TMP$1582$3;
			FBSTRING TMP$1583$3;
			FBSTRING TMP$1584$3;
			int32 vr$493 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$493;
			__builtin_memset( &TMP$1584$3, 0, 12 );
			__builtin_memset( &TMP$1581$3, 0, 12 );
			FBSTRING* vr$499 = fb_StrConcat( &TMP$1581$3, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1582$3, 0, 12 );
			FBSTRING* vr$502 = fb_StrConcat( &TMP$1582$3, (void*)vr$499, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1583$3, 0, 12 );
			FBSTRING* vr$505 = fb_StrConcat( &TMP$1583$3, (void*)vr$502, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1584$3, -1, (void*)vr$505, -1, 0 );
			HWRITEASM64( &TMP$1584$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1584$3 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1230:;
		label$1229:;
	}
	goto label$1204;
	label$1205:;
	{
		if( *(int32*)V1$1 != 5 ) goto label$1232;
		{
			FBSTRING TMP$1585$3;
			FBSTRING TMP$1586$3;
			FBSTRING TMP$1587$3;
			FBSTRING TMP$1588$3;
			int32 vr$512 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$512;
			__builtin_memset( &TMP$1588$3, 0, 12 );
			__builtin_memset( &TMP$1585$3, 0, 12 );
			FBSTRING* vr$518 = fb_StrConcat( &TMP$1585$3, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1586$3, 0, 12 );
			FBSTRING* vr$521 = fb_StrConcat( &TMP$1586$3, (void*)vr$518, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1587$3, 0, 12 );
			FBSTRING* vr$524 = fb_StrConcat( &TMP$1587$3, (void*)vr$521, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1588$3, -1, (void*)vr$524, -1, 0 );
			HWRITEASM64( &TMP$1588$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1588$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1232:;
		label$1231:;
		if( OP$1 != 30 ) goto label$1234;
		{
			if( *(int32*)V1$1 == 4 ) goto label$1236;
			{
				FBSTRING TMP$1589$4;
				FBSTRING TMP$1590$4;
				FBSTRING TMP$1591$4;
				FBSTRING TMP$1592$4;
				struct $6IRVREG* vr$531 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				VR$1 = vr$531;
				int32 vr$533 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				VRREG$1 = vr$533;
				fb_StrAssign( (void*)&OP1PREV$1, -1, (void*)&OP1$1, -1, 0 );
				__builtin_memset( &TMP$1592$4, 0, 12 );
				__builtin_memset( &TMP$1589$4, 0, 12 );
				FBSTRING* vr$541 = fb_StrConcat( &TMP$1589$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1590$4, 0, 12 );
				FBSTRING* vr$544 = fb_StrConcat( &TMP$1590$4, (void*)vr$541, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1591$4, 0, 12 );
				FBSTRING* vr$547 = fb_StrConcat( &TMP$1591$4, (void*)vr$544, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1592$4, -1, (void*)vr$547, -1, 0 );
				HWRITEASM64( &TMP$1592$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1592$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			label$1236:;
			label$1235:;
		}
		goto label$1233;
		label$1234:;
		{
			if( (-(*(int32*)V2$1 != 4) & -(*(int32*)V2$1 != 0)) == 0 ) goto label$1238;
			{
				struct $6IRVREG* vr$558 = IRHLALLOCVREG( TEMPODTYPE$1, (struct $8FBSYMBOL*)0u );
				VRTEMPO$1 = vr$558;
				int32 vr$560 = REG_FINDFREE( *(int32*)((uint8*)VRTEMPO$1 + 12), -1 );
				VRREG$1 = vr$560;
				if( *(int32*)V2$1 != 5 ) goto label$1240;
				{
					FBSTRING TMP$1593$5;
					FBSTRING TMP$1594$5;
					FBSTRING TMP$1595$5;
					FBSTRING TMP$1596$5;
					__builtin_memset( &TMP$1596$5, 0, 12 );
					__builtin_memset( &TMP$1593$5, 0, 12 );
					FBSTRING* vr$567 = fb_StrConcat( &TMP$1593$5, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1594$5, 0, 12 );
					FBSTRING* vr$570 = fb_StrConcat( &TMP$1594$5, (void*)vr$567, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1595$5, 0, 12 );
					FBSTRING* vr$573 = fb_StrConcat( &TMP$1595$5, (void*)vr$570, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1596$5, -1, (void*)vr$573, -1, 0 );
					HWRITEASM64( &TMP$1596$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1596$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1239;
				label$1240:;
				{
					{
						if( TEMPODTYPE$1 == 8 ) goto label$1243;
						label$1244:;
						if( TEMPODTYPE$1 == 9 ) goto label$1243;
						label$1245:;
						if( TEMPODTYPE$1 == 13 ) goto label$1243;
						label$1246:;
						if( TEMPODTYPE$1 == 14 ) goto label$1243;
						label$1247:;
						if( TEMPODTYPE$1 != 10 ) goto label$1242;
						label$1243:;
						{
							FBSTRING TMP$1597$7;
							FBSTRING TMP$1598$7;
							FBSTRING TMP$1599$7;
							FBSTRING TMP$1600$7;
							__builtin_memset( &TMP$1600$7, 0, 12 );
							__builtin_memset( &TMP$1597$7, 0, 12 );
							FBSTRING* vr$584 = fb_StrConcat( &TMP$1597$7, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1598$7, 0, 12 );
							FBSTRING* vr$587 = fb_StrConcat( &TMP$1598$7, (void*)vr$584, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1599$7, 0, 12 );
							FBSTRING* vr$590 = fb_StrConcat( &TMP$1599$7, (void*)vr$587, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1600$7, -1, (void*)vr$590, -1, 0 );
							HWRITEASM64( &TMP$1600$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1600$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1241;
						label$1242:;
						if( TEMPODTYPE$1 == 11 ) goto label$1249;
						label$1250:;
						if( TEMPODTYPE$1 != 12 ) goto label$1248;
						label$1249:;
						{
							FBSTRING TMP$1601$7;
							FBSTRING TMP$1602$7;
							FBSTRING TMP$1603$7;
							FBSTRING TMP$1604$7;
							__builtin_memset( &TMP$1604$7, 0, 12 );
							__builtin_memset( &TMP$1601$7, 0, 12 );
							FBSTRING* vr$601 = fb_StrConcat( &TMP$1601$7, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1602$7, 0, 12 );
							FBSTRING* vr$604 = fb_StrConcat( &TMP$1602$7, (void*)vr$601, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1603$7, 0, 12 );
							FBSTRING* vr$607 = fb_StrConcat( &TMP$1603$7, (void*)vr$604, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1604$7, -1, (void*)vr$607, -1, 0 );
							HWRITEASM64( &TMP$1604$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1604$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1241;
						label$1248:;
						if( TEMPODTYPE$1 == 5 ) goto label$1252;
						label$1253:;
						if( TEMPODTYPE$1 != 6 ) goto label$1251;
						label$1252:;
						{
							FBSTRING TMP$1605$7;
							FBSTRING TMP$1606$7;
							FBSTRING TMP$1607$7;
							FBSTRING TMP$1608$7;
							__builtin_memset( &TMP$1608$7, 0, 12 );
							__builtin_memset( &TMP$1605$7, 0, 12 );
							FBSTRING* vr$618 = fb_StrConcat( &TMP$1605$7, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1606$7, 0, 12 );
							FBSTRING* vr$621 = fb_StrConcat( &TMP$1606$7, (void*)vr$618, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1607$7, 0, 12 );
							FBSTRING* vr$624 = fb_StrConcat( &TMP$1607$7, (void*)vr$621, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1608$7, -1, (void*)vr$624, -1, 0 );
							HWRITEASM64( &TMP$1608$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1608$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1241;
						label$1251:;
						if( TEMPODTYPE$1 == 2 ) goto label$1255;
						label$1256:;
						if( TEMPODTYPE$1 == 3 ) goto label$1255;
						label$1257:;
						if( TEMPODTYPE$1 == 1 ) goto label$1255;
						label$1258:;
						if( TEMPODTYPE$1 != 4 ) goto label$1254;
						label$1255:;
						{
							FBSTRING TMP$1609$7;
							FBSTRING TMP$1610$7;
							FBSTRING TMP$1611$7;
							FBSTRING TMP$1612$7;
							__builtin_memset( &TMP$1612$7, 0, 12 );
							__builtin_memset( &TMP$1609$7, 0, 12 );
							FBSTRING* vr$635 = fb_StrConcat( &TMP$1609$7, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1610$7, 0, 12 );
							FBSTRING* vr$638 = fb_StrConcat( &TMP$1610$7, (void*)vr$635, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1611$7, 0, 12 );
							FBSTRING* vr$641 = fb_StrConcat( &TMP$1611$7, (void*)vr$638, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1612$7, -1, (void*)vr$641, -1, 0 );
							HWRITEASM64( &TMP$1612$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1612$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1241;
						label$1254:;
						{
							FBSTRING TMP$1613$7;
							FBSTRING TMP$1617$7;
							FBSTRING TMP$1618$7;
							FBSTRING TMP$1619$7;
							__builtin_memset( &TMP$1613$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1613$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1613$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1613$7 );
							__builtin_memset( &TMP$1618$7, 0, 12 );
							FBSTRING* vr$653 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
							__builtin_memset( &TMP$1617$7, 0, 12 );
							FBSTRING* vr$656 = fb_StrConcat( &TMP$1617$7, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$653, -1 );
							fb_StrAssign( (void*)&TMP$1618$7, -1, (void*)vr$656, -1, 0 );
							HWRITEASM64( &TMP$1618$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1618$7 );
							__builtin_memset( &TMP$1619$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1619$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1619$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1619$7 );
						}
						label$1259:;
						label$1241:;
					}
				}
				label$1239:;
			}
			label$1238:;
			label$1237:;
		}
		label$1233:;
	}
	label$1204:;
	if( *(int32*)V2$1 != 0 ) goto label$1261;
	{
		if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) >= 2147483648ll)) == 0 ) goto label$1263;
		{
			if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$1265;
			{
				FBSTRING TMP$1620$4;
				FBSTRING TMP$1621$4;
				__builtin_memset( &TMP$1621$4, 0, 12 );
				FBSTRING* vr$677 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1620$4, 0, 12 );
				FBSTRING* vr$680 = fb_StrConcat( &TMP$1620$4, (void*)"mov rax, ", 10, (void*)vr$677, -1 );
				fb_StrAssign( (void*)&TMP$1621$4, -1, (void*)vr$680, -1, 0 );
				HWRITEASM64( &TMP$1621$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1621$4 );
			}
			goto label$1264;
			label$1265:;
			{
				FBSTRING TMP$1623$4;
				FBSTRING TMP$1624$4;
				__builtin_memset( &TMP$1624$4, 0, 12 );
				FBSTRING* vr$686 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1623$4, 0, 12 );
				FBSTRING* vr$689 = fb_StrConcat( &TMP$1623$4, (void*)"mov eax, ", 10, (void*)vr$686, -1 );
				fb_StrAssign( (void*)&TMP$1624$4, -1, (void*)vr$689, -1, 0 );
				HWRITEASM64( &TMP$1624$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1624$4 );
			}
			label$1264:;
			fb_StrAssign( (void*)&OP2$1, -1, (void*)"rax", 4, 0 );
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1268;
				label$1269:;
				if( TEMPODTYPE$1 == 9 ) goto label$1268;
				label$1270:;
				if( TEMPODTYPE$1 == 13 ) goto label$1268;
				label$1271:;
				if( TEMPODTYPE$1 == 14 ) goto label$1268;
				label$1272:;
				if( TEMPODTYPE$1 == 10 ) goto label$1268;
				label$1273:;
				if( TEMPODTYPE$1 != 16 ) goto label$1267;
				label$1268:;
				{
				}
				goto label$1266;
				label$1267:;
				if( TEMPODTYPE$1 == 11 ) goto label$1275;
				label$1276:;
				if( TEMPODTYPE$1 == 12 ) goto label$1275;
				label$1277:;
				if( TEMPODTYPE$1 != 15 ) goto label$1274;
				label$1275:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"eax", 4, 0 );
				}
				goto label$1266;
				label$1274:;
				if( TEMPODTYPE$1 == 5 ) goto label$1279;
				label$1280:;
				if( TEMPODTYPE$1 != 6 ) goto label$1278;
				label$1279:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"ax", 3, 0 );
				}
				goto label$1266;
				label$1278:;
				if( TEMPODTYPE$1 == 2 ) goto label$1282;
				label$1283:;
				if( TEMPODTYPE$1 == 3 ) goto label$1282;
				label$1284:;
				if( TEMPODTYPE$1 == 1 ) goto label$1282;
				label$1285:;
				if( TEMPODTYPE$1 != 4 ) goto label$1281;
				label$1282:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"al", 3, 0 );
				}
				goto label$1266;
				label$1281:;
				{
					FBSTRING TMP$1625$5;
					FBSTRING TMP$1629$5;
					FBSTRING TMP$1630$5;
					FBSTRING TMP$1631$5;
					__builtin_memset( &TMP$1625$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1625$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1625$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1625$5 );
					__builtin_memset( &TMP$1630$5, 0, 12 );
					FBSTRING* vr$703 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1629$5, 0, 12 );
					FBSTRING* vr$706 = fb_StrConcat( &TMP$1629$5, (void*)"FOUND AN ERROR : BOP datatype not handled 0100 = ", 50, (void*)vr$703, -1 );
					fb_StrAssign( (void*)&TMP$1630$5, -1, (void*)vr$706, -1, 0 );
					HWRITEASM64( &TMP$1630$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1630$5 );
					__builtin_memset( &TMP$1631$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1631$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1631$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1631$5 );
				}
				label$1286:;
				label$1266:;
			}
		}
		label$1263:;
		label$1262:;
	}
	label$1261:;
	label$1260:;
	{
		uint32 TMP$1632$2;
		TMP$1632$2 = (uint32)OP$1;
		goto label$1288;
		label$1289:;
		{
			int32 vr$715 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$715 != 0 ) goto label$1291;
			{
				FBSTRING TMP$1634$4;
				FBSTRING TMP$1635$4;
				__builtin_memset( &TMP$1635$4, 0, 12 );
				__builtin_memset( &TMP$1634$4, 0, 12 );
				FBSTRING* vr$720 = fb_StrConcat( &TMP$1634$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1635$4, -1, (void*)vr$720, -1, 0 );
				HWRITEASM64( &TMP$1635$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1635$4 );
			}
			goto label$1290;
			label$1291:;
			int32 vr$725 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$725 != 0 ) goto label$1292;
			{
				FBSTRING TMP$1637$4;
				FBSTRING TMP$1638$4;
				__builtin_memset( &TMP$1638$4, 0, 12 );
				__builtin_memset( &TMP$1637$4, 0, 12 );
				FBSTRING* vr$730 = fb_StrConcat( &TMP$1637$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1638$4, -1, (void*)vr$730, -1, 0 );
				HWRITEASM64( &TMP$1638$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1638$4 );
			}
			goto label$1290;
			label$1292:;
			{
				FBSTRING TMP$1639$4;
				FBSTRING TMP$1640$4;
				FBSTRING TMP$1641$4;
				FBSTRING TMP$1642$4;
				__builtin_memset( &TMP$1642$4, 0, 12 );
				__builtin_memset( &TMP$1639$4, 0, 12 );
				FBSTRING* vr$739 = fb_StrConcat( &TMP$1639$4, (void*)"add ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1640$4, 0, 12 );
				FBSTRING* vr$742 = fb_StrConcat( &TMP$1640$4, (void*)vr$739, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1641$4, 0, 12 );
				FBSTRING* vr$745 = fb_StrConcat( &TMP$1641$4, (void*)vr$742, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1642$4, -1, (void*)vr$745, -1, 0 );
				HWRITEASM64( &TMP$1642$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1642$4 );
			}
			label$1290:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1294;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1294:;
			}
		}
		goto label$1287;
		label$1295:;
		{
			FBSTRING TMP$1644$3;
			FBSTRING TMP$1645$3;
			FBSTRING TMP$1646$3;
			FBSTRING TMP$1647$3;
			__builtin_memset( &TMP$1647$3, 0, 12 );
			__builtin_memset( &TMP$1644$3, 0, 12 );
			FBSTRING* vr$754 = fb_StrConcat( &TMP$1644$3, (void*)"and ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1645$3, 0, 12 );
			FBSTRING* vr$757 = fb_StrConcat( &TMP$1645$3, (void*)vr$754, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1646$3, 0, 12 );
			FBSTRING* vr$760 = fb_StrConcat( &TMP$1646$3, (void*)vr$757, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1647$3, -1, (void*)vr$760, -1, 0 );
			HWRITEASM64( &TMP$1647$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1647$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1297;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1297:;
			}
		}
		goto label$1287;
		label$1298:;
		{
			FBSTRING TMP$1648$3;
			FBSTRING TMP$1649$3;
			FBSTRING TMP$1650$3;
			FBSTRING TMP$1651$3;
			__builtin_memset( &TMP$1651$3, 0, 12 );
			__builtin_memset( &TMP$1648$3, 0, 12 );
			FBSTRING* vr$769 = fb_StrConcat( &TMP$1648$3, (void*)"or ", 4, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1649$3, 0, 12 );
			FBSTRING* vr$772 = fb_StrConcat( &TMP$1649$3, (void*)vr$769, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1650$3, 0, 12 );
			FBSTRING* vr$775 = fb_StrConcat( &TMP$1650$3, (void*)vr$772, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1651$3, -1, (void*)vr$775, -1, 0 );
			HWRITEASM64( &TMP$1651$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1651$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1300;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1300:;
			}
		}
		goto label$1287;
		label$1301:;
		{
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1303;
			{
				FBSTRING TMP$1679$4;
				FBSTRING TMP$1680$4;
				FBSTRING TMP$1681$4;
				FBSTRING TMP$1682$4;
				if( TEMPODTYPE$1 != 1 ) goto label$1305;
				{
					FBSTRING TMP$1653$5;
					FBSTRING TMP$1654$5;
					FBSTRING TMP$1655$5;
					__builtin_memset( &TMP$1655$5, 0, 12 );
					__builtin_memset( &TMP$1653$5, 0, 12 );
					FBSTRING* vr$783 = fb_StrConcat( &TMP$1653$5, (void*)"xor ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1654$5, 0, 12 );
					FBSTRING* vr$786 = fb_StrConcat( &TMP$1654$5, (void*)vr$783, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1655$5, -1, (void*)vr$786, -1, 0 );
					HWRITEASM64( &TMP$1655$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1655$5 );
				}
				goto label$1304;
				label$1305:;
				{
					FBSTRING TMP$1657$5;
					FBSTRING TMP$1658$5;
					__builtin_memset( &TMP$1658$5, 0, 12 );
					__builtin_memset( &TMP$1657$5, 0, 12 );
					FBSTRING* vr$794 = fb_StrConcat( &TMP$1657$5, (void*)"not ", 5, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1658$5, -1, (void*)vr$794, -1, 0 );
					HWRITEASM64( &TMP$1658$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1658$5 );
				}
				label$1304:;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1308;
					label$1309:;
					if( TEMPODTYPE$1 == 9 ) goto label$1308;
					label$1310:;
					if( TEMPODTYPE$1 == 13 ) goto label$1308;
					label$1311:;
					if( TEMPODTYPE$1 == 14 ) goto label$1308;
					label$1312:;
					if( TEMPODTYPE$1 != 10 ) goto label$1307;
					label$1308:;
					{
						FBSTRING TMP$1659$6;
						FBSTRING TMP$1660$6;
						FBSTRING TMP$1661$6;
						FBSTRING TMP$1662$6;
						__builtin_memset( &TMP$1662$6, 0, 12 );
						__builtin_memset( &TMP$1659$6, 0, 12 );
						FBSTRING* vr$802 = fb_StrConcat( &TMP$1659$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1660$6, 0, 12 );
						FBSTRING* vr$805 = fb_StrConcat( &TMP$1660$6, (void*)vr$802, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1661$6, 0, 12 );
						FBSTRING* vr$808 = fb_StrConcat( &TMP$1661$6, (void*)vr$805, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1662$6, -1, (void*)vr$808, -1, 0 );
						HWRITEASM64( &TMP$1662$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1662$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1306;
					label$1307:;
					if( TEMPODTYPE$1 == 11 ) goto label$1314;
					label$1315:;
					if( TEMPODTYPE$1 != 12 ) goto label$1313;
					label$1314:;
					{
						FBSTRING TMP$1663$6;
						FBSTRING TMP$1664$6;
						FBSTRING TMP$1665$6;
						FBSTRING TMP$1666$6;
						__builtin_memset( &TMP$1666$6, 0, 12 );
						__builtin_memset( &TMP$1663$6, 0, 12 );
						FBSTRING* vr$817 = fb_StrConcat( &TMP$1663$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1664$6, 0, 12 );
						FBSTRING* vr$820 = fb_StrConcat( &TMP$1664$6, (void*)vr$817, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1665$6, 0, 12 );
						FBSTRING* vr$823 = fb_StrConcat( &TMP$1665$6, (void*)vr$820, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1666$6, -1, (void*)vr$823, -1, 0 );
						HWRITEASM64( &TMP$1666$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1666$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1306;
					label$1313:;
					if( TEMPODTYPE$1 == 5 ) goto label$1317;
					label$1318:;
					if( TEMPODTYPE$1 != 6 ) goto label$1316;
					label$1317:;
					{
						FBSTRING TMP$1667$6;
						FBSTRING TMP$1668$6;
						FBSTRING TMP$1669$6;
						FBSTRING TMP$1670$6;
						__builtin_memset( &TMP$1670$6, 0, 12 );
						__builtin_memset( &TMP$1667$6, 0, 12 );
						FBSTRING* vr$832 = fb_StrConcat( &TMP$1667$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1668$6, 0, 12 );
						FBSTRING* vr$835 = fb_StrConcat( &TMP$1668$6, (void*)vr$832, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1669$6, 0, 12 );
						FBSTRING* vr$838 = fb_StrConcat( &TMP$1669$6, (void*)vr$835, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1670$6, -1, (void*)vr$838, -1, 0 );
						HWRITEASM64( &TMP$1670$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1670$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1306;
					label$1316:;
					if( TEMPODTYPE$1 == 2 ) goto label$1320;
					label$1321:;
					if( TEMPODTYPE$1 == 3 ) goto label$1320;
					label$1322:;
					if( TEMPODTYPE$1 == 1 ) goto label$1320;
					label$1323:;
					if( TEMPODTYPE$1 != 4 ) goto label$1319;
					label$1320:;
					{
						FBSTRING TMP$1671$6;
						FBSTRING TMP$1672$6;
						FBSTRING TMP$1673$6;
						FBSTRING TMP$1674$6;
						__builtin_memset( &TMP$1674$6, 0, 12 );
						__builtin_memset( &TMP$1671$6, 0, 12 );
						FBSTRING* vr$847 = fb_StrConcat( &TMP$1671$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1672$6, 0, 12 );
						FBSTRING* vr$850 = fb_StrConcat( &TMP$1672$6, (void*)vr$847, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1673$6, 0, 12 );
						FBSTRING* vr$853 = fb_StrConcat( &TMP$1673$6, (void*)vr$850, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1674$6, -1, (void*)vr$853, -1, 0 );
						HWRITEASM64( &TMP$1674$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1674$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1306;
					label$1319:;
					{
						FBSTRING TMP$1675$6;
						FBSTRING TMP$1676$6;
						FBSTRING TMP$1677$6;
						FBSTRING TMP$1678$6;
						__builtin_memset( &TMP$1675$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1675$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1675$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1675$6 );
						__builtin_memset( &TMP$1677$6, 0, 12 );
						FBSTRING* vr$864 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1676$6, 0, 12 );
						FBSTRING* vr$867 = fb_StrConcat( &TMP$1676$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$864, -1 );
						fb_StrAssign( (void*)&TMP$1677$6, -1, (void*)vr$867, -1, 0 );
						HWRITEASM64( &TMP$1677$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1677$6 );
						__builtin_memset( &TMP$1678$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1678$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1678$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1678$6 );
					}
					label$1324:;
					label$1306:;
				}
				__builtin_memset( &TMP$1682$4, 0, 12 );
				__builtin_memset( &TMP$1679$4, 0, 12 );
				FBSTRING* vr$880 = fb_StrConcat( &TMP$1679$4, (void*)"or ", 4, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1680$4, 0, 12 );
				FBSTRING* vr$883 = fb_StrConcat( &TMP$1680$4, (void*)vr$880, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1681$4, 0, 12 );
				FBSTRING* vr$886 = fb_StrConcat( &TMP$1681$4, (void*)vr$883, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1682$4, -1, (void*)vr$886, -1, 0 );
				HWRITEASM64( &TMP$1682$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1682$4 );
			}
			goto label$1302;
			label$1303:;
			{
				FBSTRING TMP$1708$4;
				FBSTRING TMP$1709$4;
				FBSTRING TMP$1710$4;
				FBSTRING TMP$1711$4;
				FBSTRING TMP$1712$4;
				FBSTRING TMP$1713$4;
				FBSTRING TMP$1714$4;
				FBSTRING TMP$1715$4;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1327;
					label$1328:;
					if( TEMPODTYPE$1 == 9 ) goto label$1327;
					label$1329:;
					if( TEMPODTYPE$1 == 13 ) goto label$1327;
					label$1330:;
					if( TEMPODTYPE$1 == 14 ) goto label$1327;
					label$1331:;
					if( TEMPODTYPE$1 != 10 ) goto label$1326;
					label$1327:;
					{
						FBSTRING TMP$1683$6;
						FBSTRING TMP$1684$6;
						FBSTRING TMP$1685$6;
						FBSTRING TMP$1686$6;
						__builtin_memset( &TMP$1686$6, 0, 12 );
						__builtin_memset( &TMP$1683$6, 0, 12 );
						FBSTRING* vr$894 = fb_StrConcat( &TMP$1683$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1684$6, 0, 12 );
						FBSTRING* vr$897 = fb_StrConcat( &TMP$1684$6, (void*)vr$894, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1685$6, 0, 12 );
						FBSTRING* vr$900 = fb_StrConcat( &TMP$1685$6, (void*)vr$897, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1686$6, -1, (void*)vr$900, -1, 0 );
						HWRITEASM64( &TMP$1686$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1686$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1325;
					label$1326:;
					if( TEMPODTYPE$1 == 11 ) goto label$1333;
					label$1334:;
					if( TEMPODTYPE$1 != 12 ) goto label$1332;
					label$1333:;
					{
						FBSTRING TMP$1687$6;
						FBSTRING TMP$1688$6;
						FBSTRING TMP$1689$6;
						FBSTRING TMP$1690$6;
						__builtin_memset( &TMP$1690$6, 0, 12 );
						__builtin_memset( &TMP$1687$6, 0, 12 );
						FBSTRING* vr$909 = fb_StrConcat( &TMP$1687$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1688$6, 0, 12 );
						FBSTRING* vr$912 = fb_StrConcat( &TMP$1688$6, (void*)vr$909, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1689$6, 0, 12 );
						FBSTRING* vr$915 = fb_StrConcat( &TMP$1689$6, (void*)vr$912, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1690$6, -1, (void*)vr$915, -1, 0 );
						HWRITEASM64( &TMP$1690$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1690$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1325;
					label$1332:;
					if( TEMPODTYPE$1 == 5 ) goto label$1336;
					label$1337:;
					if( TEMPODTYPE$1 != 6 ) goto label$1335;
					label$1336:;
					{
						FBSTRING TMP$1691$6;
						FBSTRING TMP$1692$6;
						FBSTRING TMP$1693$6;
						FBSTRING TMP$1694$6;
						__builtin_memset( &TMP$1694$6, 0, 12 );
						__builtin_memset( &TMP$1691$6, 0, 12 );
						FBSTRING* vr$924 = fb_StrConcat( &TMP$1691$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1692$6, 0, 12 );
						FBSTRING* vr$927 = fb_StrConcat( &TMP$1692$6, (void*)vr$924, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1693$6, 0, 12 );
						FBSTRING* vr$930 = fb_StrConcat( &TMP$1693$6, (void*)vr$927, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1694$6, -1, (void*)vr$930, -1, 0 );
						HWRITEASM64( &TMP$1694$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1694$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1325;
					label$1335:;
					if( TEMPODTYPE$1 == 2 ) goto label$1339;
					label$1340:;
					if( TEMPODTYPE$1 == 3 ) goto label$1339;
					label$1341:;
					if( TEMPODTYPE$1 == 1 ) goto label$1339;
					label$1342:;
					if( TEMPODTYPE$1 != 4 ) goto label$1338;
					label$1339:;
					{
						FBSTRING TMP$1695$6;
						FBSTRING TMP$1696$6;
						FBSTRING TMP$1697$6;
						FBSTRING TMP$1698$6;
						__builtin_memset( &TMP$1698$6, 0, 12 );
						__builtin_memset( &TMP$1695$6, 0, 12 );
						FBSTRING* vr$939 = fb_StrConcat( &TMP$1695$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1696$6, 0, 12 );
						FBSTRING* vr$942 = fb_StrConcat( &TMP$1696$6, (void*)vr$939, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1697$6, 0, 12 );
						FBSTRING* vr$945 = fb_StrConcat( &TMP$1697$6, (void*)vr$942, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1698$6, -1, (void*)vr$945, -1, 0 );
						HWRITEASM64( &TMP$1698$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1698$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1325;
					label$1338:;
					{
						FBSTRING TMP$1699$6;
						FBSTRING TMP$1700$6;
						FBSTRING TMP$1701$6;
						FBSTRING TMP$1702$6;
						__builtin_memset( &TMP$1699$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1699$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1699$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1699$6 );
						__builtin_memset( &TMP$1701$6, 0, 12 );
						FBSTRING* vr$956 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1700$6, 0, 12 );
						FBSTRING* vr$959 = fb_StrConcat( &TMP$1700$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$956, -1 );
						fb_StrAssign( (void*)&TMP$1701$6, -1, (void*)vr$959, -1, 0 );
						HWRITEASM64( &TMP$1701$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1701$6 );
						__builtin_memset( &TMP$1702$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1702$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1702$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1702$6 );
					}
					label$1343:;
					label$1325:;
				}
				if( TEMPODTYPE$1 != 1 ) goto label$1345;
				{
					FBSTRING TMP$1703$5;
					FBSTRING TMP$1704$5;
					FBSTRING TMP$1705$5;
					__builtin_memset( &TMP$1705$5, 0, 12 );
					__builtin_memset( &TMP$1703$5, 0, 12 );
					FBSTRING* vr$971 = fb_StrConcat( &TMP$1703$5, (void*)"xor ", 5, (void*)&OP1BIS$1, -1 );
					__builtin_memset( &TMP$1704$5, 0, 12 );
					FBSTRING* vr$974 = fb_StrConcat( &TMP$1704$5, (void*)vr$971, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1705$5, -1, (void*)vr$974, -1, 0 );
					HWRITEASM64( &TMP$1705$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1705$5 );
				}
				goto label$1344;
				label$1345:;
				{
					FBSTRING TMP$1706$5;
					FBSTRING TMP$1707$5;
					__builtin_memset( &TMP$1707$5, 0, 12 );
					__builtin_memset( &TMP$1706$5, 0, 12 );
					FBSTRING* vr$982 = fb_StrConcat( &TMP$1706$5, (void*)"not ", 5, (void*)&OP1BIS$1, -1 );
					fb_StrAssign( (void*)&TMP$1707$5, -1, (void*)vr$982, -1, 0 );
					HWRITEASM64( &TMP$1707$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1707$5 );
				}
				label$1344:;
				__builtin_memset( &TMP$1711$4, 0, 12 );
				__builtin_memset( &TMP$1708$4, 0, 12 );
				FBSTRING* vr$991 = fb_StrConcat( &TMP$1708$4, (void*)"or ", 4, (void*)&OP1BIS$1, -1 );
				__builtin_memset( &TMP$1709$4, 0, 12 );
				FBSTRING* vr$994 = fb_StrConcat( &TMP$1709$4, (void*)vr$991, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1710$4, 0, 12 );
				FBSTRING* vr$997 = fb_StrConcat( &TMP$1710$4, (void*)vr$994, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1711$4, -1, (void*)vr$997, -1, 0 );
				HWRITEASM64( &TMP$1711$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1711$4 );
				__builtin_memset( &TMP$1715$4, 0, 12 );
				__builtin_memset( &TMP$1712$4, 0, 12 );
				FBSTRING* vr$1006 = fb_StrConcat( &TMP$1712$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1713$4, 0, 12 );
				FBSTRING* vr$1009 = fb_StrConcat( &TMP$1713$4, (void*)vr$1006, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1714$4, 0, 12 );
				FBSTRING* vr$1012 = fb_StrConcat( &TMP$1714$4, (void*)vr$1009, -1, (void*)&OP1BIS$1, -1 );
				fb_StrAssign( (void*)&TMP$1715$4, -1, (void*)vr$1012, -1, 0 );
				HWRITEASM64( &TMP$1715$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1715$4 );
			}
			label$1302:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1347;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1347:;
			}
		}
		goto label$1287;
		label$1348:;
		{
			FBSTRING TMP$1716$3;
			FBSTRING TMP$1717$3;
			FBSTRING TMP$1718$3;
			FBSTRING TMP$1719$3;
			__builtin_memset( &TMP$1719$3, 0, 12 );
			__builtin_memset( &TMP$1716$3, 0, 12 );
			FBSTRING* vr$1021 = fb_StrConcat( &TMP$1716$3, (void*)"xor ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1717$3, 0, 12 );
			FBSTRING* vr$1024 = fb_StrConcat( &TMP$1717$3, (void*)vr$1021, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1718$3, 0, 12 );
			FBSTRING* vr$1027 = fb_StrConcat( &TMP$1718$3, (void*)vr$1024, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1719$3, -1, (void*)vr$1027, -1, 0 );
			HWRITEASM64( &TMP$1719$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1719$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1350;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1350:;
			}
		}
		goto label$1287;
		label$1351:;
		{
			FBSTRING TMP$1740$3;
			FBSTRING TMP$1741$3;
			FBSTRING TMP$1742$3;
			FBSTRING TMP$1743$3;
			FBSTRING TMP$1749$3;
			FBSTRING TMP$1750$3;
			FBSTRING TMP$1751$3;
			FBSTRING TMP$1752$3;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1354;
				label$1355:;
				if( TEMPODTYPE$1 == 9 ) goto label$1354;
				label$1356:;
				if( TEMPODTYPE$1 == 13 ) goto label$1354;
				label$1357:;
				if( TEMPODTYPE$1 == 14 ) goto label$1354;
				label$1358:;
				if( TEMPODTYPE$1 != 10 ) goto label$1353;
				label$1354:;
				{
					FBSTRING TMP$1720$5;
					FBSTRING TMP$1721$5;
					FBSTRING TMP$1722$5;
					FBSTRING TMP$1723$5;
					__builtin_memset( &TMP$1723$5, 0, 12 );
					__builtin_memset( &TMP$1720$5, 0, 12 );
					FBSTRING* vr$1035 = fb_StrConcat( &TMP$1720$5, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
					__builtin_memset( &TMP$1721$5, 0, 12 );
					FBSTRING* vr$1038 = fb_StrConcat( &TMP$1721$5, (void*)vr$1035, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1722$5, 0, 12 );
					FBSTRING* vr$1041 = fb_StrConcat( &TMP$1722$5, (void*)vr$1038, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1723$5, -1, (void*)vr$1041, -1, 0 );
					HWRITEASM64( &TMP$1723$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1723$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
				}
				goto label$1352;
				label$1353:;
				if( TEMPODTYPE$1 == 11 ) goto label$1360;
				label$1361:;
				if( TEMPODTYPE$1 != 12 ) goto label$1359;
				label$1360:;
				{
					FBSTRING TMP$1724$5;
					FBSTRING TMP$1725$5;
					FBSTRING TMP$1726$5;
					FBSTRING TMP$1727$5;
					__builtin_memset( &TMP$1727$5, 0, 12 );
					__builtin_memset( &TMP$1724$5, 0, 12 );
					FBSTRING* vr$1050 = fb_StrConcat( &TMP$1724$5, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
					__builtin_memset( &TMP$1725$5, 0, 12 );
					FBSTRING* vr$1053 = fb_StrConcat( &TMP$1725$5, (void*)vr$1050, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1726$5, 0, 12 );
					FBSTRING* vr$1056 = fb_StrConcat( &TMP$1726$5, (void*)vr$1053, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1727$5, -1, (void*)vr$1056, -1, 0 );
					HWRITEASM64( &TMP$1727$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1727$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
				}
				goto label$1352;
				label$1359:;
				if( TEMPODTYPE$1 == 5 ) goto label$1363;
				label$1364:;
				if( TEMPODTYPE$1 != 6 ) goto label$1362;
				label$1363:;
				{
					FBSTRING TMP$1728$5;
					FBSTRING TMP$1729$5;
					FBSTRING TMP$1730$5;
					FBSTRING TMP$1731$5;
					__builtin_memset( &TMP$1731$5, 0, 12 );
					__builtin_memset( &TMP$1728$5, 0, 12 );
					FBSTRING* vr$1065 = fb_StrConcat( &TMP$1728$5, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
					__builtin_memset( &TMP$1729$5, 0, 12 );
					FBSTRING* vr$1068 = fb_StrConcat( &TMP$1729$5, (void*)vr$1065, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1730$5, 0, 12 );
					FBSTRING* vr$1071 = fb_StrConcat( &TMP$1730$5, (void*)vr$1068, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1731$5, -1, (void*)vr$1071, -1, 0 );
					HWRITEASM64( &TMP$1731$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1731$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
				}
				goto label$1352;
				label$1362:;
				if( TEMPODTYPE$1 == 2 ) goto label$1366;
				label$1367:;
				if( TEMPODTYPE$1 == 3 ) goto label$1366;
				label$1368:;
				if( TEMPODTYPE$1 == 1 ) goto label$1366;
				label$1369:;
				if( TEMPODTYPE$1 != 4 ) goto label$1365;
				label$1366:;
				{
					FBSTRING TMP$1732$5;
					FBSTRING TMP$1733$5;
					FBSTRING TMP$1734$5;
					FBSTRING TMP$1735$5;
					__builtin_memset( &TMP$1735$5, 0, 12 );
					__builtin_memset( &TMP$1732$5, 0, 12 );
					FBSTRING* vr$1080 = fb_StrConcat( &TMP$1732$5, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
					__builtin_memset( &TMP$1733$5, 0, 12 );
					FBSTRING* vr$1083 = fb_StrConcat( &TMP$1733$5, (void*)vr$1080, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1734$5, 0, 12 );
					FBSTRING* vr$1086 = fb_StrConcat( &TMP$1734$5, (void*)vr$1083, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1735$5, -1, (void*)vr$1086, -1, 0 );
					HWRITEASM64( &TMP$1735$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1735$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
				}
				goto label$1352;
				label$1365:;
				{
					FBSTRING TMP$1736$5;
					FBSTRING TMP$1737$5;
					FBSTRING TMP$1738$5;
					FBSTRING TMP$1739$5;
					__builtin_memset( &TMP$1736$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1736$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1736$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1736$5 );
					__builtin_memset( &TMP$1738$5, 0, 12 );
					FBSTRING* vr$1097 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1737$5, 0, 12 );
					FBSTRING* vr$1100 = fb_StrConcat( &TMP$1737$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$1097, -1 );
					fb_StrAssign( (void*)&TMP$1738$5, -1, (void*)vr$1100, -1, 0 );
					HWRITEASM64( &TMP$1738$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1738$5 );
					__builtin_memset( &TMP$1739$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1739$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1739$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1739$5 );
				}
				label$1370:;
				label$1352:;
			}
			__builtin_memset( &TMP$1743$3, 0, 12 );
			__builtin_memset( &TMP$1740$3, 0, 12 );
			FBSTRING* vr$1113 = fb_StrConcat( &TMP$1740$3, (void*)"xor ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$1741$3, 0, 12 );
			FBSTRING* vr$1116 = fb_StrConcat( &TMP$1741$3, (void*)vr$1113, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1742$3, 0, 12 );
			FBSTRING* vr$1119 = fb_StrConcat( &TMP$1742$3, (void*)vr$1116, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1743$3, -1, (void*)vr$1119, -1, 0 );
			HWRITEASM64( &TMP$1743$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1743$3 );
			if( TEMPODTYPE$1 != 1 ) goto label$1372;
			{
				FBSTRING TMP$1744$4;
				FBSTRING TMP$1745$4;
				FBSTRING TMP$1746$4;
				__builtin_memset( &TMP$1746$4, 0, 12 );
				__builtin_memset( &TMP$1744$4, 0, 12 );
				FBSTRING* vr$1127 = fb_StrConcat( &TMP$1744$4, (void*)"xor ", 5, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$1745$4, 0, 12 );
				FBSTRING* vr$1130 = fb_StrConcat( &TMP$1745$4, (void*)vr$1127, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$1746$4, -1, (void*)vr$1130, -1, 0 );
				HWRITEASM64( &TMP$1746$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1746$4 );
			}
			goto label$1371;
			label$1372:;
			{
				FBSTRING TMP$1747$4;
				FBSTRING TMP$1748$4;
				__builtin_memset( &TMP$1748$4, 0, 12 );
				__builtin_memset( &TMP$1747$4, 0, 12 );
				FBSTRING* vr$1138 = fb_StrConcat( &TMP$1747$4, (void*)"not ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1748$4, -1, (void*)vr$1138, -1, 0 );
				HWRITEASM64( &TMP$1748$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1748$4 );
			}
			label$1371:;
			__builtin_memset( &TMP$1752$3, 0, 12 );
			__builtin_memset( &TMP$1749$3, 0, 12 );
			FBSTRING* vr$1147 = fb_StrConcat( &TMP$1749$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1750$3, 0, 12 );
			FBSTRING* vr$1150 = fb_StrConcat( &TMP$1750$3, (void*)vr$1147, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1751$3, 0, 12 );
			FBSTRING* vr$1153 = fb_StrConcat( &TMP$1751$3, (void*)vr$1150, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1752$3, -1, (void*)vr$1153, -1, 0 );
			HWRITEASM64( &TMP$1752$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1752$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1374;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1374:;
			}
		}
		goto label$1287;
		label$1375:;
		{
			int32 vr$1158 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$1158 != 0 ) goto label$1377;
			{
				FBSTRING TMP$1753$4;
				FBSTRING TMP$1754$4;
				__builtin_memset( &TMP$1754$4, 0, 12 );
				__builtin_memset( &TMP$1753$4, 0, 12 );
				FBSTRING* vr$1163 = fb_StrConcat( &TMP$1753$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1754$4, -1, (void*)vr$1163, -1, 0 );
				HWRITEASM64( &TMP$1754$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1754$4 );
			}
			goto label$1376;
			label$1377:;
			int32 vr$1168 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$1168 != 0 ) goto label$1378;
			{
				FBSTRING TMP$1755$4;
				FBSTRING TMP$1756$4;
				__builtin_memset( &TMP$1756$4, 0, 12 );
				__builtin_memset( &TMP$1755$4, 0, 12 );
				FBSTRING* vr$1173 = fb_StrConcat( &TMP$1755$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1756$4, -1, (void*)vr$1173, -1, 0 );
				HWRITEASM64( &TMP$1756$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1756$4 );
			}
			goto label$1376;
			label$1378:;
			{
				FBSTRING TMP$1758$4;
				FBSTRING TMP$1759$4;
				FBSTRING TMP$1760$4;
				FBSTRING TMP$1761$4;
				__builtin_memset( &TMP$1761$4, 0, 12 );
				__builtin_memset( &TMP$1758$4, 0, 12 );
				FBSTRING* vr$1182 = fb_StrConcat( &TMP$1758$4, (void*)"sub ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1759$4, 0, 12 );
				FBSTRING* vr$1185 = fb_StrConcat( &TMP$1759$4, (void*)vr$1182, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1760$4, 0, 12 );
				FBSTRING* vr$1188 = fb_StrConcat( &TMP$1760$4, (void*)vr$1185, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1761$4, -1, (void*)vr$1188, -1, 0 );
				HWRITEASM64( &TMP$1761$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1761$4 );
			}
			label$1376:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1380;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1380:;
			}
		}
		goto label$1287;
		label$1381:;
		{
			FBSTRING TMP$1763$3;
			FBSTRING TMP$1764$3;
			FBSTRING TMP$1765$3;
			FBSTRING TMP$1766$3;
			__builtin_memset( &TMP$1766$3, 0, 12 );
			__builtin_memset( &TMP$1763$3, 0, 12 );
			FBSTRING* vr$1197 = fb_StrConcat( &TMP$1763$3, (void*)"imul ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1764$3, 0, 12 );
			FBSTRING* vr$1200 = fb_StrConcat( &TMP$1764$3, (void*)vr$1197, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1765$3, 0, 12 );
			FBSTRING* vr$1203 = fb_StrConcat( &TMP$1765$3, (void*)vr$1200, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1766$3, -1, (void*)vr$1203, -1, 0 );
			HWRITEASM64( &TMP$1766$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1766$3 );
			int32 vr$1208 = fb_StrCompare( (void*)&OP1PREV$1, -1, (void*)"", 1 );
			if( vr$1208 == 0 ) goto label$1383;
			{
				FBSTRING TMP$1767$4;
				FBSTRING TMP$1768$4;
				FBSTRING TMP$1769$4;
				FBSTRING TMP$1770$4;
				__builtin_memset( &TMP$1770$4, 0, 12 );
				__builtin_memset( &TMP$1767$4, 0, 12 );
				FBSTRING* vr$1214 = fb_StrConcat( &TMP$1767$4, (void*)"mov ", 5, (void*)&OP1PREV$1, -1 );
				__builtin_memset( &TMP$1768$4, 0, 12 );
				FBSTRING* vr$1217 = fb_StrConcat( &TMP$1768$4, (void*)vr$1214, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1769$4, 0, 12 );
				FBSTRING* vr$1220 = fb_StrConcat( &TMP$1769$4, (void*)vr$1217, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1770$4, -1, (void*)vr$1220, -1, 0 );
				HWRITEASM64( &TMP$1770$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1770$4 );
				label$1383:;
			}
		}
		goto label$1287;
		label$1384:;
		{
			FBSTRING TMP$1782$3;
			FBSTRING TMP$1783$3;
			FBSTRING TMP$1784$3;
			FBSTRING TMP$1785$3;
			if( (((-(*(int32*)((uint8*)V1$1 + 4) == 9) | -(*(int32*)((uint8*)V1$1 + 4) == 14)) | -(*(int32*)((uint8*)V2$1 + 4) == 9)) | -(*(int32*)((uint8*)V2$1 + 4) == 14)) == 0 ) goto label$1386;
			{
				{
					uint32 TMP$1771$5;
					TMP$1771$5 = (uint32)OP$1;
					goto label$1388;
					label$1389:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"be", 3, 0 );
					}
					goto label$1387;
					label$1390:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"b", 2, 0 );
					}
					goto label$1387;
					label$1391:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1387;
					label$1392:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"nb", 3, 0 );
					}
					goto label$1387;
					label$1393:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"a", 2, 0 );
					}
					goto label$1387;
					label$1394:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1387;
					label$1388:;
					static const void* tmp$4071[6] = {
						&&label$1394,
						&&label$1393,
						&&label$1390,
						&&label$1391,
						&&label$1392,
						&&label$1389,
					};
					if( (TMP$1771$5 - 45u) > 5u ) goto label$1387;
					goto *tmp$4071[TMP$1771$5 - 45u];
					label$1387:;
				}
			}
			goto label$1385;
			label$1386:;
			{
				{
					uint32 TMP$1777$5;
					TMP$1777$5 = (uint32)OP$1;
					goto label$1396;
					label$1397:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"le", 3, 0 );
					}
					goto label$1395;
					label$1398:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"l", 2, 0 );
					}
					goto label$1395;
					label$1399:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1395;
					label$1400:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ge", 3, 0 );
					}
					goto label$1395;
					label$1401:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"g", 2, 0 );
					}
					goto label$1395;
					label$1402:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1395;
					label$1396:;
					static const void* tmp$4072[6] = {
						&&label$1402,
						&&label$1401,
						&&label$1398,
						&&label$1399,
						&&label$1400,
						&&label$1397,
					};
					if( (TMP$1777$5 - 45u) > 5u ) goto label$1395;
					goto *tmp$4072[TMP$1777$5 - 45u];
					label$1395:;
				}
			}
			label$1385:;
			__builtin_memset( &TMP$1785$3, 0, 12 );
			__builtin_memset( &TMP$1782$3, 0, 12 );
			FBSTRING* vr$1252 = fb_StrConcat( &TMP$1782$3, (void*)"cmp ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1783$3, 0, 12 );
			FBSTRING* vr$1255 = fb_StrConcat( &TMP$1783$3, (void*)vr$1252, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1784$3, 0, 12 );
			FBSTRING* vr$1258 = fb_StrConcat( &TMP$1784$3, (void*)vr$1255, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1785$3, -1, (void*)vr$1258, -1, 0 );
			HWRITEASM64( &TMP$1785$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1785$3 );
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1404;
			{
				FBSTRING TMP$1788$4;
				FBSTRING TMP$1789$4;
				FBSTRING TMP$1790$4;
				FBSTRING TMP$1792$4;
				FBSTRING TMP$1793$4;
				FBSTRING TMP$1794$4;
				__builtin_memset( &TMP$1790$4, 0, 12 );
				__builtin_memset( &TMP$1788$4, 0, 12 );
				FBSTRING* vr$1266 = fb_StrConcat( &TMP$1788$4, (void*)"set", 4, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1789$4, 0, 12 );
				FBSTRING* vr$1269 = fb_StrConcat( &TMP$1789$4, (void*)vr$1266, -1, (void*)" al", 4 );
				fb_StrAssign( (void*)&TMP$1790$4, -1, (void*)vr$1269, -1, 0 );
				HWRITEASM64( &TMP$1790$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1790$4 );
				__builtin_memset( &TMP$1794$4, 0, 12 );
				__builtin_memset( &TMP$1792$4, 0, 12 );
				FBSTRING* vr$1277 = fb_StrConcat( &TMP$1792$4, (void*)"movzx ", 7, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1793$4, 0, 12 );
				FBSTRING* vr$1280 = fb_StrConcat( &TMP$1793$4, (void*)vr$1277, -1, (void*)", al", 5 );
				fb_StrAssign( (void*)&TMP$1794$4, -1, (void*)vr$1280, -1, 0 );
				HWRITEASM64( &TMP$1794$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1794$4 );
				if( TEMPODTYPE$1 == 1 ) goto label$1406;
				{
					FBSTRING TMP$1796$5;
					FBSTRING TMP$1797$5;
					__builtin_memset( &TMP$1797$5, 0, 12 );
					__builtin_memset( &TMP$1796$5, 0, 12 );
					FBSTRING* vr$1288 = fb_StrConcat( &TMP$1796$5, (void*)"neg ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$1797$5, -1, (void*)vr$1288, -1, 0 );
					HWRITEASM64( &TMP$1797$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1797$5 );
				}
				label$1406:;
				label$1405:;
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1403;
			label$1404:;
			{
				FBSTRING TMP$1799$4;
				FBSTRING TMP$1800$4;
				FBSTRING TMP$1801$4;
				FBSTRING TMP$1802$4;
				__builtin_memset( &TMP$1802$4, 0, 12 );
				char* vr$1293 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1799$4, 0, 12 );
				FBSTRING* vr$1297 = fb_StrConcat( &TMP$1799$4, (void*)"j", 2, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1800$4, 0, 12 );
				FBSTRING* vr$1300 = fb_StrConcat( &TMP$1800$4, (void*)vr$1297, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$1801$4, 0, 12 );
				FBSTRING* vr$1303 = fb_StrConcat( &TMP$1801$4, (void*)vr$1300, -1, (void*)vr$1293, 0 );
				fb_StrAssign( (void*)&TMP$1802$4, -1, (void*)vr$1303, -1, 0 );
				HWRITEASM64( &TMP$1802$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1802$4 );
				REG_MARK( LABEL$1 );
			}
			label$1403:;
		}
		goto label$1287;
		label$1407:;
		{
			if( *(int32*)V2$1 == 0 ) goto label$1409;
			{
				int32 vr$1309 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 8), 0 );
				if( vr$1309 == 0 ) goto label$1411;
				{
					FBSTRING TMP$1808$5;
					FBSTRING TMP$1809$5;
					if( *(int32*)((int32)(int32*)REGHANDLE$ + 8) == -2 ) goto label$1413;
					{
						FBSTRING TMP$1803$6;
						FBSTRING TMP$1804$6;
						FBSTRING TMP$1805$6;
						FBSTRING TMP$1806$6;
						TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 8);
						REG_FINDFREE( TEMPO$1, -1 );
						*(int32*)((int32)(int32*)REGHANDLE$ + 8) = -2;
						__builtin_memset( &TMP$1806$6, 0, 12 );
						int32 vr$1311 = REG_FINDREAL( TEMPO$1 );
						__builtin_memset( &TMP$1803$6, 0, 12 );
						FBSTRING* vr$1315 = fb_StrConcat( &TMP$1803$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$1311 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1804$6, 0, 12 );
						FBSTRING* vr$1318 = fb_StrConcat( &TMP$1804$6, (void*)vr$1315, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1805$6, 0, 12 );
						FBSTRING* vr$1321 = fb_StrConcat( &TMP$1805$6, (void*)vr$1318, -1, *(void**)((int32)(char**)REGSTRQ$ + 8), 0 );
						fb_StrAssign( (void*)&TMP$1806$6, -1, (void*)vr$1321, -1, 0 );
						HWRITEASM64( &TMP$1806$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1806$6 );
						if( VRREG$1 != 2 ) goto label$1415;
						{
							int32 vr$1325 = REG_FINDREAL( TEMPO$1 );
							VRREG$1 = vr$1325;
							label$1415:;
						}
					}
					goto label$1412;
					label$1413:;
					{
						*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 4;
					}
					label$1412:;
					__builtin_memset( &TMP$1809$5, 0, 12 );
					__builtin_memset( &TMP$1808$5, 0, 12 );
					FBSTRING* vr$1331 = fb_StrConcat( &TMP$1808$5, (void*)"mov rcx, ", 10, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1809$5, -1, (void*)vr$1331, -1, 0 );
					HWRITEASM64( &TMP$1809$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1809$5 );
				}
				label$1411:;
				label$1410:;
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"cl", 3, 0 );
			}
			label$1409:;
			label$1408:;
			if( OP$1 != 41 ) goto label$1417;
			{
				FBSTRING TMP$1811$4;
				FBSTRING TMP$1812$4;
				FBSTRING TMP$1813$4;
				FBSTRING TMP$1814$4;
				__builtin_memset( &TMP$1814$4, 0, 12 );
				__builtin_memset( &TMP$1811$4, 0, 12 );
				FBSTRING* vr$1341 = fb_StrConcat( &TMP$1811$4, (void*)"shl ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1812$4, 0, 12 );
				FBSTRING* vr$1344 = fb_StrConcat( &TMP$1812$4, (void*)vr$1341, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1813$4, 0, 12 );
				FBSTRING* vr$1347 = fb_StrConcat( &TMP$1813$4, (void*)vr$1344, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1814$4, -1, (void*)vr$1347, -1, 0 );
				HWRITEASM64( &TMP$1814$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1814$4 );
			}
			goto label$1416;
			label$1417:;
			{
				if( (-(TEMPODTYPE$1 == 8) | -(TEMPODTYPE$1 == 13)) == 0 ) goto label$1419;
				{
					FBSTRING TMP$1816$5;
					FBSTRING TMP$1817$5;
					FBSTRING TMP$1818$5;
					FBSTRING TMP$1819$5;
					__builtin_memset( &TMP$1819$5, 0, 12 );
					__builtin_memset( &TMP$1816$5, 0, 12 );
					FBSTRING* vr$1359 = fb_StrConcat( &TMP$1816$5, (void*)"sar ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1817$5, 0, 12 );
					FBSTRING* vr$1362 = fb_StrConcat( &TMP$1817$5, (void*)vr$1359, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1818$5, 0, 12 );
					FBSTRING* vr$1365 = fb_StrConcat( &TMP$1818$5, (void*)vr$1362, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1819$5, -1, (void*)vr$1365, -1, 0 );
					HWRITEASM64( &TMP$1819$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1819$5 );
				}
				goto label$1418;
				label$1419:;
				{
					FBSTRING TMP$1820$5;
					FBSTRING TMP$1821$5;
					FBSTRING TMP$1822$5;
					FBSTRING TMP$1823$5;
					__builtin_memset( &TMP$1823$5, 0, 12 );
					__builtin_memset( &TMP$1820$5, 0, 12 );
					FBSTRING* vr$1374 = fb_StrConcat( &TMP$1820$5, (void*)"shr ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1821$5, 0, 12 );
					FBSTRING* vr$1377 = fb_StrConcat( &TMP$1821$5, (void*)vr$1374, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1822$5, 0, 12 );
					FBSTRING* vr$1380 = fb_StrConcat( &TMP$1822$5, (void*)vr$1377, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1823$5, -1, (void*)vr$1380, -1, 0 );
					HWRITEASM64( &TMP$1823$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1823$5 );
				}
				label$1418:;
			}
			label$1416:;
		}
		goto label$1287;
		label$1420:;
		{
			FBSTRING TMP$1832$3;
			FBSTRING TMP$1833$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1422;
			{
				int32 vr$1385 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
				if( vr$1385 == 0 ) goto label$1424;
				{
					FBSTRING TMP$1824$5;
					FBSTRING TMP$1825$5;
					FBSTRING TMP$1826$5;
					FBSTRING TMP$1827$5;
					TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1827$5, 0, 12 );
					int32 vr$1387 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1824$5, 0, 12 );
					FBSTRING* vr$1391 = fb_StrConcat( &TMP$1824$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$1387 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1825$5, 0, 12 );
					FBSTRING* vr$1394 = fb_StrConcat( &TMP$1825$5, (void*)vr$1391, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1826$5, 0, 12 );
					FBSTRING* vr$1397 = fb_StrConcat( &TMP$1826$5, (void*)vr$1394, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1827$5, -1, (void*)vr$1397, -1, 0 );
					HWRITEASM64( &TMP$1827$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1827$5 );
					int32 vr$1402 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
					if( vr$1402 != 0 ) goto label$1426;
					{
						int32 vr$1403 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$1403 << (2 & 31))), 0, 0 );
					}
					label$1426:;
					label$1425:;
					if( VRREG$1 != 3 ) goto label$1428;
					{
						int32 vr$1406 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1406;
						label$1428:;
					}
				}
				label$1424:;
				label$1423:;
			}
			goto label$1421;
			label$1422:;
			{
				*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
			}
			label$1421:;
			if( *(int32*)V2$1 != 0 ) goto label$1430;
			{
				FBSTRING TMP$1828$4;
				FBSTRING TMP$1829$4;
				FBSTRING TMP$1830$4;
				FBSTRING TMP$1831$4;
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -2 ) goto label$1432;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -3;
					label$1432:;
				}
				char* vr$1409 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1409, 0, 0 );
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -3 ) goto label$1434;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					label$1434:;
				}
				__builtin_memset( &TMP$1831$4, 0, 12 );
				__builtin_memset( &TMP$1828$4, 0, 12 );
				FBSTRING* vr$1416 = fb_StrConcat( &TMP$1828$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1829$4, 0, 12 );
				FBSTRING* vr$1419 = fb_StrConcat( &TMP$1829$4, (void*)vr$1416, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1830$4, 0, 12 );
				FBSTRING* vr$1422 = fb_StrConcat( &TMP$1830$4, (void*)vr$1419, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1831$4, -1, (void*)vr$1422, -1, 0 );
				HWRITEASM64( &TMP$1831$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1831$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1430:;
			label$1429:;
			__builtin_memset( &TMP$1833$3, 0, 12 );
			__builtin_memset( &TMP$1832$3, 0, 12 );
			FBSTRING* vr$1432 = fb_StrConcat( &TMP$1832$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1833$3, -1, (void*)vr$1432, -1, 0 );
			HWRITEASM64( &TMP$1833$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1833$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1436;
			{
				TEMPO2DTYPE$1 = 8;
				label$1436:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1438;
			{
				FBSTRING TMP$1835$4;
				FBSTRING TMP$1837$4;
				FBSTRING TMP$1838$4;
				__builtin_memset( &TMP$1835$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1835$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1835$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1835$4 );
				__builtin_memset( &TMP$1838$4, 0, 12 );
				__builtin_memset( &TMP$1837$4, 0, 12 );
				FBSTRING* vr$1453 = fb_StrConcat( &TMP$1837$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1838$4, -1, (void*)vr$1453, -1, 0 );
				HWRITEASM64( &TMP$1838$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1838$4 );
			}
			goto label$1437;
			label$1438:;
			{
				FBSTRING TMP$1840$4;
				FBSTRING TMP$1842$4;
				FBSTRING TMP$1843$4;
				__builtin_memset( &TMP$1840$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1840$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1840$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1840$4 );
				__builtin_memset( &TMP$1843$4, 0, 12 );
				__builtin_memset( &TMP$1842$4, 0, 12 );
				FBSTRING* vr$1465 = fb_StrConcat( &TMP$1842$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1843$4, -1, (void*)vr$1465, -1, 0 );
				HWRITEASM64( &TMP$1843$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1843$4 );
			}
			label$1437:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1440;
			{
				FBSTRING TMP$1844$4;
				FBSTRING TMP$1845$4;
				FBSTRING TMP$1846$4;
				__builtin_memset( &TMP$1846$4, 0, 12 );
				__builtin_memset( &TMP$1844$4, 0, 12 );
				FBSTRING* vr$1473 = fb_StrConcat( &TMP$1844$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1845$4, 0, 12 );
				FBSTRING* vr$1476 = fb_StrConcat( &TMP$1845$4, (void*)vr$1473, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1846$4, -1, (void*)vr$1476, -1, 0 );
				HWRITEASM64( &TMP$1846$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1846$4 );
			}
			goto label$1439;
			label$1440:;
			{
				FBSTRING TMP$1847$4;
				FBSTRING TMP$1848$4;
				FBSTRING TMP$1849$4;
				__builtin_memset( &TMP$1849$4, 0, 12 );
				__builtin_memset( &TMP$1847$4, 0, 12 );
				FBSTRING* vr$1484 = fb_StrConcat( &TMP$1847$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1848$4, 0, 12 );
				FBSTRING* vr$1487 = fb_StrConcat( &TMP$1848$4, (void*)vr$1484, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1849$4, -1, (void*)vr$1487, -1, 0 );
				HWRITEASM64( &TMP$1849$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1849$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1439:;
		}
		goto label$1287;
		label$1441:;
		{
			FBSTRING TMP$1858$3;
			FBSTRING TMP$1859$3;
			if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1443;
			{
				int32 vr$1492 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
				if( vr$1492 == 0 ) goto label$1445;
				{
					FBSTRING TMP$1850$5;
					FBSTRING TMP$1851$5;
					FBSTRING TMP$1852$5;
					FBSTRING TMP$1853$5;
					TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1853$5, 0, 12 );
					int32 vr$1494 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1850$5, 0, 12 );
					FBSTRING* vr$1498 = fb_StrConcat( &TMP$1850$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$1494 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1851$5, 0, 12 );
					FBSTRING* vr$1501 = fb_StrConcat( &TMP$1851$5, (void*)vr$1498, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1852$5, 0, 12 );
					FBSTRING* vr$1504 = fb_StrConcat( &TMP$1852$5, (void*)vr$1501, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1853$5, -1, (void*)vr$1504, -1, 0 );
					HWRITEASM64( &TMP$1853$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1853$5 );
					int32 vr$1509 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
					if( vr$1509 != 0 ) goto label$1447;
					{
						int32 vr$1510 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$1510 << (2 & 31))), 0, 0 );
					}
					label$1447:;
					label$1446:;
					if( VRREG$1 != 3 ) goto label$1449;
					{
						int32 vr$1513 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1513;
						label$1449:;
					}
				}
				label$1445:;
				label$1444:;
			}
			goto label$1442;
			label$1443:;
			{
				*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
			}
			label$1442:;
			if( *(int32*)V2$1 != 0 ) goto label$1451;
			{
				FBSTRING TMP$1854$4;
				FBSTRING TMP$1855$4;
				FBSTRING TMP$1856$4;
				FBSTRING TMP$1857$4;
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -2 ) goto label$1453;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -3;
					label$1453:;
				}
				char* vr$1516 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1516, 0, 0 );
				if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) != -3 ) goto label$1455;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
					label$1455:;
				}
				__builtin_memset( &TMP$1857$4, 0, 12 );
				__builtin_memset( &TMP$1854$4, 0, 12 );
				FBSTRING* vr$1523 = fb_StrConcat( &TMP$1854$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1855$4, 0, 12 );
				FBSTRING* vr$1526 = fb_StrConcat( &TMP$1855$4, (void*)vr$1523, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1856$4, 0, 12 );
				FBSTRING* vr$1529 = fb_StrConcat( &TMP$1856$4, (void*)vr$1526, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1857$4, -1, (void*)vr$1529, -1, 0 );
				HWRITEASM64( &TMP$1857$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1857$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1451:;
			label$1450:;
			__builtin_memset( &TMP$1859$3, 0, 12 );
			__builtin_memset( &TMP$1858$3, 0, 12 );
			FBSTRING* vr$1539 = fb_StrConcat( &TMP$1858$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1859$3, -1, (void*)vr$1539, -1, 0 );
			HWRITEASM64( &TMP$1859$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1859$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1457;
			{
				TEMPO2DTYPE$1 = 8;
				label$1457:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1459;
			{
				FBSTRING TMP$1860$4;
				FBSTRING TMP$1861$4;
				FBSTRING TMP$1862$4;
				__builtin_memset( &TMP$1860$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1860$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1860$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1860$4 );
				__builtin_memset( &TMP$1862$4, 0, 12 );
				__builtin_memset( &TMP$1861$4, 0, 12 );
				FBSTRING* vr$1560 = fb_StrConcat( &TMP$1861$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1862$4, -1, (void*)vr$1560, -1, 0 );
				HWRITEASM64( &TMP$1862$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1862$4 );
			}
			goto label$1458;
			label$1459:;
			{
				FBSTRING TMP$1863$4;
				FBSTRING TMP$1864$4;
				FBSTRING TMP$1865$4;
				__builtin_memset( &TMP$1863$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1863$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1863$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1863$4 );
				__builtin_memset( &TMP$1865$4, 0, 12 );
				__builtin_memset( &TMP$1864$4, 0, 12 );
				FBSTRING* vr$1572 = fb_StrConcat( &TMP$1864$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1865$4, -1, (void*)vr$1572, -1, 0 );
				HWRITEASM64( &TMP$1865$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1865$4 );
			}
			label$1458:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1461;
			{
				FBSTRING TMP$1867$4;
				FBSTRING TMP$1868$4;
				FBSTRING TMP$1869$4;
				__builtin_memset( &TMP$1869$4, 0, 12 );
				__builtin_memset( &TMP$1867$4, 0, 12 );
				FBSTRING* vr$1580 = fb_StrConcat( &TMP$1867$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1868$4, 0, 12 );
				FBSTRING* vr$1583 = fb_StrConcat( &TMP$1868$4, (void*)vr$1580, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1869$4, -1, (void*)vr$1583, -1, 0 );
				HWRITEASM64( &TMP$1869$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1869$4 );
			}
			goto label$1460;
			label$1461:;
			{
				FBSTRING TMP$1870$4;
				FBSTRING TMP$1871$4;
				FBSTRING TMP$1872$4;
				__builtin_memset( &TMP$1872$4, 0, 12 );
				__builtin_memset( &TMP$1870$4, 0, 12 );
				FBSTRING* vr$1591 = fb_StrConcat( &TMP$1870$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1871$4, 0, 12 );
				FBSTRING* vr$1594 = fb_StrConcat( &TMP$1871$4, (void*)vr$1591, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1872$4, -1, (void*)vr$1594, -1, 0 );
				HWRITEASM64( &TMP$1872$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1872$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1460:;
		}
		goto label$1287;
		label$1462:;
		{
			FBSTRING TMP$1873$3;
			FBSTRING TMP$1876$3;
			FBSTRING TMP$1877$3;
			FBSTRING TMP$1878$3;
			__builtin_memset( &TMP$1873$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1873$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1873$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1873$3 );
			__builtin_memset( &TMP$1877$3, 0, 12 );
			char* vr$1603 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1876$3, 0, 12 );
			FBSTRING* vr$1606 = fb_StrConcat( &TMP$1876$3, (void*)"FOUND AN ERROR : op int needs to be coded : ", 45, (void*)vr$1603, 0 );
			fb_StrAssign( (void*)&TMP$1877$3, -1, (void*)vr$1606, -1, 0 );
			HWRITEASM64( &TMP$1877$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1877$3 );
			__builtin_memset( &TMP$1878$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1878$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1878$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1878$3 );
		}
		goto label$1287;
		label$1288:;
		static const void* tmp$4073[23] = {
			&&label$1289,
			&&label$1375,
			&&label$1381,
			&&label$1462,
			&&label$1420,
			&&label$1441,
			&&label$1295,
			&&label$1298,
			&&label$1462,
			&&label$1462,
			&&label$1348,
			&&label$1351,
			&&label$1301,
			&&label$1407,
			&&label$1407,
			&&label$1462,
			&&label$1462,
			&&label$1384,
			&&label$1384,
			&&label$1384,
			&&label$1384,
			&&label$1384,
			&&label$1384,
		};
		if( (TMP$1632$2 - 28u) > 22u ) goto label$1462;
		goto *tmp$4073[TMP$1632$2 - 28u];
		label$1287:;
	}
	fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
	fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1076:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1879$1;
	int32 TMP$1880$1;
	int32 TMP$1881$1;
	int32 TMP$1882$1;
	label$1463:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1466;
	{
	}
	goto label$1465;
	label$1466:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1467;
	{
	}
	goto label$1465;
	label$1467:;
	{
	}
	label$1465:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1469;
	{
	}
	goto label$1468;
	label$1469:;
	{
	}
	label$1468:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1473;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1470;
	TMP$1879$1 = 24;
	goto label$3103;
	label$1470:;
	TMP$1879$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3103:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1471;
	TMP$1880$1 = 24;
	goto label$3104;
	label$1471:;
	TMP$1880$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3104:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1472;
	TMP$1881$1 = 24;
	goto label$3105;
	label$1472:;
	TMP$1881$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3105:;
	TMP$1882$1 = -(((-(*(int32*)((uint8*)V1$1 + 4) != *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28)) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1879$1 * 28)) == 0)) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1880$1 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$1881$1 * 28)) + 4))) != 0);
	goto label$3102;
	label$1473:;
	TMP$1882$1 = 0;
	label$3102:;
	if( TMP$1882$1 == 0 ) goto label$1475;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1477;
		{
		}
		goto label$1476;
		label$1477:;
		{
			*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28);
			_SETVREGDATATYPE( V1$1, DTYPE$1, (struct $8FBSYMBOL*)0u );
		}
		label$1476:;
	}
	label$1475:;
	label$1474:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	label$1464:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$1912$1;
	label$1478:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1481;
	{
	}
	goto label$1480;
	label$1481:;
	{
	}
	label$1480:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1483;
	{
		if( *(int32*)V1$1 == 4 ) goto label$1485;
		{
			{
				$15IRVREGTYPE_ENUM TMP$1883$4;
				TMP$1883$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$1883$4 != 4 ) goto label$1487;
				label$1488:;
				{
					int32 vr$9 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
					VRREG$1 = vr$9;
				}
				goto label$1486;
				label$1487:;
				{
					FBSTRING TMP$1884$5;
					FBSTRING TMP$1887$5;
					FBSTRING TMP$1888$5;
					__builtin_memset( &TMP$1884$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1884$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1884$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1884$5 );
					__builtin_memset( &TMP$1887$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1887$5, -1, (void*)"FOUND AN ERROR : in emituop typ not handled vr", 47, 0 );
					HWRITEASM64( &TMP$1887$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1887$5 );
					__builtin_memset( &TMP$1888$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1888$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1888$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1888$5 );
				}
				label$1489:;
				label$1486:;
			}
		}
		goto label$1484;
		label$1485:;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
			int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$25;
		}
		label$1484:;
	}
	label$1483:;
	label$1482:;
	TEMPODTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1491;
	{
		TEMPODTYPE$1 = 8;
		label$1491:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1494;
		label$1495:;
		if( TEMPODTYPE$1 == 9 ) goto label$1494;
		label$1496:;
		if( TEMPODTYPE$1 == 13 ) goto label$1494;
		label$1497:;
		if( TEMPODTYPE$1 == 14 ) goto label$1494;
		label$1498:;
		if( TEMPODTYPE$1 == 16 ) goto label$1494;
		label$1499:;
		if( TEMPODTYPE$1 != 10 ) goto label$1493;
		label$1494:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1492;
		label$1493:;
		if( TEMPODTYPE$1 == 11 ) goto label$1501;
		label$1502:;
		if( TEMPODTYPE$1 == 12 ) goto label$1501;
		label$1503:;
		if( TEMPODTYPE$1 != 15 ) goto label$1500;
		label$1501:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1492;
		label$1500:;
		if( TEMPODTYPE$1 == 5 ) goto label$1505;
		label$1506:;
		if( TEMPODTYPE$1 != 6 ) goto label$1504;
		label$1505:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1492;
		label$1504:;
		if( TEMPODTYPE$1 == 2 ) goto label$1508;
		label$1509:;
		if( TEMPODTYPE$1 == 3 ) goto label$1508;
		label$1510:;
		if( TEMPODTYPE$1 == 1 ) goto label$1508;
		label$1511:;
		if( TEMPODTYPE$1 != 4 ) goto label$1507;
		label$1508:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1492;
		label$1507:;
		{
			FBSTRING TMP$1889$3;
			FBSTRING TMP$1893$3;
			FBSTRING TMP$1894$3;
			FBSTRING TMP$1895$3;
			__builtin_memset( &TMP$1889$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1889$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1889$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1889$3 );
			__builtin_memset( &TMP$1894$3, 0, 12 );
			FBSTRING* vr$39 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1893$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$1893$3, (void*)"FOUND AN ERROR : UOP datatype not handled 01 = ", 48, (void*)vr$39, -1 );
			fb_StrAssign( (void*)&TMP$1894$3, -1, (void*)vr$42, -1, 0 );
			HWRITEASM64( &TMP$1894$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1894$3 );
			__builtin_memset( &TMP$1895$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1895$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1895$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1895$3 );
		}
		label$1512:;
		label$1492:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1896$2;
		TMP$1896$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1896$2 != 4 ) goto label$1514;
		label$1515:;
		{
			if( TEMPODTYPE$1 != 1 ) goto label$1517;
			{
				int32 vr$52 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (vr$52 << (2 & 31))), 0, 0 );
			}
			goto label$1516;
			label$1517:;
			{
				int32 vr$56 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$56 << (2 & 31))), 0, 0 );
			}
			label$1516:;
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"", 1, 0 );
		}
		goto label$1513;
		label$1514:;
		if( TMP$1896$2 != 2 ) goto label$1518;
		label$1519:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1513;
		label$1518:;
		if( TMP$1896$2 != 3 ) goto label$1520;
		label$1521:;
		{
			FBSTRING TMP$1897$3;
			FBSTRING TMP$1898$3;
			FBSTRING TMP$1899$3;
			int32 vr$64 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$67 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1897$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$1897$3, (void*)vr$67, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1898$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$1898$3, (void*)vr$70, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$64 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1899$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$1899$3, (void*)vr$73, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$76, -1, 0 );
		}
		goto label$1513;
		label$1520:;
		if( TMP$1896$2 != 5 ) goto label$1522;
		label$1523:;
		{
			FBSTRING TMP$1900$3;
			FBSTRING TMP$1901$3;
			FBSTRING TMP$1902$3;
			FBSTRING* vr$79 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			char* vr$81 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1900$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$1900$3, (void*)vr$81, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1901$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1901$3, (void*)vr$84, -1, (void*)vr$79, -1 );
			__builtin_memset( &TMP$1902$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$1902$3, (void*)vr$87, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$90, -1, 0 );
		}
		goto label$1513;
		label$1522:;
		if( TMP$1896$2 != 0 ) goto label$1524;
		label$1525:;
		{
		}
		goto label$1513;
		label$1524:;
		if( TMP$1896$2 != 1 ) goto label$1526;
		label$1527:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1529;
			{
				FBSTRING TMP$1903$4;
				FBSTRING TMP$1904$4;
				FBSTRING TMP$1905$4;
				FBSTRING* vr$102 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				char* vr$104 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1903$4, 0, 12 );
				FBSTRING* vr$107 = fb_StrConcat( &TMP$1903$4, (void*)vr$104, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1904$4, 0, 12 );
				FBSTRING* vr$110 = fb_StrConcat( &TMP$1904$4, (void*)vr$107, -1, (void*)vr$102, -1 );
				__builtin_memset( &TMP$1905$4, 0, 12 );
				FBSTRING* vr$113 = fb_StrConcat( &TMP$1905$4, (void*)vr$110, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$113, -1, 0 );
			}
			goto label$1528;
			label$1529:;
			{
				FBSTRING TMP$1906$4;
				FBSTRING* vr$116 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1906$4, 0, 12 );
				FBSTRING* vr$119 = fb_StrConcat( &TMP$1906$4, (void*)vr$116, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$119, -1, 0 );
			}
			label$1528:;
		}
		goto label$1513;
		label$1526:;
		{
			FBSTRING TMP$1907$3;
			FBSTRING TMP$1910$3;
			FBSTRING TMP$1911$3;
			__builtin_memset( &TMP$1907$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1907$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1907$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1907$3 );
			__builtin_memset( &TMP$1910$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1910$3, -1, (void*)"FOUND AN ERROR : in uop typ not handled v1", 43, 0 );
			HWRITEASM64( &TMP$1910$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1910$3 );
			__builtin_memset( &TMP$1911$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1911$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1911$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1911$3 );
		}
		label$1530:;
		label$1513:;
	}
	int32 vr$134 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$134 == 0 ) goto label$1532;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1532:;
	}
	__builtin_memset( &TMP$1912$1, 0, 12 );
	FBSTRING* vr$140 = fb_StrConcat( &TMP$1912$1, (void*)&PREFIX$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$140, -1, 0 );
	if( OP$1 != 52 ) goto label$1534;
	{
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1536;
		{
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1539;
				label$1540:;
				if( TEMPODTYPE$1 == 9 ) goto label$1539;
				label$1541:;
				if( TEMPODTYPE$1 == 13 ) goto label$1539;
				label$1542:;
				if( TEMPODTYPE$1 == 14 ) goto label$1539;
				label$1543:;
				if( TEMPODTYPE$1 != 10 ) goto label$1538;
				label$1539:;
				{
					FBSTRING TMP$1913$5;
					FBSTRING TMP$1914$5;
					FBSTRING TMP$1915$5;
					FBSTRING TMP$1916$5;
					__builtin_memset( &TMP$1916$5, 0, 12 );
					__builtin_memset( &TMP$1913$5, 0, 12 );
					FBSTRING* vr$151 = fb_StrConcat( &TMP$1913$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1914$5, 0, 12 );
					FBSTRING* vr$154 = fb_StrConcat( &TMP$1914$5, (void*)vr$151, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1915$5, 0, 12 );
					FBSTRING* vr$157 = fb_StrConcat( &TMP$1915$5, (void*)vr$154, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1916$5, -1, (void*)vr$157, -1, 0 );
					HWRITEASM64( &TMP$1916$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1916$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1537;
				label$1538:;
				if( TEMPODTYPE$1 == 11 ) goto label$1545;
				label$1546:;
				if( TEMPODTYPE$1 != 12 ) goto label$1544;
				label$1545:;
				{
					FBSTRING TMP$1917$5;
					FBSTRING TMP$1918$5;
					FBSTRING TMP$1919$5;
					FBSTRING TMP$1920$5;
					__builtin_memset( &TMP$1920$5, 0, 12 );
					__builtin_memset( &TMP$1917$5, 0, 12 );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$1917$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1918$5, 0, 12 );
					FBSTRING* vr$171 = fb_StrConcat( &TMP$1918$5, (void*)vr$168, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1919$5, 0, 12 );
					FBSTRING* vr$174 = fb_StrConcat( &TMP$1919$5, (void*)vr$171, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1920$5, -1, (void*)vr$174, -1, 0 );
					HWRITEASM64( &TMP$1920$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1920$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1537;
				label$1544:;
				if( TEMPODTYPE$1 == 5 ) goto label$1548;
				label$1549:;
				if( TEMPODTYPE$1 != 6 ) goto label$1547;
				label$1548:;
				{
					FBSTRING TMP$1921$5;
					FBSTRING TMP$1922$5;
					FBSTRING TMP$1923$5;
					FBSTRING TMP$1924$5;
					__builtin_memset( &TMP$1924$5, 0, 12 );
					__builtin_memset( &TMP$1921$5, 0, 12 );
					FBSTRING* vr$185 = fb_StrConcat( &TMP$1921$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1922$5, 0, 12 );
					FBSTRING* vr$188 = fb_StrConcat( &TMP$1922$5, (void*)vr$185, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1923$5, 0, 12 );
					FBSTRING* vr$191 = fb_StrConcat( &TMP$1923$5, (void*)vr$188, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1924$5, -1, (void*)vr$191, -1, 0 );
					HWRITEASM64( &TMP$1924$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1924$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1537;
				label$1547:;
				if( TEMPODTYPE$1 == 2 ) goto label$1551;
				label$1552:;
				if( TEMPODTYPE$1 == 3 ) goto label$1551;
				label$1553:;
				if( TEMPODTYPE$1 == 1 ) goto label$1551;
				label$1554:;
				if( TEMPODTYPE$1 != 4 ) goto label$1550;
				label$1551:;
				{
					FBSTRING TMP$1925$5;
					FBSTRING TMP$1926$5;
					FBSTRING TMP$1927$5;
					FBSTRING TMP$1928$5;
					__builtin_memset( &TMP$1928$5, 0, 12 );
					__builtin_memset( &TMP$1925$5, 0, 12 );
					FBSTRING* vr$202 = fb_StrConcat( &TMP$1925$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1926$5, 0, 12 );
					FBSTRING* vr$205 = fb_StrConcat( &TMP$1926$5, (void*)vr$202, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1927$5, 0, 12 );
					FBSTRING* vr$208 = fb_StrConcat( &TMP$1927$5, (void*)vr$205, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1928$5, -1, (void*)vr$208, -1, 0 );
					HWRITEASM64( &TMP$1928$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1928$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1537;
				label$1550:;
				{
					FBSTRING TMP$1929$5;
					FBSTRING TMP$1933$5;
					FBSTRING TMP$1934$5;
					FBSTRING TMP$1935$5;
					__builtin_memset( &TMP$1929$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1929$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1929$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1929$5 );
					__builtin_memset( &TMP$1934$5, 0, 12 );
					FBSTRING* vr$220 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1933$5, 0, 12 );
					FBSTRING* vr$223 = fb_StrConcat( &TMP$1933$5, (void*)"FOUND AN ERROR : UOP datatype not handled 011 = ", 49, (void*)vr$220, -1 );
					fb_StrAssign( (void*)&TMP$1934$5, -1, (void*)vr$223, -1, 0 );
					HWRITEASM64( &TMP$1934$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1934$5 );
					__builtin_memset( &TMP$1935$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1935$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1935$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1935$5 );
				}
				label$1555:;
				label$1537:;
			}
		}
		label$1536:;
		label$1535:;
		if( TEMPODTYPE$1 != 1 ) goto label$1557;
		{
			FBSTRING TMP$1937$3;
			FBSTRING TMP$1938$3;
			FBSTRING TMP$1939$3;
			FBSTRING TMP$1940$3;
			FBSTRING TMP$1942$3;
			FBSTRING TMP$1943$3;
			__builtin_memset( &TMP$1940$3, 0, 12 );
			__builtin_memset( &TMP$1937$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$1937$3, (void*)"test ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1938$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$1938$3, (void*)vr$236, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1939$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$1939$3, (void*)vr$239, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1940$3, -1, (void*)vr$242, -1, 0 );
			HWRITEASM64( &TMP$1940$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1940$3 );
			__builtin_memset( &TMP$1943$3, 0, 12 );
			__builtin_memset( &TMP$1942$3, 0, 12 );
			FBSTRING* vr$250 = fb_StrConcat( &TMP$1942$3, (void*)"sete ", 6, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1943$3, -1, (void*)vr$250, -1, 0 );
			HWRITEASM64( &TMP$1943$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1943$3 );
		}
		goto label$1556;
		label$1557:;
		{
			FBSTRING TMP$1944$3;
			FBSTRING TMP$1945$3;
			__builtin_memset( &TMP$1945$3, 0, 12 );
			__builtin_memset( &TMP$1944$3, 0, 12 );
			FBSTRING* vr$258 = fb_StrConcat( &TMP$1944$3, (void*)"not ", 5, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1945$3, -1, (void*)vr$258, -1, 0 );
			HWRITEASM64( &TMP$1945$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1945$3 );
		}
		label$1556:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1479;
	}
	label$1534:;
	label$1533:;
	if( TEMPODTYPE$1 != 15 ) goto label$1559;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1561;
		{
			FBSTRING TMP$1947$3;
			FBSTRING TMP$1948$3;
			__builtin_memset( &TMP$1948$3, 0, 12 );
			__builtin_memset( &TMP$1947$3, 0, 12 );
			FBSTRING* vr$270 = fb_StrConcat( &TMP$1947$3, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1948$3, -1, (void*)vr$270, -1, 0 );
			HWRITEASM64( &TMP$1948$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1948$3 );
		}
		goto label$1560;
		label$1561:;
		{
			FBSTRING TMP$1950$3;
			FBSTRING TMP$1951$3;
			__builtin_memset( &TMP$1951$3, 0, 12 );
			__builtin_memset( &TMP$1950$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$1950$3, (void*)"movss xmm0, ", 13, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1951$3, -1, (void*)vr$278, -1, 0 );
			HWRITEASM64( &TMP$1951$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1951$3 );
		}
		label$1560:;
		{
			if( OP$1 != 60 ) goto label$1563;
			label$1564:;
			{
				FBSTRING TMP$1953$4;
				__builtin_memset( &TMP$1953$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1953$4, -1, (void*)"cosf", 5, 0 );
				SAVE_CALL( &TMP$1953$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1953$4 );
			}
			goto label$1562;
			label$1563:;
			if( OP$1 != 58 ) goto label$1565;
			label$1566:;
			{
				FBSTRING TMP$1955$4;
				__builtin_memset( &TMP$1955$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1955$4, -1, (void*)"sinf", 5, 0 );
				SAVE_CALL( &TMP$1955$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1955$4 );
			}
			goto label$1562;
			label$1565:;
			if( OP$1 != 69 ) goto label$1567;
			label$1568:;
			{
				FBSTRING TMP$1957$4;
				__builtin_memset( &TMP$1957$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1957$4, -1, (void*)"expf", 5, 0 );
				SAVE_CALL( &TMP$1957$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1957$4 );
			}
			goto label$1562;
			label$1567:;
			if( OP$1 != 68 ) goto label$1569;
			label$1570:;
			{
				FBSTRING TMP$1959$4;
				__builtin_memset( &TMP$1959$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1959$4, -1, (void*)"logf", 5, 0 );
				SAVE_CALL( &TMP$1959$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1959$4 );
			}
			goto label$1562;
			label$1569:;
			if( OP$1 != 61 ) goto label$1571;
			label$1572:;
			{
				FBSTRING TMP$1961$4;
				__builtin_memset( &TMP$1961$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1961$4, -1, (void*)"acosf", 6, 0 );
				SAVE_CALL( &TMP$1961$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1961$4 );
			}
			goto label$1562;
			label$1571:;
			if( OP$1 != 59 ) goto label$1573;
			label$1574:;
			{
				FBSTRING TMP$1963$4;
				__builtin_memset( &TMP$1963$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1963$4, -1, (void*)"asinf", 6, 0 );
				SAVE_CALL( &TMP$1963$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1963$4 );
			}
			goto label$1562;
			label$1573:;
			if( OP$1 != 62 ) goto label$1575;
			label$1576:;
			{
				FBSTRING TMP$1965$4;
				__builtin_memset( &TMP$1965$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1965$4, -1, (void*)"tanf", 5, 0 );
				SAVE_CALL( &TMP$1965$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1965$4 );
			}
			goto label$1562;
			label$1575:;
			if( OP$1 != 63 ) goto label$1577;
			label$1578:;
			{
				FBSTRING TMP$1967$4;
				__builtin_memset( &TMP$1967$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1967$4, -1, (void*)"atanf", 6, 0 );
				SAVE_CALL( &TMP$1967$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1967$4 );
			}
			goto label$1562;
			label$1577:;
			if( OP$1 != 65 ) goto label$1579;
			label$1580:;
			{
				FBSTRING TMP$1969$4;
				__builtin_memset( &TMP$1969$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1969$4, -1, (void*)"sqrtss    xmm0, xmm0", 21, 0 );
				HWRITEASM64( &TMP$1969$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1969$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1562;
			label$1579:;
			if( OP$1 != 56 ) goto label$1581;
			label$1582:;
			{
				FBSTRING TMP$1971$4;
				FBSTRING TMP$1973$4;
				FBSTRING TMP$1975$4;
				FBSTRING TMP$1977$4;
				__builtin_memset( &TMP$1971$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1971$4, -1, (void*)"mov eax, 0x7FFFFFFF", 20, 0 );
				HWRITEASM64( &TMP$1971$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1971$4 );
				__builtin_memset( &TMP$1973$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1973$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1973$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1973$4 );
				__builtin_memset( &TMP$1975$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1975$4, -1, (void*)"andps xmm1, xmm0", 17, 0 );
				HWRITEASM64( &TMP$1975$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1975$4 );
				__builtin_memset( &TMP$1977$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1977$4, -1, (void*)"movd xmm0, xmm1", 16, 0 );
				HWRITEASM64( &TMP$1977$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1977$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1562;
			label$1581:;
			if( OP$1 != 57 ) goto label$1583;
			label$1584:;
			{
				FBSTRING TMP$1979$4;
				__builtin_memset( &TMP$1979$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1979$4, -1, (void*)"fb_SGNSingle", 13, 0 );
				SAVE_CALL( &TMP$1979$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1979$4 );
			}
			goto label$1562;
			label$1583:;
			if( OP$1 != 72 ) goto label$1585;
			label$1586:;
			{
				FBSTRING TMP$1981$4;
				__builtin_memset( &TMP$1981$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1981$4, -1, (void*)"fb_FRACf", 9, 0 );
				SAVE_CALL( &TMP$1981$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1981$4 );
			}
			goto label$1562;
			label$1585:;
			if( OP$1 != 71 ) goto label$1587;
			label$1588:;
			{
				FBSTRING TMP$1983$4;
				__builtin_memset( &TMP$1983$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1983$4, -1, (void*)"fb_FIXSingle", 13, 0 );
				SAVE_CALL( &TMP$1983$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1983$4 );
			}
			goto label$1562;
			label$1587:;
			if( OP$1 != 70 ) goto label$1589;
			label$1590:;
			{
				FBSTRING TMP$1985$4;
				__builtin_memset( &TMP$1985$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1985$4, -1, (void*)"floorf", 7, 0 );
				SAVE_CALL( &TMP$1985$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1985$4 );
			}
			goto label$1562;
			label$1589:;
			if( OP$1 != 54 ) goto label$1591;
			label$1592:;
			{
				FBSTRING TMP$1988$4;
				FBSTRING TMP$1989$4;
				FBSTRING TMP$1991$4;
				__builtin_memset( &TMP$1988$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1988$4, -1, (void*)"mov eax, 0x80000000", 20, 0 );
				HWRITEASM64( &TMP$1988$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1988$4 );
				__builtin_memset( &TMP$1989$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1989$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1989$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1989$4 );
				__builtin_memset( &TMP$1991$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1991$4, -1, (void*)"xorps xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$1991$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1991$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1562;
			label$1591:;
			{
				FBSTRING TMP$1992$4;
				FBSTRING TMP$1995$4;
				FBSTRING TMP$1996$4;
				__builtin_memset( &TMP$1992$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1992$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1992$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1992$4 );
				__builtin_memset( &TMP$1995$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1995$4, -1, (void*)"FOUND AN ERROR : in uop not handled for single", 47, 0 );
				HWRITEASM64( &TMP$1995$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1995$4 );
				__builtin_memset( &TMP$1996$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1996$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1996$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1996$4 );
			}
			label$1593:;
			label$1562:;
		}
		if( OP$1 != 57 ) goto label$1595;
		{
			FBSTRING TMP$1998$3;
			FBSTRING TMP$1999$3;
			FBSTRING TMP$2000$3;
			__builtin_memset( &TMP$2000$3, 0, 12 );
			__builtin_memset( &TMP$1998$3, 0, 12 );
			FBSTRING* vr$378 = fb_StrConcat( &TMP$1998$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1999$3, 0, 12 );
			FBSTRING* vr$381 = fb_StrConcat( &TMP$1999$3, (void*)vr$378, -1, (void*)", eax", 6 );
			fb_StrAssign( (void*)&TMP$2000$3, -1, (void*)vr$381, -1, 0 );
			HWRITEASM64( &TMP$2000$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2000$3 );
		}
		goto label$1594;
		label$1595:;
		{
			FBSTRING TMP$2001$3;
			FBSTRING TMP$2002$3;
			FBSTRING TMP$2003$3;
			__builtin_memset( &TMP$2003$3, 0, 12 );
			__builtin_memset( &TMP$2001$3, 0, 12 );
			FBSTRING* vr$389 = fb_StrConcat( &TMP$2001$3, (void*)"movd ", 6, *(void**)((int32)(char**)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2002$3, 0, 12 );
			FBSTRING* vr$392 = fb_StrConcat( &TMP$2002$3, (void*)vr$389, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$2003$3, -1, (void*)vr$392, -1, 0 );
			HWRITEASM64( &TMP$2003$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2003$3 );
		}
		label$1594:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1479;
	}
	label$1559:;
	label$1558:;
	if( (-(OP$1 == 56) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1597;
	{
		FBSTRING TMP$2004$2;
		FBSTRING TMP$2005$2;
		FBSTRING TMP$2010$2;
		FBSTRING TMP$2012$2;
		FBSTRING TMP$2014$2;
		__builtin_memset( &TMP$2005$2, 0, 12 );
		__builtin_memset( &TMP$2004$2, 0, 12 );
		FBSTRING* vr$406 = fb_StrConcat( &TMP$2004$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2005$2, -1, (void*)vr$406, -1, 0 );
		HWRITEASM64( &TMP$2005$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2005$2 );
		if( *(int32*)((int32)(int32*)REGHANDLE$ + 12) == -2 ) goto label$1599;
		{
			FBSTRING TMP$2006$3;
			FBSTRING TMP$2007$3;
			FBSTRING TMP$2008$3;
			FBSTRING TMP$2009$3;
			TEMPO$1 = *(int32*)((int32)(int32*)REGHANDLE$ + 12);
			REG_FINDFREE( TEMPO$1, -1 );
			*(int32*)((int32)(int32*)REGHANDLE$ + 12) = -2;
			__builtin_memset( &TMP$2009$3, 0, 12 );
			int32 vr$411 = REG_FINDREAL( TEMPO$1 );
			__builtin_memset( &TMP$2006$3, 0, 12 );
			FBSTRING* vr$415 = fb_StrConcat( &TMP$2006$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$411 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2007$3, 0, 12 );
			FBSTRING* vr$418 = fb_StrConcat( &TMP$2007$3, (void*)vr$415, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2008$3, 0, 12 );
			FBSTRING* vr$421 = fb_StrConcat( &TMP$2008$3, (void*)vr$418, -1, *(void**)((int32)(char**)REGSTRQ$ + 12), 0 );
			fb_StrAssign( (void*)&TMP$2009$3, -1, (void*)vr$421, -1, 0 );
			HWRITEASM64( &TMP$2009$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2009$3 );
			if( VRREG$1 != 3 ) goto label$1601;
			{
				int32 vr$425 = REG_FINDREAL( TEMPO$1 );
				VRREG$1 = vr$425;
				label$1601:;
			}
		}
		goto label$1598;
		label$1599:;
		{
			*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) | 8;
		}
		label$1598:;
		__builtin_memset( &TMP$2010$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2010$2, -1, (void*)"cqo", 4, 0 );
		HWRITEASM64( &TMP$2010$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2010$2 );
		__builtin_memset( &TMP$2012$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2012$2, -1, (void*)"xor rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$2012$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2012$2 );
		__builtin_memset( &TMP$2014$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2014$2, -1, (void*)"sub rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$2014$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2014$2 );
		if( VR$1 != (struct $6IRVREG*)0u ) goto label$1603;
		{
			FBSTRING TMP$2015$3;
			FBSTRING TMP$2016$3;
			FBSTRING TMP$2017$3;
			__builtin_memset( &TMP$2017$3, 0, 12 );
			__builtin_memset( &TMP$2015$3, 0, 12 );
			FBSTRING* vr$443 = fb_StrConcat( &TMP$2015$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2016$3, 0, 12 );
			FBSTRING* vr$446 = fb_StrConcat( &TMP$2016$3, (void*)vr$443, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2017$3, -1, (void*)vr$446, -1, 0 );
			HWRITEASM64( &TMP$2017$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2017$3 );
		}
		goto label$1602;
		label$1603:;
		{
			FBSTRING TMP$2018$3;
			FBSTRING TMP$2019$3;
			FBSTRING TMP$2020$3;
			__builtin_memset( &TMP$2020$3, 0, 12 );
			__builtin_memset( &TMP$2018$3, 0, 12 );
			FBSTRING* vr$454 = fb_StrConcat( &TMP$2018$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2019$3, 0, 12 );
			FBSTRING* vr$457 = fb_StrConcat( &TMP$2019$3, (void*)vr$454, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2020$3, -1, (void*)vr$457, -1, 0 );
			HWRITEASM64( &TMP$2020$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2020$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		label$1602:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1479;
	}
	label$1597:;
	label$1596:;
	if( (-(OP$1 == 54) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1605;
	{
		FBSTRING TMP$2025$2;
		FBSTRING TMP$2026$2;
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1607;
		{
			FBSTRING TMP$2021$3;
			FBSTRING TMP$2022$3;
			FBSTRING TMP$2023$3;
			FBSTRING TMP$2024$3;
			__builtin_memset( &TMP$2024$3, 0, 12 );
			__builtin_memset( &TMP$2021$3, 0, 12 );
			FBSTRING* vr$476 = fb_StrConcat( &TMP$2021$3, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2022$3, 0, 12 );
			FBSTRING* vr$479 = fb_StrConcat( &TMP$2022$3, (void*)vr$476, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2023$3, 0, 12 );
			FBSTRING* vr$482 = fb_StrConcat( &TMP$2023$3, (void*)vr$479, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2024$3, -1, (void*)vr$482, -1, 0 );
			HWRITEASM64( &TMP$2024$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2024$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
		}
		label$1607:;
		label$1606:;
		__builtin_memset( &TMP$2026$2, 0, 12 );
		__builtin_memset( &TMP$2025$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$2025$2, (void*)"neg ", 5, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2026$2, -1, (void*)vr$492, -1, 0 );
		HWRITEASM64( &TMP$2026$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2026$2 );
		if( VR$1 == (struct $6IRVREG*)0u ) goto label$1609;
		{
			RESTORE_VRREG( VR$1, VRREG$1 );
			label$1609:;
		}
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1479;
	}
	label$1605:;
	label$1604:;
	if( (-(OP$1 == 57) & -(TEMPODTYPE$1 != 16)) == 0 ) goto label$1611;
	{
		FBSTRING LNAME$2;
		char* vr$502 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$502, 0, 0 );
		if( *(int32*)V1$1 != 4 ) goto label$1613;
		{
			FBSTRING TMP$2028$3;
			FBSTRING TMP$2029$3;
			FBSTRING TMP$2030$3;
			FBSTRING TMP$2031$3;
			FBSTRING TMP$2032$3;
			FBSTRING TMP$2033$3;
			FBSTRING TMP$2034$3;
			FBSTRING TMP$2035$3;
			FBSTRING TMP$2037$3;
			FBSTRING TMP$2038$3;
			FBSTRING TMP$2039$3;
			FBSTRING TMP$2040$3;
			FBSTRING TMP$2041$3;
			FBSTRING TMP$2042$3;
			FBSTRING TMP$2043$3;
			__builtin_memset( &TMP$2030$3, 0, 12 );
			__builtin_memset( &TMP$2028$3, 0, 12 );
			FBSTRING* vr$509 = fb_StrConcat( &TMP$2028$3, (void*)"cmp ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2029$3, 0, 12 );
			FBSTRING* vr$512 = fb_StrConcat( &TMP$2029$3, (void*)vr$509, -1, (void*)", 0", 4 );
			fb_StrAssign( (void*)&TMP$2030$3, -1, (void*)vr$512, -1, 0 );
			HWRITEASM64( &TMP$2030$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2030$3 );
			__builtin_memset( &TMP$2032$3, 0, 12 );
			__builtin_memset( &TMP$2031$3, 0, 12 );
			FBSTRING* vr$520 = fb_StrConcat( &TMP$2031$3, (void*)"je ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2032$3, -1, (void*)vr$520, -1, 0 );
			HWRITEASM64( &TMP$2032$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2032$3 );
			__builtin_memset( &TMP$2035$3, 0, 12 );
			__builtin_memset( &TMP$2033$3, 0, 12 );
			FBSTRING* vr$528 = fb_StrConcat( &TMP$2033$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2034$3, 0, 12 );
			FBSTRING* vr$531 = fb_StrConcat( &TMP$2034$3, (void*)vr$528, -1, (void*)", 1", 4 );
			fb_StrAssign( (void*)&TMP$2035$3, -1, (void*)vr$531, -1, 0 );
			HWRITEASM64( &TMP$2035$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2035$3 );
			__builtin_memset( &TMP$2038$3, 0, 12 );
			__builtin_memset( &TMP$2037$3, 0, 12 );
			FBSTRING* vr$539 = fb_StrConcat( &TMP$2037$3, (void*)"jg ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2038$3, -1, (void*)vr$539, -1, 0 );
			HWRITEASM64( &TMP$2038$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2038$3 );
			__builtin_memset( &TMP$2041$3, 0, 12 );
			__builtin_memset( &TMP$2039$3, 0, 12 );
			FBSTRING* vr$547 = fb_StrConcat( &TMP$2039$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2040$3, 0, 12 );
			FBSTRING* vr$550 = fb_StrConcat( &TMP$2040$3, (void*)vr$547, -1, (void*)", -1", 5 );
			fb_StrAssign( (void*)&TMP$2041$3, -1, (void*)vr$550, -1, 0 );
			HWRITEASM64( &TMP$2041$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2041$3 );
			__builtin_memset( &TMP$2043$3, 0, 12 );
			__builtin_memset( &TMP$2042$3, 0, 12 );
			FBSTRING* vr$558 = fb_StrConcat( &TMP$2042$3, (void*)&LNAME$2, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$2043$3, -1, (void*)vr$558, -1, 0 );
			HWRITEASM64( &TMP$2043$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2043$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1612;
		label$1613:;
		{
			FBSTRING TMP$2044$3;
			FBSTRING TMP$2045$3;
			FBSTRING TMP$2047$3;
			FBSTRING TMP$2048$3;
			FBSTRING TMP$2049$3;
			FBSTRING TMP$2051$3;
			FBSTRING TMP$2052$3;
			FBSTRING TMP$2053$3;
			FBSTRING TMP$2055$3;
			FBSTRING TMP$2056$3;
			FBSTRING TMP$2057$3;
			__builtin_memset( &TMP$2045$3, 0, 12 );
			__builtin_memset( &TMP$2044$3, 0, 12 );
			FBSTRING* vr$566 = fb_StrConcat( &TMP$2044$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2045$3, -1, (void*)vr$566, -1, 0 );
			HWRITEASM64( &TMP$2045$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2045$3 );
			__builtin_memset( &TMP$2047$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2047$3, -1, (void*)"cmp rax, 0", 11, 0 );
			HWRITEASM64( &TMP$2047$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2047$3 );
			__builtin_memset( &TMP$2049$3, 0, 12 );
			__builtin_memset( &TMP$2048$3, 0, 12 );
			FBSTRING* vr$578 = fb_StrConcat( &TMP$2048$3, (void*)"je ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2049$3, -1, (void*)vr$578, -1, 0 );
			HWRITEASM64( &TMP$2049$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2049$3 );
			__builtin_memset( &TMP$2051$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2051$3, -1, (void*)"mov eax, 1", 11, 0 );
			HWRITEASM64( &TMP$2051$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2051$3 );
			__builtin_memset( &TMP$2053$3, 0, 12 );
			__builtin_memset( &TMP$2052$3, 0, 12 );
			FBSTRING* vr$590 = fb_StrConcat( &TMP$2052$3, (void*)"jg ", 4, (void*)&LNAME$2, -1 );
			fb_StrAssign( (void*)&TMP$2053$3, -1, (void*)vr$590, -1, 0 );
			HWRITEASM64( &TMP$2053$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2053$3 );
			__builtin_memset( &TMP$2055$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2055$3, -1, (void*)"mov rax, -1", 12, 0 );
			HWRITEASM64( &TMP$2055$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2055$3 );
			__builtin_memset( &TMP$2057$3, 0, 12 );
			__builtin_memset( &TMP$2056$3, 0, 12 );
			FBSTRING* vr$602 = fb_StrConcat( &TMP$2056$3, (void*)&LNAME$2, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$2057$3, -1, (void*)vr$602, -1, 0 );
			HWRITEASM64( &TMP$2057$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2057$3 );
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1615;
			{
				FBSTRING TMP$2058$4;
				FBSTRING TMP$2059$4;
				FBSTRING TMP$2060$4;
				__builtin_memset( &TMP$2060$4, 0, 12 );
				__builtin_memset( &TMP$2058$4, 0, 12 );
				FBSTRING* vr$610 = fb_StrConcat( &TMP$2058$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2059$4, 0, 12 );
				FBSTRING* vr$613 = fb_StrConcat( &TMP$2059$4, (void*)vr$610, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2060$4, -1, (void*)vr$613, -1, 0 );
				HWRITEASM64( &TMP$2060$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2060$4 );
			}
			goto label$1614;
			label$1615:;
			{
				FBSTRING TMP$2061$4;
				FBSTRING TMP$2062$4;
				FBSTRING TMP$2063$4;
				__builtin_memset( &TMP$2063$4, 0, 12 );
				__builtin_memset( &TMP$2061$4, 0, 12 );
				FBSTRING* vr$621 = fb_StrConcat( &TMP$2061$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2062$4, 0, 12 );
				FBSTRING* vr$624 = fb_StrConcat( &TMP$2062$4, (void*)vr$621, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2063$4, -1, (void*)vr$624, -1, 0 );
				HWRITEASM64( &TMP$2063$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2063$4 );
			}
			label$1614:;
		}
		label$1612:;
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1479;
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$1611:;
	label$1610:;
	if( *(int32*)V1$1 != 4 ) goto label$1617;
	{
		FBSTRING TMP$2065$2;
		FBSTRING TMP$2066$2;
		__builtin_memset( &TMP$2066$2, 0, 12 );
		__builtin_memset( &TMP$2065$2, 0, 12 );
		FBSTRING* vr$638 = fb_StrConcat( &TMP$2065$2, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2066$2, -1, (void*)vr$638, -1, 0 );
		HWRITEASM64( &TMP$2066$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2066$2 );
	}
	goto label$1616;
	label$1617:;
	{
		FBSTRING TMP$2068$2;
		FBSTRING TMP$2069$2;
		__builtin_memset( &TMP$2069$2, 0, 12 );
		__builtin_memset( &TMP$2068$2, 0, 12 );
		FBSTRING* vr$646 = fb_StrConcat( &TMP$2068$2, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$2069$2, -1, (void*)vr$646, -1, 0 );
		HWRITEASM64( &TMP$2069$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2069$2 );
	}
	label$1616:;
	{
		if( OP$1 != 60 ) goto label$1619;
		label$1620:;
		{
			FBSTRING TMP$2071$3;
			__builtin_memset( &TMP$2071$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2071$3, -1, (void*)"cos", 4, 0 );
			SAVE_CALL( &TMP$2071$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2071$3 );
		}
		goto label$1618;
		label$1619:;
		if( OP$1 != 58 ) goto label$1621;
		label$1622:;
		{
			FBSTRING TMP$2073$3;
			__builtin_memset( &TMP$2073$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2073$3, -1, (void*)"sin", 4, 0 );
			SAVE_CALL( &TMP$2073$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2073$3 );
		}
		goto label$1618;
		label$1621:;
		if( OP$1 != 69 ) goto label$1623;
		label$1624:;
		{
			FBSTRING TMP$2075$3;
			__builtin_memset( &TMP$2075$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2075$3, -1, (void*)"exp", 4, 0 );
			SAVE_CALL( &TMP$2075$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2075$3 );
		}
		goto label$1618;
		label$1623:;
		if( OP$1 != 68 ) goto label$1625;
		label$1626:;
		{
			FBSTRING TMP$2077$3;
			__builtin_memset( &TMP$2077$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2077$3, -1, (void*)"log", 4, 0 );
			SAVE_CALL( &TMP$2077$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2077$3 );
		}
		goto label$1618;
		label$1625:;
		if( OP$1 != 61 ) goto label$1627;
		label$1628:;
		{
			FBSTRING TMP$2079$3;
			__builtin_memset( &TMP$2079$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2079$3, -1, (void*)"acos", 5, 0 );
			SAVE_CALL( &TMP$2079$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2079$3 );
		}
		goto label$1618;
		label$1627:;
		if( OP$1 != 59 ) goto label$1629;
		label$1630:;
		{
			FBSTRING TMP$2081$3;
			__builtin_memset( &TMP$2081$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2081$3, -1, (void*)"asin", 5, 0 );
			SAVE_CALL( &TMP$2081$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2081$3 );
		}
		goto label$1618;
		label$1629:;
		if( OP$1 != 62 ) goto label$1631;
		label$1632:;
		{
			FBSTRING TMP$2083$3;
			__builtin_memset( &TMP$2083$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2083$3, -1, (void*)"tan", 4, 0 );
			SAVE_CALL( &TMP$2083$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2083$3 );
		}
		goto label$1618;
		label$1631:;
		if( OP$1 != 63 ) goto label$1633;
		label$1634:;
		{
			FBSTRING TMP$2085$3;
			__builtin_memset( &TMP$2085$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2085$3, -1, (void*)"atan", 5, 0 );
			SAVE_CALL( &TMP$2085$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2085$3 );
		}
		goto label$1618;
		label$1633:;
		if( OP$1 != 56 ) goto label$1635;
		label$1636:;
		{
			FBSTRING TMP$2087$3;
			FBSTRING TMP$2089$3;
			FBSTRING TMP$2091$3;
			FBSTRING TMP$2093$3;
			__builtin_memset( &TMP$2087$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2087$3, -1, (void*)"mov rax, 0x7FFFFFFFFFFFFFFF", 28, 0 );
			HWRITEASM64( &TMP$2087$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2087$3 );
			__builtin_memset( &TMP$2089$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2089$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$2089$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2089$3 );
			__builtin_memset( &TMP$2091$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2091$3, -1, (void*)"andpd xmm1, xmm0", 17, 0 );
			HWRITEASM64( &TMP$2091$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2091$3 );
			__builtin_memset( &TMP$2093$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2093$3, -1, (void*)"movq xmm0, xmm1", 16, 0 );
			HWRITEASM64( &TMP$2093$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2093$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1618;
		label$1635:;
		if( OP$1 != 65 ) goto label$1637;
		label$1638:;
		{
			FBSTRING TMP$2095$3;
			__builtin_memset( &TMP$2095$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2095$3, -1, (void*)"sqrtsd    xmm0, xmm0", 21, 0 );
			HWRITEASM64( &TMP$2095$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2095$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1618;
		label$1637:;
		if( OP$1 != 57 ) goto label$1639;
		label$1640:;
		{
			FBSTRING TMP$2097$3;
			__builtin_memset( &TMP$2097$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2097$3, -1, (void*)"fb_SGNDouble", 13, 0 );
			SAVE_CALL( &TMP$2097$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2097$3 );
		}
		goto label$1618;
		label$1639:;
		if( OP$1 != 72 ) goto label$1641;
		label$1642:;
		{
			FBSTRING TMP$2099$3;
			__builtin_memset( &TMP$2099$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2099$3, -1, (void*)"fb_FRACd", 9, 0 );
			SAVE_CALL( &TMP$2099$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2099$3 );
		}
		goto label$1618;
		label$1641:;
		if( OP$1 != 71 ) goto label$1643;
		label$1644:;
		{
			FBSTRING TMP$2101$3;
			__builtin_memset( &TMP$2101$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2101$3, -1, (void*)"fb_FIXDouble", 13, 0 );
			SAVE_CALL( &TMP$2101$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2101$3 );
		}
		goto label$1618;
		label$1643:;
		if( OP$1 != 70 ) goto label$1645;
		label$1646:;
		{
			FBSTRING TMP$2103$3;
			__builtin_memset( &TMP$2103$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2103$3, -1, (void*)"floor", 6, 0 );
			SAVE_CALL( &TMP$2103$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$2103$3 );
		}
		goto label$1618;
		label$1645:;
		if( OP$1 != 54 ) goto label$1647;
		label$1648:;
		{
			FBSTRING TMP$2106$3;
			FBSTRING TMP$2107$3;
			FBSTRING TMP$2109$3;
			__builtin_memset( &TMP$2106$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2106$3, -1, (void*)"mov rax, 0x8000000000000000", 28, 0 );
			HWRITEASM64( &TMP$2106$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2106$3 );
			__builtin_memset( &TMP$2107$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2107$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$2107$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2107$3 );
			__builtin_memset( &TMP$2109$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2109$3, -1, (void*)"xorpd xmm0, xmm1", 17, 0 );
			HWRITEASM64( &TMP$2109$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2109$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1618;
		label$1647:;
		{
			FBSTRING TMP$2110$3;
			FBSTRING TMP$2113$3;
			FBSTRING TMP$2114$3;
			__builtin_memset( &TMP$2110$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2110$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2110$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2110$3 );
			__builtin_memset( &TMP$2113$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2113$3, -1, (void*)"FOUND AN ERROR : in uop not handled for double", 47, 0 );
			HWRITEASM64( &TMP$2113$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2113$3 );
			__builtin_memset( &TMP$2114$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2114$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2114$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2114$3 );
		}
		label$1649:;
		label$1618:;
	}
	if( OP$1 != 57 ) goto label$1651;
	{
		FBSTRING TMP$2116$2;
		FBSTRING TMP$2117$2;
		FBSTRING TMP$2118$2;
		__builtin_memset( &TMP$2118$2, 0, 12 );
		__builtin_memset( &TMP$2116$2, 0, 12 );
		FBSTRING* vr$746 = fb_StrConcat( &TMP$2116$2, (void*)"movsxd ", 8, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$2117$2, 0, 12 );
		FBSTRING* vr$749 = fb_StrConcat( &TMP$2117$2, (void*)vr$746, -1, (void*)", eax", 6 );
		fb_StrAssign( (void*)&TMP$2118$2, -1, (void*)vr$749, -1, 0 );
		HWRITEASM64( &TMP$2118$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2118$2 );
	}
	goto label$1650;
	label$1651:;
	{
		FBSTRING TMP$2119$2;
		FBSTRING TMP$2120$2;
		FBSTRING TMP$2121$2;
		__builtin_memset( &TMP$2121$2, 0, 12 );
		__builtin_memset( &TMP$2119$2, 0, 12 );
		FBSTRING* vr$757 = fb_StrConcat( &TMP$2119$2, (void*)"movq ", 6, *(void**)((int32)(char**)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$2120$2, 0, 12 );
		FBSTRING* vr$760 = fb_StrConcat( &TMP$2120$2, (void*)vr$757, -1, (void*)", xmm0", 7 );
		fb_StrAssign( (void*)&TMP$2121$2, -1, (void*)vr$760, -1, 0 );
		HWRITEASM64( &TMP$2121$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2121$2 );
	}
	label$1650:;
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1479:;
}

static void HEMITROUNDFLOAT( $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	FBSTRING TMP$2123$1;
	FBSTRING TMP$2124$1;
	FBSTRING TMP$2125$1;
	FBSTRING TMP$2134$1;
	FBSTRING TMP$2135$1;
	FBSTRING TMP$2136$1;
	FBSTRING TMP$2137$1;
	FBSTRING TMP$2143$1;
	FBSTRING TMP$2144$1;
	label$1652:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	*(boolean*)((uint8*)&CTX$ + 152) = (boolean)1;
	__builtin_memset( &TMP$2123$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$2123$1, -1, (void*)"test DWORD PTR $sse41[rip], 0b10000000000000000000", 51, 0 );
	HWRITEASM64( &TMP$2123$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2123$1 );
	char* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$6, 0, 0 );
	__builtin_memset( &TMP$2125$1, 0, 12 );
	__builtin_memset( &TMP$2124$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$2124$1, (void*)"je ", 4, (void*)&LNAME1$1, -1 );
	fb_StrAssign( (void*)&TMP$2125$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$2125$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2125$1 );
	if( DTYPE1$1 != 16 ) goto label$1655;
	{
		FBSTRING TMP$2127$2;
		__builtin_memset( &TMP$2127$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2127$2, -1, (void*)"roundsd xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2127$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2127$2 );
		if( DTYPE2$1 == 14 ) goto label$1657;
		{
			FBSTRING TMP$2129$3;
			__builtin_memset( &TMP$2129$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2129$3, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2129$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2129$3 );
		}
		label$1657:;
		label$1656:;
	}
	goto label$1654;
	label$1655:;
	{
		FBSTRING TMP$2131$2;
		__builtin_memset( &TMP$2131$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2131$2, -1, (void*)"roundss xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2131$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2131$2 );
		if( DTYPE2$1 == 14 ) goto label$1659;
		{
			FBSTRING TMP$2133$3;
			__builtin_memset( &TMP$2133$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2133$3, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2133$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2133$3 );
		}
		label$1659:;
		label$1658:;
	}
	label$1654:;
	char* vr$32 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$32, 0, 0 );
	__builtin_memset( &TMP$2135$1, 0, 12 );
	__builtin_memset( &TMP$2134$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$2134$1, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
	fb_StrAssign( (void*)&TMP$2135$1, -1, (void*)vr$38, -1, 0 );
	HWRITEASM64( &TMP$2135$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2135$1 );
	__builtin_memset( &TMP$2137$1, 0, 12 );
	__builtin_memset( &TMP$2136$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$2136$1, (void*)&LNAME1$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2137$1, -1, (void*)vr$46, -1, 0 );
	HWRITEASM64( &TMP$2137$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2137$1 );
	if( DTYPE1$1 != 16 ) goto label$1661;
	{
		if( DTYPE2$1 == 14 ) goto label$1663;
		{
			NO_ROUNDSD( (char*)"d" );
		}
		goto label$1662;
		label$1663:;
		{
			FBSTRING TMP$2139$3;
			__builtin_memset( &TMP$2139$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2139$3, -1, (void*)"call nearbyint", 15, 0 );
			HWRITEASM64( &TMP$2139$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2139$3 );
		}
		label$1662:;
	}
	goto label$1660;
	label$1661:;
	{
		if( DTYPE2$1 == 14 ) goto label$1665;
		{
			NO_ROUNDSD( (char*)"s" );
		}
		goto label$1664;
		label$1665:;
		{
			FBSTRING TMP$2142$3;
			__builtin_memset( &TMP$2142$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2142$3, -1, (void*)"call nearbyintf", 16, 0 );
			HWRITEASM64( &TMP$2142$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2142$3 );
		}
		label$1664:;
	}
	label$1660:;
	__builtin_memset( &TMP$2144$1, 0, 12 );
	__builtin_memset( &TMP$2143$1, 0, 12 );
	FBSTRING* vr$62 = fb_StrConcat( &TMP$2143$1, (void*)&LNAME2$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2144$1, -1, (void*)vr$62, -1, 0 );
	HWRITEASM64( &TMP$2144$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2144$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1653:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2150$1;
	int32 TMP$2151$1;
	int32 TMP$2152$1;
	int32 TMP$2153$1;
	int32 TMP$2212$1;
	int32 TMP$2356$1;
	int32 TMP$2357$1;
	int32 TMP$2522$1;
	int32 TMP$2523$1;
	int32 TMP$2533$1;
	label$1666:;
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	$11FB_DATATYPE V2DTYPE$1;
	__builtin_memset( &V2DTYPE$1, 0, 4 );
	$11FB_DATATYPE V1OLD$1;
	__builtin_memset( &V1OLD$1, 0, 4 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	int32 REGRESULT$1;
	__builtin_memset( &REGRESULT$1, 0, 4 );
	int32 SRCREG$1;
	__builtin_memset( &SRCREG$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)V1$1 == 4 ) goto label$1669;
	{
		FBSTRING TMP$2145$2;
		FBSTRING TMP$2148$2;
		FBSTRING TMP$2149$2;
		__builtin_memset( &TMP$2145$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2145$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2145$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2145$2 );
		__builtin_memset( &TMP$2148$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2148$2, -1, (void*)"FOUND AN ERROR : v1 in converting not a reg", 44, 0 );
		HWRITEASM64( &TMP$2148$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2148$2 );
		__builtin_memset( &TMP$2149$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2149$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2149$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2149$2 );
	}
	label$1669:;
	label$1668:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	V2DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
	if( (-((V1DTYPE$1 & 480) != 0) & -((V2DTYPE$1 & 480) != 0)) == 0 ) goto label$1671;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1671:;
	label$1670:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1673;
	{
		V1DTYPE$1 = 13;
		label$1673:;
	}
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1675;
	{
		V2DTYPE$1 = 13;
		label$1675:;
	}
	if( V1DTYPE$1 != 8 ) goto label$1677;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1676;
	label$1677:;
	if( V1DTYPE$1 != 10 ) goto label$1678;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1676;
	label$1678:;
	if( V1DTYPE$1 != 9 ) goto label$1679;
	{
		V1DTYPE$1 = 14;
	}
	label$1679:;
	label$1676:;
	if( V2DTYPE$1 != 8 ) goto label$1681;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1680;
	label$1681:;
	if( V2DTYPE$1 != 10 ) goto label$1682;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1680;
	label$1682:;
	if( V2DTYPE$1 != 9 ) goto label$1683;
	{
		V2DTYPE$1 = 14;
	}
	label$1683:;
	label$1680:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1684;
	TMP$2150$1 = 24;
	goto label$3106;
	label$1684:;
	TMP$2150$1 = V1DTYPE$1 & 31;
	label$3106:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1685;
	TMP$2151$1 = 24;
	goto label$3107;
	label$1685:;
	TMP$2151$1 = V2DTYPE$1 & 31;
	label$3107:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1686;
	TMP$2152$1 = 24;
	goto label$3108;
	label$1686:;
	TMP$2152$1 = V1DTYPE$1 & 31;
	label$3108:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1687;
	TMP$2153$1 = 24;
	goto label$3109;
	label$1687:;
	TMP$2153$1 = V2DTYPE$1 & 31;
	label$3109:;
	if( (((-(*(int32*)V1$1 == 4) & -(*(int32*)V2$1 == 4)) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2150$1 * 28)) + 4) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2151$1 * 28)) + 4))) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2152$1 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2153$1 * 28)))) == 0 ) goto label$1689;
	{
		*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1689:;
	label$1688:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 13)) | (-(V1DTYPE$1 == 14) & -(V2DTYPE$1 == 14))) == 0 ) goto label$1691;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1691:;
	label$1690:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 14)) | (-(V2DTYPE$1 == 13) & -(V1DTYPE$1 == 14))) == 0 ) goto label$1693;
	{
		V1OLD$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		__builtin_memcpy( V1$1, V2$1, 72 );
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = V1OLD$1;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1693:;
	label$1692:;
	if( (-(V1DTYPE$1 == 17) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1695;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1695:;
	label$1694:;
	if( (-(V1DTYPE$1 == 20) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1697;
	{
		struct $8FBSYMBOL* V1SUBTYPE$2;
		V1SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)V1$1 + 8);
		__builtin_memcpy( V1$1, V2$1, 72 );
		*(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) = V1SUBTYPE$2;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1697:;
	label$1696:;
	REG_FINDFREE( *(int32*)((uint8*)V1$1 + 12), -1 );
	int32 vr$142 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
	REGRESULT$1 = vr$142;
	if( V1DTYPE$1 != 17 ) goto label$1699;
	{
		V1DTYPE$1 = 13;
		label$1699:;
	}
	{
		if( V1DTYPE$1 == 13 ) goto label$1702;
		label$1703:;
		if( V1DTYPE$1 == 14 ) goto label$1702;
		label$1704:;
		if( V1DTYPE$1 == 16 ) goto label$1702;
		label$1705:;
		if( V1DTYPE$1 != 20 ) goto label$1701;
		label$1702:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1700;
		label$1701:;
		if( V1DTYPE$1 == 11 ) goto label$1707;
		label$1708:;
		if( V1DTYPE$1 == 12 ) goto label$1707;
		label$1709:;
		if( V1DTYPE$1 != 15 ) goto label$1706;
		label$1707:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1700;
		label$1706:;
		if( V1DTYPE$1 == 5 ) goto label$1711;
		label$1712:;
		if( V1DTYPE$1 != 6 ) goto label$1710;
		label$1711:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1700;
		label$1710:;
		if( V1DTYPE$1 == 2 ) goto label$1714;
		label$1715:;
		if( V1DTYPE$1 == 3 ) goto label$1714;
		label$1716:;
		if( V1DTYPE$1 == 1 ) goto label$1714;
		label$1717:;
		if( V1DTYPE$1 != 4 ) goto label$1713;
		label$1714:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1700;
		label$1713:;
		{
			FBSTRING TMP$2154$3;
			FBSTRING TMP$2158$3;
			FBSTRING TMP$2159$3;
			FBSTRING TMP$2160$3;
			__builtin_memset( &TMP$2154$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2154$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2154$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2154$3 );
			__builtin_memset( &TMP$2159$3, 0, 12 );
			FBSTRING* vr$161 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$2158$3, 0, 12 );
			FBSTRING* vr$164 = fb_StrConcat( &TMP$2158$3, (void*)"FOUND AN ERROR : converting datatype not handled 01 = ", 55, (void*)vr$161, -1 );
			fb_StrAssign( (void*)&TMP$2159$3, -1, (void*)vr$164, -1, 0 );
			HWRITEASM64( &TMP$2159$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2159$3 );
			__builtin_memset( &TMP$2160$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2160$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2160$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2160$3 );
		}
		label$1718:;
		label$1700:;
	}
	{
		if( V2DTYPE$1 == 13 ) goto label$1721;
		label$1722:;
		if( V2DTYPE$1 == 14 ) goto label$1721;
		label$1723:;
		if( V2DTYPE$1 == 16 ) goto label$1721;
		label$1724:;
		if( V2DTYPE$1 != 20 ) goto label$1720;
		label$1721:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1719;
		label$1720:;
		if( V2DTYPE$1 == 11 ) goto label$1726;
		label$1727:;
		if( V2DTYPE$1 == 12 ) goto label$1726;
		label$1728:;
		if( V2DTYPE$1 != 15 ) goto label$1725;
		label$1726:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1719;
		label$1725:;
		if( V2DTYPE$1 == 5 ) goto label$1730;
		label$1731:;
		if( V2DTYPE$1 != 6 ) goto label$1729;
		label$1730:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1719;
		label$1729:;
		if( V2DTYPE$1 == 2 ) goto label$1733;
		label$1734:;
		if( V2DTYPE$1 == 3 ) goto label$1733;
		label$1735:;
		if( V2DTYPE$1 == 1 ) goto label$1733;
		label$1736:;
		if( V2DTYPE$1 != 4 ) goto label$1732;
		label$1733:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1719;
		label$1732:;
		if( V2DTYPE$1 != 7 ) goto label$1737;
		label$1738:;
		{
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 2 ) goto label$1740;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
				V2DTYPE$1 = 6;
			}
			goto label$1739;
			label$1740:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 4 ) goto label$1741;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
				V2DTYPE$1 = 12;
			}
			goto label$1739;
			label$1741:;
			{
				FBSTRING TMP$2161$4;
				FBSTRING TMP$2164$4;
				FBSTRING TMP$2165$4;
				__builtin_memset( &TMP$2161$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2161$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2161$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2161$4 );
				__builtin_memset( &TMP$2164$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2164$4, -1, (void*)"FOUND AN ERROR : converting datatype WCHAR not handled", 55, 0 );
				HWRITEASM64( &TMP$2164$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2164$4 );
				__builtin_memset( &TMP$2165$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2165$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2165$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2165$4 );
			}
			label$1739:;
		}
		goto label$1719;
		label$1737:;
		{
			FBSTRING TMP$2166$3;
			FBSTRING TMP$2170$3;
			FBSTRING TMP$2171$3;
			FBSTRING TMP$2172$3;
			__builtin_memset( &TMP$2166$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2166$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2166$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2166$3 );
			__builtin_memset( &TMP$2171$3, 0, 12 );
			FBSTRING* vr$196 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
			__builtin_memset( &TMP$2170$3, 0, 12 );
			FBSTRING* vr$199 = fb_StrConcat( &TMP$2170$3, (void*)"FOUND AN ERROR : converting datatype not handled 02 = ", 55, (void*)vr$196, -1 );
			fb_StrAssign( (void*)&TMP$2171$3, -1, (void*)vr$199, -1, 0 );
			HWRITEASM64( &TMP$2171$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2171$3 );
			__builtin_memset( &TMP$2172$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2172$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2172$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2172$3 );
		}
		label$1742:;
		label$1719:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$2173$2;
		TMP$2173$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2173$2 != 2 ) goto label$1744;
		label$1745:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1743;
		label$1744:;
		if( TMP$2173$2 != 4 ) goto label$1746;
		label$1747:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			int32 vr$212 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			SRCREG$1 = vr$212;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1749;
			{
				V2DTYPE$1 = 13;
				label$1749:;
			}
			{
				if( V2DTYPE$1 == 13 ) goto label$1752;
				label$1753:;
				if( V2DTYPE$1 == 14 ) goto label$1752;
				label$1754:;
				if( V2DTYPE$1 != 16 ) goto label$1751;
				label$1752:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1750;
				label$1751:;
				if( V2DTYPE$1 == 11 ) goto label$1756;
				label$1757:;
				if( V2DTYPE$1 == 12 ) goto label$1756;
				label$1758:;
				if( V2DTYPE$1 != 15 ) goto label$1755;
				label$1756:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1750;
				label$1755:;
				if( V2DTYPE$1 == 5 ) goto label$1760;
				label$1761:;
				if( V2DTYPE$1 != 6 ) goto label$1759;
				label$1760:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1750;
				label$1759:;
				if( V2DTYPE$1 == 2 ) goto label$1763;
				label$1764:;
				if( V2DTYPE$1 == 3 ) goto label$1763;
				label$1765:;
				if( V2DTYPE$1 == 1 ) goto label$1763;
				label$1766:;
				if( V2DTYPE$1 != 4 ) goto label$1762;
				label$1763:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1750;
				label$1762:;
				{
					FBSTRING TMP$2174$5;
					FBSTRING TMP$2178$5;
					FBSTRING TMP$2179$5;
					FBSTRING TMP$2180$5;
					__builtin_memset( &TMP$2174$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2174$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2174$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2174$5 );
					__builtin_memset( &TMP$2179$5, 0, 12 );
					FBSTRING* vr$228 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2178$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$2178$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$228, -1 );
					fb_StrAssign( (void*)&TMP$2179$5, -1, (void*)vr$231, -1, 0 );
					HWRITEASM64( &TMP$2179$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2179$5 );
					__builtin_memset( &TMP$2180$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2180$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2180$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2180$5 );
				}
				label$1767:;
				label$1750:;
			}
		}
		goto label$1743;
		label$1746:;
		if( TMP$2173$2 != 1 ) goto label$1768;
		label$1769:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1771;
			{
				int32 TMP$2181$4;
				if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$1772;
				int32 vr$249 = FBGETOPTION( 0 );
				TMP$2181$4 = -(vr$249 == 2);
				goto label$3110;
				label$1772:;
				TMP$2181$4 = 0;
				label$3110:;
				if( TMP$2181$4 == 0 ) goto label$1774;
				{
					FBSTRING TMP$2182$5;
					char* vr$252 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$2182$5, 0, 12 );
					FBSTRING* vr$255 = fb_StrConcat( &TMP$2182$5, (void*)vr$252, 0, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$255, -1, 0 );
				}
				goto label$1773;
				label$1774:;
				{
					FBSTRING TMP$2183$5;
					FBSTRING TMP$2184$5;
					FBSTRING TMP$2185$5;
					FBSTRING* vr$258 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					char* vr$260 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$2183$5, 0, 12 );
					FBSTRING* vr$263 = fb_StrConcat( &TMP$2183$5, (void*)vr$260, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2184$5, 0, 12 );
					FBSTRING* vr$266 = fb_StrConcat( &TMP$2184$5, (void*)vr$263, -1, (void*)vr$258, -1 );
					__builtin_memset( &TMP$2185$5, 0, 12 );
					FBSTRING* vr$269 = fb_StrConcat( &TMP$2185$5, (void*)vr$266, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$269, -1, 0 );
				}
				label$1773:;
			}
			goto label$1770;
			label$1771:;
			{
				FBSTRING TMP$2186$4;
				FBSTRING* vr$272 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2186$4, 0, 12 );
				FBSTRING* vr$275 = fb_StrConcat( &TMP$2186$4, (void*)vr$272, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$275, -1, 0 );
			}
			label$1770:;
		}
		goto label$1743;
		label$1768:;
		if( TMP$2173$2 != 3 ) goto label$1775;
		label$1776:;
		{
			FBSTRING TMP$2187$3;
			FBSTRING TMP$2188$3;
			FBSTRING TMP$2189$3;
			int32 vr$279 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$282 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$2187$3, 0, 12 );
			FBSTRING* vr$285 = fb_StrConcat( &TMP$2187$3, (void*)vr$282, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2188$3, 0, 12 );
			FBSTRING* vr$288 = fb_StrConcat( &TMP$2188$3, (void*)vr$285, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$279 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2189$3, 0, 12 );
			FBSTRING* vr$291 = fb_StrConcat( &TMP$2189$3, (void*)vr$288, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$291, -1, 0 );
		}
		goto label$1743;
		label$1775:;
		if( TMP$2173$2 != 5 ) goto label$1777;
		label$1778:;
		{
			FBSTRING TMP$2190$3;
			FBSTRING TMP$2191$3;
			FBSTRING TMP$2192$3;
			int32 TMP$2193$3;
			int32 TMP$2194$3;
			FBSTRING* vr$294 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			char* vr$296 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2190$3, 0, 12 );
			FBSTRING* vr$299 = fb_StrConcat( &TMP$2190$3, (void*)vr$296, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2191$3, 0, 12 );
			FBSTRING* vr$302 = fb_StrConcat( &TMP$2191$3, (void*)vr$299, -1, (void*)vr$294, -1 );
			__builtin_memset( &TMP$2192$3, 0, 12 );
			FBSTRING* vr$305 = fb_StrConcat( &TMP$2192$3, (void*)vr$302, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$305, -1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$1779;
			TMP$2193$3 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
			goto label$3111;
			label$1779:;
			TMP$2193$3 = 0;
			label$3111:;
			if( TMP$2193$3 == 0 ) goto label$1780;
			int32 vr$311 = FBGETOPTION( 0 );
			TMP$2194$3 = -(vr$311 == 2);
			goto label$3112;
			label$1780:;
			TMP$2194$3 = 0;
			label$3112:;
			if( TMP$2194$3 == 0 ) goto label$1782;
			{
				FBSTRING TMP$2196$4;
				FBSTRING TMP$2197$4;
				FBSTRING TMP$2198$4;
				FBSTRING TMP$2199$4;
				FBSTRING TMP$2200$4;
				FBSTRING TMP$2201$4;
				__builtin_memset( &TMP$2198$4, 0, 12 );
				FBSTRING* vr$314 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$316 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$314 );
				FBSTRING* vr$319 = fb_LEFT( (FBSTRING*)&OP2$1, vr$316 + -1 );
				__builtin_memset( &TMP$2196$4, 0, 12 );
				FBSTRING* vr$322 = fb_StrConcat( &TMP$2196$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$319, -1 );
				__builtin_memset( &TMP$2197$4, 0, 12 );
				FBSTRING* vr$325 = fb_StrConcat( &TMP$2197$4, (void*)vr$322, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2198$4, -1, (void*)vr$325, -1, 0 );
				HWRITEASM64( &TMP$2198$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2198$4 );
				__builtin_memset( &TMP$2201$4, 0, 12 );
				__builtin_memset( &TMP$2199$4, 0, 12 );
				FBSTRING* vr$333 = fb_StrConcat( &TMP$2199$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2200$4, 0, 12 );
				FBSTRING* vr$336 = fb_StrConcat( &TMP$2200$4, (void*)vr$333, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2201$4, -1, (void*)vr$336, -1, 0 );
				HWRITEASM64( &TMP$2201$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2201$4 );
			}
			goto label$1781;
			label$1782:;
			{
				FBSTRING TMP$2202$4;
				FBSTRING TMP$2203$4;
				FBSTRING TMP$2204$4;
				FBSTRING TMP$2205$4;
				__builtin_memset( &TMP$2205$4, 0, 12 );
				__builtin_memset( &TMP$2202$4, 0, 12 );
				FBSTRING* vr$345 = fb_StrConcat( &TMP$2202$4, (void*)"lea ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2203$4, 0, 12 );
				FBSTRING* vr$348 = fb_StrConcat( &TMP$2203$4, (void*)vr$345, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2204$4, 0, 12 );
				FBSTRING* vr$351 = fb_StrConcat( &TMP$2204$4, (void*)vr$348, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2205$4, -1, (void*)vr$351, -1, 0 );
				HWRITEASM64( &TMP$2205$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2205$4 );
			}
			label$1781:;
			fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
			fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
			fb_StrDelete( (FBSTRING*)&OP4$1 );
			fb_StrDelete( (FBSTRING*)&OP3$1 );
			fb_StrDelete( (FBSTRING*)&OP2$1 );
			fb_StrDelete( (FBSTRING*)&OP1$1 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			fb_StrDelete( (FBSTRING*)&LNAME2$1 );
			fb_StrDelete( (FBSTRING*)&LNAME1$1 );
			goto label$1667;
		}
		goto label$1743;
		label$1777:;
		if( TMP$2173$2 != 0 ) goto label$1783;
		label$1784:;
		{
			int32 TMP$2206$3;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1785;
			TMP$2206$3 = 24;
			goto label$3113;
			label$1785:;
			TMP$2206$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3113:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2206$3 * 28)) != 1 ) goto label$1787;
			{
				FBSTRING* vr$372 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$372, -1, 0 );
			}
			goto label$1786;
			label$1787:;
			{
				FBSTRING* vr$375 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$375, -1, 0 );
			}
			label$1786:;
		}
		goto label$1743;
		label$1783:;
		{
			FBSTRING TMP$2207$3;
			FBSTRING TMP$2210$3;
			FBSTRING TMP$2211$3;
			__builtin_memset( &TMP$2207$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2207$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2207$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2207$3 );
			__builtin_memset( &TMP$2210$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2210$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2210$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2210$3 );
			__builtin_memset( &TMP$2211$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2211$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2211$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2211$3 );
		}
		label$1788:;
		label$1743:;
	}
	int32 vr$390 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$390 == 0 ) goto label$1790;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1790:;
	}
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1791;
	TMP$2212$1 = 24;
	goto label$3114;
	label$1791:;
	TMP$2212$1 = V1DTYPE$1 & 31;
	label$3114:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2212$1 * 28)) != 1 ) goto label$1793;
	{
		int32 TMP$2213$2;
		if( (V2DTYPE$1 & 480) == 0 ) goto label$1794;
		TMP$2213$2 = 24;
		goto label$3115;
		label$1794:;
		TMP$2213$2 = V2DTYPE$1 & 31;
		label$3115:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2213$2 * 28)) != 1 ) goto label$1796;
		{
			if( V1DTYPE$1 != 16 ) goto label$1798;
			{
				FBSTRING TMP$2218$4;
				FBSTRING TMP$2219$4;
				FBSTRING TMP$2220$4;
				FBSTRING TMP$2221$4;
				FBSTRING TMP$2222$4;
				if( *(int32*)V2$1 != 4 ) goto label$1800;
				{
					FBSTRING TMP$2214$5;
					FBSTRING TMP$2215$5;
					__builtin_memset( &TMP$2215$5, 0, 12 );
					__builtin_memset( &TMP$2214$5, 0, 12 );
					FBSTRING* vr$403 = fb_StrConcat( &TMP$2214$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2215$5, -1, (void*)vr$403, -1, 0 );
					HWRITEASM64( &TMP$2215$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2215$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm0", 5, 0 );
				}
				label$1800:;
				label$1799:;
				__builtin_memset( &TMP$2219$4, 0, 12 );
				__builtin_memset( &TMP$2218$4, 0, 12 );
				FBSTRING* vr$412 = fb_StrConcat( &TMP$2218$4, (void*)"cvtss2sd xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2219$4, -1, (void*)vr$412, -1, 0 );
				HWRITEASM64( &TMP$2219$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2219$4 );
				__builtin_memset( &TMP$2222$4, 0, 12 );
				__builtin_memset( &TMP$2220$4, 0, 12 );
				FBSTRING* vr$420 = fb_StrConcat( &TMP$2220$4, (void*)"movq ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2221$4, 0, 12 );
				FBSTRING* vr$423 = fb_StrConcat( &TMP$2221$4, (void*)vr$420, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2222$4, -1, (void*)vr$423, -1, 0 );
				HWRITEASM64( &TMP$2222$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2222$4 );
			}
			goto label$1797;
			label$1798:;
			{
				FBSTRING TMP$2228$4;
				FBSTRING TMP$2229$4;
				FBSTRING TMP$2230$4;
				FBSTRING TMP$2231$4;
				FBSTRING TMP$2232$4;
				if( *(int32*)V2$1 != 4 ) goto label$1802;
				{
					FBSTRING TMP$2224$5;
					FBSTRING TMP$2225$5;
					__builtin_memset( &TMP$2225$5, 0, 12 );
					__builtin_memset( &TMP$2224$5, 0, 12 );
					FBSTRING* vr$432 = fb_StrConcat( &TMP$2224$5, (void*)"movq xmm1, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2225$5, -1, (void*)vr$432, -1, 0 );
					HWRITEASM64( &TMP$2225$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2225$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm1", 5, 0 );
				}
				label$1802:;
				label$1801:;
				__builtin_memset( &TMP$2229$4, 0, 12 );
				__builtin_memset( &TMP$2228$4, 0, 12 );
				FBSTRING* vr$441 = fb_StrConcat( &TMP$2228$4, (void*)"cvtsd2ss xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2229$4, -1, (void*)vr$441, -1, 0 );
				HWRITEASM64( &TMP$2229$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2229$4 );
				__builtin_memset( &TMP$2232$4, 0, 12 );
				__builtin_memset( &TMP$2230$4, 0, 12 );
				FBSTRING* vr$449 = fb_StrConcat( &TMP$2230$4, (void*)"movd ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2231$4, 0, 12 );
				FBSTRING* vr$452 = fb_StrConcat( &TMP$2231$4, (void*)vr$449, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2232$4, -1, (void*)vr$452, -1, 0 );
				HWRITEASM64( &TMP$2232$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2232$4 );
			}
			label$1797:;
		}
		goto label$1795;
		label$1796:;
		{
			FBSTRING TMP$2234$3;
			__builtin_memset( &TMP$2234$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2234$3, -1, (void*)"pxor xmm0,xmm0", 15, 0 );
			HWRITEASM64( &TMP$2234$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2234$3 );
			{
				if( V2DTYPE$1 != 14 ) goto label$1804;
				label$1805:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1807;
					{
						FBSTRING TMP$2235$6;
						FBSTRING TMP$2236$6;
						FBSTRING TMP$2238$6;
						FBSTRING TMP$2240$6;
						FBSTRING TMP$2241$6;
						FBSTRING TMP$2243$6;
						FBSTRING TMP$2244$6;
						FBSTRING TMP$2245$6;
						FBSTRING TMP$2246$6;
						FBSTRING TMP$2247$6;
						FBSTRING TMP$2248$6;
						FBSTRING TMP$2249$6;
						FBSTRING TMP$2250$6;
						FBSTRING TMP$2251$6;
						FBSTRING TMP$2252$6;
						FBSTRING TMP$2254$6;
						FBSTRING TMP$2255$6;
						FBSTRING TMP$2256$6;
						FBSTRING TMP$2257$6;
						FBSTRING TMP$2259$6;
						FBSTRING TMP$2260$6;
						FBSTRING TMP$2262$6;
						FBSTRING TMP$2263$6;
						FBSTRING TMP$2264$6;
						FBSTRING TMP$2265$6;
						FBSTRING TMP$2266$6;
						FBSTRING TMP$2267$6;
						__builtin_memset( &TMP$2236$6, 0, 12 );
						__builtin_memset( &TMP$2235$6, 0, 12 );
						FBSTRING* vr$464 = fb_StrConcat( &TMP$2235$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2236$6, -1, (void*)vr$464, -1, 0 );
						HWRITEASM64( &TMP$2236$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2236$6 );
						__builtin_memset( &TMP$2238$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2238$6, -1, (void*)"test  rax, rax", 15, 0 );
						HWRITEASM64( &TMP$2238$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2238$6 );
						char* vr$472 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$472, 0, 0 );
						__builtin_memset( &TMP$2241$6, 0, 12 );
						__builtin_memset( &TMP$2240$6, 0, 12 );
						FBSTRING* vr$478 = fb_StrConcat( &TMP$2240$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2241$6, -1, (void*)vr$478, -1, 0 );
						HWRITEASM64( &TMP$2241$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2241$6 );
						__builtin_memset( &TMP$2243$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2243$6, -1, (void*)"cvtsi2sd xmm0, rax", 19, 0 );
						HWRITEASM64( &TMP$2243$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2243$6 );
						char* vr$486 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$486, 0, 0 );
						__builtin_memset( &TMP$2245$6, 0, 12 );
						__builtin_memset( &TMP$2244$6, 0, 12 );
						FBSTRING* vr$492 = fb_StrConcat( &TMP$2244$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2245$6, -1, (void*)vr$492, -1, 0 );
						HWRITEASM64( &TMP$2245$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2245$6 );
						__builtin_memset( &TMP$2247$6, 0, 12 );
						__builtin_memset( &TMP$2246$6, 0, 12 );
						FBSTRING* vr$500 = fb_StrConcat( &TMP$2246$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2247$6, -1, (void*)vr$500, -1, 0 );
						HWRITEASM64( &TMP$2247$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2247$6 );
						int32 vr$504 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$504;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2250$6, 0, 12 );
						__builtin_memset( &TMP$2248$6, 0, 12 );
						FBSTRING* vr$512 = fb_StrConcat( &TMP$2248$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2249$6, 0, 12 );
						FBSTRING* vr$515 = fb_StrConcat( &TMP$2249$6, (void*)vr$512, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2250$6, -1, (void*)vr$515, -1, 0 );
						HWRITEASM64( &TMP$2250$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2250$6 );
						__builtin_memset( &TMP$2252$6, 0, 12 );
						__builtin_memset( &TMP$2251$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$2251$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2252$6, -1, (void*)vr$523, -1, 0 );
						HWRITEASM64( &TMP$2252$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2252$6 );
						__builtin_memset( &TMP$2254$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2254$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2254$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2254$6 );
						__builtin_memset( &TMP$2257$6, 0, 12 );
						__builtin_memset( &TMP$2255$6, 0, 12 );
						FBSTRING* vr$535 = fb_StrConcat( &TMP$2255$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2256$6, 0, 12 );
						FBSTRING* vr$538 = fb_StrConcat( &TMP$2256$6, (void*)vr$535, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2257$6, -1, (void*)vr$538, -1, 0 );
						HWRITEASM64( &TMP$2257$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2257$6 );
						__builtin_memset( &TMP$2260$6, 0, 12 );
						__builtin_memset( &TMP$2259$6, 0, 12 );
						FBSTRING* vr$546 = fb_StrConcat( &TMP$2259$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2260$6, -1, (void*)vr$546, -1, 0 );
						HWRITEASM64( &TMP$2260$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2260$6 );
						__builtin_memset( &TMP$2262$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2262$6, -1, (void*)"addsd xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2262$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2262$6 );
						__builtin_memset( &TMP$2264$6, 0, 12 );
						__builtin_memset( &TMP$2263$6, 0, 12 );
						FBSTRING* vr$558 = fb_StrConcat( &TMP$2263$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2264$6, -1, (void*)vr$558, -1, 0 );
						HWRITEASM64( &TMP$2264$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2264$6 );
						__builtin_memset( &TMP$2267$6, 0, 12 );
						__builtin_memset( &TMP$2265$6, 0, 12 );
						FBSTRING* vr$566 = fb_StrConcat( &TMP$2265$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2266$6, 0, 12 );
						FBSTRING* vr$569 = fb_StrConcat( &TMP$2266$6, (void*)vr$566, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2267$6, -1, (void*)vr$569, -1, 0 );
						HWRITEASM64( &TMP$2267$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2267$6 );
					}
					goto label$1806;
					label$1807:;
					{
						FBSTRING TMP$2268$6;
						FBSTRING TMP$2269$6;
						FBSTRING TMP$2271$6;
						FBSTRING TMP$2272$6;
						FBSTRING TMP$2273$6;
						FBSTRING TMP$2275$6;
						FBSTRING TMP$2276$6;
						FBSTRING TMP$2277$6;
						FBSTRING TMP$2278$6;
						FBSTRING TMP$2279$6;
						FBSTRING TMP$2280$6;
						FBSTRING TMP$2281$6;
						FBSTRING TMP$2282$6;
						FBSTRING TMP$2283$6;
						FBSTRING TMP$2284$6;
						FBSTRING TMP$2285$6;
						FBSTRING TMP$2286$6;
						FBSTRING TMP$2287$6;
						FBSTRING TMP$2288$6;
						FBSTRING TMP$2290$6;
						FBSTRING TMP$2291$6;
						FBSTRING TMP$2293$6;
						FBSTRING TMP$2294$6;
						FBSTRING TMP$2295$6;
						FBSTRING TMP$2296$6;
						FBSTRING TMP$2297$6;
						FBSTRING TMP$2298$6;
						__builtin_memset( &TMP$2269$6, 0, 12 );
						__builtin_memset( &TMP$2268$6, 0, 12 );
						FBSTRING* vr$577 = fb_StrConcat( &TMP$2268$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2269$6, -1, (void*)vr$577, -1, 0 );
						HWRITEASM64( &TMP$2269$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2269$6 );
						__builtin_memset( &TMP$2271$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2271$6, -1, (void*)"test rax, rax", 14, 0 );
						HWRITEASM64( &TMP$2271$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2271$6 );
						char* vr$585 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$585, 0, 0 );
						__builtin_memset( &TMP$2273$6, 0, 12 );
						__builtin_memset( &TMP$2272$6, 0, 12 );
						FBSTRING* vr$591 = fb_StrConcat( &TMP$2272$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2273$6, -1, (void*)vr$591, -1, 0 );
						HWRITEASM64( &TMP$2273$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2273$6 );
						__builtin_memset( &TMP$2275$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2275$6, -1, (void*)"cvtsi2ss  xmm0, rax", 20, 0 );
						HWRITEASM64( &TMP$2275$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2275$6 );
						char* vr$599 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$599, 0, 0 );
						__builtin_memset( &TMP$2277$6, 0, 12 );
						__builtin_memset( &TMP$2276$6, 0, 12 );
						FBSTRING* vr$605 = fb_StrConcat( &TMP$2276$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2277$6, -1, (void*)vr$605, -1, 0 );
						HWRITEASM64( &TMP$2277$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2277$6 );
						__builtin_memset( &TMP$2279$6, 0, 12 );
						__builtin_memset( &TMP$2278$6, 0, 12 );
						FBSTRING* vr$613 = fb_StrConcat( &TMP$2278$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2279$6, -1, (void*)vr$613, -1, 0 );
						HWRITEASM64( &TMP$2279$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2279$6 );
						int32 vr$617 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$617;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2282$6, 0, 12 );
						__builtin_memset( &TMP$2280$6, 0, 12 );
						FBSTRING* vr$625 = fb_StrConcat( &TMP$2280$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2281$6, 0, 12 );
						FBSTRING* vr$628 = fb_StrConcat( &TMP$2281$6, (void*)vr$625, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2282$6, -1, (void*)vr$628, -1, 0 );
						HWRITEASM64( &TMP$2282$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2282$6 );
						__builtin_memset( &TMP$2284$6, 0, 12 );
						__builtin_memset( &TMP$2283$6, 0, 12 );
						FBSTRING* vr$636 = fb_StrConcat( &TMP$2283$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2284$6, -1, (void*)vr$636, -1, 0 );
						HWRITEASM64( &TMP$2284$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2284$6 );
						__builtin_memset( &TMP$2285$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2285$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2285$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2285$6 );
						__builtin_memset( &TMP$2288$6, 0, 12 );
						__builtin_memset( &TMP$2286$6, 0, 12 );
						FBSTRING* vr$648 = fb_StrConcat( &TMP$2286$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2287$6, 0, 12 );
						FBSTRING* vr$651 = fb_StrConcat( &TMP$2287$6, (void*)vr$648, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2288$6, -1, (void*)vr$651, -1, 0 );
						HWRITEASM64( &TMP$2288$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2288$6 );
						__builtin_memset( &TMP$2291$6, 0, 12 );
						__builtin_memset( &TMP$2290$6, 0, 12 );
						FBSTRING* vr$659 = fb_StrConcat( &TMP$2290$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2291$6, -1, (void*)vr$659, -1, 0 );
						HWRITEASM64( &TMP$2291$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2291$6 );
						__builtin_memset( &TMP$2293$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2293$6, -1, (void*)"addss xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2293$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2293$6 );
						__builtin_memset( &TMP$2295$6, 0, 12 );
						__builtin_memset( &TMP$2294$6, 0, 12 );
						FBSTRING* vr$671 = fb_StrConcat( &TMP$2294$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2295$6, -1, (void*)vr$671, -1, 0 );
						HWRITEASM64( &TMP$2295$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2295$6 );
						__builtin_memset( &TMP$2298$6, 0, 12 );
						__builtin_memset( &TMP$2296$6, 0, 12 );
						FBSTRING* vr$679 = fb_StrConcat( &TMP$2296$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2297$6, 0, 12 );
						FBSTRING* vr$682 = fb_StrConcat( &TMP$2297$6, (void*)vr$679, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2298$6, -1, (void*)vr$682, -1, 0 );
						HWRITEASM64( &TMP$2298$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2298$6 );
					}
					label$1806:;
				}
				goto label$1803;
				label$1804:;
				if( V2DTYPE$1 != 13 ) goto label$1808;
				label$1809:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1811;
					{
						FBSTRING TMP$2299$6;
						FBSTRING TMP$2300$6;
						FBSTRING TMP$2301$6;
						FBSTRING TMP$2302$6;
						FBSTRING TMP$2303$6;
						FBSTRING TMP$2304$6;
						__builtin_memset( &TMP$2301$6, 0, 12 );
						__builtin_memset( &TMP$2299$6, 0, 12 );
						FBSTRING* vr$691 = fb_StrConcat( &TMP$2299$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2300$6, 0, 12 );
						FBSTRING* vr$694 = fb_StrConcat( &TMP$2300$6, (void*)vr$691, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2301$6, -1, (void*)vr$694, -1, 0 );
						HWRITEASM64( &TMP$2301$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2301$6 );
						__builtin_memset( &TMP$2304$6, 0, 12 );
						__builtin_memset( &TMP$2302$6, 0, 12 );
						FBSTRING* vr$702 = fb_StrConcat( &TMP$2302$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2303$6, 0, 12 );
						FBSTRING* vr$705 = fb_StrConcat( &TMP$2303$6, (void*)vr$702, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2304$6, -1, (void*)vr$705, -1, 0 );
						HWRITEASM64( &TMP$2304$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2304$6 );
					}
					goto label$1810;
					label$1811:;
					{
						FBSTRING TMP$2305$6;
						FBSTRING TMP$2306$6;
						FBSTRING TMP$2307$6;
						FBSTRING TMP$2308$6;
						FBSTRING TMP$2309$6;
						FBSTRING TMP$2310$6;
						__builtin_memset( &TMP$2307$6, 0, 12 );
						__builtin_memset( &TMP$2305$6, 0, 12 );
						FBSTRING* vr$714 = fb_StrConcat( &TMP$2305$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2306$6, 0, 12 );
						FBSTRING* vr$717 = fb_StrConcat( &TMP$2306$6, (void*)vr$714, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2307$6, -1, (void*)vr$717, -1, 0 );
						HWRITEASM64( &TMP$2307$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2307$6 );
						__builtin_memset( &TMP$2310$6, 0, 12 );
						__builtin_memset( &TMP$2308$6, 0, 12 );
						FBSTRING* vr$725 = fb_StrConcat( &TMP$2308$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2309$6, 0, 12 );
						FBSTRING* vr$728 = fb_StrConcat( &TMP$2309$6, (void*)vr$725, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2310$6, -1, (void*)vr$728, -1, 0 );
						HWRITEASM64( &TMP$2310$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2310$6 );
					}
					label$1810:;
				}
				goto label$1803;
				label$1808:;
				if( V2DTYPE$1 == 11 ) goto label$1813;
				label$1814:;
				if( V2DTYPE$1 != 12 ) goto label$1812;
				label$1813:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1816;
					{
						FBSTRING TMP$2311$6;
						FBSTRING TMP$2312$6;
						FBSTRING TMP$2313$6;
						FBSTRING TMP$2314$6;
						FBSTRING TMP$2315$6;
						FBSTRING TMP$2316$6;
						__builtin_memset( &TMP$2313$6, 0, 12 );
						__builtin_memset( &TMP$2311$6, 0, 12 );
						FBSTRING* vr$737 = fb_StrConcat( &TMP$2311$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2312$6, 0, 12 );
						FBSTRING* vr$740 = fb_StrConcat( &TMP$2312$6, (void*)vr$737, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2313$6, -1, (void*)vr$740, -1, 0 );
						HWRITEASM64( &TMP$2313$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2313$6 );
						__builtin_memset( &TMP$2316$6, 0, 12 );
						__builtin_memset( &TMP$2314$6, 0, 12 );
						FBSTRING* vr$748 = fb_StrConcat( &TMP$2314$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2315$6, 0, 12 );
						FBSTRING* vr$751 = fb_StrConcat( &TMP$2315$6, (void*)vr$748, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2316$6, -1, (void*)vr$751, -1, 0 );
						HWRITEASM64( &TMP$2316$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2316$6 );
					}
					goto label$1815;
					label$1816:;
					{
						FBSTRING TMP$2317$6;
						FBSTRING TMP$2318$6;
						FBSTRING TMP$2319$6;
						FBSTRING TMP$2320$6;
						FBSTRING TMP$2321$6;
						FBSTRING TMP$2322$6;
						__builtin_memset( &TMP$2319$6, 0, 12 );
						__builtin_memset( &TMP$2317$6, 0, 12 );
						FBSTRING* vr$760 = fb_StrConcat( &TMP$2317$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2318$6, 0, 12 );
						FBSTRING* vr$763 = fb_StrConcat( &TMP$2318$6, (void*)vr$760, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2319$6, -1, (void*)vr$763, -1, 0 );
						HWRITEASM64( &TMP$2319$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2319$6 );
						__builtin_memset( &TMP$2322$6, 0, 12 );
						__builtin_memset( &TMP$2320$6, 0, 12 );
						FBSTRING* vr$771 = fb_StrConcat( &TMP$2320$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2321$6, 0, 12 );
						FBSTRING* vr$774 = fb_StrConcat( &TMP$2321$6, (void*)vr$771, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2322$6, -1, (void*)vr$774, -1, 0 );
						HWRITEASM64( &TMP$2322$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2322$6 );
					}
					label$1815:;
				}
				goto label$1803;
				label$1812:;
				if( V2DTYPE$1 == 2 ) goto label$1818;
				label$1819:;
				if( V2DTYPE$1 == 5 ) goto label$1818;
				label$1820:;
				if( V2DTYPE$1 == 3 ) goto label$1818;
				label$1821:;
				if( V2DTYPE$1 == 6 ) goto label$1818;
				label$1822:;
				if( V2DTYPE$1 == 1 ) goto label$1818;
				label$1823:;
				if( V2DTYPE$1 != 4 ) goto label$1817;
				label$1818:;
				{
					if( (-(V2DTYPE$1 == 2) | -(V2DTYPE$1 == 5)) == 0 ) goto label$1825;
					{
						FBSTRING TMP$2324$6;
						FBSTRING TMP$2325$6;
						FBSTRING TMP$2326$6;
						__builtin_memset( &TMP$2326$6, 0, 12 );
						__builtin_memset( &TMP$2324$6, 0, 12 );
						FBSTRING* vr$786 = fb_StrConcat( &TMP$2324$6, (void*)"movsx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2325$6, 0, 12 );
						FBSTRING* vr$789 = fb_StrConcat( &TMP$2325$6, (void*)vr$786, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2326$6, -1, (void*)vr$789, -1, 0 );
						HWRITEASM64( &TMP$2326$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2326$6 );
					}
					goto label$1824;
					label$1825:;
					if( V2DTYPE$1 != 1 ) goto label$1826;
					{
						FBSTRING TMP$2327$6;
						FBSTRING TMP$2328$6;
						FBSTRING TMP$2329$6;
						FBSTRING TMP$2330$6;
						FBSTRING TMP$2332$6;
						FBSTRING TMP$2334$6;
						FBSTRING TMP$2336$6;
						__builtin_memset( &TMP$2330$6, 0, 12 );
						__builtin_memset( &TMP$2327$6, 0, 12 );
						FBSTRING* vr$798 = fb_StrConcat( &TMP$2327$6, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2328$6, 0, 12 );
						FBSTRING* vr$801 = fb_StrConcat( &TMP$2328$6, (void*)vr$798, -1, (void*)&OP2$1, -1 );
						__builtin_memset( &TMP$2329$6, 0, 12 );
						FBSTRING* vr$804 = fb_StrConcat( &TMP$2329$6, (void*)vr$801, -1, (void*)", 0", 4 );
						fb_StrAssign( (void*)&TMP$2330$6, -1, (void*)vr$804, -1, 0 );
						HWRITEASM64( &TMP$2330$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2330$6 );
						__builtin_memset( &TMP$2332$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2332$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2332$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2332$6 );
						__builtin_memset( &TMP$2334$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2334$6, -1, (void*)"neg al", 7, 0 );
						HWRITEASM64( &TMP$2334$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2334$6 );
						__builtin_memset( &TMP$2336$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2336$6, -1, (void*)"movsx eax, al", 14, 0 );
						HWRITEASM64( &TMP$2336$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2336$6 );
					}
					goto label$1824;
					label$1826:;
					{
						FBSTRING TMP$2338$6;
						FBSTRING TMP$2339$6;
						FBSTRING TMP$2340$6;
						__builtin_memset( &TMP$2340$6, 0, 12 );
						__builtin_memset( &TMP$2338$6, 0, 12 );
						FBSTRING* vr$825 = fb_StrConcat( &TMP$2338$6, (void*)"movzx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2339$6, 0, 12 );
						FBSTRING* vr$828 = fb_StrConcat( &TMP$2339$6, (void*)vr$825, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2340$6, -1, (void*)vr$828, -1, 0 );
						HWRITEASM64( &TMP$2340$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2340$6 );
					}
					label$1824:;
					if( V1DTYPE$1 != 16 ) goto label$1828;
					{
						FBSTRING TMP$2342$6;
						FBSTRING TMP$2343$6;
						FBSTRING TMP$2344$6;
						FBSTRING TMP$2345$6;
						__builtin_memset( &TMP$2342$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2342$6, -1, (void*)"cvtsi2sd xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2342$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2342$6 );
						__builtin_memset( &TMP$2345$6, 0, 12 );
						__builtin_memset( &TMP$2343$6, 0, 12 );
						FBSTRING* vr$840 = fb_StrConcat( &TMP$2343$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2344$6, 0, 12 );
						FBSTRING* vr$843 = fb_StrConcat( &TMP$2344$6, (void*)vr$840, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2345$6, -1, (void*)vr$843, -1, 0 );
						HWRITEASM64( &TMP$2345$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2345$6 );
					}
					goto label$1827;
					label$1828:;
					{
						FBSTRING TMP$2347$6;
						FBSTRING TMP$2348$6;
						FBSTRING TMP$2349$6;
						FBSTRING TMP$2350$6;
						__builtin_memset( &TMP$2347$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2347$6, -1, (void*)"cvtsi2ss xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2347$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2347$6 );
						__builtin_memset( &TMP$2350$6, 0, 12 );
						__builtin_memset( &TMP$2348$6, 0, 12 );
						FBSTRING* vr$855 = fb_StrConcat( &TMP$2348$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2349$6, 0, 12 );
						FBSTRING* vr$858 = fb_StrConcat( &TMP$2349$6, (void*)vr$855, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2350$6, -1, (void*)vr$858, -1, 0 );
						HWRITEASM64( &TMP$2350$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2350$6 );
					}
					label$1827:;
				}
				goto label$1803;
				label$1817:;
				{
					FBSTRING TMP$2351$5;
					FBSTRING TMP$2354$5;
					FBSTRING TMP$2355$5;
					__builtin_memset( &TMP$2351$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2351$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2351$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2351$5 );
					__builtin_memset( &TMP$2354$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2354$5, -1, (void*)"FOUND AN ERROR : Converting datatype not handled 04", 52, 0 );
					HWRITEASM64( &TMP$2354$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2354$5 );
					__builtin_memset( &TMP$2355$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2355$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2355$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2355$5 );
				}
				label$1829:;
				label$1803:;
			}
		}
		label$1795:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1793:;
	label$1792:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1830;
	TMP$2356$1 = 24;
	goto label$3116;
	label$1830:;
	TMP$2356$1 = V2DTYPE$1 & 31;
	label$3116:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1831;
	TMP$2357$1 = 24;
	goto label$3117;
	label$1831:;
	TMP$2357$1 = V1DTYPE$1 & 31;
	label$3117:;
	if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2356$1 * 28)) == 1) & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2357$1 * 28)) == 0)) == 0 ) goto label$1833;
	{
		if( V2DTYPE$1 != 16 ) goto label$1835;
		{
			if( V1DTYPE$1 != 14 ) goto label$1837;
			{
				FBSTRING TMP$2359$4;
				FBSTRING TMP$2361$4;
				FBSTRING TMP$2362$4;
				FBSTRING TMP$2363$4;
				FBSTRING TMP$2365$4;
				FBSTRING TMP$2367$4;
				FBSTRING TMP$2369$4;
				FBSTRING TMP$2370$4;
				FBSTRING TMP$2371$4;
				FBSTRING TMP$2372$4;
				FBSTRING TMP$2373$4;
				FBSTRING TMP$2374$4;
				FBSTRING TMP$2375$4;
				FBSTRING TMP$2377$4;
				FBSTRING TMP$2379$4;
				FBSTRING TMP$2380$4;
				FBSTRING TMP$2383$4;
				FBSTRING TMP$2384$4;
				FBSTRING TMP$2385$4;
				FBSTRING TMP$2387$4;
				FBSTRING TMP$2388$4;
				FBSTRING TMP$2389$4;
				FBSTRING TMP$2390$4;
				FBSTRING TMP$2391$4;
				FBSTRING TMP$2392$4;
				FBSTRING TMP$2393$4;
				__builtin_memset( &TMP$2359$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2359$4, -1, (void*)"mov rax, 4890909195324358656", 29, 0 );
				HWRITEASM64( &TMP$2359$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2359$4 );
				__builtin_memset( &TMP$2361$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2361$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2361$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2361$4 );
				__builtin_memset( &TMP$2363$4, 0, 12 );
				__builtin_memset( &TMP$2362$4, 0, 12 );
				FBSTRING* vr$904 = fb_StrConcat( &TMP$2362$4, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2363$4, -1, (void*)vr$904, -1, 0 );
				HWRITEASM64( &TMP$2363$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2363$4 );
				__builtin_memset( &TMP$2365$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2365$4, -1, (void*)"movq xmm0, rax", 15, 0 );
				HWRITEASM64( &TMP$2365$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2365$4 );
				HEMITROUNDFLOAT( 16, 14 );
				__builtin_memset( &TMP$2367$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2367$4, -1, (void*)"ucomisd xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2367$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2367$4 );
				char* vr$916 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$916, 0, 0 );
				__builtin_memset( &TMP$2370$4, 0, 12 );
				__builtin_memset( &TMP$2369$4, 0, 12 );
				FBSTRING* vr$922 = fb_StrConcat( &TMP$2369$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2370$4, -1, (void*)vr$922, -1, 0 );
				HWRITEASM64( &TMP$2370$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2370$4 );
				__builtin_memset( &TMP$2371$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2371$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2371$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2371$4 );
				char* vr$930 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$930, 0, 0 );
				__builtin_memset( &TMP$2373$4, 0, 12 );
				__builtin_memset( &TMP$2372$4, 0, 12 );
				FBSTRING* vr$936 = fb_StrConcat( &TMP$2372$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2373$4, -1, (void*)vr$936, -1, 0 );
				HWRITEASM64( &TMP$2373$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2373$4 );
				__builtin_memset( &TMP$2375$4, 0, 12 );
				__builtin_memset( &TMP$2374$4, 0, 12 );
				FBSTRING* vr$944 = fb_StrConcat( &TMP$2374$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2375$4, -1, (void*)vr$944, -1, 0 );
				HWRITEASM64( &TMP$2375$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2375$4 );
				__builtin_memset( &TMP$2377$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2377$4, -1, (void*)"movsd xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2377$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2377$4 );
				__builtin_memset( &TMP$2379$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2379$4, -1, (void*)"subsd xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2379$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2379$4 );
				__builtin_memset( &TMP$2380$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2380$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2380$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2380$4 );
				int32 vr$960 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$960;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2385$4, 0, 12 );
				__builtin_memset( &TMP$2383$4, 0, 12 );
				FBSTRING* vr$968 = fb_StrConcat( &TMP$2383$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2384$4, 0, 12 );
				FBSTRING* vr$971 = fb_StrConcat( &TMP$2384$4, (void*)vr$968, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2385$4, -1, (void*)vr$971, -1, 0 );
				HWRITEASM64( &TMP$2385$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2385$4 );
				__builtin_memset( &TMP$2388$4, 0, 12 );
				__builtin_memset( &TMP$2387$4, 0, 12 );
				FBSTRING* vr$979 = fb_StrConcat( &TMP$2387$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2388$4, -1, (void*)vr$979, -1, 0 );
				HWRITEASM64( &TMP$2388$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2388$4 );
				__builtin_memset( &TMP$2390$4, 0, 12 );
				__builtin_memset( &TMP$2389$4, 0, 12 );
				FBSTRING* vr$987 = fb_StrConcat( &TMP$2389$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2390$4, -1, (void*)vr$987, -1, 0 );
				HWRITEASM64( &TMP$2390$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2390$4 );
				__builtin_memset( &TMP$2393$4, 0, 12 );
				__builtin_memset( &TMP$2391$4, 0, 12 );
				FBSTRING* vr$995 = fb_StrConcat( &TMP$2391$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2392$4, 0, 12 );
				FBSTRING* vr$998 = fb_StrConcat( &TMP$2392$4, (void*)vr$995, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2393$4, -1, (void*)vr$998, -1, 0 );
				HWRITEASM64( &TMP$2393$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2393$4 );
			}
			goto label$1836;
			label$1837:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1838;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1840;
				{
					FBSTRING TMP$2394$5;
					FBSTRING TMP$2395$5;
					__builtin_memset( &TMP$2395$5, 0, 12 );
					__builtin_memset( &TMP$2394$5, 0, 12 );
					FBSTRING* vr$1024 = fb_StrConcat( &TMP$2394$5, (void*)"movq xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2395$5, -1, (void*)vr$1024, -1, 0 );
					HWRITEASM64( &TMP$2395$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2395$5 );
				}
				goto label$1839;
				label$1840:;
				{
					FBSTRING TMP$2396$5;
					FBSTRING TMP$2397$5;
					__builtin_memset( &TMP$2397$5, 0, 12 );
					__builtin_memset( &TMP$2396$5, 0, 12 );
					FBSTRING* vr$1032 = fb_StrConcat( &TMP$2396$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2397$5, -1, (void*)vr$1032, -1, 0 );
					HWRITEASM64( &TMP$2397$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2397$5 );
				}
				label$1839:;
				HEMITROUNDFLOAT( 16, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1842;
				{
					FBSTRING TMP$2398$5;
					FBSTRING TMP$2399$5;
					FBSTRING TMP$2400$5;
					__builtin_memset( &TMP$2400$5, 0, 12 );
					__builtin_memset( &TMP$2398$5, 0, 12 );
					FBSTRING* vr$1040 = fb_StrConcat( &TMP$2398$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2399$5, 0, 12 );
					FBSTRING* vr$1043 = fb_StrConcat( &TMP$2399$5, (void*)vr$1040, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2400$5, -1, (void*)vr$1043, -1, 0 );
					HWRITEASM64( &TMP$2400$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2400$5 );
				}
				goto label$1841;
				label$1842:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1843;
				{
					FBSTRING TMP$2401$5;
					FBSTRING TMP$2402$5;
					FBSTRING TMP$2403$5;
					__builtin_memset( &TMP$2403$5, 0, 12 );
					__builtin_memset( &TMP$2401$5, 0, 12 );
					FBSTRING* vr$1054 = fb_StrConcat( &TMP$2401$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2402$5, 0, 12 );
					FBSTRING* vr$1057 = fb_StrConcat( &TMP$2402$5, (void*)vr$1054, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2403$5, -1, (void*)vr$1057, -1, 0 );
					HWRITEASM64( &TMP$2403$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2403$5 );
				}
				goto label$1841;
				label$1843:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1844;
				{
					FBSTRING TMP$2405$5;
					FBSTRING TMP$2406$5;
					FBSTRING TMP$2407$5;
					__builtin_memset( &TMP$2407$5, 0, 12 );
					__builtin_memset( &TMP$2405$5, 0, 12 );
					FBSTRING* vr$1068 = fb_StrConcat( &TMP$2405$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2406$5, 0, 12 );
					FBSTRING* vr$1071 = fb_StrConcat( &TMP$2406$5, (void*)vr$1068, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2407$5, -1, (void*)vr$1071, -1, 0 );
					HWRITEASM64( &TMP$2407$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2407$5 );
				}
				goto label$1841;
				label$1844:;
				{
					FBSTRING TMP$2410$5;
					FBSTRING TMP$2411$5;
					FBSTRING TMP$2412$5;
					if( V1DTYPE$1 != 1 ) goto label$1846;
					{
						FBSTRING TMP$2408$6;
						FBSTRING TMP$2409$6;
						__builtin_memset( &TMP$2408$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2408$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2408$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2408$6 );
						__builtin_memset( &TMP$2409$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2409$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2409$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2409$6 );
					}
					label$1846:;
					label$1845:;
					__builtin_memset( &TMP$2412$5, 0, 12 );
					__builtin_memset( &TMP$2410$5, 0, 12 );
					FBSTRING* vr$1087 = fb_StrConcat( &TMP$2410$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2411$5, 0, 12 );
					FBSTRING* vr$1090 = fb_StrConcat( &TMP$2411$5, (void*)vr$1087, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2412$5, -1, (void*)vr$1090, -1, 0 );
					HWRITEASM64( &TMP$2412$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2412$5 );
				}
				label$1841:;
			}
			goto label$1836;
			label$1838:;
			{
				FBSTRING TMP$2413$4;
				FBSTRING TMP$2416$4;
				FBSTRING TMP$2417$4;
				__builtin_memset( &TMP$2413$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2413$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2413$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2413$4 );
				__builtin_memset( &TMP$2416$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2416$4, -1, (void*)"FOUND AN ERROR : Converting float to int 01", 44, 0 );
				HWRITEASM64( &TMP$2416$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2416$4 );
				__builtin_memset( &TMP$2417$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2417$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2417$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2417$4 );
			}
			label$1836:;
		}
		goto label$1834;
		label$1835:;
		{
			if( V1DTYPE$1 != 14 ) goto label$1848;
			{
				FBSTRING TMP$2419$4;
				FBSTRING TMP$2420$4;
				FBSTRING TMP$2421$4;
				FBSTRING TMP$2422$4;
				FBSTRING TMP$2424$4;
				FBSTRING TMP$2426$4;
				FBSTRING TMP$2427$4;
				FBSTRING TMP$2428$4;
				FBSTRING TMP$2429$4;
				FBSTRING TMP$2430$4;
				FBSTRING TMP$2431$4;
				FBSTRING TMP$2432$4;
				FBSTRING TMP$2433$4;
				FBSTRING TMP$2435$4;
				FBSTRING TMP$2437$4;
				FBSTRING TMP$2438$4;
				FBSTRING TMP$2439$4;
				FBSTRING TMP$2440$4;
				FBSTRING TMP$2441$4;
				FBSTRING TMP$2442$4;
				FBSTRING TMP$2443$4;
				FBSTRING TMP$2444$4;
				FBSTRING TMP$2445$4;
				FBSTRING TMP$2446$4;
				FBSTRING TMP$2447$4;
				FBSTRING TMP$2448$4;
				__builtin_memset( &TMP$2419$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2419$4, -1, (void*)"mov rax, 1593835520", 20, 0 );
				HWRITEASM64( &TMP$2419$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2419$4 );
				__builtin_memset( &TMP$2420$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2420$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2420$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2420$4 );
				__builtin_memset( &TMP$2422$4, 0, 12 );
				__builtin_memset( &TMP$2421$4, 0, 12 );
				FBSTRING* vr$1118 = fb_StrConcat( &TMP$2421$4, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2422$4, -1, (void*)vr$1118, -1, 0 );
				HWRITEASM64( &TMP$2422$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2422$4 );
				__builtin_memset( &TMP$2424$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2424$4, -1, (void*)"movd xmm0, eax", 15, 0 );
				HWRITEASM64( &TMP$2424$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2424$4 );
				HEMITROUNDFLOAT( 15, 14 );
				__builtin_memset( &TMP$2426$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2426$4, -1, (void*)"ucomiss xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2426$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2426$4 );
				char* vr$1130 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$1130, 0, 0 );
				__builtin_memset( &TMP$2428$4, 0, 12 );
				__builtin_memset( &TMP$2427$4, 0, 12 );
				FBSTRING* vr$1136 = fb_StrConcat( &TMP$2427$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2428$4, -1, (void*)vr$1136, -1, 0 );
				HWRITEASM64( &TMP$2428$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2428$4 );
				__builtin_memset( &TMP$2429$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2429$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2429$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2429$4 );
				char* vr$1144 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$1144, 0, 0 );
				__builtin_memset( &TMP$2431$4, 0, 12 );
				__builtin_memset( &TMP$2430$4, 0, 12 );
				FBSTRING* vr$1150 = fb_StrConcat( &TMP$2430$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2431$4, -1, (void*)vr$1150, -1, 0 );
				HWRITEASM64( &TMP$2431$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2431$4 );
				__builtin_memset( &TMP$2433$4, 0, 12 );
				__builtin_memset( &TMP$2432$4, 0, 12 );
				FBSTRING* vr$1158 = fb_StrConcat( &TMP$2432$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2433$4, -1, (void*)vr$1158, -1, 0 );
				HWRITEASM64( &TMP$2433$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2433$4 );
				__builtin_memset( &TMP$2435$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2435$4, -1, (void*)"movss xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2435$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2435$4 );
				__builtin_memset( &TMP$2437$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2437$4, -1, (void*)"subss xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2437$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2437$4 );
				__builtin_memset( &TMP$2438$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2438$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2438$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2438$4 );
				int32 vr$1174 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$1174;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2441$4, 0, 12 );
				__builtin_memset( &TMP$2439$4, 0, 12 );
				FBSTRING* vr$1182 = fb_StrConcat( &TMP$2439$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2440$4, 0, 12 );
				FBSTRING* vr$1185 = fb_StrConcat( &TMP$2440$4, (void*)vr$1182, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2441$4, -1, (void*)vr$1185, -1, 0 );
				HWRITEASM64( &TMP$2441$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2441$4 );
				__builtin_memset( &TMP$2443$4, 0, 12 );
				__builtin_memset( &TMP$2442$4, 0, 12 );
				FBSTRING* vr$1193 = fb_StrConcat( &TMP$2442$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2443$4, -1, (void*)vr$1193, -1, 0 );
				HWRITEASM64( &TMP$2443$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2443$4 );
				__builtin_memset( &TMP$2445$4, 0, 12 );
				__builtin_memset( &TMP$2444$4, 0, 12 );
				FBSTRING* vr$1201 = fb_StrConcat( &TMP$2444$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2445$4, -1, (void*)vr$1201, -1, 0 );
				HWRITEASM64( &TMP$2445$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2445$4 );
				__builtin_memset( &TMP$2448$4, 0, 12 );
				__builtin_memset( &TMP$2446$4, 0, 12 );
				FBSTRING* vr$1209 = fb_StrConcat( &TMP$2446$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2447$4, 0, 12 );
				FBSTRING* vr$1212 = fb_StrConcat( &TMP$2447$4, (void*)vr$1209, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2448$4, -1, (void*)vr$1212, -1, 0 );
				HWRITEASM64( &TMP$2448$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2448$4 );
			}
			goto label$1847;
			label$1848:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1849;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1851;
				{
					FBSTRING TMP$2449$5;
					FBSTRING TMP$2450$5;
					__builtin_memset( &TMP$2450$5, 0, 12 );
					__builtin_memset( &TMP$2449$5, 0, 12 );
					FBSTRING* vr$1238 = fb_StrConcat( &TMP$2449$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2450$5, -1, (void*)vr$1238, -1, 0 );
					HWRITEASM64( &TMP$2450$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2450$5 );
				}
				goto label$1850;
				label$1851:;
				{
					FBSTRING TMP$2451$5;
					FBSTRING TMP$2452$5;
					__builtin_memset( &TMP$2452$5, 0, 12 );
					__builtin_memset( &TMP$2451$5, 0, 12 );
					FBSTRING* vr$1246 = fb_StrConcat( &TMP$2451$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2452$5, -1, (void*)vr$1246, -1, 0 );
					HWRITEASM64( &TMP$2452$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2452$5 );
				}
				label$1850:;
				HEMITROUNDFLOAT( 15, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1853;
				{
					FBSTRING TMP$2453$5;
					FBSTRING TMP$2454$5;
					FBSTRING TMP$2455$5;
					__builtin_memset( &TMP$2455$5, 0, 12 );
					__builtin_memset( &TMP$2453$5, 0, 12 );
					FBSTRING* vr$1254 = fb_StrConcat( &TMP$2453$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2454$5, 0, 12 );
					FBSTRING* vr$1257 = fb_StrConcat( &TMP$2454$5, (void*)vr$1254, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2455$5, -1, (void*)vr$1257, -1, 0 );
					HWRITEASM64( &TMP$2455$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2455$5 );
				}
				goto label$1852;
				label$1853:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1854;
				{
					FBSTRING TMP$2456$5;
					FBSTRING TMP$2457$5;
					FBSTRING TMP$2458$5;
					__builtin_memset( &TMP$2458$5, 0, 12 );
					__builtin_memset( &TMP$2456$5, 0, 12 );
					FBSTRING* vr$1268 = fb_StrConcat( &TMP$2456$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2457$5, 0, 12 );
					FBSTRING* vr$1271 = fb_StrConcat( &TMP$2457$5, (void*)vr$1268, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2458$5, -1, (void*)vr$1271, -1, 0 );
					HWRITEASM64( &TMP$2458$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2458$5 );
				}
				goto label$1852;
				label$1854:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1855;
				{
					FBSTRING TMP$2459$5;
					FBSTRING TMP$2460$5;
					FBSTRING TMP$2461$5;
					__builtin_memset( &TMP$2461$5, 0, 12 );
					__builtin_memset( &TMP$2459$5, 0, 12 );
					FBSTRING* vr$1282 = fb_StrConcat( &TMP$2459$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2460$5, 0, 12 );
					FBSTRING* vr$1285 = fb_StrConcat( &TMP$2460$5, (void*)vr$1282, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2461$5, -1, (void*)vr$1285, -1, 0 );
					HWRITEASM64( &TMP$2461$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2461$5 );
				}
				goto label$1852;
				label$1855:;
				{
					FBSTRING TMP$2464$5;
					FBSTRING TMP$2465$5;
					FBSTRING TMP$2466$5;
					if( V1DTYPE$1 != 1 ) goto label$1857;
					{
						FBSTRING TMP$2462$6;
						FBSTRING TMP$2463$6;
						__builtin_memset( &TMP$2462$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2462$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2462$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2462$6 );
						__builtin_memset( &TMP$2463$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2463$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2463$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2463$6 );
					}
					label$1857:;
					label$1856:;
					__builtin_memset( &TMP$2466$5, 0, 12 );
					__builtin_memset( &TMP$2464$5, 0, 12 );
					FBSTRING* vr$1301 = fb_StrConcat( &TMP$2464$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2465$5, 0, 12 );
					FBSTRING* vr$1304 = fb_StrConcat( &TMP$2465$5, (void*)vr$1301, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2466$5, -1, (void*)vr$1304, -1, 0 );
					HWRITEASM64( &TMP$2466$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2466$5 );
				}
				label$1852:;
			}
			goto label$1847;
			label$1849:;
			{
				FBSTRING TMP$2467$4;
				FBSTRING TMP$2470$4;
				FBSTRING TMP$2471$4;
				__builtin_memset( &TMP$2467$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2467$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2467$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2467$4 );
				__builtin_memset( &TMP$2470$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2470$4, -1, (void*)"FOUND AN ERROR : Converting float to int 02", 44, 0 );
				HWRITEASM64( &TMP$2470$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2470$4 );
				__builtin_memset( &TMP$2471$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2471$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2471$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2471$4 );
			}
			label$1847:;
		}
		label$1834:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1833:;
	label$1832:;
	if( (-(V1DTYPE$1 == 20) | -(V2DTYPE$1 == 20)) == 0 ) goto label$1859;
	{
		if( V2DTYPE$1 != 20 ) goto label$1861;
		{
			FBSTRING TMP$2472$3;
			FBSTRING TMP$2473$3;
			FBSTRING TMP$2474$3;
			FBSTRING TMP$2475$3;
			__builtin_memset( &TMP$2475$3, 0, 12 );
			__builtin_memset( &TMP$2472$3, 0, 12 );
			FBSTRING* vr$1337 = fb_StrConcat( &TMP$2472$3, (void*)"lea ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2473$3, 0, 12 );
			FBSTRING* vr$1340 = fb_StrConcat( &TMP$2473$3, (void*)vr$1337, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2474$3, 0, 12 );
			FBSTRING* vr$1343 = fb_StrConcat( &TMP$2474$3, (void*)vr$1340, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2475$3, -1, (void*)vr$1343, -1, 0 );
			HWRITEASM64( &TMP$2475$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2475$3 );
			if( V1DTYPE$1 != 13 ) goto label$1863;
			{
				FBSTRING TMP$2477$4;
				FBSTRING TMP$2478$4;
				FBSTRING TMP$2479$4;
				FBSTRING TMP$2480$4;
				FBSTRING TMP$2481$4;
				__builtin_memset( &TMP$2481$4, 0, 12 );
				__builtin_memset( &TMP$2477$4, 0, 12 );
				FBSTRING* vr$1352 = fb_StrConcat( &TMP$2477$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2478$4, 0, 12 );
				FBSTRING* vr$1355 = fb_StrConcat( &TMP$2478$4, (void*)vr$1352, -1, (void*)", QWORD PTR [", 14 );
				__builtin_memset( &TMP$2479$4, 0, 12 );
				FBSTRING* vr$1358 = fb_StrConcat( &TMP$2479$4, (void*)vr$1355, -1, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2480$4, 0, 12 );
				FBSTRING* vr$1361 = fb_StrConcat( &TMP$2480$4, (void*)vr$1358, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$2481$4, -1, (void*)vr$1361, -1, 0 );
				HWRITEASM64( &TMP$2481$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2481$4 );
			}
			goto label$1862;
			label$1863:;
			if( V1DTYPE$1 == 20 ) goto label$1864;
			{
				FBSTRING TMP$2482$4;
				FBSTRING TMP$2485$4;
				FBSTRING TMP$2486$4;
				__builtin_memset( &TMP$2482$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2482$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2482$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2482$4 );
				__builtin_memset( &TMP$2485$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2485$4, -1, (void*)"FOUND AN ERROR : Converting struct to datatype not handled 01", 62, 0 );
				HWRITEASM64( &TMP$2485$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2485$4 );
				__builtin_memset( &TMP$2486$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2486$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2486$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2486$4 );
			}
			label$1864:;
			label$1862:;
		}
		goto label$1860;
		label$1861:;
		{
			FBSTRING TMP$2487$3;
			FBSTRING TMP$2490$3;
			FBSTRING TMP$2491$3;
			__builtin_memset( &TMP$2487$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2487$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2487$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2487$3 );
			__builtin_memset( &TMP$2490$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2490$3, -1, (void*)"FOUND AN ERROR : Converting to struct not handled 02", 53, 0 );
			HWRITEASM64( &TMP$2490$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2490$3 );
			__builtin_memset( &TMP$2491$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2491$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2491$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2491$3 );
		}
		label$1860:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1859:;
	label$1858:;
	if( V1DTYPE$1 != 1 ) goto label$1866;
	{
		if( *(int32*)V2$1 != 0 ) goto label$1868;
		{
			int32 vr$1400 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0", 2 );
			int32 vr$1403 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x0000000000000000", 19 );
			int32 vr$1407 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x00000000", 11 );
			if( ((-(vr$1400 == 0) | -(vr$1403 == 0)) | -(vr$1407 == 0)) == 0 ) goto label$1870;
			{
				FBSTRING TMP$2494$4;
				FBSTRING TMP$2495$4;
				FBSTRING TMP$2496$4;
				__builtin_memset( &TMP$2496$4, 0, 12 );
				__builtin_memset( &TMP$2494$4, 0, 12 );
				FBSTRING* vr$1414 = fb_StrConcat( &TMP$2494$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2495$4, 0, 12 );
				FBSTRING* vr$1417 = fb_StrConcat( &TMP$2495$4, (void*)vr$1414, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$2496$4, -1, (void*)vr$1417, -1, 0 );
				HWRITEASM64( &TMP$2496$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2496$4 );
			}
			goto label$1869;
			label$1870:;
			{
				FBSTRING TMP$2497$4;
				FBSTRING TMP$2498$4;
				FBSTRING TMP$2499$4;
				__builtin_memset( &TMP$2499$4, 0, 12 );
				__builtin_memset( &TMP$2497$4, 0, 12 );
				FBSTRING* vr$1425 = fb_StrConcat( &TMP$2497$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2498$4, 0, 12 );
				FBSTRING* vr$1428 = fb_StrConcat( &TMP$2498$4, (void*)vr$1425, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$2499$4, -1, (void*)vr$1428, -1, 0 );
				HWRITEASM64( &TMP$2499$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2499$4 );
			}
			label$1869:;
		}
		goto label$1867;
		label$1868:;
		{
			FBSTRING TMP$2500$3;
			FBSTRING TMP$2501$3;
			FBSTRING TMP$2502$3;
			FBSTRING TMP$2503$3;
			FBSTRING TMP$2504$3;
			FBSTRING TMP$2505$3;
			FBSTRING TMP$2506$3;
			FBSTRING TMP$2507$3;
			__builtin_memset( &TMP$2503$3, 0, 12 );
			__builtin_memset( &TMP$2500$3, 0, 12 );
			FBSTRING* vr$1437 = fb_StrConcat( &TMP$2500$3, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
			__builtin_memset( &TMP$2501$3, 0, 12 );
			FBSTRING* vr$1440 = fb_StrConcat( &TMP$2501$3, (void*)vr$1437, -1, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$2502$3, 0, 12 );
			FBSTRING* vr$1443 = fb_StrConcat( &TMP$2502$3, (void*)vr$1440, -1, (void*)", 0", 4 );
			fb_StrAssign( (void*)&TMP$2503$3, -1, (void*)vr$1443, -1, 0 );
			HWRITEASM64( &TMP$2503$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2503$3 );
			__builtin_memset( &TMP$2504$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2504$3, -1, (void*)"setne al", 9, 0 );
			HWRITEASM64( &TMP$2504$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2504$3 );
			__builtin_memset( &TMP$2507$3, 0, 12 );
			__builtin_memset( &TMP$2505$3, 0, 12 );
			FBSTRING* vr$1455 = fb_StrConcat( &TMP$2505$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2506$3, 0, 12 );
			FBSTRING* vr$1458 = fb_StrConcat( &TMP$2506$3, (void*)vr$1455, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2507$3, -1, (void*)vr$1458, -1, 0 );
			HWRITEASM64( &TMP$2507$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2507$3 );
		}
		label$1867:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1866:;
	label$1865:;
	if( V2DTYPE$1 != 1 ) goto label$1872;
	{
		FBSTRING TMP$2508$2;
		FBSTRING TMP$2509$2;
		FBSTRING TMP$2510$2;
		FBSTRING TMP$2511$2;
		FBSTRING TMP$2512$2;
		FBSTRING TMP$2513$2;
		int32 TMP$2514$2;
		__builtin_memset( &TMP$2511$2, 0, 12 );
		__builtin_memset( &TMP$2508$2, 0, 12 );
		FBSTRING* vr$1476 = fb_StrConcat( &TMP$2508$2, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
		__builtin_memset( &TMP$2509$2, 0, 12 );
		FBSTRING* vr$1479 = fb_StrConcat( &TMP$2509$2, (void*)vr$1476, -1, (void*)&OP2$1, -1 );
		__builtin_memset( &TMP$2510$2, 0, 12 );
		FBSTRING* vr$1482 = fb_StrConcat( &TMP$2510$2, (void*)vr$1479, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$2511$2, -1, (void*)vr$1482, -1, 0 );
		HWRITEASM64( &TMP$2511$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2511$2 );
		__builtin_memset( &TMP$2512$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2512$2, -1, (void*)"setne al", 9, 0 );
		HWRITEASM64( &TMP$2512$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2512$2 );
		__builtin_memset( &TMP$2513$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2513$2, -1, (void*)"neg al", 7, 0 );
		HWRITEASM64( &TMP$2513$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2513$2 );
		if( (V1DTYPE$1 & 480) == 0 ) goto label$1873;
		TMP$2514$2 = 24;
		goto label$3118;
		label$1873:;
		TMP$2514$2 = V1DTYPE$1 & 31;
		label$3118:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2514$2 * 28)) + 4) != 1 ) goto label$1875;
		{
			FBSTRING TMP$2515$3;
			FBSTRING TMP$2516$3;
			FBSTRING TMP$2517$3;
			__builtin_memset( &TMP$2517$3, 0, 12 );
			__builtin_memset( &TMP$2515$3, 0, 12 );
			FBSTRING* vr$1501 = fb_StrConcat( &TMP$2515$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2516$3, 0, 12 );
			FBSTRING* vr$1504 = fb_StrConcat( &TMP$2516$3, (void*)vr$1501, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2517$3, -1, (void*)vr$1504, -1, 0 );
			HWRITEASM64( &TMP$2517$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2517$3 );
		}
		goto label$1874;
		label$1875:;
		{
			FBSTRING TMP$2519$3;
			FBSTRING TMP$2520$3;
			FBSTRING TMP$2521$3;
			__builtin_memset( &TMP$2521$3, 0, 12 );
			__builtin_memset( &TMP$2519$3, 0, 12 );
			FBSTRING* vr$1512 = fb_StrConcat( &TMP$2519$3, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2520$3, 0, 12 );
			FBSTRING* vr$1515 = fb_StrConcat( &TMP$2520$3, (void*)vr$1512, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2521$3, -1, (void*)vr$1515, -1, 0 );
			HWRITEASM64( &TMP$2521$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2521$3 );
		}
		label$1874:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1872:;
	label$1871:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1876;
	TMP$2522$1 = 24;
	goto label$3119;
	label$1876:;
	TMP$2522$1 = V1DTYPE$1 & 31;
	label$3119:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1877;
	TMP$2523$1 = 24;
	goto label$3120;
	label$1877:;
	TMP$2523$1 = V2DTYPE$1 & 31;
	label$3120:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2522$1 * 28)) + 4) > *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2523$1 * 28)) + 4) ) goto label$1879;
	{
		FBSTRING TMP$2528$2;
		FBSTRING TMP$2529$2;
		FBSTRING TMP$2530$2;
		FBSTRING TMP$2531$2;
		FBSTRING TMP$2532$2;
		if( *(int32*)V2$1 != 4 ) goto label$1881;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			{
				if( V1DTYPE$1 == 11 ) goto label$1884;
				label$1885:;
				if( V1DTYPE$1 == 12 ) goto label$1884;
				label$1886:;
				if( V1DTYPE$1 != 15 ) goto label$1883;
				label$1884:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1882;
				label$1883:;
				if( V1DTYPE$1 == 5 ) goto label$1888;
				label$1889:;
				if( V1DTYPE$1 != 6 ) goto label$1887;
				label$1888:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1882;
				label$1887:;
				if( V1DTYPE$1 == 2 ) goto label$1891;
				label$1892:;
				if( V1DTYPE$1 == 3 ) goto label$1891;
				label$1893:;
				if( V1DTYPE$1 != 4 ) goto label$1890;
				label$1891:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1882;
				label$1890:;
				if( V1DTYPE$1 != 1 ) goto label$1894;
				label$1895:;
				{
				}
				goto label$1882;
				label$1894:;
				if( V1DTYPE$1 == 13 ) goto label$1897;
				label$1898:;
				if( V1DTYPE$1 == 14 ) goto label$1897;
				label$1899:;
				if( V1DTYPE$1 != 16 ) goto label$1896;
				label$1897:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1882;
				label$1896:;
				{
					FBSTRING TMP$2524$5;
					FBSTRING TMP$2525$5;
					FBSTRING TMP$2526$5;
					FBSTRING TMP$2527$5;
					__builtin_memset( &TMP$2524$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2524$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2524$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2524$5 );
					__builtin_memset( &TMP$2526$5, 0, 12 );
					FBSTRING* vr$1550 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2525$5, 0, 12 );
					FBSTRING* vr$1553 = fb_StrConcat( &TMP$2525$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$1550, -1 );
					fb_StrAssign( (void*)&TMP$2526$5, -1, (void*)vr$1553, -1, 0 );
					HWRITEASM64( &TMP$2526$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2526$5 );
					__builtin_memset( &TMP$2527$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2527$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2527$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2527$5 );
				}
				label$1900:;
				label$1882:;
			}
		}
		label$1881:;
		label$1880:;
		__builtin_memset( &TMP$2532$2, 0, 12 );
		__builtin_memset( &TMP$2528$2, 0, 12 );
		FBSTRING* vr$1567 = fb_StrConcat( &TMP$2528$2, (void*)"mov ", 5, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2529$2, 0, 12 );
		FBSTRING* vr$1570 = fb_StrConcat( &TMP$2529$2, (void*)vr$1567, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2530$2, 0, 12 );
		FBSTRING* vr$1573 = fb_StrConcat( &TMP$2530$2, (void*)vr$1570, -1, (void*)&PREFIX1$1, -1 );
		__builtin_memset( &TMP$2531$2, 0, 12 );
		FBSTRING* vr$1576 = fb_StrConcat( &TMP$2531$2, (void*)vr$1573, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2532$2, -1, (void*)vr$1576, -1, 0 );
		HWRITEASM64( &TMP$2532$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2532$2 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1667;
	}
	label$1879:;
	label$1878:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1901;
	TMP$2533$1 = 24;
	goto label$3121;
	label$1901:;
	TMP$2533$1 = V2DTYPE$1 & 31;
	label$3121:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2533$1 * 28)) + 8) == 0 ) goto label$1903;
	{
		{
			int32 TMP$2534$3;
			int32 TMP$2535$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1904;
			TMP$2534$3 = 24;
			goto label$3122;
			label$1904:;
			TMP$2534$3 = V2DTYPE$1 & 31;
			label$3122:;
			TMP$2535$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2534$3 * 28)) + 4);
			if( TMP$2535$3 == 1 ) goto label$1907;
			label$1908:;
			if( TMP$2535$3 != 2 ) goto label$1906;
			label$1907:;
			{
				FBSTRING TMP$2536$4;
				FBSTRING TMP$2537$4;
				FBSTRING TMP$2538$4;
				FBSTRING TMP$2539$4;
				FBSTRING TMP$2540$4;
				__builtin_memset( &TMP$2540$4, 0, 12 );
				__builtin_memset( &TMP$2536$4, 0, 12 );
				FBSTRING* vr$1601 = fb_StrConcat( &TMP$2536$4, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2537$4, 0, 12 );
				FBSTRING* vr$1604 = fb_StrConcat( &TMP$2537$4, (void*)vr$1601, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2538$4, 0, 12 );
				FBSTRING* vr$1607 = fb_StrConcat( &TMP$2538$4, (void*)vr$1604, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2539$4, 0, 12 );
				FBSTRING* vr$1610 = fb_StrConcat( &TMP$2539$4, (void*)vr$1607, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2540$4, -1, (void*)vr$1610, -1, 0 );
				HWRITEASM64( &TMP$2540$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2540$4 );
			}
			goto label$1905;
			label$1906:;
			if( TMP$2535$3 != 4 ) goto label$1909;
			label$1910:;
			{
				FBSTRING TMP$2541$4;
				FBSTRING TMP$2542$4;
				FBSTRING TMP$2543$4;
				FBSTRING TMP$2544$4;
				FBSTRING TMP$2545$4;
				__builtin_memset( &TMP$2545$4, 0, 12 );
				__builtin_memset( &TMP$2541$4, 0, 12 );
				FBSTRING* vr$1620 = fb_StrConcat( &TMP$2541$4, (void*)"movsxd ", 8, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2542$4, 0, 12 );
				FBSTRING* vr$1623 = fb_StrConcat( &TMP$2542$4, (void*)vr$1620, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2543$4, 0, 12 );
				FBSTRING* vr$1626 = fb_StrConcat( &TMP$2543$4, (void*)vr$1623, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2544$4, 0, 12 );
				FBSTRING* vr$1629 = fb_StrConcat( &TMP$2544$4, (void*)vr$1626, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2545$4, -1, (void*)vr$1629, -1, 0 );
				HWRITEASM64( &TMP$2545$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2545$4 );
			}
			goto label$1905;
			label$1909:;
			{
				FBSTRING TMP$2546$4;
				FBSTRING TMP$2549$4;
				FBSTRING TMP$2550$4;
				__builtin_memset( &TMP$2546$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2546$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2546$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2546$4 );
				__builtin_memset( &TMP$2549$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2549$4, -1, (void*)"FOUND AN ERROR : in conv something missing 01", 46, 0 );
				HWRITEASM64( &TMP$2549$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2549$4 );
				__builtin_memset( &TMP$2550$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2550$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2550$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2550$4 );
			}
			label$1911:;
			label$1905:;
		}
	}
	goto label$1902;
	label$1903:;
	{
		{
			int32 TMP$2551$3;
			int32 TMP$2552$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1912;
			TMP$2551$3 = 24;
			goto label$3123;
			label$1912:;
			TMP$2551$3 = V2DTYPE$1 & 31;
			label$3123:;
			TMP$2552$3 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2551$3 * 28)) + 4);
			if( TMP$2552$3 == 1 ) goto label$1915;
			label$1916:;
			if( TMP$2552$3 != 2 ) goto label$1914;
			label$1915:;
			{
				FBSTRING TMP$2553$4;
				FBSTRING TMP$2554$4;
				FBSTRING TMP$2555$4;
				FBSTRING TMP$2556$4;
				FBSTRING TMP$2557$4;
				__builtin_memset( &TMP$2557$4, 0, 12 );
				__builtin_memset( &TMP$2553$4, 0, 12 );
				FBSTRING* vr$1654 = fb_StrConcat( &TMP$2553$4, (void*)"movzx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2554$4, 0, 12 );
				FBSTRING* vr$1657 = fb_StrConcat( &TMP$2554$4, (void*)vr$1654, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2555$4, 0, 12 );
				FBSTRING* vr$1660 = fb_StrConcat( &TMP$2555$4, (void*)vr$1657, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2556$4, 0, 12 );
				FBSTRING* vr$1663 = fb_StrConcat( &TMP$2556$4, (void*)vr$1660, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2557$4, -1, (void*)vr$1663, -1, 0 );
				HWRITEASM64( &TMP$2557$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2557$4 );
			}
			goto label$1913;
			label$1914:;
			if( TMP$2552$3 != 4 ) goto label$1917;
			label$1918:;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1920;
				{
					*(int32*)((int32)(int32*)REGHANDLE$ + (REGRESULT$1 << (2 & 31))) = -2;
					REGRESULT$1 = SRCREG$1;
					*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
				}
				goto label$1919;
				label$1920:;
				{
					FBSTRING TMP$2558$5;
					FBSTRING TMP$2559$5;
					FBSTRING TMP$2560$5;
					FBSTRING TMP$2561$5;
					__builtin_memset( &TMP$2561$5, 0, 12 );
					__builtin_memset( &TMP$2558$5, 0, 12 );
					FBSTRING* vr$1676 = fb_StrConcat( &TMP$2558$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2559$5, 0, 12 );
					FBSTRING* vr$1679 = fb_StrConcat( &TMP$2559$5, (void*)vr$1676, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2560$5, 0, 12 );
					FBSTRING* vr$1682 = fb_StrConcat( &TMP$2560$5, (void*)vr$1679, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2561$5, -1, (void*)vr$1682, -1, 0 );
					HWRITEASM64( &TMP$2561$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2561$5 );
				}
				label$1919:;
			}
			goto label$1913;
			label$1917:;
			{
				FBSTRING TMP$2562$4;
				FBSTRING TMP$2565$4;
				FBSTRING TMP$2566$4;
				__builtin_memset( &TMP$2562$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2562$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2562$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2562$4 );
				__builtin_memset( &TMP$2565$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2565$4, -1, (void*)"FOUND AN ERROR : in conv something missing 02", 46, 0 );
				HWRITEASM64( &TMP$2565$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2565$4 );
				__builtin_memset( &TMP$2566$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2566$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2566$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2566$4 );
			}
			label$1921:;
			label$1913:;
		}
	}
	label$1902:;
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1667:;
}

static void EMITSTORESTRUCT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$2591$1;
	FBSTRING TMP$2592$1;
	FBSTRING TMP$2593$1;
	label$1922:;
	FBSTRING DEST$1;
	__builtin_memset( &DEST$1, 0, 12 );
	int32 LGTV1$1;
	LGTV1$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
	int32 OFSV2$1;
	OFSV2$1 = (int32)*(int64*)((uint8*)V2$1 + 40);
	$15FB_STRUCT_INREG RETIN2REGS$1;
	RETIN2REGS$1 = *($15FB_STRUCT_INREG*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 132);
	int32 vr$8 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$8 == 0 ) goto label$1925;
	{
		EMITOP3_OP4( OP3$1 );
		label$1925:;
	}
	{
		if( RETIN2REGS$1 != 2 ) goto label$1927;
		label$1928:;
		{
			FBSTRING TMP$2567$3;
			FBSTRING TMP$2568$3;
			FBSTRING TMP$2569$3;
			__builtin_memset( &TMP$2569$3, 0, 12 );
			__builtin_memset( &TMP$2567$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$2567$3, (void*)"mov ", 5, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2568$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$2568$3, (void*)vr$12, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2569$3, -1, (void*)vr$15, -1, 0 );
			HWRITEASM64( &TMP$2569$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2569$3 );
		}
		goto label$1926;
		label$1927:;
		if( RETIN2REGS$1 != 3 ) goto label$1929;
		label$1930:;
		{
			FBSTRING TMP$2570$3;
			FBSTRING TMP$2571$3;
			FBSTRING TMP$2572$3;
			FBSTRING TMP$2574$3;
			__builtin_memset( &TMP$2572$3, 0, 12 );
			__builtin_memset( &TMP$2570$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$2570$3, (void*)"mov ", 5, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2571$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$2571$3, (void*)vr$22, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2572$3, -1, (void*)vr$25, -1, 0 );
			HWRITEASM64( &TMP$2572$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2572$3 );
			__builtin_memset( &TMP$2574$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2574$3, -1, (void*)"movq rdx, xmm0", 15, 0 );
			HWRITEASM64( &TMP$2574$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2574$3 );
		}
		goto label$1926;
		label$1929:;
		if( RETIN2REGS$1 != 6 ) goto label$1931;
		label$1932:;
		{
			FBSTRING TMP$2575$3;
			FBSTRING TMP$2576$3;
			FBSTRING TMP$2577$3;
			FBSTRING TMP$2579$3;
			__builtin_memset( &TMP$2577$3, 0, 12 );
			__builtin_memset( &TMP$2575$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$2575$3, (void*)"movq ", 6, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2576$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$2576$3, (void*)vr$36, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$2577$3, -1, (void*)vr$39, -1, 0 );
			HWRITEASM64( &TMP$2577$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2577$3 );
			__builtin_memset( &TMP$2579$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2579$3, -1, (void*)"movq rdx, xmm1", 15, 0 );
			HWRITEASM64( &TMP$2579$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2579$3 );
		}
		goto label$1926;
		label$1931:;
		if( RETIN2REGS$1 != 5 ) goto label$1933;
		label$1934:;
		{
			FBSTRING TMP$2580$3;
			FBSTRING TMP$2581$3;
			FBSTRING TMP$2582$3;
			FBSTRING TMP$2584$3;
			__builtin_memset( &TMP$2582$3, 0, 12 );
			__builtin_memset( &TMP$2580$3, 0, 12 );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$2580$3, (void*)"movq ", 6, (void*)OP1$1, -1 );
			__builtin_memset( &TMP$2581$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$2581$3, (void*)vr$50, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$2582$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$2582$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2582$3 );
			__builtin_memset( &TMP$2584$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2584$3, -1, (void*)"movq rdx, rax", 14, 0 );
			HWRITEASM64( &TMP$2584$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2584$3 );
		}
		goto label$1926;
		label$1933:;
		{
		}
		label$1935:;
		label$1926:;
	}
	if( (-((uint32)(int32)*(uint8*)*(char**)OP1$1 == 45u) & (((-(LGTV1$1 == 9) | -(LGTV1$1 == 10)) | -(LGTV1$1 == 12)) | -(LGTV1$1 == 16))) == 0 ) goto label$1937;
	{
		FBSTRING TMP$2585$2;
		FBSTRING TMP$2587$2;
		FBSTRING TMP$2588$2;
		FBSTRING TMP$2589$2;
		FBSTRING TMP$2590$2;
		FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (char*)"[rbp]", 5 );
		int32 vr$74 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$73 );
		FBSTRING* vr$76 = fb_LEFT( (FBSTRING*)OP1$1, vr$74 + -1 );
		int32 vr$77 = fb_VALINT( (FBSTRING*)vr$76 );
		FBSTRING* vr$79 = fb_IntToStr( vr$77 + 8 );
		__builtin_memset( &TMP$2585$2, 0, 12 );
		FBSTRING* vr$82 = fb_StrConcat( &TMP$2585$2, (void*)vr$79, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)OP1$1, -1, (void*)vr$82, -1, 0 );
		{
			uint32 TMP$2586$3;
			TMP$2586$3 = (uint32)LGTV1$1;
			goto label$1939;
			label$1940:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dl", 3, 0 );
			}
			goto label$1938;
			label$1941:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dx", 3, 0 );
			}
			goto label$1938;
			label$1942:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"edx", 4, 0 );
			}
			goto label$1938;
			label$1943:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"rdx", 4, 0 );
			}
			goto label$1938;
			label$1939:;
			static const void* tmp$4074[8] = {
				&&label$1940,
				&&label$1941,
				&&label$1938,
				&&label$1942,
				&&label$1938,
				&&label$1938,
				&&label$1938,
				&&label$1943,
			};
			if( (TMP$2586$3 - 9u) > 7u ) goto label$1938;
			goto *tmp$4074[TMP$2586$3 - 9u];
			label$1938:;
		}
		__builtin_memset( &TMP$2590$2, 0, 12 );
		__builtin_memset( &TMP$2587$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$2587$2, (void*)"mov ", 5, (void*)OP1$1, -1 );
		__builtin_memset( &TMP$2588$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$2588$2, (void*)vr$91, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2589$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$2589$2, (void*)vr$94, -1, (void*)&DEST$1, -1 );
		fb_StrAssign( (void*)&TMP$2590$2, -1, (void*)vr$97, -1, 0 );
		HWRITEASM64( &TMP$2590$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2590$2 );
		fb_StrDelete( (FBSTRING*)&DEST$1 );
		goto label$1923;
	}
	label$1937:;
	label$1936:;
	__builtin_memset( &TMP$2592$1, 0, 12 );
	__builtin_memset( &TMP$2591$1, 0, 12 );
	FBSTRING* vr$105 = fb_StrConcat( &TMP$2591$1, (void*)"lea rax, ", 10, (void*)OP1$1, -1 );
	fb_StrAssign( (void*)&TMP$2592$1, -1, (void*)vr$105, -1, 0 );
	HWRITEASM64( &TMP$2592$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2592$1 );
	__builtin_memset( &TMP$2593$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$2593$1, -1, (void*)"add rax, 8", 11, 0 );
	HWRITEASM64( &TMP$2593$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2593$1 );
	{
		uint32 TMP$2594$2;
		TMP$2594$2 = (uint32)LGTV1$1;
		goto label$1945;
		label$1946:;
		{
			FBSTRING TMP$2596$3;
			__builtin_memset( &TMP$2596$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2596$3, -1, (void*)"mov [rax], dl", 14, 0 );
			HWRITEASM64( &TMP$2596$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2596$3 );
		}
		goto label$1944;
		label$1947:;
		{
			FBSTRING TMP$2598$3;
			__builtin_memset( &TMP$2598$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2598$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2598$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2598$3 );
		}
		goto label$1944;
		label$1948:;
		{
			FBSTRING TMP$2599$3;
			FBSTRING TMP$2601$3;
			FBSTRING TMP$2603$3;
			__builtin_memset( &TMP$2599$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2599$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2599$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2599$3 );
			__builtin_memset( &TMP$2601$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2601$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2601$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2601$3 );
			__builtin_memset( &TMP$2603$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2603$3, -1, (void*)"mov [rax+2], dl", 16, 0 );
			HWRITEASM64( &TMP$2603$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2603$3 );
		}
		goto label$1944;
		label$1949:;
		{
			FBSTRING TMP$2605$3;
			__builtin_memset( &TMP$2605$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2605$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2605$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2605$3 );
		}
		goto label$1944;
		label$1950:;
		{
			FBSTRING TMP$2606$3;
			FBSTRING TMP$2608$3;
			FBSTRING TMP$2610$3;
			__builtin_memset( &TMP$2606$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2606$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2606$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2606$3 );
			__builtin_memset( &TMP$2608$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2608$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2608$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2608$3 );
			__builtin_memset( &TMP$2610$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2610$3, -1, (void*)"mov [rax+4], dl", 16, 0 );
			HWRITEASM64( &TMP$2610$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2610$3 );
		}
		goto label$1944;
		label$1951:;
		{
			FBSTRING TMP$2611$3;
			FBSTRING TMP$2612$3;
			FBSTRING TMP$2614$3;
			__builtin_memset( &TMP$2611$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2611$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2611$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2611$3 );
			__builtin_memset( &TMP$2612$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2612$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2612$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2612$3 );
			__builtin_memset( &TMP$2614$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2614$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2614$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2614$3 );
		}
		goto label$1944;
		label$1952:;
		{
			FBSTRING TMP$2615$3;
			FBSTRING TMP$2616$3;
			FBSTRING TMP$2617$3;
			FBSTRING TMP$2618$3;
			FBSTRING TMP$2620$3;
			__builtin_memset( &TMP$2615$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2615$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2615$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2615$3 );
			__builtin_memset( &TMP$2616$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2616$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2616$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2616$3 );
			__builtin_memset( &TMP$2617$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2617$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2617$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2617$3 );
			__builtin_memset( &TMP$2618$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2618$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2618$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2618$3 );
			__builtin_memset( &TMP$2620$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2620$3, -1, (void*)"mov [rax+6], dl", 16, 0 );
			HWRITEASM64( &TMP$2620$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2620$3 );
		}
		goto label$1944;
		label$1953:;
		{
			FBSTRING TMP$2622$3;
			__builtin_memset( &TMP$2622$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2622$3, -1, (void*)"mov [rax], rdx", 15, 0 );
			HWRITEASM64( &TMP$2622$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2622$3 );
		}
		goto label$1944;
		label$1945:;
		static const void* tmp$4075[8] = {
			&&label$1946,
			&&label$1947,
			&&label$1948,
			&&label$1949,
			&&label$1950,
			&&label$1951,
			&&label$1952,
			&&label$1953,
		};
		if( (TMP$2594$2 - 9u) > 7u ) goto label$1944;
		goto *tmp$4075[TMP$2594$2 - 9u];
		label$1944:;
	}
	fb_StrDelete( (FBSTRING*)&DEST$1 );
	label$1923:;
}

static int32 HISSTRUCTIN2REGS( struct $6IRVREG* V1$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1954:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 511) != 20 ) goto label$1957;
	{
		fb$result$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) + 132) != 0);
		goto label$1955;
	}
	label$1957:;
	label$1956:;
	fb$result$1 = 0;
	goto label$1955;
	label$1955:;
	return fb$result$1;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2623$1;
	int32 TMP$2624$1;
	label$1958:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	FBSTRING CODE1$1;
	__builtin_memset( &CODE1$1, 0, 12 );
	FBSTRING CODE2$1;
	__builtin_memset( &CODE2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1960;
	TMP$2623$1 = 24;
	goto label$3124;
	label$1960:;
	TMP$2623$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3124:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1961;
	TMP$2624$1 = 24;
	goto label$3125;
	label$1961:;
	TMP$2624$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$3125:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2623$1 * 28)) + 4) >= *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2624$1 * 28)) + 4) ) goto label$1963;
	{
		struct $6IRVREG* TEMP0$2;
		struct $6IRVREG* vr$21 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), (struct $8FBSYMBOL*)0u );
		TEMP0$2 = vr$21;
		_EMITCONVERT( TEMP0$2, V2$1 );
		__builtin_memcpy( V2$1, TEMP0$2, 72 );
	}
	label$1963:;
	label$1962:;
	{
		$15IRVREGTYPE_ENUM TMP$2625$2;
		TMP$2625$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2625$2 != 2 ) goto label$1965;
		label$1966:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1964;
		label$1965:;
		if( TMP$2625$2 != 4 ) goto label$1967;
		label$1968:;
		{
			if( *(int32*)V2$1 != 0 ) goto label$1970;
			{
				FBSTRING TMP$2626$4;
				FBSTRING TMP$2629$4;
				FBSTRING TMP$2630$4;
				__builtin_memset( &TMP$2626$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2626$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2626$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2626$4 );
				__builtin_memset( &TMP$2629$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2629$4, -1, (void*)"FOUND AN ERROR : In emitstore used to be sure that case IMM to REG may happen.... report to dev", 96, 0 );
				HWRITEASM64( &TMP$2629$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2629$4 );
				__builtin_memset( &TMP$2630$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2630$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2630$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2630$4 );
				if( (-(*(int64*)((uint8*)V2$1 + 24) >= 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$1972;
				{
					int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (vr$44 << (2 & 31))), 0, 0 );
				}
				goto label$1971;
				label$1972:;
				{
					int32 vr$48 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$48 << (2 & 31))), 0, 0 );
				}
				label$1971:;
			}
			goto label$1969;
			label$1970:;
			{
				DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
				if( (DTYPE$1 & 480) == 0 ) goto label$1974;
				{
					DTYPE$1 = 8;
					label$1974:;
				}
				{
					if( DTYPE$1 == 8 ) goto label$1977;
					label$1978:;
					if( DTYPE$1 == 9 ) goto label$1977;
					label$1979:;
					if( DTYPE$1 == 13 ) goto label$1977;
					label$1980:;
					if( DTYPE$1 == 14 ) goto label$1977;
					label$1981:;
					if( DTYPE$1 == 16 ) goto label$1977;
					label$1982:;
					if( DTYPE$1 != 10 ) goto label$1976;
					label$1977:;
					{
						int32 vr$55 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$55 << (2 & 31))), 0, 0 );
					}
					goto label$1975;
					label$1976:;
					if( DTYPE$1 == 11 ) goto label$1984;
					label$1985:;
					if( DTYPE$1 == 12 ) goto label$1984;
					label$1986:;
					if( DTYPE$1 != 15 ) goto label$1983;
					label$1984:;
					{
						int32 vr$59 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (vr$59 << (2 & 31))), 0, 0 );
					}
					goto label$1975;
					label$1983:;
					if( DTYPE$1 == 5 ) goto label$1988;
					label$1989:;
					if( DTYPE$1 != 6 ) goto label$1987;
					label$1988:;
					{
						int32 vr$63 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (vr$63 << (2 & 31))), 0, 0 );
					}
					goto label$1975;
					label$1987:;
					if( DTYPE$1 == 2 ) goto label$1991;
					label$1992:;
					if( DTYPE$1 == 3 ) goto label$1991;
					label$1993:;
					if( DTYPE$1 == 1 ) goto label$1991;
					label$1994:;
					if( DTYPE$1 != 4 ) goto label$1990;
					label$1991:;
					{
						int32 vr$67 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (vr$67 << (2 & 31))), 0, 0 );
					}
					goto label$1975;
					label$1990:;
					{
						FBSTRING TMP$2631$6;
						FBSTRING TMP$2635$6;
						FBSTRING TMP$2636$6;
						FBSTRING TMP$2637$6;
						__builtin_memset( &TMP$2631$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2631$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2631$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2631$6 );
						__builtin_memset( &TMP$2636$6, 0, 12 );
						FBSTRING* vr$76 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
						__builtin_memset( &TMP$2635$6, 0, 12 );
						FBSTRING* vr$79 = fb_StrConcat( &TMP$2635$6, (void*)"FOUND AN ERROR : Storing datatype not handled 01 = ", 52, (void*)vr$76, -1 );
						fb_StrAssign( (void*)&TMP$2636$6, -1, (void*)vr$79, -1, 0 );
						HWRITEASM64( &TMP$2636$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2636$6 );
						__builtin_memset( &TMP$2637$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2637$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2637$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2637$6 );
					}
					label$1995:;
					label$1975:;
				}
			}
			label$1969:;
		}
		goto label$1964;
		label$1967:;
		if( TMP$2625$2 != 1 ) goto label$1996;
		label$1997:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1999;
			{
				FBSTRING TMP$2638$4;
				FBSTRING TMP$2639$4;
				FBSTRING TMP$2640$4;
				FBSTRING* vr$97 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				char* vr$99 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2638$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$2638$4, (void*)vr$99, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2639$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$2639$4, (void*)vr$102, -1, (void*)vr$97, -1 );
				__builtin_memset( &TMP$2640$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$2640$4, (void*)vr$105, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$108, -1, 0 );
			}
			goto label$1998;
			label$1999:;
			{
				FBSTRING TMP$2641$4;
				FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2641$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$2641$4, (void*)vr$111, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$114, -1, 0 );
			}
			label$1998:;
		}
		goto label$1964;
		label$1996:;
		if( TMP$2625$2 != 3 ) goto label$2000;
		label$2001:;
		{
			if( *(int64*)((uint8*)V1$1 + 40) == 0ll ) goto label$2003;
			{
				if( *(struct $6IRVREG**)((uint8*)V1$1 + 52) != (struct $6IRVREG*)0u ) goto label$2005;
				{
					if( (-(*(int64*)((uint8*)V1$1 + 40) < -2147483648ll) | -(*(int64*)((uint8*)V1$1 + 40) > 4294967295ll)) == 0 ) goto label$2007;
					{
						FBSTRING TMP$2642$6;
						FBSTRING* vr$124 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2642$6, 0, 12 );
						FBSTRING* vr$127 = fb_StrConcat( &TMP$2642$6, (void*)"mov rax, ", 10, (void*)vr$124, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$127, -1, 0 );
					}
					goto label$2006;
					label$2007:;
					{
						FBSTRING TMP$2643$6;
						FBSTRING* vr$130 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2643$6, 0, 12 );
						FBSTRING* vr$133 = fb_StrConcat( &TMP$2643$6, (void*)"mov eax, ", 10, (void*)vr$130, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$133, -1, 0 );
					}
					label$2006:;
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				goto label$2004;
				label$2005:;
				{
					FBSTRING TMP$2644$5;
					FBSTRING TMP$2645$5;
					FBSTRING TMP$2646$5;
					int32 vr$138 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$141 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2644$5, 0, 12 );
					FBSTRING* vr$144 = fb_StrConcat( &TMP$2644$5, (void*)vr$141, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2645$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$2645$5, (void*)vr$144, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$138 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2646$5, 0, 12 );
					FBSTRING* vr$150 = fb_StrConcat( &TMP$2646$5, (void*)vr$147, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$150, -1, 0 );
				}
				label$2004:;
			}
			goto label$2002;
			label$2003:;
			{
				FBSTRING TMP$2647$4;
				FBSTRING TMP$2648$4;
				int32 vr$154 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				__builtin_memset( &TMP$2647$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$2647$4, (void*)"[", 2, *(void**)((int32)(char**)REGSTRQ$ + (vr$154 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2648$4, 0, 12 );
				FBSTRING* vr$161 = fb_StrConcat( &TMP$2648$4, (void*)vr$158, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$161, -1, 0 );
			}
			label$2002:;
		}
		goto label$1964;
		label$2000:;
		if( TMP$2625$2 != 5 ) goto label$2008;
		label$2009:;
		{
			FBSTRING TMP$2649$3;
			FBSTRING TMP$2650$3;
			FBSTRING TMP$2651$3;
			FBSTRING* vr$164 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			char* vr$166 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$2649$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$2649$3, (void*)vr$166, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2650$3, 0, 12 );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$2650$3, (void*)vr$169, -1, (void*)vr$164, -1 );
			__builtin_memset( &TMP$2651$3, 0, 12 );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$2651$3, (void*)vr$172, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$175, -1, 0 );
		}
		goto label$1964;
		label$2008:;
		{
			FBSTRING TMP$2652$3;
			FBSTRING TMP$2655$3;
			FBSTRING TMP$2656$3;
			__builtin_memset( &TMP$2652$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2652$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2652$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2652$3 );
			__builtin_memset( &TMP$2655$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2655$3, -1, (void*)"FOUND AN ERROR : store 01", 26, 0 );
			HWRITEASM64( &TMP$2655$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2655$3 );
			__builtin_memset( &TMP$2656$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2656$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2656$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2656$3 );
		}
		label$2010:;
		label$1964:;
	}
	int32 vr$189 = HISSTRUCTIN2REGS( V2$1 );
	if( vr$189 == 0 ) goto label$2012;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 12) & 16) == 0 ) goto label$2014;
		{
			*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 48) = *(int64*)((uint8*)V2$1 + 40);
		}
		goto label$2013;
		label$2014:;
		{
			EMITSTORESTRUCT( V1$1, V2$1, &OP1$1, &OP3$1 );
		}
		label$2013:;
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&CODE2$1 );
		fb_StrDelete( (FBSTRING*)&CODE1$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1959;
	}
	label$2012:;
	label$2011:;
	{
		$15IRVREGTYPE_ENUM TMP$2657$2;
		TMP$2657$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2657$2 != 2 ) goto label$2016;
		label$2017:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$2015;
		label$2016:;
		if( TMP$2657$2 != 4 ) goto label$2018;
		label$2019:;
		{
			DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
			if( (DTYPE$1 & 480) == 0 ) goto label$2021;
			{
				DTYPE$1 = 8;
				label$2021:;
			}
			{
				if( DTYPE$1 == 8 ) goto label$2024;
				label$2025:;
				if( DTYPE$1 == 9 ) goto label$2024;
				label$2026:;
				if( DTYPE$1 == 13 ) goto label$2024;
				label$2027:;
				if( DTYPE$1 == 14 ) goto label$2024;
				label$2028:;
				if( DTYPE$1 == 16 ) goto label$2024;
				label$2029:;
				if( DTYPE$1 != 10 ) goto label$2023;
				label$2024:;
				{
					int32 vr$213 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$213 << (2 & 31))), 0, 0 );
				}
				goto label$2022;
				label$2023:;
				if( DTYPE$1 == 11 ) goto label$2031;
				label$2032:;
				if( DTYPE$1 == 12 ) goto label$2031;
				label$2033:;
				if( DTYPE$1 != 15 ) goto label$2030;
				label$2031:;
				{
					int32 vr$217 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRD$ + (vr$217 << (2 & 31))), 0, 0 );
				}
				goto label$2022;
				label$2030:;
				if( DTYPE$1 == 5 ) goto label$2035;
				label$2036:;
				if( DTYPE$1 != 6 ) goto label$2034;
				label$2035:;
				{
					int32 vr$221 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRW$ + (vr$221 << (2 & 31))), 0, 0 );
				}
				goto label$2022;
				label$2034:;
				if( DTYPE$1 == 2 ) goto label$2038;
				label$2039:;
				if( DTYPE$1 == 3 ) goto label$2038;
				label$2040:;
				if( DTYPE$1 == 1 ) goto label$2038;
				label$2041:;
				if( DTYPE$1 != 4 ) goto label$2037;
				label$2038:;
				{
					int32 vr$225 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRB$ + (vr$225 << (2 & 31))), 0, 0 );
				}
				goto label$2022;
				label$2037:;
				{
					FBSTRING TMP$2658$5;
					FBSTRING TMP$2662$5;
					FBSTRING TMP$2663$5;
					FBSTRING TMP$2664$5;
					__builtin_memset( &TMP$2658$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2658$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2658$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2658$5 );
					__builtin_memset( &TMP$2663$5, 0, 12 );
					FBSTRING* vr$234 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2662$5, 0, 12 );
					FBSTRING* vr$237 = fb_StrConcat( &TMP$2662$5, (void*)"FOUND AN ERROR : Storing datatype not handled 02 = ", 52, (void*)vr$234, -1 );
					fb_StrAssign( (void*)&TMP$2663$5, -1, (void*)vr$237, -1, 0 );
					HWRITEASM64( &TMP$2663$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2663$5 );
					__builtin_memset( &TMP$2664$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2664$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2664$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2664$5 );
				}
				label$2042:;
				label$2022:;
			}
		}
		goto label$2015;
		label$2018:;
		if( TMP$2657$2 != 1 ) goto label$2043;
		label$2044:;
		{
			int32 TMP$2665$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2045;
			TMP$2665$3 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
			goto label$3126;
			label$2045:;
			TMP$2665$3 = 0;
			label$3126:;
			if( TMP$2665$3 == 0 ) goto label$2047;
			{
				FBSTRING TMP$2666$4;
				FBSTRING TMP$2667$4;
				FBSTRING TMP$2668$4;
				FBSTRING* vr$257 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				char* vr$259 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2666$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$2666$4, (void*)vr$259, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2667$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$2667$4, (void*)vr$262, -1, (void*)vr$257, -1 );
				__builtin_memset( &TMP$2668$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$2668$4, (void*)vr$265, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$268, -1, 0 );
			}
			goto label$2046;
			label$2047:;
			{
				FBSTRING TMP$2669$4;
				FBSTRING* vr$271 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2669$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$2669$4, (void*)vr$271, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$274, -1, 0 );
			}
			label$2046:;
		}
		goto label$2015;
		label$2043:;
		if( TMP$2657$2 != 3 ) goto label$2048;
		label$2049:;
		{
			if( *(struct $6IRVREG**)((uint8*)V2$1 + 52) == (struct $6IRVREG*)0u ) goto label$2051;
			{
				FBSTRING TMP$2670$4;
				FBSTRING TMP$2671$4;
				FBSTRING TMP$2672$4;
				int32 vr$279 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				FBSTRING* vr$282 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2670$4, 0, 12 );
				FBSTRING* vr$285 = fb_StrConcat( &TMP$2670$4, (void*)vr$282, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$2671$4, 0, 12 );
				FBSTRING* vr$288 = fb_StrConcat( &TMP$2671$4, (void*)vr$285, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$279 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2672$4, 0, 12 );
				FBSTRING* vr$291 = fb_StrConcat( &TMP$2672$4, (void*)vr$288, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$291, -1, 0 );
			}
			goto label$2050;
			label$2051:;
			{
				FBSTRING TMP$2673$4;
				FBSTRING TMP$2674$4;
				FBSTRING* vr$294 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2673$4, 0, 12 );
				FBSTRING* vr$297 = fb_StrConcat( &TMP$2673$4, (void*)"[", 2, (void*)vr$294, -1 );
				__builtin_memset( &TMP$2674$4, 0, 12 );
				FBSTRING* vr$300 = fb_StrConcat( &TMP$2674$4, (void*)vr$297, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$300, -1, 0 );
			}
			label$2050:;
		}
		goto label$2015;
		label$2048:;
		if( TMP$2657$2 != 5 ) goto label$2052;
		label$2053:;
		{
			FBSTRING TMP$2675$3;
			FBSTRING TMP$2676$3;
			FBSTRING TMP$2677$3;
			FBSTRING* vr$303 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			char* vr$305 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2675$3, 0, 12 );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$2675$3, (void*)vr$305, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2676$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$2676$3, (void*)vr$308, -1, (void*)vr$303, -1 );
			__builtin_memset( &TMP$2677$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$2677$3, (void*)vr$311, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$314, -1, 0 );
		}
		goto label$2015;
		label$2052:;
		if( TMP$2657$2 != 0 ) goto label$2054;
		label$2055:;
		{
			int32 TMP$2678$3;
			if( (-(*(int32*)((uint8*)V1$1 + 4) == 1) & -(*(int64*)((uint8*)V2$1 + 24) != 0ll)) == 0 ) goto label$2057;
			{
				*(int64*)((uint8*)V2$1 + 24) = 1ll;
			}
			label$2057:;
			label$2056:;
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$2058;
			TMP$2678$3 = 24;
			goto label$3127;
			label$2058:;
			TMP$2678$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3127:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$2678$3 * 28)) != 1 ) goto label$2060;
			{
				FBSTRING* vr$329 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$329, -1, 0 );
			}
			goto label$2059;
			label$2060:;
			{
				FBSTRING* vr$332 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$332, -1, 0 );
			}
			label$2059:;
		}
		goto label$2015;
		label$2054:;
		{
			FBSTRING TMP$2679$3;
			FBSTRING TMP$2680$3;
			FBSTRING TMP$2681$3;
			__builtin_memset( &TMP$2679$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2679$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2679$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2679$3 );
			__builtin_memset( &TMP$2680$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2680$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2680$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2680$3 );
			__builtin_memset( &TMP$2681$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2681$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2681$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2681$3 );
		}
		label$2061:;
		label$2015:;
	}
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$2063;
	{
		DTYPE$1 = 8;
		label$2063:;
	}
	{
		if( DTYPE$1 == 8 ) goto label$2066;
		label$2067:;
		if( DTYPE$1 == 9 ) goto label$2066;
		label$2068:;
		if( DTYPE$1 == 13 ) goto label$2066;
		label$2069:;
		if( DTYPE$1 == 14 ) goto label$2066;
		label$2070:;
		if( DTYPE$1 == 16 ) goto label$2066;
		label$2071:;
		if( DTYPE$1 != 10 ) goto label$2065;
		label$2066:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov rax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", rax", 6, 0 );
		}
		goto label$2064;
		label$2065:;
		if( DTYPE$1 == 11 ) goto label$2073;
		label$2074:;
		if( DTYPE$1 == 12 ) goto label$2073;
		label$2075:;
		if( DTYPE$1 != 15 ) goto label$2072;
		label$2073:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
		}
		goto label$2064;
		label$2072:;
		if( DTYPE$1 == 5 ) goto label$2077;
		label$2078:;
		if( DTYPE$1 != 6 ) goto label$2076;
		label$2077:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
		}
		goto label$2064;
		label$2076:;
		if( DTYPE$1 == 2 ) goto label$2080;
		label$2081:;
		if( DTYPE$1 == 3 ) goto label$2080;
		label$2082:;
		if( DTYPE$1 == 1 ) goto label$2080;
		label$2083:;
		if( DTYPE$1 != 4 ) goto label$2079;
		label$2080:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov al, ", 9, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", al", 5, 0 );
		}
		goto label$2064;
		label$2079:;
		if( DTYPE$1 != 7 ) goto label$2084;
		label$2085:;
		{
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 2 ) goto label$2087;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
			}
			goto label$2086;
			label$2087:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) != 4 ) goto label$2088;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
			}
			goto label$2086;
			label$2088:;
			{
				FBSTRING TMP$2683$4;
				FBSTRING TMP$2686$4;
				FBSTRING TMP$2687$4;
				__builtin_memset( &TMP$2683$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2683$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2683$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2683$4 );
				__builtin_memset( &TMP$2686$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2686$4, -1, (void*)"FOUND AN ERROR : emitstore datatype WCHAR not handled", 54, 0 );
				HWRITEASM64( &TMP$2686$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2686$4 );
				__builtin_memset( &TMP$2687$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2687$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2687$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2687$4 );
			}
			label$2086:;
		}
		goto label$2064;
		label$2084:;
		{
			FBSTRING TMP$2688$3;
			FBSTRING TMP$2692$3;
			FBSTRING TMP$2693$3;
			FBSTRING TMP$2694$3;
			__builtin_memset( &TMP$2688$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2688$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2688$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2688$3 );
			__builtin_memset( &TMP$2693$3, 0, 12 );
			FBSTRING* vr$384 = fb_IntToStr( DTYPE$1 );
			__builtin_memset( &TMP$2692$3, 0, 12 );
			FBSTRING* vr$387 = fb_StrConcat( &TMP$2692$3, (void*)"FOUND AN ERROR : emitstore datatype not handled 03= ", 53, (void*)vr$384, -1 );
			fb_StrAssign( (void*)&TMP$2693$3, -1, (void*)vr$387, -1, 0 );
			HWRITEASM64( &TMP$2693$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2693$3 );
			__builtin_memset( &TMP$2694$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2694$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2694$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2694$3 );
		}
		label$2089:;
		label$2064:;
	}
	if( (-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 1)) == 0 ) goto label$2091;
	{
		int32 TMP$2695$2;
		FBSTRING TMP$2704$2;
		FBSTRING TMP$2705$2;
		FBSTRING TMP$2706$2;
		FBSTRING TMP$2707$2;
		FBSTRING TMP$2708$2;
		FBSTRING TMP$2709$2;
		FBSTRING TMP$2710$2;
		if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2092;
		int32 vr$401 = FBGETOPTION( 0 );
		TMP$2695$2 = -(vr$401 == 2);
		goto label$3128;
		label$2092:;
		TMP$2695$2 = 0;
		label$3128:;
		if( TMP$2695$2 == 0 ) goto label$2094;
		{
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) == 0 ) goto label$2096;
			{
				FBSTRING TMP$2696$4;
				FBSTRING TMP$2697$4;
				FBSTRING TMP$2698$4;
				FBSTRING TMP$2699$4;
				FBSTRING TMP$2700$4;
				int32 vr$406 = REG_FINDFREE( 999998, -1 );
				TEMPO$1 = vr$406;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2700$4, 0, 12 );
				char* vr$412 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2696$4, 0, 12 );
				FBSTRING* vr$416 = fb_StrConcat( &TMP$2696$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2697$4, 0, 12 );
				FBSTRING* vr$419 = fb_StrConcat( &TMP$2697$4, (void*)vr$416, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2698$4, 0, 12 );
				FBSTRING* vr$422 = fb_StrConcat( &TMP$2698$4, (void*)vr$419, -1, (void*)vr$412, 0 );
				__builtin_memset( &TMP$2699$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$2699$4, (void*)vr$422, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2700$4, -1, (void*)vr$425, -1, 0 );
				HWRITEASM64( &TMP$2700$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2700$4 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
			}
			label$2096:;
			label$2095:;
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) == 0 ) goto label$2098;
			{
				FBSTRING TMP$2701$4;
				FBSTRING TMP$2702$4;
				FBSTRING TMP$2703$4;
				__builtin_memset( &TMP$2703$4, 0, 12 );
				char* vr$438 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2701$4, 0, 12 );
				FBSTRING* vr$441 = fb_StrConcat( &TMP$2701$4, (void*)"mov rax, ", 10, (void*)vr$438, 0 );
				__builtin_memset( &TMP$2702$4, 0, 12 );
				FBSTRING* vr$444 = fb_StrConcat( &TMP$2702$4, (void*)vr$441, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2703$4, -1, (void*)vr$444, -1, 0 );
				HWRITEASM64( &TMP$2703$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2703$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"[rax]", 6, 0 );
			}
			label$2098:;
			label$2097:;
		}
		label$2094:;
		label$2093:;
		__builtin_memset( &TMP$2706$2, 0, 12 );
		__builtin_memset( &TMP$2704$2, 0, 12 );
		FBSTRING* vr$455 = fb_StrConcat( &TMP$2704$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2705$2, 0, 12 );
		FBSTRING* vr$458 = fb_StrConcat( &TMP$2705$2, (void*)vr$455, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2706$2, -1, (void*)vr$458, -1, 0 );
		HWRITEASM64( &TMP$2706$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2706$2 );
		__builtin_memset( &TMP$2710$2, 0, 12 );
		__builtin_memset( &TMP$2707$2, 0, 12 );
		FBSTRING* vr$468 = fb_StrConcat( &TMP$2707$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2708$2, 0, 12 );
		FBSTRING* vr$471 = fb_StrConcat( &TMP$2708$2, (void*)vr$468, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2709$2, 0, 12 );
		FBSTRING* vr$474 = fb_StrConcat( &TMP$2709$2, (void*)vr$471, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2710$2, -1, (void*)vr$474, -1, 0 );
		HWRITEASM64( &TMP$2710$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2710$2 );
	}
	goto label$2090;
	label$2091:;
	if( (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 2)) == 0 ) goto label$2099;
	{
		FBSTRING TMP$2711$2;
		FBSTRING TMP$2712$2;
		FBSTRING TMP$2713$2;
		FBSTRING TMP$2714$2;
		FBSTRING TMP$2715$2;
		FBSTRING TMP$2716$2;
		FBSTRING TMP$2717$2;
		int32 vr$484 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$484 == 0 ) goto label$2101;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2101:;
		}
		__builtin_memset( &TMP$2713$2, 0, 12 );
		__builtin_memset( &TMP$2711$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$2711$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2712$2, 0, 12 );
		FBSTRING* vr$495 = fb_StrConcat( &TMP$2712$2, (void*)vr$492, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2713$2, -1, (void*)vr$495, -1, 0 );
		HWRITEASM64( &TMP$2713$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2713$2 );
		int32 vr$500 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$500 == 0 ) goto label$2103;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2103:;
		}
		__builtin_memset( &TMP$2717$2, 0, 12 );
		__builtin_memset( &TMP$2714$2, 0, 12 );
		FBSTRING* vr$508 = fb_StrConcat( &TMP$2714$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2715$2, 0, 12 );
		FBSTRING* vr$511 = fb_StrConcat( &TMP$2715$2, (void*)vr$508, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2716$2, 0, 12 );
		FBSTRING* vr$514 = fb_StrConcat( &TMP$2716$2, (void*)vr$511, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2717$2, -1, (void*)vr$514, -1, 0 );
		HWRITEASM64( &TMP$2717$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2717$2 );
	}
	goto label$2090;
	label$2099:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 3)) | (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2104;
	{
		FBSTRING TMP$2718$2;
		FBSTRING TMP$2719$2;
		FBSTRING TMP$2720$2;
		FBSTRING TMP$2721$2;
		FBSTRING TMP$2722$2;
		FBSTRING TMP$2723$2;
		FBSTRING TMP$2724$2;
		__builtin_memset( &TMP$2720$2, 0, 12 );
		__builtin_memset( &TMP$2718$2, 0, 12 );
		FBSTRING* vr$535 = fb_StrConcat( &TMP$2718$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2719$2, 0, 12 );
		FBSTRING* vr$538 = fb_StrConcat( &TMP$2719$2, (void*)vr$535, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2720$2, -1, (void*)vr$538, -1, 0 );
		HWRITEASM64( &TMP$2720$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2720$2 );
		__builtin_memset( &TMP$2724$2, 0, 12 );
		__builtin_memset( &TMP$2721$2, 0, 12 );
		FBSTRING* vr$548 = fb_StrConcat( &TMP$2721$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2722$2, 0, 12 );
		FBSTRING* vr$551 = fb_StrConcat( &TMP$2722$2, (void*)vr$548, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2723$2, 0, 12 );
		FBSTRING* vr$554 = fb_StrConcat( &TMP$2723$2, (void*)vr$551, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2724$2, -1, (void*)vr$554, -1, 0 );
		HWRITEASM64( &TMP$2724$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2724$2 );
	}
	goto label$2090;
	label$2104:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2105;
	{
		FBSTRING TMP$2725$2;
		FBSTRING TMP$2726$2;
		FBSTRING TMP$2727$2;
		FBSTRING TMP$2728$2;
		FBSTRING TMP$2729$2;
		FBSTRING TMP$2730$2;
		FBSTRING TMP$2731$2;
		int32 vr$570 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$570 == 0 ) goto label$2107;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2107:;
		}
		__builtin_memset( &TMP$2727$2, 0, 12 );
		__builtin_memset( &TMP$2725$2, 0, 12 );
		FBSTRING* vr$578 = fb_StrConcat( &TMP$2725$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2726$2, 0, 12 );
		FBSTRING* vr$581 = fb_StrConcat( &TMP$2726$2, (void*)vr$578, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2727$2, -1, (void*)vr$581, -1, 0 );
		HWRITEASM64( &TMP$2727$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2727$2 );
		int32 vr$586 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$586 == 0 ) goto label$2109;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2109:;
		}
		__builtin_memset( &TMP$2731$2, 0, 12 );
		__builtin_memset( &TMP$2728$2, 0, 12 );
		FBSTRING* vr$594 = fb_StrConcat( &TMP$2728$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2729$2, 0, 12 );
		FBSTRING* vr$597 = fb_StrConcat( &TMP$2729$2, (void*)vr$594, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2730$2, 0, 12 );
		FBSTRING* vr$600 = fb_StrConcat( &TMP$2730$2, (void*)vr$597, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2731$2, -1, (void*)vr$600, -1, 0 );
		HWRITEASM64( &TMP$2731$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2731$2 );
	}
	goto label$2090;
	label$2105:;
	if( ((-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 3))) == 0 ) goto label$2110;
	{
		FBSTRING TMP$2732$2;
		FBSTRING TMP$2733$2;
		FBSTRING TMP$2734$2;
		FBSTRING TMP$2735$2;
		FBSTRING TMP$2736$2;
		FBSTRING TMP$2737$2;
		FBSTRING TMP$2738$2;
		int32 vr$616 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$616 == 0 ) goto label$2112;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2112:;
		}
		__builtin_memset( &TMP$2734$2, 0, 12 );
		__builtin_memset( &TMP$2732$2, 0, 12 );
		FBSTRING* vr$624 = fb_StrConcat( &TMP$2732$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2733$2, 0, 12 );
		FBSTRING* vr$627 = fb_StrConcat( &TMP$2733$2, (void*)vr$624, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2734$2, -1, (void*)vr$627, -1, 0 );
		HWRITEASM64( &TMP$2734$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2734$2 );
		int32 vr$632 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$632 == 0 ) goto label$2114;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2114:;
		}
		__builtin_memset( &TMP$2738$2, 0, 12 );
		__builtin_memset( &TMP$2735$2, 0, 12 );
		FBSTRING* vr$640 = fb_StrConcat( &TMP$2735$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2736$2, 0, 12 );
		FBSTRING* vr$643 = fb_StrConcat( &TMP$2736$2, (void*)vr$640, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2737$2, 0, 12 );
		FBSTRING* vr$646 = fb_StrConcat( &TMP$2737$2, (void*)vr$643, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2738$2, -1, (void*)vr$646, -1, 0 );
		HWRITEASM64( &TMP$2738$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2738$2 );
	}
	goto label$2090;
	label$2110:;
	if( (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 3)) == 0 ) goto label$2115;
	{
		FBSTRING TMP$2739$2;
		FBSTRING TMP$2740$2;
		FBSTRING TMP$2741$2;
		FBSTRING TMP$2742$2;
		FBSTRING TMP$2743$2;
		FBSTRING TMP$2744$2;
		FBSTRING TMP$2745$2;
		__builtin_memset( &TMP$2741$2, 0, 12 );
		__builtin_memset( &TMP$2739$2, 0, 12 );
		FBSTRING* vr$661 = fb_StrConcat( &TMP$2739$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2740$2, 0, 12 );
		FBSTRING* vr$664 = fb_StrConcat( &TMP$2740$2, (void*)vr$661, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2741$2, -1, (void*)vr$664, -1, 0 );
		HWRITEASM64( &TMP$2741$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2741$2 );
		__builtin_memset( &TMP$2745$2, 0, 12 );
		__builtin_memset( &TMP$2742$2, 0, 12 );
		FBSTRING* vr$674 = fb_StrConcat( &TMP$2742$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2743$2, 0, 12 );
		FBSTRING* vr$677 = fb_StrConcat( &TMP$2743$2, (void*)vr$674, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2744$2, 0, 12 );
		FBSTRING* vr$680 = fb_StrConcat( &TMP$2744$2, (void*)vr$677, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2745$2, -1, (void*)vr$680, -1, 0 );
		HWRITEASM64( &TMP$2745$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2745$2 );
	}
	goto label$2090;
	label$2115:;
	{
		int32 vr$685 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$685 == 0 ) goto label$2117;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2117:;
		}
		int32 vr$688 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$688 == 0 ) goto label$2119;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2119:;
		}
		if( *(int32*)V2$1 != 0 ) goto label$2121;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2746$4;
				TMP$2746$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2746$4 != 4 ) goto label$2123;
				label$2124:;
				{
					FBSTRING TMP$2748$5;
					FBSTRING TMP$2749$5;
					FBSTRING TMP$2750$5;
					FBSTRING TMP$2751$5;
					FBSTRING TMP$2752$5;
					__builtin_memset( &TMP$2752$5, 0, 12 );
					__builtin_memset( &TMP$2748$5, 0, 12 );
					FBSTRING* vr$698 = fb_StrConcat( &TMP$2748$5, (void*)"movNOTUSED? ", 13, (void*)&PREFIX$1, -1 );
					__builtin_memset( &TMP$2749$5, 0, 12 );
					FBSTRING* vr$701 = fb_StrConcat( &TMP$2749$5, (void*)vr$698, -1, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2750$5, 0, 12 );
					FBSTRING* vr$704 = fb_StrConcat( &TMP$2750$5, (void*)vr$701, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2751$5, 0, 12 );
					FBSTRING* vr$707 = fb_StrConcat( &TMP$2751$5, (void*)vr$704, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2752$5, -1, (void*)vr$707, -1, 0 );
					HWRITEASM64( &TMP$2752$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2752$5 );
				}
				goto label$2122;
				label$2123:;
				if( TMP$2746$4 == 1 ) goto label$2126;
				label$2127:;
				if( TMP$2746$4 == 2 ) goto label$2126;
				label$2128:;
				if( TMP$2746$4 != 3 ) goto label$2125;
				label$2126:;
				{
					int32 TMP$2753$5;
					if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2129;
					int32 vr$712 = FBGETOPTION( 0 );
					TMP$2753$5 = -(vr$712 == 2);
					goto label$3129;
					label$2129:;
					TMP$2753$5 = 0;
					label$3129:;
					if( TMP$2753$5 == 0 ) goto label$2131;
					{
						int32 TMP$2754$6;
						if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2132;
						TMP$2754$6 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
						goto label$3130;
						label$2132:;
						TMP$2754$6 = 0;
						label$3130:;
						if( TMP$2754$6 == 0 ) goto label$2134;
						{
							FBSTRING TMP$2755$7;
							FBSTRING TMP$2756$7;
							FBSTRING TMP$2757$7;
							FBSTRING TMP$2758$7;
							FBSTRING TMP$2759$7;
							int32 vr$719 = REG_FINDFREE( 999998, -1 );
							TEMPO$1 = vr$719;
							fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
							*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
							__builtin_memset( &TMP$2759$7, 0, 12 );
							char* vr$725 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2755$7, 0, 12 );
							FBSTRING* vr$729 = fb_StrConcat( &TMP$2755$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2756$7, 0, 12 );
							FBSTRING* vr$732 = fb_StrConcat( &TMP$2756$7, (void*)vr$729, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2757$7, 0, 12 );
							FBSTRING* vr$735 = fb_StrConcat( &TMP$2757$7, (void*)vr$732, -1, (void*)vr$725, 0 );
							__builtin_memset( &TMP$2758$7, 0, 12 );
							FBSTRING* vr$738 = fb_StrConcat( &TMP$2758$7, (void*)vr$735, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2759$7, -1, (void*)vr$738, -1, 0 );
							HWRITEASM64( &TMP$2759$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2759$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
						}
						label$2134:;
						label$2133:;
					}
					label$2131:;
					label$2130:;
					{
						if( DTYPE$1 != 15 ) goto label$2136;
						label$2137:;
						{
							FBSTRING TMP$2760$7;
							FBSTRING TMP$2761$7;
							FBSTRING TMP$2762$7;
							FBSTRING TMP$2763$7;
							FBSTRING TMP$2764$7;
							__builtin_memset( &TMP$2764$7, 0, 12 );
							__builtin_memset( &TMP$2760$7, 0, 12 );
							FBSTRING* vr$752 = fb_StrConcat( &TMP$2760$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2761$7, 0, 12 );
							FBSTRING* vr$755 = fb_StrConcat( &TMP$2761$7, (void*)vr$752, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2762$7, 0, 12 );
							FBSTRING* vr$758 = fb_StrConcat( &TMP$2762$7, (void*)vr$755, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2763$7, 0, 12 );
							FBSTRING* vr$761 = fb_StrConcat( &TMP$2763$7, (void*)vr$758, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2764$7, -1, (void*)vr$761, -1, 0 );
							HWRITEASM64( &TMP$2764$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2764$7 );
						}
						goto label$2135;
						label$2136:;
						if( DTYPE$1 != 16 ) goto label$2138;
						label$2139:;
						{
							FBSTRING TMP$2765$7;
							FBSTRING TMP$2766$7;
							FBSTRING TMP$2767$7;
							FBSTRING TMP$2768$7;
							FBSTRING TMP$2769$7;
							FBSTRING TMP$2770$7;
							__builtin_memset( &TMP$2766$7, 0, 12 );
							__builtin_memset( &TMP$2765$7, 0, 12 );
							FBSTRING* vr$769 = fb_StrConcat( &TMP$2765$7, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2766$7, -1, (void*)vr$769, -1, 0 );
							HWRITEASM64( &TMP$2766$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2766$7 );
							__builtin_memset( &TMP$2770$7, 0, 12 );
							__builtin_memset( &TMP$2767$7, 0, 12 );
							FBSTRING* vr$778 = fb_StrConcat( &TMP$2767$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2768$7, 0, 12 );
							FBSTRING* vr$781 = fb_StrConcat( &TMP$2768$7, (void*)vr$778, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2769$7, 0, 12 );
							FBSTRING* vr$784 = fb_StrConcat( &TMP$2769$7, (void*)vr$781, -1, (void*)", rax", 6 );
							fb_StrAssign( (void*)&TMP$2770$7, -1, (void*)vr$784, -1, 0 );
							HWRITEASM64( &TMP$2770$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2770$7 );
						}
						goto label$2135;
						label$2138:;
						if( DTYPE$1 == 8 ) goto label$2141;
						label$2142:;
						if( DTYPE$1 == 9 ) goto label$2141;
						label$2143:;
						if( DTYPE$1 == 13 ) goto label$2141;
						label$2144:;
						if( DTYPE$1 == 14 ) goto label$2141;
						label$2145:;
						if( DTYPE$1 != 10 ) goto label$2140;
						label$2141:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2147;
							{
								FBSTRING TMP$2771$8;
								FBSTRING TMP$2772$8;
								FBSTRING TMP$2773$8;
								FBSTRING TMP$2774$8;
								FBSTRING TMP$2775$8;
								FBSTRING TMP$2776$8;
								__builtin_memset( &TMP$2772$8, 0, 12 );
								__builtin_memset( &TMP$2771$8, 0, 12 );
								FBSTRING* vr$797 = fb_StrConcat( &TMP$2771$8, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2772$8, -1, (void*)vr$797, -1, 0 );
								HWRITEASM64( &TMP$2772$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2772$8 );
								__builtin_memset( &TMP$2776$8, 0, 12 );
								__builtin_memset( &TMP$2773$8, 0, 12 );
								FBSTRING* vr$806 = fb_StrConcat( &TMP$2773$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2774$8, 0, 12 );
								FBSTRING* vr$809 = fb_StrConcat( &TMP$2774$8, (void*)vr$806, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2775$8, 0, 12 );
								FBSTRING* vr$812 = fb_StrConcat( &TMP$2775$8, (void*)vr$809, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2776$8, -1, (void*)vr$812, -1, 0 );
								HWRITEASM64( &TMP$2776$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2776$8 );
							}
							goto label$2146;
							label$2147:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2148;
							{
								FBSTRING TMP$2777$8;
								FBSTRING TMP$2778$8;
								FBSTRING TMP$2779$8;
								FBSTRING TMP$2780$8;
								FBSTRING TMP$2781$8;
								FBSTRING TMP$2782$8;
								__builtin_memset( &TMP$2778$8, 0, 12 );
								__builtin_memset( &TMP$2777$8, 0, 12 );
								FBSTRING* vr$821 = fb_StrConcat( &TMP$2777$8, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2778$8, -1, (void*)vr$821, -1, 0 );
								HWRITEASM64( &TMP$2778$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2778$8 );
								__builtin_memset( &TMP$2782$8, 0, 12 );
								__builtin_memset( &TMP$2779$8, 0, 12 );
								FBSTRING* vr$830 = fb_StrConcat( &TMP$2779$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2780$8, 0, 12 );
								FBSTRING* vr$833 = fb_StrConcat( &TMP$2780$8, (void*)vr$830, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2781$8, 0, 12 );
								FBSTRING* vr$836 = fb_StrConcat( &TMP$2781$8, (void*)vr$833, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2782$8, -1, (void*)vr$836, -1, 0 );
								HWRITEASM64( &TMP$2782$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2782$8 );
							}
							goto label$2146;
							label$2148:;
							{
								FBSTRING TMP$2783$8;
								FBSTRING TMP$2784$8;
								FBSTRING TMP$2785$8;
								FBSTRING TMP$2786$8;
								FBSTRING TMP$2787$8;
								__builtin_memset( &TMP$2787$8, 0, 12 );
								__builtin_memset( &TMP$2783$8, 0, 12 );
								FBSTRING* vr$846 = fb_StrConcat( &TMP$2783$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2784$8, 0, 12 );
								FBSTRING* vr$849 = fb_StrConcat( &TMP$2784$8, (void*)vr$846, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2785$8, 0, 12 );
								FBSTRING* vr$852 = fb_StrConcat( &TMP$2785$8, (void*)vr$849, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$2786$8, 0, 12 );
								FBSTRING* vr$855 = fb_StrConcat( &TMP$2786$8, (void*)vr$852, -1, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2787$8, -1, (void*)vr$855, -1, 0 );
								HWRITEASM64( &TMP$2787$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2787$8 );
							}
							label$2146:;
						}
						goto label$2135;
						label$2140:;
						{
							FBSTRING TMP$2788$7;
							FBSTRING TMP$2789$7;
							FBSTRING TMP$2790$7;
							FBSTRING TMP$2791$7;
							FBSTRING TMP$2792$7;
							__builtin_memset( &TMP$2792$7, 0, 12 );
							__builtin_memset( &TMP$2788$7, 0, 12 );
							FBSTRING* vr$865 = fb_StrConcat( &TMP$2788$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2789$7, 0, 12 );
							FBSTRING* vr$868 = fb_StrConcat( &TMP$2789$7, (void*)vr$865, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2790$7, 0, 12 );
							FBSTRING* vr$871 = fb_StrConcat( &TMP$2790$7, (void*)vr$868, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2791$7, 0, 12 );
							FBSTRING* vr$874 = fb_StrConcat( &TMP$2791$7, (void*)vr$871, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2792$7, -1, (void*)vr$874, -1, 0 );
							HWRITEASM64( &TMP$2792$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2792$7 );
						}
						label$2149:;
						label$2135:;
					}
				}
				goto label$2122;
				label$2125:;
				{
					FBSTRING TMP$2793$5;
					FBSTRING TMP$2796$5;
					FBSTRING TMP$2797$5;
					__builtin_memset( &TMP$2793$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2793$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2793$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2793$5 );
					__builtin_memset( &TMP$2796$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2796$5, -1, (void*)"FOUND AN ERROR : in store perhaps OFS not handled", 50, 0 );
					HWRITEASM64( &TMP$2796$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2796$5 );
					__builtin_memset( &TMP$2797$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2797$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2797$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2797$5 );
				}
				label$2150:;
				label$2122:;
			}
		}
		goto label$2120;
		label$2121:;
		if( *(int32*)V2$1 != 5 ) goto label$2151;
		{
			int32 TMP$2798$3;
			int32 TMP$2799$3;
			int32 TMP$2805$3;
			FBSTRING TMP$2812$3;
			FBSTRING TMP$2813$3;
			FBSTRING TMP$2814$3;
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2152;
			TMP$2798$3 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
			goto label$3131;
			label$2152:;
			TMP$2798$3 = 0;
			label$3131:;
			if( TMP$2798$3 == 0 ) goto label$2153;
			int32 vr$895 = FBGETOPTION( 0 );
			TMP$2799$3 = -(vr$895 == 2);
			goto label$3132;
			label$2153:;
			TMP$2799$3 = 0;
			label$3132:;
			if( TMP$2799$3 == 0 ) goto label$2155;
			{
				FBSTRING TMP$2800$4;
				FBSTRING TMP$2801$4;
				FBSTRING TMP$2802$4;
				__builtin_memset( &TMP$2802$4, 0, 12 );
				FBSTRING* vr$898 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
				int32 vr$900 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$898 );
				FBSTRING* vr$903 = fb_LEFT( (FBSTRING*)&OP2$1, vr$900 + -1 );
				__builtin_memset( &TMP$2800$4, 0, 12 );
				FBSTRING* vr$906 = fb_StrConcat( &TMP$2800$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$903, -1 );
				__builtin_memset( &TMP$2801$4, 0, 12 );
				FBSTRING* vr$909 = fb_StrConcat( &TMP$2801$4, (void*)vr$906, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2802$4, -1, (void*)vr$909, -1, 0 );
				HWRITEASM64( &TMP$2802$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2802$4 );
			}
			goto label$2154;
			label$2155:;
			{
				FBSTRING TMP$2803$4;
				FBSTRING TMP$2804$4;
				__builtin_memset( &TMP$2804$4, 0, 12 );
				__builtin_memset( &TMP$2803$4, 0, 12 );
				FBSTRING* vr$917 = fb_StrConcat( &TMP$2803$4, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2804$4, -1, (void*)vr$917, -1, 0 );
				HWRITEASM64( &TMP$2804$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2804$4 );
			}
			label$2154:;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2156;
			int32 vr$922 = FBGETOPTION( 0 );
			TMP$2805$3 = -(vr$922 == 2);
			goto label$3133;
			label$2156:;
			TMP$2805$3 = 0;
			label$3133:;
			if( TMP$2805$3 == 0 ) goto label$2158;
			{
				int32 TMP$2806$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2159;
				TMP$2806$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3134;
				label$2159:;
				TMP$2806$4 = 0;
				label$3134:;
				if( TMP$2806$4 == 0 ) goto label$2161;
				{
					FBSTRING TMP$2807$5;
					FBSTRING TMP$2808$5;
					FBSTRING TMP$2809$5;
					FBSTRING TMP$2810$5;
					FBSTRING TMP$2811$5;
					int32 vr$929 = REG_FINDFREE( 999998, -1 );
					TEMPO$1 = vr$929;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
					*(int32*)((int32)(int32*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
					__builtin_memset( &TMP$2811$5, 0, 12 );
					char* vr$935 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2807$5, 0, 12 );
					FBSTRING* vr$939 = fb_StrConcat( &TMP$2807$5, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
					__builtin_memset( &TMP$2808$5, 0, 12 );
					FBSTRING* vr$942 = fb_StrConcat( &TMP$2808$5, (void*)vr$939, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2809$5, 0, 12 );
					FBSTRING* vr$945 = fb_StrConcat( &TMP$2809$5, (void*)vr$942, -1, (void*)vr$935, 0 );
					__builtin_memset( &TMP$2810$5, 0, 12 );
					FBSTRING* vr$948 = fb_StrConcat( &TMP$2810$5, (void*)vr$945, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2811$5, -1, (void*)vr$948, -1, 0 );
					HWRITEASM64( &TMP$2811$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2811$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
				}
				label$2161:;
				label$2160:;
			}
			label$2158:;
			label$2157:;
			__builtin_memset( &TMP$2814$3, 0, 12 );
			__builtin_memset( &TMP$2812$3, 0, 12 );
			FBSTRING* vr$960 = fb_StrConcat( &TMP$2812$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2813$3, 0, 12 );
			FBSTRING* vr$963 = fb_StrConcat( &TMP$2813$3, (void*)vr$960, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2814$3, -1, (void*)vr$963, -1, 0 );
			HWRITEASM64( &TMP$2814$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2814$3 );
		}
		goto label$2120;
		label$2151:;
		{
			int32 TMP$2815$3;
			FBSTRING TMP$2820$3;
			FBSTRING TMP$2821$3;
			FBSTRING TMP$2822$3;
			FBSTRING TMP$2823$3;
			if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2162;
			int32 vr$968 = FBGETOPTION( 0 );
			TMP$2815$3 = -(vr$968 == 2);
			goto label$3135;
			label$2162:;
			TMP$2815$3 = 0;
			label$3135:;
			if( TMP$2815$3 == 0 ) goto label$2164;
			{
				int32 TMP$2816$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2165;
				TMP$2816$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3136;
				label$2165:;
				TMP$2816$4 = 0;
				label$3136:;
				if( TMP$2816$4 == 0 ) goto label$2167;
				{
					FBSTRING TMP$2817$5;
					FBSTRING TMP$2818$5;
					FBSTRING TMP$2819$5;
					__builtin_memset( &TMP$2819$5, 0, 12 );
					char* vr$977 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2817$5, 0, 12 );
					FBSTRING* vr$980 = fb_StrConcat( &TMP$2817$5, (void*)"mov rax, ", 10, (void*)vr$977, 0 );
					__builtin_memset( &TMP$2818$5, 0, 12 );
					FBSTRING* vr$983 = fb_StrConcat( &TMP$2818$5, (void*)vr$980, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2819$5, -1, (void*)vr$983, -1, 0 );
					HWRITEASM64( &TMP$2819$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2819$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				label$2167:;
				label$2166:;
			}
			label$2164:;
			label$2163:;
			__builtin_memset( &TMP$2823$3, 0, 12 );
			__builtin_memset( &TMP$2820$3, 0, 12 );
			FBSTRING* vr$993 = fb_StrConcat( &TMP$2820$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2821$3, 0, 12 );
			FBSTRING* vr$996 = fb_StrConcat( &TMP$2821$3, (void*)vr$993, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2822$3, 0, 12 );
			FBSTRING* vr$999 = fb_StrConcat( &TMP$2822$3, (void*)vr$996, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2823$3, -1, (void*)vr$999, -1, 0 );
			HWRITEASM64( &TMP$2823$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2823$3 );
		}
		label$2120:;
	}
	label$2090:;
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&CODE2$1 );
	fb_StrDelete( (FBSTRING*)&CODE1$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1959:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$2168:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$2824$2;
		TMP$2824$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2824$2 != 2 ) goto label$2171;
		label$2172:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2170;
		label$2171:;
		if( TMP$2824$2 != 1 ) goto label$2173;
		label$2174:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2176;
			{
				FBSTRING TMP$2825$4;
				FBSTRING TMP$2826$4;
				FBSTRING TMP$2827$4;
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				char* vr$21 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2825$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$2825$4, (void*)vr$21, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2826$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$2826$4, (void*)vr$24, -1, (void*)vr$19, -1 );
				__builtin_memset( &TMP$2827$4, 0, 12 );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$2827$4, (void*)vr$27, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$30, -1, 0 );
			}
			goto label$2175;
			label$2176:;
			{
				FBSTRING TMP$2828$4;
				FBSTRING* vr$33 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2828$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$2828$4, (void*)vr$33, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$36, -1, 0 );
			}
			label$2175:;
		}
		goto label$2170;
		label$2173:;
		if( TMP$2824$2 != 3 ) goto label$2177;
		label$2178:;
		{
			FBSTRING TMP$2829$3;
			FBSTRING TMP$2830$3;
			FBSTRING TMP$2831$3;
			FBSTRING TMP$2832$3;
			FBSTRING TMP$2835$3;
			FBSTRING TMP$2836$3;
			int32 vr$40 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$43 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$2829$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$2829$3, (void*)vr$43, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2830$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$2830$3, (void*)vr$46, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$40 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2831$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$2831$3, (void*)vr$49, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$52, -1, 0 );
			__builtin_memset( &TMP$2832$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2832$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2832$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2832$3 );
			__builtin_memset( &TMP$2835$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2835$3, -1, (void*)"FOUND AN ERROR : in loadres OFS not handled", 44, 0 );
			HWRITEASM64( &TMP$2835$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2835$3 );
			__builtin_memset( &TMP$2836$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2836$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2836$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2836$3 );
		}
		goto label$2170;
		label$2177:;
		if( TMP$2824$2 != 4 ) goto label$2179;
		label$2180:;
		{
			int32 vr$67 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$67 << (2 & 31))), 0, 0 );
		}
		goto label$2170;
		label$2179:;
		{
			FBSTRING TMP$2837$3;
			FBSTRING TMP$2840$3;
			FBSTRING TMP$2841$3;
			__builtin_memset( &TMP$2837$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2837$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2837$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2837$3 );
			__builtin_memset( &TMP$2840$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2840$3, -1, (void*)"FOUND AN ERROR : in loadres typ not handled", 44, 0 );
			HWRITEASM64( &TMP$2840$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2840$3 );
			__builtin_memset( &TMP$2841$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2841$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2841$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2841$3 );
		}
		label$2181:;
		label$2170:;
	}
	int32 vr$82 = HISSTRUCTIN2REGS( V1$1 );
	if( vr$82 == 0 ) goto label$2183;
	{
		int32 TMP$2842$2;
		FBSTRING TMP$2848$2;
		if( *(int32*)V1$1 != 1 ) goto label$2184;
		TMP$2842$2 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) != 0);
		goto label$3137;
		label$2184:;
		TMP$2842$2 = -1;
		label$3137:;
		if( TMP$2842$2 == 0 ) goto label$2186;
		{
			FBSTRING TMP$2843$3;
			FBSTRING TMP$2846$3;
			FBSTRING TMP$2847$3;
			__builtin_memset( &TMP$2843$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2843$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2843$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2843$3 );
			__builtin_memset( &TMP$2846$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2846$3, -1, (void*)"FOUND AN ERROR : IR_VREGTYPE not handled in emitloadres (linux)", 64, 0 );
			HWRITEASM64( &TMP$2846$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2846$3 );
			__builtin_memset( &TMP$2847$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2847$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2847$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2847$3 );
		}
		label$2186:;
		label$2185:;
		LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
		FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) + 8ll );
		__builtin_memset( &TMP$2848$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$2848$2, (void*)vr$111, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$114, -1, 0 );
		{
			uint32 TMP$2849$3;
			TMP$2849$3 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) + 132);
			goto label$2188;
			label$2189:;
			{
				FBSTRING TMP$2850$4;
				FBSTRING TMP$2851$4;
				FBSTRING TMP$2853$4;
				FBSTRING TMP$2854$4;
				__builtin_memset( &TMP$2851$4, 0, 12 );
				__builtin_memset( &TMP$2850$4, 0, 12 );
				FBSTRING* vr$123 = fb_StrConcat( &TMP$2850$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2851$4, -1, (void*)vr$123, -1, 0 );
				HWRITEASM64( &TMP$2851$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2851$4 );
				__builtin_memset( &TMP$2854$4, 0, 12 );
				__builtin_memset( &TMP$2853$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$2853$4, (void*)"mov rdx, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2854$4, -1, (void*)vr$131, -1, 0 );
				HWRITEASM64( &TMP$2854$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2854$4 );
			}
			goto label$2187;
			label$2190:;
			{
				FBSTRING TMP$2855$4;
				FBSTRING TMP$2856$4;
				__builtin_memset( &TMP$2856$4, 0, 12 );
				__builtin_memset( &TMP$2855$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$2855$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2856$4, -1, (void*)vr$139, -1, 0 );
				HWRITEASM64( &TMP$2856$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2856$4 );
				if( LGT$1 != 12 ) goto label$2192;
				{
					FBSTRING TMP$2857$5;
					FBSTRING TMP$2858$5;
					__builtin_memset( &TMP$2858$5, 0, 12 );
					__builtin_memset( &TMP$2857$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$2857$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2858$5, -1, (void*)vr$147, -1, 0 );
					HWRITEASM64( &TMP$2858$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2858$5 );
				}
				goto label$2191;
				label$2192:;
				{
					FBSTRING TMP$2859$5;
					FBSTRING TMP$2860$5;
					__builtin_memset( &TMP$2860$5, 0, 12 );
					__builtin_memset( &TMP$2859$5, 0, 12 );
					FBSTRING* vr$155 = fb_StrConcat( &TMP$2859$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2860$5, -1, (void*)vr$155, -1, 0 );
					HWRITEASM64( &TMP$2860$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2860$5 );
				}
				label$2191:;
			}
			goto label$2187;
			label$2193:;
			{
				FBSTRING TMP$2861$4;
				FBSTRING TMP$2862$4;
				FBSTRING TMP$2863$4;
				FBSTRING TMP$2864$4;
				FBSTRING TMP$2865$4;
				FBSTRING TMP$2866$4;
				__builtin_memset( &TMP$2862$4, 0, 12 );
				__builtin_memset( &TMP$2861$4, 0, 12 );
				FBSTRING* vr$163 = fb_StrConcat( &TMP$2861$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2862$4, -1, (void*)vr$163, -1, 0 );
				HWRITEASM64( &TMP$2862$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2862$4 );
				__builtin_memset( &TMP$2866$4, 0, 12 );
				__builtin_memset( &TMP$2863$4, 0, 12 );
				FBSTRING* vr$171 = fb_StrConcat( &TMP$2863$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2864$4, 0, 12 );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$2864$4, (void*)vr$171, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2865$4, 0, 12 );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$2865$4, (void*)vr$174, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2866$4, -1, (void*)vr$177, -1, 0 );
				HWRITEASM64( &TMP$2866$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2866$4 );
			}
			goto label$2187;
			label$2194:;
			{
				FBSTRING TMP$2867$4;
				FBSTRING TMP$2868$4;
				__builtin_memset( &TMP$2868$4, 0, 12 );
				__builtin_memset( &TMP$2867$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$2867$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2868$4, -1, (void*)vr$185, -1, 0 );
				HWRITEASM64( &TMP$2868$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2868$4 );
				if( LGT$1 != 12 ) goto label$2196;
				{
					FBSTRING TMP$2870$5;
					FBSTRING TMP$2871$5;
					__builtin_memset( &TMP$2871$5, 0, 12 );
					__builtin_memset( &TMP$2870$5, 0, 12 );
					FBSTRING* vr$193 = fb_StrConcat( &TMP$2870$5, (void*)"movss xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2871$5, -1, (void*)vr$193, -1, 0 );
					HWRITEASM64( &TMP$2871$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2871$5 );
				}
				goto label$2195;
				label$2196:;
				{
					FBSTRING TMP$2873$5;
					FBSTRING TMP$2874$5;
					__builtin_memset( &TMP$2874$5, 0, 12 );
					__builtin_memset( &TMP$2873$5, 0, 12 );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$2873$5, (void*)"movsd xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2874$5, -1, (void*)vr$201, -1, 0 );
					HWRITEASM64( &TMP$2874$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2874$5 );
				}
				label$2195:;
			}
			goto label$2187;
			label$2188:;
			static const void* tmp$4076[5] = {
				&&label$2189,
				&&label$2190,
				&&label$2187,
				&&label$2193,
				&&label$2194,
			};
			if( (TMP$2849$3 - 2u) > 4u ) goto label$2187;
			goto *tmp$4076[TMP$2849$3 - 2u];
			label$2187:;
		}
	}
	goto label$2182;
	label$2183:;
	{
		int32 TMP$2875$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2197;
		TMP$2875$2 = 24;
		goto label$3138;
		label$2197:;
		TMP$2875$2 = DTYPE$1 & 31;
		label$3138:;
		if( TMP$2875$2 != 24 ) goto label$2199;
		{
			DTYPE$1 = 8;
			label$2199:;
		}
		int32 vr$208 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$208 == 0 ) goto label$2201;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2201:;
		}
		{
			if( DTYPE$1 != 16 ) goto label$2203;
			label$2204:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 511) == 20 ) goto label$2206;
				{
					FBSTRING TMP$2876$5;
					FBSTRING TMP$2877$5;
					__builtin_memset( &TMP$2877$5, 0, 12 );
					__builtin_memset( &TMP$2876$5, 0, 12 );
					FBSTRING* vr$217 = fb_StrConcat( &TMP$2876$5, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$2877$5, -1, (void*)vr$217, -1, 0 );
					HWRITEASM64( &TMP$2877$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2877$5 );
				}
				goto label$2205;
				label$2206:;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2208;
					{
						if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2210;
						{
							FBSTRING TMP$2878$7;
							FBSTRING TMP$2879$7;
							__builtin_memset( &TMP$2879$7, 0, 12 );
							__builtin_memset( &TMP$2878$7, 0, 12 );
							FBSTRING* vr$227 = fb_StrConcat( &TMP$2878$7, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2879$7, -1, (void*)vr$227, -1, 0 );
							HWRITEASM64( &TMP$2879$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2879$7 );
						}
						goto label$2209;
						label$2210:;
						{
							FBSTRING TMP$2880$7;
							FBSTRING TMP$2881$7;
							__builtin_memset( &TMP$2881$7, 0, 12 );
							__builtin_memset( &TMP$2880$7, 0, 12 );
							FBSTRING* vr$235 = fb_StrConcat( &TMP$2880$7, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2881$7, -1, (void*)vr$235, -1, 0 );
							HWRITEASM64( &TMP$2881$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2881$7 );
						}
						label$2209:;
					}
					goto label$2207;
					label$2208:;
					{
						FBSTRING TMP$2882$6;
						FBSTRING TMP$2883$6;
						__builtin_memset( &TMP$2883$6, 0, 12 );
						__builtin_memset( &TMP$2882$6, 0, 12 );
						FBSTRING* vr$243 = fb_StrConcat( &TMP$2882$6, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$2883$6, -1, (void*)vr$243, -1, 0 );
						HWRITEASM64( &TMP$2883$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2883$6 );
					}
					label$2207:;
				}
				label$2205:;
			}
			goto label$2202;
			label$2203:;
			if( DTYPE$1 != 15 ) goto label$2211;
			label$2212:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 511) == 20 ) goto label$2214;
				{
					FBSTRING TMP$2884$5;
					FBSTRING TMP$2885$5;
					__builtin_memset( &TMP$2885$5, 0, 12 );
					__builtin_memset( &TMP$2884$5, 0, 12 );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$2884$5, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$2885$5, -1, (void*)vr$254, -1, 0 );
					HWRITEASM64( &TMP$2885$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2885$5 );
				}
				goto label$2213;
				label$2214:;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2216;
					{
						if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2218;
						{
							FBSTRING TMP$2886$7;
							FBSTRING TMP$2887$7;
							__builtin_memset( &TMP$2887$7, 0, 12 );
							__builtin_memset( &TMP$2886$7, 0, 12 );
							FBSTRING* vr$264 = fb_StrConcat( &TMP$2886$7, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2887$7, -1, (void*)vr$264, -1, 0 );
							HWRITEASM64( &TMP$2887$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2887$7 );
						}
						goto label$2217;
						label$2218:;
						{
							FBSTRING TMP$2888$7;
							FBSTRING TMP$2889$7;
							__builtin_memset( &TMP$2889$7, 0, 12 );
							__builtin_memset( &TMP$2888$7, 0, 12 );
							FBSTRING* vr$272 = fb_StrConcat( &TMP$2888$7, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
							fb_StrAssign( (void*)&TMP$2889$7, -1, (void*)vr$272, -1, 0 );
							HWRITEASM64( &TMP$2889$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2889$7 );
						}
						label$2217:;
					}
					goto label$2215;
					label$2216:;
					{
						FBSTRING TMP$2890$6;
						FBSTRING TMP$2891$6;
						__builtin_memset( &TMP$2891$6, 0, 12 );
						__builtin_memset( &TMP$2890$6, 0, 12 );
						FBSTRING* vr$280 = fb_StrConcat( &TMP$2890$6, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$2891$6, -1, (void*)vr$280, -1, 0 );
						HWRITEASM64( &TMP$2891$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2891$6 );
					}
					label$2215:;
				}
				label$2213:;
			}
			goto label$2202;
			label$2211:;
			if( DTYPE$1 == 8 ) goto label$2220;
			label$2221:;
			if( DTYPE$1 == 9 ) goto label$2220;
			label$2222:;
			if( DTYPE$1 == 13 ) goto label$2220;
			label$2223:;
			if( DTYPE$1 == 14 ) goto label$2220;
			label$2224:;
			if( DTYPE$1 != 10 ) goto label$2219;
			label$2220:;
			{
				FBSTRING TMP$2892$4;
				FBSTRING TMP$2893$4;
				FBSTRING TMP$2894$4;
				FBSTRING TMP$2895$4;
				__builtin_memset( &TMP$2895$4, 0, 12 );
				__builtin_memset( &TMP$2892$4, 0, 12 );
				FBSTRING* vr$288 = fb_StrConcat( &TMP$2892$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2893$4, 0, 12 );
				FBSTRING* vr$291 = fb_StrConcat( &TMP$2893$4, (void*)vr$288, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2894$4, 0, 12 );
				FBSTRING* vr$294 = fb_StrConcat( &TMP$2894$4, (void*)vr$291, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2895$4, -1, (void*)vr$294, -1, 0 );
				HWRITEASM64( &TMP$2895$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2895$4 );
			}
			goto label$2202;
			label$2219:;
			if( DTYPE$1 == 11 ) goto label$2226;
			label$2227:;
			if( DTYPE$1 != 12 ) goto label$2225;
			label$2226:;
			{
				FBSTRING TMP$2896$4;
				FBSTRING TMP$2897$4;
				FBSTRING TMP$2898$4;
				FBSTRING TMP$2899$4;
				__builtin_memset( &TMP$2899$4, 0, 12 );
				__builtin_memset( &TMP$2896$4, 0, 12 );
				FBSTRING* vr$302 = fb_StrConcat( &TMP$2896$4, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
				__builtin_memset( &TMP$2897$4, 0, 12 );
				FBSTRING* vr$305 = fb_StrConcat( &TMP$2897$4, (void*)vr$302, -1, (void*)", DWORD PTR ", 13 );
				__builtin_memset( &TMP$2898$4, 0, 12 );
				FBSTRING* vr$308 = fb_StrConcat( &TMP$2898$4, (void*)vr$305, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2899$4, -1, (void*)vr$308, -1, 0 );
				HWRITEASM64( &TMP$2899$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2899$4 );
			}
			goto label$2202;
			label$2225:;
			if( DTYPE$1 == 5 ) goto label$2229;
			label$2230:;
			if( DTYPE$1 != 6 ) goto label$2228;
			label$2229:;
			{
				FBSTRING TMP$2900$4;
				FBSTRING TMP$2901$4;
				FBSTRING TMP$2902$4;
				FBSTRING TMP$2903$4;
				__builtin_memset( &TMP$2903$4, 0, 12 );
				__builtin_memset( &TMP$2900$4, 0, 12 );
				FBSTRING* vr$316 = fb_StrConcat( &TMP$2900$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2901$4, 0, 12 );
				FBSTRING* vr$319 = fb_StrConcat( &TMP$2901$4, (void*)vr$316, -1, (void*)", WORD PTR ", 12 );
				__builtin_memset( &TMP$2902$4, 0, 12 );
				FBSTRING* vr$322 = fb_StrConcat( &TMP$2902$4, (void*)vr$319, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2903$4, -1, (void*)vr$322, -1, 0 );
				HWRITEASM64( &TMP$2903$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2903$4 );
			}
			goto label$2202;
			label$2228:;
			if( DTYPE$1 == 2 ) goto label$2232;
			label$2233:;
			if( DTYPE$1 == 3 ) goto label$2232;
			label$2234:;
			if( DTYPE$1 == 1 ) goto label$2232;
			label$2235:;
			if( DTYPE$1 != 4 ) goto label$2231;
			label$2232:;
			{
				FBSTRING TMP$2904$4;
				FBSTRING TMP$2905$4;
				FBSTRING TMP$2906$4;
				FBSTRING TMP$2907$4;
				__builtin_memset( &TMP$2907$4, 0, 12 );
				__builtin_memset( &TMP$2904$4, 0, 12 );
				FBSTRING* vr$330 = fb_StrConcat( &TMP$2904$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2905$4, 0, 12 );
				FBSTRING* vr$333 = fb_StrConcat( &TMP$2905$4, (void*)vr$330, -1, (void*)", BYTE PTR ", 12 );
				__builtin_memset( &TMP$2906$4, 0, 12 );
				FBSTRING* vr$336 = fb_StrConcat( &TMP$2906$4, (void*)vr$333, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2907$4, -1, (void*)vr$336, -1, 0 );
				HWRITEASM64( &TMP$2907$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2907$4 );
			}
			goto label$2202;
			label$2231:;
			{
				FBSTRING TMP$2908$4;
				FBSTRING TMP$2912$4;
				FBSTRING TMP$2913$4;
				FBSTRING TMP$2914$4;
				__builtin_memset( &TMP$2908$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2908$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2908$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2908$4 );
				__builtin_memset( &TMP$2913$4, 0, 12 );
				FBSTRING* vr$346 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
				__builtin_memset( &TMP$2912$4, 0, 12 );
				FBSTRING* vr$349 = fb_StrConcat( &TMP$2912$4, (void*)"FOUND AN ERROR : in loadres datatype not handled = ", 52, (void*)vr$346, -1 );
				fb_StrAssign( (void*)&TMP$2913$4, -1, (void*)vr$349, -1, 0 );
				HWRITEASM64( &TMP$2913$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2913$4 );
				__builtin_memset( &TMP$2914$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2914$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2914$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2914$4 );
			}
			label$2236:;
			label$2202:;
		}
	}
	label$2182:;
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2169:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	int32 TMP$2920$1;
	label$2237:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	if( *(int32*)VR$1 == 4 ) goto label$2240;
	{
		FBSTRING TMP$2915$2;
		FBSTRING TMP$2918$2;
		FBSTRING TMP$2919$2;
		__builtin_memset( &TMP$2915$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2915$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2915$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2915$2 );
		__builtin_memset( &TMP$2918$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2918$2, -1, (void*)"FOUND AN ERROR : vr in addrof/deref not a reg", 46, 0 );
		HWRITEASM64( &TMP$2918$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2918$2 );
		__builtin_memset( &TMP$2919$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2919$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2919$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2919$2 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$2238;
	}
	label$2240:;
	label$2239:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2241;
	$19FB_CVA_LIST_TYPEDEF vr$22 = SYMBGETVALISTTYPE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) );
	TMP$2920$1 = -((struct $8FBSYMBOL*)(-(vr$22 == 3) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 65536) != 0)) != (struct $8FBSYMBOL*)0u);
	goto label$3139;
	label$2241:;
	TMP$2920$1 = 0;
	label$3139:;
	if( TMP$2920$1 == 0 ) goto label$2243;
	{
		if( OP$1 != 22 ) goto label$2245;
		{
			OP$1 = 76;
		}
		label$2245:;
		label$2244:;
	}
	label$2243:;
	label$2242:;
	REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
	{
		if( OP$1 != 22 ) goto label$2247;
		label$2248:;
		{
			FBSTRING TMP$2942$3;
			FBSTRING TMP$2943$3;
			FBSTRING TMP$2944$3;
			FBSTRING TMP$2945$3;
			{
				$15IRVREGTYPE_ENUM TMP$2921$4;
				TMP$2921$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2921$4 != 2 ) goto label$2250;
				label$2251:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2249;
				label$2250:;
				if( TMP$2921$4 != 1 ) goto label$2252;
				label$2253:;
				{
					if( ((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) | -(*(int32*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == 7)) == 0 ) goto label$2255;
					{
						FBSTRING TMP$2922$6;
						FBSTRING TMP$2923$6;
						FBSTRING TMP$2924$6;
						FBSTRING* vr$48 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						char* vr$50 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$2922$6, 0, 12 );
						FBSTRING* vr$53 = fb_StrConcat( &TMP$2922$6, (void*)vr$50, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$2923$6, 0, 12 );
						FBSTRING* vr$56 = fb_StrConcat( &TMP$2923$6, (void*)vr$53, -1, (void*)vr$48, -1 );
						__builtin_memset( &TMP$2924$6, 0, 12 );
						FBSTRING* vr$59 = fb_StrConcat( &TMP$2924$6, (void*)vr$56, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
					}
					goto label$2254;
					label$2255:;
					{
						FBSTRING TMP$2925$6;
						FBSTRING* vr$62 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2925$6, 0, 12 );
						FBSTRING* vr$65 = fb_StrConcat( &TMP$2925$6, (void*)vr$62, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$65, -1, 0 );
					}
					label$2254:;
				}
				goto label$2249;
				label$2252:;
				if( TMP$2921$4 != 3 ) goto label$2256;
				label$2257:;
				{
					FBSTRING TMP$2926$5;
					FBSTRING TMP$2927$5;
					FBSTRING TMP$2928$5;
					int32 vr$69 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$72 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2926$5, 0, 12 );
					FBSTRING* vr$75 = fb_StrConcat( &TMP$2926$5, (void*)vr$72, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2927$5, 0, 12 );
					FBSTRING* vr$78 = fb_StrConcat( &TMP$2927$5, (void*)vr$75, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$69 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2928$5, 0, 12 );
					FBSTRING* vr$81 = fb_StrConcat( &TMP$2928$5, (void*)vr$78, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$81, -1, 0 );
				}
				goto label$2249;
				label$2256:;
				if( TMP$2921$4 != 5 ) goto label$2258;
				label$2259:;
				{
					FBSTRING TMP$2929$5;
					FBSTRING TMP$2930$5;
					FBSTRING TMP$2931$5;
					FBSTRING TMP$2932$5;
					FBSTRING TMP$2935$5;
					FBSTRING TMP$2936$5;
					FBSTRING* vr$84 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					char* vr$86 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2929$5, 0, 12 );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$2929$5, (void*)vr$86, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2930$5, 0, 12 );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$2930$5, (void*)vr$89, -1, (void*)vr$84, -1 );
					__builtin_memset( &TMP$2931$5, 0, 12 );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$2931$5, (void*)vr$92, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$95, -1, 0 );
					__builtin_memset( &TMP$2932$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2932$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2932$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2932$5 );
					__builtin_memset( &TMP$2935$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2935$5, -1, (void*)"FOUND AN ERROR : in emitaddr OFS not handled", 45, 0 );
					HWRITEASM64( &TMP$2935$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2935$5 );
					__builtin_memset( &TMP$2936$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2936$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2936$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2936$5 );
				}
				goto label$2249;
				label$2258:;
				{
					FBSTRING TMP$2937$5;
					FBSTRING TMP$2940$5;
					FBSTRING TMP$2941$5;
					__builtin_memset( &TMP$2937$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2937$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2937$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2937$5 );
					__builtin_memset( &TMP$2940$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2940$5, -1, (void*)"FOUND AN ERROR : typ in addrof not handled", 43, 0 );
					HWRITEASM64( &TMP$2940$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2940$5 );
					__builtin_memset( &TMP$2941$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2941$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2941$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2941$5 );
				}
				label$2260:;
				label$2249:;
			}
			int32 vr$122 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$122 == 0 ) goto label$2262;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2262:;
			}
			__builtin_memset( &TMP$2945$3, 0, 12 );
			int32 vr$127 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
			__builtin_memset( &TMP$2942$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$2942$3, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$127 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2943$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$2943$3, (void*)vr$131, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2944$3, 0, 12 );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$2944$3, (void*)vr$134, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2945$3, -1, (void*)vr$137, -1, 0 );
			HWRITEASM64( &TMP$2945$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2945$3 );
		}
		goto label$2246;
		label$2247:;
		if( OP$1 != 76 ) goto label$2263;
		label$2264:;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2946$4;
				TMP$2946$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2946$4 != 2 ) goto label$2266;
				label$2267:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
					int32 vr$145 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$145 == 0 ) goto label$2269;
					{
						EMITOP3_OP4( &OP3$1 );
						label$2269:;
					}
				}
				goto label$2265;
				label$2266:;
				if( TMP$2946$4 != 1 ) goto label$2270;
				label$2271:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2273;
					{
						int32 TMP$2947$6;
						int32 TMP$2948$6;
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) == 0 ) goto label$2274;
						TMP$2947$6 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
						goto label$3140;
						label$2274:;
						TMP$2947$6 = 0;
						label$3140:;
						if( TMP$2947$6 == 0 ) goto label$2275;
						int32 vr$161 = FBGETOPTION( 0 );
						TMP$2948$6 = -(vr$161 == 2);
						goto label$3141;
						label$2275:;
						TMP$2948$6 = 0;
						label$3141:;
						if( TMP$2948$6 == 0 ) goto label$2277;
						{
							FBSTRING TMP$2949$7;
							FBSTRING TMP$2950$7;
							FBSTRING TMP$2951$7;
							__builtin_memset( &TMP$2951$7, 0, 12 );
							char* vr$165 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2949$7, 0, 12 );
							FBSTRING* vr$168 = fb_StrConcat( &TMP$2949$7, (void*)"mov rax, ", 10, (void*)vr$165, 0 );
							__builtin_memset( &TMP$2950$7, 0, 12 );
							FBSTRING* vr$171 = fb_StrConcat( &TMP$2950$7, (void*)vr$168, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2951$7, -1, (void*)vr$171, -1, 0 );
							HWRITEASM64( &TMP$2951$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2951$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
						}
						goto label$2276;
						label$2277:;
						{
							FBSTRING TMP$2952$7;
							FBSTRING TMP$2953$7;
							FBSTRING TMP$2954$7;
							FBSTRING* vr$177 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
							char* vr$179 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2952$7, 0, 12 );
							FBSTRING* vr$182 = fb_StrConcat( &TMP$2952$7, (void*)vr$179, 0, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2953$7, 0, 12 );
							FBSTRING* vr$185 = fb_StrConcat( &TMP$2953$7, (void*)vr$182, -1, (void*)vr$177, -1 );
							__builtin_memset( &TMP$2954$7, 0, 12 );
							FBSTRING* vr$188 = fb_StrConcat( &TMP$2954$7, (void*)vr$185, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$188, -1, 0 );
						}
						label$2276:;
					}
					goto label$2272;
					label$2273:;
					{
						FBSTRING TMP$2955$6;
						FBSTRING* vr$191 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2955$6, 0, 12 );
						FBSTRING* vr$194 = fb_StrConcat( &TMP$2955$6, (void*)vr$191, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$194, -1, 0 );
					}
					label$2272:;
				}
				goto label$2265;
				label$2270:;
				if( TMP$2946$4 != 3 ) goto label$2278;
				label$2279:;
				{
					FBSTRING TMP$2956$5;
					FBSTRING TMP$2957$5;
					FBSTRING TMP$2958$5;
					int32 vr$198 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$201 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2956$5, 0, 12 );
					FBSTRING* vr$204 = fb_StrConcat( &TMP$2956$5, (void*)vr$201, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2957$5, 0, 12 );
					FBSTRING* vr$207 = fb_StrConcat( &TMP$2957$5, (void*)vr$204, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$198 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2958$5, 0, 12 );
					FBSTRING* vr$210 = fb_StrConcat( &TMP$2958$5, (void*)vr$207, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$210, -1, 0 );
				}
				goto label$2265;
				label$2278:;
				if( TMP$2946$4 != 5 ) goto label$2280;
				label$2281:;
				{
					FBSTRING TMP$2959$5;
					FBSTRING TMP$2960$5;
					FBSTRING TMP$2961$5;
					FBSTRING* vr$213 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					char* vr$215 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2959$5, 0, 12 );
					FBSTRING* vr$218 = fb_StrConcat( &TMP$2959$5, (void*)vr$215, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2960$5, 0, 12 );
					FBSTRING* vr$221 = fb_StrConcat( &TMP$2960$5, (void*)vr$218, -1, (void*)vr$213, -1 );
					__builtin_memset( &TMP$2961$5, 0, 12 );
					FBSTRING* vr$224 = fb_StrConcat( &TMP$2961$5, (void*)vr$221, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$224, -1, 0 );
				}
				goto label$2265;
				label$2280:;
				if( TMP$2946$4 != 4 ) goto label$2282;
				label$2283:;
				{
					FBSTRING TMP$2962$5;
					FBSTRING TMP$2963$5;
					int32 vr$227 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					__builtin_memset( &TMP$2962$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$2962$5, (void*)"[", 2, *(void**)((int32)(char**)REGSTRQ$ + (vr$227 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2963$5, 0, 12 );
					FBSTRING* vr$234 = fb_StrConcat( &TMP$2963$5, (void*)vr$231, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$234, -1, 0 );
				}
				goto label$2265;
				label$2282:;
				{
					FBSTRING TMP$2964$5;
					FBSTRING TMP$2967$5;
					FBSTRING TMP$2968$5;
					__builtin_memset( &TMP$2964$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2964$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2964$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2964$5 );
					__builtin_memset( &TMP$2967$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2967$5, -1, (void*)"FOUND AN ERROR : typ in deref not handled", 42, 0 );
					HWRITEASM64( &TMP$2967$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2967$5 );
					__builtin_memset( &TMP$2968$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2968$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2968$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2968$5 );
				}
				label$2284:;
				label$2265:;
			}
			if( *(int32*)V1$1 != 5 ) goto label$2286;
			{
				FBSTRING TMP$2969$4;
				FBSTRING TMP$2970$4;
				FBSTRING TMP$2971$4;
				FBSTRING TMP$2972$4;
				__builtin_memset( &TMP$2972$4, 0, 12 );
				int32 vr$252 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2969$4, 0, 12 );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$2969$4, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$252 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2970$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$2970$4, (void*)vr$256, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2971$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$2971$4, (void*)vr$259, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2972$4, -1, (void*)vr$262, -1, 0 );
				HWRITEASM64( &TMP$2972$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2972$4 );
			}
			goto label$2285;
			label$2286:;
			{
				FBSTRING TMP$2973$4;
				FBSTRING TMP$2974$4;
				FBSTRING TMP$2975$4;
				FBSTRING TMP$2976$4;
				__builtin_memset( &TMP$2976$4, 0, 12 );
				int32 vr$269 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2973$4, 0, 12 );
				FBSTRING* vr$273 = fb_StrConcat( &TMP$2973$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$269 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2974$4, 0, 12 );
				FBSTRING* vr$276 = fb_StrConcat( &TMP$2974$4, (void*)vr$273, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2975$4, 0, 12 );
				FBSTRING* vr$279 = fb_StrConcat( &TMP$2975$4, (void*)vr$276, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2976$4, -1, (void*)vr$279, -1, 0 );
				HWRITEASM64( &TMP$2976$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2976$4 );
			}
			label$2285:;
		}
		label$2263:;
		label$2246:;
	}
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2238:;
}

static void HDOCALL( struct $8FBSYMBOL* PROC$1, FBSTRING* PNAME$1, FBSTRING* FIRSTMOV$1, struct $6IRVREG* VR$1, int32 LEVEL$1, boolean VARIADIC$1, boolean CALLPTR$1 )
{
	int32 TMP$2986$1;
	int32 TMP$3371$1;
	label$2299:;
	int32 REG2$1;
	__builtin_memset( &REG2$1, 0, 4 );
	int32 CPTARG$1;
	__builtin_memset( &CPTARG$1, 0, 4 );
	int32 CPTINT$1;
	__builtin_memset( &CPTINT$1, 0, 4 );
	int32 CPTFLOAT$1;
	__builtin_memset( &CPTFLOAT$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* V2$1;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	boolean TOSTACK$1;
	__builtin_memset( &TOSTACK$1, 0, 1 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 OFST$1;
	__builtin_memset( &OFST$1, 0, 4 );
	FBSTRING PUSHSTR$1[301];
	__builtin_memset( (FBSTRING*)PUSHSTR$1, 0, 3612 );
	struct $8FBARRAY1I8FBSTRINGE tmp$2985$1;
	*(FBSTRING**)&tmp$2985$1 = (FBSTRING*)PUSHSTR$1;
	*(FBSTRING**)((uint8*)&tmp$2985$1 + 4) = (FBSTRING*)PUSHSTR$1;
	*(int32*)((uint8*)&tmp$2985$1 + 8) = 3612;
	*(int32*)((uint8*)&tmp$2985$1 + 12) = 12;
	*(int32*)((uint8*)&tmp$2985$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$2985$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$2985$1 + 24) = 301;
	*(int32*)((uint8*)&tmp$2985$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$2985$1 + 32) = 300;
	int32 PUSHNBSTR$1;
	__builtin_memset( &PUSHNBSTR$1, 0, 4 );
	int32 PUSHSIZE$1;
	__builtin_memset( &PUSHSIZE$1, 0, 4 );
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	$15FB_STRUCT_INREG RETIN2REGS$1;
	__builtin_memset( &RETIN2REGS$1, 0, 4 );
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)1;
	if( CALLPTR$1 == (boolean)0 ) goto label$2302;
	{
		REG_CALLPTR( PNAME$1, FIRSTMOV$1 );
		label$2302:;
	}
	*(int64*)((uint8*)&CTX$ + 120) = *(int64*)((uint8*)&CTX$ + 96) + 104ll;
	*(int64*)((uint8*)&CTX$ + 112) = *(int64*)((uint8*)&CTX$ + 120);
	void* vr$21 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 60) );
	ARG$1 = (struct $9IRCALLARG*)vr$21;
	label$2303:;
	if( ARG$1 == (struct $9IRCALLARG*)0u ) goto label$2305;
	TMP$2986$1 = -((struct $9IRCALLARG*)-(*(int32*)((uint8*)ARG$1 + 8) == LEVEL$1) != (struct $9IRCALLARG*)0u);
	goto label$3142;
	label$2305:;
	TMP$2986$1 = 0;
	label$3142:;
	if( TMP$2986$1 == 0 ) goto label$2304;
	{
		int32 TMP$3076$2;
		void* vr$25 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$25;
		V2$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 4);
		fb_StrAssign( (void*)&OP3$1, -1, (void*)"", 1, 0 );
		REG2$1 = -1;
		$19FB_CVA_LIST_TYPEDEF vr$33 = SYMBGETVALISTTYPE( *(int32*)((uint8*)V2$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) );
		if( (-((*(int32*)((uint8*)V2$1 + 4) & 480) == 0) & -(vr$33 == 3)) == 0 ) goto label$2307;
		{
			struct $6IRVREG* vr$36 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$36;
			_EMITADDR( 22, V2$1, TEMPO1$1 );
			__builtin_memcpy( V2$1, TEMPO1$1, 72 );
		}
		label$2307:;
		label$2306:;
		DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
		{
			$15IRVREGTYPE_ENUM TMP$2987$3;
			TMP$2987$3 = *($15IRVREGTYPE_ENUM*)V2$1;
			if( TMP$2987$3 != 2 ) goto label$2309;
			label$2310:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$2312;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$2314;
					{
						if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) == -1 ) goto label$2316;
						{
							FBSTRING TMP$2988$7;
							FBSTRING TMP$2989$7;
							FBSTRING TMP$2990$7;
							int32 vr$47 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
							REG2$1 = vr$47;
							FBSTRING* vr$50 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2988$7, 0, 12 );
							FBSTRING* vr$53 = fb_StrConcat( &TMP$2988$7, (void*)vr$50, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2989$7, 0, 12 );
							FBSTRING* vr$56 = fb_StrConcat( &TMP$2989$7, (void*)vr$53, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2990$7, 0, 12 );
							FBSTRING* vr$59 = fb_StrConcat( &TMP$2990$7, (void*)vr$56, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
						}
						goto label$2315;
						label$2316:;
						{
							FBSTRING TMP$2991$7;
							FBSTRING TMP$2992$7;
							FBSTRING TMP$2993$7;
							FBSTRING TMP$2994$7;
							FBSTRING TMP$2995$7;
							FBSTRING TMP$2996$7;
							FBSTRING TMP$2997$7;
							FBSTRING TMP$2998$7;
							int32 vr$64 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 52) + 12) );
							REG2$1 = vr$64;
							__builtin_memset( &TMP$2991$7, 0, 12 );
							FBSTRING* vr$69 = fb_StrConcat( &TMP$2991$7, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2992$7, 0, 12 );
							FBSTRING* vr$72 = fb_StrConcat( &TMP$2992$7, (void*)vr$69, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2993$7, 0, 12 );
							FBSTRING* vr$75 = fb_StrConcat( &TMP$2993$7, (void*)vr$72, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2994$7, 0, 12 );
							FBSTRING* vr$78 = fb_StrConcat( &TMP$2994$7, (void*)vr$75, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2995$7, 0, 12 );
							FBSTRING* vr$81 = fb_StrConcat( &TMP$2995$7, (void*)vr$78, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$81, -1, 0 );
							FBSTRING* vr$85 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2996$7, 0, 12 );
							FBSTRING* vr$88 = fb_StrConcat( &TMP$2996$7, (void*)vr$85, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2997$7, 0, 12 );
							FBSTRING* vr$91 = fb_StrConcat( &TMP$2997$7, (void*)vr$88, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2998$7, 0, 12 );
							FBSTRING* vr$94 = fb_StrConcat( &TMP$2998$7, (void*)vr$91, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$94, -1, 0 );
						}
						label$2315:;
					}
					goto label$2313;
					label$2314:;
					{
						char* vr$96 = REG_TEMPO(  );
						fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$96, 0, 0 );
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2318;
						{
							FBSTRING TMP$2999$7;
							FBSTRING TMP$3000$7;
							FBSTRING TMP$3001$7;
							FBSTRING TMP$3002$7;
							FBSTRING TMP$3003$7;
							FBSTRING TMP$3004$7;
							FBSTRING TMP$3006$7;
							FBSTRING TMP$3007$7;
							FBSTRING TMP$3008$7;
							FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							char* vr$114 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							__builtin_memset( &TMP$2999$7, 0, 12 );
							FBSTRING* vr$118 = fb_StrConcat( &TMP$2999$7, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3000$7, 0, 12 );
							FBSTRING* vr$121 = fb_StrConcat( &TMP$3000$7, (void*)vr$118, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$3001$7, 0, 12 );
							FBSTRING* vr$124 = fb_StrConcat( &TMP$3001$7, (void*)vr$121, -1, (void*)vr$114, 0 );
							__builtin_memset( &TMP$3002$7, 0, 12 );
							FBSTRING* vr$127 = fb_StrConcat( &TMP$3002$7, (void*)vr$124, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$3003$7, 0, 12 );
							FBSTRING* vr$130 = fb_StrConcat( &TMP$3003$7, (void*)vr$127, -1, (void*)vr$111, -1 );
							__builtin_memset( &TMP$3004$7, 0, 12 );
							FBSTRING* vr$133 = fb_StrConcat( &TMP$3004$7, (void*)vr$130, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$133, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"\x0A", 2, 0 );
							FBSTRING* vr$137 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)vr$137, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"mov ", 5, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)", ", 3, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"]", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)" #NO", 5, 0 );
							FBSTRING* vr$150 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$3006$7, 0, 12 );
							FBSTRING* vr$153 = fb_StrConcat( &TMP$3006$7, (void*)vr$150, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$3007$7, 0, 12 );
							FBSTRING* vr$156 = fb_StrConcat( &TMP$3007$7, (void*)vr$153, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3008$7, 0, 12 );
							FBSTRING* vr$159 = fb_StrConcat( &TMP$3008$7, (void*)vr$156, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$159, -1, 0 );
						}
						goto label$2317;
						label$2318:;
						{
							FBSTRING TMP$3009$7;
							FBSTRING TMP$3010$7;
							FBSTRING TMP$3011$7;
							FBSTRING TMP$3012$7;
							FBSTRING TMP$3013$7;
							FBSTRING TMP$3014$7;
							FBSTRING TMP$3015$7;
							FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							__builtin_memset( &TMP$3009$7, 0, 12 );
							FBSTRING* vr$167 = fb_StrConcat( &TMP$3009$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3010$7, 0, 12 );
							FBSTRING* vr$170 = fb_StrConcat( &TMP$3010$7, (void*)vr$167, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$3011$7, 0, 12 );
							FBSTRING* vr$173 = fb_StrConcat( &TMP$3011$7, (void*)vr$170, -1, (void*)vr$163, -1 );
							__builtin_memset( &TMP$3012$7, 0, 12 );
							FBSTRING* vr$176 = fb_StrConcat( &TMP$3012$7, (void*)vr$173, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$176, -1, 0 );
							FBSTRING* vr$180 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$3013$7, 0, 12 );
							FBSTRING* vr$183 = fb_StrConcat( &TMP$3013$7, (void*)vr$180, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$3014$7, 0, 12 );
							FBSTRING* vr$186 = fb_StrConcat( &TMP$3014$7, (void*)vr$183, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3015$7, 0, 12 );
							FBSTRING* vr$189 = fb_StrConcat( &TMP$3015$7, (void*)vr$186, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$189, -1, 0 );
						}
						label$2317:;
					}
					label$2313:;
				}
				goto label$2311;
				label$2312:;
				{
					char* vr$191 = REG_TEMPO(  );
					fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$191, 0, 0 );
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2320;
					{
						FBSTRING TMP$3016$6;
						FBSTRING TMP$3017$6;
						FBSTRING TMP$3018$6;
						FBSTRING TMP$3019$6;
						FBSTRING TMP$3020$6;
						FBSTRING TMP$3021$6;
						FBSTRING* vr$203 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						char* vr$205 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$3016$6, 0, 12 );
						FBSTRING* vr$209 = fb_StrConcat( &TMP$3016$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$3017$6, 0, 12 );
						FBSTRING* vr$212 = fb_StrConcat( &TMP$3017$6, (void*)vr$209, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3018$6, 0, 12 );
						FBSTRING* vr$215 = fb_StrConcat( &TMP$3018$6, (void*)vr$212, -1, (void*)vr$205, 0 );
						__builtin_memset( &TMP$3019$6, 0, 12 );
						FBSTRING* vr$218 = fb_StrConcat( &TMP$3019$6, (void*)vr$215, -1, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3020$6, 0, 12 );
						FBSTRING* vr$221 = fb_StrConcat( &TMP$3020$6, (void*)vr$218, -1, (void*)vr$203, -1 );
						__builtin_memset( &TMP$3021$6, 0, 12 );
						FBSTRING* vr$224 = fb_StrConcat( &TMP$3021$6, (void*)vr$221, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$224, -1, 0 );
					}
					goto label$2319;
					label$2320:;
					{
						FBSTRING TMP$3022$6;
						FBSTRING TMP$3023$6;
						FBSTRING TMP$3024$6;
						FBSTRING TMP$3025$6;
						FBSTRING* vr$227 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$3022$6, 0, 12 );
						FBSTRING* vr$231 = fb_StrConcat( &TMP$3022$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$3023$6, 0, 12 );
						FBSTRING* vr$234 = fb_StrConcat( &TMP$3023$6, (void*)vr$231, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3024$6, 0, 12 );
						FBSTRING* vr$237 = fb_StrConcat( &TMP$3024$6, (void*)vr$234, -1, (void*)vr$227, -1 );
						__builtin_memset( &TMP$3025$6, 0, 12 );
						FBSTRING* vr$240 = fb_StrConcat( &TMP$3025$6, (void*)vr$237, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$240, -1, 0 );
					}
					label$2319:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 4 ) goto label$2322;
					{
						FBSTRING TMP$3026$6;
						FBSTRING TMP$3027$6;
						FBSTRING TMP$3028$6;
						FBSTRING TMP$3029$6;
						int32 vr$246 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
						REG2$1 = vr$246;
						__builtin_memset( &TMP$3026$6, 0, 12 );
						FBSTRING* vr$251 = fb_StrConcat( &TMP$3026$6, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$3027$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$3027$6, (void*)vr$251, -1, (void*)"+", 2 );
						__builtin_memset( &TMP$3028$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3028$6, (void*)vr$254, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$3029$6, 0, 12 );
						FBSTRING* vr$260 = fb_StrConcat( &TMP$3029$6, (void*)vr$257, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$260, -1, 0 );
					}
					goto label$2321;
					label$2322:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 1 ) goto label$2323;
					{
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2325;
						{
							FBSTRING TMP$3030$7;
							FBSTRING TMP$3031$7;
							FBSTRING TMP$3032$7;
							FBSTRING TMP$3033$7;
							FBSTRING TMP$3034$7;
							FBSTRING TMP$3035$7;
							FBSTRING TMP$3036$7;
							FBSTRING TMP$3037$7;
							FBSTRING TMP$3038$7;
							FBSTRING* vr$277 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							char* vr$280 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							FBSTRING* vr$283 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$3030$7, 0, 12 );
							FBSTRING* vr$286 = fb_StrConcat( &TMP$3030$7, (void*)"\x0A", 2, (void*)vr$283, -1 );
							__builtin_memset( &TMP$3031$7, 0, 12 );
							FBSTRING* vr$289 = fb_StrConcat( &TMP$3031$7, (void*)vr$286, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$3032$7, 0, 12 );
							FBSTRING* vr$292 = fb_StrConcat( &TMP$3032$7, (void*)vr$289, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3033$7, 0, 12 );
							FBSTRING* vr$295 = fb_StrConcat( &TMP$3033$7, (void*)vr$292, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$3034$7, 0, 12 );
							FBSTRING* vr$298 = fb_StrConcat( &TMP$3034$7, (void*)vr$295, -1, (void*)vr$280, 0 );
							__builtin_memset( &TMP$3035$7, 0, 12 );
							FBSTRING* vr$301 = fb_StrConcat( &TMP$3035$7, (void*)vr$298, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$3036$7, 0, 12 );
							FBSTRING* vr$304 = fb_StrConcat( &TMP$3036$7, (void*)vr$301, -1, (void*)vr$277, -1 );
							__builtin_memset( &TMP$3037$7, 0, 12 );
							FBSTRING* vr$307 = fb_StrConcat( &TMP$3037$7, (void*)vr$304, -1, (void*)"]", 2 );
							__builtin_memset( &TMP$3038$7, 0, 12 );
							FBSTRING* vr$311 = fb_StrConcat( &TMP$3038$7, (void*)&OP3$1, -1, (void*)vr$307, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$311, -1, 0 );
						}
						goto label$2324;
						label$2325:;
						{
							FBSTRING TMP$3039$7;
							FBSTRING TMP$3040$7;
							FBSTRING TMP$3041$7;
							FBSTRING TMP$3042$7;
							FBSTRING TMP$3043$7;
							FBSTRING TMP$3044$7;
							FBSTRING TMP$3045$7;
							FBSTRING* vr$315 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							FBSTRING* vr$318 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$3039$7, 0, 12 );
							FBSTRING* vr$321 = fb_StrConcat( &TMP$3039$7, (void*)"\x0A", 2, (void*)vr$318, -1 );
							__builtin_memset( &TMP$3040$7, 0, 12 );
							FBSTRING* vr$324 = fb_StrConcat( &TMP$3040$7, (void*)vr$321, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$3041$7, 0, 12 );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$3041$7, (void*)vr$324, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$3042$7, 0, 12 );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$3042$7, (void*)vr$327, -1, (void*)",", 2 );
							__builtin_memset( &TMP$3043$7, 0, 12 );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$3043$7, (void*)vr$330, -1, (void*)vr$315, -1 );
							__builtin_memset( &TMP$3044$7, 0, 12 );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$3044$7, (void*)vr$333, -1, (void*)"[rbp]", 6 );
							__builtin_memset( &TMP$3045$7, 0, 12 );
							FBSTRING* vr$340 = fb_StrConcat( &TMP$3045$7, (void*)&OP3$1, -1, (void*)vr$336, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$340, -1, 0 );
						}
						label$2324:;
						fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
					}
					goto label$2321;
					label$2323:;
					{
						FBSTRING TMP$3046$6;
						FBSTRING TMP$3049$6;
						FBSTRING TMP$3050$6;
						__builtin_memset( &TMP$3046$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3046$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3046$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3046$6 );
						__builtin_memset( &TMP$3049$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3049$6, -1, (void*)"FOUND AN ERROR : hdocall error with idx", 40, 0 );
						HWRITEASM64( &TMP$3049$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3049$6 );
						__builtin_memset( &TMP$3050$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3050$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3050$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3050$6 );
					}
					label$2321:;
				}
				label$2311:;
			}
			goto label$2308;
			label$2309:;
			if( TMP$2987$3 != 4 ) goto label$2326;
			label$2327:;
			{
				int32 TMP$3051$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2328;
				TMP$3051$4 = 24;
				goto label$3143;
				label$2328:;
				TMP$3051$4 = DTYPE$1 & 31;
				label$3143:;
				if( TMP$3051$4 != 24 ) goto label$2330;
				{
					DTYPE$1 = 8;
					label$2330:;
				}
				int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				REG2$1 = vr$361;
				{
					if( DTYPE$1 == 8 ) goto label$2333;
					label$2334:;
					if( DTYPE$1 == 9 ) goto label$2333;
					label$2335:;
					if( DTYPE$1 == 13 ) goto label$2333;
					label$2336:;
					if( DTYPE$1 == 14 ) goto label$2333;
					label$2337:;
					if( DTYPE$1 == 16 ) goto label$2333;
					label$2338:;
					if( DTYPE$1 == 10 ) goto label$2333;
					label$2339:;
					if( DTYPE$1 != 20 ) goto label$2332;
					label$2333:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2331;
					label$2332:;
					if( DTYPE$1 == 11 ) goto label$2341;
					label$2342:;
					if( DTYPE$1 == 12 ) goto label$2341;
					label$2343:;
					if( DTYPE$1 != 15 ) goto label$2340;
					label$2341:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2331;
					label$2340:;
					if( DTYPE$1 == 5 ) goto label$2345;
					label$2346:;
					if( DTYPE$1 != 6 ) goto label$2344;
					label$2345:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2331;
					label$2344:;
					if( DTYPE$1 == 2 ) goto label$2348;
					label$2349:;
					if( DTYPE$1 == 3 ) goto label$2348;
					label$2350:;
					if( DTYPE$1 == 1 ) goto label$2348;
					label$2351:;
					if( DTYPE$1 != 4 ) goto label$2347;
					label$2348:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2331;
					label$2347:;
					{
						FBSTRING TMP$3052$6;
						FBSTRING TMP$3056$6;
						FBSTRING TMP$3057$6;
						FBSTRING TMP$3058$6;
						__builtin_memset( &TMP$3052$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3052$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3052$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3052$6 );
						__builtin_memset( &TMP$3057$6, 0, 12 );
						FBSTRING* vr$375 = fb_IntToStr( DTYPE$1 );
						__builtin_memset( &TMP$3056$6, 0, 12 );
						FBSTRING* vr$378 = fb_StrConcat( &TMP$3056$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 01 = ", 55, (void*)vr$375, -1 );
						fb_StrAssign( (void*)&TMP$3057$6, -1, (void*)vr$378, -1, 0 );
						HWRITEASM64( &TMP$3057$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3057$6 );
						__builtin_memset( &TMP$3058$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3058$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3058$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3058$6 );
					}
					label$2352:;
					label$2331:;
				}
			}
			goto label$2308;
			label$2326:;
			if( TMP$2987$3 != 1 ) goto label$2353;
			label$2354:;
			{
				int32 TMP$3059$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2355;
				TMP$3059$4 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
				goto label$3144;
				label$2355:;
				TMP$3059$4 = 0;
				label$3144:;
				if( TMP$3059$4 == 0 ) goto label$2357;
				{
					FBSTRING TMP$3060$5;
					FBSTRING TMP$3061$5;
					FBSTRING TMP$3062$5;
					FBSTRING* vr$398 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					char* vr$400 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$3060$5, 0, 12 );
					FBSTRING* vr$403 = fb_StrConcat( &TMP$3060$5, (void*)vr$400, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3061$5, 0, 12 );
					FBSTRING* vr$406 = fb_StrConcat( &TMP$3061$5, (void*)vr$403, -1, (void*)vr$398, -1 );
					__builtin_memset( &TMP$3062$5, 0, 12 );
					FBSTRING* vr$409 = fb_StrConcat( &TMP$3062$5, (void*)vr$406, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$409, -1, 0 );
				}
				goto label$2356;
				label$2357:;
				{
					FBSTRING TMP$3063$5;
					FBSTRING* vr$412 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$3063$5, 0, 12 );
					FBSTRING* vr$415 = fb_StrConcat( &TMP$3063$5, (void*)vr$412, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$415, -1, 0 );
				}
				label$2356:;
			}
			goto label$2308;
			label$2353:;
			if( TMP$2987$3 != 3 ) goto label$2358;
			label$2359:;
			{
				FBSTRING TMP$3064$4;
				FBSTRING TMP$3065$4;
				FBSTRING TMP$3066$4;
				int32 vr$419 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				REG2$1 = vr$419;
				FBSTRING* vr$422 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$3064$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$3064$4, (void*)vr$422, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$3065$4, 0, 12 );
				FBSTRING* vr$428 = fb_StrConcat( &TMP$3065$4, (void*)vr$425, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3066$4, 0, 12 );
				FBSTRING* vr$431 = fb_StrConcat( &TMP$3066$4, (void*)vr$428, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$431, -1, 0 );
			}
			goto label$2308;
			label$2358:;
			if( TMP$2987$3 != 5 ) goto label$2360;
			label$2361:;
			{
				FBSTRING TMP$3067$4;
				FBSTRING TMP$3068$4;
				FBSTRING TMP$3069$4;
				FBSTRING* vr$434 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				char* vr$436 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$3067$4, 0, 12 );
				FBSTRING* vr$439 = fb_StrConcat( &TMP$3067$4, (void*)vr$436, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3068$4, 0, 12 );
				FBSTRING* vr$442 = fb_StrConcat( &TMP$3068$4, (void*)vr$439, -1, (void*)vr$434, -1 );
				__builtin_memset( &TMP$3069$4, 0, 12 );
				FBSTRING* vr$445 = fb_StrConcat( &TMP$3069$4, (void*)vr$442, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$445, -1, 0 );
			}
			goto label$2308;
			label$2360:;
			if( TMP$2987$3 != 0 ) goto label$2362;
			label$2363:;
			{
				int32 TMP$3070$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2364;
				TMP$3070$4 = 24;
				goto label$3145;
				label$2364:;
				TMP$3070$4 = DTYPE$1 & 31;
				label$3145:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3070$4 * 28)) != 1 ) goto label$2366;
				{
					FBSTRING* vr$451 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), DTYPE$1, (int8)0 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$451, -1, 0 );
				}
				goto label$2365;
				label$2366:;
				{
					if( DTYPE$1 != 1 ) goto label$2368;
					{
						if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$2370;
						{
							*(int64*)((uint8*)V2$1 + 24) = 1ll;
						}
						label$2370:;
						label$2369:;
					}
					label$2368:;
					label$2367:;
					FBSTRING* vr$456 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$456, -1, 0 );
				}
				label$2365:;
			}
			goto label$2308;
			label$2362:;
			{
				FBSTRING TMP$3071$4;
				FBSTRING TMP$3074$4;
				FBSTRING TMP$3075$4;
				__builtin_memset( &TMP$3071$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3071$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3071$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3071$4 );
				__builtin_memset( &TMP$3074$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3074$4, -1, (void*)"FOUND AN ERROR : in hdocall typ not handled ", 45, 0 );
				HWRITEASM64( &TMP$3074$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3074$4 );
				__builtin_memset( &TMP$3075$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3075$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3075$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3075$4 );
			}
			label$2371:;
			label$2308:;
		}
		if( (DTYPE$1 & 480) == 0 ) goto label$2372;
		TMP$3076$2 = 24;
		goto label$3146;
		label$2372:;
		TMP$3076$2 = DTYPE$1 & 31;
		label$3146:;
		if( TMP$3076$2 != 24 ) goto label$2374;
		{
			DTYPE$1 = 8;
			label$2374:;
		}
		int32 vr$476 = PARAM_ANALYZE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8), &CPTARG$1, &CPTINT$1, &CPTFLOAT$1 );
		PARAMTYPE$1 = vr$476;
		if( PARAMTYPE$1 < 10 ) goto label$2376;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2378;
			{
				if( *(int32*)V2$1 != 0 ) goto label$2380;
				{
					int32 TMP$3077$5;
					PUSHSIZE$1 = PUSHSIZE$1 + 8;
					if( (DTYPE$1 & 480) == 0 ) goto label$2381;
					TMP$3077$5 = 24;
					goto label$3147;
					label$2381:;
					TMP$3077$5 = DTYPE$1 & 31;
					label$3147:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3077$5 * 28)) != 1 ) goto label$2383;
					{
						if( DTYPE$1 != 15 ) goto label$2385;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						goto label$2384;
						label$2385:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2384:;
					}
					goto label$2382;
					label$2383:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) >= -2147483648ll) & -(*(int64*)((uint8*)V2$1 + 24) < 2147483648ll)) == 0 ) goto label$2386;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
						fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					goto label$2382;
					label$2386:;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
						fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					label$2382:;
				}
				goto label$2379;
				label$2380:;
				{
					if( DTYPE$1 != 20 ) goto label$2388;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
						PUSHSIZE$1 = PUSHSIZE$1 + LGT$1;
						if( LGT$1 <= 8 ) goto label$2390;
						{
							FBSTRING TMP$3083$7;
							OFST$1 = LGT$1 % 8;
							if( OFST$1 != 0 ) goto label$2392;
							{
								OFST$1 = 8;
								label$2392:;
							}
							label$2393:;
							if( LGT$1 <= 0 ) goto label$2394;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push [rax]", 11, 0 );
								if( LGT$1 <= 8 ) goto label$2396;
								{
									PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
									fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"sub rax, 8", 11, 0 );
								}
								label$2396:;
								label$2395:;
								LGT$1 = LGT$1 + -8;
							}
							goto label$2393;
							label$2394:;
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							FBSTRING* vr$534 = fb_LongintToStr( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) - (int64)OFST$1 );
							__builtin_memset( &TMP$3083$7, 0, 12 );
							FBSTRING* vr$537 = fb_StrConcat( &TMP$3083$7, (void*)"add rax, ", 10, (void*)vr$534, -1 );
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$537, -1, 0 );
							if( *(int32*)V2$1 != 4 ) goto label$2398;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2397;
							label$2398:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2397:;
						}
						goto label$2389;
						label$2390:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2389:;
					}
					goto label$2387;
					label$2388:;
					{
						PUSHSIZE$1 = PUSHSIZE$1 + 8;
						if( *(int32*)V2$1 != 5 ) goto label$2400;
						{
							int32 TMP$3084$7;
							if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2401;
							int32 vr$563 = FBGETOPTION( 0 );
							TMP$3084$7 = -(vr$563 == 2);
							goto label$3148;
							label$2401:;
							TMP$3084$7 = 0;
							label$3148:;
							if( TMP$3084$7 == 0 ) goto label$2403;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, QWORD PTR ", 20, 0 );
								FBSTRING* vr$571 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
								int32 vr$573 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$571 );
								FBSTRING* vr$576 = fb_LEFT( (FBSTRING*)&OP1$1, vr$573 + -1 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$576, -1, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"@GOTPCREL[rip]", 15, 0 );
							}
							goto label$2402;
							label$2403:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2402:;
						}
						goto label$2399;
						label$2400:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2405;
							{
								fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2404;
							label$2405:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2404:;
						}
						label$2399:;
					}
					label$2387:;
					int32 vr$606 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$606 == 0 ) goto label$2407;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((int32)(FBSTRING*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP3$1, -1, 0 );
					}
					label$2407:;
					label$2406:;
				}
				label$2379:;
			}
			goto label$2377;
			label$2378:;
			{
				int32 vr$612 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
				if( vr$612 == 0 ) goto label$2409;
				{
					EMITOP3_OP4( &OP3$1 );
					label$2409:;
				}
				if( PARAMTYPE$1 != 11 ) goto label$2411;
				{
					if( DTYPE$1 != 20 ) goto label$2413;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
					}
					goto label$2412;
					label$2413:;
					{
						LGT$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPE$1 * 28)) + 4);
					}
					label$2412:;
					if( *(int32*)V2$1 != 4 ) goto label$2415;
					{
						{
							uint32 TMP$3085$7;
							TMP$3085$7 = (uint32)LGT$1;
							goto label$2417;
							label$2418:;
							{
								FBSTRING TMP$3088$8;
								FBSTRING TMP$3089$8;
								FBSTRING TMP$3090$8;
								FBSTRING TMP$3091$8;
								__builtin_memset( &TMP$3091$8, 0, 12 );
								FBSTRING* vr$623 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3088$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3088$8, (void*)"mov byte PTR ", 14, (void*)vr$623, -1 );
								__builtin_memset( &TMP$3089$8, 0, 12 );
								FBSTRING* vr$629 = fb_StrConcat( &TMP$3089$8, (void*)vr$626, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3090$8, 0, 12 );
								FBSTRING* vr$632 = fb_StrConcat( &TMP$3090$8, (void*)vr$629, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3091$8, -1, (void*)vr$632, -1, 0 );
								HWRITEASM64( &TMP$3091$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3091$8 );
							}
							goto label$2416;
							label$2419:;
							{
								FBSTRING TMP$3092$8;
								FBSTRING TMP$3093$8;
								FBSTRING TMP$3094$8;
								FBSTRING TMP$3095$8;
								__builtin_memset( &TMP$3095$8, 0, 12 );
								FBSTRING* vr$640 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3092$8, 0, 12 );
								FBSTRING* vr$643 = fb_StrConcat( &TMP$3092$8, (void*)"mov WORD PTR ", 14, (void*)vr$640, -1 );
								__builtin_memset( &TMP$3093$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$3093$8, (void*)vr$643, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3094$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$3094$8, (void*)vr$646, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3095$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$3095$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3095$8 );
							}
							goto label$2416;
							label$2420:;
							{
								FBSTRING TMP$3096$8;
								FBSTRING TMP$3097$8;
								FBSTRING TMP$3098$8;
								FBSTRING TMP$3099$8;
								__builtin_memset( &TMP$3099$8, 0, 12 );
								FBSTRING* vr$657 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3096$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$3096$8, (void*)"mov DWORD PTR ", 15, (void*)vr$657, -1 );
								__builtin_memset( &TMP$3097$8, 0, 12 );
								FBSTRING* vr$663 = fb_StrConcat( &TMP$3097$8, (void*)vr$660, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3098$8, 0, 12 );
								FBSTRING* vr$666 = fb_StrConcat( &TMP$3098$8, (void*)vr$663, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3099$8, -1, (void*)vr$666, -1, 0 );
								HWRITEASM64( &TMP$3099$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3099$8 );
							}
							goto label$2416;
							label$2421:;
							{
								FBSTRING TMP$3100$8;
								FBSTRING TMP$3101$8;
								FBSTRING TMP$3102$8;
								FBSTRING TMP$3103$8;
								__builtin_memset( &TMP$3103$8, 0, 12 );
								FBSTRING* vr$674 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3100$8, 0, 12 );
								FBSTRING* vr$677 = fb_StrConcat( &TMP$3100$8, (void*)"mov QWORD PTR ", 15, (void*)vr$674, -1 );
								__builtin_memset( &TMP$3101$8, 0, 12 );
								FBSTRING* vr$680 = fb_StrConcat( &TMP$3101$8, (void*)vr$677, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3102$8, 0, 12 );
								FBSTRING* vr$683 = fb_StrConcat( &TMP$3102$8, (void*)vr$680, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3103$8, -1, (void*)vr$683, -1, 0 );
								HWRITEASM64( &TMP$3103$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3103$8 );
							}
							goto label$2416;
							label$2417:;
							static const void* tmp$4077[8] = {
								&&label$2418,
								&&label$2419,
								&&label$2416,
								&&label$2420,
								&&label$2416,
								&&label$2416,
								&&label$2416,
								&&label$2421,
							};
							if( (TMP$3085$7 - 1u) > 7u ) goto label$2416;
							goto *tmp$4077[TMP$3085$7 - 1u];
							label$2416:;
						}
					}
					goto label$2414;
					label$2415:;
					{
						{
							uint32 TMP$3104$7;
							TMP$3104$7 = (uint32)LGT$1;
							goto label$2423;
							label$2424:;
							{
								FBSTRING TMP$3105$8;
								FBSTRING TMP$3106$8;
								FBSTRING TMP$3108$8;
								FBSTRING TMP$3109$8;
								FBSTRING TMP$3110$8;
								__builtin_memset( &TMP$3106$8, 0, 12 );
								__builtin_memset( &TMP$3105$8, 0, 12 );
								FBSTRING* vr$691 = fb_StrConcat( &TMP$3105$8, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3106$8, -1, (void*)vr$691, -1, 0 );
								HWRITEASM64( &TMP$3106$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3106$8 );
								__builtin_memset( &TMP$3110$8, 0, 12 );
								FBSTRING* vr$698 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3108$8, 0, 12 );
								FBSTRING* vr$701 = fb_StrConcat( &TMP$3108$8, (void*)"mov byte PTR ", 14, (void*)vr$698, -1 );
								__builtin_memset( &TMP$3109$8, 0, 12 );
								FBSTRING* vr$704 = fb_StrConcat( &TMP$3109$8, (void*)vr$701, -1, (void*)"[rsp], al", 10 );
								fb_StrAssign( (void*)&TMP$3110$8, -1, (void*)vr$704, -1, 0 );
								HWRITEASM64( &TMP$3110$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3110$8 );
							}
							goto label$2422;
							label$2425:;
							{
								FBSTRING TMP$3112$8;
								FBSTRING TMP$3113$8;
								FBSTRING TMP$3115$8;
								FBSTRING TMP$3116$8;
								FBSTRING TMP$3117$8;
								__builtin_memset( &TMP$3113$8, 0, 12 );
								__builtin_memset( &TMP$3112$8, 0, 12 );
								FBSTRING* vr$712 = fb_StrConcat( &TMP$3112$8, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3113$8, -1, (void*)vr$712, -1, 0 );
								HWRITEASM64( &TMP$3113$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3113$8 );
								__builtin_memset( &TMP$3117$8, 0, 12 );
								FBSTRING* vr$719 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3115$8, 0, 12 );
								FBSTRING* vr$722 = fb_StrConcat( &TMP$3115$8, (void*)"mov WORD PTR ", 14, (void*)vr$719, -1 );
								__builtin_memset( &TMP$3116$8, 0, 12 );
								FBSTRING* vr$725 = fb_StrConcat( &TMP$3116$8, (void*)vr$722, -1, (void*)"[rsp], ax", 10 );
								fb_StrAssign( (void*)&TMP$3117$8, -1, (void*)vr$725, -1, 0 );
								HWRITEASM64( &TMP$3117$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3117$8 );
							}
							goto label$2422;
							label$2426:;
							{
								FBSTRING TMP$3118$8;
								FBSTRING TMP$3119$8;
								FBSTRING TMP$3121$8;
								FBSTRING TMP$3122$8;
								FBSTRING TMP$3123$8;
								__builtin_memset( &TMP$3119$8, 0, 12 );
								__builtin_memset( &TMP$3118$8, 0, 12 );
								FBSTRING* vr$733 = fb_StrConcat( &TMP$3118$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3119$8, -1, (void*)vr$733, -1, 0 );
								HWRITEASM64( &TMP$3119$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3119$8 );
								__builtin_memset( &TMP$3123$8, 0, 12 );
								FBSTRING* vr$740 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3121$8, 0, 12 );
								FBSTRING* vr$743 = fb_StrConcat( &TMP$3121$8, (void*)"mov DWORD PTR ", 15, (void*)vr$740, -1 );
								__builtin_memset( &TMP$3122$8, 0, 12 );
								FBSTRING* vr$746 = fb_StrConcat( &TMP$3122$8, (void*)vr$743, -1, (void*)"[rsp], eax", 11 );
								fb_StrAssign( (void*)&TMP$3123$8, -1, (void*)vr$746, -1, 0 );
								HWRITEASM64( &TMP$3123$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3123$8 );
							}
							goto label$2422;
							label$2427:;
							{
								FBSTRING TMP$3124$8;
								FBSTRING TMP$3125$8;
								FBSTRING TMP$3127$8;
								FBSTRING TMP$3128$8;
								FBSTRING TMP$3129$8;
								__builtin_memset( &TMP$3125$8, 0, 12 );
								__builtin_memset( &TMP$3124$8, 0, 12 );
								FBSTRING* vr$754 = fb_StrConcat( &TMP$3124$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3125$8, -1, (void*)vr$754, -1, 0 );
								HWRITEASM64( &TMP$3125$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3125$8 );
								__builtin_memset( &TMP$3129$8, 0, 12 );
								FBSTRING* vr$761 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3127$8, 0, 12 );
								FBSTRING* vr$764 = fb_StrConcat( &TMP$3127$8, (void*)"mov QWORD PTR ", 15, (void*)vr$761, -1 );
								__builtin_memset( &TMP$3128$8, 0, 12 );
								FBSTRING* vr$767 = fb_StrConcat( &TMP$3128$8, (void*)vr$764, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3129$8, -1, (void*)vr$767, -1, 0 );
								HWRITEASM64( &TMP$3129$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3129$8 );
							}
							goto label$2422;
							label$2423:;
							static const void* tmp$4078[8] = {
								&&label$2424,
								&&label$2425,
								&&label$2422,
								&&label$2426,
								&&label$2422,
								&&label$2422,
								&&label$2422,
								&&label$2427,
							};
							if( (TMP$3104$7 - 1u) > 7u ) goto label$2422;
							goto *tmp$4078[TMP$3104$7 - 1u];
							label$2422:;
						}
					}
					label$2414:;
				}
				goto label$2410;
				label$2411:;
				if( PARAMTYPE$1 != 12 ) goto label$2428;
				{
					FBSTRING TMP$3130$5;
					FBSTRING TMP$3131$5;
					FBSTRING TMP$3132$5;
					FBSTRING TMP$3133$5;
					FBSTRING TMP$3134$5;
					FBSTRING TMP$3135$5;
					FBSTRING TMP$3136$5;
					FBSTRING TMP$3137$5;
					FBSTRING TMP$3138$5;
					FBSTRING TMP$3139$5;
					FBSTRING TMP$3140$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					__builtin_memset( &TMP$3133$5, 0, 12 );
					__builtin_memset( &TMP$3130$5, 0, 12 );
					FBSTRING* vr$780 = fb_StrConcat( &TMP$3130$5, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$3131$5, 0, 12 );
					FBSTRING* vr$783 = fb_StrConcat( &TMP$3131$5, (void*)vr$780, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3132$5, 0, 12 );
					FBSTRING* vr$786 = fb_StrConcat( &TMP$3132$5, (void*)vr$783, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$3133$5, -1, (void*)vr$786, -1, 0 );
					HWRITEASM64( &TMP$3133$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3133$5 );
					*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
					int64 vr$802 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
					*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$802) + 8ll;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
					__builtin_memset( &TMP$3135$5, 0, 12 );
					FBSTRING* vr$812 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
					__builtin_memset( &TMP$3134$5, 0, 12 );
					FBSTRING* vr$815 = fb_StrConcat( &TMP$3134$5, (void*)vr$812, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$3135$5, -1, (void*)vr$815, -1, 0 );
					MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &REGTEMPO$1, &TMP$3135$5, 1, 1 );
					fb_StrDelete( (FBSTRING*)&TMP$3135$5 );
					__builtin_memset( &TMP$3140$5, 0, 12 );
					FBSTRING* vr$825 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
					__builtin_memset( &TMP$3136$5, 0, 12 );
					FBSTRING* vr$831 = fb_StrConcat( &TMP$3136$5, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$3137$5, 0, 12 );
					FBSTRING* vr$834 = fb_StrConcat( &TMP$3137$5, (void*)vr$831, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3138$5, 0, 12 );
					FBSTRING* vr$837 = fb_StrConcat( &TMP$3138$5, (void*)vr$834, -1, (void*)vr$825, -1 );
					__builtin_memset( &TMP$3139$5, 0, 12 );
					FBSTRING* vr$840 = fb_StrConcat( &TMP$3139$5, (void*)vr$837, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$3140$5, -1, (void*)vr$840, -1, 0 );
					HWRITEASM64( &TMP$3140$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3140$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2430;
					{
						FBSTRING TMP$3141$6;
						FBSTRING TMP$3142$6;
						FBSTRING TMP$3143$6;
						FBSTRING TMP$3144$6;
						__builtin_memset( &TMP$3144$6, 0, 12 );
						FBSTRING* vr$854 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3141$6, 0, 12 );
						FBSTRING* vr$857 = fb_StrConcat( &TMP$3141$6, (void*)"mov QWORD PTR ", 15, (void*)vr$854, -1 );
						__builtin_memset( &TMP$3142$6, 0, 12 );
						FBSTRING* vr$860 = fb_StrConcat( &TMP$3142$6, (void*)vr$857, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3143$6, 0, 12 );
						FBSTRING* vr$863 = fb_StrConcat( &TMP$3143$6, (void*)vr$860, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3144$6, -1, (void*)vr$863, -1, 0 );
						HWRITEASM64( &TMP$3144$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3144$6 );
					}
					label$2430:;
					label$2429:;
				}
				goto label$2410;
				label$2428:;
				{
					if( *(int32*)V2$1 != 0 ) goto label$2432;
					{
						if( DTYPE$1 != 15 ) goto label$2434;
						{
							FBSTRING TMP$3149$7;
							FBSTRING TMP$3150$7;
							FBSTRING TMP$3151$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2436;
							{
								FBSTRING TMP$3146$8;
								__builtin_memset( &TMP$3146$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3146$8, -1, (void*)"xor eax, eax", 13, 0 );
								HWRITEASM64( &TMP$3146$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3146$8 );
							}
							goto label$2435;
							label$2436:;
							{
								FBSTRING TMP$3147$8;
								FBSTRING TMP$3148$8;
								__builtin_memset( &TMP$3148$8, 0, 12 );
								__builtin_memset( &TMP$3147$8, 0, 12 );
								FBSTRING* vr$877 = fb_StrConcat( &TMP$3147$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3148$8, -1, (void*)vr$877, -1, 0 );
								HWRITEASM64( &TMP$3148$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3148$8 );
							}
							label$2435:;
							__builtin_memset( &TMP$3151$7, 0, 12 );
							FBSTRING* vr$884 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3149$7, 0, 12 );
							FBSTRING* vr$887 = fb_StrConcat( &TMP$3149$7, (void*)"mov DWORD PTR ", 15, (void*)vr$884, -1 );
							__builtin_memset( &TMP$3150$7, 0, 12 );
							FBSTRING* vr$890 = fb_StrConcat( &TMP$3150$7, (void*)vr$887, -1, (void*)"[rsp], eax", 11 );
							fb_StrAssign( (void*)&TMP$3151$7, -1, (void*)vr$890, -1, 0 );
							HWRITEASM64( &TMP$3151$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3151$7 );
						}
						goto label$2433;
						label$2434:;
						if( DTYPE$1 != 16 ) goto label$2437;
						{
							FBSTRING TMP$3156$7;
							FBSTRING TMP$3157$7;
							FBSTRING TMP$3158$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2439;
							{
								FBSTRING TMP$3153$8;
								__builtin_memset( &TMP$3153$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3153$8, -1, (void*)"xor rax, rax", 13, 0 );
								HWRITEASM64( &TMP$3153$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3153$8 );
							}
							goto label$2438;
							label$2439:;
							{
								FBSTRING TMP$3154$8;
								FBSTRING TMP$3155$8;
								__builtin_memset( &TMP$3155$8, 0, 12 );
								__builtin_memset( &TMP$3154$8, 0, 12 );
								FBSTRING* vr$903 = fb_StrConcat( &TMP$3154$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3155$8, -1, (void*)vr$903, -1, 0 );
								HWRITEASM64( &TMP$3155$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3155$8 );
							}
							label$2438:;
							__builtin_memset( &TMP$3158$7, 0, 12 );
							FBSTRING* vr$910 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3156$7, 0, 12 );
							FBSTRING* vr$913 = fb_StrConcat( &TMP$3156$7, (void*)"mov QWORD PTR ", 15, (void*)vr$910, -1 );
							__builtin_memset( &TMP$3157$7, 0, 12 );
							FBSTRING* vr$916 = fb_StrConcat( &TMP$3157$7, (void*)vr$913, -1, (void*)"[rsp], rax", 11 );
							fb_StrAssign( (void*)&TMP$3158$7, -1, (void*)vr$916, -1, 0 );
							HWRITEASM64( &TMP$3158$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3158$7 );
						}
						goto label$2433;
						label$2437:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2441;
							{
								FBSTRING TMP$3159$8;
								FBSTRING TMP$3160$8;
								FBSTRING TMP$3161$8;
								FBSTRING TMP$3162$8;
								FBSTRING TMP$3163$8;
								__builtin_memset( &TMP$3160$8, 0, 12 );
								__builtin_memset( &TMP$3159$8, 0, 12 );
								FBSTRING* vr$929 = fb_StrConcat( &TMP$3159$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3160$8, -1, (void*)vr$929, -1, 0 );
								HWRITEASM64( &TMP$3160$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3160$8 );
								__builtin_memset( &TMP$3163$8, 0, 12 );
								FBSTRING* vr$936 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3161$8, 0, 12 );
								FBSTRING* vr$939 = fb_StrConcat( &TMP$3161$8, (void*)"mov QWORD PTR ", 15, (void*)vr$936, -1 );
								__builtin_memset( &TMP$3162$8, 0, 12 );
								FBSTRING* vr$942 = fb_StrConcat( &TMP$3162$8, (void*)vr$939, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3163$8, -1, (void*)vr$942, -1, 0 );
								HWRITEASM64( &TMP$3163$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3163$8 );
							}
							goto label$2440;
							label$2441:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2442;
							{
								FBSTRING TMP$3164$8;
								FBSTRING TMP$3165$8;
								FBSTRING TMP$3166$8;
								FBSTRING TMP$3167$8;
								FBSTRING TMP$3168$8;
								__builtin_memset( &TMP$3165$8, 0, 12 );
								__builtin_memset( &TMP$3164$8, 0, 12 );
								FBSTRING* vr$951 = fb_StrConcat( &TMP$3164$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3165$8, -1, (void*)vr$951, -1, 0 );
								HWRITEASM64( &TMP$3165$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3165$8 );
								__builtin_memset( &TMP$3168$8, 0, 12 );
								FBSTRING* vr$958 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3166$8, 0, 12 );
								FBSTRING* vr$961 = fb_StrConcat( &TMP$3166$8, (void*)"mov QWORD PTR ", 15, (void*)vr$958, -1 );
								__builtin_memset( &TMP$3167$8, 0, 12 );
								FBSTRING* vr$964 = fb_StrConcat( &TMP$3167$8, (void*)vr$961, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3168$8, -1, (void*)vr$964, -1, 0 );
								HWRITEASM64( &TMP$3168$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3168$8 );
							}
							goto label$2440;
							label$2442:;
							{
								FBSTRING TMP$3169$8;
								FBSTRING TMP$3170$8;
								FBSTRING TMP$3171$8;
								FBSTRING TMP$3172$8;
								__builtin_memset( &TMP$3172$8, 0, 12 );
								FBSTRING* vr$972 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3169$8, 0, 12 );
								FBSTRING* vr$975 = fb_StrConcat( &TMP$3169$8, (void*)"mov QWORD PTR ", 15, (void*)vr$972, -1 );
								__builtin_memset( &TMP$3170$8, 0, 12 );
								FBSTRING* vr$978 = fb_StrConcat( &TMP$3170$8, (void*)vr$975, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3171$8, 0, 12 );
								FBSTRING* vr$981 = fb_StrConcat( &TMP$3171$8, (void*)vr$978, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3172$8, -1, (void*)vr$981, -1, 0 );
								HWRITEASM64( &TMP$3172$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3172$8 );
							}
							label$2440:;
						}
						label$2433:;
					}
					goto label$2431;
					label$2432:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2444;
						{
							if( DTYPE$1 != 20 ) goto label$2446;
							{
								FBSTRING TMP$3173$8;
								FBSTRING TMP$3174$8;
								FBSTRING TMP$3175$8;
								FBSTRING TMP$3176$8;
								FBSTRING TMP$3177$8;
								FBSTRING TMP$3178$8;
								FBSTRING TMP$3179$8;
								FBSTRING TMP$3180$8;
								*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
								int64 vr$998 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
								*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$998) + 8ll;
								__builtin_memset( &TMP$3174$8, 0, 12 );
								FBSTRING* vr$1004 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3173$8, 0, 12 );
								FBSTRING* vr$1007 = fb_StrConcat( &TMP$3173$8, (void*)vr$1004, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3174$8, -1, (void*)vr$1007, -1, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &OP1$1, &TMP$3174$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3174$8 );
								__builtin_memset( &TMP$3177$8, 0, 12 );
								FBSTRING* vr$1017 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3175$8, 0, 12 );
								FBSTRING* vr$1020 = fb_StrConcat( &TMP$3175$8, (void*)"mov rax, ", 10, (void*)vr$1017, -1 );
								__builtin_memset( &TMP$3176$8, 0, 12 );
								FBSTRING* vr$1023 = fb_StrConcat( &TMP$3176$8, (void*)vr$1020, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3177$8, -1, (void*)vr$1023, -1, 0 );
								HWRITEASM64( &TMP$3177$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3177$8 );
								__builtin_memset( &TMP$3180$8, 0, 12 );
								FBSTRING* vr$1030 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3178$8, 0, 12 );
								FBSTRING* vr$1033 = fb_StrConcat( &TMP$3178$8, (void*)"mov ", 5, (void*)vr$1030, -1 );
								__builtin_memset( &TMP$3179$8, 0, 12 );
								FBSTRING* vr$1036 = fb_StrConcat( &TMP$3179$8, (void*)vr$1033, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3180$8, -1, (void*)vr$1036, -1, 0 );
								HWRITEASM64( &TMP$3180$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3180$8 );
							}
							goto label$2445;
							label$2446:;
							{
								FBSTRING TMP$3181$8;
								FBSTRING TMP$3182$8;
								FBSTRING TMP$3183$8;
								FBSTRING TMP$3184$8;
								__builtin_memset( &TMP$3184$8, 0, 12 );
								FBSTRING* vr$1044 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3181$8, 0, 12 );
								FBSTRING* vr$1047 = fb_StrConcat( &TMP$3181$8, (void*)"mov ", 5, (void*)vr$1044, -1 );
								__builtin_memset( &TMP$3182$8, 0, 12 );
								FBSTRING* vr$1050 = fb_StrConcat( &TMP$3182$8, (void*)vr$1047, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3183$8, 0, 12 );
								FBSTRING* vr$1053 = fb_StrConcat( &TMP$3183$8, (void*)vr$1050, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3184$8, -1, (void*)vr$1053, -1, 0 );
								HWRITEASM64( &TMP$3184$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3184$8 );
							}
							label$2445:;
						}
						goto label$2443;
						label$2444:;
						{
							if( (-(*(int32*)V2$1 == 5) | -(DTYPE$1 == 20)) == 0 ) goto label$2448;
							{
								int32 TMP$3185$8;
								int32 TMP$3186$8;
								if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2449;
								TMP$3185$8 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
								goto label$3149;
								label$2449:;
								TMP$3185$8 = 0;
								label$3149:;
								if( TMP$3185$8 == 0 ) goto label$2450;
								int32 vr$1065 = FBGETOPTION( 0 );
								TMP$3186$8 = -(vr$1065 == 2);
								goto label$3150;
								label$2450:;
								TMP$3186$8 = 0;
								label$3150:;
								if( TMP$3186$8 == 0 ) goto label$2452;
								{
									FBSTRING TMP$3187$9;
									FBSTRING TMP$3188$9;
									FBSTRING TMP$3189$9;
									__builtin_memset( &TMP$3189$9, 0, 12 );
									FBSTRING* vr$1068 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
									int32 vr$1070 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1068 );
									FBSTRING* vr$1073 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1070 + -1 );
									__builtin_memset( &TMP$3187$9, 0, 12 );
									FBSTRING* vr$1076 = fb_StrConcat( &TMP$3187$9, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$1073, -1 );
									__builtin_memset( &TMP$3188$9, 0, 12 );
									FBSTRING* vr$1079 = fb_StrConcat( &TMP$3188$9, (void*)vr$1076, -1, (void*)"@GOTPCREL[rip]", 15 );
									fb_StrAssign( (void*)&TMP$3189$9, -1, (void*)vr$1079, -1, 0 );
									HWRITEASM64( &TMP$3189$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3189$9 );
								}
								goto label$2451;
								label$2452:;
								{
									FBSTRING TMP$3190$9;
									FBSTRING TMP$3191$9;
									__builtin_memset( &TMP$3191$9, 0, 12 );
									__builtin_memset( &TMP$3190$9, 0, 12 );
									FBSTRING* vr$1087 = fb_StrConcat( &TMP$3190$9, (void*)"lea rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3191$9, -1, (void*)vr$1087, -1, 0 );
									HWRITEASM64( &TMP$3191$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3191$9 );
								}
								label$2451:;
							}
							goto label$2447;
							label$2448:;
							{
								FBSTRING TMP$3192$8;
								FBSTRING TMP$3193$8;
								__builtin_memset( &TMP$3193$8, 0, 12 );
								__builtin_memset( &TMP$3192$8, 0, 12 );
								FBSTRING* vr$1095 = fb_StrConcat( &TMP$3192$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3193$8, -1, (void*)vr$1095, -1, 0 );
								HWRITEASM64( &TMP$3193$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3193$8 );
							}
							label$2447:;
							if( DTYPE$1 != 20 ) goto label$2454;
							{
								FBSTRING TMP$3194$8;
								FBSTRING TMP$3195$8;
								FBSTRING TMP$3196$8;
								FBSTRING TMP$3197$8;
								FBSTRING TMP$3198$8;
								FBSTRING TMP$3199$8;
								FBSTRING TMP$3200$8;
								FBSTRING TMP$3201$8;
								FBSTRING TMP$3202$8;
								*(int64*)((uint8*)&CTX$ + 120) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + *(int64*)((uint8*)&CTX$ + 120)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll);
								int64 vr$1111 = __moddi3( *(int64*)((uint8*)&CTX$ + 120), 8ll );
								*(int64*)((uint8*)&CTX$ + 120) = (*(int64*)((uint8*)&CTX$ + 120) + -vr$1111) + 8ll;
								__builtin_memset( &TMP$3196$8, 0, 12 );
								FBSTRING* vr$1117 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3195$8, 0, 12 );
								FBSTRING* vr$1120 = fb_StrConcat( &TMP$3195$8, (void*)vr$1117, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3196$8, -1, (void*)vr$1120, -1, 0 );
								__builtin_memset( &TMP$3194$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3194$8, -1, (void*)"rax", 4, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &TMP$3194$8, &TMP$3196$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3196$8 );
								fb_StrDelete( (FBSTRING*)&TMP$3194$8 );
								__builtin_memset( &TMP$3199$8, 0, 12 );
								FBSTRING* vr$1133 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 120)) );
								__builtin_memset( &TMP$3197$8, 0, 12 );
								FBSTRING* vr$1136 = fb_StrConcat( &TMP$3197$8, (void*)"lea rax, ", 10, (void*)vr$1133, -1 );
								__builtin_memset( &TMP$3198$8, 0, 12 );
								FBSTRING* vr$1139 = fb_StrConcat( &TMP$3198$8, (void*)vr$1136, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3199$8, -1, (void*)vr$1139, -1, 0 );
								HWRITEASM64( &TMP$3199$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3199$8 );
								__builtin_memset( &TMP$3202$8, 0, 12 );
								FBSTRING* vr$1146 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3200$8, 0, 12 );
								FBSTRING* vr$1149 = fb_StrConcat( &TMP$3200$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1146, -1 );
								__builtin_memset( &TMP$3201$8, 0, 12 );
								FBSTRING* vr$1152 = fb_StrConcat( &TMP$3201$8, (void*)vr$1149, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3202$8, -1, (void*)vr$1152, -1, 0 );
								HWRITEASM64( &TMP$3202$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3202$8 );
							}
							goto label$2453;
							label$2454:;
							{
								FBSTRING TMP$3203$8;
								FBSTRING TMP$3204$8;
								FBSTRING TMP$3205$8;
								__builtin_memset( &TMP$3205$8, 0, 12 );
								FBSTRING* vr$1159 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3203$8, 0, 12 );
								FBSTRING* vr$1162 = fb_StrConcat( &TMP$3203$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1159, -1 );
								__builtin_memset( &TMP$3204$8, 0, 12 );
								FBSTRING* vr$1165 = fb_StrConcat( &TMP$3204$8, (void*)vr$1162, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3205$8, -1, (void*)vr$1165, -1, 0 );
								HWRITEASM64( &TMP$3205$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3205$8 );
							}
							label$2453:;
						}
						label$2443:;
					}
					label$2431:;
				}
				label$2410:;
			}
			label$2377:;
		}
		goto label$2375;
		label$2376:;
		{
			int32 vr$1170 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$1170 == 0 ) goto label$2456;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2456:;
			}
			if( *(int32*)V2$1 != 0 ) goto label$2458;
			{
				if( DTYPE$1 != 15 ) goto label$2460;
				{
					FBSTRING TMP$3209$5;
					FBSTRING TMP$3210$5;
					FBSTRING TMP$3211$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2462;
					{
						FBSTRING TMP$3206$6;
						__builtin_memset( &TMP$3206$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3206$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3206$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3206$6 );
					}
					goto label$2461;
					label$2462:;
					{
						FBSTRING TMP$3207$6;
						FBSTRING TMP$3208$6;
						__builtin_memset( &TMP$3208$6, 0, 12 );
						__builtin_memset( &TMP$3207$6, 0, 12 );
						FBSTRING* vr$1182 = fb_StrConcat( &TMP$3207$6, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3208$6, -1, (void*)vr$1182, -1, 0 );
						HWRITEASM64( &TMP$3208$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3208$6 );
					}
					label$2461:;
					__builtin_memset( &TMP$3211$5, 0, 12 );
					FBSTRING* vr$1188 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3209$5, 0, 12 );
					FBSTRING* vr$1191 = fb_StrConcat( &TMP$3209$5, (void*)"movd xmm", 9, (void*)vr$1188, -1 );
					__builtin_memset( &TMP$3210$5, 0, 12 );
					FBSTRING* vr$1194 = fb_StrConcat( &TMP$3210$5, (void*)vr$1191, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$3211$5, -1, (void*)vr$1194, -1, 0 );
					HWRITEASM64( &TMP$3211$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3211$5 );
				}
				goto label$2459;
				label$2460:;
				if( DTYPE$1 != 16 ) goto label$2463;
				{
					FBSTRING TMP$3215$5;
					FBSTRING TMP$3216$5;
					FBSTRING TMP$3217$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2465;
					{
						FBSTRING TMP$3212$6;
						__builtin_memset( &TMP$3212$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3212$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3212$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3212$6 );
					}
					goto label$2464;
					label$2465:;
					{
						FBSTRING TMP$3213$6;
						FBSTRING TMP$3214$6;
						__builtin_memset( &TMP$3214$6, 0, 12 );
						__builtin_memset( &TMP$3213$6, 0, 12 );
						FBSTRING* vr$1207 = fb_StrConcat( &TMP$3213$6, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3214$6, -1, (void*)vr$1207, -1, 0 );
						HWRITEASM64( &TMP$3214$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3214$6 );
					}
					label$2464:;
					__builtin_memset( &TMP$3217$5, 0, 12 );
					FBSTRING* vr$1213 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3215$5, 0, 12 );
					FBSTRING* vr$1216 = fb_StrConcat( &TMP$3215$5, (void*)"movq xmm", 9, (void*)vr$1213, -1 );
					__builtin_memset( &TMP$3216$5, 0, 12 );
					FBSTRING* vr$1219 = fb_StrConcat( &TMP$3216$5, (void*)vr$1216, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$3217$5, -1, (void*)vr$1219, -1, 0 );
					HWRITEASM64( &TMP$3217$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3217$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2467;
					{
						FBSTRING TMP$3218$6;
						FBSTRING TMP$3219$6;
						FBSTRING TMP$3220$6;
						__builtin_memset( &TMP$3220$6, 0, 12 );
						FBSTRING* vr$1230 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3218$6, 0, 12 );
						FBSTRING* vr$1233 = fb_StrConcat( &TMP$3218$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1230, -1 );
						__builtin_memset( &TMP$3219$6, 0, 12 );
						FBSTRING* vr$1236 = fb_StrConcat( &TMP$3219$6, (void*)vr$1233, -1, (void*)"[rsp], rax", 11 );
						fb_StrAssign( (void*)&TMP$3220$6, -1, (void*)vr$1236, -1, 0 );
						HWRITEASM64( &TMP$3220$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3220$6 );
					}
					label$2467:;
					label$2466:;
				}
				goto label$2459;
				label$2463:;
				{
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2469;
					{
						FBSTRING TMP$3221$6;
						FBSTRING TMP$3222$6;
						FBSTRING TMP$3223$6;
						FBSTRING TMP$3224$6;
						__builtin_memset( &TMP$3224$6, 0, 12 );
						__builtin_memset( &TMP$3221$6, 0, 12 );
						FBSTRING* vr$1252 = fb_StrConcat( &TMP$3221$6, (void*)"xor ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3222$6, 0, 12 );
						FBSTRING* vr$1255 = fb_StrConcat( &TMP$3222$6, (void*)vr$1252, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3223$6, 0, 12 );
						FBSTRING* vr$1258 = fb_StrConcat( &TMP$3223$6, (void*)vr$1255, -1, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3224$6, -1, (void*)vr$1258, -1, 0 );
						HWRITEASM64( &TMP$3224$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3224$6 );
					}
					goto label$2468;
					label$2469:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) > 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$2470;
					{
						FBSTRING TMP$3225$6;
						FBSTRING TMP$3226$6;
						FBSTRING TMP$3227$6;
						FBSTRING TMP$3228$6;
						__builtin_memset( &TMP$3228$6, 0, 12 );
						__builtin_memset( &TMP$3225$6, 0, 12 );
						FBSTRING* vr$1274 = fb_StrConcat( &TMP$3225$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3226$6, 0, 12 );
						FBSTRING* vr$1277 = fb_StrConcat( &TMP$3226$6, (void*)vr$1274, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3227$6, 0, 12 );
						FBSTRING* vr$1280 = fb_StrConcat( &TMP$3227$6, (void*)vr$1277, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3228$6, -1, (void*)vr$1280, -1, 0 );
						HWRITEASM64( &TMP$3228$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3228$6 );
					}
					goto label$2468;
					label$2470:;
					{
						{
							if( DTYPE$1 == 8 ) goto label$2473;
							label$2474:;
							if( DTYPE$1 == 9 ) goto label$2473;
							label$2475:;
							if( DTYPE$1 == 13 ) goto label$2473;
							label$2476:;
							if( DTYPE$1 == 14 ) goto label$2473;
							label$2477:;
							if( DTYPE$1 != 10 ) goto label$2472;
							label$2473:;
							{
								FBSTRING TMP$3229$8;
								FBSTRING TMP$3230$8;
								FBSTRING TMP$3231$8;
								FBSTRING TMP$3232$8;
								__builtin_memset( &TMP$3232$8, 0, 12 );
								__builtin_memset( &TMP$3229$8, 0, 12 );
								FBSTRING* vr$1291 = fb_StrConcat( &TMP$3229$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3230$8, 0, 12 );
								FBSTRING* vr$1294 = fb_StrConcat( &TMP$3230$8, (void*)vr$1291, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3231$8, 0, 12 );
								FBSTRING* vr$1297 = fb_StrConcat( &TMP$3231$8, (void*)vr$1294, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3232$8, -1, (void*)vr$1297, -1, 0 );
								HWRITEASM64( &TMP$3232$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3232$8 );
							}
							goto label$2471;
							label$2472:;
							{
								FBSTRING TMP$3233$8;
								FBSTRING TMP$3234$8;
								FBSTRING TMP$3235$8;
								FBSTRING TMP$3236$8;
								__builtin_memset( &TMP$3236$8, 0, 12 );
								__builtin_memset( &TMP$3233$8, 0, 12 );
								FBSTRING* vr$1308 = fb_StrConcat( &TMP$3233$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3234$8, 0, 12 );
								FBSTRING* vr$1311 = fb_StrConcat( &TMP$3234$8, (void*)vr$1308, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3235$8, 0, 12 );
								FBSTRING* vr$1314 = fb_StrConcat( &TMP$3235$8, (void*)vr$1311, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3236$8, -1, (void*)vr$1314, -1, 0 );
								HWRITEASM64( &TMP$3236$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3236$8 );
							}
							label$2478:;
							label$2471:;
						}
					}
					label$2468:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2480;
					{
						FBSTRING TMP$3237$6;
						FBSTRING TMP$3238$6;
						FBSTRING TMP$3239$6;
						FBSTRING TMP$3240$6;
						__builtin_memset( &TMP$3240$6, 0, 12 );
						FBSTRING* vr$1328 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3237$6, 0, 12 );
						FBSTRING* vr$1331 = fb_StrConcat( &TMP$3237$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1328, -1 );
						__builtin_memset( &TMP$3238$6, 0, 12 );
						FBSTRING* vr$1334 = fb_StrConcat( &TMP$3238$6, (void*)vr$1331, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3239$6, 0, 12 );
						FBSTRING* vr$1337 = fb_StrConcat( &TMP$3239$6, (void*)vr$1334, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3240$6, -1, (void*)vr$1337, -1, 0 );
						HWRITEASM64( &TMP$3240$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3240$6 );
					}
					label$2480:;
					label$2479:;
				}
				label$2459:;
			}
			goto label$2457;
			label$2458:;
			if( DTYPE$1 != 20 ) goto label$2481;
			{
				LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
				if( *(int32*)V2$1 != 4 ) goto label$2483;
				{
					FBSTRING TMP$3241$5;
					FBSTRING TMP$3242$5;
					__builtin_memset( &TMP$3241$5, 0, 12 );
					FBSTRING* vr$1348 = fb_StrConcat( &TMP$3241$5, (void*)"[", 2, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3242$5, 0, 12 );
					FBSTRING* vr$1351 = fb_StrConcat( &TMP$3242$5, (void*)vr$1348, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$1351, -1, 0 );
				}
				label$2483:;
				label$2482:;
				if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2485;
				{
					{
						uint32 TMP$3243$6;
						TMP$3243$6 = (uint32)PARAMTYPE$1;
						goto label$2487;
						label$2488:;
						{
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2486;
						label$2489:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1 + -1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2486;
						label$2490:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2486;
						label$2491:;
						{
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2486;
						label$2492:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2486;
						label$2493:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 + -1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2486;
						label$2487:;
						static const void* tmp$4079[6] = {
							&&label$2488,
							&&label$2491,
							&&label$2489,
							&&label$2490,
							&&label$2492,
							&&label$2493,
						};
						if( TMP$3243$6 > 5u ) goto label$2486;
						goto *tmp$4079[TMP$3243$6 - 0u];
						label$2486:;
					}
				}
				goto label$2484;
				label$2485:;
				{
					if( PARAMTYPE$1 != 0 ) goto label$2495;
					{
						REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
					}
					goto label$2494;
					label$2495:;
					if( PARAMTYPE$1 != 1 ) goto label$2496;
					{
						REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
					}
					goto label$2494;
					label$2496:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2498;
						{
							{
								uint32 TMP$3244$8;
								TMP$3244$8 = (uint32)LGT$1;
								goto label$2500;
								label$2501:;
								{
									FBSTRING TMP$3245$9;
									FBSTRING TMP$3246$9;
									FBSTRING TMP$3247$9;
									FBSTRING TMP$3248$9;
									__builtin_memset( &TMP$3248$9, 0, 12 );
									FBSTRING* vr$1372 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3245$9, 0, 12 );
									FBSTRING* vr$1375 = fb_StrConcat( &TMP$3245$9, (void*)"mov byte PTR ", 14, (void*)vr$1372, -1 );
									__builtin_memset( &TMP$3246$9, 0, 12 );
									FBSTRING* vr$1378 = fb_StrConcat( &TMP$3246$9, (void*)vr$1375, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3247$9, 0, 12 );
									FBSTRING* vr$1381 = fb_StrConcat( &TMP$3247$9, (void*)vr$1378, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3248$9, -1, (void*)vr$1381, -1, 0 );
									HWRITEASM64( &TMP$3248$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3248$9 );
								}
								goto label$2499;
								label$2502:;
								{
									FBSTRING TMP$3249$9;
									FBSTRING TMP$3250$9;
									FBSTRING TMP$3251$9;
									FBSTRING TMP$3252$9;
									__builtin_memset( &TMP$3252$9, 0, 12 );
									FBSTRING* vr$1389 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3249$9, 0, 12 );
									FBSTRING* vr$1392 = fb_StrConcat( &TMP$3249$9, (void*)"mov WORD PTR ", 14, (void*)vr$1389, -1 );
									__builtin_memset( &TMP$3250$9, 0, 12 );
									FBSTRING* vr$1395 = fb_StrConcat( &TMP$3250$9, (void*)vr$1392, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3251$9, 0, 12 );
									FBSTRING* vr$1398 = fb_StrConcat( &TMP$3251$9, (void*)vr$1395, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3252$9, -1, (void*)vr$1398, -1, 0 );
									HWRITEASM64( &TMP$3252$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3252$9 );
								}
								goto label$2499;
								label$2503:;
								{
									FBSTRING TMP$3253$9;
									FBSTRING TMP$3254$9;
									FBSTRING TMP$3255$9;
									FBSTRING TMP$3256$9;
									__builtin_memset( &TMP$3256$9, 0, 12 );
									FBSTRING* vr$1406 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3253$9, 0, 12 );
									FBSTRING* vr$1409 = fb_StrConcat( &TMP$3253$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1406, -1 );
									__builtin_memset( &TMP$3254$9, 0, 12 );
									FBSTRING* vr$1412 = fb_StrConcat( &TMP$3254$9, (void*)vr$1409, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3255$9, 0, 12 );
									FBSTRING* vr$1415 = fb_StrConcat( &TMP$3255$9, (void*)vr$1412, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3256$9, -1, (void*)vr$1415, -1, 0 );
									HWRITEASM64( &TMP$3256$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3256$9 );
								}
								goto label$2499;
								label$2504:;
								{
									FBSTRING TMP$3257$9;
									FBSTRING TMP$3258$9;
									FBSTRING TMP$3259$9;
									FBSTRING TMP$3260$9;
									__builtin_memset( &TMP$3260$9, 0, 12 );
									FBSTRING* vr$1423 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3257$9, 0, 12 );
									FBSTRING* vr$1426 = fb_StrConcat( &TMP$3257$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1423, -1 );
									__builtin_memset( &TMP$3258$9, 0, 12 );
									FBSTRING* vr$1429 = fb_StrConcat( &TMP$3258$9, (void*)vr$1426, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3259$9, 0, 12 );
									FBSTRING* vr$1432 = fb_StrConcat( &TMP$3259$9, (void*)vr$1429, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3260$9, -1, (void*)vr$1432, -1, 0 );
									HWRITEASM64( &TMP$3260$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3260$9 );
								}
								goto label$2499;
								label$2500:;
								static const void* tmp$4080[8] = {
									&&label$2501,
									&&label$2502,
									&&label$2499,
									&&label$2503,
									&&label$2499,
									&&label$2499,
									&&label$2499,
									&&label$2504,
								};
								if( (TMP$3244$8 - 1u) > 7u ) goto label$2499;
								goto *tmp$4080[TMP$3244$8 - 1u];
								label$2499:;
							}
						}
						goto label$2497;
						label$2498:;
						{
							{
								uint32 TMP$3261$8;
								TMP$3261$8 = (uint32)LGT$1;
								goto label$2506;
								label$2507:;
								{
									FBSTRING TMP$3262$9;
									FBSTRING TMP$3263$9;
									FBSTRING TMP$3264$9;
									FBSTRING TMP$3265$9;
									FBSTRING TMP$3266$9;
									__builtin_memset( &TMP$3263$9, 0, 12 );
									__builtin_memset( &TMP$3262$9, 0, 12 );
									FBSTRING* vr$1440 = fb_StrConcat( &TMP$3262$9, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3263$9, -1, (void*)vr$1440, -1, 0 );
									HWRITEASM64( &TMP$3263$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3263$9 );
									__builtin_memset( &TMP$3266$9, 0, 12 );
									FBSTRING* vr$1447 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3264$9, 0, 12 );
									FBSTRING* vr$1450 = fb_StrConcat( &TMP$3264$9, (void*)"mov byte PTR ", 14, (void*)vr$1447, -1 );
									__builtin_memset( &TMP$3265$9, 0, 12 );
									FBSTRING* vr$1453 = fb_StrConcat( &TMP$3265$9, (void*)vr$1450, -1, (void*)"[rsp], al", 10 );
									fb_StrAssign( (void*)&TMP$3266$9, -1, (void*)vr$1453, -1, 0 );
									HWRITEASM64( &TMP$3266$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3266$9 );
								}
								goto label$2505;
								label$2508:;
								{
									FBSTRING TMP$3267$9;
									FBSTRING TMP$3268$9;
									FBSTRING TMP$3269$9;
									FBSTRING TMP$3270$9;
									FBSTRING TMP$3271$9;
									__builtin_memset( &TMP$3268$9, 0, 12 );
									__builtin_memset( &TMP$3267$9, 0, 12 );
									FBSTRING* vr$1461 = fb_StrConcat( &TMP$3267$9, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3268$9, -1, (void*)vr$1461, -1, 0 );
									HWRITEASM64( &TMP$3268$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3268$9 );
									__builtin_memset( &TMP$3271$9, 0, 12 );
									FBSTRING* vr$1468 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3269$9, 0, 12 );
									FBSTRING* vr$1471 = fb_StrConcat( &TMP$3269$9, (void*)"mov WORD PTR ", 14, (void*)vr$1468, -1 );
									__builtin_memset( &TMP$3270$9, 0, 12 );
									FBSTRING* vr$1474 = fb_StrConcat( &TMP$3270$9, (void*)vr$1471, -1, (void*)"[rsp], ax", 10 );
									fb_StrAssign( (void*)&TMP$3271$9, -1, (void*)vr$1474, -1, 0 );
									HWRITEASM64( &TMP$3271$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3271$9 );
								}
								goto label$2505;
								label$2509:;
								{
									FBSTRING TMP$3272$9;
									FBSTRING TMP$3273$9;
									FBSTRING TMP$3274$9;
									FBSTRING TMP$3275$9;
									FBSTRING TMP$3276$9;
									__builtin_memset( &TMP$3273$9, 0, 12 );
									__builtin_memset( &TMP$3272$9, 0, 12 );
									FBSTRING* vr$1482 = fb_StrConcat( &TMP$3272$9, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3273$9, -1, (void*)vr$1482, -1, 0 );
									HWRITEASM64( &TMP$3273$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3273$9 );
									__builtin_memset( &TMP$3276$9, 0, 12 );
									FBSTRING* vr$1489 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3274$9, 0, 12 );
									FBSTRING* vr$1492 = fb_StrConcat( &TMP$3274$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1489, -1 );
									__builtin_memset( &TMP$3275$9, 0, 12 );
									FBSTRING* vr$1495 = fb_StrConcat( &TMP$3275$9, (void*)vr$1492, -1, (void*)"[rsp], eax", 11 );
									fb_StrAssign( (void*)&TMP$3276$9, -1, (void*)vr$1495, -1, 0 );
									HWRITEASM64( &TMP$3276$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3276$9 );
								}
								goto label$2505;
								label$2510:;
								{
									FBSTRING TMP$3277$9;
									FBSTRING TMP$3278$9;
									FBSTRING TMP$3279$9;
									FBSTRING TMP$3280$9;
									FBSTRING TMP$3281$9;
									__builtin_memset( &TMP$3278$9, 0, 12 );
									__builtin_memset( &TMP$3277$9, 0, 12 );
									FBSTRING* vr$1503 = fb_StrConcat( &TMP$3277$9, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3278$9, -1, (void*)vr$1503, -1, 0 );
									HWRITEASM64( &TMP$3278$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3278$9 );
									__builtin_memset( &TMP$3281$9, 0, 12 );
									FBSTRING* vr$1510 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3279$9, 0, 12 );
									FBSTRING* vr$1513 = fb_StrConcat( &TMP$3279$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1510, -1 );
									__builtin_memset( &TMP$3280$9, 0, 12 );
									FBSTRING* vr$1516 = fb_StrConcat( &TMP$3280$9, (void*)vr$1513, -1, (void*)"[rsp], rax", 11 );
									fb_StrAssign( (void*)&TMP$3281$9, -1, (void*)vr$1516, -1, 0 );
									HWRITEASM64( &TMP$3281$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3281$9 );
								}
								goto label$2505;
								label$2506:;
								static const void* tmp$4081[8] = {
									&&label$2507,
									&&label$2508,
									&&label$2505,
									&&label$2509,
									&&label$2505,
									&&label$2505,
									&&label$2505,
									&&label$2510,
								};
								if( (TMP$3261$8 - 1u) > 7u ) goto label$2505;
								goto *tmp$4081[TMP$3261$8 - 1u];
								label$2505:;
							}
						}
						label$2497:;
					}
					label$2494:;
				}
				label$2484:;
			}
			goto label$2457;
			label$2481:;
			{
				if( *(int32*)V2$1 != 5 ) goto label$2512;
				{
					int32 TMP$3282$5;
					int32 TMP$3283$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2513;
					TMP$3282$5 = -(-(*(boolean*)((uint8*)&CTX$ + 232)) == -1);
					goto label$3151;
					label$2513:;
					TMP$3282$5 = 0;
					label$3151:;
					if( TMP$3282$5 == 0 ) goto label$2514;
					int32 vr$1527 = FBGETOPTION( 0 );
					TMP$3283$5 = -(vr$1527 == 2);
					goto label$3152;
					label$2514:;
					TMP$3283$5 = 0;
					label$3152:;
					if( TMP$3283$5 == 0 ) goto label$2516;
					{
						FBSTRING TMP$3284$6;
						FBSTRING TMP$3285$6;
						FBSTRING TMP$3286$6;
						FBSTRING TMP$3287$6;
						FBSTRING TMP$3288$6;
						__builtin_memset( &TMP$3288$6, 0, 12 );
						FBSTRING* vr$1530 = fb_StrAllocTempDescZEx( (char*)"[", 1 );
						int32 vr$1532 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1530 );
						FBSTRING* vr$1535 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1532 + -1 );
						__builtin_memset( &TMP$3284$6, 0, 12 );
						FBSTRING* vr$1541 = fb_StrConcat( &TMP$3284$6, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3285$6, 0, 12 );
						FBSTRING* vr$1544 = fb_StrConcat( &TMP$3285$6, (void*)vr$1541, -1, (void*)", QWORD PTR ", 13 );
						__builtin_memset( &TMP$3286$6, 0, 12 );
						FBSTRING* vr$1547 = fb_StrConcat( &TMP$3286$6, (void*)vr$1544, -1, (void*)vr$1535, -1 );
						__builtin_memset( &TMP$3287$6, 0, 12 );
						FBSTRING* vr$1550 = fb_StrConcat( &TMP$3287$6, (void*)vr$1547, -1, (void*)"@GOTPCREL[rip]", 15 );
						fb_StrAssign( (void*)&TMP$3288$6, -1, (void*)vr$1550, -1, 0 );
						HWRITEASM64( &TMP$3288$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3288$6 );
					}
					goto label$2515;
					label$2516:;
					{
						FBSTRING TMP$3289$6;
						FBSTRING TMP$3290$6;
						FBSTRING TMP$3291$6;
						FBSTRING TMP$3292$6;
						__builtin_memset( &TMP$3292$6, 0, 12 );
						__builtin_memset( &TMP$3289$6, 0, 12 );
						FBSTRING* vr$1561 = fb_StrConcat( &TMP$3289$6, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3290$6, 0, 12 );
						FBSTRING* vr$1564 = fb_StrConcat( &TMP$3290$6, (void*)vr$1561, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3291$6, 0, 12 );
						FBSTRING* vr$1567 = fb_StrConcat( &TMP$3291$6, (void*)vr$1564, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3292$6, -1, (void*)vr$1567, -1, 0 );
						HWRITEASM64( &TMP$3292$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3292$6 );
					}
					label$2515:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2518;
					{
						FBSTRING TMP$3293$6;
						FBSTRING TMP$3294$6;
						FBSTRING TMP$3295$6;
						FBSTRING TMP$3296$6;
						__builtin_memset( &TMP$3296$6, 0, 12 );
						FBSTRING* vr$1581 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3293$6, 0, 12 );
						FBSTRING* vr$1584 = fb_StrConcat( &TMP$3293$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1581, -1 );
						__builtin_memset( &TMP$3294$6, 0, 12 );
						FBSTRING* vr$1587 = fb_StrConcat( &TMP$3294$6, (void*)vr$1584, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3295$6, 0, 12 );
						FBSTRING* vr$1590 = fb_StrConcat( &TMP$3295$6, (void*)vr$1587, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3296$6, -1, (void*)vr$1590, -1, 0 );
						HWRITEASM64( &TMP$3296$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3296$6 );
					}
					label$2518:;
					label$2517:;
				}
				goto label$2511;
				label$2512:;
				{
					int32 TMP$3297$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$2519;
					TMP$3297$5 = 24;
					goto label$3153;
					label$2519:;
					TMP$3297$5 = DTYPE$1 & 31;
					label$3153:;
					if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3297$5 * 28)) != 1 ) goto label$2521;
					{
						if( DTYPE$1 != 16 ) goto label$2523;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2525;
							{
								FBSTRING TMP$3298$8;
								FBSTRING TMP$3299$8;
								FBSTRING TMP$3300$8;
								FBSTRING TMP$3301$8;
								__builtin_memset( &TMP$3301$8, 0, 12 );
								FBSTRING* vr$1601 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3298$8, 0, 12 );
								FBSTRING* vr$1604 = fb_StrConcat( &TMP$3298$8, (void*)"movq xmm", 9, (void*)vr$1601, -1 );
								__builtin_memset( &TMP$3299$8, 0, 12 );
								FBSTRING* vr$1607 = fb_StrConcat( &TMP$3299$8, (void*)vr$1604, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3300$8, 0, 12 );
								FBSTRING* vr$1610 = fb_StrConcat( &TMP$3300$8, (void*)vr$1607, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3301$8, -1, (void*)vr$1610, -1, 0 );
								HWRITEASM64( &TMP$3301$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3301$8 );
							}
							goto label$2524;
							label$2525:;
							{
								FBSTRING TMP$3303$8;
								FBSTRING TMP$3304$8;
								FBSTRING TMP$3305$8;
								FBSTRING TMP$3306$8;
								__builtin_memset( &TMP$3306$8, 0, 12 );
								FBSTRING* vr$1617 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3303$8, 0, 12 );
								FBSTRING* vr$1620 = fb_StrConcat( &TMP$3303$8, (void*)"movsd xmm", 10, (void*)vr$1617, -1 );
								__builtin_memset( &TMP$3304$8, 0, 12 );
								FBSTRING* vr$1623 = fb_StrConcat( &TMP$3304$8, (void*)vr$1620, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3305$8, 0, 12 );
								FBSTRING* vr$1626 = fb_StrConcat( &TMP$3305$8, (void*)vr$1623, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3306$8, -1, (void*)vr$1626, -1, 0 );
								HWRITEASM64( &TMP$3306$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3306$8 );
							}
							label$2524:;
						}
						goto label$2522;
						label$2523:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2527;
							{
								FBSTRING TMP$3307$8;
								FBSTRING TMP$3308$8;
								FBSTRING TMP$3309$8;
								FBSTRING TMP$3310$8;
								__builtin_memset( &TMP$3310$8, 0, 12 );
								FBSTRING* vr$1634 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3307$8, 0, 12 );
								FBSTRING* vr$1637 = fb_StrConcat( &TMP$3307$8, (void*)"movd xmm", 9, (void*)vr$1634, -1 );
								__builtin_memset( &TMP$3308$8, 0, 12 );
								FBSTRING* vr$1640 = fb_StrConcat( &TMP$3308$8, (void*)vr$1637, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3309$8, 0, 12 );
								FBSTRING* vr$1643 = fb_StrConcat( &TMP$3309$8, (void*)vr$1640, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3310$8, -1, (void*)vr$1643, -1, 0 );
								HWRITEASM64( &TMP$3310$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3310$8 );
							}
							goto label$2526;
							label$2527:;
							{
								FBSTRING TMP$3312$8;
								FBSTRING TMP$3313$8;
								FBSTRING TMP$3314$8;
								FBSTRING TMP$3315$8;
								__builtin_memset( &TMP$3315$8, 0, 12 );
								FBSTRING* vr$1650 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3312$8, 0, 12 );
								FBSTRING* vr$1653 = fb_StrConcat( &TMP$3312$8, (void*)"movss xmm", 10, (void*)vr$1650, -1 );
								__builtin_memset( &TMP$3313$8, 0, 12 );
								FBSTRING* vr$1656 = fb_StrConcat( &TMP$3313$8, (void*)vr$1653, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3314$8, 0, 12 );
								FBSTRING* vr$1659 = fb_StrConcat( &TMP$3314$8, (void*)vr$1656, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3315$8, -1, (void*)vr$1659, -1, 0 );
								HWRITEASM64( &TMP$3315$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3315$8 );
							}
							label$2526:;
						}
						label$2522:;
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2529;
						{
							FBSTRING TMP$3318$7;
							FBSTRING TMP$3319$7;
							FBSTRING TMP$3320$7;
							FBSTRING TMP$3321$7;
							FBSTRING TMP$3323$7;
							FBSTRING TMP$3324$7;
							FBSTRING TMP$3325$7;
							FBSTRING TMP$3326$7;
							__builtin_memset( &TMP$3321$7, 0, 12 );
							FBSTRING* vr$1669 = fb_IntToStr( CPTFLOAT$1 + -1 );
							FBSTRING* vr$1672 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3318$7, 0, 12 );
							FBSTRING* vr$1675 = fb_StrConcat( &TMP$3318$7, (void*)"movsd QWORD PTR ", 17, (void*)vr$1672, -1 );
							__builtin_memset( &TMP$3319$7, 0, 12 );
							FBSTRING* vr$1678 = fb_StrConcat( &TMP$3319$7, (void*)vr$1675, -1, (void*)"[rsp], xmm", 11 );
							__builtin_memset( &TMP$3320$7, 0, 12 );
							FBSTRING* vr$1681 = fb_StrConcat( &TMP$3320$7, (void*)vr$1678, -1, (void*)vr$1669, -1 );
							fb_StrAssign( (void*)&TMP$3321$7, -1, (void*)vr$1681, -1, 0 );
							HWRITEASM64( &TMP$3321$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3321$7 );
							__builtin_memset( &TMP$3326$7, 0, 12 );
							FBSTRING* vr$1687 = fb_IntToStr( CPTFLOAT$1 + -1 );
							__builtin_memset( &TMP$3323$7, 0, 12 );
							FBSTRING* vr$1693 = fb_StrConcat( &TMP$3323$7, (void*)"movq ", 6, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							__builtin_memset( &TMP$3324$7, 0, 12 );
							FBSTRING* vr$1696 = fb_StrConcat( &TMP$3324$7, (void*)vr$1693, -1, (void*)", xmm", 6 );
							__builtin_memset( &TMP$3325$7, 0, 12 );
							FBSTRING* vr$1699 = fb_StrConcat( &TMP$3325$7, (void*)vr$1696, -1, (void*)vr$1687, -1 );
							fb_StrAssign( (void*)&TMP$3326$7, -1, (void*)vr$1699, -1, 0 );
							HWRITEASM64( &TMP$3326$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3326$7 );
						}
						label$2529:;
						label$2528:;
					}
					goto label$2520;
					label$2521:;
					{
						int32 TMP$3332$6;
						REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
						if( DTYPE$1 != 19 ) goto label$2531;
						{
							if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2533;
							{
								FBSTRING TMP$3327$8;
								FBSTRING TMP$3330$8;
								FBSTRING TMP$3331$8;
								__builtin_memset( &TMP$3327$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3327$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3327$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3327$8 );
								__builtin_memset( &TMP$3330$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3330$8, -1, (void*)"FOUND AN ERROR : in hdocall Va_list and target linux could be a problem", 72, 0 );
								HWRITEASM64( &TMP$3330$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3330$8 );
								__builtin_memset( &TMP$3331$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3331$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3331$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3331$8 );
							}
							goto label$2532;
							label$2533:;
							{
								DTYPE$1 = 8;
							}
							label$2532:;
						}
						label$2531:;
						label$2530:;
						if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2534;
						int32 vr$1718 = FBGETOPTION( 0 );
						TMP$3332$6 = -(vr$1718 == 2);
						goto label$3154;
						label$2534:;
						TMP$3332$6 = 0;
						label$3154:;
						if( TMP$3332$6 == 0 ) goto label$2536;
						{
							int32 TMP$3333$7;
							if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2537;
							TMP$3333$7 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
							goto label$3155;
							label$2537:;
							TMP$3333$7 = 0;
							label$3155:;
							if( TMP$3333$7 == 0 ) goto label$2539;
							{
								FBSTRING TMP$3334$8;
								FBSTRING TMP$3335$8;
								FBSTRING TMP$3336$8;
								__builtin_memset( &TMP$3336$8, 0, 12 );
								char* vr$1727 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
								__builtin_memset( &TMP$3334$8, 0, 12 );
								FBSTRING* vr$1730 = fb_StrConcat( &TMP$3334$8, (void*)"mov rax, ", 10, (void*)vr$1727, 0 );
								__builtin_memset( &TMP$3335$8, 0, 12 );
								FBSTRING* vr$1733 = fb_StrConcat( &TMP$3335$8, (void*)vr$1730, -1, (void*)"@GOTPCREL[rip]", 15 );
								fb_StrAssign( (void*)&TMP$3336$8, -1, (void*)vr$1733, -1, 0 );
								HWRITEASM64( &TMP$3336$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3336$8 );
								fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
							}
							label$2539:;
							label$2538:;
						}
						label$2536:;
						label$2535:;
						{
							if( DTYPE$1 == 8 ) goto label$2542;
							label$2543:;
							if( DTYPE$1 == 9 ) goto label$2542;
							label$2544:;
							if( DTYPE$1 == 13 ) goto label$2542;
							label$2545:;
							if( DTYPE$1 == 14 ) goto label$2542;
							label$2546:;
							if( DTYPE$1 != 10 ) goto label$2541;
							label$2542:;
							{
								FBSTRING TMP$3337$8;
								FBSTRING TMP$3338$8;
								FBSTRING TMP$3339$8;
								FBSTRING TMP$3340$8;
								__builtin_memset( &TMP$3340$8, 0, 12 );
								__builtin_memset( &TMP$3337$8, 0, 12 );
								FBSTRING* vr$1745 = fb_StrConcat( &TMP$3337$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3338$8, 0, 12 );
								FBSTRING* vr$1748 = fb_StrConcat( &TMP$3338$8, (void*)vr$1745, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3339$8, 0, 12 );
								FBSTRING* vr$1751 = fb_StrConcat( &TMP$3339$8, (void*)vr$1748, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3340$8, -1, (void*)vr$1751, -1, 0 );
								HWRITEASM64( &TMP$3340$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3340$8 );
							}
							goto label$2540;
							label$2541:;
							if( DTYPE$1 == 11 ) goto label$2548;
							label$2549:;
							if( DTYPE$1 != 12 ) goto label$2547;
							label$2548:;
							{
								FBSTRING TMP$3341$8;
								FBSTRING TMP$3342$8;
								FBSTRING TMP$3343$8;
								FBSTRING TMP$3344$8;
								__builtin_memset( &TMP$3344$8, 0, 12 );
								__builtin_memset( &TMP$3341$8, 0, 12 );
								FBSTRING* vr$1762 = fb_StrConcat( &TMP$3341$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3342$8, 0, 12 );
								FBSTRING* vr$1765 = fb_StrConcat( &TMP$3342$8, (void*)vr$1762, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3343$8, 0, 12 );
								FBSTRING* vr$1768 = fb_StrConcat( &TMP$3343$8, (void*)vr$1765, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3344$8, -1, (void*)vr$1768, -1, 0 );
								HWRITEASM64( &TMP$3344$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3344$8 );
							}
							goto label$2540;
							label$2547:;
							if( DTYPE$1 == 5 ) goto label$2551;
							label$2552:;
							if( DTYPE$1 != 6 ) goto label$2550;
							label$2551:;
							{
								FBSTRING TMP$3345$8;
								FBSTRING TMP$3346$8;
								FBSTRING TMP$3347$8;
								FBSTRING TMP$3348$8;
								__builtin_memset( &TMP$3348$8, 0, 12 );
								__builtin_memset( &TMP$3345$8, 0, 12 );
								FBSTRING* vr$1779 = fb_StrConcat( &TMP$3345$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRW$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3346$8, 0, 12 );
								FBSTRING* vr$1782 = fb_StrConcat( &TMP$3346$8, (void*)vr$1779, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3347$8, 0, 12 );
								FBSTRING* vr$1785 = fb_StrConcat( &TMP$3347$8, (void*)vr$1782, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3348$8, -1, (void*)vr$1785, -1, 0 );
								HWRITEASM64( &TMP$3348$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3348$8 );
							}
							goto label$2540;
							label$2550:;
							if( DTYPE$1 == 2 ) goto label$2554;
							label$2555:;
							if( DTYPE$1 == 3 ) goto label$2554;
							label$2556:;
							if( DTYPE$1 == 1 ) goto label$2554;
							label$2557:;
							if( DTYPE$1 != 4 ) goto label$2553;
							label$2554:;
							{
								FBSTRING TMP$3349$8;
								FBSTRING TMP$3350$8;
								FBSTRING TMP$3351$8;
								FBSTRING TMP$3352$8;
								__builtin_memset( &TMP$3352$8, 0, 12 );
								__builtin_memset( &TMP$3349$8, 0, 12 );
								FBSTRING* vr$1796 = fb_StrConcat( &TMP$3349$8, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRB$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3350$8, 0, 12 );
								FBSTRING* vr$1799 = fb_StrConcat( &TMP$3350$8, (void*)vr$1796, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3351$8, 0, 12 );
								FBSTRING* vr$1802 = fb_StrConcat( &TMP$3351$8, (void*)vr$1799, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3352$8, -1, (void*)vr$1802, -1, 0 );
								HWRITEASM64( &TMP$3352$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3352$8 );
							}
							goto label$2540;
							label$2553:;
							{
								FBSTRING TMP$3353$8;
								FBSTRING TMP$3357$8;
								FBSTRING TMP$3358$8;
								FBSTRING TMP$3359$8;
								__builtin_memset( &TMP$3353$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3353$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3353$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3353$8 );
								__builtin_memset( &TMP$3358$8, 0, 12 );
								FBSTRING* vr$1811 = fb_IntToStr( DTYPE$1 );
								__builtin_memset( &TMP$3357$8, 0, 12 );
								FBSTRING* vr$1814 = fb_StrConcat( &TMP$3357$8, (void*)"FOUND AN ERROR : in hdocall datatype not handled 03 = ", 55, (void*)vr$1811, -1 );
								fb_StrAssign( (void*)&TMP$3358$8, -1, (void*)vr$1814, -1, 0 );
								HWRITEASM64( &TMP$3358$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3358$8 );
								__builtin_memset( &TMP$3359$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3359$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3359$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3359$8 );
							}
							label$2558:;
							label$2540:;
						}
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 228) == 0)) == 0 ) goto label$2560;
						{
							FBSTRING TMP$3360$7;
							FBSTRING TMP$3361$7;
							FBSTRING TMP$3362$7;
							FBSTRING TMP$3363$7;
							__builtin_memset( &TMP$3363$7, 0, 12 );
							FBSTRING* vr$1832 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3360$7, 0, 12 );
							FBSTRING* vr$1835 = fb_StrConcat( &TMP$3360$7, (void*)"mov QWORD PTR ", 15, (void*)vr$1832, -1 );
							__builtin_memset( &TMP$3361$7, 0, 12 );
							FBSTRING* vr$1838 = fb_StrConcat( &TMP$3361$7, (void*)vr$1835, -1, (void*)"[rsp], ", 8 );
							__builtin_memset( &TMP$3362$7, 0, 12 );
							FBSTRING* vr$1841 = fb_StrConcat( &TMP$3362$7, (void*)vr$1838, -1, *(void**)((int32)(char**)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							fb_StrAssign( (void*)&TMP$3363$7, -1, (void*)vr$1841, -1, 0 );
							HWRITEASM64( &TMP$3363$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3363$7 );
						}
						label$2560:;
						label$2559:;
					}
					label$2520:;
				}
				label$2511:;
			}
			label$2457:;
		}
		label$2375:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 60), (void*)ARG$1 );
		ARG$1 = PREV$1;
	}
	goto label$2303;
	label$2304:;
	if( CPTARG$1 <= *(int32*)((uint8*)&CTX$ + 80) ) goto label$2562;
	{
		*(int32*)((uint8*)&CTX$ + 80) = CPTARG$1;
		label$2562:;
	}
	int32 vr$1846 = fb_StrCompare( (void*)FIRSTMOV$1, -1, (void*)"", 1 );
	if( vr$1846 == 0 ) goto label$2564;
	{
		HWRITEASM64( FIRSTMOV$1, 0 );
		label$2564:;
	}
	if( CALLPTR$1 == (boolean)0 ) goto label$2566;
	{
		FBSTRING TMP$3364$2;
		FBSTRING TMP$3365$2;
		__builtin_memset( &TMP$3365$2, 0, 12 );
		__builtin_memset( &TMP$3364$2, 0, 12 );
		FBSTRING* vr$1850 = fb_StrConcat( &TMP$3364$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3365$2, -1, (void*)vr$1850, -1, 0 );
		REG_FREEABLE( &TMP$3365$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3365$2 );
		label$2566:;
	}
	if( PUSHSIZE$1 == 0 ) goto label$2568;
	{
		if( (PUSHSIZE$1 % 16) == 0 ) goto label$2570;
		{
			FBSTRING TMP$3367$3;
			PUSHSIZE$1 = (((PUSHSIZE$1 + ((PUSHSIZE$1 >> (31 & 31)) & 15)) >> (4 & 31)) << (4 & 31)) + 16;
			__builtin_memset( &TMP$3367$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3367$3, -1, (void*)"sub rsp, 8", 11, 0 );
			HWRITEASM64( &TMP$3367$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3367$3 );
		}
		label$2570:;
		label$2569:;
		{
			int32 ISTR$3;
			ISTR$3 = PUSHNBSTR$1;
			goto label$2571;
			label$2574:;
			{
				FBSTRING* vr$1867 = fb_RIGHT( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				int32 vr$1868 = fb_StrCompare( (void*)vr$1867, -1, (void*)"#NO", 4 );
				if( vr$1868 != 0 ) goto label$2576;
				{
					HWRITEASM64( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				}
				goto label$2575;
				label$2576:;
				{
					HWRITEASM64( (FBSTRING*)((int32)(FBSTRING*)PUSHSTR$1 + (ISTR$3 * 12)), 0 );
				}
				label$2575:;
			}
			label$2572:;
			ISTR$3 = ISTR$3 + -1;
			label$2571:;
			if( ISTR$3 >= 1 ) goto label$2574;
			label$2573:;
		}
	}
	label$2568:;
	label$2567:;
	if( CALLPTR$1 == (boolean)0 ) goto label$2578;
	{
		REG_ALLOWED( (boolean)1 );
		label$2578:;
	}
	REG_SAVE(  );
	if( -VARIADIC$1 != -1 ) goto label$2580;
	{
		if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2582;
		{
			int32 TMP$3368$3;
			FBSTRING TMP$3369$3;
			FBSTRING TMP$3370$3;
			__builtin_memset( &TMP$3370$3, 0, 12 );
			if( CPTFLOAT$1 > 8 ) goto label$2583;
			TMP$3368$3 = CPTFLOAT$1;
			goto label$3156;
			label$2583:;
			TMP$3368$3 = 8;
			label$3156:;
			FBSTRING* vr$1876 = fb_IntToStr( TMP$3368$3 );
			__builtin_memset( &TMP$3369$3, 0, 12 );
			FBSTRING* vr$1879 = fb_StrConcat( &TMP$3369$3, (void*)"mov eax, ", 10, (void*)vr$1876, -1 );
			fb_StrAssign( (void*)&TMP$3370$3, -1, (void*)vr$1879, -1, 0 );
			HWRITEASM64( &TMP$3370$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3370$3 );
		}
		label$2582:;
		label$2581:;
	}
	label$2580:;
	label$2579:;
	if( -(*(boolean*)((uint8*)&CTX$ + 232)) != -1 ) goto label$2584;
	int32 vr$1884 = FBGETOPTION( 0 );
	TMP$3371$1 = -(vr$1884 == 2);
	goto label$3157;
	label$2584:;
	TMP$3371$1 = 0;
	label$3157:;
	if( TMP$3371$1 == 0 ) goto label$2586;
	{
		FBSTRING TMP$3372$2;
		FBSTRING TMP$3373$2;
		FBSTRING TMP$3374$2;
		__builtin_memset( &TMP$3374$2, 0, 12 );
		__builtin_memset( &TMP$3372$2, 0, 12 );
		FBSTRING* vr$1889 = fb_StrConcat( &TMP$3372$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		__builtin_memset( &TMP$3373$2, 0, 12 );
		FBSTRING* vr$1892 = fb_StrConcat( &TMP$3373$2, (void*)vr$1889, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$3374$2, -1, (void*)vr$1892, -1, 0 );
		HWRITEASM64( &TMP$3374$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3374$2 );
	}
	goto label$2585;
	label$2586:;
	{
		FBSTRING TMP$3375$2;
		FBSTRING TMP$3376$2;
		__builtin_memset( &TMP$3376$2, 0, 12 );
		__builtin_memset( &TMP$3375$2, 0, 12 );
		FBSTRING* vr$1899 = fb_StrConcat( &TMP$3375$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3376$2, -1, (void*)vr$1899, -1, 0 );
		HWRITEASM64( &TMP$3376$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3376$2 );
	}
	label$2585:;
	if( PUSHSIZE$1 == 0 ) goto label$2588;
	{
		FBSTRING TMP$3378$2;
		FBSTRING TMP$3379$2;
		__builtin_memset( &TMP$3379$2, 0, 12 );
		FBSTRING* vr$1904 = fb_IntToStr( PUSHSIZE$1 );
		__builtin_memset( &TMP$3378$2, 0, 12 );
		FBSTRING* vr$1907 = fb_StrConcat( &TMP$3378$2, (void*)"add rsp, ", 10, (void*)vr$1904, -1 );
		fb_StrAssign( (void*)&TMP$3379$2, -1, (void*)vr$1907, -1, 0 );
		HWRITEASM64( &TMP$3379$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3379$2 );
		PUSHSIZE$1 = 0;
		PUSHNBSTR$1 = 0;
	}
	label$2588:;
	label$2587:;
	if( *(int64*)((uint8*)&CTX$ + 120) <= *(int64*)((uint8*)&CTX$ + 104) ) goto label$2590;
	{
		*(int64*)((uint8*)&CTX$ + 104) = *(int64*)((uint8*)&CTX$ + 120);
		label$2590:;
	}
	*(int64*)((uint8*)&CTX$ + 112) = 0ll;
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)0;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2592;
	{
		int32 TMP$3409$2;
		int32 vr$1911 = HISSTRUCTIN2REGS( VR$1 );
		if( vr$1911 == 0 ) goto label$2594;
		{
			*($15IRVREGTYPE_ENUM*)VR$1 = 1;
			*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368) << (1 & 31));
			*(int64*)((uint8*)VR$1 + 40) = -(*(int64*)((uint8*)&CTX$ + 96));
			{
				uint32 TMP$3380$4;
				TMP$3380$4 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) + 132);
				goto label$2596;
				label$2597:;
				{
					FBSTRING TMP$3382$5;
					FBSTRING TMP$3383$5;
					FBSTRING TMP$3384$5;
					FBSTRING TMP$3386$5;
					FBSTRING TMP$3387$5;
					FBSTRING TMP$3388$5;
					__builtin_memset( &TMP$3384$5, 0, 12 );
					FBSTRING* vr$1922 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3382$5, 0, 12 );
					FBSTRING* vr$1925 = fb_StrConcat( &TMP$3382$5, (void*)"mov ", 5, (void*)vr$1922, -1 );
					__builtin_memset( &TMP$3383$5, 0, 12 );
					FBSTRING* vr$1928 = fb_StrConcat( &TMP$3383$5, (void*)vr$1925, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3384$5, -1, (void*)vr$1928, -1, 0 );
					HWRITEASM64( &TMP$3384$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3384$5 );
					__builtin_memset( &TMP$3388$5, 0, 12 );
					FBSTRING* vr$1935 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3386$5, 0, 12 );
					FBSTRING* vr$1938 = fb_StrConcat( &TMP$3386$5, (void*)"mov ", 5, (void*)vr$1935, -1 );
					__builtin_memset( &TMP$3387$5, 0, 12 );
					FBSTRING* vr$1941 = fb_StrConcat( &TMP$3387$5, (void*)vr$1938, -1, (void*)"[rbp], rdx", 11 );
					fb_StrAssign( (void*)&TMP$3388$5, -1, (void*)vr$1941, -1, 0 );
					HWRITEASM64( &TMP$3388$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3388$5 );
				}
				goto label$2595;
				label$2598:;
				{
					FBSTRING TMP$3389$5;
					FBSTRING TMP$3390$5;
					FBSTRING TMP$3391$5;
					FBSTRING TMP$3393$5;
					FBSTRING TMP$3394$5;
					FBSTRING TMP$3395$5;
					__builtin_memset( &TMP$3391$5, 0, 12 );
					FBSTRING* vr$1947 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3389$5, 0, 12 );
					FBSTRING* vr$1950 = fb_StrConcat( &TMP$3389$5, (void*)"mov ", 5, (void*)vr$1947, -1 );
					__builtin_memset( &TMP$3390$5, 0, 12 );
					FBSTRING* vr$1953 = fb_StrConcat( &TMP$3390$5, (void*)vr$1950, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3391$5, -1, (void*)vr$1953, -1, 0 );
					HWRITEASM64( &TMP$3391$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3391$5 );
					__builtin_memset( &TMP$3395$5, 0, 12 );
					FBSTRING* vr$1960 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3393$5, 0, 12 );
					FBSTRING* vr$1963 = fb_StrConcat( &TMP$3393$5, (void*)"movq ", 6, (void*)vr$1960, -1 );
					__builtin_memset( &TMP$3394$5, 0, 12 );
					FBSTRING* vr$1966 = fb_StrConcat( &TMP$3394$5, (void*)vr$1963, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3395$5, -1, (void*)vr$1966, -1, 0 );
					HWRITEASM64( &TMP$3395$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3395$5 );
				}
				goto label$2595;
				label$2599:;
				{
					FBSTRING TMP$3396$5;
					FBSTRING TMP$3397$5;
					FBSTRING TMP$3398$5;
					FBSTRING TMP$3399$5;
					FBSTRING TMP$3400$5;
					FBSTRING TMP$3401$5;
					__builtin_memset( &TMP$3398$5, 0, 12 );
					FBSTRING* vr$1972 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3396$5, 0, 12 );
					FBSTRING* vr$1975 = fb_StrConcat( &TMP$3396$5, (void*)"movq ", 6, (void*)vr$1972, -1 );
					__builtin_memset( &TMP$3397$5, 0, 12 );
					FBSTRING* vr$1978 = fb_StrConcat( &TMP$3397$5, (void*)vr$1975, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3398$5, -1, (void*)vr$1978, -1, 0 );
					HWRITEASM64( &TMP$3398$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3398$5 );
					__builtin_memset( &TMP$3401$5, 0, 12 );
					FBSTRING* vr$1985 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3399$5, 0, 12 );
					FBSTRING* vr$1988 = fb_StrConcat( &TMP$3399$5, (void*)"mov ", 5, (void*)vr$1985, -1 );
					__builtin_memset( &TMP$3400$5, 0, 12 );
					FBSTRING* vr$1991 = fb_StrConcat( &TMP$3400$5, (void*)vr$1988, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3401$5, -1, (void*)vr$1991, -1, 0 );
					HWRITEASM64( &TMP$3401$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3401$5 );
				}
				goto label$2595;
				label$2600:;
				{
					FBSTRING TMP$3402$5;
					FBSTRING TMP$3403$5;
					FBSTRING TMP$3404$5;
					FBSTRING TMP$3406$5;
					FBSTRING TMP$3407$5;
					FBSTRING TMP$3408$5;
					__builtin_memset( &TMP$3404$5, 0, 12 );
					FBSTRING* vr$1997 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3402$5, 0, 12 );
					FBSTRING* vr$2000 = fb_StrConcat( &TMP$3402$5, (void*)"movq ", 6, (void*)vr$1997, -1 );
					__builtin_memset( &TMP$3403$5, 0, 12 );
					FBSTRING* vr$2003 = fb_StrConcat( &TMP$3403$5, (void*)vr$2000, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3404$5, -1, (void*)vr$2003, -1, 0 );
					HWRITEASM64( &TMP$3404$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3404$5 );
					__builtin_memset( &TMP$3408$5, 0, 12 );
					FBSTRING* vr$2010 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3406$5, 0, 12 );
					FBSTRING* vr$2013 = fb_StrConcat( &TMP$3406$5, (void*)"movq ", 6, (void*)vr$2010, -1 );
					__builtin_memset( &TMP$3407$5, 0, 12 );
					FBSTRING* vr$2016 = fb_StrConcat( &TMP$3407$5, (void*)vr$2013, -1, (void*)"[rbp], xmm1", 12 );
					fb_StrAssign( (void*)&TMP$3408$5, -1, (void*)vr$2016, -1, 0 );
					HWRITEASM64( &TMP$3408$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3408$5 );
				}
				goto label$2595;
				label$2596:;
				static const void* tmp$4082[5] = {
					&&label$2597,
					&&label$2598,
					&&label$2595,
					&&label$2599,
					&&label$2600,
				};
				if( (TMP$3380$4 - 2u) > 4u ) goto label$2595;
				goto *tmp$4082[TMP$3380$4 - 2u];
				label$2595:;
			}
			fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2985$1 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			fb_StrDelete( (FBSTRING*)&OP3$1 );
			fb_StrDelete( (FBSTRING*)&OP1$1 );
			goto label$2300;
		}
		label$2594:;
		label$2593:;
		DTYPE$1 = *(int32*)((uint8*)VR$1 + 4) & 511;
		if( (DTYPE$1 & 480) == 0 ) goto label$2601;
		TMP$3409$2 = 24;
		goto label$3158;
		label$2601:;
		TMP$3409$2 = DTYPE$1 & 31;
		label$3158:;
		if( TMP$3409$2 != 24 ) goto label$2603;
		{
			DTYPE$1 = 8;
			label$2603:;
		}
		if( DTYPE$1 != 16 ) goto label$2605;
		{
			if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 20 ) goto label$2607;
			{
				FBSTRING TMP$3411$4;
				__builtin_memset( &TMP$3411$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3411$4, -1, (void*)"movq rax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3411$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3411$4 );
			}
			goto label$2606;
			label$2607:;
			{
				if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2609;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2611;
					{
						FBSTRING TMP$3412$6;
						__builtin_memset( &TMP$3412$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3412$6, -1, (void*)"movq rax, xmm0", 15, 0 );
						HWRITEASM64( &TMP$3412$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3412$6 );
					}
					label$2611:;
					label$2610:;
				}
				goto label$2608;
				label$2609:;
				{
					FBSTRING TMP$3413$5;
					__builtin_memset( &TMP$3413$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3413$5, -1, (void*)"movq rax, xmm0", 15, 0 );
					HWRITEASM64( &TMP$3413$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3413$5 );
				}
				label$2608:;
			}
			label$2606:;
		}
		goto label$2604;
		label$2605:;
		if( DTYPE$1 != 15 ) goto label$2612;
		{
			if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 20 ) goto label$2614;
			{
				FBSTRING TMP$3415$4;
				__builtin_memset( &TMP$3415$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3415$4, -1, (void*)"movd eax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3415$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3415$4 );
			}
			goto label$2613;
			label$2614:;
			{
				if( (*(int32*)((uint8*)&ENV$ + 284) & 16) == 0 ) goto label$2616;
				{
					if( (*(int32*)((uint8*)&ENV$ + 284) & 32) == 0 ) goto label$2618;
					{
						FBSTRING TMP$3416$6;
						__builtin_memset( &TMP$3416$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3416$6, -1, (void*)"movd eax, xmm0", 15, 0 );
						HWRITEASM64( &TMP$3416$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3416$6 );
					}
					label$2618:;
					label$2617:;
				}
				goto label$2615;
				label$2616:;
				{
					FBSTRING TMP$3417$5;
					__builtin_memset( &TMP$3417$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3417$5, -1, (void*)"movd eax, xmm0", 15, 0 );
					HWRITEASM64( &TMP$3417$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3417$5 );
				}
				label$2615:;
			}
			label$2613:;
		}
		label$2612:;
		label$2604:;
		REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
		{
			$15IRVREGTYPE_ENUM TMP$3418$3;
			TMP$3418$3 = *($15IRVREGTYPE_ENUM*)VR$1;
			if( TMP$3418$3 != 4 ) goto label$2620;
			label$2621:;
			{
				{
					if( DTYPE$1 == 8 ) goto label$2624;
					label$2625:;
					if( DTYPE$1 == 9 ) goto label$2624;
					label$2626:;
					if( DTYPE$1 == 13 ) goto label$2624;
					label$2627:;
					if( DTYPE$1 == 14 ) goto label$2624;
					label$2628:;
					if( DTYPE$1 == 16 ) goto label$2624;
					label$2629:;
					if( DTYPE$1 != 10 ) goto label$2623;
					label$2624:;
					{
						FBSTRING TMP$3419$6;
						FBSTRING TMP$3420$6;
						FBSTRING TMP$3421$6;
						FBSTRING TMP$3422$6;
						int32 vr$2063 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$2063 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3422$6, 0, 12 );
						__builtin_memset( &TMP$3419$6, 0, 12 );
						FBSTRING* vr$2070 = fb_StrConcat( &TMP$3419$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3420$6, 0, 12 );
						FBSTRING* vr$2073 = fb_StrConcat( &TMP$3420$6, (void*)vr$2070, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3421$6, 0, 12 );
						FBSTRING* vr$2076 = fb_StrConcat( &TMP$3421$6, (void*)vr$2073, -1, *(void**)REGSTRQ$, 0 );
						fb_StrAssign( (void*)&TMP$3422$6, -1, (void*)vr$2076, -1, 0 );
						HWRITEASM64( &TMP$3422$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3422$6 );
					}
					goto label$2622;
					label$2623:;
					if( DTYPE$1 == 11 ) goto label$2631;
					label$2632:;
					if( DTYPE$1 == 12 ) goto label$2631;
					label$2633:;
					if( DTYPE$1 != 15 ) goto label$2630;
					label$2631:;
					{
						FBSTRING TMP$3423$6;
						FBSTRING TMP$3424$6;
						FBSTRING TMP$3425$6;
						FBSTRING TMP$3426$6;
						int32 vr$2081 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRD$ + (vr$2081 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3426$6, 0, 12 );
						__builtin_memset( &TMP$3423$6, 0, 12 );
						FBSTRING* vr$2088 = fb_StrConcat( &TMP$3423$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3424$6, 0, 12 );
						FBSTRING* vr$2091 = fb_StrConcat( &TMP$3424$6, (void*)vr$2088, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3425$6, 0, 12 );
						FBSTRING* vr$2094 = fb_StrConcat( &TMP$3425$6, (void*)vr$2091, -1, *(void**)REGSTRD$, 0 );
						fb_StrAssign( (void*)&TMP$3426$6, -1, (void*)vr$2094, -1, 0 );
						HWRITEASM64( &TMP$3426$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3426$6 );
					}
					goto label$2622;
					label$2630:;
					if( DTYPE$1 == 5 ) goto label$2635;
					label$2636:;
					if( DTYPE$1 != 6 ) goto label$2634;
					label$2635:;
					{
						FBSTRING TMP$3427$6;
						FBSTRING TMP$3428$6;
						FBSTRING TMP$3429$6;
						FBSTRING TMP$3430$6;
						int32 vr$2099 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRW$ + (vr$2099 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3430$6, 0, 12 );
						__builtin_memset( &TMP$3427$6, 0, 12 );
						FBSTRING* vr$2106 = fb_StrConcat( &TMP$3427$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3428$6, 0, 12 );
						FBSTRING* vr$2109 = fb_StrConcat( &TMP$3428$6, (void*)vr$2106, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3429$6, 0, 12 );
						FBSTRING* vr$2112 = fb_StrConcat( &TMP$3429$6, (void*)vr$2109, -1, *(void**)REGSTRW$, 0 );
						fb_StrAssign( (void*)&TMP$3430$6, -1, (void*)vr$2112, -1, 0 );
						HWRITEASM64( &TMP$3430$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3430$6 );
					}
					goto label$2622;
					label$2634:;
					if( DTYPE$1 == 2 ) goto label$2638;
					label$2639:;
					if( DTYPE$1 == 3 ) goto label$2638;
					label$2640:;
					if( DTYPE$1 == 1 ) goto label$2638;
					label$2641:;
					if( DTYPE$1 != 4 ) goto label$2637;
					label$2638:;
					{
						FBSTRING TMP$3431$6;
						FBSTRING TMP$3432$6;
						FBSTRING TMP$3433$6;
						FBSTRING TMP$3434$6;
						int32 vr$2117 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRB$ + (vr$2117 << (2 & 31))), 0, 0 );
						__builtin_memset( &TMP$3434$6, 0, 12 );
						__builtin_memset( &TMP$3431$6, 0, 12 );
						FBSTRING* vr$2124 = fb_StrConcat( &TMP$3431$6, (void*)"mov ", 5, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3432$6, 0, 12 );
						FBSTRING* vr$2127 = fb_StrConcat( &TMP$3432$6, (void*)vr$2124, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3433$6, 0, 12 );
						FBSTRING* vr$2130 = fb_StrConcat( &TMP$3433$6, (void*)vr$2127, -1, *(void**)REGSTRB$, 0 );
						fb_StrAssign( (void*)&TMP$3434$6, -1, (void*)vr$2130, -1, 0 );
						HWRITEASM64( &TMP$3434$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3434$6 );
					}
					goto label$2622;
					label$2637:;
					{
						FBSTRING TMP$3435$6;
						FBSTRING TMP$3439$6;
						FBSTRING TMP$3440$6;
						FBSTRING TMP$3441$6;
						__builtin_memset( &TMP$3435$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3435$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3435$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3435$6 );
						__builtin_memset( &TMP$3440$6, 0, 12 );
						FBSTRING* vr$2139 = fb_IntToStr( DTYPE$1 );
						__builtin_memset( &TMP$3439$6, 0, 12 );
						FBSTRING* vr$2142 = fb_StrConcat( &TMP$3439$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 04 = ", 55, (void*)vr$2139, -1 );
						fb_StrAssign( (void*)&TMP$3440$6, -1, (void*)vr$2142, -1, 0 );
						HWRITEASM64( &TMP$3440$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3440$6 );
						__builtin_memset( &TMP$3441$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3441$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$3441$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3441$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + 68), 0, 0 );
					}
					label$2642:;
					label$2622:;
				}
			}
			goto label$2619;
			label$2620:;
			{
				FBSTRING TMP$3442$4;
				FBSTRING TMP$3445$4;
				FBSTRING TMP$3446$4;
				__builtin_memset( &TMP$3442$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3442$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3442$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3442$4 );
				__builtin_memset( &TMP$3445$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3445$4, -1, (void*)"FOUND AN ERROR : in hdocall vr->type not handled (test optim)", 62, 0 );
				HWRITEASM64( &TMP$3445$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3445$4 );
				__builtin_memset( &TMP$3446$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3446$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3446$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3446$4 );
			}
			label$2643:;
			label$2619:;
		}
	}
	label$2592:;
	label$2591:;
	fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2985$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2300:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	FBSTRING TMP$3447$1;
	FBSTRING TMP$3448$1;
	label$2644:;
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2647;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2649;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2649:;
		label$2648:;
	}
	label$2647:;
	label$2646:;
	__builtin_memset( &TMP$3448$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3448$1, -1, (void*)"", 1, 0 );
	__builtin_memset( &TMP$3447$1, 0, 12 );
	char* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&TMP$3447$1, -1, (void*)vr$7, 0, 0 );
	HDOCALL( PROC$1, &TMP$3447$1, &TMP$3448$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)0 );
	fb_StrDelete( (FBSTRING*)&TMP$3448$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3447$1 );
	label$2645:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	label$2650:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$3449$2;
		TMP$3449$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$3449$2 != 4 ) goto label$2653;
		label$2654:;
		{
			int32 vr$6 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$6 << (2 & 31))), 0, 0 );
		}
		goto label$2652;
		label$2653:;
		if( TMP$3449$2 != 2 ) goto label$2655;
		label$2656:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2652;
		label$2655:;
		if( TMP$3449$2 != 3 ) goto label$2657;
		label$2658:;
		{
			FBSTRING TMP$3450$3;
			FBSTRING TMP$3451$3;
			FBSTRING TMP$3452$3;
			int32 vr$13 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$16 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$3450$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$3450$3, (void*)vr$16, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$3451$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$3451$3, (void*)vr$19, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$13 << (2 & 31))), 0 );
			__builtin_memset( &TMP$3452$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$3452$3, (void*)vr$22, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$25, -1, 0 );
		}
		goto label$2652;
		label$2657:;
		if( TMP$3449$2 != 5 ) goto label$2659;
		label$2660:;
		{
			char* vr$28 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$28, 0, 0 );
		}
		goto label$2652;
		label$2659:;
		if( TMP$3449$2 != 0 ) goto label$2661;
		label$2662:;
		{
			FBSTRING TMP$3453$3;
			FBSTRING TMP$3456$3;
			FBSTRING TMP$3457$3;
			__builtin_memset( &TMP$3453$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3453$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3453$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3453$3 );
			__builtin_memset( &TMP$3456$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3456$3, -1, (void*)"FOUND AN ERROR : Never IMM as first operand", 44, 0 );
			HWRITEASM64( &TMP$3456$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3456$3 );
			__builtin_memset( &TMP$3457$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3457$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3457$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3457$3 );
		}
		goto label$2652;
		label$2661:;
		if( TMP$3449$2 != 1 ) goto label$2663;
		label$2664:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2666;
			{
				FBSTRING TMP$3458$4;
				FBSTRING TMP$3459$4;
				FBSTRING TMP$3460$4;
				FBSTRING* vr$52 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				char* vr$54 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3458$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3458$4, (void*)vr$54, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3459$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3459$4, (void*)vr$57, -1, (void*)vr$52, -1 );
				__builtin_memset( &TMP$3460$4, 0, 12 );
				FBSTRING* vr$63 = fb_StrConcat( &TMP$3460$4, (void*)vr$60, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$63, -1, 0 );
			}
			goto label$2665;
			label$2666:;
			{
				FBSTRING TMP$3461$4;
				FBSTRING* vr$66 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$3461$4, 0, 12 );
				FBSTRING* vr$69 = fb_StrConcat( &TMP$3461$4, (void*)vr$66, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$69, -1, 0 );
			}
			label$2665:;
		}
		goto label$2652;
		label$2663:;
		{
			FBSTRING TMP$3462$3;
			FBSTRING TMP$3463$3;
			FBSTRING TMP$3464$3;
			__builtin_memset( &TMP$3462$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3462$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3462$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3462$3 );
			__builtin_memset( &TMP$3463$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3463$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$3463$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3463$3 );
			__builtin_memset( &TMP$3464$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3464$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3464$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3464$3 );
		}
		label$2667:;
		label$2652:;
	}
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2669;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2671;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2671:;
		label$2670:;
	}
	label$2669:;
	label$2668:;
	HDOCALL( PROC$1, &OP1$1, &OP3$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2651:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$3465$1;
	FBSTRING TMP$3466$1;
	label$2672:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)((uint8*)V1$1 + 12) != *(int32*)((uint8*)&CTX$ + 136) ) goto label$2675;
	{
		REG$1 = *(int32*)((uint8*)&CTX$ + 132);
		*(int32*)((uint8*)&CTX$ + 140) = 0;
		*(int32*)((uint8*)&CTX$ + 136) = -2;
	}
	goto label$2674;
	label$2675:;
	{
		int32 vr$3 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
		REG$1 = vr$3;
	}
	label$2674:;
	__builtin_memset( &TMP$3466$1, 0, 12 );
	__builtin_memset( &TMP$3465$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3465$1, (void*)"jmp ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REG$1 << (2 & 31))), 0 );
	fb_StrAssign( (void*)&TMP$3466$1, -1, (void*)vr$8, -1, 0 );
	HWRITEASM64( &TMP$3466$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3466$1 );
	label$2673:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$3467$1;
	FBSTRING TMP$3468$1;
	FBSTRING TMP$3469$1;
	label$2676:;
	__builtin_memset( &TMP$3469$1, 0, 12 );
	char* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	char* vr$2 = HGETBOPCODE( OP$1 );
	__builtin_memset( &TMP$3467$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3467$1, (void*)vr$2, 0, (void*)" ", 2 );
	__builtin_memset( &TMP$3468$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3468$1, (void*)vr$5, -1, (void*)vr$1, 0 );
	fb_StrAssign( (void*)&TMP$3469$1, -1, (void*)vr$8, -1, 0 );
	HWRITEASM64( &TMP$3469$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3469$1 );
	if( *(int32*)((uint8*)&CTX$ + 236) == 0 ) goto label$2679;
	{
		*(int32*)((int32)(int32*)REGHANDLE$ + (*(int32*)((uint8*)&CTX$ + 236) << (2 & 31))) = -2;
		*(int32*)((uint8*)&CTX$ + 236) = 0;
	}
	label$2679:;
	label$2678:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) == (struct $8FBSYMBOL*)0u ) goto label$2681;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = LABEL$1;
	}
	label$2681:;
	label$2680:;
	if( OP$1 == 98 ) goto label$2683;
	{
		REG_MARK( LABEL$1 );
	}
	label$2683:;
	label$2682:;
	label$2677:;
}

static void _EMITRETURN( int32 BYTESTOPOP$1 )
{
	FBSTRING TMP$3471$1;
	FBSTRING TMP$3472$1;
	label$2684:;
	__builtin_memset( &TMP$3471$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3471$1, -1, (void*)"add rsp, 88 # restore stack for gosub", 38, 0 );
	HWRITEASM64( &TMP$3471$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3471$1 );
	__builtin_memset( &TMP$3472$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3472$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3472$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3472$1 );
	label$2685:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$3473$1;
	label$2686:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING OP1$1;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
	__builtin_memset( &TMP$3473$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3473$1, (void*)vr$2, -1, (void*)"[rbp]", 6 );
	fb_StrInit( (void*)&OP1$1, -1, (void*)vr$5, -1, 0 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	int32 REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 4 );
	if( LABELCOUNT$1 != 0 ) goto label$2689;
	{
		FBSTRING TMP$3474$2;
		FBSTRING TMP$3475$2;
		__builtin_memset( &TMP$3475$2, 0, 12 );
		char* vr$11 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3474$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3474$2, (void*)"jmp ", 5, (void*)vr$11, 0 );
		fb_StrAssign( (void*)&TMP$3475$2, -1, (void*)vr$14, -1, 0 );
		HWRITEASM64( &TMP$3475$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3475$2 );
	}
	goto label$2688;
	label$2689:;
	{
		FBSTRING TMP$3476$2;
		FBSTRING TMP$3477$2;
		FBSTRING TMP$3488$2;
		FBSTRING TMP$3489$2;
		FBSTRING TMP$3490$2;
		FBSTRING TMP$3491$2;
		FBSTRING TMP$3493$2;
		FBSTRING TMP$3494$2;
		FBSTRING TMP$3495$2;
		FBSTRING TMP$3496$2;
		FBSTRING TMP$3497$2;
		FBSTRING TMP$3499$2;
		FBSTRING TMP$3500$2;
		FBSTRING TMP$3501$2;
		FBSTRING TMP$3502$2;
		FBSTRING TMP$3503$2;
		FBSTRING TMP$3504$2;
		FBSTRING TMP$3505$2;
		FBSTRING TMP$3511$2;
		char* vr$18 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$18, 0, 0 );
		__builtin_memset( &TMP$3477$2, 0, 12 );
		__builtin_memset( &TMP$3476$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3476$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$3477$2, -1, (void*)vr$24, -1, 0 );
		HWRITEASM64( &TMP$3477$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3477$2 );
		if( (-(BIAS$1 > 2147483647ull) & -(BIAS$1 < 18446744071562067968ull)) == 0 ) goto label$2691;
		{
			FBSTRING TMP$3478$3;
			FBSTRING TMP$3479$3;
			FBSTRING TMP$3480$3;
			FBSTRING TMP$3481$3;
			FBSTRING TMP$3483$3;
			FBSTRING TMP$3484$3;
			int32 vr$31 = REG_FINDFREE( 999998, -1 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$31 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$3481$3, 0, 12 );
			FBSTRING* vr$35 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3478$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$3478$3, (void*)"mov ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$3479$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$3479$3, (void*)vr$39, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$3480$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$3480$3, (void*)vr$42, -1, (void*)vr$35, -1 );
			fb_StrAssign( (void*)&TMP$3481$3, -1, (void*)vr$45, -1, 0 );
			HWRITEASM64( &TMP$3481$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3481$3 );
			__builtin_memset( &TMP$3484$3, 0, 12 );
			__builtin_memset( &TMP$3483$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$3483$3, (void*)"sub rax, ", 10, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$3484$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$3484$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3484$3 );
		}
		goto label$2690;
		label$2691:;
		{
			FBSTRING TMP$3485$3;
			FBSTRING TMP$3486$3;
			__builtin_memset( &TMP$3486$3, 0, 12 );
			FBSTRING* vr$58 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3485$3, 0, 12 );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$3485$3, (void*)"sub rax, ", 10, (void*)vr$58, -1 );
			fb_StrAssign( (void*)&TMP$3486$3, -1, (void*)vr$61, -1, 0 );
			HWRITEASM64( &TMP$3486$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3486$3 );
		}
		label$2690:;
		__builtin_memset( &TMP$3489$2, 0, 12 );
		FBSTRING* vr$66 = fb_ULongintToStr( SPAN$1 );
		__builtin_memset( &TMP$3488$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$3488$2, (void*)"cmp rax, ", 10, (void*)vr$66, -1 );
		fb_StrAssign( (void*)&TMP$3489$2, -1, (void*)vr$69, -1, 0 );
		HWRITEASM64( &TMP$3489$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3489$2 );
		__builtin_memset( &TMP$3491$2, 0, 12 );
		char* vr$74 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3490$2, 0, 12 );
		FBSTRING* vr$77 = fb_StrConcat( &TMP$3490$2, (void*)"ja ", 4, (void*)vr$74, 0 );
		fb_StrAssign( (void*)&TMP$3491$2, -1, (void*)vr$77, -1, 0 );
		HWRITEASM64( &TMP$3491$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3491$2 );
		int32 vr$81 = REG_FINDFREE( 999997, -1 );
		REGTEMPO$1 = vr$81;
		*(int32*)((int32)(int32*)REGHANDLE$ + (REGTEMPO$1 << (2 & 31))) = -2;
		__builtin_memset( &TMP$3497$2, 0, 12 );
		__builtin_memset( &TMP$3493$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$3493$2, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (REGTEMPO$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$3494$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$3494$2, (void*)vr$88, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$3495$2, 0, 12 );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$3495$2, (void*)vr$91, -1, (void*)&LNAME$1, -1 );
		__builtin_memset( &TMP$3496$2, 0, 12 );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$3496$2, (void*)vr$94, -1, (void*)"[rip]", 6 );
		fb_StrAssign( (void*)&TMP$3497$2, -1, (void*)vr$97, -1, 0 );
		HWRITEASM64( &TMP$3497$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3497$2 );
		__builtin_memset( &TMP$3501$2, 0, 12 );
		__builtin_memset( &TMP$3499$2, 0, 12 );
		FBSTRING* vr$105 = fb_StrConcat( &TMP$3499$2, (void*)"jmp QWORD PTR [rax*8+", 22, *(void**)((int32)(char**)REGSTRQ$ + (REGTEMPO$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$3500$2, 0, 12 );
		FBSTRING* vr$108 = fb_StrConcat( &TMP$3500$2, (void*)vr$105, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$3501$2, -1, (void*)vr$108, -1, 0 );
		HWRITEASM64( &TMP$3501$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3501$2 );
		__builtin_memset( &TMP$3502$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3502$2, -1, (void*)".data", 6, 0 );
		ASM_SECTION( &TMP$3502$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3502$2 );
		__builtin_memset( &TMP$3503$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3503$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$3503$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3503$2 );
		__builtin_memset( &TMP$3505$2, 0, 12 );
		__builtin_memset( &TMP$3504$2, 0, 12 );
		FBSTRING* vr$124 = fb_StrConcat( &TMP$3504$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3505$2, -1, (void*)vr$124, -1, 0 );
		HWRITEASM64( &TMP$3505$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3505$2 );
		{
			int32 ISEL$3;
			ISEL$3 = 0;
			int32 TMP$3506$3;
			TMP$3506$3 = (int32)SPAN$1;
			goto label$2692;
			label$2695:;
			{
				if( (uint64)ISEL$3 != *(uint64*)((uint8*)VALUES$1 + (IDX$1 << (3 & 31))) ) goto label$2697;
				{
					FBSTRING TMP$3507$5;
					FBSTRING TMP$3508$5;
					__builtin_memset( &TMP$3508$5, 0, 12 );
					char* vr$135 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (IDX$1 << (2 & 31))) );
					__builtin_memset( &TMP$3507$5, 0, 12 );
					FBSTRING* vr$138 = fb_StrConcat( &TMP$3507$5, (void*)".quad ", 7, (void*)vr$135, 0 );
					fb_StrAssign( (void*)&TMP$3508$5, -1, (void*)vr$138, -1, 0 );
					HWRITEASM64( &TMP$3508$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3508$5 );
					IDX$1 = IDX$1 + 1;
				}
				goto label$2696;
				label$2697:;
				{
					FBSTRING TMP$3509$5;
					FBSTRING TMP$3510$5;
					__builtin_memset( &TMP$3510$5, 0, 12 );
					char* vr$144 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
					__builtin_memset( &TMP$3509$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$3509$5, (void*)".quad ", 7, (void*)vr$144, 0 );
					fb_StrAssign( (void*)&TMP$3510$5, -1, (void*)vr$147, -1, 0 );
					HWRITEASM64( &TMP$3510$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3510$5 );
				}
				label$2696:;
			}
			label$2693:;
			ISEL$3 = ISEL$3 + 1;
			label$2692:;
			if( ISEL$3 <= TMP$3506$3 ) goto label$2695;
			label$2694:;
		}
		__builtin_memset( &TMP$3511$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3511$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3511$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3511$2 );
	}
	label$2688:;
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$2687:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$2698:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING INSTRUC$1;
	fb_StrInit( (void*)&INSTRUC$1, -1, (void*)"mov ", 5, 0 );
	char* REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 4 );
	int32 DESTTYP$1;
	DESTTYP$1 = 0;
	int32 SRCTYP$1;
	SRCTYP$1 = 0;
	int32 REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	{
		if( OP$1 != 107 ) goto label$2701;
		label$2702:;
		{
			if( *(int32*)V1$1 != 4 ) goto label$2704;
			{
				int32 vr$10 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				REGSRC$1 = vr$10;
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				SRCTYP$1 = 1;
			}
			goto label$2703;
			label$2704:;
			if( *(int32*)V1$1 != 1 ) goto label$2705;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2707;
				{
					FBSTRING TMP$3512$5;
					FBSTRING TMP$3513$5;
					FBSTRING TMP$3514$5;
					FBSTRING* vr$24 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					char* vr$26 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3512$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$3512$5, (void*)vr$26, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3513$5, 0, 12 );
					FBSTRING* vr$32 = fb_StrConcat( &TMP$3513$5, (void*)vr$29, -1, (void*)vr$24, -1 );
					__builtin_memset( &TMP$3514$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$3514$5, (void*)vr$32, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$35, -1, 0 );
				}
				goto label$2706;
				label$2707:;
				{
					FBSTRING TMP$3515$5;
					FBSTRING* vr$38 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3515$5, 0, 12 );
					FBSTRING* vr$41 = fb_StrConcat( &TMP$3515$5, (void*)vr$38, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$41, -1, 0 );
				}
				label$2706:;
				SRCTYP$1 = 0;
			}
			goto label$2703;
			label$2705:;
			if( *(int32*)V1$1 != 5 ) goto label$2708;
			{
				FBSTRING TMP$3516$4;
				FBSTRING TMP$3517$4;
				FBSTRING TMP$3518$4;
				FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				char* vr$47 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3516$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$3516$4, (void*)vr$47, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3517$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$3517$4, (void*)vr$50, -1, (void*)vr$45, -1 );
				__builtin_memset( &TMP$3518$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$3518$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$56, -1, 0 );
				SRCTYP$1 = 1;
				fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"lea ", 5, 0 );
			}
			goto label$2703;
			label$2708:;
			{
				FBSTRING TMP$3519$4;
				FBSTRING TMP$3522$4;
				FBSTRING TMP$3523$4;
				__builtin_memset( &TMP$3519$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3519$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3519$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3519$4 );
				__builtin_memset( &TMP$3522$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3522$4, -1, (void*)"FOUND AN ERROR : Memclear v1 not a reg nor a var", 49, 0 );
				HWRITEASM64( &TMP$3522$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3522$4 );
				__builtin_memset( &TMP$3523$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3523$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3523$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3523$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2699;
			}
			label$2703:;
			if( *(int32*)V2$1 != 4 ) goto label$2710;
			{
				FBSTRING TMP$3524$4;
				FBSTRING TMP$3525$4;
				FBSTRING TMP$3526$4;
				FBSTRING TMP$3527$4;
				FBSTRING TMP$3529$4;
				FBSTRING TMP$3530$4;
				FBSTRING TMP$3531$4;
				FBSTRING TMP$3532$4;
				FBSTRING TMP$3533$4;
				FBSTRING TMP$3534$4;
				FBSTRING TMP$3536$4;
				FBSTRING TMP$3538$4;
				FBSTRING TMP$3539$4;
				FBSTRING TMP$3540$4;
				FBSTRING TMP$3541$4;
				FBSTRING TMP$3542$4;
				FBSTRING TMP$3543$4;
				FBSTRING TMP$3544$4;
				int32 vr$79 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$79 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3527$4, 0, 12 );
				__builtin_memset( &TMP$3524$4, 0, 12 );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$3524$4, (void*)"test ", 6, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$3525$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$3525$4, (void*)vr$87, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3526$4, 0, 12 );
				FBSTRING* vr$93 = fb_StrConcat( &TMP$3526$4, (void*)vr$90, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3527$4, -1, (void*)vr$93, -1, 0 );
				HWRITEASM64( &TMP$3527$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3527$4 );
				char* vr$97 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$97, 0, 0 );
				__builtin_memset( &TMP$3530$4, 0, 12 );
				__builtin_memset( &TMP$3529$4, 0, 12 );
				FBSTRING* vr$103 = fb_StrConcat( &TMP$3529$4, (void*)"jz ", 4, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$3530$4, -1, (void*)vr$103, -1, 0 );
				HWRITEASM64( &TMP$3530$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3530$4 );
				__builtin_memset( &TMP$3532$4, 0, 12 );
				__builtin_memset( &TMP$3531$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3531$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$3532$4, -1, (void*)vr$111, -1, 0 );
				HWRITEASM64( &TMP$3532$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3532$4 );
				char* vr$115 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$115, 0, 0 );
				__builtin_memset( &TMP$3534$4, 0, 12 );
				__builtin_memset( &TMP$3533$4, 0, 12 );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$3533$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3534$4, -1, (void*)vr$121, -1, 0 );
				HWRITEASM64( &TMP$3534$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3534$4 );
				__builtin_memset( &TMP$3536$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3536$4, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
				HWRITEASM64( &TMP$3536$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3536$4 );
				__builtin_memset( &TMP$3538$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3538$4, -1, (void*)"inc rax", 8, 0 );
				HWRITEASM64( &TMP$3538$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3538$4 );
				__builtin_memset( &TMP$3540$4, 0, 12 );
				__builtin_memset( &TMP$3539$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$3539$4, (void*)"dec ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3540$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$3540$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3540$4 );
				__builtin_memset( &TMP$3542$4, 0, 12 );
				__builtin_memset( &TMP$3541$4, 0, 12 );
				FBSTRING* vr$145 = fb_StrConcat( &TMP$3541$4, (void*)"jnz ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$3542$4, -1, (void*)vr$145, -1, 0 );
				HWRITEASM64( &TMP$3542$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3542$4 );
				__builtin_memset( &TMP$3544$4, 0, 12 );
				__builtin_memset( &TMP$3543$4, 0, 12 );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$3543$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3544$4, -1, (void*)vr$153, -1, 0 );
				HWRITEASM64( &TMP$3544$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3544$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2699;
			}
			label$2710:;
			label$2709:;
			if( *(int32*)V2$1 == 0 ) goto label$2712;
			{
				FBSTRING TMP$3545$4;
				FBSTRING TMP$3548$4;
				FBSTRING TMP$3549$4;
				__builtin_memset( &TMP$3545$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3545$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3545$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3545$4 );
				__builtin_memset( &TMP$3548$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3548$4, -1, (void*)"FOUND AN ERROR : Memclear without an immediat as size", 54, 0 );
				HWRITEASM64( &TMP$3548$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3548$4 );
				__builtin_memset( &TMP$3549$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3549$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3549$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3549$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2699;
			}
			label$2712:;
			label$2711:;
			if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2714;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2699;
				label$2714:;
			}
			{
				int64 TMP$3550$4;
				TMP$3550$4 = *(int64*)((uint8*)V2$1 + 24);
				if( TMP$3550$4 > 8ll ) goto label$2717;
				label$2718:;
				if( TMP$3550$4 == 3ll ) goto label$2717;
				label$2719:;
				if( TMP$3550$4 == 5ll ) goto label$2717;
				label$2720:;
				if( TMP$3550$4 == 6ll ) goto label$2717;
				label$2721:;
				if( TMP$3550$4 != 7ll ) goto label$2716;
				label$2717:;
				{
					MEMCLEAR( (int32)*(int64*)((uint8*)V2$1 + 24), &OP1$1, SRCTYP$1 );
				}
				goto label$2715;
				label$2716:;
				if( TMP$3550$4 != 1ll ) goto label$2722;
				label$2723:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2725;
					{
						FBSTRING TMP$3552$6;
						FBSTRING TMP$3553$6;
						FBSTRING TMP$3554$6;
						__builtin_memset( &TMP$3554$6, 0, 12 );
						__builtin_memset( &TMP$3552$6, 0, 12 );
						FBSTRING* vr$198 = fb_StrConcat( &TMP$3552$6, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3553$6, 0, 12 );
						FBSTRING* vr$201 = fb_StrConcat( &TMP$3553$6, (void*)vr$198, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3554$6, -1, (void*)vr$201, -1, 0 );
						HWRITEASM64( &TMP$3554$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3554$6 );
					}
					goto label$2724;
					label$2725:;
					{
						FBSTRING TMP$3556$6;
						FBSTRING TMP$3557$6;
						FBSTRING TMP$3558$6;
						FBSTRING TMP$3559$6;
						__builtin_memset( &TMP$3558$6, 0, 12 );
						__builtin_memset( &TMP$3556$6, 0, 12 );
						FBSTRING* vr$210 = fb_StrConcat( &TMP$3556$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3557$6, 0, 12 );
						FBSTRING* vr$213 = fb_StrConcat( &TMP$3557$6, (void*)vr$210, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3558$6, -1, (void*)vr$213, -1, 0 );
						HWRITEASM64( &TMP$3558$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3558$6 );
						__builtin_memset( &TMP$3559$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3559$6, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3559$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3559$6 );
					}
					label$2724:;
				}
				goto label$2715;
				label$2722:;
				if( TMP$3550$4 != 2ll ) goto label$2726;
				label$2727:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2729;
					{
						FBSTRING TMP$3561$6;
						FBSTRING TMP$3562$6;
						FBSTRING TMP$3563$6;
						__builtin_memset( &TMP$3563$6, 0, 12 );
						__builtin_memset( &TMP$3561$6, 0, 12 );
						FBSTRING* vr$226 = fb_StrConcat( &TMP$3561$6, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3562$6, 0, 12 );
						FBSTRING* vr$229 = fb_StrConcat( &TMP$3562$6, (void*)vr$226, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3563$6, -1, (void*)vr$229, -1, 0 );
						HWRITEASM64( &TMP$3563$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3563$6 );
					}
					goto label$2728;
					label$2729:;
					{
						FBSTRING TMP$3564$6;
						FBSTRING TMP$3565$6;
						FBSTRING TMP$3566$6;
						FBSTRING TMP$3568$6;
						__builtin_memset( &TMP$3566$6, 0, 12 );
						__builtin_memset( &TMP$3564$6, 0, 12 );
						FBSTRING* vr$238 = fb_StrConcat( &TMP$3564$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3565$6, 0, 12 );
						FBSTRING* vr$241 = fb_StrConcat( &TMP$3565$6, (void*)vr$238, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3566$6, -1, (void*)vr$241, -1, 0 );
						HWRITEASM64( &TMP$3566$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3566$6 );
						__builtin_memset( &TMP$3568$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3568$6, -1, (void*)"mov WORD PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3568$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3568$6 );
					}
					label$2728:;
				}
				goto label$2715;
				label$2726:;
				if( TMP$3550$4 != 4ll ) goto label$2730;
				label$2731:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2733;
					{
						FBSTRING TMP$3570$6;
						FBSTRING TMP$3571$6;
						FBSTRING TMP$3572$6;
						__builtin_memset( &TMP$3572$6, 0, 12 );
						__builtin_memset( &TMP$3570$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$3570$6, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3571$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3571$6, (void*)vr$254, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3572$6, -1, (void*)vr$257, -1, 0 );
						HWRITEASM64( &TMP$3572$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3572$6 );
					}
					goto label$2732;
					label$2733:;
					{
						FBSTRING TMP$3573$6;
						FBSTRING TMP$3574$6;
						FBSTRING TMP$3575$6;
						FBSTRING TMP$3577$6;
						__builtin_memset( &TMP$3575$6, 0, 12 );
						__builtin_memset( &TMP$3573$6, 0, 12 );
						FBSTRING* vr$266 = fb_StrConcat( &TMP$3573$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3574$6, 0, 12 );
						FBSTRING* vr$269 = fb_StrConcat( &TMP$3574$6, (void*)vr$266, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3575$6, -1, (void*)vr$269, -1, 0 );
						HWRITEASM64( &TMP$3575$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3575$6 );
						__builtin_memset( &TMP$3577$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3577$6, -1, (void*)"mov DWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3577$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3577$6 );
					}
					label$2732:;
				}
				goto label$2715;
				label$2730:;
				if( TMP$3550$4 != 8ll ) goto label$2734;
				label$2735:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2737;
					{
						FBSTRING TMP$3578$6;
						FBSTRING TMP$3579$6;
						FBSTRING TMP$3580$6;
						__builtin_memset( &TMP$3580$6, 0, 12 );
						__builtin_memset( &TMP$3578$6, 0, 12 );
						FBSTRING* vr$282 = fb_StrConcat( &TMP$3578$6, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3579$6, 0, 12 );
						FBSTRING* vr$285 = fb_StrConcat( &TMP$3579$6, (void*)vr$282, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3580$6, -1, (void*)vr$285, -1, 0 );
						HWRITEASM64( &TMP$3580$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3580$6 );
					}
					goto label$2736;
					label$2737:;
					{
						FBSTRING TMP$3581$6;
						FBSTRING TMP$3582$6;
						FBSTRING TMP$3583$6;
						FBSTRING TMP$3585$6;
						__builtin_memset( &TMP$3583$6, 0, 12 );
						__builtin_memset( &TMP$3581$6, 0, 12 );
						FBSTRING* vr$294 = fb_StrConcat( &TMP$3581$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3582$6, 0, 12 );
						FBSTRING* vr$297 = fb_StrConcat( &TMP$3582$6, (void*)vr$294, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3583$6, -1, (void*)vr$297, -1, 0 );
						HWRITEASM64( &TMP$3583$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3583$6 );
						__builtin_memset( &TMP$3585$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3585$6, -1, (void*)"mov QWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3585$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3585$6 );
					}
					label$2736:;
				}
				label$2734:;
				label$2715:;
			}
		}
		goto label$2700;
		label$2701:;
		if( OP$1 != 105 ) goto label$2738;
		label$2739:;
		{
			if( BYTES$1 != 0ll ) goto label$2741;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2699;
			}
			label$2741:;
			label$2740:;
			{
				$15IRVREGTYPE_ENUM TMP$3586$4;
				TMP$3586$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$3586$4 != 2 ) goto label$2743;
				label$2744:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2742;
				label$2743:;
				if( TMP$3586$4 != 4 ) goto label$2745;
				label$2746:;
				{
					int32 vr$315 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$315 << (2 & 31))), 0, 0 );
				}
				goto label$2742;
				label$2745:;
				if( TMP$3586$4 != 1 ) goto label$2747;
				label$2748:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2750;
					{
						FBSTRING TMP$3587$6;
						FBSTRING TMP$3588$6;
						FBSTRING TMP$3589$6;
						FBSTRING* vr$328 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						char* vr$330 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$3587$6, 0, 12 );
						FBSTRING* vr$333 = fb_StrConcat( &TMP$3587$6, (void*)vr$330, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3588$6, 0, 12 );
						FBSTRING* vr$336 = fb_StrConcat( &TMP$3588$6, (void*)vr$333, -1, (void*)vr$328, -1 );
						__builtin_memset( &TMP$3589$6, 0, 12 );
						FBSTRING* vr$339 = fb_StrConcat( &TMP$3589$6, (void*)vr$336, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$339, -1, 0 );
					}
					goto label$2749;
					label$2750:;
					{
						FBSTRING TMP$3590$6;
						FBSTRING* vr$342 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$3590$6, 0, 12 );
						FBSTRING* vr$345 = fb_StrConcat( &TMP$3590$6, (void*)vr$342, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$345, -1, 0 );
					}
					label$2749:;
				}
				goto label$2742;
				label$2747:;
				if( TMP$3586$4 != 3 ) goto label$2751;
				label$2752:;
				{
					FBSTRING TMP$3591$5;
					FBSTRING TMP$3592$5;
					FBSTRING TMP$3593$5;
					int32 vr$349 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$352 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3591$5, 0, 12 );
					FBSTRING* vr$355 = fb_StrConcat( &TMP$3591$5, (void*)vr$352, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3592$5, 0, 12 );
					FBSTRING* vr$358 = fb_StrConcat( &TMP$3592$5, (void*)vr$355, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$349 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3593$5, 0, 12 );
					FBSTRING* vr$361 = fb_StrConcat( &TMP$3593$5, (void*)vr$358, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$361, -1, 0 );
				}
				goto label$2742;
				label$2751:;
				if( TMP$3586$4 != 5 ) goto label$2753;
				label$2754:;
				{
					FBSTRING TMP$3594$5;
					FBSTRING TMP$3595$5;
					FBSTRING TMP$3596$5;
					FBSTRING* vr$364 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					char* vr$366 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3594$5, 0, 12 );
					FBSTRING* vr$369 = fb_StrConcat( &TMP$3594$5, (void*)vr$366, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3595$5, 0, 12 );
					FBSTRING* vr$372 = fb_StrConcat( &TMP$3595$5, (void*)vr$369, -1, (void*)vr$364, -1 );
					__builtin_memset( &TMP$3596$5, 0, 12 );
					FBSTRING* vr$375 = fb_StrConcat( &TMP$3596$5, (void*)vr$372, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$375, -1, 0 );
					DESTTYP$1 = 1;
				}
				goto label$2742;
				label$2753:;
				if( TMP$3586$4 != 0 ) goto label$2755;
				label$2756:;
				{
					FBSTRING TMP$3597$5;
					FBSTRING TMP$3598$5;
					FBSTRING* vr$378 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
					__builtin_memset( &TMP$3597$5, 0, 12 );
					FBSTRING* vr$381 = fb_StrConcat( &TMP$3597$5, (void*)"[", 2, (void*)vr$378, -1 );
					__builtin_memset( &TMP$3598$5, 0, 12 );
					FBSTRING* vr$384 = fb_StrConcat( &TMP$3598$5, (void*)vr$381, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$384, -1, 0 );
				}
				goto label$2742;
				label$2755:;
				{
					FBSTRING TMP$3599$5;
					FBSTRING TMP$3602$5;
					FBSTRING TMP$3603$5;
					__builtin_memset( &TMP$3599$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3599$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3599$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3599$5 );
					__builtin_memset( &TMP$3602$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3602$5, -1, (void*)"FOUND AN ERROR : memcopy 01 type not handled", 45, 0 );
					HWRITEASM64( &TMP$3602$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3602$5 );
					__builtin_memset( &TMP$3603$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3603$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3603$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3603$5 );
				}
				label$2757:;
				label$2742:;
			}
			{
				$15IRVREGTYPE_ENUM TMP$3604$4;
				TMP$3604$4 = *($15IRVREGTYPE_ENUM*)V2$1;
				if( TMP$3604$4 != 4 ) goto label$2759;
				label$2760:;
				{
					int32 vr$400 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					REGSRC$1 = vr$400;
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				}
				goto label$2758;
				label$2759:;
				if( TMP$3604$4 != 1 ) goto label$2761;
				label$2762:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2764;
					{
						FBSTRING TMP$3605$6;
						FBSTRING TMP$3606$6;
						FBSTRING TMP$3607$6;
						FBSTRING* vr$413 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						char* vr$415 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$3605$6, 0, 12 );
						FBSTRING* vr$418 = fb_StrConcat( &TMP$3605$6, (void*)vr$415, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3606$6, 0, 12 );
						FBSTRING* vr$421 = fb_StrConcat( &TMP$3606$6, (void*)vr$418, -1, (void*)vr$413, -1 );
						__builtin_memset( &TMP$3607$6, 0, 12 );
						FBSTRING* vr$424 = fb_StrConcat( &TMP$3607$6, (void*)vr$421, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$424, -1, 0 );
					}
					goto label$2763;
					label$2764:;
					{
						FBSTRING TMP$3608$6;
						FBSTRING* vr$427 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$3608$6, 0, 12 );
						FBSTRING* vr$430 = fb_StrConcat( &TMP$3608$6, (void*)vr$427, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$430, -1, 0 );
					}
					label$2763:;
				}
				goto label$2758;
				label$2761:;
				if( TMP$3604$4 != 5 ) goto label$2765;
				label$2766:;
				{
					FBSTRING TMP$3609$5;
					FBSTRING TMP$3610$5;
					FBSTRING TMP$3611$5;
					FBSTRING* vr$433 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					char* vr$435 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$3609$5, 0, 12 );
					FBSTRING* vr$438 = fb_StrConcat( &TMP$3609$5, (void*)vr$435, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3610$5, 0, 12 );
					FBSTRING* vr$441 = fb_StrConcat( &TMP$3610$5, (void*)vr$438, -1, (void*)vr$433, -1 );
					__builtin_memset( &TMP$3611$5, 0, 12 );
					FBSTRING* vr$444 = fb_StrConcat( &TMP$3611$5, (void*)vr$441, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$444, -1, 0 );
					SRCTYP$1 = 1;
				}
				goto label$2758;
				label$2765:;
				if( TMP$3604$4 != 3 ) goto label$2767;
				label$2768:;
				{
					FBSTRING TMP$3612$5;
					FBSTRING TMP$3613$5;
					FBSTRING TMP$3614$5;
					int32 vr$448 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
					FBSTRING* vr$451 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$3612$5, 0, 12 );
					FBSTRING* vr$454 = fb_StrConcat( &TMP$3612$5, (void*)vr$451, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3613$5, 0, 12 );
					FBSTRING* vr$457 = fb_StrConcat( &TMP$3613$5, (void*)vr$454, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$448 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3614$5, 0, 12 );
					FBSTRING* vr$460 = fb_StrConcat( &TMP$3614$5, (void*)vr$457, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$460, -1, 0 );
				}
				goto label$2758;
				label$2767:;
				{
					FBSTRING TMP$3615$5;
					FBSTRING TMP$3618$5;
					FBSTRING TMP$3619$5;
					__builtin_memset( &TMP$3615$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3615$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3615$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3615$5 );
					__builtin_memset( &TMP$3618$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3618$5, -1, (void*)"FOUND AN ERROR : Memcopy v2 not a reg nor a var nor ofs nor ptr", 64, 0 );
					HWRITEASM64( &TMP$3618$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3618$5 );
					__builtin_memset( &TMP$3619$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3619$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3619$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3619$5 );
				}
				label$2769:;
				label$2758:;
			}
			int32 vr$475 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$475 == 0 ) goto label$2771;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2771:;
			}
			{
				if( BYTES$1 > 8ll ) goto label$2774;
				label$2775:;
				if( BYTES$1 == 3ll ) goto label$2774;
				label$2776:;
				if( BYTES$1 == 5ll ) goto label$2774;
				label$2777:;
				if( BYTES$1 == 6ll ) goto label$2774;
				label$2778:;
				if( BYTES$1 != 7ll ) goto label$2773;
				label$2774:;
				{
					MEMCOPY( (int32)BYTES$1, &OP2$1, &OP1$1, SRCTYP$1, DESTTYP$1 );
				}
				goto label$2772;
				label$2773:;
				{
					if( *(int32*)V2$1 != 1 ) goto label$2781;
					{
						FBSTRING TMP$3620$6;
						FBSTRING TMP$3621$6;
						FBSTRING TMP$3622$6;
						FBSTRING TMP$3623$6;
						__builtin_memset( &TMP$3621$6, 0, 12 );
						__builtin_memset( &TMP$3620$6, 0, 12 );
						FBSTRING* vr$485 = fb_StrConcat( &TMP$3620$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3621$6, -1, (void*)vr$485, -1, 0 );
						HWRITEASM64( &TMP$3621$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3621$6 );
						__builtin_memset( &TMP$3622$6, 0, 12 );
						FBSTRING* vr$491 = fb_StrConcat( &TMP$3622$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3623$6, 0, 12 );
						FBSTRING* vr$494 = fb_StrConcat( &TMP$3623$6, (void*)vr$491, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$494, -1, 0 );
					}
					goto label$2780;
					label$2781:;
					if( *(int32*)V2$1 == 4 ) goto label$2782;
					{
						FBSTRING TMP$3624$6;
						FBSTRING TMP$3625$6;
						__builtin_memset( &TMP$3625$6, 0, 12 );
						__builtin_memset( &TMP$3624$6, 0, 12 );
						FBSTRING* vr$501 = fb_StrConcat( &TMP$3624$6, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3625$6, -1, (void*)vr$501, -1, 0 );
						HWRITEASM64( &TMP$3625$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3625$6 );
						REGSRC$1 = 0;
					}
					label$2782:;
					label$2780:;
					if( *(int32*)V1$1 != 1 ) goto label$2784;
					{
						FBSTRING TMP$3626$6;
						FBSTRING TMP$3627$6;
						FBSTRING TMP$3628$6;
						FBSTRING TMP$3629$6;
						FBSTRING TMP$3630$6;
						FBSTRING TMP$3631$6;
						char* vr$506 = REG_TEMPO(  );
						REGTEMPO$1 = vr$506;
						__builtin_memset( &TMP$3629$6, 0, 12 );
						__builtin_memset( &TMP$3626$6, 0, 12 );
						FBSTRING* vr$511 = fb_StrConcat( &TMP$3626$6, (void*)"mov ", 5, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3627$6, 0, 12 );
						FBSTRING* vr$514 = fb_StrConcat( &TMP$3627$6, (void*)vr$511, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3628$6, 0, 12 );
						FBSTRING* vr$517 = fb_StrConcat( &TMP$3628$6, (void*)vr$514, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3629$6, -1, (void*)vr$517, -1, 0 );
						HWRITEASM64( &TMP$3629$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3629$6 );
						__builtin_memset( &TMP$3630$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$3630$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3631$6, 0, 12 );
						FBSTRING* vr$526 = fb_StrConcat( &TMP$3631$6, (void*)vr$523, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$526, -1, 0 );
					}
					label$2784:;
					label$2783:;
					{
						if( BYTES$1 != 1ll ) goto label$2786;
						label$2787:;
						{
							FBSTRING TMP$3633$7;
							FBSTRING TMP$3634$7;
							FBSTRING TMP$3635$7;
							__builtin_memset( &TMP$3635$7, 0, 12 );
							__builtin_memset( &TMP$3633$7, 0, 12 );
							FBSTRING* vr$532 = fb_StrConcat( &TMP$3633$7, (void*)"mov al, [", 10, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3634$7, 0, 12 );
							FBSTRING* vr$535 = fb_StrConcat( &TMP$3634$7, (void*)vr$532, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3635$7, -1, (void*)vr$535, -1, 0 );
							HWRITEASM64( &TMP$3635$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3635$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2789;
							{
								FBSTRING TMP$3636$8;
								FBSTRING TMP$3637$8;
								FBSTRING TMP$3638$8;
								__builtin_memset( &TMP$3638$8, 0, 12 );
								__builtin_memset( &TMP$3636$8, 0, 12 );
								FBSTRING* vr$544 = fb_StrConcat( &TMP$3636$8, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3637$8, 0, 12 );
								FBSTRING* vr$547 = fb_StrConcat( &TMP$3637$8, (void*)vr$544, -1, (void*)"], al", 6 );
								fb_StrAssign( (void*)&TMP$3638$8, -1, (void*)vr$547, -1, 0 );
								HWRITEASM64( &TMP$3638$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3638$8 );
							}
							goto label$2788;
							label$2789:;
							{
								FBSTRING TMP$3639$8;
								FBSTRING TMP$3640$8;
								FBSTRING TMP$3641$8;
								__builtin_memset( &TMP$3641$8, 0, 12 );
								__builtin_memset( &TMP$3639$8, 0, 12 );
								FBSTRING* vr$555 = fb_StrConcat( &TMP$3639$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3640$8, 0, 12 );
								FBSTRING* vr$558 = fb_StrConcat( &TMP$3640$8, (void*)vr$555, -1, (void*)", al", 5 );
								fb_StrAssign( (void*)&TMP$3641$8, -1, (void*)vr$558, -1, 0 );
								HWRITEASM64( &TMP$3641$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3641$8 );
							}
							label$2788:;
						}
						goto label$2785;
						label$2786:;
						if( BYTES$1 != 2ll ) goto label$2790;
						label$2791:;
						{
							FBSTRING TMP$3643$7;
							FBSTRING TMP$3644$7;
							FBSTRING TMP$3645$7;
							__builtin_memset( &TMP$3645$7, 0, 12 );
							__builtin_memset( &TMP$3643$7, 0, 12 );
							FBSTRING* vr$566 = fb_StrConcat( &TMP$3643$7, (void*)"mov ax, [", 10, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3644$7, 0, 12 );
							FBSTRING* vr$569 = fb_StrConcat( &TMP$3644$7, (void*)vr$566, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3645$7, -1, (void*)vr$569, -1, 0 );
							HWRITEASM64( &TMP$3645$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3645$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2793;
							{
								FBSTRING TMP$3646$8;
								FBSTRING TMP$3647$8;
								FBSTRING TMP$3648$8;
								__builtin_memset( &TMP$3648$8, 0, 12 );
								__builtin_memset( &TMP$3646$8, 0, 12 );
								FBSTRING* vr$578 = fb_StrConcat( &TMP$3646$8, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3647$8, 0, 12 );
								FBSTRING* vr$581 = fb_StrConcat( &TMP$3647$8, (void*)vr$578, -1, (void*)"], ax", 6 );
								fb_StrAssign( (void*)&TMP$3648$8, -1, (void*)vr$581, -1, 0 );
								HWRITEASM64( &TMP$3648$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3648$8 );
							}
							goto label$2792;
							label$2793:;
							{
								FBSTRING TMP$3649$8;
								FBSTRING TMP$3650$8;
								FBSTRING TMP$3651$8;
								__builtin_memset( &TMP$3651$8, 0, 12 );
								__builtin_memset( &TMP$3649$8, 0, 12 );
								FBSTRING* vr$589 = fb_StrConcat( &TMP$3649$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3650$8, 0, 12 );
								FBSTRING* vr$592 = fb_StrConcat( &TMP$3650$8, (void*)vr$589, -1, (void*)", ax", 5 );
								fb_StrAssign( (void*)&TMP$3651$8, -1, (void*)vr$592, -1, 0 );
								HWRITEASM64( &TMP$3651$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3651$8 );
							}
							label$2792:;
						}
						goto label$2785;
						label$2790:;
						if( BYTES$1 != 4ll ) goto label$2794;
						label$2795:;
						{
							FBSTRING TMP$3653$7;
							FBSTRING TMP$3654$7;
							FBSTRING TMP$3655$7;
							__builtin_memset( &TMP$3655$7, 0, 12 );
							__builtin_memset( &TMP$3653$7, 0, 12 );
							FBSTRING* vr$600 = fb_StrConcat( &TMP$3653$7, (void*)"mov eax, [", 11, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3654$7, 0, 12 );
							FBSTRING* vr$603 = fb_StrConcat( &TMP$3654$7, (void*)vr$600, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3655$7, -1, (void*)vr$603, -1, 0 );
							HWRITEASM64( &TMP$3655$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3655$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2797;
							{
								FBSTRING TMP$3656$8;
								FBSTRING TMP$3657$8;
								FBSTRING TMP$3658$8;
								__builtin_memset( &TMP$3658$8, 0, 12 );
								__builtin_memset( &TMP$3656$8, 0, 12 );
								FBSTRING* vr$612 = fb_StrConcat( &TMP$3656$8, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3657$8, 0, 12 );
								FBSTRING* vr$615 = fb_StrConcat( &TMP$3657$8, (void*)vr$612, -1, (void*)"], eax", 7 );
								fb_StrAssign( (void*)&TMP$3658$8, -1, (void*)vr$615, -1, 0 );
								HWRITEASM64( &TMP$3658$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3658$8 );
							}
							goto label$2796;
							label$2797:;
							{
								FBSTRING TMP$3659$8;
								FBSTRING TMP$3660$8;
								FBSTRING TMP$3661$8;
								__builtin_memset( &TMP$3661$8, 0, 12 );
								__builtin_memset( &TMP$3659$8, 0, 12 );
								FBSTRING* vr$623 = fb_StrConcat( &TMP$3659$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3660$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3660$8, (void*)vr$623, -1, (void*)", eax", 6 );
								fb_StrAssign( (void*)&TMP$3661$8, -1, (void*)vr$626, -1, 0 );
								HWRITEASM64( &TMP$3661$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3661$8 );
							}
							label$2796:;
						}
						goto label$2785;
						label$2794:;
						if( BYTES$1 != 8ll ) goto label$2798;
						label$2799:;
						{
							FBSTRING TMP$3662$7;
							FBSTRING TMP$3663$7;
							FBSTRING TMP$3664$7;
							__builtin_memset( &TMP$3664$7, 0, 12 );
							__builtin_memset( &TMP$3662$7, 0, 12 );
							FBSTRING* vr$634 = fb_StrConcat( &TMP$3662$7, (void*)"mov rax, [", 11, *(void**)((int32)(char**)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3663$7, 0, 12 );
							FBSTRING* vr$637 = fb_StrConcat( &TMP$3663$7, (void*)vr$634, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3664$7, -1, (void*)vr$637, -1, 0 );
							HWRITEASM64( &TMP$3664$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3664$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2801;
							{
								FBSTRING TMP$3665$8;
								FBSTRING TMP$3666$8;
								FBSTRING TMP$3667$8;
								__builtin_memset( &TMP$3667$8, 0, 12 );
								__builtin_memset( &TMP$3665$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$3665$8, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3666$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$3666$8, (void*)vr$646, -1, (void*)"], rax", 7 );
								fb_StrAssign( (void*)&TMP$3667$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$3667$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3667$8 );
							}
							goto label$2800;
							label$2801:;
							{
								FBSTRING TMP$3668$8;
								FBSTRING TMP$3669$8;
								FBSTRING TMP$3670$8;
								__builtin_memset( &TMP$3670$8, 0, 12 );
								__builtin_memset( &TMP$3668$8, 0, 12 );
								FBSTRING* vr$657 = fb_StrConcat( &TMP$3668$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3669$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$3669$8, (void*)vr$657, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$3670$8, -1, (void*)vr$660, -1, 0 );
								HWRITEASM64( &TMP$3670$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3670$8 );
							}
							label$2800:;
						}
						label$2798:;
						label$2785:;
					}
				}
				label$2779:;
				label$2772:;
			}
		}
		label$2738:;
		label$2700:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2699:;
}

static void _EMITCOMMENT( char* TEXT$1 )
{
	label$2802:;
	label$2803:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$2804:;
	FBSTRING ASMLINE$1;
	__builtin_memset( &ASMLINE$1, 0, 12 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$2806:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$2807;
	{
		{
			$14AST_ASMTOKTYPE TMP$3671$3;
			TMP$3671$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$3671$3 != 0 ) goto label$2809;
			label$2810:;
			{
				FBSTRING TMP$3672$4;
				__builtin_memset( &TMP$3672$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$3672$4, (void*)&ASMLINE$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$6, -1, 0 );
			}
			goto label$2808;
			label$2809:;
			if( TMP$3671$3 != 1 ) goto label$2811;
			label$2812:;
			{
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4) + 48);
				if( OFS$4 == 0ll ) goto label$2814;
				{
					FBSTRING* vr$10 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)vr$10, -1, 0 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)"[rbp]", 6, 0 );
				}
				goto label$2813;
				label$2814:;
				{
					FBSTRING TMP$3673$5;
					char* vr$14 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
					__builtin_memset( &TMP$3673$5, 0, 12 );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$3673$5, (void*)&ASMLINE$1, -1, (void*)vr$14, 0 );
					fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$18, -1, 0 );
				}
				label$2813:;
			}
			goto label$2808;
			label$2811:;
			{
				FBSTRING TMP$3674$4;
				FBSTRING TMP$3677$4;
				FBSTRING TMP$3678$4;
				__builtin_memset( &TMP$3674$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3674$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3674$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3674$4 );
				__builtin_memset( &TMP$3677$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3677$4, -1, (void*)"FOUND AN ERROR : in emitasm token unknown", 42, 0 );
				HWRITEASM64( &TMP$3677$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3677$4 );
				__builtin_memset( &TMP$3678$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3678$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3678$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3678$4 );
			}
			label$2815:;
			label$2808:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$2806;
	label$2807:;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	HWRITEASM64( &ASMLINE$1, 0 );
	fb_StrDelete( (FBSTRING*)&ASMLINE$1 );
	label$2805:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$3680$1;
	FBSTRING TMP$3684$1;
	FBSTRING TMP$3685$1;
	FBSTRING TMP$3686$1;
	FBSTRING TMP$3687$1;
	label$2816:;
	int32 ALIGN$1;
	__builtin_memset( &ALIGN$1, 0, 4 );
	if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$2819;
	{
		ALIGN$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
	}
	goto label$2818;
	label$2819:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$2821;
		{
			ALIGN$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 368);
		}
		goto label$2820;
		label$2821:;
		{
			int32 TMP$3679$3;
			if( ((*(int32*)((uint8*)SYM$1 + 28) & 511) & 480) == 0 ) goto label$2822;
			TMP$3679$3 = 24;
			goto label$3159;
			label$2822:;
			TMP$3679$3 = (*(int32*)((uint8*)SYM$1 + 28) & 511) & 31;
			label$3159:;
			ALIGN$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3679$3 * 28)) + 4);
		}
		label$2820:;
	}
	label$2818:;
	__builtin_memset( &TMP$3680$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3680$1, -1, (void*)".data", 6, 0 );
	ASM_SECTION( &TMP$3680$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3680$1 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$2824;
	{
		FBSTRING TMP$3681$2;
		FBSTRING TMP$3682$2;
		__builtin_memset( &TMP$3682$2, 0, 12 );
		char* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$3681$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3681$2, (void*)".globl ", 8, (void*)vr$21, 0 );
		fb_StrAssign( (void*)&TMP$3682$2, -1, (void*)vr$24, -1, 0 );
		HWRITEASM64( &TMP$3682$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3682$2 );
	}
	label$2824:;
	label$2823:;
	__builtin_memset( &TMP$3685$1, 0, 12 );
	FBSTRING* vr$29 = fb_IntToStr( ALIGN$1 );
	__builtin_memset( &TMP$3684$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3684$1, (void*)".align ", 8, (void*)vr$29, -1 );
	fb_StrAssign( (void*)&TMP$3685$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3685$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3685$1 );
	__builtin_memset( &TMP$3687$1, 0, 12 );
	char* vr$37 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$3686$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$3686$1, (void*)vr$37, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3687$1, -1, (void*)vr$40, -1, 0 );
	HWRITEASM64( &TMP$3687$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3687$1 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$2826;
	{
	}
	goto label$2825;
	label$2826:;
	{
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2828;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 57) == 0 ) goto label$2830;
			{
				EDBGEMITGLOBALVAR_ASM64( SYM$1, 1 );
			}
			goto label$2829;
			label$2830:;
			{
				EDBGEMITLOCALVAR_ASM64( SYM$1, -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) );
			}
			label$2829:;
		}
		label$2828:;
		label$2827:;
	}
	label$2825:;
	label$2817:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	FBSTRING TMP$3695$1;
	FBSTRING TMP$3696$1;
	FBSTRING TMP$3697$1;
	FBSTRING TMP$3698$1;
	FBSTRING TMP$3699$1;
	label$2831:;
	FBSTRING SIZ$1;
	__builtin_memset( &SIZ$1, 0, 12 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$2834;
	{
		DTYPE$1 = 8;
		label$2834:;
	}
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$2836;
	{
		VALUE$1 = 1ll;
	}
	label$2836:;
	label$2835:;
	{
		int32 TMP$3688$2;
		uint32 TMP$3689$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2837;
		TMP$3688$2 = 24;
		goto label$3160;
		label$2837:;
		TMP$3688$2 = DTYPE$1 & 31;
		label$3160:;
		TMP$3689$2 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$3688$2 * 28)) + 4);
		goto label$2839;
		label$2840:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".byte", 6, 0 );
			LGT$1 = 2;
		}
		goto label$2838;
		label$2841:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".word", 6, 0 );
			LGT$1 = 4;
		}
		goto label$2838;
		label$2842:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".long", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2838;
		label$2843:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 16;
		}
		goto label$2838;
		label$2844:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2838;
		label$2839:;
		static const void* tmp$4083[8] = {
			&&label$2840,
			&&label$2841,
			&&label$2844,
			&&label$2842,
			&&label$2844,
			&&label$2844,
			&&label$2844,
			&&label$2843,
		};
		if( (TMP$3689$2 - 1u) > 7u ) goto label$2844;
		goto *tmp$4083[TMP$3689$2 - 1u];
		label$2838:;
	}
	__builtin_memset( &TMP$3699$1, 0, 12 );
	FBSTRING* vr$17 = fb_LongintToStr( VALUE$1 );
	FBSTRING* vr$18 = fb_HEX_l( (uint64)VALUE$1 );
	FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)vr$18, LGT$1 );
	__builtin_memset( &TMP$3695$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3695$1, (void*)&SIZ$1, -1, (void*)" 0x", 4 );
	__builtin_memset( &TMP$3696$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3696$1, (void*)vr$23, -1, (void*)vr$19, -1 );
	__builtin_memset( &TMP$3697$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$3697$1, (void*)vr$26, -1, (void*)" # ", 4 );
	__builtin_memset( &TMP$3698$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3698$1, (void*)vr$29, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&TMP$3699$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3699$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3699$1 );
	fb_StrDelete( (FBSTRING*)&SIZ$1 );
	label$2832:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	FBSTRING TMP$3700$1;
	label$2845:;
	__builtin_memset( &TMP$3700$1, 0, 12 );
	FBSTRING* vr$3 = HFLOATTOHEX_ASM64( VALUE$1, *(int32*)((uint8*)SYM$1 + 28) & 511, (int8)1 );
	fb_StrAssign( (void*)&TMP$3700$1, -1, (void*)vr$3, -1, 0 );
	HWRITEASM64( &TMP$3700$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3700$1 );
	label$2846:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$3708$1;
	FBSTRING TMP$3712$1;
	FBSTRING TMP$3713$1;
	FBSTRING TMP$3714$1;
	FBSTRING TMP$3715$1;
	label$2847:;
	IRHLEMITPROCBEGIN(  );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 44), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 68), -1, (void*)"", 1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 216) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 220) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&CTX$ + 136) = -2;
	*(int32*)((uint8*)&CTX$ + 140) = 0;
	*(int32*)((uint8*)&CTX$ + 240) = 0;
	*(boolean*)((uint8*)&CTX$ + 224) = (boolean)0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 56), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	*(boolean*)((uint8*)&CTX$ + 153) = (boolean)0;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 84) = 0;
	*(int32*)((uint8*)&CTX$ + 88) = 0;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2850;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 16;
		*(int64*)((uint8*)&CTX$ + 96) = 40ll;
	}
	goto label$2849;
	label$2850:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 8;
		*(int64*)((uint8*)&CTX$ + 96) = 56ll;
	}
	label$2849:;
	*(int32*)((uint8*)&CTX$ + 80) = 0;
	*(int32*)((uint8*)&CTX$ + 128) = 0;
	*(int64*)((uint8*)&CTX$ + 104) = 0ll;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 256) == 0 ) goto label$2852;
	{
		FBSTRING TMP$3702$2;
		FBSTRING TMP$3704$2;
		FBSTRING TMP$3705$2;
		FBSTRING TMP$3706$2;
		FBSTRING TMP$3707$2;
		__builtin_memset( &TMP$3702$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3702$2, -1, (void*)".drectve", 9, 0 );
		ASM_SECTION( &TMP$3702$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3702$2 );
		__builtin_memset( &TMP$3706$2, 0, 12 );
		char* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3704$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3704$2, (void*)".ascii \x22 -export:", 18, (void*)vr$11, 0 );
		__builtin_memset( &TMP$3705$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$3705$2, (void*)vr$14, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$3706$2, -1, (void*)vr$17, -1, 0 );
		HWRITEASM64( &TMP$3706$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3706$2 );
		__builtin_memset( &TMP$3707$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3707$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3707$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3707$2 );
	}
	label$2852:;
	label$2851:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2854;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2856;
		{
			*(boolean*)((uint8*)&CTX$ + 224) = (boolean)1;
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2858;
			{
				*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + 112ll;
			}
			label$2858:;
			label$2857:;
		}
		label$2856:;
		label$2855:;
	}
	label$2854:;
	label$2853:;
	__builtin_memset( &TMP$3708$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3708$1, -1, (void*)".text", 6, 0 );
	HWRITEASM64( &TMP$3708$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3708$1 );
	if( (*(int32*)((uint8*)PROC$1 + 4) & 64) != 0 ) goto label$2860;
	{
		FBSTRING TMP$3709$2;
		FBSTRING TMP$3710$2;
		__builtin_memset( &TMP$3710$2, 0, 12 );
		char* vr$35 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3709$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$3709$2, (void*)".globl ", 8, (void*)vr$35, 0 );
		fb_StrAssign( (void*)&TMP$3710$2, -1, (void*)vr$38, -1, 0 );
		HWRITEASM64( &TMP$3710$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3710$2 );
	}
	label$2860:;
	label$2859:;
	__builtin_memset( &TMP$3713$1, 0, 12 );
	char* vr$43 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3712$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$3712$1, (void*)".seh_proc ", 11, (void*)vr$43, 0 );
	fb_StrAssign( (void*)&TMP$3713$1, -1, (void*)vr$46, -1, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$3713$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3713$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$3715$1, 0, 12 );
	char* vr$52 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3714$1, 0, 12 );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$3714$1, (void*)vr$52, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3715$1, -1, (void*)vr$55, -1, 0 );
	HWRITEASM64( &TMP$3715$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3715$1 );
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2862;
	{
		FBSTRING TMP$3717$2;
		__builtin_memset( &TMP$3717$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3717$2, -1, (void*)".cfi_startproc", 15, 0 );
		HWRITEASM64( &TMP$3717$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3717$2 );
	}
	label$2862:;
	label$2861:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2864;
	{
		EDBGEMITPROCHEADER_ASM64( PROC$1 );
		label$2864:;
	}
	*(int32*)((uint8*)&CTX$ + 4) = 4;
	label$2848:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$3899$1;
	FBSTRING TMP$3903$1;
	label$2865:;
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	FBSTRING RESTREG$1;
	__builtin_memset( &RESTREG$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	if( *(int64*)((uint8*)&CTX$ + 104) <= *(int64*)((uint8*)&CTX$ + 96) ) goto label$2868;
	{
		*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 104);
		label$2868:;
	}
	if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2870;
	{
		if( *(int32*)((uint8*)&CTX$ + 80) == 0 ) goto label$2872;
		{
			int32 TMP$3718$3;
			if( *(int32*)((uint8*)&CTX$ + 80) <= 4 ) goto label$2873;
			TMP$3718$3 = *(int32*)((uint8*)&CTX$ + 80) << (3 & 31);
			goto label$3161;
			label$2873:;
			TMP$3718$3 = 32;
			label$3161:;
			*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)TMP$3718$3;
			label$2872:;
		}
	}
	goto label$2869;
	label$2870:;
	{
		*(int64*)((uint8*)&CTX$ + 96) = *(int64*)((uint8*)&CTX$ + 96) + (int64)(*(int32*)((uint8*)&CTX$ + 80) << (3 & 31));
	}
	label$2869:;
	*(int64*)((uint8*)&CTX$ + 96) = (*(int64*)((uint8*)&CTX$ + 96) + 15ll) & -16ll;
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2875;
	{
		FBSTRING TMP$3720$2;
		FBSTRING TMP$3722$2;
		FBSTRING TMP$3728$2;
		FBSTRING TMP$3730$2;
		FBSTRING TMP$3796$2;
		FBSTRING TMP$3797$2;
		FBSTRING TMP$3799$2;
		__builtin_memset( &TMP$3720$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3720$2, -1, (void*)"push rbp", 9, 0 );
		HWRITEASM64( &TMP$3720$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3720$2 );
		__builtin_memset( &TMP$3722$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3722$2, -1, (void*)".seh_pushreg rbp", 17, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3722$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3722$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2877;
		{
			FBSTRING TMP$3724$3;
			__builtin_memset( &TMP$3724$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3724$3, -1, (void*)".cfi_def_cfa_offset 16", 23, 0 );
			HWRITEASM64( &TMP$3724$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3724$3 );
		}
		label$2877:;
		label$2876:;
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2879;
		{
			FBSTRING TMP$3726$3;
			__builtin_memset( &TMP$3726$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3726$3, -1, (void*)".cfi_offset 6, -16", 19, 0 );
			HWRITEASM64( &TMP$3726$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3726$3 );
		}
		label$2879:;
		label$2878:;
		__builtin_memset( &TMP$3728$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3728$2, -1, (void*)"mov  rbp,rsp", 13, 0 );
		HWRITEASM64( &TMP$3728$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3728$2 );
		__builtin_memset( &TMP$3730$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3730$2, -1, (void*)".seh_setframe rbp, 0", 21, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3730$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3730$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2881;
		{
			FBSTRING TMP$3732$3;
			__builtin_memset( &TMP$3732$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3732$3, -1, (void*)".cfi_def_cfa_register 6", 24, 0 );
			HWRITEASM64( &TMP$3732$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3732$3 );
		}
		label$2881:;
		label$2880:;
		if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$2883;
		{
			FBSTRING TMP$3734$3;
			FBSTRING TMP$3735$3;
			FBSTRING TMP$3737$3;
			FBSTRING TMP$3738$3;
			FBSTRING TMP$3740$3;
			FBSTRING TMP$3741$3;
			FBSTRING TMP$3742$3;
			FBSTRING TMP$3743$3;
			FBSTRING TMP$3745$3;
			FBSTRING TMP$3746$3;
			FBSTRING TMP$3747$3;
			FBSTRING TMP$3748$3;
			FBSTRING TMP$3749$3;
			FBSTRING TMP$3750$3;
			FBSTRING TMP$3752$3;
			FBSTRING TMP$3753$3;
			FBSTRING TMP$3785$3;
			FBSTRING TMP$3786$3;
			FBSTRING TMP$3787$3;
			__builtin_memset( &TMP$3735$3, 0, 12 );
			FBSTRING* vr$42 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3734$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$3734$3, (void*)"add qword ptr $totalstacksize[rip], ", 37, (void*)vr$42, -1 );
			fb_StrAssign( (void*)&TMP$3735$3, -1, (void*)vr$45, -1, 0 );
			HWRITEASM64( &TMP$3735$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3735$3 );
			__builtin_memset( &TMP$3738$3, 0, 12 );
			FBSTRING* vr$50 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 244) );
			__builtin_memset( &TMP$3737$3, 0, 12 );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$3737$3, (void*)"cmp qword ptr $totalstacksize[rip], ", 37, (void*)vr$50, -1 );
			fb_StrAssign( (void*)&TMP$3738$3, -1, (void*)vr$53, -1, 0 );
			HWRITEASM64( &TMP$3738$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3738$3 );
			__builtin_memset( &TMP$3740$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3740$3, -1, (void*)".section .data", 15, 0 );
			HWRITEASM64( &TMP$3740$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3740$3 );
			__builtin_memset( &TMP$3741$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3741$3, -1, (void*)".align 8", 9, 0 );
			HWRITEASM64( &TMP$3741$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3741$3 );
			FBSTRING LNAME1$3;
			char* vr$65 = SYMBUNIQUELABEL(  );
			fb_StrInit( (void*)&LNAME1$3, -1, (void*)vr$65, 0, 0 );
			__builtin_memset( &TMP$3743$3, 0, 12 );
			__builtin_memset( &TMP$3742$3, 0, 12 );
			FBSTRING* vr$71 = fb_StrConcat( &TMP$3742$3, (void*)&LNAME1$3, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3743$3, -1, (void*)vr$71, -1, 0 );
			HWRITEASM64( &TMP$3743$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3743$3 );
			__builtin_memset( &TMP$3749$3, 0, 12 );
			char* vr$76 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$3745$3, 0, 12 );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$3745$3, (void*)".ascii \x22" "Aborting : stack overflow ", 35, (void*)((uint8*)&ENV$ + 304), 261 );
			__builtin_memset( &TMP$3746$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$3746$3, (void*)vr$80, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$3747$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$3747$3, (void*)vr$83, -1, (void*)vr$76, 0 );
			__builtin_memset( &TMP$3748$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$3748$3, (void*)vr$86, -1, (void*)"\x5C" "0\x22", 4 );
			fb_StrAssign( (void*)&TMP$3749$3, -1, (void*)vr$89, -1, 0 );
			HWRITEASM64( &TMP$3749$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3749$3 );
			__builtin_memset( &TMP$3750$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3750$3, -1, (void*)".text", 6, 0 );
			HWRITEASM64( &TMP$3750$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3750$3 );
			FBSTRING LNAME$3;
			char* vr$97 = SYMBUNIQUELABEL(  );
			fb_StrInit( (void*)&LNAME$3, -1, (void*)vr$97, 0, 0 );
			__builtin_memset( &TMP$3753$3, 0, 12 );
			__builtin_memset( &TMP$3752$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$3752$3, (void*)"jl ", 4, (void*)&LNAME$3, -1 );
			fb_StrAssign( (void*)&TMP$3753$3, -1, (void*)vr$103, -1, 0 );
			HWRITEASM64( &TMP$3753$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3753$3 );
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2885;
			{
				FBSTRING TMP$3755$4;
				FBSTRING TMP$3756$4;
				FBSTRING TMP$3757$4;
				FBSTRING TMP$3759$4;
				FBSTRING TMP$3761$4;
				FBSTRING TMP$3763$4;
				FBSTRING TMP$3765$4;
				FBSTRING TMP$3767$4;
				FBSTRING TMP$3769$4;
				__builtin_memset( &TMP$3757$4, 0, 12 );
				__builtin_memset( &TMP$3755$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3755$4, (void*)"lea rdi, ", 10, (void*)&LNAME1$3, -1 );
				__builtin_memset( &TMP$3756$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$3756$4, (void*)vr$111, -1, (void*)"[rip]", 6 );
				fb_StrAssign( (void*)&TMP$3757$4, -1, (void*)vr$114, -1, 0 );
				HWRITEASM64( &TMP$3757$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3757$4 );
				__builtin_memset( &TMP$3759$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3759$4, -1, (void*)"call fb_StrAllocTempDescZ", 26, 0 );
				HWRITEASM64( &TMP$3759$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3759$4 );
				__builtin_memset( &TMP$3761$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3761$4, -1, (void*)"xor edi, edi", 13, 0 );
				HWRITEASM64( &TMP$3761$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3761$4 );
				__builtin_memset( &TMP$3763$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3763$4, -1, (void*)"mov rsi, rax", 13, 0 );
				HWRITEASM64( &TMP$3763$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3763$4 );
				__builtin_memset( &TMP$3765$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3765$4, -1, (void*)"mov rdx, 1", 11, 0 );
				HWRITEASM64( &TMP$3765$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3765$4 );
				__builtin_memset( &TMP$3767$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3767$4, -1, (void*)"call fb_PrintString", 20, 0 );
				HWRITEASM64( &TMP$3767$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3767$4 );
				__builtin_memset( &TMP$3769$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3769$4, -1, (void*)"mov rdi, 4", 11, 0 );
				HWRITEASM64( &TMP$3769$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3769$4 );
			}
			goto label$2884;
			label$2885:;
			{
				FBSTRING TMP$3771$4;
				FBSTRING TMP$3772$4;
				FBSTRING TMP$3773$4;
				FBSTRING TMP$3774$4;
				FBSTRING TMP$3776$4;
				FBSTRING TMP$3778$4;
				FBSTRING TMP$3780$4;
				FBSTRING TMP$3781$4;
				FBSTRING TMP$3783$4;
				__builtin_memset( &TMP$3773$4, 0, 12 );
				__builtin_memset( &TMP$3771$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$3771$4, (void*)"lea rcx, ", 10, (void*)&LNAME1$3, -1 );
				__builtin_memset( &TMP$3772$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$3772$4, (void*)vr$146, -1, (void*)"[rip]", 6 );
				fb_StrAssign( (void*)&TMP$3773$4, -1, (void*)vr$149, -1, 0 );
				HWRITEASM64( &TMP$3773$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3773$4 );
				__builtin_memset( &TMP$3774$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3774$4, -1, (void*)"call fb_StrAllocTempDescZ", 26, 0 );
				HWRITEASM64( &TMP$3774$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3774$4 );
				__builtin_memset( &TMP$3776$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3776$4, -1, (void*)"xor ecx, ecx", 13, 0 );
				HWRITEASM64( &TMP$3776$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3776$4 );
				__builtin_memset( &TMP$3778$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3778$4, -1, (void*)"mov rdx, rax", 13, 0 );
				HWRITEASM64( &TMP$3778$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3778$4 );
				__builtin_memset( &TMP$3780$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3780$4, -1, (void*)"mov r8d, 1", 11, 0 );
				HWRITEASM64( &TMP$3780$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3780$4 );
				__builtin_memset( &TMP$3781$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3781$4, -1, (void*)"call fb_PrintString", 20, 0 );
				HWRITEASM64( &TMP$3781$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3781$4 );
				__builtin_memset( &TMP$3783$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3783$4, -1, (void*)"mov rcx, 4", 11, 0 );
				HWRITEASM64( &TMP$3783$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3783$4 );
			}
			label$2884:;
			__builtin_memset( &TMP$3785$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3785$3, -1, (void*)"call fb_End", 12, 0 );
			HWRITEASM64( &TMP$3785$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3785$3 );
			__builtin_memset( &TMP$3787$3, 0, 12 );
			__builtin_memset( &TMP$3786$3, 0, 12 );
			FBSTRING* vr$185 = fb_StrConcat( &TMP$3786$3, (void*)&LNAME$3, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3787$3, -1, (void*)vr$185, -1, 0 );
			HWRITEASM64( &TMP$3787$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3787$3 );
			fb_StrDelete( (FBSTRING*)&LNAME$3 );
			fb_StrDelete( (FBSTRING*)&LNAME1$3 );
		}
		label$2883:;
		label$2882:;
		if( *(int64*)((uint8*)&CTX$ + 96) < 2147483648ll ) goto label$2887;
		{
			FBSTRING TMP$3788$3;
			FBSTRING TMP$3789$3;
			FBSTRING TMP$3791$3;
			__builtin_memset( &TMP$3789$3, 0, 12 );
			FBSTRING* vr$192 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3788$3, 0, 12 );
			FBSTRING* vr$195 = fb_StrConcat( &TMP$3788$3, (void*)"mov rax, ", 10, (void*)vr$192, -1 );
			fb_StrAssign( (void*)&TMP$3789$3, -1, (void*)vr$195, -1, 0 );
			HWRITEASM64( &TMP$3789$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3789$3 );
			__builtin_memset( &TMP$3791$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3791$3, -1, (void*)"sub rsp, rax", 13, 0 );
			HWRITEASM64( &TMP$3791$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3791$3 );
		}
		goto label$2886;
		label$2887:;
		{
			FBSTRING TMP$3793$3;
			FBSTRING TMP$3794$3;
			__builtin_memset( &TMP$3794$3, 0, 12 );
			FBSTRING* vr$204 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
			__builtin_memset( &TMP$3793$3, 0, 12 );
			FBSTRING* vr$207 = fb_StrConcat( &TMP$3793$3, (void*)"sub rsp, ", 10, (void*)vr$204, -1 );
			fb_StrAssign( (void*)&TMP$3794$3, -1, (void*)vr$207, -1, 0 );
			HWRITEASM64( &TMP$3794$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3794$3 );
		}
		label$2886:;
		__builtin_memset( &TMP$3797$2, 0, 12 );
		FBSTRING* vr$212 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
		__builtin_memset( &TMP$3796$2, 0, 12 );
		FBSTRING* vr$215 = fb_StrConcat( &TMP$3796$2, (void*)".seh_stackalloc ", 17, (void*)vr$212, -1 );
		fb_StrAssign( (void*)&TMP$3797$2, -1, (void*)vr$215, -1, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3797$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3797$2 );
		__builtin_memset( &TMP$3799$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3799$2, -1, (void*)".seh_endprologue", 17, 0 );
		CFI_WINDOWS_ASM_CODE( &TMP$3799$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3799$2 );
		if( *(uint64*)((uint8*)&CTX$ + 96) < (uint64)*(int32*)((uint8*)&CTX$ + 244) ) goto label$2889;
		{
			FBSTRING TMP$3802$3;
			FBSTRING TMP$3803$3;
			FBSTRING MSGEX$3;
			char* vr$224 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$3802$3, 0, 12 );
			FBSTRING* vr$227 = fb_StrConcat( &TMP$3802$3, (void*)" proc=", 7, (void*)vr$224, 0 );
			__builtin_memset( &TMP$3803$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$3803$3, (void*)vr$227, -1, (void*)" STACK OVERFLOW, review array size, use redim/shared or increase stack size", 76 );
			fb_StrInit( (void*)&MSGEX$3, -1, (void*)vr$230, -1, 0 );
			ERRREPORTWARNEX( 24, (char*)0u, -1, 1, (char*)*(char**)&MSGEX$3 );
			fb_StrDelete( (FBSTRING*)&MSGEX$3 );
		}
		label$2889:;
		label$2888:;
		if( (*(int32*)((uint8*)&CTX$ + 128) & 2) == 0 ) goto label$2891;
		{
			FBSTRING TMP$3805$3;
			__builtin_memset( &TMP$3805$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3805$3, -1, (void*)"mov QWORD PTR -8[rbp], rbx", 27, 0 );
			HWRITEASM64( &TMP$3805$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3805$3 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rbx, QWORD PTR -8[rbp]\x0A", 29, 0 );
			FBSTRING* vr$240 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$240, -1, 0 );
			label$2891:;
		}
		if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2893;
		{
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32) == 0 ) goto label$2895;
			{
				FBSTRING TMP$3809$4;
				__builtin_memset( &TMP$3809$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3809$4, -1, (void*)"mov QWORD PTR -16[rbp], rdi", 28, 0 );
				HWRITEASM64( &TMP$3809$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3809$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rdi, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$249 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$249, -1, 0 );
				label$2895:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16) == 0 ) goto label$2897;
			{
				FBSTRING TMP$3813$4;
				__builtin_memset( &TMP$3813$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3813$4, -1, (void*)"mov QWORD PTR -24[rbp], rsi", 28, 0 );
				HWRITEASM64( &TMP$3813$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3813$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rsi, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$258 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$258, -1, 0 );
				label$2897:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 4096) == 0 ) goto label$2899;
			{
				FBSTRING TMP$3817$4;
				__builtin_memset( &TMP$3817$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3817$4, -1, (void*)"mov QWORD PTR -32[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3817$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3817$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$267 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$267, -1, 0 );
				label$2899:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 8192) == 0 ) goto label$2901;
			{
				FBSTRING TMP$3821$4;
				__builtin_memset( &TMP$3821$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3821$4, -1, (void*)"mov QWORD PTR -40[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3821$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3821$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$276 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$276, -1, 0 );
				label$2901:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16384) == 0 ) goto label$2903;
			{
				FBSTRING TMP$3825$4;
				__builtin_memset( &TMP$3825$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3825$4, -1, (void*)"mov QWORD PTR -48[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3825$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3825$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -48[rbp]\x0A", 30, 0 );
				FBSTRING* vr$285 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$285, -1, 0 );
				label$2903:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32768) == 0 ) goto label$2905;
			{
				FBSTRING TMP$3829$4;
				__builtin_memset( &TMP$3829$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3829$4, -1, (void*)"mov QWORD PTR -56[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3829$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3829$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -56[rbp]\x0A", 30, 0 );
				FBSTRING* vr$294 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$294, -1, 0 );
				label$2905:;
			}
		}
		goto label$2892;
		label$2893:;
		{
			if( (*(int32*)((uint8*)&CTX$ + 128) & 4096) == 0 ) goto label$2907;
			{
				FBSTRING TMP$3833$4;
				__builtin_memset( &TMP$3833$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3833$4, -1, (void*)"mov QWORD PTR -16[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3833$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3833$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$303 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$303, -1, 0 );
				label$2907:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 8192) == 0 ) goto label$2909;
			{
				FBSTRING TMP$3837$4;
				__builtin_memset( &TMP$3837$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3837$4, -1, (void*)"mov QWORD PTR -24[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3837$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3837$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$312 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$312, -1, 0 );
				label$2909:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 16384) == 0 ) goto label$2911;
			{
				FBSTRING TMP$3841$4;
				__builtin_memset( &TMP$3841$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3841$4, -1, (void*)"mov QWORD PTR -32[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3841$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3841$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$321 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$321, -1, 0 );
				label$2911:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 128) & 32768) == 0 ) goto label$2913;
			{
				FBSTRING TMP$3845$4;
				__builtin_memset( &TMP$3845$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3845$4, -1, (void*)"mov QWORD PTR -40[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3845$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3845$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$330 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$330, -1, 0 );
				label$2913:;
			}
		}
		label$2892:;
		int32 vr$333 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$333 == 0 ) goto label$2915;
		{
			FBSTRING* vr$335 = fb_RTRIM( (FBSTRING*)&RESTREG$1 );
			fb_StrAssign( (void*)&RESTREG$1, -1, (void*)vr$335, -1, 0 );
			label$2915:;
		}
	}
	label$2875:;
	label$2874:;
	if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2917;
	{
		if( *(boolean*)((uint8*)&CTX$ + 224) == (boolean)0 ) goto label$2919;
		{
			FBSTRING TMP$3861$3;
			FBSTRING TMP$3862$3;
			FBSTRING TMP$3863$3;
			FBSTRING TMP$3880$3;
			FBSTRING TMP$3881$3;
			if( *(int32*)((uint8*)&CTX$ + 84) >= 1 ) goto label$2921;
			{
				FBSTRING TMP$3849$4;
				__builtin_memset( &TMP$3849$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3849$4, -1, (void*)"mov QWORD PTR -152[rbp], rdi", 29, 0 );
				HWRITEASM64( &TMP$3849$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3849$4 );
				label$2921:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 2 ) goto label$2923;
			{
				FBSTRING TMP$3851$4;
				__builtin_memset( &TMP$3851$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3851$4, -1, (void*)"mov QWORD PTR -144[rbp], rsi", 29, 0 );
				HWRITEASM64( &TMP$3851$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3851$4 );
				label$2923:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 3 ) goto label$2925;
			{
				FBSTRING TMP$3853$4;
				__builtin_memset( &TMP$3853$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3853$4, -1, (void*)"mov QWORD PTR -136[rbp], rdx", 29, 0 );
				HWRITEASM64( &TMP$3853$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3853$4 );
				label$2925:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 4 ) goto label$2927;
			{
				FBSTRING TMP$3855$4;
				__builtin_memset( &TMP$3855$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3855$4, -1, (void*)"mov QWORD PTR -128[rbp], rcx", 29, 0 );
				HWRITEASM64( &TMP$3855$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3855$4 );
				label$2927:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 5 ) goto label$2929;
			{
				FBSTRING TMP$3857$4;
				__builtin_memset( &TMP$3857$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3857$4, -1, (void*)"mov QWORD PTR -120[rbp], r8", 28, 0 );
				HWRITEASM64( &TMP$3857$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3857$4 );
				label$2929:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 6 ) goto label$2931;
			{
				FBSTRING TMP$3859$4;
				__builtin_memset( &TMP$3859$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3859$4, -1, (void*)"mov QWORD PTR -112[rbp], r9", 28, 0 );
				HWRITEASM64( &TMP$3859$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3859$4 );
				label$2931:;
			}
			char* vr$361 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$361, 0, 0 );
			__builtin_memset( &TMP$3861$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3861$3, -1, (void*)"test eax, eax", 14, 0 );
			HWRITEASM64( &TMP$3861$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3861$3 );
			__builtin_memset( &TMP$3863$3, 0, 12 );
			__builtin_memset( &TMP$3862$3, 0, 12 );
			FBSTRING* vr$371 = fb_StrConcat( &TMP$3862$3, (void*)"jz ", 4, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$3863$3, -1, (void*)vr$371, -1, 0 );
			HWRITEASM64( &TMP$3863$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3863$3 );
			if( *(int32*)((uint8*)&CTX$ + 88) >= 1 ) goto label$2933;
			{
				FBSTRING TMP$3865$4;
				__builtin_memset( &TMP$3865$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3865$4, -1, (void*)"movq QWORD PTR -104[rbp], xmm0", 31, 0 );
				HWRITEASM64( &TMP$3865$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3865$4 );
				label$2933:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 2 ) goto label$2935;
			{
				FBSTRING TMP$3867$4;
				__builtin_memset( &TMP$3867$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3867$4, -1, (void*)"movq QWORD PTR -96[rbp], xmm1", 30, 0 );
				HWRITEASM64( &TMP$3867$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3867$4 );
				label$2935:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 3 ) goto label$2937;
			{
				FBSTRING TMP$3869$4;
				__builtin_memset( &TMP$3869$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3869$4, -1, (void*)"movq QWORD PTR -88[rbp], xmm2", 30, 0 );
				HWRITEASM64( &TMP$3869$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3869$4 );
				label$2937:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 4 ) goto label$2939;
			{
				FBSTRING TMP$3871$4;
				__builtin_memset( &TMP$3871$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3871$4, -1, (void*)"movq QWORD PTR -80[rbp], xmm3", 30, 0 );
				HWRITEASM64( &TMP$3871$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3871$4 );
				label$2939:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 5 ) goto label$2941;
			{
				FBSTRING TMP$3873$4;
				__builtin_memset( &TMP$3873$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3873$4, -1, (void*)"movq QWORD PTR -72[rbp], xmm4", 30, 0 );
				HWRITEASM64( &TMP$3873$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3873$4 );
				label$2941:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 6 ) goto label$2943;
			{
				FBSTRING TMP$3875$4;
				__builtin_memset( &TMP$3875$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3875$4, -1, (void*)"movq QWORD PTR -64[rbp], xmm5", 30, 0 );
				HWRITEASM64( &TMP$3875$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3875$4 );
				label$2943:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 7 ) goto label$2945;
			{
				FBSTRING TMP$3877$4;
				__builtin_memset( &TMP$3877$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3877$4, -1, (void*)"movq QWORD PTR -56[rbp], xmm6", 30, 0 );
				HWRITEASM64( &TMP$3877$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3877$4 );
				label$2945:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 8 ) goto label$2947;
			{
				FBSTRING TMP$3879$4;
				__builtin_memset( &TMP$3879$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3879$4, -1, (void*)"movq QWORD PTR -48[rbp], xmm7", 30, 0 );
				HWRITEASM64( &TMP$3879$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3879$4 );
				label$2947:;
			}
			__builtin_memset( &TMP$3881$3, 0, 12 );
			__builtin_memset( &TMP$3880$3, 0, 12 );
			FBSTRING* vr$411 = fb_StrConcat( &TMP$3880$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3881$3, -1, (void*)vr$411, -1, 0 );
			HWRITEASM64( &TMP$3881$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3881$3 );
		}
		label$2919:;
		label$2918:;
	}
	label$2917:;
	label$2916:;
	*(int32*)((uint8*)&CTX$ + 4) = 5;
	if( *(int32*)((uint8*)&ENV$ + 176) != -1 ) goto label$2949;
	{
		FBSTRING TMP$3883$2;
		FBSTRING TMP$3884$2;
		__builtin_memset( &TMP$3884$2, 0, 12 );
		FBSTRING* vr$416 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 96) );
		__builtin_memset( &TMP$3883$2, 0, 12 );
		FBSTRING* vr$419 = fb_StrConcat( &TMP$3883$2, (void*)"sub qword ptr $totalstacksize[rip], ", 37, (void*)vr$416, -1 );
		fb_StrAssign( (void*)&TMP$3884$2, -1, (void*)vr$419, -1, 0 );
		HWRITEASM64( &TMP$3884$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3884$2 );
	}
	label$2949:;
	label$2948:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2951;
	{
		FBSTRING TMP$3885$2;
		FBSTRING TMP$3886$2;
		FBSTRING TMP$3887$2;
		FBSTRING TMP$3888$2;
		FBSTRING TMP$3889$2;
		FBSTRING TMP$3890$2;
		char* vr$423 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$423, 0, 0 );
		__builtin_memset( &TMP$3888$2, 0, 12 );
		char* vr$426 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3886$2, 0, 12 );
		FBSTRING* vr$430 = fb_StrConcat( &TMP$3886$2, (void*)&LNAME$1, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3887$2, 0, 12 );
		FBSTRING* vr$433 = fb_StrConcat( &TMP$3887$2, (void*)vr$430, -1, (void*)vr$426, 0 );
		fb_StrAssign( (void*)&TMP$3888$2, -1, (void*)vr$433, -1, 0 );
		__builtin_memset( &TMP$3885$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3885$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3885$2, (uint8)224u, (int16)0, &TMP$3888$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3888$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3885$2 );
		__builtin_memset( &TMP$3890$2, 0, 12 );
		__builtin_memset( &TMP$3889$2, 0, 12 );
		FBSTRING* vr$445 = fb_StrConcat( &TMP$3889$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3890$2, -1, (void*)vr$445, -1, 0 );
		HWRITEASM64( &TMP$3890$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3890$2 );
	}
	label$2951:;
	label$2950:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2953;
	{
		FBSTRING TMP$3892$2;
		FBSTRING TMP$3894$2;
		int32 vr$452 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$452 == 0 ) goto label$2955;
		{
			HWRITEASM64( &RESTREG$1, 0 );
			label$2955:;
		}
		__builtin_memset( &TMP$3892$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3892$2, -1, (void*)"mov rsp,rbp", 12, 0 );
		HWRITEASM64( &TMP$3892$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3892$2 );
		__builtin_memset( &TMP$3894$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3894$2, -1, (void*)"pop rbp", 8, 0 );
		HWRITEASM64( &TMP$3894$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3894$2 );
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2957;
		{
			FBSTRING TMP$3896$3;
			__builtin_memset( &TMP$3896$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3896$3, -1, (void*)".cfi_restore 6", 15, 0 );
			HWRITEASM64( &TMP$3896$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3896$3 );
		}
		label$2957:;
		label$2956:;
		if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2959;
		{
			FBSTRING TMP$3898$3;
			__builtin_memset( &TMP$3898$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3898$3, -1, (void*)".cfi_def_cfa 7, 8", 18, 0 );
			HWRITEASM64( &TMP$3898$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3898$3 );
		}
		label$2959:;
		label$2958:;
	}
	label$2953:;
	label$2952:;
	__builtin_memset( &TMP$3899$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3899$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3899$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3899$1 );
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$2961;
	{
		FBSTRING TMP$3901$2;
		__builtin_memset( &TMP$3901$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3901$2, -1, (void*)".cfi_endproc", 13, 0 );
		HWRITEASM64( &TMP$3901$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3901$2 );
	}
	label$2961:;
	label$2960:;
	__builtin_memset( &TMP$3903$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3903$1, -1, (void*)".seh_endproc", 13, 0 );
	CFI_WINDOWS_ASM_CODE( &TMP$3903$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3903$1 );
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2963;
	{
		FBSTRING TMP$3904$2;
		FBSTRING TMP$3905$2;
		FBSTRING TMP$3906$2;
		FBSTRING TMP$3907$2;
		FBSTRING TMP$3908$2;
		FBSTRING TMP$3909$2;
		FBSTRING LNAME$2;
		char* vr$482 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$482, 0, 0 );
		__builtin_memset( &TMP$3907$2, 0, 12 );
		char* vr$485 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3905$2, 0, 12 );
		FBSTRING* vr$489 = fb_StrConcat( &TMP$3905$2, (void*)&LNAME$2, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3906$2, 0, 12 );
		FBSTRING* vr$492 = fb_StrConcat( &TMP$3906$2, (void*)vr$489, -1, (void*)vr$485, 0 );
		fb_StrAssign( (void*)&TMP$3907$2, -1, (void*)vr$492, -1, 0 );
		__builtin_memset( &TMP$3904$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3904$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3904$2, (uint8)36u, (int16)0, &TMP$3907$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3907$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3904$2 );
		__builtin_memset( &TMP$3909$2, 0, 12 );
		__builtin_memset( &TMP$3908$2, 0, 12 );
		FBSTRING* vr$504 = fb_StrConcat( &TMP$3908$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3909$2, -1, (void*)vr$504, -1, 0 );
		HWRITEASM64( &TMP$3909$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3909$2 );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$2963:;
	label$2962:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&CTX$ + 156) );
	*(int32*)((uint8*)&CTX$ + 212) = 0;
	IRHLEMITPROCEND(  );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 44), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 56), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 68), -1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&RESTREG$1 );
	label$2866:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$2964:;
	FBSTRING S$1;
	char* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, 0, 0 );
	int32 SYMDTYPE$1;
	SYMDTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	int32 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int32*)((uint8*)RHS$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)RHS$1 + 28) & 511) & 32505856);
	if( OFS$1 == 0ll ) goto label$2967;
	{
		FBSTRING TMP$3910$2;
		FBSTRING TMP$3911$2;
		FBSTRING TMP$3912$2;
		FBSTRING TMP$3913$2;
		__builtin_memset( &TMP$3913$2, 0, 12 );
		FBSTRING* vr$22 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$3910$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$3910$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		__builtin_memset( &TMP$3911$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$3911$2, (void*)vr$26, -1, (void*)"+", 2 );
		__builtin_memset( &TMP$3912$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$3912$2, (void*)vr$29, -1, (void*)vr$22, -1 );
		fb_StrAssign( (void*)&TMP$3913$2, -1, (void*)vr$32, -1, 0 );
		HWRITEASM64( &TMP$3913$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3913$2 );
	}
	goto label$2966;
	label$2967:;
	{
		FBSTRING TMP$3914$2;
		FBSTRING TMP$3915$2;
		__builtin_memset( &TMP$3915$2, 0, 12 );
		__builtin_memset( &TMP$3914$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$3914$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		fb_StrAssign( (void*)&TMP$3915$2, -1, (void*)vr$40, -1, 0 );
		HWRITEASM64( &TMP$3915$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3915$2 );
	}
	label$2966:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$2965:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	FBSTRING TMP$3917$1;
	FBSTRING TMP$3918$1;
	label$2968:;
	__builtin_memset( &TMP$3918$1, 0, 12 );
	FBSTRING* vr$1 = fb_LongintToStr( BYTES$1 );
	__builtin_memset( &TMP$3917$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$3917$1, (void*)".zero ", 7, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$3918$1, -1, (void*)vr$4, -1, 0 );
	HWRITEASM64( &TMP$3918$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3918$1 );
	label$2969:;
}

static void _EMITFBCTINFSTRING( char* S$1 )
{
	FBSTRING TMP$3920$1;
	FBSTRING TMP$3921$1;
	FBSTRING TMP$3922$1;
	FBSTRING TMP$3923$1;
	label$2970:;
	__builtin_memset( &TMP$3920$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3920$1, -1, (void*)".fbctinf", 9, 0 );
	ASM_SECTION( &TMP$3920$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3920$1 );
	__builtin_memset( &TMP$3923$1, 0, 12 );
	__builtin_memset( &TMP$3921$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$3921$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3922$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$3922$1, (void*)vr$7, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3923$1, -1, (void*)vr$10, -1, 0 );
	HWRITEASM64( &TMP$3923$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3923$1 );
	label$2971:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, char* LITERAL$1, int64 LITLENGTH$1 )
{
	FBSTRING TMP$3927$1;
	FBSTRING TMP$3928$1;
	FBSTRING TMP$3929$1;
	label$2972:;
	char* S$1;
	__builtin_memset( &S$1, 0, 4 );
	if( VARLENGTH$1 != 0ll ) goto label$2975;
	{
		FBSTRING TMP$3925$2;
		__builtin_memset( &TMP$3925$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3925$2, -1, (void*)".byte 0 # 0", 12, 0 );
		HWRITEASM64( &TMP$3925$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3925$2 );
		goto label$2973;
	}
	label$2975:;
	label$2974:;
	if( VARLENGTH$1 >= LITLENGTH$1 ) goto label$2977;
	{
		FBSTRING TMP$3926$2;
		ERRREPORTWARN( 9, (char*)0u, 1, (char*)0u );
		__builtin_memset( &TMP$3926$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrAllocTempDescZ( (char*)LITERAL$1 );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)vr$7, (int32)VARLENGTH$1 );
		fb_StrAssign( (void*)&TMP$3926$2, -1, (void*)vr$8, -1, 0 );
		char* vr$10 = HESCAPE( (char*)*(char**)&TMP$3926$2 );
		S$1 = vr$10;
		fb_StrDelete( (FBSTRING*)&TMP$3926$2 );
	}
	goto label$2976;
	label$2977:;
	{
		char* vr$12 = HESCAPE( (char*)LITERAL$1 );
		S$1 = vr$12;
	}
	label$2976:;
	__builtin_memset( &TMP$3929$1, 0, 12 );
	__builtin_memset( &TMP$3927$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$3927$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3928$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$3928$1, (void*)vr$16, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3929$1, -1, (void*)vr$19, -1, 0 );
	HWRITEASM64( &TMP$3929$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3929$1 );
	if( LITLENGTH$1 >= VARLENGTH$1 ) goto label$2979;
	{
		FBSTRING TMP$3930$2;
		FBSTRING TMP$3931$2;
		__builtin_memset( &TMP$3931$2, 0, 12 );
		FBSTRING* vr$25 = fb_LongintToStr( VARLENGTH$1 - LITLENGTH$1 );
		__builtin_memset( &TMP$3930$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$3930$2, (void*)".zero ", 7, (void*)vr$25, -1 );
		fb_StrAssign( (void*)&TMP$3931$2, -1, (void*)vr$28, -1, 0 );
		HWRITEASM64( &TMP$3931$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3931$2 );
	}
	label$2979:;
	label$2978:;
	label$2973:;
}

static void _EMITVARINIWSTR( int64 TOTLGT$1, uint32* LITSTR$1, int64 LITLGT$1 )
{
	FBSTRING TMP$3940$1;
	FBSTRING TMP$3941$1;
	FBSTRING TMP$3942$1;
	label$2980:;
	char* S$1;
	__builtin_memset( &S$1, 0, 4 );
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 12 );
	int32 WCLEN$1;
	WCLEN$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	if( TOTLGT$1 != 0ll ) goto label$2983;
	{
		if( WCLEN$1 != 2 ) goto label$2985;
		{
			FBSTRING TMP$3934$3;
			__builtin_memset( &TMP$3934$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3934$3, -1, (void*)".word 0", 8, 0 );
			HWRITEASM64( &TMP$3934$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3934$3 );
		}
		goto label$2984;
		label$2985:;
		{
			FBSTRING TMP$3936$3;
			__builtin_memset( &TMP$3936$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3936$3, -1, (void*)".long 0", 8, 0 );
			HWRITEASM64( &TMP$3936$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3936$3 );
		}
		label$2984:;
		fb_StrDelete( (FBSTRING*)&OSTR$1 );
		goto label$2981;
	}
	label$2983:;
	label$2982:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$2987;
	{
		uint32* TMP$3937$2;
		ERRREPORTWARN( 9, (char*)0u, 1, (char*)0u );
		uint32* vr$12 = fb_WstrLeft( (uint32*)LITSTR$1, (int32)TOTLGT$1 );
		TMP$3937$2 = vr$12;
		char* vr$13 = HESCAPEW( (uint32*)TMP$3937$2 );
		S$1 = vr$13;
		fb_WstrDelete( (uint32*)TMP$3937$2 );
	}
	goto label$2986;
	label$2987:;
	{
		char* vr$14 = HESCAPEW( (uint32*)LITSTR$1 );
		S$1 = vr$14;
	}
	label$2986:;
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (char*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
	FBSTRING* vr$17 = fb_LEFT( (FBSTRING*)vr$16, *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) << (1 & 31) );
	__builtin_memset( &TMP$3940$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$3940$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3941$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3941$1, (void*)vr$20, -1, (void*)vr$17, -1 );
	__builtin_memset( &TMP$3942$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3942$1, (void*)vr$23, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$26, -1, 0 );
	HWRITEASM64( &OSTR$1, 0 );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$2989;
	{
		FBSTRING TMP$3943$2;
		FBSTRING TMP$3944$2;
		__builtin_memset( &TMP$3944$2, 0, 12 );
		FBSTRING* vr$33 = fb_LongintToStr( (TOTLGT$1 - LITLGT$1) * (int64)WCLEN$1 );
		__builtin_memset( &TMP$3943$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$3943$2, (void*)".zero ", 7, (void*)vr$33, -1 );
		fb_StrAssign( (void*)&TMP$3944$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$3944$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3944$2 );
	}
	label$2989:;
	label$2988:;
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$2981:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$2990:;
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	struct $6IRVREG* TEMPO2$1;
	__builtin_memset( &TEMPO2$1, 0, 4 );
	int32 SAVEREG$1;
	__builtin_memset( &SAVEREG$1, 0, 4 );
	int32 STARTARG$1;
	__builtin_memset( &STARTARG$1, 0, 4 );
	int32 VREG$1;
	__builtin_memset( &VREG$1, 0, 4 );
	FBSTRING REGVALIST$1;
	__builtin_memset( &REGVALIST$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$2993;
	{
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = 8;
	}
	label$2993:;
	label$2992:;
	{
		if( OP$1 != 109 ) goto label$2995;
		label$2996:;
		{
			struct $6IRVREG* vr$9 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$9;
			REG_FINDFREE( *(int32*)((uint8*)TEMPO1$1 + 12), -1 );
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$2998;
			{
				FBSTRING TMP$3946$4;
				FBSTRING TMP$3947$4;
				FBSTRING TMP$3948$4;
				FBSTRING TMP$3949$4;
				FBSTRING TMP$3951$4;
				FBSTRING TMP$3952$4;
				FBSTRING TMP$3953$4;
				FBSTRING TMP$3954$4;
				int32 TMP$3955$4;
				int32 TMP$3956$4;
				FBSTRING TMP$3958$4;
				FBSTRING TMP$3959$4;
				FBSTRING TMP$3960$4;
				FBSTRING TMP$3962$4;
				FBSTRING TMP$3963$4;
				FBSTRING TMP$3964$4;
				FBSTRING TMP$3966$4;
				FBSTRING TMP$3968$4;
				FBSTRING TMP$3969$4;
				FBSTRING TMP$3970$4;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$12 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$12 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3949$4, 0, 12 );
				FBSTRING* vr$17 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) << (3 & 31) );
				__builtin_memset( &TMP$3946$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$3946$4, (void*)"mov DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3947$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$3947$4, (void*)vr$21, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3948$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$3948$4, (void*)vr$24, -1, (void*)vr$17, -1 );
				fb_StrAssign( (void*)&TMP$3949$4, -1, (void*)vr$27, -1, 0 );
				HWRITEASM64( &TMP$3949$4, 1 );
				fb_StrDelete( (FBSTRING*)&TMP$3949$4 );
				__builtin_memset( &TMP$3954$4, 0, 12 );
				FBSTRING* vr$34 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 88) << (3 & 31)) + 48 );
				__builtin_memset( &TMP$3951$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$3951$4, (void*)"mov DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3952$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$3952$4, (void*)vr$38, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3953$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$3953$4, (void*)vr$41, -1, (void*)vr$34, -1 );
				fb_StrAssign( (void*)&TMP$3954$4, -1, (void*)vr$44, -1, 0 );
				HWRITEASM64( &TMP$3954$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3954$4 );
				if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$2999;
				TMP$3955$4 = 0;
				goto label$3162;
				label$2999:;
				TMP$3955$4 = *(int32*)((uint8*)&CTX$ + 84) + -6;
				label$3162:;
				if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$3000;
				TMP$3956$4 = 0;
				goto label$3163;
				label$3000:;
				TMP$3956$4 = *(int32*)((uint8*)&CTX$ + 88) + -8;
				label$3163:;
				STARTARG$1 = ((TMP$3955$4 + TMP$3956$4) << (3 & 31)) + 16;
				__builtin_memset( &TMP$3960$4, 0, 12 );
				FBSTRING* vr$54 = fb_IntToStr( STARTARG$1 );
				__builtin_memset( &TMP$3958$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3958$4, (void*)"lea rax,", 9, (void*)vr$54, -1 );
				__builtin_memset( &TMP$3959$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3959$4, (void*)vr$57, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3960$4, -1, (void*)vr$60, -1, 0 );
				HWRITEASM64( &TMP$3960$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3960$4 );
				__builtin_memset( &TMP$3964$4, 0, 12 );
				__builtin_memset( &TMP$3962$4, 0, 12 );
				FBSTRING* vr$68 = fb_StrConcat( &TMP$3962$4, (void*)"mov QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3963$4, 0, 12 );
				FBSTRING* vr$71 = fb_StrConcat( &TMP$3963$4, (void*)vr$68, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3964$4, -1, (void*)vr$71, -1, 0 );
				HWRITEASM64( &TMP$3964$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3964$4 );
				__builtin_memset( &TMP$3966$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3966$4, -1, (void*)"lea rax, -152[rbp]", 19, 0 );
				HWRITEASM64( &TMP$3966$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3966$4 );
				__builtin_memset( &TMP$3970$4, 0, 12 );
				__builtin_memset( &TMP$3968$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$3968$4, (void*)"mov QWORD PTR 16[", 18, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3969$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$3969$4, (void*)vr$83, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3970$4, -1, (void*)vr$86, -1, 0 );
				HWRITEASM64( &TMP$3970$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3970$4 );
			}
			goto label$2997;
			label$2998:;
			{
				FBSTRING TMP$3971$4;
				FBSTRING TMP$3972$4;
				FBSTRING TMP$3973$4;
				FBSTRING TMP$3974$4;
				FBSTRING TMP$3975$4;
				__builtin_memset( &TMP$3975$4, 0, 12 );
				FBSTRING* vr$93 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 84) << (3 & 31)) + 16 );
				int32 vr$95 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				__builtin_memset( &TMP$3971$4, 0, 12 );
				FBSTRING* vr$99 = fb_StrConcat( &TMP$3971$4, (void*)"lea ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$95 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3972$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$3972$4, (void*)vr$99, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3973$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$3973$4, (void*)vr$102, -1, (void*)vr$93, -1 );
				__builtin_memset( &TMP$3974$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$3974$4, (void*)vr$105, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3975$4, -1, (void*)vr$108, -1, 0 );
				HWRITEASM64( &TMP$3975$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3975$4 );
				_EMITSTORE( V1$1, TEMPO1$1 );
			}
			label$2997:;
			if( *(int32*)V2$1 != 3 ) goto label$3002;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$3006:;
					{
						if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$3008;
						{
							*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$3005;
						}
						label$3008:;
						label$3007:;
					}
					label$3004:;
					IREG$5 = IREG$5 + 1;
					label$3003:;
					if( IREG$5 <= 15 ) goto label$3006;
					label$3005:;
				}
			}
			label$3002:;
			label$3001:;
		}
		goto label$2994;
		label$2995:;
		if( OP$1 != 112 ) goto label$3009;
		label$3010:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$3012;
			{
				struct $6IRVREG* vr$118 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$118;
				REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$121 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$121 << (2 & 31))), 0, 0 );
				char* vr$124 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$124, 0, 0 );
				char* vr$126 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$126, 0, 0 );
				if( (-(*(int32*)((uint8*)VR$1 + 4) == 16) | -(*(int32*)((uint8*)VR$1 + 4) == 15)) == 0 ) goto label$3014;
				{
					FBSTRING TMP$3978$5;
					FBSTRING TMP$3979$5;
					FBSTRING TMP$3980$5;
					FBSTRING TMP$3981$5;
					FBSTRING TMP$3982$5;
					FBSTRING TMP$3984$5;
					FBSTRING TMP$3985$5;
					FBSTRING TMP$3986$5;
					FBSTRING TMP$3989$5;
					FBSTRING TMP$3990$5;
					FBSTRING TMP$3991$5;
					FBSTRING TMP$3993$5;
					FBSTRING TMP$3994$5;
					FBSTRING TMP$3995$5;
					FBSTRING TMP$3996$5;
					FBSTRING TMP$3997$5;
					FBSTRING TMP$3998$5;
					FBSTRING TMP$3999$5;
					FBSTRING TMP$4001$5;
					FBSTRING TMP$4002$5;
					FBSTRING TMP$4003$5;
					FBSTRING TMP$4005$5;
					FBSTRING TMP$4006$5;
					FBSTRING TMP$4007$5;
					FBSTRING TMP$4008$5;
					FBSTRING TMP$4009$5;
					FBSTRING TMP$4011$5;
					FBSTRING TMP$4012$5;
					FBSTRING TMP$4013$5;
					__builtin_memset( &TMP$3980$5, 0, 12 );
					__builtin_memset( &TMP$3978$5, 0, 12 );
					FBSTRING* vr$137 = fb_StrConcat( &TMP$3978$5, (void*)"cmp DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3979$5, 0, 12 );
					FBSTRING* vr$140 = fb_StrConcat( &TMP$3979$5, (void*)vr$137, -1, (void*)"], 104", 7 );
					fb_StrAssign( (void*)&TMP$3980$5, -1, (void*)vr$140, -1, 0 );
					HWRITEASM64( &TMP$3980$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3980$5 );
					__builtin_memset( &TMP$3982$5, 0, 12 );
					__builtin_memset( &TMP$3981$5, 0, 12 );
					FBSTRING* vr$148 = fb_StrConcat( &TMP$3981$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$3982$5, -1, (void*)vr$148, -1, 0 );
					HWRITEASM64( &TMP$3982$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3982$5 );
					__builtin_memset( &TMP$3986$5, 0, 12 );
					__builtin_memset( &TMP$3984$5, 0, 12 );
					FBSTRING* vr$156 = fb_StrConcat( &TMP$3984$5, (void*)"mov eax, DWORD PTR 4[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3985$5, 0, 12 );
					FBSTRING* vr$159 = fb_StrConcat( &TMP$3985$5, (void*)vr$156, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3986$5, -1, (void*)vr$159, -1, 0 );
					HWRITEASM64( &TMP$3986$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3986$5 );
					__builtin_memset( &TMP$3991$5, 0, 12 );
					__builtin_memset( &TMP$3989$5, 0, 12 );
					FBSTRING* vr$167 = fb_StrConcat( &TMP$3989$5, (void*)"add DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3990$5, 0, 12 );
					FBSTRING* vr$170 = fb_StrConcat( &TMP$3990$5, (void*)vr$167, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3991$5, -1, (void*)vr$170, -1, 0 );
					HWRITEASM64( &TMP$3991$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3991$5 );
					__builtin_memset( &TMP$3995$5, 0, 12 );
					__builtin_memset( &TMP$3993$5, 0, 12 );
					FBSTRING* vr$178 = fb_StrConcat( &TMP$3993$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3994$5, 0, 12 );
					FBSTRING* vr$181 = fb_StrConcat( &TMP$3994$5, (void*)vr$178, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3995$5, -1, (void*)vr$181, -1, 0 );
					HWRITEASM64( &TMP$3995$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3995$5 );
					__builtin_memset( &TMP$3997$5, 0, 12 );
					__builtin_memset( &TMP$3996$5, 0, 12 );
					FBSTRING* vr$189 = fb_StrConcat( &TMP$3996$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$3997$5, -1, (void*)vr$189, -1, 0 );
					HWRITEASM64( &TMP$3997$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3997$5 );
					__builtin_memset( &TMP$3999$5, 0, 12 );
					__builtin_memset( &TMP$3998$5, 0, 12 );
					FBSTRING* vr$197 = fb_StrConcat( &TMP$3998$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3999$5, -1, (void*)vr$197, -1, 0 );
					HWRITEASM64( &TMP$3999$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3999$5 );
					__builtin_memset( &TMP$4003$5, 0, 12 );
					__builtin_memset( &TMP$4001$5, 0, 12 );
					FBSTRING* vr$205 = fb_StrConcat( &TMP$4001$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4002$5, 0, 12 );
					FBSTRING* vr$208 = fb_StrConcat( &TMP$4002$5, (void*)vr$205, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4003$5, -1, (void*)vr$208, -1, 0 );
					HWRITEASM64( &TMP$4003$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4003$5 );
					__builtin_memset( &TMP$4007$5, 0, 12 );
					__builtin_memset( &TMP$4005$5, 0, 12 );
					FBSTRING* vr$216 = fb_StrConcat( &TMP$4005$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4006$5, 0, 12 );
					FBSTRING* vr$219 = fb_StrConcat( &TMP$4006$5, (void*)vr$216, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$4007$5, -1, (void*)vr$219, -1, 0 );
					HWRITEASM64( &TMP$4007$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4007$5 );
					__builtin_memset( &TMP$4009$5, 0, 12 );
					__builtin_memset( &TMP$4008$5, 0, 12 );
					FBSTRING* vr$227 = fb_StrConcat( &TMP$4008$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$4009$5, -1, (void*)vr$227, -1, 0 );
					HWRITEASM64( &TMP$4009$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4009$5 );
					__builtin_memset( &TMP$4013$5, 0, 12 );
					int32 vr$233 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$4011$5, 0, 12 );
					FBSTRING* vr$237 = fb_StrConcat( &TMP$4011$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$233 << (2 & 31))), 0 );
					__builtin_memset( &TMP$4012$5, 0, 12 );
					FBSTRING* vr$240 = fb_StrConcat( &TMP$4012$5, (void*)vr$237, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$4013$5, -1, (void*)vr$240, -1, 0 );
					HWRITEASM64( &TMP$4013$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4013$5 );
				}
				goto label$3013;
				label$3014:;
				{
					FBSTRING TMP$4016$5;
					FBSTRING TMP$4017$5;
					FBSTRING TMP$4018$5;
					FBSTRING TMP$4019$5;
					FBSTRING TMP$4020$5;
					FBSTRING TMP$4022$5;
					FBSTRING TMP$4023$5;
					FBSTRING TMP$4024$5;
					FBSTRING TMP$4026$5;
					FBSTRING TMP$4027$5;
					FBSTRING TMP$4028$5;
					FBSTRING TMP$4029$5;
					FBSTRING TMP$4030$5;
					FBSTRING TMP$4031$5;
					FBSTRING TMP$4032$5;
					FBSTRING TMP$4033$5;
					FBSTRING TMP$4034$5;
					FBSTRING TMP$4035$5;
					FBSTRING TMP$4036$5;
					FBSTRING TMP$4037$5;
					FBSTRING TMP$4038$5;
					FBSTRING TMP$4039$5;
					FBSTRING TMP$4040$5;
					FBSTRING TMP$4041$5;
					FBSTRING TMP$4042$5;
					FBSTRING TMP$4043$5;
					FBSTRING TMP$4044$5;
					FBSTRING TMP$4045$5;
					FBSTRING TMP$4046$5;
					__builtin_memset( &TMP$4018$5, 0, 12 );
					__builtin_memset( &TMP$4016$5, 0, 12 );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$4016$5, (void*)"cmp DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4017$5, 0, 12 );
					FBSTRING* vr$251 = fb_StrConcat( &TMP$4017$5, (void*)vr$248, -1, (void*)"], 40", 6 );
					fb_StrAssign( (void*)&TMP$4018$5, -1, (void*)vr$251, -1, 0 );
					HWRITEASM64( &TMP$4018$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4018$5 );
					__builtin_memset( &TMP$4020$5, 0, 12 );
					__builtin_memset( &TMP$4019$5, 0, 12 );
					FBSTRING* vr$259 = fb_StrConcat( &TMP$4019$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$4020$5, -1, (void*)vr$259, -1, 0 );
					HWRITEASM64( &TMP$4020$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4020$5 );
					__builtin_memset( &TMP$4024$5, 0, 12 );
					__builtin_memset( &TMP$4022$5, 0, 12 );
					FBSTRING* vr$267 = fb_StrConcat( &TMP$4022$5, (void*)"mov eax, DWORD PTR [", 21, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4023$5, 0, 12 );
					FBSTRING* vr$270 = fb_StrConcat( &TMP$4023$5, (void*)vr$267, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4024$5, -1, (void*)vr$270, -1, 0 );
					HWRITEASM64( &TMP$4024$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4024$5 );
					__builtin_memset( &TMP$4028$5, 0, 12 );
					__builtin_memset( &TMP$4026$5, 0, 12 );
					FBSTRING* vr$278 = fb_StrConcat( &TMP$4026$5, (void*)"add DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4027$5, 0, 12 );
					FBSTRING* vr$281 = fb_StrConcat( &TMP$4027$5, (void*)vr$278, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$4028$5, -1, (void*)vr$281, -1, 0 );
					HWRITEASM64( &TMP$4028$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4028$5 );
					__builtin_memset( &TMP$4031$5, 0, 12 );
					__builtin_memset( &TMP$4029$5, 0, 12 );
					FBSTRING* vr$289 = fb_StrConcat( &TMP$4029$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4030$5, 0, 12 );
					FBSTRING* vr$292 = fb_StrConcat( &TMP$4030$5, (void*)vr$289, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4031$5, -1, (void*)vr$292, -1, 0 );
					HWRITEASM64( &TMP$4031$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4031$5 );
					__builtin_memset( &TMP$4033$5, 0, 12 );
					__builtin_memset( &TMP$4032$5, 0, 12 );
					FBSTRING* vr$300 = fb_StrConcat( &TMP$4032$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$4033$5, -1, (void*)vr$300, -1, 0 );
					HWRITEASM64( &TMP$4033$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4033$5 );
					__builtin_memset( &TMP$4035$5, 0, 12 );
					__builtin_memset( &TMP$4034$5, 0, 12 );
					FBSTRING* vr$308 = fb_StrConcat( &TMP$4034$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$4035$5, -1, (void*)vr$308, -1, 0 );
					HWRITEASM64( &TMP$4035$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4035$5 );
					__builtin_memset( &TMP$4038$5, 0, 12 );
					__builtin_memset( &TMP$4036$5, 0, 12 );
					FBSTRING* vr$316 = fb_StrConcat( &TMP$4036$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4037$5, 0, 12 );
					FBSTRING* vr$319 = fb_StrConcat( &TMP$4037$5, (void*)vr$316, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$4038$5, -1, (void*)vr$319, -1, 0 );
					HWRITEASM64( &TMP$4038$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4038$5 );
					__builtin_memset( &TMP$4041$5, 0, 12 );
					__builtin_memset( &TMP$4039$5, 0, 12 );
					FBSTRING* vr$327 = fb_StrConcat( &TMP$4039$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$4040$5, 0, 12 );
					FBSTRING* vr$330 = fb_StrConcat( &TMP$4040$5, (void*)vr$327, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$4041$5, -1, (void*)vr$330, -1, 0 );
					HWRITEASM64( &TMP$4041$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4041$5 );
					__builtin_memset( &TMP$4043$5, 0, 12 );
					__builtin_memset( &TMP$4042$5, 0, 12 );
					FBSTRING* vr$338 = fb_StrConcat( &TMP$4042$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$4043$5, -1, (void*)vr$338, -1, 0 );
					HWRITEASM64( &TMP$4043$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4043$5 );
					__builtin_memset( &TMP$4046$5, 0, 12 );
					int32 vr$344 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$4044$5, 0, 12 );
					FBSTRING* vr$348 = fb_StrConcat( &TMP$4044$5, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$344 << (2 & 31))), 0 );
					__builtin_memset( &TMP$4045$5, 0, 12 );
					FBSTRING* vr$351 = fb_StrConcat( &TMP$4045$5, (void*)vr$348, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$4046$5, -1, (void*)vr$351, -1, 0 );
					HWRITEASM64( &TMP$4046$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$4046$5 );
				}
				label$3013:;
			}
			goto label$3011;
			label$3012:;
			{
				FBSTRING TMP$4048$4;
				FBSTRING TMP$4049$4;
				FBSTRING TMP$4050$4;
				FBSTRING TMP$4051$4;
				FBSTRING TMP$4052$4;
				if( *(int32*)V1$1 != 3 ) goto label$3016;
				{
					int32 vr$358 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					SAVEREG$1 = vr$358;
				}
				goto label$3015;
				label$3016:;
				if( *(int32*)V1$1 != 4 ) goto label$3017;
				{
					int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					SAVEREG$1 = vr$361;
				}
				label$3017:;
				label$3015:;
				if( (-(*(int32*)V1$1 != 4) | -(-((*(int32*)((uint8*)V1$1 + 4) & 480) != 0) == -1)) == 0 ) goto label$3019;
				{
					_EMITADDR( 76, V1$1, VR$1 );
					if( *(int32*)V1$1 != 3 ) goto label$3021;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
					}
					goto label$3020;
					label$3021:;
					if( *(int32*)V1$1 != 4 ) goto label$3022;
					{
						*(int32*)((int32)(int32*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)V1$1 + 12);
					}
					label$3022:;
					label$3020:;
					struct $6IRVREG* vr$376 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, 8ll );
					TEMPO1$1 = vr$376;
					_EMITBOP( 28, V1$1, TEMPO1$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u );
				}
				goto label$3018;
				label$3019:;
				{
					*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
				}
				label$3018:;
				__builtin_memset( &TMP$4052$4, 0, 12 );
				int32 vr$381 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				int32 vr$384 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$4048$4, 0, 12 );
				FBSTRING* vr$388 = fb_StrConcat( &TMP$4048$4, (void*)"mov ", 5, *(void**)((int32)(char**)REGSTRQ$ + (vr$384 << (2 & 31))), 0 );
				__builtin_memset( &TMP$4049$4, 0, 12 );
				FBSTRING* vr$391 = fb_StrConcat( &TMP$4049$4, (void*)vr$388, -1, (void*)", [", 4 );
				__builtin_memset( &TMP$4050$4, 0, 12 );
				FBSTRING* vr$394 = fb_StrConcat( &TMP$4050$4, (void*)vr$391, -1, *(void**)((int32)(char**)REGSTRQ$ + (vr$381 << (2 & 31))), 0 );
				__builtin_memset( &TMP$4051$4, 0, 12 );
				FBSTRING* vr$397 = fb_StrConcat( &TMP$4051$4, (void*)vr$394, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$4052$4, -1, (void*)vr$397, -1, 0 );
				HWRITEASM64( &TMP$4052$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$4052$4 );
			}
			label$3011:;
		}
		goto label$2994;
		label$3009:;
		if( OP$1 != 110 ) goto label$3023;
		label$3024:;
		{
			if( *(int32*)V1$1 != 3 ) goto label$3026;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$3030:;
					{
						if( *(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$3032;
						{
							*(int32*)((int32)(int32*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$3029;
						}
						label$3032:;
						label$3031:;
					}
					label$3028:;
					IREG$5 = IREG$5 + 1;
					label$3027:;
					if( IREG$5 <= 15 ) goto label$3030;
					label$3029:;
				}
			}
			label$3026:;
			label$3025:;
		}
		goto label$2994;
		label$3023:;
		if( OP$1 != 111 ) goto label$3033;
		label$3034:;
		{
			if( *(boolean*)((uint8*)&CTX$ + 232) == (boolean)0 ) goto label$3036;
			{
				struct $6IRVREG* vr$407 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$407;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				struct $6IRVREG* vr$408 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO2$1 = vr$408;
				_EMITADDR( 22, V2$1, TEMPO2$1 );
				_EMITMEM( 105, TEMPO1$1, TEMPO2$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40) );
			}
			goto label$3035;
			label$3036:;
			{
				_EMITSTORE( V1$1, V2$1 );
			}
			label$3035:;
		}
		label$3033:;
		label$2994:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&REGVALIST$1 );
	label$2991:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$3037:;
	label$3038:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$3039:;
	label$3040:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$3041:;
	label$3042:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$3043:;
	label$3044:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$3045:;
	label$3046:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$3047:;
	label$3048:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$3049:;
	label$3050:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$3051:;
	label$3052:;
}

static void _EMITFBCTINFBEGIN( void )
{
	label$3053:;
	label$3054:;
}

static void _EMITFBCTINFEND( void )
{
	label$3055:;
	label$3056:;
}

static void _EMITSPILLREGS( void )
{
	label$3057:;
	label$3058:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$3059:;
	label$3060:;
}

static void CFI_WINDOWS_ASM_CODE( FBSTRING* STATEMENT$1 )
{
	label$3063:;
	if( *(int32*)((uint8*)&ENV$ + 180) != -1 ) goto label$3066;
	{
		if( *(int32*)((uint8*)&CTX$ + 228) != 0 ) goto label$3068;
		{
			HWRITEASM64( STATEMENT$1, 0 );
		}
		label$3068:;
		label$3067:;
	}
	label$3066:;
	label$3065:;
	label$3064:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$3070:;
	_ZN6DBGCTXC1Ev( &CTXDBG$ );
	_ZN13ASM64_CONTEXTC1Ev( &CTX$ );
	label$3071:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$3073:;
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTAB$, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev );
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTR$, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev );
	_ZN13ASM64_CONTEXTD1Ev( &CTX$ );
	_ZN6DBGCTXD1Ev( &CTXDBG$ );
	label$3074:;
}
