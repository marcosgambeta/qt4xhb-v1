/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOREAPPLICATION

CLASS QCoreApplication INHERIT QObject

   DATA class_id INIT Class_Id_QCoreApplication
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QCoreApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCoreApplication>

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
  QCoreApplication * o = NULL;
  o = new QCoreApplication( argc, argv );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,   (QCoreApplication *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retl( obj->filterEvent ( par1, &par2 ) );
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
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->notify ( par1, par2 ) );
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
    obj->quit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void addLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ADDLIBRARYPATH )
{
  QString par1 = hb_parc(1);
  QCoreApplication::addLibraryPath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString applicationDirPath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONDIRPATH )
{
  QString str1 = QCoreApplication::applicationDirPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString applicationFilePath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONFILEPATH )
{
  QString str1 = QCoreApplication::applicationFilePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString applicationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONNAME )
{
  QString str1 = QCoreApplication::applicationName (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
qint64 applicationPid ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONPID )
{
  qint64 i = QCoreApplication::applicationPid (  );
  hb_retni( i );
}


/*
QString applicationVersion ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONVERSION )
{
  QString str1 = QCoreApplication::applicationVersion (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList arguments ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ARGUMENTS )
{
  QStringList strl = QCoreApplication::arguments (  );
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


/*
bool closingDown ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_CLOSINGDOWN )
{
  hb_retl( QCoreApplication::closingDown (  ) );
}


/*
int exec ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXEC )
{
  hb_retni( QCoreApplication::exec (  ) );
}


/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXIT )
{
  QCoreApplication::exit ( ISNIL(1)? 0 : hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void flush ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_FLUSH )
{
  QCoreApplication::flush (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasPendingEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_HASPENDINGEVENTS )
{
  hb_retl( QCoreApplication::hasPendingEvents (  ) );
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
  QCoreApplication * ptr = QCoreApplication::instance (  );
  _qt4xhb_createReturnClass ( ptr, "QCOREAPPLICATION" );
}


/*
QStringList libraryPaths ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_LIBRARYPATHS )
{
  QStringList strl = QCoreApplication::libraryPaths (  );
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


/*
QString organizationDomain ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONDOMAIN )
{
  QString str1 = QCoreApplication::organizationDomain (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString organizationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONNAME )
{
  QString str1 = QCoreApplication::organizationName (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
void postEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT1 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::postEvent ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::postEvent ( par1, par2, hb_parni(3) );
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
  QCoreApplication::processEvents (  (QEventLoop::ProcessEventsFlags) ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS2 )
{
  QCoreApplication::processEvents (  (QEventLoop::ProcessEventsFlags) hb_parni(1), hb_parni(2) );
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
  QString par1 = hb_parc(1);
  QCoreApplication::removeLibraryPath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removePostedEvents ( QObject * receiver )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS1 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::removePostedEvents ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removePostedEvents ( QObject * receiver, int eventType )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::removePostedEvents ( par1, hb_parni(2) );
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
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QCoreApplication::sendEvent ( par1, par2 ) );
}


/*
void sendPostedEvents ( QObject * receiver, int event_type )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS1 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCoreApplication::sendPostedEvents ( par1, hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendPostedEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS2 )
{
  QCoreApplication::sendPostedEvents (  );
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
  QString par1 = hb_parc(1);
  QCoreApplication::setApplicationName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setApplicationVersion ( const QString & version )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONVERSION )
{
  QString par1 = hb_parc(1);
  QCoreApplication::setApplicationVersion ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETATTRIBUTE )
{
  bool par2 = ISNIL(2)? true : hb_parl(2);
  QCoreApplication::setAttribute (  (Qt::ApplicationAttribute) hb_parni(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLibraryPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETLIBRARYPATHS )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
  QCoreApplication::setLibraryPaths ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrganizationDomain ( const QString & orgDomain )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONDOMAIN )
{
  QString par1 = hb_parc(1);
  QCoreApplication::setOrganizationDomain ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrganizationName ( const QString & orgName )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONNAME )
{
  QString par1 = hb_parc(1);
  QCoreApplication::setOrganizationName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool startingUp ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_STARTINGUP )
{
  hb_retl( QCoreApplication::startingUp (  ) );
}


/*
bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TESTATTRIBUTE )
{
  hb_retl( QCoreApplication::testAttribute (  (Qt::ApplicationAttribute) hb_parni(1) ) );
}


/*
QString translate ( const char * context, const char * sourceText, const char * disambiguation, Encoding encoding, int n )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE1 )
{
  const char * par1 = hb_parc(1);
  const char * par2 = hb_parc(2);
  const char * par3 = hb_parc(3);
  QString str1 = QCoreApplication::translate (  (const char *) par1,  (const char *) par2,  (const char *) par3,  (QCoreApplication::Encoding) hb_parni(4), hb_parni(5) );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString translate ( const char * context, const char * sourceText, const char * disambiguation = 0, Encoding encoding = CodecForTr )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE2 )
{
  const char * par1 = hb_parc(1);
  const char * par2 = hb_parc(2);
  const char * par3 = hb_parc(3);
  QString str1 = QCoreApplication::translate (  (const char *) par1,  (const char *) par2,  (const char *) par3,  (QCoreApplication::Encoding) ISNIL(4)? (int) QCoreApplication::CodecForTr : hb_parni(4) );
  hb_retc( (const char *) str1.toLatin1().data() );
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
