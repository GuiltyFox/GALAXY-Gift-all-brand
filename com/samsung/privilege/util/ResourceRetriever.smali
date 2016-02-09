.class public Lcom/samsung/privilege/util/ResourceRetriever;
.super Ljava/lang/Object;
.source "ResourceRetriever.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    const-class v1, Lcom/samsung/privilege/util/ResourceRetriever;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 20
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_15

    .line 22
    new-instance v0, Ljava/net/URL;

    .end local v0    # "url":Ljava/net/URL;
    const-string v1, "file"

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_15
    return-object v0
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "convertedFileName":Ljava/lang/String;
    const-class v2, Lcom/samsung/privilege/util/ResourceRetriever;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 36
    .local v1, "stream":Ljava/io/InputStream;
    if-nez v1, :cond_19

    .line 38
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 42
    :cond_19
    return-object v1
.end method
