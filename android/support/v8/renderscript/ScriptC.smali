.class public Landroid/support/v8/renderscript/ScriptC;
.super Landroid/support/v8/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Script;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 9
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    .line 58
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1}, Landroid/support/v8/renderscript/Script;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 60
    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v3, :cond_13

    move-object v1, p1

    .line 61
    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 62
    .local v1, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    new-instance v2, Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-direct {v2, v1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;-><init>(Landroid/support/v8/renderscript/RenderScriptThunker;Landroid/content/res/Resources;I)V

    .line 63
    .local v2, "s":Landroid/support/v8/renderscript/ScriptCThunker;
    iput-object v2, p0, Landroid/support/v8/renderscript/ScriptC;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    .line 72
    .end local v1    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    .end local v2    # "s":Landroid/support/v8/renderscript/ScriptCThunker;
    :goto_12
    return-void

    .line 67
    :cond_13
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result v0

    .line 68
    .local v0, "id":I
    if-nez v0, :cond_22

    .line 69
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Loading of ScriptC script failed."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_22
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/ScriptC;->setID(I)V

    goto :goto_12
.end method

.method private static declared-synchronized internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .registers 16
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 78
    const-class v10, Landroid/support/v8/renderscript/ScriptC;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4d

    move-result-object v5

    .line 81
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_9
    new-array v6, v9, [B

    .line 82
    .local v6, "pgm":[B
    const/4 v7, 0x0

    .line 84
    .local v7, "pgmLength":I
    :goto_c
    array-length v9, v6

    sub-int v1, v9, v7

    .line 85
    .local v1, "bytesLeft":I
    if-nez v1, :cond_20

    .line 86
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 87
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    move-object v6, v0

    .line 89
    array-length v9, v6

    sub-int v1, v9, v7

    .line 91
    .end local v0    # "buf2":[B
    :cond_20
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_41

    move-result v2

    .line 92
    .local v2, "bytesRead":I
    if-gtz v2, :cond_3f

    .line 98
    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_46
    .catchall {:try_start_26 .. :try_end_29} :catchall_4d

    .line 104
    :try_start_29
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "cachePath":Ljava/lang/String;
    invoke-virtual {p0, v8, v3, v6, v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_4d

    move-result v9

    monitor-exit v10

    return v9

    .line 95
    .end local v3    # "cachePath":Ljava/lang/String;
    .end local v8    # "resName":Ljava/lang/String;
    :cond_3f
    add-int/2addr v7, v2

    .line 96
    goto :goto_c

    .line 98
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_41
    move-exception v9

    :try_start_42
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4d

    .line 100
    :catch_46
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/IOException;
    :try_start_47
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4d

    .line 78
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_4d
    move-exception v9

    monitor-exit v10

    throw v9
.end method
