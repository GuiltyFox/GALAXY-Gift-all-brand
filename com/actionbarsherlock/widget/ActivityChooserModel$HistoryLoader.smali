.class final Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 930
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    .registers 3

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 933
    const/4 v5, 0x0

    .line 935
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_18} :catch_77

    move-result-object v5

    .line 943
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 944
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 946
    const/16 v18, 0x0

    .line 947
    .local v18, "type":I
    :goto_26
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_36

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_79

    .line 951
    :cond_36
    const-string v22, "historical-records"

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7e

    .line 952
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v23, "Share records file does not start with historical-records tag."

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_4a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4a} :catch_f0
    .catchall {:try_start_19 .. :try_end_4a} :catchall_159

    .line 1025
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "type":I
    :catch_4a
    move-exception v21

    .line 1026
    .local v21, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4b
    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Error reading historical recrod file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v24, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_4b .. :try_end_71} :catchall_159

    .line 1030
    if-eqz v5, :cond_76

    .line 1032
    :try_start_73
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_1aa

    .line 1038
    .end local v21    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_76
    :goto_76
    return-void

    .line 936
    :catch_77
    move-exception v6

    .line 940
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_76

    .line 948
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "type":I
    :cond_79
    :try_start_79
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    goto :goto_26

    .line 956
    :cond_7e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v15, "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_83
    :goto_83
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 960
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_ca

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_9a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_9a} :catch_f0
    .catchall {:try_start_79 .. :try_end_9a} :catchall_159

    .line 992
    :try_start_9a
    new-instance v19, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 998
    .local v19, "uniqueShareRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$3(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v8

    .line 999
    .local v8, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1000
    .local v9, "historicalRecordsCount":I
    add-int/lit8 v10, v9, -0x1

    .local v10, "i":I
    :goto_b1
    if-gez v10, :cond_160

    .line 1005
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v22

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_16f

    .line 1006
    monitor-exit v23
    :try_end_c2
    .catchall {:try_start_9a .. :try_end_c2} :catchall_1a7

    .line 1030
    if-eqz v5, :cond_76

    .line 1032
    :try_start_c4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_76

    .line 1033
    :catch_c8
    move-exception v22

    goto :goto_76

    .line 963
    .end local v8    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v9    # "historicalRecordsCount":I
    .end local v10    # "i":I
    .end local v19    # "uniqueShareRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_ca
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_83

    const/16 v22, 0x4

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_83

    .line 966
    :try_start_da
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 967
    .local v12, "nodeName":Ljava/lang/String;
    const-string v22, "historical-record"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11f

    .line 968
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v23, "Share records file not well-formed."

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_da .. :try_end_f0} :catch_4a
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_f0} :catch_f0
    .catchall {:try_start_da .. :try_end_f0} :catchall_159

    .line 1027
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v18    # "type":I
    :catch_f0
    move-exception v11

    .line 1028
    .local v11, "ioe":Ljava/io/IOException;
    :try_start_f1
    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Error reading historical recrod file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v24, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_f1 .. :try_end_115} :catchall_159

    .line 1030
    if-eqz v5, :cond_76

    .line 1032
    :try_start_117
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11c

    goto/16 :goto_76

    .line 1033
    :catch_11c
    move-exception v22

    goto/16 :goto_76

    .line 971
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v12    # "nodeName":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v18    # "type":I
    :cond_11f
    const/16 v22, 0x0

    :try_start_121
    const-string v23, "activity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 973
    .local v4, "activity":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 975
    .local v16, "time":J
    const/16 v22, 0x0

    const-string v23, "weight"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 977
    .local v20, "weight":F
    new-instance v14, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    move-wide/from16 v0, v16

    move/from16 v2, v20

    invoke-direct {v14, v4, v0, v1, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 979
    .local v14, "readRecord":Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_157
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_121 .. :try_end_157} :catch_4a
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_157} :catch_f0
    .catchall {:try_start_121 .. :try_end_157} :catchall_159

    goto/16 :goto_83

    .line 1029
    .end local v4    # "activity":Ljava/lang/String;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "readRecord":Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    .end local v15    # "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v16    # "time":J
    .end local v18    # "type":I
    .end local v20    # "weight":F
    :catchall_159
    move-exception v22

    .line 1030
    if-eqz v5, :cond_15f

    .line 1032
    :try_start_15c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_1ad

    .line 1037
    :cond_15f
    :goto_15f
    throw v22

    .line 1001
    .restart local v8    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v9    # "historicalRecordsCount":I
    .restart local v10    # "i":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v18    # "type":I
    .restart local v19    # "uniqueShareRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_160
    :try_start_160
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    .line 1002
    .local v7, "historicalRecord":Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1000
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_b1

    .line 1010
    .end local v7    # "historicalRecord":Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    :cond_16f
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1011
    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$5(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v22

    new-instance v24, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;

    invoke-direct/range {v24 .. v25}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    monitor-exit v23
    :try_end_19d
    .catchall {:try_start_160 .. :try_end_19d} :catchall_1a7

    .line 1030
    if-eqz v5, :cond_76

    .line 1032
    :try_start_19f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1a4

    goto/16 :goto_76

    .line 1033
    :catch_1a4
    move-exception v22

    goto/16 :goto_76

    .line 990
    .end local v8    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v9    # "historicalRecordsCount":I
    .end local v10    # "i":I
    .end local v19    # "uniqueShareRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_1a7
    move-exception v22

    :try_start_1a8
    monitor-exit v23
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    :try_start_1a9
    throw v22
    :try_end_1aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a9 .. :try_end_1aa} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1aa} :catch_f0
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_159

    .line 1033
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "readRecords":Ljava/util/List;, "Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v18    # "type":I
    .restart local v21    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1aa
    move-exception v22

    goto/16 :goto_76

    .end local v21    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1ad
    move-exception v23

    goto :goto_15f
.end method
