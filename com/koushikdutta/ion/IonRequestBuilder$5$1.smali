.class Lcom/koushikdutta/ion/IonRequestBuilder$5$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$5;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/IonRequestBuilder$5;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$5;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 596
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$5;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->n:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$5;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$5;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$5;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder$5;->m:Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 597
    return-void
.end method
