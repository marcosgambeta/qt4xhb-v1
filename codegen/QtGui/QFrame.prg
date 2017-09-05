$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFrame INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD frameRect
   METHOD frameShadow
   METHOD frameShape
   METHOD frameStyle
   METHOD frameWidth
   METHOD lineWidth
   METHOD midLineWidth
   METHOD setFrameRect
   METHOD setFrameShadow
   METHOD setFrameShape
   METHOD setFrameStyle
   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QFRAME_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QFrame * o = new QFrame ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QRect frameRect () const
*/
HB_FUNC_STATIC( QFRAME_FRAMERECT )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
Shadow frameShadow () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESHADOW )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->frameShadow () );
  }
}

/*
Shape frameShape () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESHAPE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->frameShape () );
  }
}

/*
int frameStyle () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESTYLE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->frameStyle () );
  }
}

/*
int frameWidth () const
*/
HB_FUNC_STATIC( QFRAME_FRAMEWIDTH )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->frameWidth () );
  }
}

/*
int lineWidth () const
*/
HB_FUNC_STATIC( QFRAME_LINEWIDTH )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineWidth () );
  }
}

/*
int midLineWidth () const
*/
HB_FUNC_STATIC( QFRAME_MIDLINEWIDTH )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->midLineWidth () );
  }
}

/*
void setFrameRect ( const QRect & )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMERECT )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrameRect ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrameShadow ( Shadow )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESHADOW )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFrameShadow ( (QFrame::Shadow) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrameShape ( Shape )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESHAPE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFrameShape ( (QFrame::Shape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrameStyle ( int style )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESTYLE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrameStyle ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineWidth ( int )
*/
HB_FUNC_STATIC( QFRAME_SETLINEWIDTH )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLineWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMidLineWidth ( int )
*/
HB_FUNC_STATIC( QFRAME_SETMIDLINEWIDTH )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMidLineWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFRAME_SIZEHINT )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
