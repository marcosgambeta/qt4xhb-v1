/*

  Qt4xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

void _qt4xhb_createReturnClass ( void * ptr, const char * classname );
void _qt4xhb_createReturnClass ( const void * ptr, const char * classname );
void _qt4xhb_createReturnClass ( void * ptr, const char * classname, bool destroy );
void _qt4xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy );
bool _qt4xhb_checkclsid ( int par, int clsid );
bool _qt4xhb_inherits ( int par, const char * classname );
bool _qt4xhb_isClassDerivedFrom ( const char * className1, const char * className2 );
bool _qt4xhb_isObjectDerivedFrom ( int numpar, const QString className );
QStringList _qt4xhb_convert_array_parameter_to_qstringlist ( int numpar );
void _qt4xhb_storePointerAndFlag (void * pointer, bool flag);
