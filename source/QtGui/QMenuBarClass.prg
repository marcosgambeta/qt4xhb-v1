/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE

CLASS QMenuBar INHERIT QWidget

   DATA class_id INIT Class_Id_QMenuBar
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD isNativeMenuBar
   METHOD setActiveAction
   METHOD setDefaultUp
   METHOD setNativeMenuBar
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible
   METHOD onHovered
   METHOD onTriggered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenuBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMenuBar>

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
QMenuBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
  QMenuBar * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMenuBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMenuBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QMENUBAR_DELETE )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->activeAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION1 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QAction * ptr = obj->addAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION2 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    const QObject * par2 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par3 = hb_parc(3);
    QAction * ptr = obj->addAction ( par1, par2,  (const char *) par3 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION3 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION3 );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU1 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * par1 = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addMenu ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QMenu * addMenu ( const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU2 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QMenu * ptr = obj->addMenu ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU3 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QString par2 = hb_parc(2);
    QMenu * ptr = obj->addMenu ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU3 );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENUBAR_ADDSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addSeparator (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMenu * par2 = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->insertMenu ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->insertSeparator ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isDefaultUp () const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDefaultUp (  ) );
  }
}


/*
bool isNativeMenuBar () const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNativeMenuBar (  ) );
  }
}



/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActiveAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setDefaultUp ( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDefaultUp ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setNativeMenuBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int heightForWidth ( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->heightForWidth ( par1 ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
