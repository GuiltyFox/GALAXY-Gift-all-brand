.class Lcom/koushikdutta/async/http/body/JSONObjectBody$1;
.super Ljava/lang/Object;
.source "JSONObjectBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/JSONObjectBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/http/body/JSONObjectBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/JSONObjectBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->b:Lcom/koushikdutta/async/http/body/JSONObjectBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 26
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a(Ljava/lang/Exception;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->b:Lcom/koushikdutta/async/http/body/JSONObjectBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->b:Lorg/json/JSONObject;

    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 31
    return-void
.end method
