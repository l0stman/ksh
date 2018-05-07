/***********************************************************************
 *                                                                      *
 *               This software is part of the ast package               *
 *          Copyright (c) 1985-2013 AT&T Intellectual Property          *
 *                      and is licensed under the                       *
 *                 Eclipse Public License, Version 1.0                  *
 *                    by AT&T Intellectual Property                     *
 *                                                                      *
 *                A copy of the License is available at                 *
 *          http://www.eclipse.org/org/documents/epl-v10.html           *
 *         (with md5 checksum b35adb5213ca9657e911e9befb180842)         *
 *                                                                      *
 *              Information and Software Systems Research               *
 *                            AT&T Research                             *
 *                           Florham Park NJ                            *
 *                                                                      *
 *               Glenn Fowler <glenn.s.fowler@gmail.com>                *
 *                    David Korn <dgkorn@gmail.com>                     *
 *                     Phong Vo <phongvo@gmail.com>                     *
 *                                                                      *
 ***********************************************************************/
#ifndef _VMALLOC_H
#define _VMALLOC_H 1

/*	Public header file for the virtual malloc package.
**
**	Written by Kiem-Phong Vo, phongvo@gmail.com, 01/16/1994.
*/

#define VMALLOC_VERSION 20130509L

#if _PACKAGE_ast
#include <ast_std.h>
#else
#include <ast_common.h>
#endif

typedef struct Vmalloc_s Vmalloc_t;
typedef struct Vmstat_s Vmstat_t;
typedef struct Vmdisc_s Vmdisc_t;
typedef struct Vmethod_s Vmethod_t;
typedef struct Vmdata_s Vmdata_t;
typedef void *(*Vmemory_f)(Vmalloc_t *, void *, size_t, size_t, Vmdisc_t *);
typedef int(*Vmexcept_f)(Vmalloc_t *, int, void *, Vmdisc_t *);
typedef int(*Vmseg_f)(Vmalloc_t *, void *, size_t, Vmdisc_t *, void *);

struct Vmstat_s {
    size_t n_busy;   /* number of busy blocks	*/
    size_t s_busy;   /* total amount of busy space	*/
    size_t n_free;   /* number of free blocks	*/
    size_t s_free;   /* total amount of free space	*/
    size_t n_cache;  /* number of cached free blocks	*/
    size_t s_cache;  /* size of cached free blocks	*/
    size_t n_seg;    /* number of segments		*/
    size_t extent;   /* total size of region		*/
    size_t n_pack;   /* number of packs (Vmbest)	*/
    int mode;        /* region mode bits		*/
    char mesg[1024]; /* summary message		*/
};

struct Vmdisc_s {
    Vmemory_f memoryf;  /* raw memory obtaining/freeing	*/
    Vmexcept_f exceptf; /* exception handler		*/
    size_t round;       /* rounding requirement		*/
    size_t size;        /* actual size of discipline	*/
};

struct Vmethod_s {
    void *(*allocf)(Vmalloc_t *, size_t, int);
    void *(*resizef)(Vmalloc_t *, void *, size_t, int, int);
    int(*freef)(Vmalloc_t *, void *, int);
    int(*nopf)(Vmalloc_t *, void *, int); /* was addrf -- binary compatibility filler */
    int(*statf)(Vmalloc_t *, Vmstat_t *, int); /* was sizef */
    int(*eventf)(Vmalloc_t *, int, void *);  /* was compactf */
    void *(*alignf)(Vmalloc_t *, size_t, size_t, int);
    unsigned int meth;
};

struct Vmalloc_s {
    Vmethod_t meth; /* method for allocation	*/
    char *file;     /* file name			*/
    int line;       /* line number			*/
    char *func;     /* calling function		*/
    Vmdisc_t *disc; /* discipline to get space	*/
    Vmdata_t *data; /* the real region data		*/
};

/* bits used in Vmdata_t.mode field */
#define VM_DBCHECK 0000001   /* check for boundary overwrite	*/
#define VM_DBABORT 0000002   /* abort on any warning		*/
#define VM_MEMORYF 0000010   /* vm was allocated by memoryf	*/
#define VM_OPENFLAGS 0000013 /* flags passable to vmopen()	*/
#define VM_SETFLAGS 0000003  /* public-settable flags	*/

/* coexists with the above but for internal usage only */
#define VM_HEAPINIT 0001000 /* initializing Vmheap		*/

/* allocation methods - these bits share space with the above */
#define VM_MTBEST 0010000  /* Vmbest method		*/
#define VM_MTPOOL 0020000  /* Vmpool method		*/
#define VM_MTLAST 0040000  /* Vmlast method		*/
#define VM_MTDEBUG 0100000 /* Vmdebug method		*/
#define VM_METHODS 0170000 /* available allocation methods	*/

/* different modes for vmresize() */
#define VM_RSCOPY 0000001 /* copy old contents		*/
#define VM_RSMOVE 0000002 /* old contents is moveable	*/
#define VM_RSZERO 0000004 /* clear new space to zero's	*/

/* event types */
#define VM_OPEN 1     /* region being opened		*/
#define VM_ENDOPEN 2  /* end of region opening	*/
#define VM_CLOSE 3    /* announce being closed	*/
#define VM_ENDCLOSE 4 /* end of region closing	*/
#define VM_DISC 5     /* discipline being changed	*/
#define VM_NOMEM 6    /* can't obtain memory		*/

/* events used internally by various methods */
#define VM_CHECKARENA 101 /* checking arena integrity	*/
#define VM_BLOCKHEAD 102  /* get size of extra head	*/

extern Vmethod_t *Vmbest; /* best allocation		*/
extern Vmethod_t *Vmlast;     /* last-block allocation	*/
extern Vmethod_t *Vmpool;     /* pool allocation		*/
extern Vmethod_t *Vmdebug;    /* allocation with debugging	*/

extern Vmdisc_t *Vmdcsystem; /* get memory from the OS	*/
extern Vmdisc_t *Vmdcheap;   /* get memory from Vmheap	*/
extern Vmdisc_t *Vmdcsbrk;   /* like Vmdcsystem - legacy use	*/

extern Vmalloc_t _Vmheap;   /* use this with extreme care!	*/
extern Vmalloc_t *Vmheap;   /* == &_Vmheap but safe to use	*/
extern Vmalloc_t *Vmregion; /* malloc allocates from this	*/

extern Vmalloc_t *vmopen(Vmdisc_t *, Vmethod_t *, int);
extern int vmclose(Vmalloc_t *);
extern int vmclear(Vmalloc_t *);

extern Vmdisc_t *vmdisc(Vmalloc_t *, Vmdisc_t *);
extern Vmdisc_t *vmdcshare(char *, int, ssize_t, int);
extern Vmdisc_t *vmdcderive(Vmalloc_t *, ssize_t, int);

extern void *vmuserdata(Vmalloc_t *, unsigned int, ssize_t size);
extern void *vmmaddress(size_t);

extern void *vmalloc(Vmalloc_t *, size_t);
extern void *vmalign(Vmalloc_t *, size_t, size_t);
extern void *vmresize(Vmalloc_t *, void *, size_t, int);
extern int vmfree(Vmalloc_t *, void *);

extern int vmset(Vmalloc_t *, int, int);
extern void vmclrlock(int);

extern void *vmsegfind(Vmalloc_t *, void *);
extern int vmsegwalk(Vmalloc_t *, Vmseg_f, void *);

extern Vmalloc_t *vmregion(void *);

extern void *vmdbwatch(void *);
extern int vmdbcheck(Vmalloc_t *);
extern int vmdebug(int);

extern int vmtrace(int);
extern int vmstat(Vmalloc_t *, Vmstat_t *);

extern void *vmgetmem(Vmalloc_t *, void *, size_t);

extern char *vmstrdup(Vmalloc_t *, const char *);

#if !defined(_BLD_vmalloc) && !defined(_AST_STD_H) && !defined(__stdlib_h) && \
    !defined(__STDLIB_H) && !defined(_STDLIB_INCLUDED) && !defined(_INC_STDLIB)
extern void *malloc(size_t);
extern void *realloc(void *, size_t);
extern void free(void *);
extern void cfree(void *);
extern void *calloc(size_t, size_t);
extern void *memalign(size_t, size_t);
extern void *valloc(size_t);
#endif

/* to coerce any value to a Vmalloc_t*, make ANSI happy */
#define _VM_(vm) ((Vmalloc_t *)(vm))

/* enable recording of where a call originates from */
#ifdef VMFL

#if defined(__FILE__)
#define _VMFILE_(vm) (_VM_(vm)->file = (char *)__FILE__)
#else
#define _VMFILE_(vm) (_VM_(vm)->file = (char *)0)
#endif

#if defined(__LINE__)
#define _VMLINE_(vm) (_VM_(vm)->line = __LINE__)
#else
#define _VMLINE_(vm) (_VM_(vm)->line = 0)
#endif

#if defined(__FUNCTION__)
#define _VMFUNC_(vm) (_VM_(vm)->func = (char *)__FUNCTION__)
#else
#define _VMFUNC_(vm) (_VM_(vm)->func = (char *)0)
#endif

#define _VMFL_(vm) (_VMFILE_(vm), _VMLINE_(vm), _VMFUNC_(vm))

#define vmalloc(vm, sz) (_VMFL_(vm), (*(_VM_(vm)->meth.allocf))((vm), (sz), 0))
#define vmresize(vm, d, sz, type) \
    (_VMFL_(vm), (*(_VM_(vm)->meth.resizef))((vm), (void *)(d), (sz), (type), 0))
#define vmfree(vm, d) (_VMFL_(vm), (*(_VM_(vm)->meth.freef))((vm), (void *)(d), 0))
#define vmalign(vm, sz, align) (_VMFL_(vm), (*(_VM_(vm)->meth.alignf))((vm), (sz), (align), 0))

#undef malloc
#undef realloc
#undef calloc
#undef free
#undef memalign
#undef valloc

#if _map_malloc

#define malloc(s) (_VMFL_(Vmregion), _ast_malloc((size_t)(s)))
#define realloc(d, s) (_VMFL_(Vmregion), _ast_realloc((void *)(d), (size_t)(s)))
#define calloc(n, s) (_VMFL_(Vmregion), _ast_calloc((size_t)n, (size_t)(s)))
#define free(d) (_VMFL_(Vmregion), _ast_free((void *)(d)))
#define memalign(a, s) (_VMFL_(Vmregion), _ast_memalign((size_t)(a), (size_t)(s)))
#define valloc(s)		(_VMFL_(Vmregion), _ast_valloc((size_t)(s) )

#else

#if !_std_malloc

#define malloc(s) (_VMFL_(Vmregion), malloc((size_t)(s)))
#define realloc(d, s) (_VMFL_(Vmregion), realloc((void *)(d), (size_t)(s)))
#define calloc(n, s) (_VMFL_(Vmregion), calloc((size_t)n, (size_t)(s)))
#define free(d) (_VMFL_(Vmregion), free((void *)(d)))
#define memalign(a, s) (_VMFL_(Vmregion), memalign((size_t)(a), (size_t)(s)))
#define valloc(s)		(_VMFL_(Vmregion), valloc((size_t)(s) )
#ifndef strdup
#define strdup(s) (_VMFL_(Vmregion), (strdup)((char *)(s)))
#endif

#define cfree(d) free(d)

#endif /*!_std_malloc*/

#endif /*_map_malloc*/

#endif /*VMFL*/

/* non-debugging/profiling allocation calls */
#ifndef vmalloc
#define vmalloc(vm, sz) (*(_VM_(vm)->meth.allocf))((vm), (sz), 0)
#endif
#ifndef vmresize
#define vmresize(vm, d, sz, type) (*(_VM_(vm)->meth.resizef))((vm), (void *)(d), (sz), (type), 0)
#endif
#ifndef vmfree
#define vmfree(vm, d) (*(_VM_(vm)->meth.freef))((vm), (void *)(d), 0)
#endif
#ifndef vmalign
#define vmalign(vm, sz, align) (*(_VM_(vm)->meth.alignf))((vm), (sz), (align), 0)
#endif

#define vmdata(vm) ((void *)(_VM_(vm)->data))

#define vmoldof(v, p, t, n, x) (t *)vmresize((v), (p), sizeof(t) * (n) + (x), (VM_RSMOVE))
#define vmnewof(v, p, t, n, x) \
    (t *)vmresize((v), (p), sizeof(t) * (n) + (x), (VM_RSMOVE | VM_RSCOPY | VM_RSZERO))

#endif /* _VMALLOC_H */
