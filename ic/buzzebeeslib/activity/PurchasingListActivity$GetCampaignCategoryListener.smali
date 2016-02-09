.class Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignCategoryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 2

    .prologue
    .line 846
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;)V
    .registers 3

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 850
    const-string v0, "buzzebees.markets"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(GetCampaignCategoryListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_34

    .line 852
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_34

    .line 853
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 862
    :cond_34
    return-void
.end method
