/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSqlRelation

   DATA pointer
   DATA class_id INIT Class_Id_QSqlRelation
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD displayColumn
   METHOD indexColumn
   METHOD isValid
   METHOD tableName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QSqlRelation
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSqlRelation
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSqlRelation
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSqlRelation
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSqlRelation
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSqlRelation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSqlRelation>

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
QSqlRelation ()
*/
HB_FUNC_STATIC( QSQLRELATION_NEW1 )
{
  QSqlRelation * o = NULL;
  o = new QSqlRelation (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRelation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )
*/
HB_FUNC_STATIC( QSQLRELATION_NEW2 )
{
  QSqlRelation * o = NULL;
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  o = new QSqlRelation ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRelation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSqlRelation ()
//[2]QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )

HB_FUNC_STATIC( QSQLRELATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLRELATION_NEW1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QSQLRELATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
QString displayColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_DISPLAYCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->displayColumn (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString indexColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_INDEXCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->indexColumn (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLRELATION_ISVALID )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString tableName () const
*/
HB_FUNC_STATIC( QSQLRELATION_TABLENAME )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->tableName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
