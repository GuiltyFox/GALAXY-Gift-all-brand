.class public Lcom/koushikdutta/async/stream/FileDataSink;
.super Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.source "FileDataSink.java"


# instance fields
.field a:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    .line 17
    iput-object p2, p0, Lcom/koushikdutta/async/stream/FileDataSink;->a:Ljava/io/File;

    .line 18
    return-void
.end method


# virtual methods
.method public b()Ljava/io/OutputStream;
    .registers 3

    .prologue
    .line 22
    invoke-super {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b()Ljava/io/OutputStream;

    move-result-object v0

    .line 23
    if-nez v0, :cond_10

    .line 24
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/FileDataSink;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/FileDataSink;->a(Ljava/io/OutputStream;)V

    .line 27
    :cond_10
    return-object v0
.end method
