/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerPropertySheetExtension>

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

#include <QVariant>

HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_DELETE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int count () const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_COUNT )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
virtual bool hasReset ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_HASRESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->hasReset ( par1 );
    hb_retl( b );
  }
}


/*
virtual int indexOf ( const QString & name ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_INDEXOF )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int i = obj->indexOf ( par1 );
    hb_retni( i );
  }
}


/*
virtual bool isAttribute ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_ISATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isAttribute ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool isChanged ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_ISCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isChanged ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool isVisible ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_ISVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isVisible ( par1 );
    hb_retl( b );
  }
}


/*
virtual QVariant property ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->property ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
virtual QString propertyGroup ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->propertyGroup ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString propertyName ( int index ) const = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYNAME )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->propertyName ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool reset ( int index ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_RESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->reset ( par1 );
    hb_retl( b );
  }
}


/*
virtual void setAttribute ( int index, bool attribute ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_SETATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setChanged ( int index, bool changed ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_SETCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setChanged ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setProperty ( int index, const QVariant & value ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProperty ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPropertyGroup ( int index, const QString & group ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setPropertyGroup ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVisible ( int index, bool visible ) = 0
*/
HB_FUNC( QDESIGNERPROPERTYSHEETEXTENSION_SETVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setVisible ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




