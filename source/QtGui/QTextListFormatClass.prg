/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QTextListFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

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

#include <QTextListFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextListFormat ()
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NEW )
{
  QTextListFormat * o = new QTextListFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
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
    RINT( obj->indent () );
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
    RBOOL( obj->isValid () );
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
    RQSTRING( obj->numberPrefix () );
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
    RQSTRING( obj->numberSuffix () );
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
    obj->setIndent ( PINT(1) );
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
    obj->setNumberPrefix ( PQSTRING(1) );
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
    obj->setNumberSuffix ( PQSTRING(1) );
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
    obj->setStyle ( (QTextListFormat::Style) par1 );
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
    hb_retni( (int) obj->style () );
  }
}




#pragma ENDDUMP
