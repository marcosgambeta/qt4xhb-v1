/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
REQUEST QPUSHBUTTON
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD escapeButton
   METHOD icon
   METHOD iconPixmap
   METHOD informativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setDetailedText
   METHOD setEscapeButton
   METHOD setIcon
   METHOD setIconPixmap
   METHOD setInformativeText
   METHOD setStandardButtons
   METHOD setText
   METHOD setTextFormat
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD text
   METHOD textFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMessageBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QMessageBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QPushButton>
#include <QtGui/QAbstractButton>

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQWIDGET( 1 ) || HB_ISNIL( 1 ) ) )
  {
    /*
    QMessageBox( QWidget * parent = 0 )
    */
    QMessageBox * obj = new QMessageBox( OPQWIDGET( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else if( ISBETWEEN( 3, 6 ) && HB_ISNUM( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) && ( ISQWIDGET( 5 ) || HB_ISNIL( 5 ) ) && ( HB_ISNUM( 6 ) || HB_ISNIL( 6 ) ) )
  {
    /*
    QMessageBox( QMessageBox::Icon icon, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
    */
    QMessageBox * obj = new QMessageBox( ( QMessageBox::Icon ) hb_parni( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? ( QMessageBox::StandardButtons ) QMessageBox::NoButton : ( QMessageBox::StandardButtons ) hb_parni( 4 ), OPQWIDGET( 5, 0 ), HB_ISNIL( 6 ) ? ( Qt::WindowFlags ) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : ( Qt::WindowFlags ) hb_parni( 6 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_DELETE )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR( 2 ) && ISQABSTRACTBUTTON( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    void addButton( QAbstractButton * button, QMessageBox::ButtonRole role )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->addButton( PQABSTRACTBUTTON( 1 ), ( QMessageBox::ButtonRole ) hb_parni( 2 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    QPushButton * addButton( const QString & text, QMessageBox::ButtonRole role )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      QPushButton * ptr = obj->addButton( PQSTRING( 1 ), ( QMessageBox::ButtonRole ) hb_parni( 2 ) );
      Qt4xHb::createReturnQObjectClass( ptr, "QPUSHBUTTON" );
    }
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    /*
    QPushButton * addButton( QMessageBox::StandardButton button )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      QPushButton * ptr = obj->addButton( ( QMessageBox::StandardButton ) hb_parni( 1 ) );
      Qt4xHb::createReturnQObjectClass( ptr, "QPUSHBUTTON" );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button( QMessageBox::StandardButton which ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      QAbstractButton * ptr = obj->button( ( QMessageBox::StandardButton ) hb_parni( 1 ) );
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTBUTTON" );
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
QMessageBox::ButtonRole buttonRole( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONROLE )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQABSTRACTBUTTON( 1 ) )
    {
#endif
      RENUM( obj->buttonRole( PQABSTRACTBUTTON( 1 ) ) );
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
QList<QAbstractButton *> buttons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QList<QAbstractButton *> list = obj->buttons();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
      PHB_ITEM pArray = hb_itemArrayNew( 0 );
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast< QAbstractButton * >( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACTBUTTON", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QAbstractButton * clickedButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CLICKEDBUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QAbstractButton * ptr = obj->clickedButton();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTBUTTON" );
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
QPushButton * defaultButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DEFAULTBUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPushButton * ptr = obj->defaultButton();
      Qt4xHb::createReturnQObjectClass( ptr, "QPUSHBUTTON" );
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
QString detailedText() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DETAILEDTEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->detailedText() );
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
QAbstractButton * escapeButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ESCAPEBUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QAbstractButton * ptr = obj->escapeButton();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTBUTTON" );
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
QMessageBox::Icon icon() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->icon() );
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
QPixmap iconPixmap() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICONPIXMAP )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->iconPixmap() );
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
QString informativeText() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATIVETEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->informativeText() );
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
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMESSAGEBOX_OPEN )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQOBJECT( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->open( PQOBJECT( 1 ), PCONSTCHAR( 2 ) );
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
void removeButton( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_REMOVEBUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQABSTRACTBUTTON( 1 ) )
    {
#endif
      obj->removeButton( PQABSTRACTBUTTON( 1 ) );
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

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR( 1 ) && ISQPUSHBUTTON( 1 ) )
  {
    /*
    void setDefaultButton( QPushButton * button )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setDefaultButton( PQPUSHBUTTON( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    /*
    void setDefaultButton( QMessageBox::StandardButton button )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setDefaultButton( ( QMessageBox::StandardButton ) hb_parni( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setDetailedText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDETAILEDTEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setDetailedText( PQSTRING( 1 ) );
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

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR( 1 ) && ISQABSTRACTBUTTON( 1 ) )
  {
    /*
    void setEscapeButton( QAbstractButton * button )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setEscapeButton( PQABSTRACTBUTTON( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    /*
    void setEscapeButton( QMessageBox::StandardButton button )
    */
    QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setEscapeButton( ( QMessageBox::StandardButton ) hb_parni( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setIcon( QMessageBox::Icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setIcon( ( QMessageBox::Icon ) hb_parni( 1 ) );
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
void setIconPixmap( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICONPIXMAP )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPIXMAP( 1 ) )
    {
#endif
      obj->setIconPixmap( *PQPIXMAP( 1 ) );
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
void setInformativeText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETINFORMATIVETEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setInformativeText( PQSTRING( 1 ) );
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
void setStandardButtons( QMessageBox::StandardButtons buttons )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETSTANDARDBUTTONS )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setStandardButtons( ( QMessageBox::StandardButtons ) hb_parni( 1 ) );
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
void setText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setText( PQSTRING( 1 ) );
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
void setTextFormat( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTFORMAT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setTextFormat( ( Qt::TextFormat ) hb_parni( 1 ) );
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
void setWindowModality( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWMODALITY )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setWindowModality( ( Qt::WindowModality ) hb_parni( 1 ) );
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
void setWindowTitle( const QString & title )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWTITLE )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setWindowTitle( PQSTRING( 1 ) );
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
QMessageBox::StandardButton standardButton( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTON )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQABSTRACTBUTTON( 1 ) )
    {
#endif
      RENUM( obj->standardButton( PQABSTRACTBUTTON( 1 ) ) );
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
QMessageBox::StandardButtons standardButtons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTONS )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->standardButtons() );
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
QString text() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->text() );
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
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTFORMAT )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->textFormat() );
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
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETVISIBLE )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setVisible( PBOOL( 1 ) );
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
int exec()
*/
HB_FUNC_STATIC( QMESSAGEBOX_EXEC )
{
  QMessageBox * obj = qobject_cast< QMessageBox * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->exec() );
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
static void about( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 3 ) && ISQWIDGET( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) )
  {
#endif
    QMessageBox::about( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void aboutQt( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 1, 2 ) && ISQWIDGET( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) )
  {
#endif
    QMessageBox::aboutQt( PQWIDGET( 1 ), OPQSTRING( 2, QString() ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QMessageBox::StandardButton critical( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 5 ) && ISQWIDGET( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISNUM( 5 ) || HB_ISNIL( 5 ) ) )
  {
#endif
    RENUM( QMessageBox::critical( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? ( QMessageBox::StandardButtons ) QMessageBox::Ok : ( QMessageBox::StandardButtons ) hb_parni( 4 ), HB_ISNIL( 5 ) ? ( QMessageBox::StandardButton ) QMessageBox::NoButton : ( QMessageBox::StandardButton ) hb_parni( 5 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton information( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 5 ) && ISQWIDGET( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISNUM( 5 ) || HB_ISNIL( 5 ) ) )
  {
#endif
    RENUM( QMessageBox::information( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? ( QMessageBox::StandardButtons ) QMessageBox::Ok : ( QMessageBox::StandardButtons ) hb_parni( 4 ), HB_ISNIL( 5 ) ? ( QMessageBox::StandardButton ) QMessageBox::NoButton : ( QMessageBox::StandardButton ) hb_parni( 5 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton question( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 5 ) && ISQWIDGET( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISNUM( 5 ) || HB_ISNIL( 5 ) ) )
  {
#endif
    RENUM( QMessageBox::question( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? ( QMessageBox::StandardButtons ) QMessageBox::Ok : ( QMessageBox::StandardButtons ) hb_parni( 4 ), HB_ISNIL( 5 ) ? ( QMessageBox::StandardButton ) QMessageBox::NoButton : ( QMessageBox::StandardButton ) hb_parni( 5 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton warning( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 5 ) && ISQWIDGET( 1 ) && HB_ISCHAR( 2 ) && HB_ISCHAR( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISNUM( 5 ) || HB_ISNIL( 5 ) ) )
  {
#endif
    RENUM( QMessageBox::warning( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? ( QMessageBox::StandardButtons ) QMessageBox::Ok : ( QMessageBox::StandardButtons ) hb_parni( 4 ), HB_ISNIL( 5 ) ? ( QMessageBox::StandardButton ) QMessageBox::NoButton : ( QMessageBox::StandardButton ) hb_parni( 5 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QMessageBoxSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMESSAGEBOX_ONBUTTONCLICKED )
{
  QMessageBoxSlots_connect_signal( "buttonClicked(QAbstractButton*)", "buttonClicked(QAbstractButton*)" );
}

#pragma ENDDUMP
