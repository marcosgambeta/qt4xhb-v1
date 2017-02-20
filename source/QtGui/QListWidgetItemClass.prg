/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QLISTWIDGETITEM
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QLISTWIDGET
REQUEST QSIZE

CLASS QListWidgetItem

   DATA pointer
   DATA class_id INIT Class_Id_QListWidgetItem
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isHidden
   METHOD isSelected
   METHOD listWidget
   METHOD read
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setHidden
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

METHOD newFrom (p) CLASS QListWidgetItem
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QListWidgetItem
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QListWidgetItem
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QListWidgetItem
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QListWidgetItem
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QListWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QListWidgetItem>

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
QListWidgetItem ( QListWidget * parent = 0, int type = Type )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_NEW1 )
{
  QListWidgetItem * o = NULL;
  QListWidget * par1 = ISNIL(1)? 0 : (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? QListWidgetItem::Type : hb_parni(2);
  o = new QListWidgetItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QListWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_NEW2 )
{
  QListWidgetItem * o = NULL;
  QString par1 = hb_parc(1);
  QListWidget * par2 = ISNIL(2)? 0 : (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? QListWidgetItem::Type : hb_parni(3);
  o = new QListWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QListWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_NEW3 )
{
  QListWidgetItem * o = NULL;
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QString par2 = hb_parc(2);
  QListWidget * par3 = ISNIL(3)? 0 : (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QListWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QListWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QListWidgetItem ( const QListWidgetItem & other )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_NEW4 )
{
  QListWidgetItem * o = NULL;
  QListWidgetItem * par1 = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QListWidgetItem ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QListWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
//[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
//[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
//[4]QListWidgetItem ( const QListWidgetItem & other )

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,2) && (ISQLISTWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLISTWIDGETITEM_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLISTWIDGETITEM_NEW2 );
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QLISTWIDGETITEM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QLISTWIDGETITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLISTWIDGETITEM_DELETE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QLISTWIDGETITEM_BACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->checkState (  ) );
  }
}


/*
virtual QListWidgetItem * clone () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CLONE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QListWidgetItem * ptr = obj->clone (  );
    _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
  }
}


/*
virtual QVariant data ( int role ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_DATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->data ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags (  ) );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
QBrush foreground () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isHidden () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isHidden (  ) );
  }
}


/*
bool isSelected () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSelected (  ) );
  }
}


/*
QListWidget * listWidget () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_LISTWIDGET )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QListWidget * ptr = obj->listWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QLISTWIDGET" );
  }
}


/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_READ )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->read ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETBACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETCHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState (  (Qt::CheckState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setData ( int role, const QVariant & value )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETDATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setData ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags (  (Qt::ItemFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setForeground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHidden ( bool hide )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setHidden ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSelected ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeHint ( const QSize & size )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSizeHint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSTATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setStatusTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextAlignment ( int alignment )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextAlignment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhatsThis ( const QString & whatsThis )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETWHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setWhatsThis ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QString statusTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_STATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->statusTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int textAlignment () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->textAlignment (  ) );
  }
}


/*
QString toolTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toolTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int type () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TYPE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WRITE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->write ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
