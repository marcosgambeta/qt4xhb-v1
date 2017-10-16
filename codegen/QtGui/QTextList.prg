$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTLISTFORMAT
REQUEST QTEXTBLOCK
#endif

CLASS QTextList INHERIT QTextBlockGroup

   METHOD delete
   METHOD add
   METHOD count
   METHOD format
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD remove
   METHOD removeItem
   METHOD setFormat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
void add ( const QTextBlock & block )
*/
$method=|void|add|const QTextBlock &

/*
int count () const
*/
$method=|int|count|

/*
QTextListFormat format () const
*/
$method=|QTextListFormat|format|

/*
QTextBlock item ( int i ) const
*/
$method=|QTextBlock|item|int

/*
int itemNumber ( const QTextBlock & block ) const
*/
$method=|int|itemNumber|const QTextBlock &

/*
QString itemText ( const QTextBlock & block ) const
*/
$method=|QString|itemText|const QTextBlock &

/*
void remove ( const QTextBlock & block )
*/
$method=|void|remove|const QTextBlock &

/*
void removeItem ( int i )
*/
$method=|void|removeItem|int

/*
void setFormat ( const QTextListFormat & format )
*/
$method=|void|setFormat|const QTextListFormat &

#pragma ENDDUMP
