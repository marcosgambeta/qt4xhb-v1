/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QSIZE
#endif

CLASS QBoxLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QBoxLayout
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addLayout
   METHOD addSpacerItem
   METHOD addSpacing
   METHOD addStretch
   METHOD addStrut
   METHOD addWidget
   METHOD direction
   METHOD insertLayout
   METHOD insertSpacerItem
   METHOD insertSpacing
   METHOD insertStretch
   METHOD insertWidget
   METHOD setDirection
   METHOD setSpacing
   METHOD setStretch
   METHOD setStretchFactor1
   METHOD setStretchFactor2
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretch
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBoxLayout ( Direction dir, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_NEW )
{
  QBoxLayout * o = NULL;
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QBoxLayout (  (QBoxLayout::Direction) par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QBOXLAYOUT_DELETE )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addLayout ( QLayout * layout, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDLAYOUT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addLayout ( par1, OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addSpacerItem ( QSpacerItem * spacerItem )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSPACERITEM )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSpacerItem * par1 = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addSpacerItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addSpacing ( int size )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->addSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addStretch ( int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addStretch ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addStrut ( int size )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSTRUT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->addStrut ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDWIDGET )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    obj->addWidget ( par1, OPINT(2,0),  (Qt::Alignment) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Direction direction () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_DIRECTION )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->direction (  ) );
  }
}


/*
void insertLayout ( int index, QLayout * layout, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTLAYOUT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayout * par2 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertLayout ( par1, par2, OPINT(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertSpacerItem ( int index, QSpacerItem * spacerItem )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSPACERITEM )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSpacerItem * par2 = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertSpacerItem ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertSpacing ( int index, int size )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->insertSpacing ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertStretch ( int index, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->insertStretch ( par1, OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertWidget ( int index, QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTWIDGET )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->insertWidget ( par1, par2, OPINT(3,0),  (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETDIRECTION )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDirection (  (QBoxLayout::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretch ( int index, int stretch )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setStretch ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setStretchFactor ( QWidget * widget, int stretch )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR1 )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    hb_retl( obj->setStretchFactor ( par1, par2 ) );
  }
}


/*
bool setStretchFactor ( QLayout * layout, int stretch )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR2 )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    hb_retl( obj->setStretchFactor ( par1, par2 ) );
  }
}


//[1]bool setStretchFactor ( QWidget * widget, int stretch )
//[2]bool setStretchFactor ( QLayout * layout, int stretch )

HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBOXLAYOUT_SETSTRETCHFACTOR1 );
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBOXLAYOUT_SETSTRETCHFACTOR2 );
  }
}

/*
int spacing () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_SPACING )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->spacing (  ) );
  }
}


/*
int stretch ( int index ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_STRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->stretch ( par1 ) );
  }
}


/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDITEM )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_COUNT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_EXPANDINGDIRECTIONS )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->expandingDirections (  ) );
  }
}


/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_HASHEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}


/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_HEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->heightForWidth ( par1 ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QBOXLAYOUT_INVALIDATE )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_ITEMAT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayoutItem * ptr = obj->itemAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}


/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_MAXIMUMSIZE )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_MINIMUMHEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->minimumHeightForWidth ( par1 ) );
  }
}


/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_MINIMUMSIZE )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry ( const QRect & r )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETGEOMETRY )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_SIZEHINT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QBOXLAYOUT_TAKEAT )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayoutItem * ptr = obj->takeAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}




#pragma ENDDUMP
