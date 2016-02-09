.class Lcom/samsung/privilege/activity/FriendsFragment$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/FriendsFragment$1;)Lcom/samsung/privilege/activity/FriendsFragment;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 12
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 141
    iget-object v4, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/FriendsFragment;->access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 142
    add-int v1, p2, p3

    .line 147
    .local v1, "lastInScreen":I
    if-ne v1, p4, :cond_30

    iget-object v4, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z
    invoke-static {v4}, Lcom/samsung/privilege/activity/FriendsFragment;->access$3(Lcom/samsung/privilege/activity/FriendsFragment;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 149
    :try_start_20
    new-instance v2, Lcom/samsung/privilege/activity/FriendsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/FriendsFragment$1$1;-><init>(Lcom/samsung/privilege/activity/FriendsFragment$1;)V

    .line 155
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MagentoBackground"

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 156
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    .line 170
    .end local v1    # "lastInScreen":I
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_30
    :goto_30
    return-void

    .line 157
    .restart local v1    # "lastInScreen":I
    :catch_31
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsFragment;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error While Load More Campaign...:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 133
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 138
    :goto_d
    return-void

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
