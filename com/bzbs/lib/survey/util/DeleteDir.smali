.class public Lcom/bzbs/lib/survey/util/DeleteDir;
.super Ljava/lang/Object;
.source "DeleteDir.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .registers 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 13
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 14
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 15
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/DeleteDir;->deleteDirectory(Ljava/io/File;)Z

    .line 13
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 17
    :cond_1e
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1b

    .line 21
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 7
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/DeleteDir;->deleteDirectory(Ljava/io/File;)Z

    .line 8
    return-void
.end method
