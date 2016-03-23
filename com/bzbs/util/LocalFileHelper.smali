.class public Lcom/bzbs/util/LocalFileHelper;
.super Ljava/lang/Object;
.source "LocalFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;
    }
.end annotation


# static fields
.field private static PREF_CATCHES:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/bzbs/util/LocalFileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "PrefCatches"

    sput-object v0, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    return-void
.end method

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
    .line 36
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/bzbs/util/LocalFileHelper;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_13
    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 36
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static clearCatchFile(Landroid/content/Context;)V
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 381
    const-string/jumbo v7, "PREF"

    const-string/jumbo v8, "SD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 383
    :try_start_d
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/Catches"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v3, "root":Ljava/io/File;
    if-eqz v3, :cond_4c

    .line 385
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 387
    .local v2, "filenames":[Ljava/io/File;
    array-length v7, v2

    :goto_31
    if-ge v6, v7, :cond_4c

    aget-object v5, v2, v6

    .line 388
    .local v5, "tmpf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_6c

    .line 387
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 396
    .end local v2    # "filenames":[Ljava/io/File;
    .end local v3    # "root":Ljava/io/File;
    .end local v5    # "tmpf":Ljava/io/File;
    :cond_3b
    :try_start_3b
    sget-object v6, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 397
    .local v4, "savedSession":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 398
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_4d

    .line 404
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "savedSession":Landroid/content/SharedPreferences;
    :cond_4c
    :goto_4c
    return-void

    .line 400
    :catch_4d
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WARNING:ERROR WHILE clearCatchFile:exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6c
    move-exception v6

    goto :goto_4c
.end method

.method public static clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 233
    const-string/jumbo v7, "PREF"

    const-string/jumbo v8, "SD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 235
    :try_start_c
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/Catches"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v6, "root":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_32

    .line 237
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_32
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v3, "fileOld":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 242
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 245
    :cond_54
    const/4 v0, 0x0

    .line 247
    .local v0, "count":I
    :cond_55
    add-int/lit8 v0, v0, 0x1

    .line 248
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v4, "gpxfile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 250
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_84} :catch_125

    .line 254
    const/16 v7, 0x64

    if-lt v0, v7, :cond_55

    .line 274
    .end local v0    # "count":I
    .end local v3    # "fileOld":Ljava/io/File;
    .end local v4    # "gpxfile":Ljava/io/File;
    .end local v6    # "root":Ljava/io/File;
    :cond_88
    :goto_88
    return-void

    .line 263
    :cond_89
    :try_start_89
    sget-object v7, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 264
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_TIME"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    .line 267
    .local v5, "result":Z
    if-nez v5, :cond_88

    .line 268
    sget-object v7, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WARNING:ERROR WHILE clearCatchInSD:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_f9} :catch_fa

    goto :goto_88

    .line 270
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "result":Z
    :catch_fa
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WARNING:ERROR WHILE clearCatchInSD:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_88

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_125
    move-exception v7

    goto/16 :goto_88
.end method

.method public static clearPostAsyncFile(Landroid/content/Context;)V
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 409
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Queue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v4, "rootQueue":Ljava/io/File;
    if-eqz v4, :cond_6d

    .line 411
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 413
    .local v1, "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_26
    if-ge v8, v9, :cond_6d

    aget-object v6, v1, v8
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_4f

    .line 415
    .local v6, "tmpf":Ljava/io/File;
    :try_start_2a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_30

    .line 413
    :goto_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 416
    :catch_30
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    :try_start_31
    sget-object v10, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4e} :catch_4f

    goto :goto_2d

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v4    # "rootQueue":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_4f
    move-exception v0

    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6d
    :try_start_6d
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, "rootFail":Ljava/io/File;
    if-eqz v3, :cond_d9

    .line 429
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 431
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_92
    if-ge v8, v9, :cond_d9

    aget-object v6, v1, v8
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_96} :catch_bb

    .line 433
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_96
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9c

    .line 431
    :goto_99
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 434
    :catch_9c
    move-exception v0

    .line 435
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_9d
    sget-object v10, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ba} :catch_bb

    goto :goto_99

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v3    # "rootFail":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_bb
    move-exception v0

    .line 440
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d9
    :try_start_d9
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync/Success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v5, "rootSuccess":Ljava/io/File;
    if-eqz v5, :cond_145

    .line 447
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 449
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v9, v1

    move v8, v7

    :goto_fe
    if-ge v8, v9, :cond_145

    aget-object v6, v1, v8
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_102} :catch_127

    .line 451
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_102
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_108

    .line 449
    :goto_105
    add-int/lit8 v8, v8, 0x1

    goto :goto_fe

    .line 452
    :catch_108
    move-exception v0

    .line 453
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_109
    sget-object v10, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_126} :catch_127

    goto :goto_105

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v5    # "rootSuccess":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_127
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_145
    :try_start_145
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/PostAsync"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "root":Ljava/io/File;
    if-eqz v2, :cond_1b0

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 467
    .restart local v1    # "filenames":[Ljava/io/File;
    array-length v8, v1

    :goto_169
    if-ge v7, v8, :cond_1b0

    aget-object v6, v1, v7
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_16d} :catch_192

    .line 469
    .restart local v6    # "tmpf":Ljava/io/File;
    :try_start_16d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_173

    .line 467
    :goto_170
    add-int/lit8 v7, v7, 0x1

    goto :goto_169

    .line 470
    :catch_173
    move-exception v0

    .line 471
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_174
    sget-object v9, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_191} :catch_192

    goto :goto_170

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filenames":[Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v6    # "tmpf":Ljava/io/File;
    :catch_192
    move-exception v0

    .line 476
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

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

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b0
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
    .line 74
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

    .line 78
    :goto_19
    return-void

    .line 75
    :catch_1a
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 84
    :goto_4
    return v1

    .line 83
    :catch_5
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static deserialize(Ljava/io/File;)Lcom/bzbs/bean/PostData;
    .registers 12
    .param p0, "pFile"    # Ljava/io/File;

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "dst":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 107
    .local v2, "deserializedObject":Lcom/bzbs/bean/PostData;
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

    .line 112
    .local v7, "in":Ljava/io/ObjectInputStream;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;

    .line 113
    .local v1, "bitmapDataObject":Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;
    iget-object v8, v1, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 114
    .local v6, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/bzbs/bean/PostData;

    move-object v2, v0

    .line 115
    iput-object v6, v2, Lcom/bzbs/bean/PostData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_2e
    .catchall {:try_start_10 .. :try_end_2a} :catchall_72

    .line 121
    .end local v1    # "bitmapDataObject":Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;
    .end local v6    # "image":Landroid/graphics/Bitmap;
    :goto_2a
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 132
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :goto_2d
    return-object v2

    .line 116
    .restart local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_2e
    move-exception v4

    .line 117
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

    .line 118
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4f} :catch_50
    .catchall {:try_start_2a .. :try_end_4f} :catchall_72

    goto :goto_2a

    .line 124
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    :catch_50
    move-exception v5

    .line 125
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

    .line 126
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_72

    goto :goto_2d

    .line 128
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
    .line 89
    .local p2, "listFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 90
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

    .line 91
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 92
    invoke-static {v0, p1, p2}, Lcom/bzbs/util/LocalFileHelper;->findAllFilesWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c

    .line 93
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 94
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 97
    .end local v0    # "child":Ljava/io/File;
    :cond_30
    return-void
.end method

.method public static getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J
    .registers 16
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 349
    const-string/jumbo v10, "PREF"

    const-string/jumbo v11, "SD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 351
    :try_start_e
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/Catches/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 354
    .local v6, "lastModDate":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 355
    .local v9, "today":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v0, v10, v12

    .line 356
    .local v0, "diffInMs":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_53} :catch_55

    move-result-wide v2

    .line 375
    .end local v0    # "diffInMs":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "lastModDate":Ljava/util/Date;
    .end local v9    # "today":Ljava/util/Date;
    :cond_54
    :goto_54
    return-wide v2

    .line 358
    :catch_55
    move-exception v4

    .line 359
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_54

    .line 363
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    sget-object v10, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 364
    .local v8, "savedSession":Landroid/content/SharedPreferences;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_TIME"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-interface {v8, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 365
    .local v6, "lastModDate":J
    cmp-long v10, v6, v2

    if-lez v10, :cond_54

    .line 366
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 367
    .restart local v9    # "today":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 368
    .restart local v0    # "diffInMs":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_99} :catch_9b

    move-result-wide v2

    .line 369
    .local v2, "diffInSec":J
    goto :goto_54

    .line 373
    .end local v0    # "diffInMs":J
    .end local v2    # "diffInSec":J
    .end local v6    # "lastModDate":J
    .end local v8    # "savedSession":Landroid/content/SharedPreferences;
    .end local v9    # "today":Ljava/util/Date;
    :catch_9b
    move-exception v4

    .line 374
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v10, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "WARNING:ERROR WHILE getCatchFileAge:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/bzbs/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 68
    :goto_a
    return-object v1

    .line 67
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    .line 48
    invoke-static {}, Lcom/bzbs/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 51
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 314
    const-string/jumbo v6, "PREF"

    const-string/jumbo v7, "SD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 316
    :try_start_c
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/Catches/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_58

    .line 320
    .local v5, "text":Ljava/lang/StringBuilder;
    :try_start_39
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_53

    .line 324
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_51} :catch_b3

    goto :goto_43

    .line 327
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_52
    move-exception v6

    .line 333
    :cond_53
    :goto_53
    :try_start_53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_58

    move-result-object v6

    .line 343
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "text":Ljava/lang/StringBuilder;
    :goto_57
    return-object v6

    .line 334
    :catch_58
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    goto :goto_57

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5d
    :try_start_5d
    sget-object v6, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 340
    .local v4, "savedSession":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_84} :catch_86

    move-result-object v6

    goto :goto_57

    .line 341
    .end local v4    # "savedSession":Landroid/content/SharedPreferences;
    :catch_86
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WARNING:ERROR WHILE readCatchFromSD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v6, ""

    goto :goto_57

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "text":Ljava/lang/StringBuilder;
    :catch_b3
    move-exception v6

    goto :goto_53
.end method

.method public static saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 277
    const-string/jumbo v8, "PREF"

    const-string/jumbo v9, "SD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 279
    :try_start_c
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bzbs/util/LocalFileHelper;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/Catches"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v5, "root":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_32

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 283
    :cond_32
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v2, "gpxfile":Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 285
    .local v7, "writer":Ljava/io/FileWriter;
    invoke-virtual {v7, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 286
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 287
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5a} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5a} :catch_11b

    .line 311
    .end local v2    # "gpxfile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :cond_5a
    :goto_5a
    return-void

    .line 295
    :cond_5b
    :try_start_5b
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 296
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 298
    .local v3, "result1":Z
    if-nez v3, :cond_a2

    .line 299
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WARNING:ERROR WHILE saveCatchToSD:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_a2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 302
    .local v6, "today":Ljava/util/Date;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/util/LocalFileHelper;->PREF_CATCHES:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_TIME"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-interface {v1, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 304
    .local v4, "result2":Z
    if-nez v4, :cond_5a

    .line 305
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WARNING:ERROR WHILE saveCatchToSD(Time):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ee} :catch_f0

    goto/16 :goto_5a

    .line 307
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "result1":Z
    .end local v4    # "result2":Z
    .end local v6    # "today":Ljava/util/Date;
    :catch_f0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/bzbs/util/LocalFileHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WARNING:ERROR WHILE saveCatchToSD:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_11b
    move-exception v8

    goto/16 :goto_5a

    .line 288
    :catch_11e
    move-exception v8

    goto/16 :goto_5a
.end method

.method public static serialize(Lcom/bzbs/bean/PostData;Ljava/lang/String;)V
    .registers 15
    .param p0, "objToSerialize"    # Lcom/bzbs/bean/PostData;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "f_out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 151
    .local v6, "obj_out":Ljava/io/ObjectOutputStream;
    const/4 v1, 0x0

    .line 155
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_18

    .line 157
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_18
    const/4 v5, 0x0

    .line 161
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v5, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_6d

    .line 162
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_27

    .line 165
    :try_start_24
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_72
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_6d

    .line 171
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 174
    :cond_2d
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-nez v10, :cond_33

    .line 179
    :cond_33
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_6d

    .line 181
    .end local v3    # "f_out":Ljava/io/FileOutputStream;
    .local v4, "f_out":Ljava/io/FileOutputStream;
    :try_start_3c
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_74

    .line 187
    .end local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    .local v7, "obj_out":Ljava/io/ObjectOutputStream;
    :try_start_41
    iget-object v10, p0, Lcom/bzbs/bean/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_61

    .line 203
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v10, p0, Lcom/bzbs/bean/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    new-instance v0, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;

    invoke-direct {v0}, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;-><init>()V

    .line 206
    .local v0, "bitmapDataObject":Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v0, Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;->imageByteArray:[B

    .line 208
    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    .end local v0    # "bitmapDataObject":Lcom/bzbs/util/LocalFileHelper$BitmapDataObject;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_61
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 215
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6a} :catch_77

    move-object v6, v7

    .end local v7    # "obj_out":Ljava/io/ObjectOutputStream;
    .restart local v6    # "obj_out":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 226
    .end local v4    # "f_out":Ljava/io/FileOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "root":Ljava/io/File;
    .restart local v3    # "f_out":Ljava/io/FileOutputStream;
    :goto_6c
    return-void

    .line 222
    :catch_6d
    move-exception v2

    .line 224
    .local v2, "ex":Ljava/lang/Exception;
    :goto_6e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .line 166
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "root":Ljava/io/File;
    :catch_72
    move-exception v10

    goto :goto_27

    .line 222
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
