.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/IOUtils;->a:C

    .line 117
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>(I)V

    .line 118
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/IOUtils;->b:Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 122
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 302
    if-eqz p0, :cond_5

    .line 303
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 308
    :cond_5
    :goto_5
    return-void

    .line 305
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    .prologue
    .line 274
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->a(Ljava/io/Closeable;)V

    .line 275
    return-void
.end method
