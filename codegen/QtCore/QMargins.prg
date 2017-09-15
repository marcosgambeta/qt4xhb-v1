$header

#include "hbclass.ch"

CLASS QMargins

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD isNull
   METHOD left
   METHOD right
   METHOD setBottom
   METHOD setLeft
   METHOD setRight
   METHOD setTop
   METHOD top

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMargins>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMargins ()
*/
$constructor=|new1|

/*
QMargins ( int left, int top, int right, int bottom )
*/
$constructor=|new2|int,int,int,int

//[1]QMargins ()
//[2]QMargins ( int left, int top, int right, int bottom )

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottom () const
*/
$method=|int|bottom|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
int left () const
*/
$method=|int|left|

/*
int right () const
*/
$method=|int|right|

/*
void setBottom ( int bottom )
*/
$method=|void|setBottom|int

/*
void setLeft ( int left )
*/
$method=|void|setLeft|int

/*
void setRight ( int right )
*/
$method=|void|setRight|int

/*
void setTop ( int Top )
*/
$method=|void|setTop|int

/*
int top () const
*/
$method=|int|top|

$extraMethods

#pragma ENDDUMP
