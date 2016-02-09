.class Lcom/samsung/privilege/activity/FriendsRankingFragment$1;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$1;)Lcom/samsung/privilege/activity/FriendsRankingFragment;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 14
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_60

    .line 153
    add-int v2, p2, p3

    .line 158
    .local v2, "lastInScreen":I
    if-ne v2, p4, :cond_31

    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z
    invoke-static {v6}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$4(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 160
    :try_start_21
    new-instance v3, Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$1$1;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$1;)V

    .line 166
    .local v3, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    const/4 v6, 0x0

    const-string v7, "MagentoBackground"

    invoke-direct {v4, v6, v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 167
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_61

    .line 174
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_31
    :goto_31
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iget-object v7, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$15(Lcom/samsung/privilege/activity/FriendsRankingFragment;Landroid/os/Parcelable;)V

    .line 176
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    iget-object v7, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$16(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V

    .line 178
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "itemView":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    if-nez v1, :cond_7d

    :goto_5d
    invoke-static {v6, v5}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$17(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V

    .line 181
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "lastInScreen":I
    :cond_60
    return-void

    .line 168
    .restart local v2    # "lastInScreen":I
    :catch_61
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error While Load More Campaign...:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 179
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_7d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_5d
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 144
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 149
    :goto_d
    return-void

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
