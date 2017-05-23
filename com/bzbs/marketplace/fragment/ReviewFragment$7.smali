.class Lcom/bzbs/marketplace/fragment/ReviewFragment$7;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 463
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V

    .line 467
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->e(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z

    .line 468
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 469
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 470
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 475
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 476
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 478
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzebees()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 479
    const-string/jumbo v1, "comment"

    .line 480
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzebees()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->getPoints()I

    move-result v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v3, v3, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 482
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    if-eqz v0, :cond_74

    .line 483
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->l()V

    .line 485
    :cond_74
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 489
    if-eqz p3, :cond_3e

    .line 490
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V

    .line 491
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->e(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z

    .line 492
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 494
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 495
    if-eqz v0, :cond_3e

    .line 496
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/base/BaseFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 498
    :cond_3e
    return-void
.end method

.method public a(JJ)V
    .registers 10

    .prologue
    .line 502
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(JJ)V

    .line 503
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->r(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 504
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 505
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v2}, Lcom/rey/material/widget/ProgressView;->getProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    .line 506
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->b()V

    .line 511
    :cond_24
    :goto_24
    return-void

    .line 508
    :cond_25
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    long-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    goto :goto_24
.end method
