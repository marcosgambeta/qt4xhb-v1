$header

#include "hbclass.ch"

CLASS QTemporaryFile INHERIT QFile

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTemporaryFile>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTemporaryFile()
*/
$constructor=|new1|

/*
QTemporaryFile(const QString & templateName)
*/
$constructor=|new2|const QString &

/*
QTemporaryFile(QObject * parent)
*/
$constructor=|new3|QObject *

/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
$constructor=|new4|const QString &,QObject *

//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRemove() const
*/
$method=|bool|autoRemove|

/*
QString fileTemplate() const
*/
$method=|QString|fileTemplate|

/*
bool open()
*/
$method=|bool|open|

/*
void setAutoRemove(bool b)
*/
$method=|void|setAutoRemove|bool

/*
void setFileTemplate(const QString & name)
*/
$method=|void|setFileTemplate|const QString &

/*
virtual QString fileName() const
*/
$virtualMethod=|QString|fileName|

/*
static QTemporaryFile * createNativeFile(QFile & file)
*/
$staticMethod=|QTemporaryFile *|createNativeFile,createNativeFile1|QFile &

/*
static QTemporaryFile * createNativeFile(const QString & fileName)
*/
$staticMethod=|QTemporaryFile *|createNativeFile,createNativeFile2|const QString &

//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
{
  if( ISNUMPAR(1) && ISQFILE(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
