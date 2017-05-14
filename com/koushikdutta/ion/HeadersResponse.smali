.class public Lcom/koushikdutta/ion/HeadersResponse;
.super Ljava/lang/Object;
.source "HeadersResponse.java"


# instance fields
.field a:Lcom/koushikdutta/async/http/Headers;

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/koushikdutta/async/http/Headers;)V
    .registers 4

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/koushikdutta/ion/HeadersResponse;->a:Lcom/koushikdutta/async/http/Headers;

    .line 11
    iput p1, p0, Lcom/koushikdutta/ion/HeadersResponse;->b:I

    .line 12
    iput-object p2, p0, Lcom/koushikdutta/ion/HeadersResponse;->c:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/Headers;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/ion/HeadersResponse;->a:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method
