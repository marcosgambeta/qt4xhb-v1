$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QGroupBox INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked

   METHOD onClicked
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGroupBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGroupBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGroupBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW1 )
{
  QGroupBox * o = new QGroupBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGroupBox ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW2 )
{
  QGroupBox * o = new QGroupBox ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGROUPBOX_ALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCheckable () );
  }
}

/*
bool isChecked () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKED )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isChecked () );
  }
}

/*
bool isFlat () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISFLAT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFlat () );
  }
}

/*
void setAlignment ( int alignment )
*/
HB_FUNC_STATIC( QGROUPBOX_SETALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlignment ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckable ( bool checkable )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCheckable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlat ( bool flat )
*/
HB_FUNC_STATIC( QGROUPBOX_SETFLAT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFlat ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QGROUPBOX_SETTITLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString title () const
*/
HB_FUNC_STATIC( QGROUPBOX_TITLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QGROUPBOX_MINIMUMSIZEHINT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setChecked ( bool checked )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKED )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChecked ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
