.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;
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
    .line 143
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->a:Lcom/koushikdutta/async/http/body/Part;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->b:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->a:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->c()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->b:Lcom/koushikdutta/async/DataSink;

    invoke-static {v1, v0, p2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 148
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    .line 149
    return-void
.end method
