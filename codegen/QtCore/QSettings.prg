$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QVARIANT
#endif

CLASS QSettings INHERIT QObject

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

$destructor

#pragma BEGINDUMP

#include <QSettings>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW1 )
{
  QSettings * o = new QSettings ( PQSTRING(1), OPQSTRING(2,QString()), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW2 )
{
  QSettings * o = new QSettings ( (QSettings::Scope) hb_parni(1), PQSTRING(2), OPQSTRING(3,QString()), OPQOBJECT(4,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW3 )
{
  QSettings * o = new QSettings ( (QSettings::Format) hb_parni(1), (QSettings::Scope) hb_parni(2), PQSTRING(3), OPQSTRING(4,QString()), OPQOBJECT(5,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW4 )
{
  QSettings * o = new QSettings ( PQSTRING(1), (QSettings::Format) hb_parni(2), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSettings ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW5 )
{
  QSettings * o = new QSettings ( OPQOBJECT(1,0) );
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

$deleteMethod

/*
QStringList allKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_ALLKEYS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->allKeys () );
  }
}

/*
QString applicationName () const
*/
$method=|QString|applicationName|

/*
void beginGroup ( const QString & prefix )
*/
$method=|void|beginGroup|const QString &

/*
int beginReadArray ( const QString & prefix )
*/
$method=|int|beginReadArray|const QString &

/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
$method=|void|beginWriteArray|const QString &,int=-1

/*
QStringList childGroups () const
*/
$method=|QStringList|childGroups|

/*
QStringList childKeys () const
*/
$method=|QStringList|childKeys|

/*
void clear ()
*/
$method=|void|clear|

/*
bool contains ( const QString & key ) const
*/
$method=|bool|contains|const QString &

/*
void endArray ()
*/
$method=|void|endArray|

/*
void endGroup ()
*/
$method=|void|endGroup|

/*
bool fallbacksEnabled () const
*/
$method=|bool|fallbacksEnabled|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
Format format () const
*/
HB_FUNC_STATIC( QSETTINGS_FORMAT )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->format () );
  }
}

/*
QString group () const
*/
$method=|QString|group|

/*
QTextCodec * iniCodec () const
*/
HB_FUNC_STATIC( QSETTINGS_INICODEC )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCodec * ptr = obj->iniCodec ();
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
    RBOOL( obj->isWritable () );
  }
}

/*
QString organizationName () const
*/
$method=|QString|organizationName|

/*
void remove ( const QString & key )
*/
$method=|void|remove|const QString &

/*
Scope scope () const
*/
HB_FUNC_STATIC( QSETTINGS_SCOPE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->scope () );
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
    obj->setIniCodec ( PQTEXTCODEC(1) );
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
    obj->setIniCodec ( (const char *) hb_parc(1) );
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
    obj->setValue ( PQSTRING(1), *PQVARIANT(2) );
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
    hb_retni( (int) obj->status () );
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
    obj->sync ();
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
  hb_retni( (int) QSettings::defaultFormat () );
}



/*
void setDefaultFormat ( Format format )
*/
HB_FUNC_STATIC( QSETTINGS_SETDEFAULTFORMAT )
{
  QSettings::setDefaultFormat ( (QSettings::Format) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( Format format, Scope scope, const QString & path )
*/
HB_FUNC_STATIC( QSETTINGS_SETPATH )
{
  QSettings::setPath ( (QSettings::Format) hb_parni(1), (QSettings::Scope) hb_parni(2), PQSTRING(3) );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
