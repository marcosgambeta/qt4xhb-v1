/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFormLayout>

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
QFormLayout ( QWidget * parent = 0 )
*/
HB_FUNC( QFORMLAYOUT_NEW )
{
  QFormLayout * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFormLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFormLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QFORMLAYOUT_DELETE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addRow ( QWidget * label, QWidget * field )
*/
HB_FUNC( QFORMLAYOUT_ADDROW1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRow ( QWidget * label, QLayout * field )
*/
HB_FUNC( QFORMLAYOUT_ADDROW2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLayout * par2 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRow ( const QString & labelText, QWidget * field )
*/
HB_FUNC( QFORMLAYOUT_ADDROW3 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRow ( const QString & labelText, QLayout * field )
*/
HB_FUNC( QFORMLAYOUT_ADDROW4 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QLayout * par2 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRow ( QWidget * widget )
*/
HB_FUNC( QFORMLAYOUT_ADDROW5 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRow ( QLayout * layout )
*/
HB_FUNC( QFORMLAYOUT_ADDROW6 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addRow ( QWidget * label, QWidget * field )
//[2]void addRow ( QWidget * label, QLayout * field )
//[3]void addRow ( const QString & labelText, QWidget * field )
//[4]void addRow ( const QString & labelText, QLayout * field )
//[5]void addRow ( QWidget * widget )
//[6]void addRow ( QLayout * layout )

HB_FUNC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW4 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW5 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW6 );
  }
}

/*
FieldGrowthPolicy fieldGrowthPolicy () const
*/
HB_FUNC( QFORMLAYOUT_FIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fieldGrowthPolicy (  );
    hb_retni( i );
  }
}


/*
Qt::Alignment formAlignment () const
*/
HB_FUNC( QFORMLAYOUT_FORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->formAlignment (  );
    hb_retni( i );
  }
}


/*
void getItemPosition ( int index, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC( QFORMLAYOUT_GETITEMPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getItemPosition ( par1, &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getLayoutPosition ( QLayout * layout, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC( QFORMLAYOUT_GETLAYOUTPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getLayoutPosition ( par1, &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getWidgetPosition ( QWidget * widget, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC( QFORMLAYOUT_GETWIDGETPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getWidgetPosition ( par1, &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int horizontalSpacing () const
*/
HB_FUNC( QFORMLAYOUT_HORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->horizontalSpacing (  );
    hb_retni( i );
  }
}


/*
void insertRow ( int row, QWidget * label, QWidget * field )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par3 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row, QWidget * label, QLayout * field )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLayout * par3 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row, const QString & labelText, QWidget * field )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW3 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    QWidget * par3 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row, const QString & labelText, QLayout * field )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW4 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    QLayout * par3 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row, QWidget * widget )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW5 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row, QLayout * layout )
*/
HB_FUNC( QFORMLAYOUT_INSERTROW6 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayout * par2 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertRow ( int row, QWidget * label, QWidget * field )
//[2]void insertRow ( int row, QWidget * label, QLayout * field )
//[3]void insertRow ( int row, const QString & labelText, QWidget * field )
//[4]void insertRow ( int row, const QString & labelText, QLayout * field )
//[5]void insertRow ( int row, QWidget * widget )
//[6]void insertRow ( int row, QLayout * layout )

HB_FUNC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW6 );
  }
}

/*
QLayoutItem * itemAt ( int row, ItemRole role ) const
*/
HB_FUNC( QFORMLAYOUT_ITEMAT1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QLayoutItem * ptr = obj->itemAt ( par1,  (QFormLayout::ItemRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );  }
}


/*
Qt::Alignment labelAlignment () const
*/
HB_FUNC( QFORMLAYOUT_LABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->labelAlignment (  );
    hb_retni( i );
  }
}


/*
QWidget * labelForField ( QWidget * field ) const
*/
HB_FUNC( QFORMLAYOUT_LABELFORFIELD1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->labelForField ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
QWidget * labelForField ( QLayout * field ) const
*/
HB_FUNC( QFORMLAYOUT_LABELFORFIELD2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->labelForField ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


//[1]QWidget * labelForField ( QWidget * field ) const
//[2]QWidget * labelForField ( QLayout * field ) const

HB_FUNC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD1 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD2 );
  }
}

/*
int rowCount () const
*/
HB_FUNC( QFORMLAYOUT_ROWCOUNT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->rowCount (  );
    hb_retni( i );
  }
}


/*
RowWrapPolicy rowWrapPolicy () const
*/
HB_FUNC( QFORMLAYOUT_ROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->rowWrapPolicy (  );
    hb_retni( i );
  }
}


/*
void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
*/
HB_FUNC( QFORMLAYOUT_SETFIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFieldGrowthPolicy (  (QFormLayout::FieldGrowthPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormAlignment ( Qt::Alignment alignment )
*/
HB_FUNC( QFORMLAYOUT_SETFORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFormAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC( QFORMLAYOUT_SETHORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItem ( int row, ItemRole role, QLayoutItem * item )
*/
HB_FUNC( QFORMLAYOUT_SETITEM )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QLayout * par3 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItem ( par1,  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelAlignment ( Qt::Alignment alignment )
*/
HB_FUNC( QFORMLAYOUT_SETLABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLabelAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLayout ( int row, ItemRole role, QLayout * layout )
*/
HB_FUNC( QFORMLAYOUT_SETLAYOUT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QLayout * par3 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLayout ( par1,  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowWrapPolicy ( RowWrapPolicy policy )
*/
HB_FUNC( QFORMLAYOUT_SETROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRowWrapPolicy (  (QFormLayout::RowWrapPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( int spacing )
*/
HB_FUNC( QFORMLAYOUT_SETSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalSpacing ( int spacing )
*/
HB_FUNC( QFORMLAYOUT_SETVERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( int row, ItemRole role, QWidget * widget )
*/
HB_FUNC( QFORMLAYOUT_SETWIDGET )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QWidget * par3 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidget ( par1,  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int spacing () const
*/
HB_FUNC( QFORMLAYOUT_SPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->spacing (  );
    hb_retni( i );
  }
}


/*
int verticalSpacing () const
*/
HB_FUNC( QFORMLAYOUT_VERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->verticalSpacing (  );
    hb_retni( i );
  }
}


/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC( QFORMLAYOUT_ADDITEM )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const
*/
HB_FUNC( QFORMLAYOUT_COUNT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC( QFORMLAYOUT_EXPANDINGDIRECTIONS )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->expandingDirections (  );
    hb_retni( i );
  }
}


/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC( QFORMLAYOUT_HASHEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasHeightForWidth (  );
    hb_retl( b );
  }
}


/*
virtual int heightForWidth ( int width ) const
*/
HB_FUNC( QFORMLAYOUT_HEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->heightForWidth ( par1 );
    hb_retni( i );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC( QFORMLAYOUT_INVALIDATE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC( QFORMLAYOUT_ITEMAT2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayoutItem * ptr = obj->itemAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );  }
}


/*
virtual QSize minimumSize () const
*/
HB_FUNC( QFORMLAYOUT_MINIMUMSIZE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC( QFORMLAYOUT_SETGEOMETRY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QFORMLAYOUT_SIZEHINT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC( QFORMLAYOUT_TAKEAT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QLayoutItem * ptr = obj->takeAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );  }
}



