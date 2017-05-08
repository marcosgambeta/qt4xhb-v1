/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QUiLoader INHERIT QObject

   DATA class_id INIT Class_Id_QUiLoader
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUiLoader>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QDir>

/*
QUiLoader ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUILOADER_NEW )
{
  QUiLoader * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUiLoader ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QUILOADER_DELETE )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QUILOADER_ADDPLUGINPATH )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addPluginPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList availableLayouts () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLELAYOUTS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->availableLayouts (  );
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
QStringList availableWidgets () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLEWIDGETS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->availableWidgets (  );
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
void clearPluginPaths ()
*/
HB_FUNC_STATIC( QUILOADER_CLEARPLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearPluginPaths (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTION )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->createAction ( par1, OPQSTRING(2,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTIONGROUP )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QActionGroup * ptr = obj->createActionGroup ( par1, OPQSTRING(2,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QACTIONGROUP" );
  }
}


/*
virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATELAYOUT )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLayout * ptr = obj->createLayout ( PQSTRING(1), par2, OPQSTRING(3,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}


/*
virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEWIDGET )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->createWidget ( PQSTRING(1), par2, OPQSTRING(3,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
bool isLanguageChangeEnabled () const
*/
HB_FUNC_STATIC( QUILOADER_ISLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isLanguageChangeEnabled (  ) );
  }
}


/*
QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
*/
HB_FUNC_STATIC( QUILOADER_LOAD )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->load ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
QStringList pluginPaths () const
*/
HB_FUNC_STATIC( QUILOADER_PLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->pluginPaths (  );
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
void setLanguageChangeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QUILOADER_SETLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLanguageChangeEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorkingDirectory ( const QDir & dir )
*/
HB_FUNC_STATIC( QUILOADER_SETWORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * par1 = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWorkingDirectory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QUILOADER_WORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->workingDirectory (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}




#pragma ENDDUMP
