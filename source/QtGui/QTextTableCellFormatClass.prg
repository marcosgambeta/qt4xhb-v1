/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextTableCellFormat INHERIT QTextCharFormat

   DATA class_id INIT Class_Id_QTextTableCellFormat
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextTableCellFormat>

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
QTextTableCellFormat ()
*/
HB_FUNC( QTEXTTABLECELLFORMAT_NEW )
{
  QTextTableCellFormat * o = NULL;
  o = new QTextTableCellFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextTableCellFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QTEXTTABLECELLFORMAT_DELETE )
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
HB_FUNC( QTEXTTABLECELLFORMAT_BOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->bottomPadding (  );
    hb_retnd( r );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QTEXTTABLECELLFORMAT_ISVALID )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
qreal leftPadding () const
*/
HB_FUNC( QTEXTTABLECELLFORMAT_LEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->leftPadding (  );
    hb_retnd( r );
  }
}


/*
qreal rightPadding () const
*/
HB_FUNC( QTEXTTABLECELLFORMAT_RIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->rightPadding (  );
    hb_retnd( r );
  }
}


/*
void setBottomPadding ( qreal padding )
*/
HB_FUNC( QTEXTTABLECELLFORMAT_SETBOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBottomPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLeftPadding ( qreal padding )
*/
HB_FUNC( QTEXTTABLECELLFORMAT_SETLEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLeftPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPadding ( qreal padding )
*/
HB_FUNC( QTEXTTABLECELLFORMAT_SETPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRightPadding ( qreal padding )
*/
HB_FUNC( QTEXTTABLECELLFORMAT_SETRIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRightPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopPadding ( qreal padding )
*/
HB_FUNC( QTEXTTABLECELLFORMAT_SETTOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTopPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topPadding () const
*/
HB_FUNC( QTEXTTABLECELLFORMAT_TOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->topPadding (  );
    hb_retnd( r );
  }
}




#pragma ENDDUMP
