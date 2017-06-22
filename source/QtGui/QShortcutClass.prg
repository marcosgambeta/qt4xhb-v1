/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
REQUEST QWIDGET
#endif

CLASS QShortcut INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis
   METHOD onActivated
   METHOD onActivatedAmbiguously
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QShortcut
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QShortcut>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QShortcut(QWidget * parent)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW1 )
{
  QShortcut * o = new QShortcut ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW2 )
{
  int par5 = ISNIL(5)? (int) Qt::WindowShortcut : hb_parni(5);
  QShortcut * o = new QShortcut ( *PQKEYSEQUENCE(1), PQWIDGET(2),  (const char *) ISNIL(3)? 0 : hb_parc(3),  (const char *) ISNIL(4)? 0 : hb_parc(4),  (Qt::ShortcutContext) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC_STATIC( QSHORTCUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQKEYSEQUENCE(1) && ISQWIDGET(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSHORTCUT_DELETE )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool autoRepeat() const
*/
HB_FUNC_STATIC( QSHORTCUT_AUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoRepeat () );
  }
}


/*
Qt::ShortcutContext context() const
*/
HB_FUNC_STATIC( QSHORTCUT_CONTEXT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->context () );
  }
}


/*
int id() const
*/
HB_FUNC_STATIC( QSHORTCUT_ID )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->id () );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSHORTCUT_ISENABLED )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}


/*
QKeySequence key() const
*/
HB_FUNC_STATIC( QSHORTCUT_KEY )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->key () );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}


/*
QWidget * parentWidget() const
*/
HB_FUNC_STATIC( QSHORTCUT_PARENTWIDGET )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setAutoRepeat(bool on)
*/
HB_FUNC_STATIC( QSHORTCUT_SETAUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoRepeat ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContext(Qt::ShortcutContext context)
*/
HB_FUNC_STATIC( QSHORTCUT_SETCONTEXT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setContext (  (Qt::ShortcutContext) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabled(bool enable)
*/
HB_FUNC_STATIC( QSHORTCUT_SETENABLED )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKey(const QKeySequence & key)
*/
HB_FUNC_STATIC( QSHORTCUT_SETKEY )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setKey ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhatsThis(const QString & text)
*/
HB_FUNC_STATIC( QSHORTCUT_SETWHATSTHIS )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThis ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString whatsThis() const
*/
HB_FUNC_STATIC( QSHORTCUT_WHATSTHIS )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis ();
    hb_retc( RQSTRING(str1) );
  }
}






#pragma ENDDUMP
