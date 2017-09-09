$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYEVENT
#endif

CLASS QKeyEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text
   METHOD createExtendedKeyEvent

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QKeyEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_NEW )
{
  int par3 = hb_parni(3);
  QKeyEvent * o = new QKeyEvent ( (QEvent::Type) hb_parni(1), PINT(2), (Qt::KeyboardModifiers) par3, OPQSTRING(4,QString()), OPBOOL(5,false), OPUSHORT(6,1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int count () const
*/
HB_FUNC_STATIC( QKEYEVENT_COUNT )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
bool isAutoRepeat () const
*/
HB_FUNC_STATIC( QKEYEVENT_ISAUTOREPEAT )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAutoRepeat () );
  }
}

/*
int key () const
*/
HB_FUNC_STATIC( QKEYEVENT_KEY )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->key () );
  }
}

/*
bool matches ( QKeySequence::StandardKey key ) const
*/
HB_FUNC_STATIC( QKEYEVENT_MATCHES )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->matches ( (QKeySequence::StandardKey) par1 ) );
  }
}

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QKEYEVENT_MODIFIERS )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifiers () );
  }
}

/*
quint32 nativeModifiers () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEMODIFIERS )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT32( obj->nativeModifiers () );
  }
}

/*
quint32 nativeScanCode () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVESCANCODE )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT32( obj->nativeScanCode () );
  }
}

/*
quint32 nativeVirtualKey () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEVIRTUALKEY )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT32( obj->nativeVirtualKey () );
  }
}

/*
QString text () const
*/
$method=|QString|text|

/*
static QKeyEvent *createExtendedKeyEvent(Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey,quint32 nativeModifiers,const QString& text = QString(), bool autorep = false,ushort count = 1)
*/
HB_FUNC_STATIC( QKEYEVENT_CREATEEXTENDEDKEYEVENT )
{
  int par3 = hb_parni(3);
  QKeyEvent * ptr = QKeyEvent::createExtendedKeyEvent ( (QEvent::Type) hb_parni(1), PINT(2), (Qt::KeyboardModifiers) par3, PQUINT32(4), PQUINT32(5), PQUINT32(6), OPQSTRING(7,QString()), OPBOOL(8,false), OPUSHORT(9,1) );
  _qt4xhb_createReturnClass ( ptr, "QKEYEVENT" );
}

#pragma ENDDUMP
