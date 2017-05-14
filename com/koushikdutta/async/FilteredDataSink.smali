.class public Lcom/koushikdutta/async/FilteredDataSink;
.super Lcom/koushikdutta/async/BufferedDataSink;
.source "FilteredDataSink.java"


# static fields
.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3
    const-class v0, Lcom/koushikdutta/async/FilteredDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/FilteredDataSink;->g:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/FilteredDataSink;->a(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->d()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_10

    .line 24
    :cond_f
    :goto_f
    return-void

    .line 19
    :cond_10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->b(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    .line 20
    sget-boolean v1, Lcom/koushikdutta/async/FilteredDataSink;->g:Z

    if-nez v1, :cond_28

    if-eqz p1, :cond_28

    if-eq v0, p1, :cond_28

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_28
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;Z)V

    .line 22
    if-eqz p1, :cond_f

    .line 23
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    goto :goto_f
.end method

.method public b(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 2

    .prologue
    .line 10
    return-object p1
.end method
