.class Lcom/samsung/privilege/activity/FriendsRankingFragment$3;
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

.field private final synthetic val$count_item:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iput p2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->val$count_item:I

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 468
    iget v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->val$count_item:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_21

    .line 470
    :try_start_6
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->footerListView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$19(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 483
    :cond_15
    :goto_15
    return-void

    .line 471
    :catch_16
    move-exception v1

    .line 472
    .local v1, "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while gListAward.removeFooterView(footerListView);"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 476
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_15

    .line 477
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->footerListView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$19(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_3d

    goto :goto_15

    .line 479
    :catch_3d
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while gListAward.addFooterView(footerListView);"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method
