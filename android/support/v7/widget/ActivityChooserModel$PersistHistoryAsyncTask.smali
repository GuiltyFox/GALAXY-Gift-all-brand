.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1033
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/support/v7/widget/ActivityChooserModel$1;)V
    .registers 3

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1038
    aget-object v0, p1, v2

    check-cast v0, Ljava/util/List;

    .line 1039
    aget-object v1, p1, v11

    check-cast v1, Ljava/lang/String;

    .line 1044
    :try_start_b
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v3}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_76

    move-result-object v3

    .line 1050
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 1053
    const/4 v1, 0x0

    :try_start_1b
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v1, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1055
    const/4 v1, 0x0

    const-string/jumbo v5, "historical-records"

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1058
    :goto_34
    if-ge v2, v5, :cond_93

    .line 1059
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 1060
    const/4 v6, 0x0

    const-string/jumbo v7, "historical-record"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    const/4 v6, 0x0

    const-string/jumbo v7, "activity"

    iget-object v8, v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1062
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 1061
    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    iget-wide v8, v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v6, 0x0

    const-string/jumbo v7, "weight"

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v1, 0x0

    const-string/jumbo v6, "historical-record"

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_72} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_72} :catch_d9
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_72} :catch_108
    .catchall {:try_start_1b .. :try_end_72} :catchall_139

    .line 1058
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_34

    .line 1045
    :catch_76
    move-exception v0

    .line 1046
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error writing historical record file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    :cond_92
    :goto_92
    return-object v10

    .line 1071
    :cond_93
    const/4 v0, 0x0

    :try_start_94
    const-string/jumbo v1, "historical-records"

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_9d} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_9d} :catch_d9
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9d} :catch_108
    .catchall {:try_start_94 .. :try_end_9d} :catchall_139

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v0, v11}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_92

    .line 1087
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_92

    .line 1088
    :catch_a8
    move-exception v0

    goto :goto_92

    .line 1077
    :catch_aa
    move-exception v0

    .line 1078
    :try_start_ab
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error writing historical record file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/support/v7/widget/ActivityChooserModel;->b(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_ab .. :try_end_cc} :catchall_139

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v0, v11}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_92

    .line 1087
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_92

    .line 1088
    :catch_d7
    move-exception v0

    goto :goto_92

    .line 1079
    :catch_d9
    move-exception v0

    .line 1080
    :try_start_da
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error writing historical record file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/support/v7/widget/ActivityChooserModel;->b(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fb
    .catchall {:try_start_da .. :try_end_fb} :catchall_139

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v0, v11}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_92

    .line 1087
    :try_start_102
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_92

    .line 1088
    :catch_106
    move-exception v0

    goto :goto_92

    .line 1081
    :catch_108
    move-exception v0

    .line 1082
    :try_start_109
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error writing historical record file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/support/v7/widget/ActivityChooserModel;->b(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12a
    .catchall {:try_start_109 .. :try_end_12a} :catchall_139

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v0, v11}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_92

    .line 1087
    :try_start_131
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_136

    goto/16 :goto_92

    .line 1088
    :catch_136
    move-exception v0

    goto/16 :goto_92

    .line 1084
    :catchall_139
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v1, v11}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_144

    .line 1087
    :try_start_141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_145

    .line 1090
    :cond_144
    :goto_144
    throw v0

    .line 1088
    :catch_145
    move-exception v1

    goto :goto_144
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
