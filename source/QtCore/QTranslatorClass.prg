/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTranslator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load1
   METHOD load2
   METHOD load
   METHOD translate
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTranslator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTranslator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QLocale>

/*
QTranslator(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTRANSLATOR_NEW )
{
  QTranslator * o = new QTranslator ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTRANSLATOR_DELETE )
{
  QTranslator * obj = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QTRANSLATOR_ISEMPTY )
{
  QTranslator * obj = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
*/
HB_FUNC_STATIC( QTRANSLATOR_LOAD1 )
{
  QTranslator * obj = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load ( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) ) );
  }
}

/*
bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
*/
HB_FUNC_STATIC( QTRANSLATOR_LOAD2 )
{
  QTranslator * obj = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load ( *PQLOCALE(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPQSTRING(5,QString()) ) );
  }
}

//[1]bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
//[2]bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
//[3]bool load(const uchar * data, int len, const QString & directory = QString())

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QTRANSLATOR_LOAD1 );
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QTRANSLATOR_LOAD2 );
  }
  //else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  //{
  //  HB_FUNC_EXEC( QTRANSLATOR_LOAD3 );
  //}
  //else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QTRANSLATOR_LOAD3 );
  //}
}

/*
virtual QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1) const
*/
HB_FUNC_STATIC( QTRANSLATOR_TRANSLATE )
{
  QTranslator * obj = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->translate ( (const char *) hb_parc(1), (const char *) hb_parc(2), (const char *) hb_parc(3), OPINT(4,-1) ) );
  }
}

#pragma ENDDUMP
