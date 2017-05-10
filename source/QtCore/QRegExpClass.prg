/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QRegExp

   DATA pointer
   DATA class_id INIT Class_Id_QRegExp
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegExp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRegExp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QRegExp ()
*/
HB_FUNC_STATIC( QREGEXP_NEW1 )
{
  QRegExp * o = NULL;
  o = new QRegExp (  );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
HB_FUNC_STATIC( QREGEXP_NEW2 )
{
  QRegExp * o = NULL;
  o = new QRegExp ( PQSTRING(1), ISNIL(2)? Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(2), ISNIL(3)? QRegExp::RegExp : (QRegExp::PatternSyntax) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRegExp ( const QRegExp & rx )
*/
HB_FUNC_STATIC( QREGEXP_NEW3 )
{
  QRegExp * o = NULL;
  QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QRegExp ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGEXP_DELETE )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cap ( int nth = 0 ) const
*/
HB_FUNC_STATIC( QREGEXP_CAP )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->cap ( OPINT(1,0) );
    hb_retc( RQSTRING(str1) );
  }
}


/*
int captureCount () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTURECOUNT )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->captureCount (  ) );
  }
}


/*
QStringList capturedTexts () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTUREDTEXTS )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->capturedTexts (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
Qt::CaseSensitivity caseSensitivity () const
*/
HB_FUNC_STATIC( QREGEXP_CASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->caseSensitivity (  ) );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QREGEXP_ERRORSTRING )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
bool exactMatch ( const QString & str ) const
*/
HB_FUNC_STATIC( QREGEXP_EXACTMATCH )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exactMatch ( PQSTRING(1) ) );
  }
}


/*
int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_INDEXIN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->indexIn ( PQSTRING(1), OPINT(2,0), ISNIL(3)? QRegExp::CaretAtZero : (QRegExp::CaretMode) hb_parni(3) ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QREGEXP_ISEMPTY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isMinimal () const
*/
HB_FUNC_STATIC( QREGEXP_ISMINIMAL )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isMinimal (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QREGEXP_ISVALID )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_LASTINDEXIN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->lastIndexIn ( PQSTRING(1), OPINT(2,-1), ISNIL(3)? QRegExp::CaretAtZero : (QRegExp::CaretMode) hb_parni(3) ) );
  }
}


/*
int matchedLength () const
*/
HB_FUNC_STATIC( QREGEXP_MATCHEDLENGTH )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->matchedLength (  ) );
  }
}


/*
QString pattern () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->pattern (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
PatternSyntax patternSyntax () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->patternSyntax (  ) );
  }
}


/*
int pos ( int nth = 0 ) const
*/
HB_FUNC_STATIC( QREGEXP_POS )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->pos ( OPINT(1,0) ) );
  }
}


/*
void setCaseSensitivity ( Qt::CaseSensitivity cs )
*/
HB_FUNC_STATIC( QREGEXP_SETCASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCaseSensitivity (  (Qt::CaseSensitivity) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimal ( bool minimal )
*/
HB_FUNC_STATIC( QREGEXP_SETMINIMAL )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimal ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPattern ( const QString & pattern )
*/
HB_FUNC_STATIC( QREGEXP_SETPATTERN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPattern ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPatternSyntax ( PatternSyntax syntax )
*/
HB_FUNC_STATIC( QREGEXP_SETPATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPatternSyntax (  (QRegExp::PatternSyntax) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QString escape ( const QString & str )
*/
HB_FUNC_STATIC( QREGEXP_ESCAPE )
{
  QString str1 = QRegExp::escape ( PQSTRING(1) );
  hb_retc( RQSTRING(str1) );
}


HB_FUNC_STATIC( QREGEXP_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QREGEXP_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGEXP_NEWFROM );
}

HB_FUNC_STATIC( QREGEXP_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGEXP_NEWFROM );
}

HB_FUNC_STATIC( QREGEXP_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGEXP_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
