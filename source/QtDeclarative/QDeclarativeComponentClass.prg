/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEERROR
REQUEST QURL
REQUEST QDECLARATIVECOMPONENTATTACHED
#endif

CLASS QDeclarativeComponent INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeComponent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD errors
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD loadUrl
   METHOD progress
   METHOD setData
   METHOD status
   METHOD url
   METHOD errorString
   METHOD qmlAttachedProperties
   METHOD onProgressChanged
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeComponent>

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
QDeclarativeComponent(QObject *parent = 0);
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW1 )
{
  QDeclarativeComponent * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeComponent ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0)
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW2 )
{
  QDeclarativeComponent * o = NULL;
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeComponent ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW3 )
{
  QDeclarativeComponent * o = NULL;
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeComponent ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW4 )
{
  QDeclarativeComponent * o = NULL;
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUrl * par2 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeComponent ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeComponent(QObject *parent = 0);
//[2]QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0);
//[3]QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0);
//[4]QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0);

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_DELETE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * beginCreate ( QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_BEGINCREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * par1 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QObject * ptr = obj->beginCreate ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void completeCreate ()
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_COMPLETECREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->completeCreate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * create ( QDeclarativeContext * context = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_CREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * par1 = ISNIL(1)? 0 : (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QObject * ptr = obj->create ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QDeclarativeContext * creationContext () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_CREATIONCONTEXT )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * ptr = obj->creationContext (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ERRORS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDECLARATIVEERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QDeclarativeError *) new QDeclarativeError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool isError () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISERROR )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isError (  ) );
  }
}


/*
bool isLoading () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISLOADING )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isLoading (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISNULL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isReady () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISREADY )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReady (  ) );
  }
}


/*
void loadUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_LOADURL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->loadUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal progress () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_PROGRESS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->progress (  );
    hb_retnd( r );
  }
}


/*
void setData ( const QByteArray & data, const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_SETDATA )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl * par2 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setData ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Status status () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_STATUS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->status (  ) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_URL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
Q_INVOKABLE QString errorString() const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ERRORSTRING )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
static QDeclarativeComponentAttached *qmlAttachedProperties(QObject *)
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_QMLATTACHEDPROPERTIES )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeComponentAttached * ptr = QDeclarativeComponent::qmlAttachedProperties ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECOMPONENTATTACHED" );
}





#pragma ENDDUMP
