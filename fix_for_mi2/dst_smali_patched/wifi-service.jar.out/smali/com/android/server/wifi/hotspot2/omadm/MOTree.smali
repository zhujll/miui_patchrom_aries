.class public Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    }
.end annotation


# static fields
.field private static final DDFNameTag:Ljava/lang/String; = "DDFName"

.field public static final MgmtTreeTag:Ljava/lang/String; = "MgmtTree"

.field private static final NodeNameTag:Ljava/lang/String; = "NodeName"

.field private static final NodeTag:Ljava/lang/String; = "Node"

.field private static final PathTag:Ljava/lang/String; = "Path"

.field private static final RTPropTag:Ljava/lang/String; = "RTProperties"

.field private static final TypeTag:Ljava/lang/String; = "Type"

.field private static final ValueTag:Ljava/lang/String; = "Value"


# instance fields
.field private final mDtdRev:Ljava/lang/String;

.field private final mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 7
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "children":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v3, 0x0

    .local v3, "dtdRev":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VerDTD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .local v3, "dtdRev":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "dtdRev":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v5, "MgmtTree"

    invoke-direct {v4, v6, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0

    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 0
    .param p1, "urn"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    return-void
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 20
    .param p0, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Node"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Node is a \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' instead of a \'Node\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .local v4, "checkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v8, 0x0

    .local v8, "context":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v9, 0x0

    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v8    # "context":Ljava/lang/String;
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .local v6, "child$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v5, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v13, "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "NodeName"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v9, :cond_2

    new-instance v17, Ljava/io/IOException;

    const-string v18, "NodeName not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    new-instance v9, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;)V

    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto :goto_0

    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Path"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    :cond_4
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Path not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap0(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Value in constructed node"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    :cond_8
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Value not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_9
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap1(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_a
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "RTProperties"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-eqz v13, :cond_b

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Duplicate RTProperties"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_b
    const-string v17, "Type"

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v15

    .local v15, "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    const-string v17, "DDFName"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v10

    .local v10, "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v8

    .local v8, "context":Ljava/lang/String;
    if-nez v8, :cond_1

    new-instance v17, Ljava/io/IOException;

    const-string v18, "No text in DDFName"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v8    # "context":Ljava/lang/String;
    .end local v10    # "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v15    # "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_c
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Node"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d

    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scalar node "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has Node child"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_d
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v13    # "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10

    if-nez v9, :cond_f

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Missing name"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_f
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    .local v14, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .restart local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v14, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_1

    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v14    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_11

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Got both sub nodes and value(s)"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "nodeData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    .local v11, "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_2

    .end local v11    # "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .end local v12    # "nodeData$iterator":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method private static getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No node for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to have exactly one child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to have child \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' instead of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .local v2, "strip":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "tree":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "octet":I
    if-gez v0, :cond_1

    const/4 v6, 0x0

    return-object v6

    :cond_1
    const/16 v6, 0x20

    if-le v0, v6, :cond_2

    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tree"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a tree: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .local v5, "version":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .local v4, "urn":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v1

    .local v1, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-direct {v6, v4, v5, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    return-object v6
.end method


# virtual methods
.method public getDtdRev()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public marshal(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v0, "tree "

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    const-string v0, "(%s)\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->marshal(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MO Tree v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", urn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
