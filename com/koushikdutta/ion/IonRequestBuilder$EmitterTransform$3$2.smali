.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;I)V
    .registers 3

    .prologue
    .line 532
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    iput p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 535
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 538
    :cond_14
    :goto_14
    return-void

    .line 537
    :cond_15
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->q:Lcom/koushikdutta/ion/ProgressCallback;

    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->a:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    iget-wide v4, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/koushikdutta/ion/ProgressCallback;->a(JJ)V

    goto :goto_14
.end method
