$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENTFRAGMENT
#endif

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toHtml
   METHOD toPlainText
   METHOD fromHtml
   METHOD fromPlainText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextDocumentFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDocumentFragment ()
*/
$internalConstructor=|new1|

/*
QTextDocumentFragment ( const QTextDocument * document )
*/
$internalConstructor=|new2|const QTextDocument *

/*
QTextDocumentFragment ( const QTextCursor & cursor )
*/
$internalConstructor=|new3|const QTextCursor &

/*
QTextDocumentFragment ( const QTextDocumentFragment & other )
*/
$internalConstructor=|new4|const QTextDocumentFragment &

//[1]QTextDocumentFragment ()
//[2]QTextDocumentFragment ( const QTextDocument * document )
//[3]QTextDocumentFragment ( const QTextCursor & cursor )
//[4]QTextDocumentFragment ( const QTextDocumentFragment & other )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentFragment_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocumentFragment_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentFragment_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
QString toHtml ( const QByteArray & encoding ) const
*/
$internalMethod=|QString|toHtml,toHtml1|const QByteArray &

/*
QString toHtml () const
*/
$internalMethod=|QString|toHtml,toHtml2|

//[1]QString toHtml ( const QByteArray & encoding ) const
//[2]QString toHtml () const

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextDocumentFragment_toHtml1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocumentFragment_toHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
static QTextDocumentFragment fromHtml ( const QString & text )
*/
$internalStaticMethod=|QTextDocumentFragment|fromHtml,fromHtml1|const QString &

/*
static QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )
*/
$internalStaticMethod=|QTextDocumentFragment|fromHtml,fromHtml2|const QString &,const QTextDocument *

//[1]QTextDocumentFragment fromHtml ( const QString & text )
//[2]QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextDocumentFragment_fromHtml1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    QTextDocumentFragment_fromHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextDocumentFragment fromPlainText ( const QString & plainText )
*/
$staticMethod=|QTextDocumentFragment|fromPlainText|const QString &

$extraMethods

#pragma ENDDUMP
