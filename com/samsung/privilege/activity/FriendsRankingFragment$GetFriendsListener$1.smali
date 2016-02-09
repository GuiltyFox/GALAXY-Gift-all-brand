.class Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->val$response_text:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->gIntSkip:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)I

    move-result v0

    if-nez v0, :cond_48

    .line 368
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$2(Lcom/samsung/privilege/activity/FriendsRankingFragment;Ljava/util/ArrayList;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/FriendsRankingFragment;->ProcessJsonFriend(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$3(Lcom/samsung/privilege/activity/FriendsRankingFragment;ZLjava/lang/String;)V

    .line 374
    :goto_22
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$4(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->gIntSkip:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)I

    move-result v0

    if-nez v0, :cond_47

    .line 375
    const-string v0, "catch_friend_bzbs"

    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 377
    :cond_47
    return-void

    .line 371
    :cond_48
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;->access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/FriendsRankingFragment;->ProcessJsonFriend(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$3(Lcom/samsung/privilege/activity/FriendsRankingFragment;ZLjava/lang/String;)V

    goto :goto_22
.end method
