.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field a:I

.field final synthetic c:J

.field final synthetic d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 494
    const-class v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;J)V
    .registers 4

    .prologue
    .line 494
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-wide p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 8

    .prologue
    .line 498
    sget-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->b:Z

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 500
    :cond_18
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference;->a()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_34

    .line 502
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->o:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "context has died, cancelling"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->c()Z

    .line 541
    :cond_33
    :goto_33
    return-void

    .line 507
    :cond_34
    int-to-float v0, p1

    iget-wide v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->c:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 509
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->n:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->o:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5b

    :cond_4d
    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->a:I

    if-eq v0, v1, :cond_5b

    .line 510
    sget-object v1, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;I)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 526
    :cond_5b
    iput v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->a:I

    .line 528
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->p:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_71

    .line 529
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->p:Lcom/koushikdutta/ion/ProgressCallback;

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/koushikdutta/ion/ProgressCallback;->a(JJ)V

    .line 531
    :cond_71
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->d:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->q:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_33

    .line 532
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;I)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_33
.end method
