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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPolygonF ()
$internalConstructor=|new1|

$prototype=QPolygonF ( int size )
$internalConstructor=|new2|int

$prototype=QPolygonF ( const QPolygonF & polygon )
$internalConstructor=|new3|const QPolygonF &

$prototype=QPolygonF ( const QVector<QPointF> & points )
$internalConstructor=|new4|const QVector<QPointF> &

$prototype=QPolygonF ( const QRectF & rectangle )
$internalConstructor=|new5|const QRectF &

$prototype=QPolygonF ( const QPolygon & polygon )
$internalConstructor=|new6|const QPolygon &

//[1]QPolygonF ()
//[2]QPolygonF ( int size )
//[3]QPolygonF ( const QPolygonF & polygon )
//[4]QPolygonF ( const QVector<QPointF> & points )
//[5]QPolygonF ( const QRectF & rectangle )
//[6]QPolygonF ( const QPolygon & polygon )

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygonF_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygonF_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPolygonF_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygonF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPolygonF_new5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygonF_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=bool containsPoint ( const QPointF & point, Qt::FillRule fillRule ) const
$method=|bool|containsPoint|const QPointF &,Qt::FillRule

$prototype=QPolygonF intersected ( const QPolygonF & r ) const
$method=|QPolygonF|intersected|const QPolygonF &

$prototype=bool isClosed () const
$method=|bool|isClosed|

$prototype=QPolygonF subtracted ( const QPolygonF & r ) const
$method=|QPolygonF|subtracted|const QPolygonF &

$prototype=void swap ( QPolygonF & other )
$method=|void|swap|QPolygonF &

$prototype=QPolygon toPolygon () const
$method=|QPolygon|toPolygon|

$prototype=void translate ( const QPointF & offset )
$internalMethod=|void|translate,translate1|const QPointF &

$prototype=void translate ( qreal dx, qreal dy )
$internalMethod=|void|translate,translate2|qreal,qreal

//[1]void translate ( const QPointF & offset )
//[2]void translate ( qreal dx, qreal dy )

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translate

$prototype=QPolygonF translated ( const QPointF & offset ) const
$internalMethod=|QPolygonF|translated,translated1|const QPointF &

$prototype=QPolygonF translated ( qreal dx, qreal dy ) const
$internalMethod=|QPolygonF|translated,translated2|qreal,qreal

//[1]QPolygonF translated ( const QPointF & offset ) const
//[2]QPolygonF translated ( qreal dx, qreal dy ) const

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translated

$prototype=QPolygonF united ( const QPolygonF & r ) const
$method=|QPolygonF|united|const QPolygonF &

$extraMethods

#pragma ENDDUMP
