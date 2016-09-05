.class public final Lcn/aigestudio/downloader/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/aigestudio/downloader/utils/FileUtil;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcn/aigestudio/downloader/utils/FileUtil;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 47
    :try_start_f
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 52
    :cond_12
    :goto_12
    return-object v0

    .line 48
    :catch_13
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcn/aigestudio/downloader/utils/FileUtil;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_e
    return-object v0
.end method
