.class Lic/buzzebeeslib/activity/HelpCenterListActivity$7;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

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
    .line 572
    add-int v1, p2, p3

    .line 573
    .local v1, "lastInScreen":I
    if-ne v1, p4, :cond_24

    .line 575
    :try_start_4
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$29(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gIsHaveMoreData:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$30(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 576
    new-instance v2, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)V

    .line 590
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MagentoBackground"

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 591
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 598
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_24
    :goto_24
    return-void

    .line 593
    :catch_25
    move-exception v0

    .line 594
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "buzzebees.MarketReview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error While Load More Wall Stream...:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 569
    return-void
.end method
