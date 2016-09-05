.class public final Lcom/jakewharton/disklrucache/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/jakewharton/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    .line 29
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/jakewharton/disklrucache/Util;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method static a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 37
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 39
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_9

    .line 44
    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 42
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_15

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0
.end method

.method static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 68
    if-eqz p0, :cond_5

    .line 70
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 76
    :cond_5
    :goto_5
    return-void

    .line 71
    :catch_6
    move-exception v0

    .line 72
    throw v0

    .line 73
    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method static a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 54
    if-nez v1, :cond_20

    .line 55
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_20
    array-length v2, v1

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    .line 58
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 59
    invoke-static {v3}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/File;)V

    .line 61
    :cond_2f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 62
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 65
    :cond_52
    return-void
.end method
