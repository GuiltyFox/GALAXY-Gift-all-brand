.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;
.source "AsyncHttpClientMiddleware.java"


# instance fields
.field public a:Lcom/koushikdutta/async/callback/ConnectCallback;

.field public b:Lcom/koushikdutta/async/future/Cancellable;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;-><init>()V

    return-void
.end method
