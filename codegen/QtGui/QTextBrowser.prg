$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

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
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextBrowser ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTEXTBROWSER_NEW )
{
  QTextBrowser * o = new QTextBrowser ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
int backwardHistoryCount () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARDHISTORYCOUNT )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->backwardHistoryCount () );
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
    obj->clearHistory ();
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
    RINT( obj->forwardHistoryCount () );
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
    RQSTRING( obj->historyTitle ( PINT(1) ) );
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
    QUrl * ptr = new QUrl( obj->historyUrl ( PINT(1) ) );
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
    RBOOL( obj->isBackwardAvailable () );
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
    RBOOL( obj->isForwardAvailable () );
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
    RBOOL( obj->openExternalLinks () );
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
    RBOOL( obj->openLinks () );
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
    RQSTRINGLIST( obj->searchPaths () );
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
    obj->setSearchPaths ( PQSTRINGLIST(1) );
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
    QUrl * ptr = new QUrl( obj->source () );
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
    QVariant * ptr = new QVariant( obj->loadResource ( PINT(1), *PQURL(2) ) );
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
    obj->backward ();
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
    obj->forward ();
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
    obj->home ();
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
    obj->reload ();
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
    obj->setSource ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
