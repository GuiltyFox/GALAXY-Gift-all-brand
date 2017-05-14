.class Lcom/koushikdutta/ion/IonRequestBuilder$2;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

.field final synthetic c:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 315
    const-class v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 3

    .prologue
    .line 315
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 12

    .prologue
    .line 318
    sget-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->a:Z

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

    .line 320
    :cond_18
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 322
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->y:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2c

    .line 323
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    :cond_2c
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->z:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_39

    .line 326
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 328
    :cond_39
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->x:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_46

    .line 329
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->x:Lcom/koushikdutta/ion/ProgressCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/koushikdutta/ion/ProgressCallback;->a(JJ)V

    .line 331
    :cond_46
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->A:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_59

    .line 332
    sget-object v6, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$2;JJ)V

    invoke-static {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 341
    :cond_59
    return-void
.end method
