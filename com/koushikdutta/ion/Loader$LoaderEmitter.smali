.class public Lcom/koushikdutta/ion/Loader$LoaderEmitter;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field a:Lcom/koushikdutta/async/DataEmitter;

.field b:J

.field c:Lcom/koushikdutta/ion/ResponseServedFrom;

.field d:Lcom/koushikdutta/ion/HeadersResponse;

.field e:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;JLcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 7

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p2, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->b:J

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->a:Lcom/koushikdutta/async/DataEmitter;

    .line 25
    iput-object p4, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->c:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 26
    iput-object p5, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->d:Lcom/koushikdutta/ion/HeadersResponse;

    .line 27
    iput-object p6, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/DataEmitter;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->a:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->b:J

    return-wide v0
.end method

.method public c()Lcom/koushikdutta/ion/ResponseServedFrom;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->c:Lcom/koushikdutta/ion/ResponseServedFrom;

    return-object v0
.end method

.method public d()Lcom/koushikdutta/ion/HeadersResponse;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->d:Lcom/koushikdutta/ion/HeadersResponse;

    return-object v0
.end method

.method public e()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method
