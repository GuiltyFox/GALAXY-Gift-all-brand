.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/body/Part;

.field final synthetic b:Lcom/koushikdutta/async/DataSink;

.field final synthetic c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V
    .registers 4

    .prologue
    .line 151
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->b:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 9

    .prologue
    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->e()J

    move-result-wide v0

    .line 155
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    .line 156
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v3, v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    .line 157
    :cond_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->b:Lcom/koushikdutta/async/DataSink;

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/async/http/body/Part;->a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 158
    return-void
.end method
