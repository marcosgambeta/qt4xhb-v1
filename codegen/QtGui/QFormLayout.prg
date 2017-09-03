$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QFormLayout INHERIT QLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addRow1
   METHOD addRow2
   METHOD addRow3
   METHOD addRow4
   METHOD addRow5
   METHOD addRow6
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD getItemPosition
   METHOD getLayoutPosition
   METHOD getWidgetPosition
   METHOD horizontalSpacing
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow4
   METHOD insertRow5
   METHOD insertRow6
   METHOD insertRow
   METHOD itemAt1
   METHOD labelAlignment
   METHOD labelForField1
   METHOD labelForField2
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt2
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFormLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFormLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFormLayout ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFORMLAYOUT_NEW )
{
  QFormLayout * o = new QFormLayout ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QFORMLAYOUT_DELETE )
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
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQWIDGET(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * label, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQWIDGET(1), PQLAYOUT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW3 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQSTRING(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW4 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQSTRING(1), PQLAYOUT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW5 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW6 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addRow ( PQLAYOUT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addRow ( QWidget * label, QWidget * field )
//[2]void addRow ( QWidget * label, QLayout * field )
//[3]void addRow ( const QString & labelText, QWidget * field )
//[4]void addRow ( const QString & labelText, QLayout * field )
//[5]void addRow ( QWidget * widget )
//[6]void addRow ( QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
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
HB_FUNC_STATIC( QFORMLAYOUT_FIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fieldGrowthPolicy () );
  }
}

/*
Qt::Alignment formAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->formAlignment () );
  }
}

/*
void getItemPosition ( int index, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_GETITEMPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getItemPosition ( PINT(1), &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getLayoutPosition ( QLayout * layout, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_GETLAYOUTPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getLayoutPosition ( PQLAYOUT(1), &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getWidgetPosition ( QWidget * widget, int * rowPtr, ItemRole * rolePtr ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_GETWIDGETPOSITION )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2;
    QFormLayout::ItemRole * par3 = (QFormLayout::ItemRole *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->getWidgetPosition ( PQWIDGET(1), &par2, par3 );
    hb_storni( par2, 2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int horizontalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->horizontalSpacing () );
  }
}

/*
void insertRow ( int row, QWidget * label, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2), PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * label, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2), PQLAYOUT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW3 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQSTRING(2), PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW4 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQSTRING(2), PQLAYOUT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW5 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW6 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1), PQLAYOUT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertRow ( int row, QWidget * label, QWidget * field )
//[2]void insertRow ( int row, QWidget * label, QLayout * field )
//[3]void insertRow ( int row, const QString & labelText, QWidget * field )
//[4]void insertRow ( int row, const QString & labelText, QLayout * field )
//[5]void insertRow ( int row, QWidget * widget )
//[6]void insertRow ( int row, QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
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
HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    QLayoutItem * ptr = obj->itemAt ( PINT(1), (QFormLayout::ItemRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
Qt::Alignment labelAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->labelAlignment () );
  }
}

/*
QWidget * labelForField ( QWidget * field ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD1 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->labelForField ( PQWIDGET(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * labelForField ( QLayout * field ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->labelForField ( PQLAYOUT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

//[1]QWidget * labelForField ( QWidget * field ) const
//[2]QWidget * labelForField ( QLayout * field ) const

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
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
HB_FUNC_STATIC( QFORMLAYOUT_ROWCOUNT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}

/*
RowWrapPolicy rowWrapPolicy () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->rowWrapPolicy () );
  }
}

/*
void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFieldGrowthPolicy ( (QFormLayout::FieldGrowthPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFormAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETHORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalSpacing ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem ( int row, ItemRole role, QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETITEM )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setItem ( PINT(1), (QFormLayout::ItemRole) par2, PQLAYOUT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabelAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLabelAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayout ( int row, ItemRole role, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLAYOUT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setLayout ( PINT(1), (QFormLayout::ItemRole) par2, PQLAYOUT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowWrapPolicy ( RowWrapPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRowWrapPolicy ( (QFormLayout::RowWrapPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpacing ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETVERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalSpacing ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( int row, ItemRole role, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETWIDGET )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setWidget ( PINT(1), (QFormLayout::ItemRole) par2, PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int spacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->spacing () );
  }
}

/*
int verticalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_VERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->verticalSpacing () );
  }
}

/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDITEM )
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
HB_FUNC_STATIC( QFORMLAYOUT_COUNT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_EXPANDINGDIRECTIONS )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->expandingDirections () );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HASHEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}

/*
virtual int heightForWidth ( int width ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QFORMLAYOUT_INVALIDATE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT2 )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_MINIMUMSIZE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETGEOMETRY )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SIZEHINT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QFORMLAYOUT_TAKEAT )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * ptr = obj->takeAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

#pragma ENDDUMP
