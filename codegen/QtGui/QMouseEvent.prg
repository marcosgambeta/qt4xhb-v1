$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QMOUSEEVENT
#endif

CLASS QMouseEvent INHERIT QInputEvent

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD button
   METHOD buttons
   METHOD hasExtendedInfo
   METHOD posF
   METHOD createExtendedMouseEvent

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMouseEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_NEW1 )
{
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  QMouseEvent * o = new QMouseEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), (Qt::MouseButton) par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_NEW2 )
{
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  QMouseEvent * o = new QMouseEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3), (Qt::MouseButton) par4, (Qt::MouseButtons) par5, (Qt::KeyboardModifiers) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QPoint &pos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_POS )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

/*
const QPoint &globalPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALPOS )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

/*
int globalX() const
*/
$method=|int|globalX|

/*
int globalY() const
*/
$method=|int|globalY|

/*
Qt::MouseButton button() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTON )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->button () );
  }
}

/*
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTONS )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->buttons () );
  }
}

/*
bool hasExtendedInfo() const
*/
$method=|bool|hasExtendedInfo|

/*
QPointF posF() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_POSF )
{
  QMouseEvent * obj = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->posF () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
static QMouseEvent *createExtendedMouseEvent(Type type, const QPointF &pos,const QPoint &globalPos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QMOUSEEVENT_CREATEEXTENDEDMOUSEEVENT )
{
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  QMouseEvent * ptr = QMouseEvent::createExtendedMouseEvent ( (QEvent::Type) hb_parni(1), *PQPOINTF(2), *PQPOINT(3), (Qt::MouseButton) par4, (Qt::MouseButtons) par5, (Qt::KeyboardModifiers) par6 );
  _qt4xhb_createReturnClass ( ptr, "QMOUSEEVENT" );
}

#pragma ENDDUMP
