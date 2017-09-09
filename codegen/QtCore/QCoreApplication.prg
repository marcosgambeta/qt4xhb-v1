$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOREAPPLICATION
#endif

CLASS QCoreApplication INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD filterEvent
   METHOD notify
   METHOD quit
   METHOD addLibraryPath
   METHOD applicationDirPath
   METHOD applicationFilePath
   METHOD applicationName
   METHOD applicationPid
   METHOD applicationVersion
   METHOD arguments
   METHOD closingDown
   METHOD exec
   METHOD exit
   METHOD flush
   METHOD hasPendingEvents
   METHOD installTranslator
   METHOD instance
   METHOD libraryPaths
   METHOD organizationDomain
   METHOD organizationName
   METHOD postEvent1
   METHOD postEvent2
   METHOD postEvent
   METHOD processEvents1
   METHOD processEvents2
   METHOD processEvents
   METHOD removeLibraryPath
   METHOD removePostedEvents1
   METHOD removePostedEvents2
   METHOD removePostedEvents
   METHOD removeTranslator
   METHOD sendEvent
   METHOD sendPostedEvents1
   METHOD sendPostedEvents2
   METHOD sendPostedEvents
   METHOD setApplicationName
   METHOD setApplicationVersion
   METHOD setAttribute
   METHOD setLibraryPaths
   METHOD setOrganizationDomain
   METHOD setOrganizationName
   METHOD startingUp
   METHOD testAttribute
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD onAboutToQuit
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCoreApplication>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>


/*
QCoreApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication * o = new QCoreApplication( argc, argv );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool filterEvent ( void * message, long * result )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_FILTEREVENT )
{
  QCoreApplication * obj = (QCoreApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * par1 = (void *) hb_parptr(1);
    long par2;
    RBOOL( obj->filterEvent ( par1, &par2 ) );
    hb_stornl( par2, 2 );
  }
}

/*
virtual bool notify ( QObject * receiver, QEvent * event )
*/
$virtualMethod=|bool|notify|QObject *,QEvent *

/*
void quit ()
*/
$method=|void|quit|

/*
static void addLibraryPath ( const QString & path )
*/
$staticMethod=|void|addLibraryPath|const QString &

/*
static QString applicationDirPath ()
*/
$staticMethod=|QString|applicationDirPath|

/*
static QString applicationFilePath ()
*/
$staticMethod=|QString|applicationFilePath|

/*
static QString applicationName ()
*/
$staticMethod=|QString|applicationName|

/*
static qint64 applicationPid ()
*/
$staticMethod=|qint64|applicationPid|

/*
static QString applicationVersion ()
*/
$staticMethod=|QString|applicationVersion|

/*
static QStringList arguments ()
*/
$staticMethod=|QStringList|arguments|

/*
static bool closingDown ()
*/
$staticMethod=|bool|closingDown|

/*
static int exec ()
*/
$staticMethod=|int|exec|

/*
static void exit ( int returnCode = 0 )
*/
$staticMethod=|void|exit|int=0

/*
static void flush ()
*/
$staticMethod=|void|flush|

/*
static bool hasPendingEvents ()
*/
$staticMethod=|bool|hasPendingEvents|

/*
static void installTranslator ( QTranslator * translationFile )
*/
$staticMethod=|void|installTranslator|QTranslator *

/*
static QCoreApplication * instance ()
*/
$staticMethod=|QCoreApplication *|instance|

/*
static QStringList libraryPaths ()
*/
$staticMethod=|QStringList|libraryPaths|

/*
static QString organizationDomain ()
*/
$staticMethod=|QString|organizationDomain|

/*
static QString organizationName ()
*/
$staticMethod=|QString|organizationName|

/*
static void postEvent ( QObject * receiver, QEvent * event )
*/
$staticMethod=|void|postEvent,postEvent1|QObject *,QEvent *

/*
static void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
$staticMethod=|void|postEvent,postEvent2|QObject *,QEvent *,int

//[1]void postEvent ( QObject * receiver, QEvent * event )
//[2]void postEvent ( QObject * receiver, QEvent * event, int priority )

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_POSTEVENT1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISOBJECT(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_POSTEVENT2 );
  }
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
$staticMethod=|void|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
$staticMethod=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

//[1]void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
//[2]void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )

HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_PROCESSEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_PROCESSEVENTS2 );
  }
}

/*
static void removeLibraryPath ( const QString & path )
*/
$staticMethod=|void|removeLibraryPath|const QString &

/*
static void removePostedEvents ( QObject * receiver )
*/
$staticMethod=|void|removePostedEvents,removePostedEvents1|QObject *

/*
static void removePostedEvents ( QObject * receiver, int eventType )
*/
$staticMethod=|void|removePostedEvents,removePostedEvents2|QObject *,int

//[1]void removePostedEvents ( QObject * receiver )
//[2]void removePostedEvents ( QObject * receiver, int eventType )

HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS2 );
  }
}

/*
static void removeTranslator ( QTranslator * translationFile )
*/
$staticMethod=|void|removeTranslator|QTranslator *

/*
static bool sendEvent ( QObject * receiver, QEvent * event )
*/
$staticMethod=|bool|sendEvent|QObject *,QEvent *

/*
static void sendPostedEvents ( QObject * receiver, int event_type )
*/
$staticMethod=|void|sendPostedEvents,sendPostedEvents1|QObject *,int

/*
static void sendPostedEvents ()
*/
$staticMethod=|void|sendPostedEvents,sendPostedEvents2|

//[1]void sendPostedEvents ( QObject * receiver, int event_type )
//[2]void sendPostedEvents ()

HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_SENDPOSTEDEVENTS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_SENDPOSTEDEVENTS2 );
  }
}

/*
static void setApplicationName ( const QString & application )
*/
$staticMethod=|void|setApplicationName|const QString &

/*
static void setApplicationVersion ( const QString & version )
*/
$staticMethod=|void|setApplicationVersion|const QString &

/*
static void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
$staticMethod=|void|setAttribute|Qt::ApplicationAttribute,bool=true

/*
static void setLibraryPaths ( const QStringList & paths )
*/
$staticMethod=|void|setLibraryPaths|const QStringList &

/*
static void setOrganizationDomain ( const QString & orgDomain )
*/
$staticMethod=|void|setOrganizationDomain|const QString &

/*
static void setOrganizationName ( const QString & orgName )
*/
$staticMethod=|void|setOrganizationName|const QString &

/*
static bool startingUp ()
*/
$staticMethod=|bool|startingUp|

/*
static bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
$staticMethod=|bool|testAttribute|Qt::ApplicationAttribute

/*
static QString translate ( const char * context, const char * sourceText, const char * disambiguation, Encoding encoding, int n )
*/
$staticMethod=|QString|translate,translate1|const char *,const char *,const char *,QCoreApplication::Encoding,int

/*
static QString translate ( const char * context, const char * sourceText, const char * disambiguation = 0, Encoding encoding = CodecForTr )
*/
$staticMethod=|QString|translate,translate2|const char *,const char *,const char *=0,QCoreApplication::Encoding=QCoreApplication::CodecForTr

//[1]QString translate ( const char * context, const char * sourceText, const char * disambiguation, Encoding encoding, int n )
//[2]QString translate ( const char * context, const char * sourceText, const char * disambiguation = 0, Encoding encoding = CodecForTr )

HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE )
{
  if( ISNUMPAR(5) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_TRANSLATE1 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QCOREAPPLICATION_TRANSLATE2 );
  }
}

#pragma ENDDUMP
