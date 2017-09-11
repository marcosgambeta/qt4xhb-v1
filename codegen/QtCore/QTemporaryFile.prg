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
HB_FUNC_STATIC( QTEMPORARYFILE_NEW1 )
{
  QTemporaryFile * o = new QTemporaryFile ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTemporaryFile(const QString & templateName)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW2 )
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTemporaryFile(QObject * parent)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW3 )
{
  QTemporaryFile * o = new QTemporaryFile ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW4 )
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1), PQOBJECT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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
HB_FUNC_STATIC( QTEMPORARYFILE_AUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoRemove () );
  }
}

/*
QString fileTemplate() const
*/
$method=|QString|fileTemplate|

/*
bool open()
*/
HB_FUNC_STATIC( QTEMPORARYFILE_OPEN )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open () );
  }
}


/*
void setAutoRemove(bool b)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETAUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoRemove ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileTemplate(const QString & name)
*/
$method=|void|setFileTemplate|const QString &

/*
virtual QString fileName() const
*/
$virtualMethod=|QString|fileName|


//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

//HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
//{
//  if( ISNUMPAR(1) && ISQFILE(1) )
//  {
//    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE1 );
//  }
//  else if( ISNUMPAR(1) && ISCHAR(1) )
//  {
//    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE2 );
//  }
//}



#pragma ENDDUMP
