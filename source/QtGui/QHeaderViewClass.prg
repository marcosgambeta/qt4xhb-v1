/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QSIZE

CLASS QHeaderView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QHeaderView
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cascadingSectionResizes
   METHOD count
   METHOD defaultAlignment
   METHOD defaultSectionSize
   METHOD hiddenSectionCount
   METHOD hideSection
   METHOD highlightSections
   METHOD isClickable
   METHOD isMovable
   METHOD isSectionHidden
   METHOD isSortIndicatorShown
   METHOD length
   METHOD logicalIndex
   METHOD logicalIndexAt1
   METHOD logicalIndexAt2
   METHOD logicalIndexAt3
   METHOD logicalIndexAt
   METHOD minimumSectionSize
   METHOD moveSection
   METHOD offset
   METHOD orientation
   METHOD resizeMode
   METHOD resizeSection
   METHOD resizeSections
   METHOD restoreState
   METHOD saveState
   METHOD sectionPosition
   METHOD sectionSize
   METHOD sectionSizeHint
   METHOD sectionViewportPosition
   METHOD sectionsHidden
   METHOD sectionsMoved
   METHOD setCascadingSectionResizes
   METHOD setClickable
   METHOD setDefaultAlignment
   METHOD setDefaultSectionSize
   METHOD setHighlightSections
   METHOD setMinimumSectionSize
   METHOD setMovable
   METHOD setResizeMode1
   METHOD setResizeMode2
   METHOD setResizeMode
   METHOD setSectionHidden
   METHOD setSortIndicator
   METHOD setSortIndicatorShown
   METHOD setStretchLastSection
   METHOD showSection
   METHOD sortIndicatorOrder
   METHOD sortIndicatorSection
   METHOD stretchLastSection
   METHOD stretchSectionCount
   METHOD swapSections
   METHOD visualIndex
   METHOD visualIndexAt
   METHOD reset
   METHOD setModel
   METHOD sizeHint
   METHOD headerDataChanged
   METHOD setOffset
   METHOD setOffsetToLastSection
   METHOD setOffsetToSectionPosition
   METHOD onGeometriesChanged
   METHOD onSectionAutoResize
   METHOD onSectionClicked
   METHOD onSectionCountChanged
   METHOD onSectionDoubleClicked
   METHOD onSectionEntered
   METHOD onSectionHandleDoubleClicked
   METHOD onSectionMoved
   METHOD onSectionPressed
   METHOD onSectionResized
   METHOD onSortIndicatorChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHeaderView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QHeaderView>

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
QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC( QHEADERVIEW_NEW )
{
  QHeaderView * o = NULL;
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHeaderView (  (Qt::Orientation) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHeaderView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QHEADERVIEW_DELETE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool cascadingSectionResizes () const
*/
HB_FUNC( QHEADERVIEW_CASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->cascadingSectionResizes (  );
    hb_retl( b );
  }
}


/*
int count () const
*/
HB_FUNC( QHEADERVIEW_COUNT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
Qt::Alignment defaultAlignment () const
*/
HB_FUNC( QHEADERVIEW_DEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->defaultAlignment (  );
    hb_retni( i );
  }
}


/*
int defaultSectionSize () const
*/
HB_FUNC( QHEADERVIEW_DEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->defaultSectionSize (  );
    hb_retni( i );
  }
}


/*
int hiddenSectionCount () const
*/
HB_FUNC( QHEADERVIEW_HIDDENSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hiddenSectionCount (  );
    hb_retni( i );
  }
}


/*
void hideSection ( int logicalIndex )
*/
HB_FUNC( QHEADERVIEW_HIDESECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->hideSection ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool highlightSections () const
*/
HB_FUNC( QHEADERVIEW_HIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->highlightSections (  );
    hb_retl( b );
  }
}


/*
bool isClickable () const
*/
HB_FUNC( QHEADERVIEW_ISCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isClickable (  );
    hb_retl( b );
  }
}


/*
bool isMovable () const
*/
HB_FUNC( QHEADERVIEW_ISMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isMovable (  );
    hb_retl( b );
  }
}


/*
bool isSectionHidden ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_ISSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isSectionHidden ( par1 );
    hb_retl( b );
  }
}


/*
bool isSortIndicatorShown () const
*/
HB_FUNC( QHEADERVIEW_ISSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSortIndicatorShown (  );
    hb_retl( b );
  }
}


/*
int length () const
*/
HB_FUNC( QHEADERVIEW_LENGTH )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->length (  );
    hb_retni( i );
  }
}


/*
int logicalIndex ( int visualIndex ) const
*/
HB_FUNC( QHEADERVIEW_LOGICALINDEX )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->logicalIndex ( par1 );
    hb_retni( i );
  }
}


/*
int logicalIndexAt ( int position ) const
*/
HB_FUNC( QHEADERVIEW_LOGICALINDEXAT1 )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->logicalIndexAt ( par1 );
    hb_retni( i );
  }
}


/*
int logicalIndexAt ( int x, int y ) const
*/
HB_FUNC( QHEADERVIEW_LOGICALINDEXAT2 )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int i = obj->logicalIndexAt ( par1, par2 );
    hb_retni( i );
  }
}


/*
int logicalIndexAt ( const QPoint & pos ) const
*/
HB_FUNC( QHEADERVIEW_LOGICALINDEXAT3 )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->logicalIndexAt ( *par1 );
    hb_retni( i );
  }
}


//[1]int logicalIndexAt ( int position ) const
//[2]int logicalIndexAt ( int x, int y ) const
//[3]int logicalIndexAt ( const QPoint & pos ) const

HB_FUNC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT3 );
  }
}

/*
int minimumSectionSize () const
*/
HB_FUNC( QHEADERVIEW_MINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->minimumSectionSize (  );
    hb_retni( i );
  }
}


/*
void moveSection ( int from, int to )
*/
HB_FUNC( QHEADERVIEW_MOVESECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->moveSection ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int offset () const
*/
HB_FUNC( QHEADERVIEW_OFFSET )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->offset (  );
    hb_retni( i );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC( QHEADERVIEW_ORIENTATION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->orientation (  );
    hb_retni( i );
  }
}


/*
ResizeMode resizeMode ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_RESIZEMODE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->resizeMode ( par1 );
    hb_retni( i );
  }
}


/*
void resizeSection ( int logicalIndex, int size )
*/
HB_FUNC( QHEADERVIEW_RESIZESECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->resizeSection ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeSections ( QHeaderView::ResizeMode mode )
*/
HB_FUNC( QHEADERVIEW_RESIZESECTIONS )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resizeSections (  (QHeaderView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC( QHEADERVIEW_RESTORESTATE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->restoreState ( *par1 );
    hb_retl( b );
  }
}


/*
QByteArray saveState () const
*/
HB_FUNC( QHEADERVIEW_SAVESTATE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
int sectionPosition ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_SECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sectionPosition ( par1 );
    hb_retni( i );
  }
}


/*
int sectionSize ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_SECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sectionSize ( par1 );
    hb_retni( i );
  }
}


/*
int sectionSizeHint ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_SECTIONSIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sectionSizeHint ( par1 );
    hb_retni( i );
  }
}


/*
int sectionViewportPosition ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_SECTIONVIEWPORTPOSITION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sectionViewportPosition ( par1 );
    hb_retni( i );
  }
}


/*
bool sectionsHidden () const
*/
HB_FUNC( QHEADERVIEW_SECTIONSHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->sectionsHidden (  );
    hb_retl( b );
  }
}


/*
bool sectionsMoved () const
*/
HB_FUNC( QHEADERVIEW_SECTIONSMOVED )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->sectionsMoved (  );
    hb_retl( b );
  }
}


/*
void setCascadingSectionResizes ( bool enable )
*/
HB_FUNC( QHEADERVIEW_SETCASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCascadingSectionResizes ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClickable ( bool clickable )
*/
HB_FUNC( QHEADERVIEW_SETCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setClickable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultAlignment ( Qt::Alignment alignment )
*/
HB_FUNC( QHEADERVIEW_SETDEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultSectionSize ( int size )
*/
HB_FUNC( QHEADERVIEW_SETDEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultSectionSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHighlightSections ( bool highlight )
*/
HB_FUNC( QHEADERVIEW_SETHIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setHighlightSections ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSectionSize ( int size )
*/
HB_FUNC( QHEADERVIEW_SETMINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMinimumSectionSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovable ( bool movable )
*/
HB_FUNC( QHEADERVIEW_SETMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setMovable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizeMode ( ResizeMode mode )
*/
HB_FUNC( QHEADERVIEW_SETRESIZEMODE1 )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeMode (  (QHeaderView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizeMode ( int logicalIndex, ResizeMode mode )
*/
HB_FUNC( QHEADERVIEW_SETRESIZEMODE2 )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setResizeMode ( par1,  (QHeaderView::ResizeMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setResizeMode ( ResizeMode mode )
//[2]void setResizeMode ( int logicalIndex, ResizeMode mode )

HB_FUNC( QHEADERVIEW_SETRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_SETRESIZEMODE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_SETRESIZEMODE2 );
  }
}

/*
void setSectionHidden ( int logicalIndex, bool hide )
*/
HB_FUNC( QHEADERVIEW_SETSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setSectionHidden ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
*/
HB_FUNC( QHEADERVIEW_SETSORTINDICATOR )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setSortIndicator ( par1,  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortIndicatorShown ( bool show )
*/
HB_FUNC( QHEADERVIEW_SETSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSortIndicatorShown ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretchLastSection ( bool stretch )
*/
HB_FUNC( QHEADERVIEW_SETSTRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setStretchLastSection ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSection ( int logicalIndex )
*/
HB_FUNC( QHEADERVIEW_SHOWSECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->showSection ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::SortOrder sortIndicatorOrder () const
*/
HB_FUNC( QHEADERVIEW_SORTINDICATORORDER )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortIndicatorOrder (  );
    hb_retni( i );
  }
}


/*
int sortIndicatorSection () const
*/
HB_FUNC( QHEADERVIEW_SORTINDICATORSECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortIndicatorSection (  );
    hb_retni( i );
  }
}


/*
bool stretchLastSection () const
*/
HB_FUNC( QHEADERVIEW_STRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->stretchLastSection (  );
    hb_retl( b );
  }
}


/*
int stretchSectionCount () const
*/
HB_FUNC( QHEADERVIEW_STRETCHSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->stretchSectionCount (  );
    hb_retni( i );
  }
}


/*
void swapSections ( int first, int second )
*/
HB_FUNC( QHEADERVIEW_SWAPSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->swapSections ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int visualIndex ( int logicalIndex ) const
*/
HB_FUNC( QHEADERVIEW_VISUALINDEX )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->visualIndex ( par1 );
    hb_retni( i );
  }
}


/*
int visualIndexAt ( int position ) const
*/
HB_FUNC( QHEADERVIEW_VISUALINDEXAT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->visualIndexAt ( par1 );
    hb_retni( i );
  }
}


/*
virtual void reset ()
*/
HB_FUNC( QHEADERVIEW_RESET )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC( QHEADERVIEW_SETMODEL )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QHEADERVIEW_SIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
*/
HB_FUNC( QHEADERVIEW_HEADERDATACHANGED )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->headerDataChanged (  (Qt::Orientation) par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset ( int offset )
*/
HB_FUNC( QHEADERVIEW_SETOFFSET )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToLastSection ()
*/
HB_FUNC( QHEADERVIEW_SETOFFSETTOLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOffsetToLastSection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToSectionPosition ( int visualIndex )
*/
HB_FUNC( QHEADERVIEW_SETOFFSETTOSECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOffsetToSectionPosition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
