.class Lcom/koushikdutta/ion/IonRequestBuilder$6;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "IonRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/koushikdutta/async/parser/AsyncParser;

.field final synthetic c:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .registers 4

    .prologue
    .line 625
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->b:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 626
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .registers 4

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 630
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->b:Lcom/koushikdutta/async/parser/AsyncParser;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->t:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/parser/AsyncParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$6;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 636
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 625
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method
