/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDeclarativeProperty>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeProperty ()
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW1 )
{
  QDeclarativeProperty * o = NULL;
  o = new QDeclarativeProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW2 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW3 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * par2 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW4 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine * par2 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW5 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW6 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeContext * par3 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW7 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeEngine * par3 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( const QDeclarativeProperty & other )
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEW8 )
{
  QDeclarativeProperty * o = NULL;
  QDeclarativeProperty * par1 = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeProperty ()
//[2]QDeclarativeProperty ( QObject * obj )
//[3]QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
//[4]QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
//[5]QDeclarativeProperty ( QObject * obj, const QString & name )
//[6]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
//[7]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
//[8]QDeclarativeProperty ( const QDeclarativeProperty & other )

HB_FUNC( QDECLARATIVEPROPERTY_NEW )
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
HB_FUNC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par2 = hb_parc(2);
    bool b = obj->connectNotifySignal ( par1,  (const char *) par2 );
    hb_retl( b );
  }
}


/*
bool connectNotifySignal ( QObject * dest, int method ) const
*/
HB_FUNC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL2 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    bool b = obj->connectNotifySignal ( par1, par2 );
    hb_retl( b );
  }
}


//[1]bool connectNotifySignal ( QObject * dest, const char * slot ) const
//[2]bool connectNotifySignal ( QObject * dest, int method ) const

HB_FUNC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
}

/*
bool hasNotifySignal () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_HASNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasNotifySignal (  );
    hb_retl( b );
  }
}


/*
int index () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_INDEX )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->index (  );
    hb_retni( i );
  }
}


/*
bool isDesignable () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISDESIGNABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isDesignable (  );
    hb_retl( b );
  }
}


/*
bool isProperty () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isProperty (  );
    hb_retl( b );
  }
}


/*
bool isResettable () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISRESETTABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isResettable (  );
    hb_retl( b );
  }
}


/*
bool isSignalProperty () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISSIGNALPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSignalProperty (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISVALID )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
bool isWritable () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_ISWRITABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isWritable (  );
    hb_retl( b );
  }
}


/*
QMetaMethod method () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_METHOD )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->method (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );  }
}


/*
QString name () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_NAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool needsNotifySignal () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->needsNotifySignal (  );
    hb_retl( b );
  }
}


/*
QObject * object () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_OBJECT )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );  }
}


/*
QMetaProperty property () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_PROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->property (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY" );  }
}


/*
int propertyType () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_PROPERTYTYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyType (  );
    hb_retni( i );
  }
}


/*
PropertyTypeCategory propertyTypeCategory () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_PROPERTYTYPECATEGORY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyTypeCategory (  );
    hb_retni( i );
  }
}


/*
const char * propertyTypeName () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_PROPERTYTYPENAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->propertyTypeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant read () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_READ1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->read (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
bool reset () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_RESET )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->reset (  );
    hb_retl( b );
  }
}


/*
Type type () const
*/
HB_FUNC( QDECLARATIVEPROPERTY_TYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
bool write ( const QVariant & value ) const
*/
HB_FUNC( QDECLARATIVEPROPERTY_WRITE1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->write ( *par1 );
    hb_retl( b );
  }
}



/*
QVariant read ( QObject * object, const QString & name )
*/
HB_FUNC( QDECLARATIVEPROPERTY_READ2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );}


/*
QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
*/
HB_FUNC( QDECLARATIVEPROPERTY_READ3 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeContext * par3 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );}


/*
QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
*/
HB_FUNC( QDECLARATIVEPROPERTY_READ4 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeEngine * par3 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );}


//[1]QVariant read () const
//[2]QVariant read ( QObject * object, const QString & name )
//[3]QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
//[4]QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )

HB_FUNC( QDECLARATIVEPROPERTY_READ )
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
}

/*
bool write ( QObject * object, const QString & name, const QVariant & value )
*/
HB_FUNC( QDECLARATIVEPROPERTY_WRITE2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QDeclarativeProperty::write ( par1, par2, *par3 );
  hb_retl( b );
}


/*
bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
*/
HB_FUNC( QDECLARATIVEPROPERTY_WRITE3 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * par4 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QDeclarativeProperty::write ( par1, par2, *par3, par4 );
  hb_retl( b );
}


/*
bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
*/
HB_FUNC( QDECLARATIVEPROPERTY_WRITE4 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine * par4 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QDeclarativeProperty::write ( par1, par2, *par3, par4 );
  hb_retl( b );
}


//[1]bool write ( const QVariant & value ) const
//[2]bool write ( QObject * object, const QString & name, const QVariant & value )
//[3]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
//[4]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )

HB_FUNC( QDECLARATIVEPROPERTY_WRITE )
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
}


