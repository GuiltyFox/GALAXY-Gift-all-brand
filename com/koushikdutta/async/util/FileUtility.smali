.class public Lcom/koushikdutta/async/util/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# direct methods
.method public static a(Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 12
    if-eqz v1, :cond_26

    .line 13
    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_26

    .line 14
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 15
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/koushikdutta/async/util/FileUtility;->a(Ljava/io/File;)Z

    .line 13
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 18
    :cond_20
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1d

    .line 23
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
