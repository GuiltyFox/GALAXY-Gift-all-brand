.class Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 855
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->ProcessJsonCampaignCategory(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$9(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    .line 857
    const-string v0, "campaign_category_all"

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 858
    return-void
.end method
