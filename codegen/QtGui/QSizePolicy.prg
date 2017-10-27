$header

#include "hbclass.ch"

CLASS QSizePolicy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD controlType
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD hasWidthForHeight
   METHOD horizontalPolicy
   METHOD horizontalStretch
   METHOD setControlType
   METHOD setHeightForWidth
   METHOD setHorizontalPolicy
   METHOD setHorizontalStretch
   METHOD setVerticalPolicy
   METHOD setVerticalStretch
   METHOD setWidthForHeight
   METHOD transpose
   METHOD verticalPolicy
   METHOD verticalStretch

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSizePolicy>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSizePolicy ()
*/
HB_FUNC_STATIC( QSIZEPOLICY_NEW1 )
{
  QSizePolicy * o = new QSizePolicy ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QSizePolicy ( Policy horizontal, Policy vertical )
*/
HB_FUNC_STATIC( QSIZEPOLICY_NEW2 )
{
  QSizePolicy * o = new QSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QSizePolicy ( Policy horizontal, Policy vertical, ControlType type )
*/
HB_FUNC_STATIC( QSIZEPOLICY_NEW3 )
{
  QSizePolicy * o = new QSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2), (QSizePolicy::ControlType) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QSizePolicy ()
//[2]QSizePolicy ( Policy horizontal, Policy vertical )
//[3]QSizePolicy ( Policy horizontal, Policy vertical, ControlType type )

HB_FUNC_STATIC( QSIZEPOLICY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZEPOLICY_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEPOLICY_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEPOLICY_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
ControlType controlType () const
*/
$method=|QSizePolicy::ControlType|controlType|

/*
Qt::Orientations expandingDirections () const
*/
$method=|Qt::Orientations|expandingDirections|

/*
bool hasHeightForWidth () const
*/
$method=|bool|hasHeightForWidth|

/*
bool hasWidthForHeight () const
*/
$method=|bool|hasWidthForHeight|

/*
Policy horizontalPolicy () const
*/
$method=|QSizePolicy::Policy|horizontalPolicy|

/*
int horizontalStretch () const
*/
$method=|int|horizontalStretch|

/*
void setControlType ( ControlType type )
*/
$method=|void|setControlType|QSizePolicy::ControlType

/*
void setHeightForWidth ( bool dependent )
*/
$method=|void|setHeightForWidth|bool

/*
void setHorizontalPolicy ( Policy policy )
*/
$method=|void|setHorizontalPolicy|QSizePolicy::Policy

/*
void setHorizontalStretch ( uchar stretchFactor )
*/
$method=|void|setHorizontalStretch|uchar

/*
void setVerticalPolicy ( Policy policy )
*/
$method=|void|setVerticalPolicy|QSizePolicy::Policy

/*
void setVerticalStretch ( uchar stretchFactor )
*/
$method=|void|setVerticalStretch|uchar

/*
void setWidthForHeight ( bool dependent )
*/
$method=|void|setWidthForHeight|bool

/*
void transpose ()
*/
$method=|void|transpose|

/*
Policy verticalPolicy () const
*/
$method=|QSizePolicy::Policy|verticalPolicy|

/*
int verticalStretch () const
*/
$method=|int|verticalStretch|

$extraMethods

#pragma ENDDUMP
