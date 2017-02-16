/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QLCDNumber INHERIT QFrame

   DATA class_id INIT Class_Id_QLCDNumber
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD checkOverflow1
   METHOD checkOverflow2
   METHOD checkOverflow
   METHOD digitCount
   METHOD intValue
   METHOD mode
   METHOD segmentStyle
   METHOD setDigitCount
   METHOD setMode
   METHOD setSegmentStyle
   METHOD smallDecimalPoint
   METHOD value
   METHOD sizeHint
   METHOD display1
   METHOD display2
   METHOD display3
   METHOD display
   METHOD setBinMode
   METHOD setDecMode
   METHOD setHexMode
   METHOD setOctMode
   METHOD setSmallDecimalPoint
   METHOD onOverflow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLCDNumber
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLCDNumber>

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
QLCDNumber ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLCDNUMBER_NEW1 )
{
  QLCDNumber * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLCDNumber ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLCDNumber *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLCDNumber ( uint numDigits, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLCDNUMBER_NEW2 )
{
  QLCDNumber * o = NULL;
  uint par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLCDNumber ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLCDNumber *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QLCDNumber ( QWidget * parent = 0 )
//[2]QLCDNumber ( uint numDigits, QWidget * parent = 0 )

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLCDNUMBER_DELETE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool checkOverflow ( double num ) const
*/
HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW1 )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    hb_retl( obj->checkOverflow ( par1 ) );
  }
}


/*
bool checkOverflow ( int num ) const
*/
HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW2 )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->checkOverflow ( par1 ) );
  }
}


//[1]bool checkOverflow ( double num ) const
//[2]bool checkOverflow ( int num ) const

// TODO: reconhecer se é int ou double
HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_CHECKOVERFLOW1 );
  }
}

/*
int digitCount () const
*/
HB_FUNC_STATIC( QLCDNUMBER_DIGITCOUNT )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->digitCount (  );
    hb_retni( i );
  }
}


/*
int intValue () const
*/
HB_FUNC_STATIC( QLCDNUMBER_INTVALUE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->intValue (  );
    hb_retni( i );
  }
}


/*
Mode mode () const
*/
HB_FUNC_STATIC( QLCDNUMBER_MODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->mode (  );
    hb_retni( i );
  }
}


/*
SegmentStyle segmentStyle () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SEGMENTSTYLE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->segmentStyle (  );
    hb_retni( i );
  }
}


/*
void setDigitCount ( int numDigits )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDIGITCOUNT )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDigitCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMode ( Mode )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETMODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMode (  (QLCDNumber::Mode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSegmentStyle ( SegmentStyle )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSEGMENTSTYLE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSegmentStyle (  (QLCDNumber::SegmentStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool smallDecimalPoint () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SMALLDECIMALPOINT )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->smallDecimalPoint (  ) );
  }
}


/*
double value () const
*/
HB_FUNC_STATIC( QLCDNUMBER_VALUE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->value (  );
    hb_retnd( r );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SIZEHINT )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void display ( const QString & s )
*/
HB_FUNC_STATIC( QLCDNUMBER_DISPLAY1 )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->display ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void display ( double num )
*/
HB_FUNC_STATIC( QLCDNUMBER_DISPLAY2 )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->display ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void display ( int num )
*/
HB_FUNC_STATIC( QLCDNUMBER_DISPLAY3 )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->display ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void display ( const QString & s )
//[2]void display ( double num )
//[3]void display ( int num )

// TODO: reconhecer se é int ou double

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY2 );
  }
}

/*
void setBinMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETBINMODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBinMode (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDecMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDECMODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDecMode (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHexMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETHEXMODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHexMode (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOctMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETOCTMODE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOctMode (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSmallDecimalPoint ( bool )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSMALLDECIMALPOINT )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSmallDecimalPoint ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
