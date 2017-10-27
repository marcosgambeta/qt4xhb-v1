$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

CLASS QTextTableFormat INHERIT QTextFrameFormat

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD cellPadding
   METHOD cellSpacing
   METHOD clearColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD columns
   METHOD headerRowCount
   METHOD isValid
   METHOD setAlignment
   METHOD setCellPadding
   METHOD setCellSpacing
   METHOD setColumnWidthConstraints
   METHOD setHeaderRowCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextTableFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextTableFormat ()
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_NEW )
{
  QTextTableFormat * o = new QTextTableFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
qreal cellPadding () const
*/
$method=|qreal|cellPadding|

/*
qreal cellSpacing () const
*/
$method=|qreal|cellSpacing|

/*
void clearColumnWidthConstraints ()
*/
$method=|void|clearColumnWidthConstraints|

/*
QVector<QTextLength> columnWidthConstraints () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_COLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QTextLength> list = obj->columnWidthConstraints ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTLENGTH" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
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
        hb_itemPutPtr( pItem, (QTextLength *) new QTextLength ( list[i] ) );
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
int columns () const
*/
$method=|int|columns|

/*
int headerRowCount () const
*/
$method=|int|headerRowCount|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setCellPadding ( qreal padding )
*/
$method=|void|setCellPadding|qreal

/*
void setCellSpacing ( qreal spacing )
*/
$method=|void|setCellSpacing|qreal

/*
void setColumnWidthConstraints ( const QVector<QTextLength> & constraints )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCOLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QTextLength> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setColumnWidthConstraints ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeaderRowCount ( int count )
*/
$method=|void|setHeaderRowCount|int

#pragma ENDDUMP
