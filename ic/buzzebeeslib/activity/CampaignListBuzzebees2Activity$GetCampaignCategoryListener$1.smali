.class Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "CampaignListBuzzebees2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    const-string v0, "category_platinum"

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 125
    return-void
.end method
