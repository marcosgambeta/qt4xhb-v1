/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON

CLASS QDialogButtonBox INHERIT QWidget

   DATA class_id INIT Class_Id_QDialogButtonBox
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton3
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD centerButtons
   METHOD clear
   METHOD orientation
   METHOD removeButton
   METHOD setCenterButtons
   METHOD setOrientation
   METHOD setStandardButtons
   METHOD standardButton
   METHOD standardButtons
   METHOD onAccepted
   METHOD onClicked
   METHOD onHelpRequested
   METHOD onRejected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDialogButtonBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDialogButtonBox>

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
QDialogButtonBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW1 )
{
  QDialogButtonBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDialogButtonBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDialogButtonBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW2 )
{
  QDialogButtonBox * o = NULL;
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDialogButtonBox (  (Qt::Orientation) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDialogButtonBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW3 )
{
  QDialogButtonBox * o = NULL;
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) Qt::Horizontal : hb_parni(2);
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDialogButtonBox (  (QDialogButtonBox::StandardButtons) par1,  (Qt::Orientation) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDialogButtonBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDialogButtonBox ( QWidget * parent = 0 )
//[2]QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
//[3]QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_DELETE )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addButton ( QAbstractButton * button, ButtonRole role )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON1 )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->addButton ( par1,  (QDialogButtonBox::ButtonRole) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON2 )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    QPushButton * ptr = obj->addButton ( par1,  (QDialogButtonBox::ButtonRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


/*
QPushButton * addButton ( StandardButton button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON3 )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPushButton * ptr = obj->addButton (  (QDialogButtonBox::StandardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_ADDBUTTON1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_ADDBUTTON2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDIALOGBUTTONBOX_ADDBUTTON3 );
  }
}

/*
QPushButton * button ( StandardButton which ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTON )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPushButton * ptr = obj->button (  (QDialogButtonBox::StandardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTONROLE )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->buttonRole ( par1 ) );
  }
}


/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool centerButtons () const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CENTERBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->centerButtons (  ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CLEAR )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ORIENTATION )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->orientation (  ) );
  }
}


/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_REMOVEBUTTON )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCenterButtons ( bool center )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETCENTERBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenterButtons ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETORIENTATION )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardButtons ( StandardButtons buttons )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETSTANDARDBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStandardButtons (  (QDialogButtonBox::StandardButtons) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTON )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->standardButton ( par1 ) );
  }
}


/*
StandardButtons standardButtons () const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->standardButtons (  ) );
  }
}





#pragma ENDDUMP
