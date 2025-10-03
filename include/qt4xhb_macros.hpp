//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QT4XHB_MACROS_H
#define QT4XHB_MACROS_H

#include "qt4xhb_macros_activeqt.hpp"
#include "qt4xhb_macros_qtcore.hpp"
#include "qt4xhb_macros_qtdeclarative.hpp"
#include "qt4xhb_macros_qtdesigner.hpp"
#include "qt4xhb_macros_qtgui.hpp"
#include "qt4xhb_macros_qthelp.hpp"
#include "qt4xhb_macros_qtmultimedia.hpp"
#include "qt4xhb_macros_qtnetwork.hpp"
#include "qt4xhb_macros_qtopengl.hpp"
#include "qt4xhb_macros_qtscript.hpp"
#include "qt4xhb_macros_qtscripttools.hpp"
#include "qt4xhb_macros_qtsql.hpp"
#include "qt4xhb_macros_qtsvg.hpp"
#include "qt4xhb_macros_qttest.hpp"
#include "qt4xhb_macros_qtuitools.hpp"
#include "qt4xhb_macros_qtwebkit.hpp"
#include "qt4xhb_macros_qtxml.hpp"
#include "qt4xhb_macros_qtxmlpatterns.hpp"

#define ISBETWEEN(a, b)                                     hb_pcount() >= a && hb_pcount() <= b
#define ISNUMPAR(a)                                         hb_pcount() == a
#define INHERITS(a, b)                                      Qt4xHb::isObjectDerivedFrom(a, b)

#define ISQSTRINGREF(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QStringRef")
#define PQSTRINGREF(n)                                      static_cast<QStringRef*>(Qt4xHb::itemGetPtr(n))
#define PQLATIN1CHAR(n)                                     static_cast<QLatin1Char*>(Qt4xHb::itemGetPtr(n))
#define ISQLATIN1STRING(n)                                  Qt4xHb::isObjectDerivedFrom(n, "QLatin1String")
#define PQLATIN1STRING(n)                                   static_cast<QLatin1String*>(Qt4xHb::itemGetPtr(n))
#define PQXMLSTREAMNAMESPACEDECLARATIONS(n)                 static_cast<QXmlStreamNamespaceDeclarations*>(Qt4xHb::itemGetPtr(n))
#define ISQMATRIX(n)                                        Qt4xHb::isObjectDerivedFrom(n, "QMatrix")
#define PQMATRIX(n)                                         static_cast<QMatrix*>(Qt4xHb::itemGetPtr(n))
#define ISQQUATERNION(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QQuaternion")
#define PQQUATERNION(n)                                     static_cast<QQuaternion*>(Qt4xHb::itemGetPtr(n))
#define ISQPLATFORMGLCONTEXT(n)                             Qt4xHb::isObjectDerivedFrom(n, "QPlatformGLContext")
#define PQPLATFORMGLCONTEXT(n)                              static_cast<QPlatformGLContext*>(Qt4xHb::itemGetPtr(n))
#define PQTEXTENGINE(n)                                     static_cast<QTextEngine*>(Qt4xHb::itemGetPtr(n))
#define PQSTRINGLIST(n)                                     Qt4xHb::convert_array_parameter_to_qstringlist(n)
#define OPQSTRINGLIST(n, v)                                 HB_ISNIL(n) ? v : Qt4xHb::convert_array_parameter_to_qstringlist(n)
#define PQVARIANTLIST(n)                                    Qt4xHb::convert_array_parameter_to_qvariantlist(n)
#define OPQVARIANTLIST(n, v)                                HB_ISNIL(n) ? v : Qt4xHb::convert_array_parameter_to_qvariantlist(n)

// macros for parameters
#define PBOOL(n)                                            static_cast<bool>(hb_parl(n))
#define PSHORT(n)                                           static_cast<short>(hb_parni(n))
#define PUSHORT(n)                                          static_cast<ushort>(hb_parni(n))
#define PINT(n)                                             static_cast<int>(hb_parni(n))
#define PUINT(n)                                            static_cast<uint>(hb_parni(n))
#define PCHAR(n)                                            static_cast<char>(hb_parni(n))
#define PUCHAR(n)                                           static_cast<uchar>(hb_parni(n))
#define PUNSIGNEDLONG(n)                                    static_cast<unsigned long>(hb_parnl(n))
#define PFLOAT(n)                                           static_cast<float>(hb_parnd(n))
#define PDOUBLE(n)                                          static_cast<double>(hb_parnd(n))
#define PQREAL(n)                                           static_cast<qreal>(hb_parnd(n))
#define PQINT8(n)                                           static_cast<qint8>(hb_parni(n))
#define PQINT16(n)                                          static_cast<qint16>(hb_parni(n))
#define PQINT32(n)                                          static_cast<qint32>( hb_parni(n))
#define PQINT64(n)                                          static_cast<qint64>(hb_parnll(n))
#define PQUINT8(n)                                          static_cast<quint8>(hb_parni(n))
#define PQUINT16(n)                                         static_cast<quint16>(hb_parni(n))
#define PQUINT32(n)                                         static_cast<quint32>(hb_parni(n))
#define PQUINT64(n)                                         static_cast<quint64>(hb_parnll(n))
#define PQLONGLONG(n)                                       static_cast<qlonglong>(hb_parnll(n))
#define PQULONGLONG(n)                                      static_cast<qulonglong>(hb_parnll(n))
//#define PQREAL(n, d)                                        ( qreal ) HB_ISNIL(n)  ? d : hb_parnd(n)
//#define PQSTRING(n)                                         _qt5xhb_convert_string_parameter_to_qstring(n)
#define PQSTRING(n)                                         QString::fromAscii(hb_parc(n))
//#define PQSTRING(n)                                         QString::fromLatin1(hb_parc(n))
//#define PQSTRING(n)                                         QString::fromUtf8(hb_parc(n))
#define PQSTRINGLIST(n)                                     Qt4xHb::convert_array_parameter_to_qstringlist(n)
#define PGLBOOLEAN(n)                                       static_cast<GLboolean>(hb_parl(n))
#define PGLINT(n)                                           static_cast<GLint>(hb_parni(n))
#define PGLUINT(n)                                          static_cast<GLuint>(hb_parni(n))
#define PGLFLOAT(n)                                         static_cast<GLfloat>(hb_parnd(n))
#define PGLENUM(n)                                          static_cast<GLenum>(hb_parni(n))
#define PGLBITFIELD(n)                                      static_cast<GLbitfield>(hb_parni(n))
#define PGLSIZEI(n)                                         static_cast<GLsizei>(hb_parni(n))
#define PGLCLAMPF(n)                                        static_cast<GLclampf>(hb_parnd(n))
#define PCONSTCHAR(n)                                       static_cast<const char*>(hb_parc(n))
#define PCONSTUCHAR(n)                                      reinterpret_cast<const uchar*>(hb_parc(n))
#define PQRGB(n)                                            static_cast<uint>(hb_parni(n))
#define PBLOCKORSYMBOL(n)                                   hb_param(n, HB_IT_BLOCK | HB_IT_SYMBOL)

// macros for optional parameters
#define OPBOOL(n, v)                                        static_cast<bool>(HB_ISNIL(n) ? v : hb_parl(n))
#define OPCHAR(n, v)                                        static_cast<char>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPSHORT(n, v)                                       static_cast<short>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPUSHORT(n, v)                                      static_cast<ushort>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPINT(n, v)                                         static_cast<int>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPUINT(n, v)                                        static_cast<uint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPFLOAT(n, v)                                       static_cast<float>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPDOUBLE(n, v)                                      static_cast<double>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPQREAL(n, v)                                       static_cast<qreal>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPQINT8(n, v)                                       static_cast<qint8>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT16(n, v)                                      static_cast<qint16>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT32(n, v)                                      static_cast<qint32>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT64(n, v)                                      static_cast<qint64>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPQUINT8(n, v)                                      static_cast<quint8>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT16(n, v)                                     static_cast<quint16>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT32(n, v)                                     static_cast<quint32>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT64(n, v)                                     static_cast<quint64>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPQLONGLONG(n, v)                                   static_cast<qlonglong>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPQULONGLONG(n, v)                                  static_cast<qulonglong>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPQSTRING(n, v)                                     HB_ISNIL(n) ? v : QString::fromAscii(hb_parc(n))
//#define OPQSTRING(n, v)                                     HB_ISNIL(n) ? v : QString::fromLatin1(hb_parc(n))
//#define OPQSTRING(n, v)                                     HB_ISNIL(n) ? v : QString::fromUtf8(hb_parc(n))
#define OPGLBOOLEAN(n, v)                                   static_cast<GLboolean>(HB_ISNIL(n) ? v : hb_parl(n))
#define OPGLINT(n, v)                                       static_cast<GLint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLUINT(n, v)                                      static_cast<GLuint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLFLOAT(n, v)                                     static_cast<GLfloat>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPGLENUM(n, v)                                      static_cast<GLenum>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLBITFIELD(n, v)                                  static_cast<GLbitfield>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLSIZEI(n, v)                                     static_cast<GLsizei>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPCONSTCHAR(n, v)                                   ( const char * ) HB_ISNIL(n) ? v : hb_parc(n)

// macros for return's
#define RQSTRING(x)                                         hb_retc(static_cast<const char*>(x.toAscii().data()))
//#define RQSTRING(x)                                         ( const char * ) x.toLatin1().data()
//#define RQSTRING(x)                                         ( const char * ) x.toUtf8().data()
#define RBOOL(x)                                            hb_retl(static_cast<bool>(x))
#define RSHORT(x)                                           hb_retni(x)
#define RUSHORT(x)                                          hb_retni(x)
#define RINT(x)                                             hb_retni(x)
#define RUINT(x)                                            hb_retni(x)
#define RFLOAT(x)                                           hb_retnd(x)
#define RDOUBLE(x)                                          hb_retnd(x)
#define RLONG(x)                                            hb_retnl(x)
#define RULONG(x)                                           hb_retnl(x)
#define RQREAL(x)                                           hb_retnd(x)
#define RQINT8(x)                                           hb_retni(x)
#define RQINT16(x)                                          hb_retni(x)
#define RQINT32(x)                                          hb_retni(x)
#define RQINT64(x)                                          hb_retnll(x)
#define RQUINT8(x)                                          hb_retni(x)
#define RQUINT16(x)                                         hb_retni(x)
#define RQUINT32(x)                                         hb_retni(x)
#define RQUINT64(x)                                         hb_retnll(x)
#define RQLONGLONG(x)                                       hb_retnll(x)
#define RQULONGLONG(x)                                      hb_retnll(x)
#define RENUM(x)                                            hb_retni(x)
#define RGLBOOLEAN(x)                                       hb_parl(static_cast<GLboolean>(x))
#define RGLINT(x)                                           hb_parni(static_cast<GLint>(x))
#define RGLUINT(x)                                          hb_parni(static_cast<GLuint>(x))
#define RGLFLOAT(x)                                         hb_parnd(static_cast<GLfloat>(x))
#define RGLENUM(x)                                          hb_parni(static_cast<GLenum>(x))
#define RGLBITFIELD(x)                                      hb_parni(static_cast<GLbitfield>(x))
#define RGLSIZEI(x)                                         hb_parni(static_cast<GLsizei>(x))
#define RQSTRINGLIST(x)                                     Qt4xHb::convert_qstringlist_to_array(x)
#define RQRGB(x)                                            hb_retni(x)

// conversion from QString to string
#define QSTRINGTOSTRING(x)                                  static_cast<const char*>(x.toAscii().data())

#define ISNUMORNIL(n) (HB_ISNUM(n) || HB_ISNIL(n))
#define ISCHARORNIL(n) (HB_ISCHAR(n) || HB_ISNIL(n))
#define ISLOGORNIL(n) (HB_ISLOG(n) || HB_ISNIL(n))

#define ISQOBJECTORNIL(n) (ISQOBJECT(n) || HB_ISNIL(n))
#define ISQWIDGETORNIL(n) (ISQWIDGET(n) || HB_ISNIL(n))
#define ISQVARIANTORNIL(n) (ISQVARIANT(n) || HB_ISNIL(n))
#define ISQSTYLEOPTIONORNIL(n) (ISQSTYLEOPTION(n) || HB_ISNIL(n))
#define ISQMODELINDEXORNIL(n) (ISQMODELINDEX(n) || HB_ISNIL(n))

#define ISBLOCKORSYMBOL(n) (HB_ISBLOCK(n) || HB_ISSYMBOL(n))

#endif // QT4XHB_MACROS_H
