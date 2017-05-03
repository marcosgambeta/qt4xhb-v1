/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

CLASS QPushButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QPushButton
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD showMenu
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPushButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPushButton>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QPushButton ( QWidget * parent = 0 )
*/
void QPushButton_new1 ()
{
  QPushButton * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPushButton ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPushButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPushButton ( const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new2 ()
{
  QPushButton * o = NULL;
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPushButton ( PQSTRING(1), par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPushButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new3 ()
{
  QPushButton * o = NULL;
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPushButton ( par1, PQSTRING(2), par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPushButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

//[1]QPushButton ( QWidget * parent = 0 )
//[2]QPushButton ( const QString & text, QWidget * parent = 0 )
//[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QPushButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPUSHBUTTON_DELETE )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoDefault () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_AUTODEFAULT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->autoDefault (  ) );
  }
}

/*
bool isDefault () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISDEFAULT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isDefault (  ) );
  }
}

/*
bool isFlat () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISFLAT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isFlat (  ) );
  }
}

/*
void setAutoDefault ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETAUTODEFAULT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setAutoDefault ( PBOOL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefault ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETDEFAULT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDefault ( PBOOL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlat ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETFLAT )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setFlat ( PBOOL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMenu ()
*/
HB_FUNC_STATIC( QPUSHBUTTON_SHOWMENU )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->showMenu (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
