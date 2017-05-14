.class Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/koushikdutta/async/DataSink;

.field final synthetic c:I

.field final synthetic d:Lcom/koushikdutta/ion/RequestBodyUploadObserver;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/RequestBodyUploadObserver;Lcom/koushikdutta/async/DataSink;I)V
    .registers 4

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->d:Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iput-object p2, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    iput p3, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->a()V

    .line 58
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 8

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 35
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 36
    iget v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->a:I

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->d:Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iget-object v0, v0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->b:Lcom/koushikdutta/ion/ProgressCallback;

    iget v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->a:I

    int-to-long v2, v1

    iget v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->c:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/koushikdutta/ion/ProgressCallback;->a(JJ)V

    .line 38
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 63
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 43
    return-void
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->g()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->b:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->i()Z

    move-result v0

    return v0
.end method
