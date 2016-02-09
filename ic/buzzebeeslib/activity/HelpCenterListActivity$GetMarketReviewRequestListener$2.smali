.class Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$2;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$7(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->onRefreshComplete()V

    .line 797
    return-void
.end method
