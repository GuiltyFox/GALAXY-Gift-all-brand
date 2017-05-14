.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/DataSink;

.field final synthetic c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 169
    const-class v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V
    .registers 3

    .prologue
    .line 169
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->b:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->b:Lcom/koushikdutta/async/DataSink;

    invoke-static {v1, v0, p2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 174
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    .line 176
    sget-boolean v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->a:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:I

    if-eq v0, v1, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_2b
    return-void
.end method
