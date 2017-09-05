/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDIR
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWCURSORINTERFACE
REQUEST QPOINT
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD absoluteDir
   METHOD addResourceFile
   METHOD author
   METHOD comment
   METHOD contents
   METHOD core
   METHOD cursor
   METHOD emitSelectionChanged
   METHOD exportMacro
   METHOD features
   METHOD fileName
   METHOD grid
   METHOD hasFeature
   METHOD includeHints
   METHOD isDirty
   METHOD isManaged
   METHOD layoutDefault
   METHOD mainContainer
   METHOD pixmapFunction
   METHOD removeResourceFile
   METHOD resourceFiles
   METHOD setAuthor
   METHOD setComment
   METHOD setContents1
   METHOD setExportMacro
   METHOD setIncludeHints
   METHOD setLayoutDefault
   METHOD setLayoutFunction
   METHOD setMainContainer
   METHOD setPixmapFunction
   METHOD clearSelection
   METHOD manageWidget
   METHOD selectWidget
   METHOD setContents2
   METHOD setContents
   METHOD setDirty
   METHOD setFeatures
   METHOD setFileName
   METHOD setGrid
   METHOD unmanageWidget
   METHOD findFormWindow1
   METHOD findFormWindow2
   METHOD findFormWindow
   METHOD onSelectionChanged
   METHOD onActivated
   METHOD onChanged
   METHOD onFeatureChanged
   METHOD onFileNameChanged
   METHOD onGeometryChanged
   METHOD onMainContainerChanged
   METHOD onObjectRemoved
   METHOD onWidgetManaged
   METHOD onWidgetRemoved
   METHOD onWidgetUnmanaged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerFormWindowInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDir>

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_DELETE )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QDir absoluteDir () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ABSOLUTEDIR )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->absoluteDir () );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

/*
virtual void addResourceFile ( const QString & path ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ADDRESOURCEFILE )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addResourceFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString author () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_AUTHOR )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->author () );
  }
}

/*
virtual QString comment () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_COMMENT )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->comment () );
  }
}

/*
virtual QString contents () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CONTENTS )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->contents () );
  }
}

/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CORE )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}

/*
virtual QDesignerFormWindowCursorInterface * cursor () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CURSOR )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowCursorInterface * ptr = obj->cursor ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWCURSORINTERFACE" );
  }
}

/*
virtual void emitSelectionChanged () = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_EMITSELECTIONCHANGED )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->emitSelectionChanged ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString exportMacro () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_EXPORTMACRO )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->exportMacro () );
  }
}

/*
virtual Feature features () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FEATURES )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->features () );
  }
}

/*
virtual QString fileName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FILENAME )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
virtual QPoint grid () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_GRID )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->grid () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
virtual bool hasFeature ( Feature feature ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_HASFEATURE )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFeature ( (QDesignerFormWindowInterface::Feature) hb_parni(1) ) );
  }
}

/*
virtual QStringList includeHints () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_INCLUDEHINTS )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->includeHints () );
  }
}

/*
virtual bool isDirty () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ISDIRTY )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDirty () );
  }
}

/*
virtual bool isManaged ( QWidget * widget ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ISMANAGED )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isManaged ( PQWIDGET(1) ) );
  }
}

/*
virtual void layoutDefault ( int * margin, int * spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_LAYOUTDEFAULT )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    obj->layoutDefault ( &par1, &par2 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QWidget * mainContainer () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_MAINCONTAINER )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->mainContainer ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QString pixmapFunction () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_PIXMAPFUNCTION )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->pixmapFunction () );
  }
}

/*
virtual void removeResourceFile ( const QString & path ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_REMOVERESOURCEFILE )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeResourceFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QStringList resourceFiles () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_RESOURCEFILES )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->resourceFiles () );
  }
}

/*
virtual void setAuthor ( const QString & author ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETAUTHOR )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAuthor ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setComment ( const QString & comment ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCOMMENT )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setComment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setContents ( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS1 )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContents ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setExportMacro ( const QString & exportMacro ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETEXPORTMACRO )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExportMacro ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setIncludeHints ( const QStringList & includeHints ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETINCLUDEHINTS )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIncludeHints ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setLayoutDefault ( int margin, int spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETLAYOUTDEFAULT )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLayoutDefault ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setLayoutFunction ( const QString & margin, const QString & spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETLAYOUTFUNCTION )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLayoutFunction ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setMainContainer ( QWidget * mainContainer ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETMAINCONTAINER )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMainContainer ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setPixmapFunction ( const QString & pixmapFunction ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETPIXMAPFUNCTION )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixmapFunction ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void clearSelection ( bool update = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CLEARSELECTION )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSelection ( OPBOOL(1,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void manageWidget ( QWidget * widget ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_MANAGEWIDGET )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->manageWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void selectWidget ( QWidget * widget, bool select = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SELECTWIDGET )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectWidget ( PQWIDGET(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setContents ( const QString & contents ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS2 )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContents ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void setContents ( QIODevice * device ) = 0
//[2]virtual void setContents ( const QString & contents ) = 0

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS2 );
  }
}

/*
virtual void setDirty ( bool dirty ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETDIRTY )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDirty ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setFeatures ( Feature features ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETFEATURES )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFeatures ( (QDesignerFormWindowInterface::Feature) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setFileName ( const QString & fileName ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETFILENAME )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGrid ( const QPoint & grid ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETGRID )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGrid ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unmanageWidget ( QWidget * widget ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_UNMANAGEWIDGET )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unmanageWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW1 )
{
  QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow ( PQWIDGET(1) );
  _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
}

/*
QDesignerFormWindowInterface * findFormWindow ( QObject * object )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW2 )
{
  QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow ( PQOBJECT(1) );
  _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
}

//[1]QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
//[2]QDesignerFormWindowInterface * findFormWindow ( QObject * object )

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW2 );
  }
}

#pragma ENDDUMP
