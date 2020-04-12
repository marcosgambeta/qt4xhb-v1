/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   METHOD new
   METHOD currentFont
   METHOD open
   METHOD options
   METHOD selectedFont
   METHOD setCurrentFont
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QFontDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QFontDialog(QWidget *parent = 0)
*/
void QFontDialog_new1()
{
  QFontDialog * o = new QFontDialog( OPQWIDGET(1,0) );
  Qt4xHb::returnNewObject( o, false );
}

/*
QFontDialog(const QFont &initial, QWidget *parent = 0)
*/
void QFontDialog_new2()
{
  QFontDialog * o = new QFontDialog( *PQFONT(1), OPQWIDGET(2,0) );
  Qt4xHb::returnNewObject( o, false );
}

/*
[1]QFontDialog(QWidget *parent = 0)
[2]QFontDialog(const QFont &initial, QWidget *parent = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QFontDialog_new1();
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QFontDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QFont currentFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_CURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->currentFont() );
      Qt4xHb::createReturnClass( ptr, "QFONT", true );
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
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFONTDIALOG_OPEN )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
FontDialogOptions options () const
*/
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
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
QFont selectedFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->selectedFont() );
      Qt4xHb::createReturnClass( ptr, "QFONT", true );
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
void setCurrentFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETCURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setCurrentFont( *PQFONT(1) );
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
void setOption ( FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setOption( (QFontDialog::FontDialogOption) hb_parni(1), OPBOOL(2,true) );
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
void setOptions ( FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptions( (QFontDialog::FontDialogOptions) hb_parni(1) );
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
bool testOption ( FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( (QFontDialog::FontDialogOption) hb_parni(1) ) );
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
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETVISIBLE )
{
  QFontDialog * obj = (QFontDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
*/
void QFontDialog_getFont1()
{

  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont( &par1, *PQFONT(2), PQWIDGET(3), PQSTRING(4), (QFontDialog::FontDialogOptions) hb_parni(5) ) );
  Qt4xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
*/
void QFontDialog_getFont2()
{

  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont( &par1, *PQFONT(2), PQWIDGET(3), PQSTRING(4) ) );
  Qt4xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
*/
void QFontDialog_getFont3()
{

  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont( &par1, *PQFONT(2), OPQWIDGET(3,0) ) );
  Qt4xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
void QFontDialog_getFont4()
{

  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont( &par1, OPQWIDGET(2,0) ) );
  Qt4xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
[1]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
[3]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
[4]static QFont getFont(bool *ok, QWidget *parent = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISNUMPAR(5) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) && ISNUM(5) )
  {
    QFontDialog_getFont1();
  }
  else if( ISNUMPAR(4) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) )
  {
    QFontDialog_getFont2();
  }
  else if( ISBETWEEN(2,3) && ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QFontDialog_getFont3();
  }
  else if( ISBETWEEN(1,2) && ISLOG(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QFontDialog_getFont4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QFontDialogSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QFONTDIALOG_ONCURRENTFONTCHANGED )
{
  QFontDialogSlots_connect_signal( "currentFontChanged(QFont)", "currentFontChanged(QFont)" );
}

HB_FUNC_STATIC( QFONTDIALOG_ONFONTSELECTED )
{
  QFontDialogSlots_connect_signal( "fontSelected(QFont)", "fontSelected(QFont)" );
}

#pragma ENDDUMP
