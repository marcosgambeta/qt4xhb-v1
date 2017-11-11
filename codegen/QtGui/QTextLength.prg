$header

#include "hbclass.ch"

CLASS QTextLength

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD rawValue
   METHOD type
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextLength>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextLength ()
*/
$internalConstructor=|new1|

/*
QTextLength ( Type type, qreal value )
*/
$internalConstructor=|new2|QTextLength::Type,qreal

//[1]QTextLength ()
//[2]QTextLength ( Type type, qreal value )

HB_FUNC_STATIC( QTEXTLENGTH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLength_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextLength_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal rawValue () const
*/
$method=|qreal|rawValue|

/*
Type type () const
*/
$method=|QTextLength::Type|type|

/*
qreal value ( qreal maximumLength ) const
*/
$method=|qreal|value|qreal

$extraMethods

#pragma ENDDUMP
