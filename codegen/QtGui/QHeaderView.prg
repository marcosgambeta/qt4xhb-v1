%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
$constructor=|new|Qt::Orientation,QWidget *=0

$deleteMethod

$prototypeV2=bool cascadingSectionResizes() const

$prototypeV2=int count() const

$prototypeV2=Qt::Alignment defaultAlignment() const

$prototypeV2=int defaultSectionSize() const

$prototypeV2=int hiddenSectionCount() const

$prototypeV2=void hideSection( int logicalIndex )

$prototypeV2=bool highlightSections() const

$prototypeV2=bool isClickable() const

$prototypeV2=bool isMovable() const

$prototypeV2=bool isSectionHidden( int logicalIndex ) const

$prototypeV2=bool isSortIndicatorShown() const

$prototypeV2=int length() const

$prototypeV2=int logicalIndex( int visualIndex ) const

$prototype=int logicalIndexAt ( int position ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt1|int

$prototype=int logicalIndexAt ( int x, int y ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt2|int,int

$prototype=int logicalIndexAt ( const QPoint & pos ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt3|const QPoint &

/*
[1]int logicalIndexAt ( int position ) const
[2]int logicalIndexAt ( int x, int y ) const
[3]int logicalIndexAt ( const QPoint & pos ) const
*/

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_logicalIndexAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_logicalIndexAt2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QHeaderView_logicalIndexAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=logicalIndexAt

$prototypeV2=int minimumSectionSize() const

$prototypeV2=void moveSection( int from, int to )

$prototypeV2=int offset() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=QHeaderView::ResizeMode resizeMode( int logicalIndex ) const

$prototypeV2=void resizeSection( int logicalIndex, int size )

$prototypeV2=void resizeSections( QHeaderView::ResizeMode mode )

$prototypeV2=bool restoreState( const QByteArray & state )

$prototypeV2=QByteArray saveState() const

$prototypeV2=int sectionPosition( int logicalIndex ) const

$prototypeV2=int sectionSize( int logicalIndex ) const

$prototypeV2=int sectionSizeHint( int logicalIndex ) const

$prototypeV2=int sectionViewportPosition( int logicalIndex ) const

$prototypeV2=bool sectionsHidden() const

$prototypeV2=bool sectionsMoved() const

$prototypeV2=void setCascadingSectionResizes( bool enable )

$prototypeV2=void setClickable( bool clickable )

$prototypeV2=void setDefaultAlignment( Qt::Alignment alignment )

$prototypeV2=void setDefaultSectionSize( int size )

$prototypeV2=void setHighlightSections( bool highlight )

$prototypeV2=void setMinimumSectionSize( int size )

$prototypeV2=void setMovable( bool movable )

$prototype=void setResizeMode ( ResizeMode mode )
$internalMethod=|void|setResizeMode,setResizeMode1|QHeaderView::ResizeMode

$prototype=void setResizeMode ( int logicalIndex, ResizeMode mode )
$internalMethod=|void|setResizeMode,setResizeMode2|int,QHeaderView::ResizeMode

/*
[1]void setResizeMode ( ResizeMode mode )
[2]void setResizeMode ( int logicalIndex, ResizeMode mode )
*/

HB_FUNC_STATIC( QHEADERVIEW_SETRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_setResizeMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_setResizeMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResizeMode

$prototypeV2=void setSectionHidden( int logicalIndex, bool hide )

$prototypeV2=void setSortIndicator( int logicalIndex, Qt::SortOrder order )

$prototypeV2=void setSortIndicatorShown( bool show )

$prototypeV2=void setStretchLastSection( bool stretch )

$prototypeV2=void showSection( int logicalIndex )

$prototypeV2=Qt::SortOrder sortIndicatorOrder() const

$prototypeV2=int sortIndicatorSection() const

$prototypeV2=bool stretchLastSection() const

$prototypeV2=int stretchSectionCount() const

$prototypeV2=void swapSections( int first, int second )

$prototypeV2=int visualIndex( int logicalIndex ) const

$prototypeV2=int visualIndexAt( int position ) const

$prototypeV2=virtual void reset()

$prototypeV2=virtual void setModel( QAbstractItemModel * model )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void headerDataChanged( Qt::Orientation orientation, int logicalFirst, int logicalLast )

$prototypeV2=void setOffset( int offset )

$prototypeV2=void setOffsetToLastSection()

$prototypeV2=void setOffsetToSectionPosition( int visualIndex )

$beginSignals
$signal=|geometriesChanged()
$signal=|sectionAutoResize(int,QHeaderView::ResizeMode)
$signal=|sectionClicked(int)
$signal=|sectionCountChanged(int,int)
$signal=|sectionDoubleClicked(int)
$signal=|sectionEntered(int)
$signal=|sectionHandleDoubleClicked(int)
$signal=|sectionMoved(int,int,int)
$signal=|sectionPressed(int)
$signal=|sectionResized(int,int,int)
$signal=|sortIndicatorChanged(int,Qt::SortOrder)
$endSignals

#pragma ENDDUMP
