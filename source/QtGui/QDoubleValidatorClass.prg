/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDoubleValidator INHERIT QValidator

   DATA class_id INIT Class_Id_QDoubleValidator
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDoubleValidator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDoubleValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW1 )
{
  QDoubleValidator * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDoubleValidator ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW2 )
{
  QDoubleValidator * o = NULL;
  int par3 = hb_parni(3);
  QObject * par4 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDoubleValidator ( PDOUBLE(1), PDOUBLE(2), par3, par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOUBLEVALIDATOR_DELETE )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
double bottom () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_BOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->bottom (  );
    hb_retnd( r );
  }
}


/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_DECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->decimals (  ) );
  }
}


/*
Notation notation () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->notation (  ) );
  }
}


/*
void setBottom ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETBOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottom ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDecimals ( int )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETDECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDecimals ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotation ( Notation )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETNOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNotation (  (QDoubleValidator::Notation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETRANGE )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRange ( PDOUBLE(1), PDOUBLE(2), OPINT(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETTOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTop ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double top () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_TOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->top (  );
    hb_retnd( r );
  }
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_VALIDATE ) // TODO: revisar implementacao e corrigir
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}




#pragma ENDDUMP
