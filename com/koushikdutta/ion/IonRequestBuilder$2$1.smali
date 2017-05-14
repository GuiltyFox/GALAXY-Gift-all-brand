.class Lcom/koushikdutta/ion/IonRequestBuilder$2$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$2;->a(JJ)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/koushikdutta/ion/IonRequestBuilder$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$2;JJ)V
    .registers 6

    .prologue
    .line 332
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->c:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iput-wide p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->a:J

    iput-wide p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 335
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->c:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->c:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 338
    :cond_14
    :goto_14
    return-void

    .line 337
    :cond_15
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->c:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->A:Lcom/koushikdutta/ion/ProgressCallback;

    iget-wide v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->a:J

    iget-wide v4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->b:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/koushikdutta/ion/ProgressCallback;->a(JJ)V

    goto :goto_14
.end method
