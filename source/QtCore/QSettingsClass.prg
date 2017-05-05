/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QVARIANT
#endif

CLASS QSettings INHERIT QObject

   DATA class_id INIT Class_Id_QSettings
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD allKeys
   METHOD applicationName
   METHOD beginGroup
   METHOD beginReadArray
   METHOD beginWriteArray
   METHOD childGroups
   METHOD childKeys
   METHOD clear
   METHOD contains
   METHOD endArray
   METHOD endGroup
   METHOD fallbacksEnabled
   METHOD fileName
   METHOD format
   METHOD group
   METHOD iniCodec
   METHOD isWritable
   METHOD organizationName
   METHOD remove
   METHOD scope
   METHOD setArrayIndex
   METHOD setFallbacksEnabled
   METHOD setIniCodec1
   METHOD setIniCodec2
   METHOD setIniCodec
   METHOD setValue
   METHOD status
   METHOD sync
   METHOD value
   METHOD defaultFormat
   METHOD setDefaultFormat
   METHOD setPath
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSettings>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW1 )
{
  QSettings * o = NULL;
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSettings ( PQSTRING(1), par2, par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW2 )
{
  QSettings * o = NULL;
  QString par3 = ISNIL(3)? QString() : hb_parc(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSettings (  (QSettings::Scope) hb_parni(1), PQSTRING(2), par3, par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW3 )
{
  QSettings * o = NULL;
  QString par4 = ISNIL(4)? QString() : hb_parc(4);
  QObject * par5 = ISNIL(5)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSettings (  (QSettings::Format) hb_parni(1),  (QSettings::Scope) hb_parni(2), PQSTRING(3), par4, par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW4 )
{
  QSettings * o = NULL;
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSettings ( PQSTRING(1),  (QSettings::Format) hb_parni(2), par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW5 )
{
  QSettings * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSettings ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[2]QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[3]QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[4]QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
//[5]QSettings ( QObject * parent = 0 )

HB_FUNC_STATIC( QSETTINGS_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW2 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISCHAR(4)||ISNIL(4)) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW4 );
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSETTINGS_DELETE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringList allKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_ALLKEYS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->allKeys (  );
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
QString applicationName () const
*/
HB_FUNC_STATIC( QSETTINGS_APPLICATIONNAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->applicationName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void beginGroup ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINGROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->beginGroup ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int beginReadArray ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINREADARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->beginReadArray ( PQSTRING(1) ) );
  }
}


/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINWRITEARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->beginWriteArray ( PQSTRING(1), ISNIL(2)? -1 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList childGroups () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDGROUPS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->childGroups (  );
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
QStringList childKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDKEYS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->childKeys (  );
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
void clear ()
*/
HB_FUNC_STATIC( QSETTINGS_CLEAR )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QSETTINGS_CONTAINS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->contains ( PQSTRING(1) ) );
  }
}


/*
void endArray ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endArray (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endGroup ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDGROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endGroup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fallbacksEnabled () const
*/
HB_FUNC_STATIC( QSETTINGS_FALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->fallbacksEnabled (  ) );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QSETTINGS_FILENAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Format format () const
*/
HB_FUNC_STATIC( QSETTINGS_FORMAT )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->format (  ) );
  }
}


/*
QString group () const
*/
HB_FUNC_STATIC( QSETTINGS_GROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->group (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextCodec * iniCodec () const
*/
HB_FUNC_STATIC( QSETTINGS_INICODEC )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCodec * ptr = obj->iniCodec (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QSETTINGS_ISWRITABLE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QString organizationName () const
*/
HB_FUNC_STATIC( QSETTINGS_ORGANIZATIONNAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->organizationName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void remove ( const QString & key )
*/
HB_FUNC_STATIC( QSETTINGS_REMOVE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->remove ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Scope scope () const
*/
HB_FUNC_STATIC( QSETTINGS_SCOPE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->scope (  ) );
  }
}


/*
void setArrayIndex ( int i )
*/
HB_FUNC_STATIC( QSETTINGS_SETARRAYINDEX )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setArrayIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFallbacksEnabled ( bool b )
*/
HB_FUNC_STATIC( QSETTINGS_SETFALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFallbacksEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIniCodec ( QTextCodec * codec )
*/
HB_FUNC_STATIC( QSETTINGS_SETINICODEC1 )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIniCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIniCodec ( const char * codecName )
*/
HB_FUNC_STATIC( QSETTINGS_SETINICODEC2 )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setIniCodec (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QSETTINGS_SETINICODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    HB_FUNC_EXEC( QSETTINGS_SETINICODEC1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSETTINGS_SETINICODEC2 );
  }
}

/*
void setValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QSETTINGS_SETVALUE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Status status () const
*/
HB_FUNC_STATIC( QSETTINGS_STATUS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->status (  ) );
  }
}


/*
void sync ()
*/
HB_FUNC_STATIC( QSETTINGS_SYNC )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sync (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QSETTINGS_VALUE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->value ( PQSTRING(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
Format defaultFormat ()
*/
HB_FUNC_STATIC( QSETTINGS_DEFAULTFORMAT )
{
  hb_retni( (int) QSettings::defaultFormat (  ) );
}



/*
void setDefaultFormat ( Format format )
*/
HB_FUNC_STATIC( QSETTINGS_SETDEFAULTFORMAT )
{
  QSettings::setDefaultFormat (  (QSettings::Format) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( Format format, Scope scope, const QString & path )
*/
HB_FUNC_STATIC( QSETTINGS_SETPATH )
{
  QSettings::setPath (  (QSettings::Format) hb_parni(1),  (QSettings::Scope) hb_parni(2), PQSTRING(3) );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
