.class Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SampleDialogListener"
.end annotation


# instance fields
.field private gTagInvite:Lcom/samsung/privilege/bean/TagInvite;

.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment;Lcom/samsung/privilege/bean/TagInvite;)V
    .registers 3
    .param p2, "tagInvite"    # Lcom/samsung/privilege/bean/TagInvite;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->gTagInvite:Lcom/samsung/privilege/bean/TagInvite;

    .line 645
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 686
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->gTagInvite:Lcom/samsung/privilege/bean/TagInvite;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    .line 650
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->gTagInvite:Lcom/samsung/privilege/bean/TagInvite;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagInvite;->layoutInvite:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 651
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .registers 7
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_29

    move-result v2

    if-eqz v2, :cond_e

    .line 673
    const/4 v0, 0x1

    .line 678
    :cond_e
    :goto_e
    if-eqz v0, :cond_28

    .line 679
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/FriendsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->access$7(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V

    .line 681
    :cond_28
    return-void

    .line 675
    :catch_29
    move-exception v1

    .line 676
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$6(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .registers 7
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_29

    move-result v2

    if-eqz v2, :cond_e

    .line 658
    const/4 v0, 0x1

    .line 663
    :cond_e
    :goto_e
    if-eqz v0, :cond_28

    .line 664
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/FriendsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->access$7(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V

    .line 666
    :cond_28
    return-void

    .line 660
    :catch_29
    move-exception v1

    .line 661
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$6(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method
