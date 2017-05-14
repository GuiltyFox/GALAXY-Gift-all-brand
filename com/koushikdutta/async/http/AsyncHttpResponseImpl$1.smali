.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method
