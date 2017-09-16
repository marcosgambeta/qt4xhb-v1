/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

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
   METHOD setExportMacro
   METHOD setIncludeHints
   METHOD setLayoutDefault
   METHOD setLayoutFunction
   METHOD setMainContainer
   METHOD setPixmapFunction
   METHOD clearSelection
   METHOD manageWidget
   METHOD selectWidget
   METHOD setContents1
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
#include <QDesignerFormEditorInterface>

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
    if( ISNUMPAR(0) )
    {
      QDir * ptr = new QDir( obj->absoluteDir () );
      _qt4xhb_createReturnClass ( ptr, "QDIR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addResourceFile ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->author () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->comment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->contents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QDesignerFormEditorInterface * ptr = obj->core ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QDesignerFormWindowCursorInterface * ptr = obj->cursor ();
      _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWCURSORINTERFACE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->emitSelectionChanged ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->exportMacro () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->fileName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->grid () );
      _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->hasFeature ( (QDesignerFormWindowInterface::Feature) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->includeHints () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDirty () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      RBOOL( obj->isManaged ( PQWIDGET(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      int par1;
int par2;
      obj->layoutDefault ( &par1, &par2 );
      hb_storni( par1, 1 );
hb_storni( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->mainContainer ();
      _qt4xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->pixmapFunction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->removeResourceFile ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->resourceFiles () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setAuthor ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setComment ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setExportMacro ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setIncludeHints ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setLayoutDefault ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      obj->setLayoutFunction ( PQSTRING(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setMainContainer ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPixmapFunction ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->clearSelection ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->manageWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTLOG(2) )
    {
      obj->selectWidget ( PQWIDGET(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
      obj->setContents ( PQIODEVICE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setContents ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDirty ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFeatures ( (QDesignerFormWindowInterface::Feature) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->setGrid ( *PQPOINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->unmanageWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW1 )
{
    if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
      QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow ( PQWIDGET(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDesignerFormWindowInterface * findFormWindow ( QObject * object )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW2 )
{
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
      QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow ( PQOBJECT(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
