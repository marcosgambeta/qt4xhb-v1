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

HB_FUNC_STATIC( QCOREAPPLICATION_DELETE )
{
  QCoreApplication * obj = (QCoreApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QCOREAPPLICATION_NOTIFY )
{
  QCoreApplication * obj = (QCoreApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->notify ( PQOBJECT(1), PQEVENT(2) ) );
  }
}




/*
void quit ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_QUIT )
{
  QCoreApplication * obj = (QCoreApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->quit ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void addLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ADDLIBRARYPATH )
{
  QCoreApplication::addLibraryPath ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString applicationDirPath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONDIRPATH )
{
  RQSTRING( QCoreApplication::applicationDirPath () );
}


/*
QString applicationFilePath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONFILEPATH )
{
  RQSTRING( QCoreApplication::applicationFilePath () );
}


/*
QString applicationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONNAME )
{
  RQSTRING( QCoreApplication::applicationName () );
}


/*
qint64 applicationPid ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONPID )
{
  RQINT64( QCoreApplication::applicationPid () );
}


/*
QString applicationVersion ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONVERSION )
{
  RQSTRING( QCoreApplication::applicationVersion () );
}


/*
QStringList arguments ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ARGUMENTS )
{
  RQSTRINGLIST( QCoreApplication::arguments () );
}


/*
bool closingDown ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_CLOSINGDOWN )
{
  RBOOL( QCoreApplication::closingDown () );
}


/*
int exec ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXEC )
{
  RINT( QCoreApplication::exec () );
}


/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXIT )
{
  QCoreApplication::exit ( OPINT(1,0) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void flush ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_FLUSH )
{
  QCoreApplication::flush ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasPendingEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_HASPENDINGEVENTS )
{
  RBOOL( QCoreApplication::hasPendingEvents () );
}


/*
void installTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTALLTRANSLATOR )
{
  QTranslator * par1 = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::installTranslator ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QCoreApplication * instance ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTANCE )
{
  QCoreApplication * ptr = QCoreApplication::instance ();
  _qt4xhb_createReturnClass ( ptr, "QCOREAPPLICATION" );
}


/*
QStringList libraryPaths ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_LIBRARYPATHS )
{
  RQSTRINGLIST( QCoreApplication::libraryPaths () );
}


/*
QString organizationDomain ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONDOMAIN )
{
  RQSTRING( QCoreApplication::organizationDomain () );
}


/*
QString organizationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONNAME )
{
  RQSTRING( QCoreApplication::organizationName () );
}


/*
void postEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT1 )
{
  QCoreApplication::postEvent ( PQOBJECT(1), PQEVENT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT2 )
{
  QCoreApplication::postEvent ( PQOBJECT(1), PQEVENT(2), PINT(3) );
  hb_itemReturn( hb_stackSelfItem() );
}


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
void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS1 )
{
  QCoreApplication::processEvents ( ISNIL(1)? QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS2 )
{
  QCoreApplication::processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


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
void removeLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVELIBRARYPATH )
{
  QCoreApplication::removeLibraryPath ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removePostedEvents ( QObject * receiver )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS1 )
{
  QCoreApplication::removePostedEvents ( PQOBJECT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removePostedEvents ( QObject * receiver, int eventType )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS2 )
{
  QCoreApplication::removePostedEvents ( PQOBJECT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


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
void removeTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVETRANSLATOR )
{
  QTranslator * par1 = (QTranslator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::removeTranslator ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool sendEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDEVENT )
{
  RBOOL( QCoreApplication::sendEvent ( PQOBJECT(1), PQEVENT(2) ) );
}


/*
void sendPostedEvents ( QObject * receiver, int event_type )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS1 )
{
  QCoreApplication::sendPostedEvents ( PQOBJECT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendPostedEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS2 )
{
  QCoreApplication::sendPostedEvents ();
  hb_itemReturn( hb_stackSelfItem() );
}


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
void setApplicationName ( const QString & application )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONNAME )
{
  QCoreApplication::setApplicationName ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setApplicationVersion ( const QString & version )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONVERSION )
{
  QCoreApplication::setApplicationVersion ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETATTRIBUTE )
{
  QCoreApplication::setAttribute ( (Qt::ApplicationAttribute) hb_parni(1), OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLibraryPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETLIBRARYPATHS )
{
  QCoreApplication::setLibraryPaths ( PQSTRINGLIST(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrganizationDomain ( const QString & orgDomain )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONDOMAIN )
{
  QCoreApplication::setOrganizationDomain ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrganizationName ( const QString & orgName )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONNAME )
{
  QCoreApplication::setOrganizationName ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool startingUp ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_STARTINGUP )
{
  RBOOL( QCoreApplication::startingUp () );
}


/*
bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TESTATTRIBUTE )
{
  RBOOL( QCoreApplication::testAttribute ( (Qt::ApplicationAttribute) hb_parni(1) ) );
}


/*
QString translate ( const char * context, const char * sourceText, const char * disambiguation, Encoding encoding, int n )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE1 )
{
  RQSTRING( QCoreApplication::translate ( (const char *) hb_parc(1), (const char *) hb_parc(2), (const char *) hb_parc(3), (QCoreApplication::Encoding) hb_parni(4), PINT(5) ) );
}


/*
QString translate ( const char * context, const char * sourceText, const char * disambiguation = 0, Encoding encoding = CodecForTr )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE2 )
{
  RQSTRING( QCoreApplication::translate ( (const char *) hb_parc(1), (const char *) hb_parc(2), (const char *) hb_parc(3), ISNIL(4)? QCoreApplication::CodecForTr : (QCoreApplication::Encoding) hb_parni(4) ) );
}


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
