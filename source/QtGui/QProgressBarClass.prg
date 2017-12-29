/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressBar INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD format
   METHOD invertedAppearance
   METHOD isTextVisible
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD setAlignment
   METHOD setFormat
   METHOD setInvertedAppearance
   METHOD setTextDirection
   METHOD setTextVisible
   METHOD text
   METHOD textDirection
   METHOD value
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD reset
   METHOD setMaximum
   METHOD setMinimum
   METHOD setOrientation
   METHOD setRange
   METHOD setValue

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProgressBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QProgressBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProgressBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPROGRESSBAR_NEW )
{
  QProgressBar * o = new QProgressBar ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QPROGRESSBAR_DELETE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ALIGNMENT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
QString format () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_FORMAT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->format () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool invertedAppearance ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_INVERTEDAPPEARANCE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->invertedAppearance () );
  }
}

/*
bool isTextVisible () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ISTEXTVISIBLE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTextVisible () );
  }
}

/*
int maximum () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MAXIMUM )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maximum () );
  }
}

/*
int minimum () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MINIMUM )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minimum () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ORIENTATION )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETALIGNMENT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QString & format )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETFORMAT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInvertedAppearance ( bool invert )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETINVERTEDAPPEARANCE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInvertedAppearance ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextDirection ( QProgressBar::Direction textDirection )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETTEXTDIRECTION )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextDirection ( (QProgressBar::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextVisible ( bool visible )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETTEXTVISIBLE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString text () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_TEXT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QProgressBar::Direction textDirection ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_TEXTDIRECTION )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textDirection () );
  }
}

/*
int value () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_VALUE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->value () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MINIMUMSIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_SIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void reset ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_RESET )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximum ( int maximum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETMAXIMUM )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimum ( int minimum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETMINIMUM )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETORIENTATION )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETRANGE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValue ( int value )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETVALUE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
