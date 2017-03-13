/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBUTTONGROUP
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
#endif

CLASS QAbstractButton INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractButton
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD autoExclusive
   METHOD autoRepeat
   METHOD autoRepeatDelay
   METHOD autoRepeatInterval
   METHOD group
   METHOD icon
   METHOD iconSize
   METHOD isCheckable
   METHOD isChecked
   METHOD isDown
   METHOD setAutoExclusive
   METHOD setAutoRepeat
   METHOD setAutoRepeatDelay
   METHOD setAutoRepeatInterval
   METHOD setCheckable
   METHOD setDown
   METHOD setIcon
   METHOD setShortcut
   METHOD setText
   METHOD shortcut
   METHOD text
   METHOD animateClick
   METHOD click
   METHOD setChecked
   METHOD setIconSize
   METHOD toggle
   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractButton>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTBUTTON_DELETE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoExclusive () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->autoExclusive (  ) );
  }
}

/*
bool autoRepeat () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->autoRepeat (  ) );
  }
}

/*
int autoRepeatDelay () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( obj->autoRepeatDelay (  ) );
  }
}

/*
int autoRepeatInterval () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( obj->autoRepeatInterval (  ) );
  }
}

/*
QButtonGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_GROUP )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QButtonGroup * ptr = obj->group (  );
    _qt4xhb_createReturnClass ( ptr, "QBUTTONGROUP" );
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICON )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}

/*
bool isChecked () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isChecked (  ) );
  }
}

/*
bool isDown () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isDown (  ) );
  }
}

/*
void setAutoExclusive ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setAutoExclusive ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setAutoRepeat ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRepeatDelay ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAutoRepeatDelay ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRepeatInterval ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAutoRepeatInterval ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setCheckable ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDown ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICON )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcut ( const QKeySequence & key )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETSHORTCUT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setShortcut ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETTEXT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SHORTCUT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut (  ) );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TEXT )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}

/*
void animateClick ( int msec = 100 )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ANIMATECLICK )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? 100 : hb_parni(1);
    obj->animateClick ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void click ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_CLICK )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->click (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChecked ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setChecked ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toggle ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TOGGLE )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->toggle (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
