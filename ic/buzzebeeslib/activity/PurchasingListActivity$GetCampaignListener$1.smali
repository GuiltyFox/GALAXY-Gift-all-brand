.class Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 623
    return-void
.end method
