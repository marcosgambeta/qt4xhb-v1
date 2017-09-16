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
$constructor=|new|const QString &,const QString &=QString(),QObject *=0

/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
$constructor=|new|QSettings::Scope,const QString &,const QString &=QString(),QObject *=0

/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
$constructor=|new3|QSettings::Format,QSettings::Scope,const QString &,const QString &=QString(),QObject *=0

/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
$constructor=|new4|const QString &,QSettings::Format,QObject *=0

/*
QSettings ( QObject * parent = 0 )
*/
$constructor=|new5|QObject *=0

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
$method=|QStringList|allKeys|

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
$method=|QSettings::Format|format|

/*
QString group () const
*/
$method=|QString|group|

/*
QTextCodec * iniCodec () const
*/
$method=|QTextCodec *|iniCodec|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

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
$method=|QSettings::Scope|scope|

/*
void setArrayIndex ( int i )
*/
$method=|void|setArrayIndex|int

/*
void setFallbacksEnabled ( bool b )
*/
$method=|void|setFallbacksEnabled|bool

/*
void setIniCodec ( QTextCodec * codec )
*/
$method=|void|setIniCodec,setIniCodec1|QTextCodec *

/*
void setIniCodec ( const char * codecName )
*/
$method=|void|setIniCodec,setIniCodec2|const char *

//[1]void setIniCodec ( QTextCodec * codec )
//[2]void setIniCodec ( const char * codecName )

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( const QString & key, const QVariant & value )
*/
$method=|void|setValue|const QString &,const QVariant &

/*
Status status () const
*/
$method=|QSettings::Status|status|

/*
void sync ()
*/
$method=|void|sync|

/*
QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
$method=|QVariant|value|const QString &,const QVariant &=QVariant()

/*
static Format defaultFormat ()
*/
$staticMethod=|QSettings::Format|defaultFormat|

/*
static void setDefaultFormat ( Format format )
*/
$staticMethod=|void|setDefaultFormat|QSettings::Format

/*
static void setPath ( Format format, Scope scope, const QString & path )
*/
$staticMethod=|void|setPath|QSettings::Format,QSettings::Scope,const QString &

#pragma ENDDUMP
