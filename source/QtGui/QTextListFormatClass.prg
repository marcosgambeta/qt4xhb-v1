/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextListFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextListFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD indent
   METHOD isValid
   METHOD numberPrefix
   METHOD numberSuffix
   METHOD setIndent
   METHOD setNumberPrefix
   METHOD setNumberSuffix
   METHOD setStyle
   METHOD style
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextListFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextListFormat>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextListFormat ()
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NEW )
{
  QTextListFormat * o = NULL;
  o = new QTextListFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextListFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTLISTFORMAT_DELETE )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int indent () const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_INDENT )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->indent (  );
    hb_retni( i );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_ISVALID )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString numberPrefix () const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->numberPrefix (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString numberSuffix () const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->numberSuffix (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setIndent ( int indentation )
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETINDENT )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumberPrefix ( const QString & numberPrefix )
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNumberPrefix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumberSuffix ( const QString & numberSuffix )
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNumberSuffix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( Style style )
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETSTYLE )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (QTextListFormat::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Style style () const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_STYLE )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
