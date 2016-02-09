.class public Lic/buzzebeeslib/util/LocalFileHelper;
.super Ljava/lang/Object;
.source "LocalFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCatchFile(Landroid/content/Context;)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 293
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/Catches"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_26

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 297
    .local v1, "filenames":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_24
    if-lt v4, v5, :cond_27

    .line 304
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    :cond_26
    :goto_26
    return-void

    .line 297
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_27
    aget-object v3, v1, v4

    .line 298
    .local v3, "tmpf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 301
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "tmpf":Ljava/io/File;
    :catch_2f
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|clearCatchFile):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 198
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Catches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_25

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_25
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v2, "fileOld":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 208
    :cond_46
    const/4 v0, 0x0

    .line 210
    .local v0, "count":I
    :cond_47
    add-int/lit8 v0, v0, 0x1

    .line 211
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v3, "gpxfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_79

    .line 217
    const/16 v5, 0x64

    if-lt v0, v5, :cond_47

    .line 224
    .end local v0    # "count":I
    .end local v2    # "fileOld":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :cond_78
    :goto_78
    return-void

    .line 221
    :catch_79
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "buzzebees.LocalFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|clearCatchInSD):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method public static clearPostAsyncFile(Landroid/content/Context;)V
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 309
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/PostAsync/Queue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, "rootQueue":Ljava/io/File;
    if-eqz v4, :cond_27

    .line 311
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_bb

    move v8, v7

    :goto_25
    if-lt v8, v9, :cond_99

    .line 327
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    :cond_27
    :goto_27
    :try_start_27
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/PostAsync/Fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v3, "rootFail":Ljava/io/File;
    if-eqz v3, :cond_4d

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 331
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4a} :catch_f9

    move v8, v7

    :goto_4b
    if-lt v8, v9, :cond_d6

    .line 345
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    :cond_4d
    :goto_4d
    :try_start_4d
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/PostAsync/Success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v5, "rootSuccess":Ljava/io/File;
    if-eqz v5, :cond_73

    .line 347
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 349
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_70} :catch_137

    move v8, v7

    :goto_71
    if-lt v8, v9, :cond_114

    .line 363
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    :cond_73
    :goto_73
    :try_start_73
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/PostAsync"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_98

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 367
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v8, v1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_96} :catch_175

    :goto_96
    if-lt v7, v8, :cond_152

    .line 378
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    :cond_98
    :goto_98
    return-void

    .line 313
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v4    # "rootQueue":Ljava/io/File;
    :cond_99
    :try_start_99
    aget-object v6, v1, v8
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9b} :catch_bb

    .line 315
    .local v6, "tmpf":Ljava/io/File;
    :try_start_9b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a1

    .line 313
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 316
    :catch_a1
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(Exception|clearCatchFile|deleteFile|Queue):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ba} :catch_bb

    goto :goto_9e

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_bb
    move-exception v0

    .line 322
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|clearCatchFile|Queue):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v3    # "rootFail":Ljava/io/File;
    :cond_d6
    :try_start_d6
    aget-object v6, v1, v8
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d8} :catch_f9

    .line 333
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_d8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_df

    .line 331
    :goto_db
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4b

    .line 334
    :catch_df
    move-exception v0

    .line 335
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_e0
    const-string v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(Exception|clearCatchFile|deleteFile|Fail):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f8} :catch_f9

    goto :goto_db

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_f9
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|clearCatchFile|Fail):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v5    # "rootSuccess":Ljava/io/File;
    :cond_114
    :try_start_114
    aget-object v6, v1, v8
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_116} :catch_137

    .line 351
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_116
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_11d

    .line 349
    :goto_119
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_71

    .line 352
    :catch_11d
    move-exception v0

    .line 353
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_11e
    const-string v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(Exception|clearCatchFile|deleteFile|Success):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_136} :catch_137

    goto :goto_119

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_137
    move-exception v0

    .line 358
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|clearCatchFile|Success):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_152
    :try_start_152
    aget-object v6, v1, v7
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_154} :catch_175

    .line 369
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_154
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_15b

    .line 367
    :goto_157
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_96

    .line 370
    :catch_15b
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_15c
    const-string v9, "buzzebees.LocalFileHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Exception|clearCatchFile|deleteFile|root):"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_174} :catch_175

    goto :goto_157

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_175
    move-exception v0

    .line 376
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "buzzebees.LocalFileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|clearCatchFile|root):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "inputPath"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 42
    :goto_19
    return-void

    .line 36
    :catch_1a
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 49
    :goto_4
    return v1

    .line 47
    :catch_5
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static deserialize(Ljava/io/File;)Lic/buzzebeeslib/util/async/PostData;
    .registers 12
    .param p0, "pFile"    # Ljava/io/File;

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "dst":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 72
    .local v2, "deserializedObject":Lic/buzzebeeslib/util/async/PostData;
    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4b

    .line 77
    .local v7, "in":Ljava/io/ObjectInputStream;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;

    .line 78
    .local v1, "bitmapDataObject":Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;
    iget-object v8, v1, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    const/4 v9, 0x0

    iget-object v10, v1, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 79
    .local v6, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lic/buzzebeeslib/util/async/PostData;

    move-object v2, v0

    .line 80
    iput-object v6, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_2e

    .line 86
    .end local v1    # "bitmapDataObject":Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;
    .end local v6    # "image":Landroid/graphics/Bitmap;
    :goto_2a
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 97
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :goto_2d
    return-object v2

    .line 81
    .restart local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_2e
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error Reading Object to File :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_4b

    goto :goto_2a

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_4b
    move-exception v5

    .line 90
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error Reading Object to File :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public static findAllFilesWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "listFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "listChildren":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 62
    return-void

    .line 55
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 56
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 57
    invoke-static {v0, p1, p2}, Lic/buzzebeeslib/util/LocalFileHelper;->findAllFilesWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c

    .line 58
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 59
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public static getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 277
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/Catches/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 280
    .local v6, "lastModDate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 281
    .local v7, "today":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 282
    .local v0, "diffInMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    move-result-wide v2

    .line 286
    .end local v0    # "diffInMs":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "lastModDate":Ljava/util/Date;
    .end local v7    # "today":Ljava/util/Date;
    :goto_44
    return-wide v2

    .line 284
    :catch_45
    move-exception v4

    .line 285
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|readCatchFromSD):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide/16 v2, 0x0

    goto :goto_44
.end method

.method public static readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 249
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Catches/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_4b

    .line 253
    .local v4, "text":Ljava/lang/StringBuilder;
    :try_start_2b
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_67

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_40

    .line 266
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_3b
    :try_start_3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4b

    move-result-object v5

    .line 269
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :goto_3f
    return-object v5

    .line 257
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :cond_40
    :try_start_40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_67

    goto :goto_35

    .line 260
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_49
    move-exception v5

    goto :goto_3b

    .line 267
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :catch_4b
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "buzzebees.LocalFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|readCatchFromSD):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, ""

    goto :goto_3f

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :catch_67
    move-exception v5

    goto :goto_3b
.end method

.method public static saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 229
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/Catches"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_25

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_25
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v1, "gpxfile":Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 235
    .local v3, "writer":Ljava/io/FileWriter;
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 236
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 237
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_67

    .line 243
    .end local v1    # "gpxfile":Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_4c
    return-void

    .line 238
    :catch_4d
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(IOException|saveCatchToSD):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :catch_67
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|saveCatchToSD):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public static serialize(Lic/buzzebeeslib/util/async/PostData;Ljava/lang/String;)V
    .registers 15
    .param p0, "objToSerialize"    # Lic/buzzebeeslib/util/async/PostData;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "f_out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 116
    .local v6, "obj_out":Ljava/io/ObjectOutputStream;
    const/4 v1, 0x0

    .line 120
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, ""

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_17

    .line 122
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_17
    const/4 v5, 0x0

    .line 126
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v5, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_66

    .line 127
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_26

    .line 130
    :try_start_23
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_66

    .line 136
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 139
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 144
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_66

    .line 146
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .local v4, "f_out":Ljava/io/FileOutputStream;
    :try_start_35
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_6d

    .line 152
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .local v7, "obj_out":Ljava/io/ObjectOutputStream;
    :try_start_3a
    iget-object v10, p0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_5a

    .line 168
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v10, p0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    new-instance v0, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;

    invoke-direct {v0}, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;-><init>()V

    .line 171
    .local v0, "bitmapDataObject":Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v0, Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    .line 173
    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 177
    .end local v0    # "bitmapDataObject":Lic/buzzebeeslib/util/LocalFileHelper$BitmapDataObject;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_5a
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 180
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_63} :catch_70

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 191
    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "root":Ljava/io/File;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    :goto_65
    return-void

    .line 187
    :catch_66
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/Exception;
    :goto_67
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    .line 131
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "root":Ljava/io/File;
    :catch_6b
    move-exception v10

    goto :goto_26

    .line 187
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .restart local v4    # "f_out":Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v3, v4

    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    goto :goto_67

    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    :catch_70
    move-exception v2

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    goto :goto_67
.end method
