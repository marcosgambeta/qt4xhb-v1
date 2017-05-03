/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

   DATA class_id INIT Class_Id_QTextBrowser
   DATA self_destruction INIT .F.

   METHOD new
   METHOD backwardHistoryCount
   METHOD clearHistory
   METHOD forwardHistoryCount
   METHOD historyTitle
   METHOD historyUrl
   METHOD isBackwardAvailable
   METHOD isForwardAvailable
   METHOD openExternalLinks
   METHOD openLinks
   METHOD searchPaths
   METHOD setOpenExternalLinks
   METHOD setOpenLinks
   METHOD setSearchPaths
   METHOD source
   METHOD loadResource
   METHOD backward
   METHOD forward
   METHOD home
   METHOD reload
   METHOD setSource
   METHOD onAnchorClicked
   METHOD onBackwardAvailable
   METHOD onForwardAvailable
   METHOD onHighlighted1
   METHOD onHighlighted2
   METHOD onHistoryChanged
   METHOD onSourceChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBrowser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextBrowser>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextBrowser ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTEXTBROWSER_NEW )
{
  QTextBrowser * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextBrowser ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBrowser *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}



/*
int backwardHistoryCount () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARDHISTORYCOUNT )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->backwardHistoryCount (  ) );
  }
}


/*
void clearHistory ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_CLEARHISTORY )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearHistory (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int forwardHistoryCount () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARDHISTORYCOUNT )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->forwardHistoryCount (  ) );
  }
}


/*
QString historyTitle ( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYTITLE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->historyTitle ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl historyUrl ( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYURL )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QUrl * ptr = new QUrl( obj->historyUrl ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isBackwardAvailable () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISBACKWARDAVAILABLE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isBackwardAvailable (  ) );
  }
}


/*
bool isForwardAvailable () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISFORWARDAVAILABLE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isForwardAvailable (  ) );
  }
}


/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENEXTERNALLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->openExternalLinks (  ) );
  }
}


/*
bool openLinks () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->openLinks (  ) );
  }
}


/*
QStringList searchPaths () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SEARCHPATHS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->searchPaths (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENEXTERNALLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpenExternalLinks ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpenLinks ( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpenLinks ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSearchPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSEARCHPATHS )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    obj->setSearchPaths ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl source () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_LOADRESOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QUrl * par2 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->loadResource ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void backward ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARD )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->backward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void forward ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARD )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void home ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_HOME )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->home (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reload ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_RELOAD )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reload (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSource ( const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSource ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
