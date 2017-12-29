/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottomPadding
   METHOD isValid
   METHOD leftPadding
   METHOD rightPadding
   METHOD setBottomPadding
   METHOD setLeftPadding
   METHOD setPadding
   METHOD setRightPadding
   METHOD setTopPadding
   METHOD topPadding

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTableCellFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextTableCellFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextTableCellFormat ()
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_NEW )
{
  QTextTableCellFormat * o = new QTextTableCellFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_DELETE )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal bottomPadding () const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_BOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->bottomPadding () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_ISVALID )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qreal leftPadding () const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_LEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leftPadding () );
  }
}

/*
qreal rightPadding () const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_RIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rightPadding () );
  }
}

/*
void setBottomPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETBOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottomPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLeftPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETLEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeftPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRightPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETRIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRightPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTopPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETTOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTopPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal topPadding () const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_TOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->topPadding () );
  }
}

#pragma ENDDUMP
