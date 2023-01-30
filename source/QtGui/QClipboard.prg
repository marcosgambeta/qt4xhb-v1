/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QClipboard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QClipboard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QImage>
#include <QtCore/QMimeData>
#include <QtGui/QPixmap>

/*
void clear( QClipboard::Mode mode = QClipboard::Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->clear( HB_ISNIL( 1 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QImage image( QClipboard::Mode mode = QClipboard::Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QImage * ptr = new QImage( obj->image( HB_ISNIL( 1 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QMimeData * mimeData( QClipboard::Mode mode = QClipboard::Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      const QMimeData * ptr = obj->mimeData( HB_ISNIL( 1 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 1 ) );
      Qt4xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool ownsClipboard() const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->ownsClipboard() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool ownsFindBuffer() const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->ownsFindBuffer() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool ownsSelection() const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->ownsSelection() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap pixmap( QClipboard::Mode mode = QClipboard::Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap( HB_ISNIL( 1 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setImage( const QImage & image, QClipboard::Mode mode = QClipboard::Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && ISQIMAGE( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->setImage( *PQIMAGE( 1 ), HB_ISNIL( 2 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData( QMimeData * src, QClipboard::Mode mode = QClipboard::Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && ISQMIMEDATA( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->setMimeData( PQMIMEDATA( 1 ), HB_ISNIL( 2 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap( const QPixmap & pixmap, QClipboard::Mode mode = QClipboard::Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && ISQPIXMAP( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->setPixmap( *PQPIXMAP( 1 ), HB_ISNIL( 2 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText( const QString & text, QClipboard::Mode mode = QClipboard::Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && HB_ISCHAR( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->setText( PQSTRING( 1 ), HB_ISNIL( 2 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsFindBuffer() const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->supportsFindBuffer() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool supportsSelection() const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->supportsSelection() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
  {
    /*
    QString text( QClipboard::Mode mode = QClipboard::Clipboard ) const
    */
    QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      RQSTRING( obj->text( HB_ISNIL( 1 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 1 ) ) );
    }
  }
  else if( ISBETWEEN( 1, 2 ) && HB_ISCHAR( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    QString text( QString & subtype, QClipboard::Mode mode = QClipboard::Clipboard ) const
    */
    QClipboard * obj = qobject_cast< QClipboard * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      QString par1 = hb_parc( 1 );
      RQSTRING( obj->text( par1, HB_ISNIL( 2 ) ? ( QClipboard::Mode ) QClipboard::Clipboard : ( QClipboard::Mode ) hb_parni( 2 ) ) );
      hb_storc( QSTRINGTOSTRING( par1 ), 1 );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QClipboardSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCLIPBOARD_ONCHANGED )
{
  QClipboardSlots_connect_signal( "changed(QClipboard::Mode)", "changed(QClipboard::Mode)" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONDATACHANGED )
{
  QClipboardSlots_connect_signal( "dataChanged()", "dataChanged()" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONFINDBUFFERCHANGED )
{
  QClipboardSlots_connect_signal( "findBufferChanged()", "findBufferChanged()" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONSELECTIONCHANGED )
{
  QClipboardSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

#pragma ENDDUMP
