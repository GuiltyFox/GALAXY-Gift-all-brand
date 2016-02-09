.class Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)Lic/buzzebeeslib/activity/HelpCenterListActivity$7;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->loadMarketReview(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$32(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    .line 588
    return-void
.end method
