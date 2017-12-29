/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD document
   METHOD setDocument
   METHOD rehighlight
   METHOD rehighlightBlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSyntaxHighlighter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSyntaxHighlighter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

//[1]QSyntaxHighlighter ( QObject * parent )
//[2]QSyntaxHighlighter ( QTextDocument * parent )
//[3]QSyntaxHighlighter ( QTextEdit * parent )

//HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
//{
//  if( ISNUMPAR(1) && ISQOBJECT(1) )
//  {
//    HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW1 );
//    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW2 ); // TODO: implementar
//    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW3 ); // TODO: implementar
//  }
//}

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DELETE )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
void setDocument ( QTextDocument * doc )
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_SETDOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rehighlight ()
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rehighlight ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rehighlightBlock ( const QTextBlock & block )
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHTBLOCK )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rehighlightBlock ( *PQTEXTBLOCK(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
