.class Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "CampaignCategoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->processJsonCategory(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->access$1(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Ljava/lang/String;)V

    .line 209
    const-string v0, "category_platinum"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 210
    return-void
.end method
