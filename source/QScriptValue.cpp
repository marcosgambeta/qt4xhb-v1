/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptValue>

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

#include <QDateTime>
#include <QRegExp>
#include <QVariant>

/*
QScriptValue ()
*/
HB_FUNC( QSCRIPTVALUE_NEW1 )
{
  QScriptValue * o = NULL;
  o = new QScriptValue (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( const QScriptValue & other )
*/
HB_FUNC( QSCRIPTVALUE_NEW2 )
{
  QScriptValue * o = NULL;
  QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptValue ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( SpecialValue value )
*/
HB_FUNC( QSCRIPTVALUE_NEW3 )
{
  QScriptValue * o = NULL;
  int par1 = hb_parni(1);
  o = new QScriptValue (  (QScriptValue::SpecialValue) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( bool value )
*/
HB_FUNC( QSCRIPTVALUE_NEW4 )
{
  QScriptValue * o = NULL;
  bool par1 = hb_parl(1);
  o = new QScriptValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( int value )
*/
HB_FUNC( QSCRIPTVALUE_NEW5 )
{
  QScriptValue * o = NULL;
  int par1 = hb_parni(1);
  o = new QScriptValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( uint value )
*/
HB_FUNC( QSCRIPTVALUE_NEW6 )
{
  QScriptValue * o = NULL;
  uint par1 = hb_parni(1);
  o = new QScriptValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( qsreal value )
*/
HB_FUNC( QSCRIPTVALUE_NEW7 )
{
  QScriptValue * o = NULL;
  qsreal par1 = hb_parnd(1);
  o = new QScriptValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptValue ( const QString & value )
*/
HB_FUNC( QSCRIPTVALUE_NEW8 )
{
  QScriptValue * o = NULL;
  QString par1 = hb_parc(1);
  o = new QScriptValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}



/*
QScriptValue ( const char * value )
*/
HB_FUNC( QSCRIPTVALUE_NEW10 )
{
  QScriptValue * o = NULL;
  const char * par1 = hb_parc(1);
  o = new QScriptValue (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[01]QScriptValue ()
//[02]QScriptValue ( const QScriptValue & other )
//[03]QScriptValue ( SpecialValue value )
//[04]QScriptValue ( bool value )
//[05]QScriptValue ( int value )
//[06]QScriptValue ( uint value )
//[07]QScriptValue ( qsreal value )
//[08]QScriptValue ( const QString & value )
//[09]QScriptValue ( const QLatin1String & value )
//[10]QScriptValue ( const char * value )

HB_FUNC( QSCRIPTVALUE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW3 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW6 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW8 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSCRIPTVALUE_DELETE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC( QSCRIPTVALUE_CALL1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
QScriptValueList par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->call ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )
*/
HB_FUNC( QSCRIPTVALUE_CALL2 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * par2 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->call ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


//[1]QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
//[2]QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )

// TODO: QScripValueList = array ?

HB_FUNC( QSCRIPTVALUE_CALL )
{
  if( ISBETWEEN(0,2) && (ISQSCRIPTVALUE(1)||ISNIL(1)) && (ISOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL2 );
  }
}

/*
QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC( QSCRIPTVALUE_CONSTRUCT1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QScriptValueList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->construct ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptValue construct ( const QScriptValue & arguments )
*/
HB_FUNC( QSCRIPTVALUE_CONSTRUCT2 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->construct ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


//[1]QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
//[2]QScriptValue construct ( const QScriptValue & arguments )

HB_FUNC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISBETWEEN(0,1) && (ISOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT2 );
  }
}

/*
QScriptValue data () const
*/
HB_FUNC( QSCRIPTVALUE_DATA )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->data (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptEngine * engine () const
*/
HB_FUNC( QSCRIPTVALUE_ENGINE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );  }
}


/*
bool equals ( const QScriptValue & other ) const
*/
HB_FUNC( QSCRIPTVALUE_EQUALS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->equals ( *par1 );
    hb_retl( b );
  }
}


/*
bool instanceOf ( const QScriptValue & other ) const
*/
HB_FUNC( QSCRIPTVALUE_INSTANCEOF )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->instanceOf ( *par1 );
    hb_retl( b );
  }
}


/*
bool isArray () const
*/
HB_FUNC( QSCRIPTVALUE_ISARRAY )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isArray (  );
    hb_retl( b );
  }
}


/*
bool isBool () const
*/
HB_FUNC( QSCRIPTVALUE_ISBOOL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isBool (  );
    hb_retl( b );
  }
}


/*
bool isDate () const
*/
HB_FUNC( QSCRIPTVALUE_ISDATE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isDate (  );
    hb_retl( b );
  }
}


/*
bool isError () const
*/
HB_FUNC( QSCRIPTVALUE_ISERROR )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isError (  );
    hb_retl( b );
  }
}


/*
bool isFunction () const
*/
HB_FUNC( QSCRIPTVALUE_ISFUNCTION )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFunction (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QSCRIPTVALUE_ISNULL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
bool isNumber () const
*/
HB_FUNC( QSCRIPTVALUE_ISNUMBER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNumber (  );
    hb_retl( b );
  }
}


/*
bool isObject () const
*/
HB_FUNC( QSCRIPTVALUE_ISOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isObject (  );
    hb_retl( b );
  }
}


/*
bool isQMetaObject () const
*/
HB_FUNC( QSCRIPTVALUE_ISQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isQMetaObject (  );
    hb_retl( b );
  }
}


/*
bool isQObject () const
*/
HB_FUNC( QSCRIPTVALUE_ISQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isQObject (  );
    hb_retl( b );
  }
}


/*
bool isRegExp () const
*/
HB_FUNC( QSCRIPTVALUE_ISREGEXP )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRegExp (  );
    hb_retl( b );
  }
}


/*
bool isString () const
*/
HB_FUNC( QSCRIPTVALUE_ISSTRING )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isString (  );
    hb_retl( b );
  }
}


/*
bool isUndefined () const
*/
HB_FUNC( QSCRIPTVALUE_ISUNDEFINED )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isUndefined (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSCRIPTVALUE_ISVALID )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
bool isVariant () const
*/
HB_FUNC( QSCRIPTVALUE_ISVARIANT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isVariant (  );
    hb_retl( b );
  }
}


/*
bool lessThan ( const QScriptValue & other ) const
*/
HB_FUNC( QSCRIPTVALUE_LESSTHAN )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->lessThan ( *par1 );
    hb_retl( b );
  }
}







/*
QScriptValue prototype () const
*/
HB_FUNC( QSCRIPTVALUE_PROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptClass * scriptClass () const
*/
HB_FUNC( QSCRIPTVALUE_SCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptClass * ptr = obj->scriptClass (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCLASS" );  }
}


/*
void setData ( const QScriptValue & data )
*/
HB_FUNC( QSCRIPTVALUE_SETDATA )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setPrototype ( const QScriptValue & prototype )
*/
HB_FUNC( QSCRIPTVALUE_SETPROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPrototype ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScriptClass ( QScriptClass * scriptClass )
*/
HB_FUNC( QSCRIPTVALUE_SETSCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptClass * par1 = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScriptClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strictlyEquals ( const QScriptValue & other ) const
*/
HB_FUNC( QSCRIPTVALUE_STRICTLYEQUALS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->strictlyEquals ( *par1 );
    hb_retl( b );
  }
}


/*
bool toBool () const
*/
HB_FUNC( QSCRIPTVALUE_TOBOOL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->toBool (  );
    hb_retl( b );
  }
}


/*
QDateTime toDateTime () const
*/
HB_FUNC( QSCRIPTVALUE_TODATETIME )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
qint32 toInt32 () const
*/
HB_FUNC( QSCRIPTVALUE_TOINT32 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint32 i = obj->toInt32 (  );
    hb_retni( i );
  }
}


/*
qsreal toInteger () const
*/
HB_FUNC( QSCRIPTVALUE_TOINTEGER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qsreal r = obj->toInteger (  );
    hb_retnd( r );
  }
}


/*
qsreal toNumber () const
*/
HB_FUNC( QSCRIPTVALUE_TONUMBER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qsreal r = obj->toNumber (  );
    hb_retnd( r );
  }
}



/*
QObject * toQObject () const
*/
HB_FUNC( QSCRIPTVALUE_TOQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->toQObject (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );  }
}


/*
QRegExp toRegExp () const
*/
HB_FUNC( QSCRIPTVALUE_TOREGEXP )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGEXP", true );  }
}


/*
QString toString () const
*/
HB_FUNC( QSCRIPTVALUE_TOSTRING )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
quint16 toUInt16 () const
*/
HB_FUNC( QSCRIPTVALUE_TOUINT16 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint16 i = obj->toUInt16 (  );
    hb_retni( i );
  }
}


/*
quint32 toUInt32 () const
*/
HB_FUNC( QSCRIPTVALUE_TOUINT32 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 i = obj->toUInt32 (  );
    hb_retni( i );
  }
}


/*
QVariant toVariant () const
*/
HB_FUNC( QSCRIPTVALUE_TOVARIANT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}




