.class public Lcom/bzbs/lib/survey/util/LocalFileHelper;
.super Ljava/lang/Object;
.source "LocalFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;
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

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/Catches"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_4e

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 297
    .local v1, "filenames":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v5, :cond_4e

    aget-object v3, v1, v4

    .line 298
    .local v3, "tmpf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 301
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "tmpf":Ljava/io/File;
    :catch_2f
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(Exception|clearCatchFile):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    return-void
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

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/Catches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_26

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_26
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v2, "fileOld":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 208
    :cond_48
    const/4 v0, 0x0

    .line 210
    .local v0, "count":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    .line 211
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v3, "gpxfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_7d

    .line 217
    const/16 v5, 0x64

    if-lt v0, v5, :cond_49

    .line 224
    .end local v0    # "count":I
    .end local v2    # "fileOld":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :cond_7c
    :goto_7c
    return-void

    .line 221
    :catch_7d
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "buzzebees.LocalFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(Exception|clearCatchInSD):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c
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

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Queue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, "rootQueue":Ljava/io/File;
    if-eqz v4, :cond_6f

    .line 311
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_26
    if-ge v8, v9, :cond_6f

    aget-object v6, v1, v8
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_50

    .line 315
    .local v6, "tmpf":Ljava/io/File;
    :try_start_2a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_30

    .line 313
    :goto_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 316
    :catch_30
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :try_start_31
    const-string/jumbo v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(Exception|clearCatchFile|deleteFile|Queue):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_50

    goto :goto_2d

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_50
    move-exception v0

    .line 322
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(Exception|clearCatchFile|Queue):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6f
    :try_start_6f
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v3, "rootFail":Ljava/io/File;
    if-eqz v3, :cond_dd

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 331
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_94
    if-ge v8, v9, :cond_dd

    aget-object v6, v1, v8
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_98} :catch_be

    .line 333
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_98
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9e

    .line 331
    :goto_9b
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 334
    :catch_9e
    move-exception v0

    .line 335
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_9f
    const-string/jumbo v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(Exception|clearCatchFile|deleteFile|Fail):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_bd} :catch_be

    goto :goto_9b

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_be
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(Exception|clearCatchFile|Fail):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_dd
    :try_start_dd
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v5, "rootSuccess":Ljava/io/File;
    if-eqz v5, :cond_14b

    .line 347
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 349
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_102
    if-ge v8, v9, :cond_14b

    aget-object v6, v1, v8
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_106} :catch_12c

    .line 351
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_106
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10c

    .line 349
    :goto_109
    add-int/lit8 v8, v8, 0x1

    goto :goto_102

    .line 352
    :catch_10c
    move-exception v0

    .line 353
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_10d
    const-string/jumbo v10, "buzzebees.LocalFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(Exception|clearCatchFile|deleteFile|Success):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_12b} :catch_12c

    goto :goto_109

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_12c
    move-exception v0

    .line 358
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(Exception|clearCatchFile|Success):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14b
    :try_start_14b
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_1b8

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 367
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v8, v1

    :goto_16f
    if-ge v7, v8, :cond_1b8

    aget-object v6, v1, v7
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_173} :catch_199

    .line 369
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_173
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_176} :catch_179

    .line 367
    :goto_176
    add-int/lit8 v7, v7, 0x1

    goto :goto_16f

    .line 370
    :catch_179
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_17a
    const-string/jumbo v9, "buzzebees.LocalFileHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(Exception|clearCatchFile|deleteFile|root):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_198} :catch_199

    goto :goto_176

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_199
    move-exception v0

    .line 376
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "buzzebees.LocalFileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|clearCatchFile|root):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b8
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
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

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    const-string/jumbo v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string/jumbo v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static deserialize(Ljava/io/File;)Lcom/bzbs/lib/survey/util/async/PostData;
    .registers 12
    .param p0, "pFile"    # Ljava/io/File;

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "dst":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 72
    .local v2, "deserializedObject":Lcom/bzbs/lib/survey/util/async/PostData;
    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_50
    .catchall {:try_start_2 .. :try_end_10} :catchall_72

    .line 77
    .local v7, "in":Ljava/io/ObjectInputStream;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;

    .line 78
    .local v1, "bitmapDataObject":Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;
    iget-object v8, v1, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 79
    .local v6, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/bzbs/lib/survey/util/async/PostData;

    move-object v2, v0

    .line 80
    iput-object v6, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_2e
    .catchall {:try_start_10 .. :try_end_2a} :catchall_72

    .line 86
    .end local v1    # "bitmapDataObject":Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;
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

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error Reading Object to File :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4f} :catch_50
    .catchall {:try_start_2a .. :try_end_4f} :catchall_72

    goto :goto_2a

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_50
    move-exception v5

    .line 90
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_51
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error Reading Object to File :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_72

    goto :goto_2d

    .line 93
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_72
    move-exception v8

    throw v8
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

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 56
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 57
    invoke-static {v0, p1, p2}, Lcom/bzbs/lib/survey/util/LocalFileHelper;->findAllFilesWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c

    .line 58
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 59
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 62
    .end local v0    # "child":Ljava/io/File;
    :cond_30
    return-void
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

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/Catches/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".txt"

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
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_47

    move-result-wide v2

    .line 286
    .end local v0    # "diffInMs":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "lastModDate":Ljava/util/Date;
    .end local v7    # "today":Ljava/util/Date;
    :goto_46
    return-wide v2

    .line 284
    :catch_47
    move-exception v4

    .line 285
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "buzzebees.LocalFileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(Exception|readCatchFromSD):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide/16 v2, 0x0

    goto :goto_46
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

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/Catches/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_4c

    .line 253
    .local v4, "text":Ljava/lang/StringBuilder;
    :try_start_2d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_47

    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_6f

    goto :goto_37

    .line 260
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_46
    move-exception v5

    .line 266
    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4c

    move-result-object v5

    .line 269
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :goto_4b
    return-object v5

    .line 267
    :catch_4c
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "buzzebees.LocalFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(Exception|readCatchFromSD):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v5, ""

    goto :goto_4b

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :catch_6f
    move-exception v5

    goto :goto_47
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

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/Catches"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_26
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".txt"

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
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_6f

    .line 243
    .end local v1    # "gpxfile":Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_4e
    return-void

    .line 238
    :catch_4f
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(IOException|saveCatchToSD):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "buzzebees.LocalFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(Exception|saveCatchToSD):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static serialize(Lcom/bzbs/lib/survey/util/async/PostData;Ljava/lang/String;)V
    .registers 15
    .param p0, "objToSerialize"    # Lcom/bzbs/lib/survey/util/async/PostData;
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

    const-string/jumbo v11, ""

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_18

    .line 122
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_18
    const/4 v5, 0x0

    .line 126
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v5, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_6d

    .line 127
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_27

    .line 130
    :try_start_24
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_72
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_6d

    .line 136
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 139
    :cond_2d
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-nez v10, :cond_33

    .line 144
    :cond_33
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_6d

    .line 146
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .local v4, "f_out":Ljava/io/FileOutputStream;
    :try_start_3c
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_74

    .line 152
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .local v7, "obj_out":Ljava/io/ObjectOutputStream;
    :try_start_41
    iget-object v10, p0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_61

    .line 168
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v10, p0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    new-instance v0, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;-><init>()V

    .line 171
    .local v0, "bitmapDataObject":Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v0, Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    .line 173
    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 177
    .end local v0    # "bitmapDataObject":Lcom/bzbs/lib/survey/util/LocalFileHelper$BitmapDataObject;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_61
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 180
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6a} :catch_77

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 191
    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "root":Ljava/io/File;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    :goto_6c
    return-void

    .line 187
    :catch_6d
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/Exception;
    :goto_6e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .line 131
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "root":Ljava/io/File;
    :catch_72
    move-exception v10

    goto :goto_27

    .line 187
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .restart local v4    # "f_out":Ljava/io/FileOutputStream;
    :catch_74
    move-exception v2

    move-object v3, v4

    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    goto :goto_6e

    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    :catch_77
    move-exception v2

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    goto :goto_6e
.end method
