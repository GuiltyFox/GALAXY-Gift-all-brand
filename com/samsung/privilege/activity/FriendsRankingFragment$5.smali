.class Lcom/samsung/privilege/activity/FriendsRankingFragment$5;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment;->doInvite(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

.field private final synthetic val$tagInvite:Lcom/samsung/privilege/bean/TagInvite;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Lcom/samsung/privilege/bean/TagInvite;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->val$tagInvite:Lcom/samsung/privilege/bean/TagInvite;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 723
    if-eqz p2, :cond_3e

    .line 724
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2b

    .line 725
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "apprequests cancelled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 737
    :cond_2a
    :goto_2a
    return-void

    .line 727
    :cond_2b
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Network Error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 734
    :catch_3c
    move-exception v0

    goto :goto_2a

    .line 730
    :cond_3e
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->val$tagInvite:Lcom/samsung/privilege/bean/TagInvite;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    .line 731
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;->val$tagInvite:Lcom/samsung/privilege/bean/TagInvite;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagInvite;->layoutInvite:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_3c

    goto :goto_2a
.end method
