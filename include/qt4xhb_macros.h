/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT4XHB_MACROS_H
#define QT4XHB_MACROS_H

#include "qt4xhb_macros_activeqt.h"
#include "qt4xhb_macros_qtcore.h"
#include "qt4xhb_macros_qtdeclarative.h"
#include "qt4xhb_macros_qtdesigner.h"
#include "qt4xhb_macros_qtgui.h"
#include "qt4xhb_macros_qthelp.h"
#include "qt4xhb_macros_qtmultimedia.h"
#include "qt4xhb_macros_qtnetwork.h"
#include "qt4xhb_macros_qtopengl.h"
#include "qt4xhb_macros_qtscript.h"
#include "qt4xhb_macros_qtscripttools.h"
#include "qt4xhb_macros_qtsql.h"
#include "qt4xhb_macros_qtsvg.h"
#include "qt4xhb_macros_qttest.h"
#include "qt4xhb_macros_qtuitools.h"
#include "qt4xhb_macros_qtwebkit.h"
#include "qt4xhb_macros_qtxml.h"
#include "qt4xhb_macros_qtxmlpatterns.h"

#define ISOPTLOG(n) (ISLOG(n)||ISNIL(n))
#define ISOPTNUM(n) (ISNUM(n)||ISNIL(n))
#define ISOPTCHAR(n) (ISCHAR(n)||ISNIL(n))
#define ISOPTPOINTER(n) (ISPOINTER(n)||ISNIL(n))
#define ISOPTOBJECT(n) (ISOBJECT(n)||ISNIL(n))
#define ISOPTARRAY(n) (ISARRAY(n)||ISNIL(n))

#define ISBETWEEN(a,b)                                      hb_pcount() >= a && hb_pcount() <= b
#define ISNUMPAR(a)                                         hb_pcount() == a
#define INHERITS(a,b)                                       _qt4xhb_isObjectDerivedFrom(a,b)

// macros for parameters
#define PBOOL(n)                                            (bool) hb_parl(n)
#define PSHORT(n)                                           (short) hb_parni(n)
#define PUSHORT(n)                                          (ushort) hb_parni(n)
#define PINT(n)                                             (int) hb_parni(n)
#define PUINT(n)                                            (uint) hb_parni(n)
#define PCHAR(n)                                            (char) hb_parni(n)
#define PUNSIGNEDLONG(n)                                    (unsigned long) hb_parnl(n)
#define PFLOAT(n)                                           (float) hb_parnd(n)
#define PDOUBLE(n)                                          (double) hb_parnd(n)
#define PQREAL(n)                                           (qreal) hb_parnd(n)
#define PQINT8(n)                                           (qint8) hb_parni(n)
#define PQINT16(n)                                          (qint16) hb_parni(n)
#define PQINT32(n)                                          (qint32) hb_parni(n)
#define PQINT64(n)                                          (qint64) hb_parnll(n)
#define PQUINT8(n)                                          (quint8) hb_parni(n)
#define PQUINT16(n)                                         (quint16) hb_parni(n)
#define PQUINT32(n)                                         (quint32) hb_parni(n)
#define PQUINT64(n)                                         (quint64) hb_parnll(n)
#define PQLONGLONG(n)                                       (qlonglong) hb_parnll(n)
#define PQULONGLONG(n)                                      (qulonglong) hb_parnll(n)
//#define PQREAL(n,d)                                         (qreal) ISNIL(n)? d : hb_parnd(n)
//#define PQSTRING(n)                                         _qt5xhb_convert_string_parameter_to_qstring(n)
#define PQSTRING(n)                                         QString::fromAscii( hb_parc(n) )
//#define PQSTRING(n)                                         QString::fromLatin1( hb_parc(n) )
//#define PQSTRING(n)                                         QString::fromUtf8( hb_parc(n) )
#define PQSTRINGLIST(n)                                     _qt4xhb_convert_array_parameter_to_qstringlist(n)
#define PGLBOOLEAN(n)                                       (GLboolean) hb_parl(n)
#define PGLINT(n)                                           (GLint) hb_parni(n)
#define PGLUINT(n)                                          (GLuint) hb_parni(n)
#define PGLFLOAT(n)                                         (GLfloat) hb_parnd(n)
#define PGLENUM(n)                                          (GLenum) hb_parni(n)
#define PGLBITFIELD(n)                                      (GLbitfield) hb_parni(n)
#define PGLSIZEI(n)                                         (GLsizei) hb_parni(n)
#define PCONSTCHAR(n)                                       (const char *) hb_parc(n)
#define PCONSTUCHAR(n)                                      (const uchar *) hb_parc(n)
#define PQRGB(n)                                            (uint) hb_parni(n)

// macros for optional parameters
#define OPBOOL(n,v)                                         (bool) ISNIL(n)? v : hb_parl(n)
#define OPSHORT(n,v)                                        (short) ISNIL(n)? v : hb_parni(n)
#define OPUSHORT(n,v)                                       (ushort) ISNIL(n)? v : hb_parni(n)
#define OPINT(n,v)                                          (int) ISNIL(n)? v : hb_parni(n)
#define OPUINT(n,v)                                         (uint) ISNIL(n)? v : hb_parni(n)
#define OPFLOAT(n,v)                                        (float) ISNIL(n)? v : hb_parnd(n)
#define OPDOUBLE(n,v)                                       (double) ISNIL(n)? v : hb_parnd(n)
#define OPQREAL(n,v)                                        (qreal) ISNIL(n)? v : hb_parnd(n)
#define OPQINT8(n,v)                                        (qint8) ISNIL(n)? v : hb_parni(n)
#define OPQINT16(n,v)                                       (qint16) ISNIL(n)? v : hb_parni(n)
#define OPQINT32(n,v)                                       (qint32) ISNIL(n)? v : hb_parni(n)
#define OPQINT64(n,v)                                       (qint64) ISNIL(n)? v : hb_parnll(n)
#define OPQUINT8(n,v)                                       (quint8) ISNIL(n)? v : hb_parni(n)
#define OPQUINT16(n,v)                                      (quint16) ISNIL(n)? v : hb_parni(n)
#define OPQUINT32(n,v)                                      (quint32) ISNIL(n)? v : hb_parni(n)
#define OPQUINT64(n,v)                                      (quint64) ISNIL(n)? v : hb_parnll(n)
#define OPQLONGLONG(n,v)                                    (qlonglong) ISNIL(n)? v : hb_parnll(n)
#define OPQULONGLONG(n,v)                                   (qulonglong) ISNIL(n)? v : hb_parnll(n)
#define OPQSTRING(n,v)                                      ISNIL(n)? v : QString::fromAscii( hb_parc(n) )
//#define OPQSTRING(n,v)                                      ISNIL(n)? v : QString::fromLatin1( hb_parc(n) )
//#define OPQSTRING(n,v)                                      ISNIL(n)? v : QString::fromUtf8( hb_parc(n) )
#define OPGLBOOLEAN(n,v)                                    (GLboolean) ISNIL(n)? v : hb_parl(n)
#define OPGLINT(n,v)                                        (GLint) ISNIL(n)? v : hb_parni(n)
#define OPGLUINT(n,v)                                       (GLuint) ISNIL(n)? v : hb_parni(n)
#define OPGLFLOAT(n,v)                                      (GLfloat) ISNIL(n)? v : hb_parnd(n)
#define OPGLENUM(n,v)                                       (GLenum) ISNIL(n)? v : hb_parni(n)
#define OPGLBITFIELD(n,v)                                   (GLbitfield) ISNIL(n)? v : hb_parni(n)
#define OPGLSIZEI(n,v)                                      (GLsizei) ISNIL(n)? v : hb_parni(n)
#define OPCONSTCHAR(n,v)                                    (const char *) ISNIL(n)? v : hb_parc(n)

// macros for return's
#define RQSTRING(x)                                         hb_retc( (const char *) x.toAscii().data() )
//#define RQSTRING(x)                                         (const char *) x.toLatin1().data()
//#define RQSTRING(x)                                         (const char *) x.toUtf8().data()
#define RBOOL(x)                                            hb_retl( x )
#define RSHORT(x)                                           hb_retni( x )
#define RUSHORT(x)                                          hb_retni( x )
#define RINT(x)                                             hb_retni( x )
#define RUINT(x)                                            hb_retni( x )
#define RFLOAT(x)                                           hb_retnd( x )
#define RDOUBLE(x)                                          hb_retnd( x )
#define RQREAL(x)                                           hb_retnd( x )
#define RQINT8(x)                                           hb_retni( x )
#define RQINT16(x)                                          hb_retni( x )
#define RQINT32(x)                                          hb_retni( x )
#define RQINT64(x)                                          hb_retnll( x )
#define RQUINT8(x)                                          hb_retni( x )
#define RQUINT16(x)                                         hb_retni( x )
#define RQUINT32(x)                                         hb_retni( x )
#define RQUINT64(x)                                         hb_retnll( x )
#define RQLONGLONG(x)                                       hb_retnll( x )
#define RQULONGLONG(x)                                      hb_retnll( x )
#define RENUM(x)                                            hb_retni( x )
#define RGLBOOLEAN(x)                                       hb_parl( (GLboolean) x )
#define RGLINT(x)                                           hb_parni( (GLint) x )
#define RGLUINT(x)                                          hb_parni( (GLuint) x )
#define RGLFLOAT(x)                                         hb_parnd( (GLfloat) x )
#define RGLENUM(x)                                          hb_parni( (GLenum) x )
#define RGLBITFIELD(x)                                      hb_parni( (GLbitfield) x )
#define RGLSIZEI(x)                                         hb_parni( (GLsizei) x )
#define RQSTRINGLIST(x)                                     _qt4xhb_convert_qstringlist_to_array( x )
#define RQRGB(x)                                            hb_retni( x )

// conversion from QString to string
#define QSTRINGTOSTRING(x)                                  (const char *) x.toAscii().data()

#endif /* QT4XHB_MACROS_H */
