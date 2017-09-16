$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD connectNotifySignal1
   METHOD connectNotifySignal2
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read1
   METHOD reset
   METHOD type
   METHOD write1
   METHOD read2
   METHOD read3
   METHOD read4
   METHOD read
   METHOD write2
   METHOD write3
   METHOD write4
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeProperty>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeProperty ()
*/
$constructor=|new1|

/*
QDeclarativeProperty ( QObject * obj )
*/
$constructor=|new2|QObject *

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
*/
$constructor=|new3|QObject *,QDeclarativeContext *

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
*/
$constructor=|new4|QObject *,QDeclarativeEngine *

/*
QDeclarativeProperty ( QObject * obj, const QString & name )
*/
$constructor=|new5|QObject *,const QString &

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
*/
$constructor=|new6|QObject *,const QString &,QDeclarativeContext *

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
*/
$constructor=|new7|QObject *,const QString &,QDeclarativeEngine *

/*
QDeclarativeProperty ( const QDeclarativeProperty & other )
*/
$constructor=|new8|const QDeclarativeProperty &

//[1]QDeclarativeProperty ()
//[2]QDeclarativeProperty ( QObject * obj )
//[3]QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
//[4]QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
//[5]QDeclarativeProperty ( QObject * obj, const QString & name )
//[6]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
//[7]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
//[8]QDeclarativeProperty ( const QDeclarativeProperty & other )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW4 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW6 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool connectNotifySignal ( QObject * dest, const char * slot ) const
*/
$method=|bool|connectNotifySignal,connectNotifySignal1|QObject *,const char *

/*
bool connectNotifySignal ( QObject * dest, int method ) const
*/
$method=|bool|connectNotifySignal,connectNotifySignal2|QObject *,int

//[1]bool connectNotifySignal ( QObject * dest, const char * slot ) const
//[2]bool connectNotifySignal ( QObject * dest, int method ) const

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasNotifySignal () const
*/
$method=|bool|hasNotifySignal|

/*
int index () const
*/
$method=|int|index|

/*
bool isDesignable () const
*/
$method=|bool|isDesignable|

/*
bool isProperty () const
*/
$method=|bool|isProperty|

/*
bool isResettable () const
*/
$method=|bool|isResettable|

/*
bool isSignalProperty () const
*/
$method=|bool|isSignalProperty|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
QMetaMethod method () const
*/
$method=|QMetaMethod|method|

/*
QString name () const
*/
$method=|QString|name|

/*
bool needsNotifySignal () const
*/
$method=|bool|needsNotifySignal|

/*
QObject * object () const
*/
$method=|QObject *|object|

/*
QMetaProperty property () const
*/
$method=|QMetaProperty|property|

/*
int propertyType () const
*/
$method=|int|propertyType|

/*
PropertyTypeCategory propertyTypeCategory () const
*/
$method=|QDeclarativeProperty::PropertyTypeCategory|propertyTypeCategory|

/*
const char * propertyTypeName () const
*/
$method=|const char *|propertyTypeName|

/*
QVariant read () const
*/
$method=|QVariant|read|

/*
bool reset () const
*/
$method=|bool|reset|

/*
Type type () const
*/
$method=|QDeclarativeProperty::Type|type|

/*
bool write ( const QVariant & value ) const
*/
$method=|bool|write,write1|const QVariant &

/*
static QVariant read ( QObject * object, const QString & name )
*/
$staticMethod=|QVariant|read,read2|QObject *,const QString &

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
*/
$staticMethod=|QVariant|read,read3|QObject *,const QString &,QDeclarativeContext *

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
*/
$staticMethod=|QVariant|read,read4|QObject *,const QString &,QDeclarativeEngine *

//[1]QVariant read () const
//[2]QVariant read ( QObject * object, const QString & name )
//[3]QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
//[4]QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ2 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ3 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool write ( QObject * object, const QString & name, const QVariant & value )
*/
$staticMethod=|bool|write,write2|QObject *,const QString &,const QVariant &

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
*/
$staticMethod=|bool|write,write3|QObject *,const QString &,const QVariant &,QDeclarativeContext *

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
*/
$staticMethod=|bool|write,write4|QObject *,const QString &,const QVariant &,QDeclarativeEngine *

//[1]bool write ( const QVariant & value ) const
//[2]bool write ( QObject * object, const QString & name, const QVariant & value )
//[3]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
//[4]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE2 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE3 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
