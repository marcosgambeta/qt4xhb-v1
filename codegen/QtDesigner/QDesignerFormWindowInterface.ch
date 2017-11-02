$header

/*
enum QDesignerFormWindowInterface::FeatureFlag
flags QDesignerFormWindowInterface::Feature
*/
#define QDesignerFormWindowInterface_EditFeature                     0x01
#define QDesignerFormWindowInterface_GridFeature                     0x02
#define QDesignerFormWindowInterface_TabOrderFeature                 0x04
#define QDesignerFormWindowInterface_DefaultFeature                  hb_or(QDesignerFormWindowInterface_EditFeature,QDesignerFormWindowInterface_GridFeature)
