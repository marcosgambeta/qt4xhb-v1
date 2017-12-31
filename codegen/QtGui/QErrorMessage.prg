$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QERRORMESSAGE
#endif

CLASS QErrorMessage INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD showMessage
   METHOD qtHandler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QErrorMessage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QErrorMessage ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void showMessage ( const QString & message )
$internalMethod=|void|showMessage,showMessage1|const QString &

$prototype=void showMessage ( const QString & message, const QString & type )
$internalMethod=|void|showMessage,showMessage2|const QString &,const QString &

//[1]void showMessage ( const QString & message )
//[2]void showMessage ( const QString & message, const QString & type )

HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QErrorMessage_showMessage1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QErrorMessage_showMessage2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QErrorMessage * qtHandler ()
$method=|QErrorMessage *|qtHandler|

#pragma ENDDUMP
