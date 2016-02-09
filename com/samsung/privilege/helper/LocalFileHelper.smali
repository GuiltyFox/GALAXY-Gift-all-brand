.class public Lcom/samsung/privilege/helper/LocalFileHelper;
.super Ljava/lang/Object;
.source "LocalFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/samsung/privilege/helper/LocalFileHelper;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_12
    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1a
    return-object v0

    .line 34
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static clearCatchFile(Landroid/content/Context;)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 326
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 327
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_26

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 330
    .local v1, "filenames":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_24
    if-lt v4, v5, :cond_27

    .line 337
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    :cond_26
    :goto_26
    return-void

    .line 330
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_27
    aget-object v3, v1, v4

    .line 331
    .local v3, "tmpf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 334
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "tmpf":Ljava/io/File;
    :catch_2f
    move-exception v0

    .line 335
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

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 231
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 232
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_25

    .line 233
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 236
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

    .line 237
    .local v2, "fileOld":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 238
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 241
    :cond_46
    const/4 v0, 0x0

    .line 243
    .local v0, "count":I
    :cond_47
    add-int/lit8 v0, v0, 0x1

    .line 244
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

    .line 245
    .local v3, "gpxfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_79

    .line 250
    const/16 v5, 0x64

    if-lt v0, v5, :cond_47

    .line 257
    .end local v0    # "count":I
    .end local v2    # "fileOld":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :cond_78
    :goto_78
    return-void

    .line 254
    :catch_79
    move-exception v1

    .line 255
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

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method public static clearPostAsyncFile(Landroid/content/Context;)V
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 342
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 343
    .local v4, "rootQueue":Ljava/io/File;
    if-eqz v4, :cond_27

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 346
    .local v1, "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_bb

    move v8, v7

    :goto_25
    if-lt v8, v9, :cond_99

    .line 360
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    :cond_27
    :goto_27
    :try_start_27
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 361
    .local v3, "rootFail":Ljava/io/File;
    if-eqz v3, :cond_4d

    .line 362
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 364
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4a} :catch_f9

    move v8, v7

    :goto_4b
    if-lt v8, v9, :cond_d6

    .line 378
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    :cond_4d
    :goto_4d
    :try_start_4d
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 379
    .local v5, "rootSuccess":Ljava/io/File;
    if-eqz v5, :cond_73

    .line 380
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 382
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_70} :catch_137

    move v8, v7

    :goto_71
    if-lt v8, v9, :cond_114

    .line 396
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    :cond_73
    :goto_73
    :try_start_73
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 397
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_98

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 400
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v8, v1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_96} :catch_175

    :goto_96
    if-lt v7, v8, :cond_152

    .line 411
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    :cond_98
    :goto_98
    return-void

    .line 346
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v4    # "rootQueue":Ljava/io/File;
    :cond_99
    :try_start_99
    aget-object v6, v1, v8
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9b} :catch_bb

    .line 348
    .local v6, "tmpf":Ljava/io/File;
    :try_start_9b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a1

    .line 346
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 349
    :catch_a1
    move-exception v0

    .line 350
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

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ba} :catch_bb

    goto :goto_9e

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_bb
    move-exception v0

    .line 355
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

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v3    # "rootFail":Ljava/io/File;
    :cond_d6
    :try_start_d6
    aget-object v6, v1, v8
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d8} :catch_f9

    .line 366
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_d8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_df

    .line 364
    :goto_db
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4b

    .line 367
    :catch_df
    move-exception v0

    .line 368
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

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f8} :catch_f9

    goto :goto_db

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_f9
    move-exception v0

    .line 373
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

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v5    # "rootSuccess":Ljava/io/File;
    :cond_114
    :try_start_114
    aget-object v6, v1, v8
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_116} :catch_137

    .line 384
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_116
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_11d

    .line 382
    :goto_119
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_71

    .line 385
    :catch_11d
    move-exception v0

    .line 386
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

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_136} :catch_137

    goto :goto_119

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_137
    move-exception v0

    .line 391
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

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filenames":[Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_152
    :try_start_152
    aget-object v6, v1, v7
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_154} :catch_175

    .line 402
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_154
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_15b

    .line 400
    :goto_157
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_96

    .line 403
    :catch_15b
    move-exception v0

    .line 404
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

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_174} :catch_175

    goto :goto_157

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_175
    move-exception v0

    .line 409
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

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 72
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

    .line 76
    :goto_19
    return-void

    .line 73
    :catch_1a
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 82
    :goto_4
    return v1

    .line 81
    :catch_5
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static deserialize(Ljava/io/File;)Lcom/samsung/privilege/PostData;
    .registers 12
    .param p0, "pFile"    # Ljava/io/File;

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "dst":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 105
    .local v2, "deserializedObject":Lcom/samsung/privilege/PostData;
    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4b

    .line 110
    .local v7, "in":Ljava/io/ObjectInputStream;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;

    .line 111
    .local v1, "bitmapDataObject":Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
    iget-object v8, v1, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 112
    .local v6, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/samsung/privilege/PostData;

    move-object v2, v0

    .line 113
    iput-object v6, v2, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_2e

    .line 119
    .end local v1    # "bitmapDataObject":Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
    .end local v6    # "image":Landroid/graphics/Bitmap;
    :goto_2a
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 130
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :goto_2d
    return-object v2

    .line 114
    .restart local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_2e
    move-exception v4

    .line 115
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

    .line 116
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_4b

    goto :goto_2a

    .line 122
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_4b
    move-exception v5

    .line 123
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

    .line 124
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
    .line 87
    .local p2, "listFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "listChildren":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 95
    return-void

    .line 88
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 89
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 90
    invoke-static {v0, p1, p2}, Lcom/samsung/privilege/helper/LocalFileHelper;->findAllFilesWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c

    .line 91
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 92
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public static getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 310
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 311
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 313
    .local v6, "lastModDate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 314
    .local v7, "today":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 315
    .local v0, "diffInMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    move-result-wide v2

    .line 319
    .end local v0    # "diffInMs":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "lastModDate":Ljava/util/Date;
    .end local v7    # "today":Ljava/util/Date;
    :goto_44
    return-wide v2

    .line 317
    :catch_45
    move-exception v4

    .line 318
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

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-wide/16 v2, 0x0

    goto :goto_44
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 66
    :goto_a
    return-object v1

    .line 65
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 49
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 282
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 283
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_4b

    .line 286
    .local v4, "text":Ljava/lang/StringBuilder;
    :try_start_2b
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 289
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_67

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_40

    .line 299
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_3b
    :try_start_3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4b

    move-result-object v5

    .line 302
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :goto_3f
    return-object v5

    .line 290
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :cond_40
    :try_start_40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_67

    goto :goto_35

    .line 293
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_49
    move-exception v5

    goto :goto_3b

    .line 300
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :catch_4b
    move-exception v1

    .line 301
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

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v5, ""

    goto :goto_3f

    .line 295
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
    .line 262
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/privilege/helper/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

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

    .line 263
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_25

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 266
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

    .line 267
    .local v1, "gpxfile":Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 268
    .local v3, "writer":Ljava/io/FileWriter;
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 269
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 270
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_67

    .line 276
    .end local v1    # "gpxfile":Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_4c
    return-void

    .line 271
    :catch_4d
    move-exception v0

    .line 272
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

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :catch_67
    move-exception v0

    .line 274
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

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public static serialize(Lcom/samsung/privilege/PostData;Ljava/lang/String;)V
    .registers 15
    .param p0, "objToSerialize"    # Lcom/samsung/privilege/PostData;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "f_out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 149
    .local v6, "obj_out":Ljava/io/ObjectOutputStream;
    const/4 v1, 0x0

    .line 153
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, ""

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_17

    .line 155
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 158
    :cond_17
    const/4 v5, 0x0

    .line 159
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v5, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_66

    .line 160
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_26

    .line 163
    :try_start_23
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_66

    .line 169
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 177
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_66

    .line 179
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .local v4, "f_out":Ljava/io/FileOutputStream;
    :try_start_35
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_6d

    .line 185
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .local v7, "obj_out":Ljava/io/ObjectOutputStream;
    :try_start_3a
    iget-object v10, p0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_5a

    .line 201
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v10, p0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    new-instance v0, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;

    invoke-direct {v0}, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;-><init>()V

    .line 204
    .local v0, "bitmapDataObject":Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    .line 206
    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    .end local v0    # "bitmapDataObject":Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_5a
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 213
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_63} :catch_70

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 224
    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "root":Ljava/io/File;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    :goto_65
    return-void

    .line 220
    :catch_66
    move-exception v2

    .line 222
    .local v2, "ex":Ljava/lang/Exception;
    :goto_67
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    .line 164
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "root":Ljava/io/File;
    :catch_6b
    move-exception v10

    goto :goto_26

    .line 220
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
