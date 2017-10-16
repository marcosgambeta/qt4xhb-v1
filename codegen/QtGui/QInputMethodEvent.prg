$header

#include "hbclass.ch"

CLASS QInputMethodEvent INHERIT QEvent

   METHOD new1
   METHOD new3
   METHOD new
   METHOD delete
   METHOD commitString
   METHOD preeditString
   METHOD replacementLength
   METHOD replacementStart
   METHOD setCommitString

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputMethodEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QInputMethodEvent ()
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW1 )
{
  QInputMethodEvent * o = new QInputMethodEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QInputMethodEvent ( const QInputMethodEvent & other )
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW3 )
{
  QInputMethodEvent * o = new QInputMethodEvent ( *PQINPUTMETHODEVENT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QInputMethodEvent ()
//[2]QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
//[3]QInputMethodEvent ( const QInputMethodEvent & other )

HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QINPUTMETHODEVENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQINPUTMETHODEVENT(1) )
  {
    HB_FUNC_EXEC( QINPUTMETHODEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QString & commitString () const
*/
$method=|const QString &|commitString|

/*
const QString & preeditString () const
*/
$method=|const QString &|preeditString|

/*
int replacementLength () const
*/
$method=|int|replacementLength|

/*
int replacementStart () const
*/
$method=|int|replacementStart|

/*
void setCommitString ( const QString & commitString, int replaceFrom = 0, int replaceLength = 0 )
*/
$method=|void|setCommitString|const QString &,int=0,int=0

#pragma ENDDUMP
