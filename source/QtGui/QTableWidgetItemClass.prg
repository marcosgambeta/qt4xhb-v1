/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTABLEWIDGETITEM
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTABLEWIDGET
#endif

CLASS QTableWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD column
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isSelected
   METHOD read
   METHOD row
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD statusTip
   METHOD tableWidget
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD type
   METHOD whatsThis
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTableWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTableWidgetItem ( int type = Type )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW1 )
{
  QTableWidgetItem * o = new QTableWidgetItem ( OPINT(1,QTableWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTableWidgetItem ( const QString & text, int type = Type )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW2 )
{
  QTableWidgetItem * o = new QTableWidgetItem ( PQSTRING(1), OPINT(2,QTableWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW3 )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QTableWidgetItem * o = new QTableWidgetItem ( par1, PQSTRING(2), OPINT(3,QTableWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTableWidgetItem ( const QTableWidgetItem & other )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW4 )
{
  QTableWidgetItem * o = new QTableWidgetItem ( *PQTABLEWIDGETITEM(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTableWidgetItem ( int type = Type )
//[2]QTableWidgetItem ( const QString & text, int type = Type )
//[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
//[4]QTableWidgetItem ( const QTableWidgetItem & other )

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETITEM_NEW2 );
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETITEM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_DELETE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QBrush background () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_BACKGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_CHECKSTATE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->checkState () );
  }
}

/*
virtual QTableWidgetItem * clone () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_CLONE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->clone ();
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}

/*
int column () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_COLUMN )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->column () );
  }
}

/*
virtual QVariant data ( int role ) const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_DATA )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FLAGS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FONT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QBrush foreground () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FOREGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ICON )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ISSELECTED )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}

/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_READ )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->read ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ROW )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->row () );
  }
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETBACKGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETCHECKSTATE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState ( (Qt::CheckState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( int role, const QVariant & value )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETDATA )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFLAGS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags ( (Qt::ItemFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFONT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFOREGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForeground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETICON )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected ( bool select )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSELECTED )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelected ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeHint ( const QSize & size )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSIZEHINT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeHint ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSTATUSTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatusTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTEXT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextAlignment ( int alignment )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTEXTALIGNMENT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextAlignment ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTOOLTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis ( const QString & whatsThis )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETWHATSTHIS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThis ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SIZEHINT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_STATUSTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->statusTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTableWidget * tableWidget () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TABLEWIDGET )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidget * ptr = obj->tableWidget ();
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGET" );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TEXT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textAlignment () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TEXTALIGNMENT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->textAlignment () );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TOOLTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toolTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int type () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TYPE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_WHATSTHIS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->whatsThis () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_WRITE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->write ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTABLEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTABLEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
