.class Lcom/koushikdutta/ion/IonRequestBuilder$5;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "IonRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
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

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/DataSink;

.field final synthetic m:Ljava/lang/Object;

.field final synthetic n:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/DataSink;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 581
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->n:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-boolean p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->b:Z

    iput-object p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->c:Lcom/koushikdutta/async/DataSink;

    iput-object p5, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->m:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 589
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .registers 5

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 593
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->t:Lcom/koushikdutta/async/DataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->c:Lcom/koushikdutta/async/DataSink;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$5;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 599
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 581
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$5;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->d()V

    .line 585
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->b:Z

    if-eqz v0, :cond_c

    .line 586
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->c:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->a()V

    .line 587
    :cond_c
    return-void
.end method
