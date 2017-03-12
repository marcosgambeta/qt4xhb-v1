/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QIntValidator INHERIT QValidator

   DATA class_id INIT Class_Id_QIntValidator
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD setBottom
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD fixup
   METHOD validate
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIntValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIntValidator>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QIntValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW1 )
{
  QIntValidator * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QIntValidator ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIntValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QIntValidator ( int minimum, int maximum, QObject * parent )
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW2 )
{
  QIntValidator * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QObject * par3 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QIntValidator ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIntValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QIntValidator ( QObject * parent = 0 )
//[2]QIntValidator ( int minimum, int maximum, QObject * parent )

HB_FUNC_STATIC( QINTVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINTVALIDATOR_DELETE )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom () const
*/
HB_FUNC_STATIC( QINTVALIDATOR_BOTTOM )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bottom (  ) );
  }
}


/*
void setBottom ( int )
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETBOTTOM )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBottom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange ( int bottom, int top )
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETRANGE )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( int )
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETTOP )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTop ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int top () const
*/
HB_FUNC_STATIC( QINTVALIDATOR_TOP )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->top (  ) );
  }
}


/*
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QINTVALIDATOR_FIXUP )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QINTVALIDATOR_VALIDATE )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2;
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}




#pragma ENDDUMP
