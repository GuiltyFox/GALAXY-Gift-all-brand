.class Lcom/koushikdutta/ion/IonRequestBuilder$3;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

.field final synthetic b:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 3

    .prologue
    .line 353
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->b:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 5

    .prologue
    .line 356
    if-eqz p1, :cond_8

    .line 357
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Ljava/lang/Exception;)Z

    .line 362
    :goto_7
    return-void

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-object p2, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->p:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->b:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0, p2, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    goto :goto_7
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 353
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$3;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method
