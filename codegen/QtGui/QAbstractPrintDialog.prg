$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QAbstractPrintDialog INHERIT QDialog

   METHOD exec
   METHOD fromPage
   METHOD maxPage
   METHOD minPage
   METHOD printRange
   METHOD printer
   METHOD setFromTo
   METHOD setMinMax
   METHOD setPrintRange
   METHOD toPage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractPrintDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
virtual int exec () = 0
*/
$virtualMethod=|int|exec|

/*
int fromPage () const
*/
$method=|int|fromPage|

/*
int maxPage () const
*/
$method=|int|maxPage|

/*
int minPage () const
*/
$method=|int|minPage|

/*
PrintRange printRange () const
*/
$method=|QAbstractPrintDialog::PrintRange|printRange|

/*
QPrinter * printer () const
*/
$method=|QPrinter *|printer|

/*
void setFromTo ( int from, int to )
*/
$method=|void|setFromTo|int,int

/*
void setMinMax ( int min, int max )
*/
$method=|void|setMinMax|int,int

/*
void setPrintRange ( PrintRange range )
*/
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

/*
int toPage () const
*/
$method=|int|toPage|

#pragma ENDDUMP
