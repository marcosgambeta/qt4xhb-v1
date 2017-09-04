$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId

   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QButtonGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QButtonGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QBUTTONGROUP_NEW )
{
  QButtonGroup * o = new QButtonGroup ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QBUTTONGROUP_DELETE )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON1 )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addButton ( QAbstractButton * button, int id )
*/
HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON2 )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->addButton ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    HB_FUNC_EXEC( QBUTTONGROUP_ADDBUTTON1 );
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBUTTONGROUP_ADDBUTTON2 );
  }
}

/*
QAbstractButton * button ( int id ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * ptr = obj->button ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}

/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTONS )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
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
QAbstractButton * checkedButton () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * ptr = obj->checkedButton ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}

/*
int checkedId () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDID )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->checkedId () );
  }
}

/*
bool exclusive () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_EXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->exclusive () );
  }
}

/*
int id ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_ID )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->id ( par1 ) );
  }
}

/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QBUTTONGROUP_REMOVEBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETEXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExclusive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setId ( QAbstractButton * button, int id )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETID )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setId ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
