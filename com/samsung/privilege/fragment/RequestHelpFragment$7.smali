.class Lcom/samsung/privilege/fragment/RequestHelpFragment$7;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "RequestHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$7;[B)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 431
    if-eqz p3, :cond_48

    .line 432
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V

    .line 433
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z

    .line 434
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    .line 436
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 437
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/base/BaseFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 439
    :cond_48
    return-void
.end method

.method public a(JJ)V
    .registers 10

    .prologue
    .line 443
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(JJ)V

    .line 444
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 445
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 446
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    if-eqz v2, :cond_2a

    .line 447
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v2}, Lcom/rey/material/widget/ProgressView;->getProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    .line 448
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->b()V

    .line 453
    :cond_2a
    :goto_2a
    return-void

    .line 450
    :cond_2b
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    long-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    goto :goto_2a
.end method
