$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QAbstractFormBuilder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD save
   METHOD setWorkingDirectory
   METHOD workingDirectory
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractFormBuilder>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAbstractFormBuilder ()
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEW )
{
  QAbstractFormBuilder * o = new QAbstractFormBuilder ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QABSTRACTFORMBUILDER_DELETE )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_LOAD )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->load ( PQIODEVICE(1), OPQWIDGET(2,0) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual void save ( QIODevice * device, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SAVE )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->save ( PQIODEVICE(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorkingDirectory ( const QDir & directory )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SETWORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWorkingDirectory ( *PQDIR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_WORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->workingDirectory () );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

$extraMethods

#pragma ENDDUMP
