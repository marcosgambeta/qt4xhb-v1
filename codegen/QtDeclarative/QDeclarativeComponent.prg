$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEERROR
REQUEST QURL
REQUEST QDECLARATIVECOMPONENTATTACHED
#endif

CLASS QDeclarativeComponent INHERIT QObject

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

$destructor

#pragma BEGINDUMP

#include <QDeclarativeComponent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDeclarativeComponent(QObject *parent = 0);
$internalConstructor=|new1|QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0)
$internalConstructor=|new2|QDeclarativeEngine *,QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0)
$internalConstructor=|new3|QDeclarativeEngine *,const QString &,QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0)
$internalConstructor=|new4|QDeclarativeEngine *,const QUrl &,QObject *=0

//[1]QDeclarativeComponent(QObject *parent = 0);
//[2]QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0);
//[3]QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0);
//[4]QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0);

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDeclarativeComponent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QDeclarativeComponent_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDeclarativeComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDeclarativeComponent_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QObject * beginCreate ( QDeclarativeContext * context )
$virtualMethod=|QObject *|beginCreate|QDeclarativeContext *

$prototype=virtual void completeCreate ()
$virtualMethod=|void|completeCreate|

$prototype=virtual QObject * create ( QDeclarativeContext * context = 0 )
$virtualMethod=|QObject *|create|QDeclarativeContext *=0

$prototype=QDeclarativeContext * creationContext () const
$method=|QDeclarativeContext *|creationContext|

$prototype=QList<QDeclarativeError> errors () const
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ERRORS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=bool isError () const
$method=|bool|isError|

$prototype=bool isLoading () const
$method=|bool|isLoading|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isReady () const
$method=|bool|isReady|

$prototype=void loadUrl ( const QUrl & url )
$method=|void|loadUrl|const QUrl &

$prototype=qreal progress () const
$method=|qreal|progress|

$prototype=void setData ( const QByteArray & data, const QUrl & url )
$method=|void|setData|const QByteArray &,const QUrl &

$prototype=Status status () const
$method=|QDeclarativeComponent::Status|status|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=Q_INVOKABLE QString errorString() const
$method=|QString|errorString|

$prototype=static QDeclarativeComponentAttached *qmlAttachedProperties(QObject *)
$staticMethod=|QDeclarativeComponentAttached *|qmlAttachedProperties|QObject *

#pragma ENDDUMP
