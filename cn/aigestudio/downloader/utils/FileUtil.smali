.class public final Lcn/aigestudio/downloader/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcn/aigestudio/downloader/utils/FileUtil;->makeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcn/aigestudio/downloader/utils/FileUtil;->isExist(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 47
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 52
    :cond_12
    :goto_12
    return-object v1

    .line 48
    :catch_13
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExist(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static makeDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcn/aigestudio/downloader/utils/FileUtil;->isExist(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_e
    return-object v0
.end method
