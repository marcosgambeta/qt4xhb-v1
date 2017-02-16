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
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QRegExp
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QRegExp
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QRegExp
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QRegExp
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QRegExp
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QRegExp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QRegExp>

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

#include <QStringList>

/*
QRegExp ()
*/
HB_FUNC_STATIC( QREGEXP_NEW1 )
{
  QRegExp * o = NULL;
  o = new QRegExp (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegExp *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
HB_FUNC_STATIC( QREGEXP_NEW2 )
{
  QRegExp * o = NULL;
  QString par1 = hb_parc(1);
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::RegExp : hb_parni(3);
  o = new QRegExp ( par1,  (Qt::CaseSensitivity) par2,  (QRegExp::PatternSyntax) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegExp *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QRegExp ( const QRegExp & rx )
*/
HB_FUNC_STATIC( QREGEXP_NEW3 )
{
  QRegExp * o = NULL;
  QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QRegExp ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegExp *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    QString str1 = obj->cap ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
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
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QString par1 = hb_parc(1);
    hb_retl( obj->exactMatch ( par1 ) );
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
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
    hb_retni( obj->indexIn ( par1, par2,  (QRegExp::CaretMode) par3 ) );
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
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? -1 : hb_parni(2);
    int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
    hb_retni( obj->lastIndexIn ( par1, par2,  (QRegExp::CaretMode) par3 ) );
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
    hb_retc( (const char *) str1.toLatin1().data() );
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
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    hb_retni( obj->pos ( par1 ) );
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
    int par1 = hb_parni(1);
    obj->setCaseSensitivity (  (Qt::CaseSensitivity) par1 );
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
    bool par1 = hb_parl(1);
    obj->setMinimal ( par1 );
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
    QString par1 = hb_parc(1);
    obj->setPattern ( par1 );
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
    int par1 = hb_parni(1);
    obj->setPatternSyntax (  (QRegExp::PatternSyntax) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QString escape ( const QString & str )
*/
HB_FUNC_STATIC( QREGEXP_ESCAPE )
{
  QString par1 = hb_parc(1);
  QString str1 = QRegExp::escape ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}




#pragma ENDDUMP
