.class public Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "FriendsRankingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetFriendsListener"
.end annotation


# instance fields
.field private gIntSkip:I

.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V
    .registers 3
    .param p2, "pIntSkip"    # I

    .prologue
    .line 354
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 355
    iput p2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->gIntSkip:I

    .line 356
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->gIntSkip:I

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 360
    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetFriendsListener):response_code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",response_text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 362
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_41

    .line 364
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$7(Lcom/samsung/privilege/activity/FriendsRankingFragment;Z)V

    .line 394
    return-void

    .line 380
    :cond_41
    const-string v1, ""

    .line 382
    .local v1, "err_message":Ljava/lang/String;
    :try_start_43
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f09032c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_7d

    move-result-object v1

    .line 386
    :goto_50
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_77
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # invokes: Lcom/samsung/privilege/activity/FriendsRankingFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$6(Lcom/samsung/privilege/activity/FriendsRankingFragment;Ljava/lang/String;)V

    goto :goto_3a

    .line 383
    :catch_7d
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$5(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method
