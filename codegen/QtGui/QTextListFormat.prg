$header

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

$destructor

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

$deleteMethod

/*
int indent () const
*/
$method=|int|indent|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString numberPrefix () const
*/
$method=|QString|numberPrefix|

/*
QString numberSuffix () const
*/
$method=|QString|numberSuffix|

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
$method=|void|setNumberPrefix|const QString &

/*
void setNumberSuffix ( const QString & numberSuffix )
*/
$method=|void|setNumberSuffix|const QString &

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
