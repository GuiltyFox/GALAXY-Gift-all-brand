.class Lcom/samsung/privilege/fragment/ReplyFragment$5;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ReplyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment;->onClickPost(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/ReplyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment$5;[B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 310
    if-eqz p3, :cond_3d

    .line 312
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->k(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->k(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->l(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 314
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 315
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/base/BaseFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 317
    :cond_3d
    return-void
.end method
