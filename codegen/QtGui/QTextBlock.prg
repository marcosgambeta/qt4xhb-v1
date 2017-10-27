$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTLAYOUT
REQUEST QTEXTBLOCK
REQUEST QTEXTLIST
REQUEST QTEXTBLOCKUSERDATA
#endif

CLASS QTextBlock

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD blockNumber
   METHOD charFormat
   METHOD charFormatIndex
   METHOD clearLayout
   METHOD contains
   METHOD document
   METHOD firstLineNumber
   METHOD isValid
   METHOD isVisible
   METHOD layout
   METHOD length
   METHOD lineCount
   METHOD next
   METHOD position
   METHOD previous
   METHOD revision
   METHOD setLineCount
   METHOD setRevision
   METHOD setUserData
   METHOD setUserState
   METHOD setVisible
   METHOD text
   METHOD textDirection
   METHOD textList
   METHOD userData
   METHOD userState

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextBlock>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextBlock ( const QTextBlock & other )
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
  QTextBlock * o = new QTextBlock ( *PQTEXTBLOCK(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QTextBlockFormat blockFormat () const
*/
$method=|QTextBlockFormat|blockFormat|

/*
int blockFormatIndex () const
*/
$method=|int|blockFormatIndex|

/*
int blockNumber () const
*/
$method=|int|blockNumber|

/*
QTextCharFormat charFormat () const
*/
$method=|QTextCharFormat|charFormat|

/*
int charFormatIndex () const
*/
$method=|int|charFormatIndex|

/*
void clearLayout ()
*/
$method=|void|clearLayout|

/*
bool contains ( int position ) const
*/
$method=|bool|contains|int

/*
const QTextDocument * document () const
*/
$method=|const QTextDocument *|document|

/*
int firstLineNumber () const
*/
$method=|int|firstLineNumber|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
QTextLayout * layout () const
*/
$method=|QTextLayout *|layout|

/*
int length () const
*/
$method=|int|length|

/*
int lineCount () const
*/
$method=|int|lineCount|

/*
QTextBlock next () const
*/
$method=|QTextBlock|next|

/*
int position () const
*/
$method=|int|position|

/*
QTextBlock previous () const
*/
$method=|QTextBlock|previous|

/*
int revision () const
*/
$method=|int|revision|

/*
void setLineCount ( int count )
*/
$method=|void|setLineCount|int

/*
void setRevision ( int rev )
*/
$method=|void|setRevision|int

/*
void setUserData ( QTextBlockUserData * data )
*/
$method=|void|setUserData|QTextBlockUserData *

/*
void setUserState ( int state )
*/
$method=|void|setUserState|int

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QString text () const
*/
$method=|QString|text|

/*
Qt::LayoutDirection textDirection () const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
QTextList * textList () const
*/
$method=|QTextList *|textList|

/*
QTextBlockUserData * userData () const
*/
$method=|QTextBlockUserData *|userData|

/*
int userState () const
*/
$method=|int|userState|

$extraMethods

#pragma ENDDUMP
