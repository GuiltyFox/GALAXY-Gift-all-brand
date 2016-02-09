.class Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$1;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$1;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$1;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$1;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$1;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$12(Lcom/samsung/privilege/activity/FriendsRankingFragment;)I

    move-result v1

    # invokes: Lcom/samsung/privilege/activity/FriendsRankingFragment;->getFriends(I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$13(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V

    .line 164
    return-void
.end method
