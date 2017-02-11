/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QShortcut>

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
QShortcut(QWidget * parent)
*/
HB_FUNC( QSHORTCUT_NEW1 )
{
  QShortcut * o = NULL;
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QShortcut ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QShortcut *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
HB_FUNC( QSHORTCUT_NEW2 )
{
  QShortcut * o = NULL;
  QKeySequence * par1 = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par3 = ISNIL(3)? 0 : hb_parc(3);
  const char * par4 = ISNIL(4)? 0 : hb_parc(4);
  int par5 = ISNIL(5)? (int) Qt::WindowShortcut : hb_parni(5);
  o = new QShortcut ( *par1, par2,  (const char *) par3,  (const char *) par4,  (Qt::ShortcutContext) par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QShortcut *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC( QSHORTCUT_NEW )
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

HB_FUNC( QSHORTCUT_DELETE )
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
HB_FUNC( QSHORTCUT_AUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->autoRepeat (  );
    hb_retl( b );
  }
}


/*
Qt::ShortcutContext context() const
*/
HB_FUNC( QSHORTCUT_CONTEXT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->context (  );
    hb_retni( i );
  }
}


/*
int id() const
*/
HB_FUNC( QSHORTCUT_ID )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->id (  );
    hb_retni( i );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC( QSHORTCUT_ISENABLED )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEnabled (  );
    hb_retl( b );
  }
}


/*
QKeySequence key() const
*/
HB_FUNC( QSHORTCUT_KEY )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->key (  ) );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );  }
}


/*
QWidget * parentWidget() const
*/
HB_FUNC( QSHORTCUT_PARENTWIDGET )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->parentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
void setAutoRepeat(bool on)
*/
HB_FUNC( QSHORTCUT_SETAUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAutoRepeat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContext(Qt::ShortcutContext context)
*/
HB_FUNC( QSHORTCUT_SETCONTEXT )
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
HB_FUNC( QSHORTCUT_SETENABLED )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKey(const QKeySequence & key)
*/
HB_FUNC( QSHORTCUT_SETKEY )
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
HB_FUNC( QSHORTCUT_SETWHATSTHIS )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setWhatsThis ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString whatsThis() const
*/
HB_FUNC( QSHORTCUT_WHATSTHIS )
{
  QShortcut * obj = (QShortcut *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





