$header

#include "hbclass.ch"

CLASS QDomCharacterData INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD appendData
   METHOD data
   METHOD deleteData
   METHOD insertData
   METHOD length
   METHOD nodeType
   METHOD replaceData
   METHOD setData
   METHOD substringData

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomCharacterData>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomCharacterData ()
*/
$internalConstructor=|new1|

/*
QDomCharacterData ( const QDomCharacterData & x )
*/
$internalConstructor=|new2|

//[1]QDomCharacterData ()
//[2]QDomCharacterData ( const QDomCharacterData & x )

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCharacterData_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    QDomCharacterData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendData ( const QString & arg )
*/
$method=|void|appendData|const QString &

/*
QString data () const
*/
$method=|QString|data|

/*
void deleteData ( unsigned long offset, unsigned long count )
*/
$method=|void|deleteData|unsigned long,unsigned long

/*
void insertData ( unsigned long offset, const QString & arg )
*/
$method=|void|insertData|unsigned long,const QString &

/*
uint length () const
*/
$method=|uint|length|

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
void replaceData ( unsigned long offset, unsigned long count, const QString & arg )
*/
$method=|void|replaceData|unsigned long,unsigned long,const QString &

/*
void setData ( const QString & v )
*/
$method=|void|setData|const QString &

/*
QString substringData ( unsigned long offset, unsigned long count )
*/
$method=|QString|substringData|unsigned long,unsigned long

#pragma ENDDUMP
