.class Lcom/samsung/privilege/activity/FriendsRankingFragment$4;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment;->ProcessJsonFriend(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

.field private final synthetic val$pFirstLoad:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->val$pFirstLoad:Z

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->val$pFirstLoad:Z

    if-eqz v0, :cond_4f

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    new-instance v1, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$20(Lcom/samsung/privilege/activity/FriendsRankingFragment;Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 492
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$21(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    :goto_43
    return-void

    .line 494
    :cond_44
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_43

    .line 497
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$21(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->notifyDataSetChanged()V

    goto :goto_43
.end method
