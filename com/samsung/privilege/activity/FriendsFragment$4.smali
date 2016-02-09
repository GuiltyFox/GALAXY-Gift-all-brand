.class Lcom/samsung/privilege/activity/FriendsFragment$4;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsFragment;->ProcessJsonFriend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$15(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    move-result-object v0

    if-nez v0, :cond_53

    .line 411
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    new-instance v1, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/FriendsFragment;->access$16(Lcom/samsung/privilege/activity/FriendsFragment;Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V

    .line 412
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 413
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$13(Lcom/samsung/privilege/activity/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsFragment;->access$15(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    :goto_47
    return-void

    .line 415
    :cond_48
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$13(Lcom/samsung/privilege/activity/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_47

    .line 418
    :cond_53
    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gAdapter.notifyDataSetChanged();"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gFriends.size()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$15(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->notifyDataSetChanged()V

    goto :goto_47
.end method
