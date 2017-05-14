.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Ljava/lang/Exception;)V

    .line 31
    return-void
.end method
