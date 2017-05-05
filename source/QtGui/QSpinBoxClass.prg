/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSpinBox INHERIT QAbstractSpinBox

   DATA class_id INIT Class_Id_QSpinBox
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD minimum
   METHOD prefix
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPrefix
   METHOD setRange
   METHOD setSingleStep
   METHOD setSuffix
   METHOD singleStep
   METHOD suffix
   METHOD value
   METHOD setValue
   METHOD onValueChanged1
   METHOD onValueChanged2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPINBOX_NEW )
{
  QSpinBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSpinBox ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSPINBOX_DELETE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cleanText () const
*/
HB_FUNC_STATIC( QSPINBOX_CLEANTEXT )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->cleanText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int maximum () const
*/
HB_FUNC_STATIC( QSPINBOX_MAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}


/*
int minimum () const
*/
HB_FUNC_STATIC( QSPINBOX_MINIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}


/*
QString prefix () const
*/
HB_FUNC_STATIC( QSPINBOX_PREFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->prefix (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setMaximum ( int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETMAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimum ( int min )
*/
HB_FUNC_STATIC( QSPINBOX_SETMINIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QSPINBOX_SETPREFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrefix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QSPINBOX_SETRANGE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSingleStep ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETSINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSingleStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QSPINBOX_SETSUFFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSuffix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int singleStep () const
*/
HB_FUNC_STATIC( QSPINBOX_SINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->singleStep (  ) );
  }
}


/*
QString suffix () const
*/
HB_FUNC_STATIC( QSPINBOX_SUFFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->suffix (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int value () const
*/
HB_FUNC_STATIC( QSPINBOX_VALUE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}


/*
void setValue ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETVALUE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
