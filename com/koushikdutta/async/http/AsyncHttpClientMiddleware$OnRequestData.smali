.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# instance fields
.field public i:Lcom/koushikdutta/async/util/UntypedHashtable;

.field public j:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/UntypedHashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    return-void
.end method
