.class Lcom/koushikdutta/async/http/body/StringBody$1;
.super Ljava/lang/Object;
.source "StringBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/StringBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/http/body/StringBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/StringBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->b:Lcom/koushikdutta/async/http/body/StringBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 24
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/StringBody$1;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->b:Lcom/koushikdutta/async/http/body/StringBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 29
    return-void
.end method
