/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
   METHOD getFont1
   METHOD getFont2
   METHOD getFont3
   METHOD getFont4
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFontDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontDialog(QWidget *parent = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_NEW1 )
{
  QFontDialog * o = new QFontDialog ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QFontDialog(const QFont &initial, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_NEW2 )
{
  QFontDialog * o = new QFontDialog ( *PQFONT(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QFontDialog(QWidget *parent = 0)
//[2]QFontDialog(const QFont &initial, QWidget *parent = 0)

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW2 );
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
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFONTDIALOG_OPEN )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
FontDialogOptions options () const
*/
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}

/*
QFont selectedFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->selectedFont () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void setCurrentFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETCURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QFontDialog::FontDialogOption) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptions ( FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions ( (QFontDialog::FontDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption ( FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QFontDialog::FontDialogOption) par1 ) );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETVISIBLE )
{
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT1 )
{
  bool par1;
  int par5 = hb_parni(5);
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, *PQFONT(2), PQWIDGET(3), PQSTRING(4), (QFontDialog::FontDialogOptions) par5 ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT2 )
{
  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, *PQFONT(2), PQWIDGET(3), PQSTRING(4) ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT3 )
{
  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, *PQFONT(2), OPQWIDGET(3,0) ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT4 )
{
  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, OPQWIDGET(2,0) ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

//[1]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
//[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
//[3]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
//[4]static QFont getFont(bool *ok, QWidget *parent = 0)

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISNUMPAR(5) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT1 );
  }
  else if( ISNUMPAR(4) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT2 );
  }
  else if( ISBETWEEN(2,3) && ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT3 );
  }
  else if( ISBETWEEN(1,2) && ISLOG(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT4 );
  }
}

#pragma ENDDUMP
