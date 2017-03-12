/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY
#endif

CLASS QProcess INHERIT QIODevice

   DATA class_id INIT Class_Id_QProcess
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute1
   METHOD execute2
   METHOD execute
   METHOD startDetached1
   METHOD startDetached2
   METHOD startDetached3
   METHOD startDetached
   METHOD systemEnvironment
   METHOD onError
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProcess
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QProcess>

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
QProcess ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROCESS_NEW )
{
  QProcess * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QProcess ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcess *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QPROCESS_DELETE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void closeReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_CLOSEREADCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeReadChannel (  (QProcess::ProcessChannel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeWriteChannel ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSEWRITECHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeWriteChannel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList environment () const (deprecated)
*/
HB_FUNC_STATIC( QPROCESS_ENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->environment (  );
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
QProcess::ProcessError error () const
*/
HB_FUNC_STATIC( QPROCESS_ERROR )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
int exitCode () const
*/
HB_FUNC_STATIC( QPROCESS_EXITCODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->exitCode (  ) );
  }
}


/*
QProcess::ExitStatus exitStatus () const
*/
HB_FUNC_STATIC( QPROCESS_EXITSTATUS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->exitStatus (  ) );
  }
}


/*
QString nativeArguments () const
*/
HB_FUNC_STATIC( QPROCESS_NATIVEARGUMENTS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->nativeArguments (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
ProcessChannelMode processChannelMode () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->processChannelMode (  ) );
  }
}


/*
QProcessEnvironment processEnvironment () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcessEnvironment * ptr = new QProcessEnvironment( obj->processEnvironment (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
  }
}


/*
QByteArray readAllStandardError ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDERROR )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray readAllStandardOutput ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDOUTPUT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardOutput (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
ProcessChannel readChannel () const
*/
HB_FUNC_STATIC( QPROCESS_READCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->readChannel (  ) );
  }
}


/*
void setEnvironment ( const QStringList & environment ) (deprecated)
*/
HB_FUNC_STATIC( QPROCESS_SETENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
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
    obj->setEnvironment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNativeArguments ( const QString & arguments )
*/
HB_FUNC_STATIC( QPROCESS_SETNATIVEARGUMENTS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNativeArguments ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProcessChannelMode ( ProcessChannelMode mode )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProcessChannelMode (  (QProcess::ProcessChannelMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProcessEnvironment ( const QProcessEnvironment & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcessEnvironment * par1 = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProcessEnvironment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_SETREADCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadChannel (  (QProcess::ProcessChannel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDERRORFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setStandardErrorFile ( par1, ISNIL(2)? QIODevice::Truncate : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardInputFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDINPUTFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setStandardInputFile ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setStandardOutputFile ( par1, ISNIL(2)? QIODevice::Truncate : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardOutputProcess ( QProcess * destination )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTPROCESS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcess * par1 = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStandardOutputProcess ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorkingDirectory ( const QString & dir )
*/
HB_FUNC_STATIC( QPROCESS_SETWORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setWorkingDirectory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QPROCESS_START1 )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
    obj->start ( par1, par2, ISNIL(3)? QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( const QString & program, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QPROCESS_START2 )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->start ( par1, ISNIL(2)? QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
//[2]void start ( const QString & program, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPROCESS_START1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPROCESS_START2 );
  }
}


/*
QProcess::ProcessState state () const
*/
HB_FUNC_STATIC( QPROCESS_STATE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
bool waitForFinished ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORFINISHED )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForFinished ( ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForStarted ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORSTARTED )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForStarted ( ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
QString workingDirectory () const
*/
HB_FUNC_STATIC( QPROCESS_WORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->workingDirectory (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QPROCESS_ATEND )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESAVAILABLE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesAvailable (  );
    hb_retni( i );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESTOWRITE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesToWrite (  );
    hb_retni( i );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QPROCESS_CANREADLINE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QPROCESS_ISSEQUENTIAL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORBYTESWRITTEN )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORREADYREAD )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
void kill ()
*/
HB_FUNC_STATIC( QPROCESS_KILL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->kill (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void terminate ()
*/
HB_FUNC_STATIC( QPROCESS_TERMINATE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->terminate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
int execute ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE1 )
{
  QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  hb_retni( QProcess::execute ( par1, par2 ) );
}


/*
int execute ( const QString & program )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE2 )
{
  QString par1 = hb_parc(1);
  hb_retni( QProcess::execute ( par1 ) );
}


//[1]int execute ( const QString & program, const QStringList & arguments )
//[2]int execute ( const QString & program )

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE2 );
  }
}

/*
bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED1 )
{
  QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  QString par3 = hb_parc(3);
  qint64 * par4 = (qint64 *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QProcess::startDetached ( par1, par2, par3, par4 ) );
}


/*
bool startDetached ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED2 )
{
  QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  hb_retl( QProcess::startDetached ( par1, par2 ) );
}


/*
bool startDetached ( const QString & program )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED3 )
{
  QString par1 = hb_parc(1);
  hb_retl( QProcess::startDetached ( par1 ) );
}


//[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
//[2]bool startDetached ( const QString & program, const QStringList & arguments )
//[3]bool startDetached ( const QString & program )

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED3 );
  }
}

/*
QStringList systemEnvironment ()
*/
HB_FUNC_STATIC( QPROCESS_SYSTEMENVIRONMENT )
{
  QStringList strl = QProcess::systemEnvironment (  );
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





#pragma ENDDUMP
