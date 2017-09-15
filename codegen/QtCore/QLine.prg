$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QLINE
#endif

CLASS QLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD p1
   METHOD p2
   METHOD x1
   METHOD x2
   METHOD y1
   METHOD y2
   METHOD dx
   METHOD dy
   METHOD isNull
   METHOD setP1
   METHOD setP2
   METHOD setLine
   METHOD setPoints
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLine()
*/
$constructor=|new1|

/*
QLine(const QPoint & p1, const QPoint & p2)
*/
$constructor=|new2|const QPoint &,const QPoint &

/*
QLine(int x1, int y1, int x2, int y2)
*/
$constructor=|new3|int,int,int,int

//[1]QLine()
//[2]QLine(const QPoint & p1, const QPoint & p2)
//[3]QLine(int x1, int y1, int x2, int y2)

HB_FUNC_STATIC( QLINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QLINE_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPoint p1() const
*/
$method=|QPoint|p1|

/*
QPoint p2() const
*/
$method=|QPoint|p2|

/*
int x1() const
*/
$method=|int|x1|

/*
int x2() const
*/
$method=|int|x2|

/*
int y1() const
*/
$method=|int|y1|

/*
int y2() const
*/
$method=|int|y2|

/*
int dx() const
*/
$method=|int|dx|

/*
int dy() const
*/
$method=|int|dy|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
void setP1(const QPoint & p1)
*/
$method=|void|setP1|const QPoint &

/*
void setP2(const QPoint & p2)
*/
$method=|void|setP2|const QPoint &

/*
void setLine(int x1, int y1, int x2, int y2)
*/
$method=|void|setLine|int,int,int,int

/*
void setPoints(const QPoint & p1, const QPoint & p2)
*/
$method=|void|setPoints|const QPoint &,const QPoint &

/*
void translate(const QPoint & offset)
*/
$method=|void|translate,translate1|const QPoint &

/*
void translate(int dx, int dy)
*/
$method=|void|translate,translate2|int,int

//[1]void translate(const QPoint & offset)
//[2]void translate(int dx, int dy)

HB_FUNC_STATIC( QLINE_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATE2 );
  }
}

/*
QLine translated(const QPoint & offset) const
*/
$method=|QLine|translated,translated1|const QPoint &

/*
QLine translated(int dx, int dy) const
*/
$method=|QLine|translated,translated2|int,int

//[1]QLine translated(const QPoint & offset) const
//[2]QLine translated(int dx, int dy) const

HB_FUNC_STATIC( QLINE_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATED2 );
  }
}

$extraMethods

#pragma ENDDUMP
