/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE

CLASS QHelpEngine INHERIT QHelpEngineCore

   DATA class_id INIT Class_Id_QHelpEngine
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QHelpEngine>

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
QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC( QHELPENGINE_NEW )
{
  QHelpEngine * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHelpEngine ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHelpEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QHELPENGINE_DELETE )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHelpContentModel * contentModel () const
*/
HB_FUNC( QHELPENGINE_CONTENTMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentModel * ptr = obj->contentModel (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTMODEL" );  }
}


/*
QHelpContentWidget * contentWidget ()
*/
HB_FUNC( QHELPENGINE_CONTENTWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentWidget * ptr = obj->contentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTWIDGET" );  }
}


/*
QHelpIndexModel * indexModel () const
*/
HB_FUNC( QHELPENGINE_INDEXMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpIndexModel * ptr = obj->indexModel (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPINDEXMODEL" );  }
}


/*
QHelpIndexWidget * indexWidget ()
*/
HB_FUNC( QHELPENGINE_INDEXWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpIndexWidget * ptr = obj->indexWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPINDEXWIDGET" );  }
}


/*
QHelpSearchEngine * searchEngine ()
*/
HB_FUNC( QHELPENGINE_SEARCHENGINE )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpSearchEngine * ptr = obj->searchEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPSEARCHENGINE" );  }
}




#pragma ENDDUMP
