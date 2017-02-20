/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QPushButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QPushButton
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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
QPushButton ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPUSHBUTTON_NEW1 )
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
HB_FUNC_STATIC( QPUSHBUTTON_NEW2 )
{
  QPushButton * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPushButton ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPushButton *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPUSHBUTTON_NEW3 )
{
  QPushButton * o = NULL;
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QString par2 = hb_parc(2);
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPushButton ( par1, par2, par3 );
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
    HB_FUNC_EXEC( QPUSHBUTTON_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPUSHBUTTON_NEW2 );
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPUSHBUTTON_NEW3 );
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
    bool par1 = hb_parl(1);
    obj->setAutoDefault ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setDefault ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setFlat ( par1 );
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
