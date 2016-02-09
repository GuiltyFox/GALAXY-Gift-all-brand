.class Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;
.super Ljava/lang/Object;
.source "CampaignCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItem"
.end annotation


# instance fields
.field public campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/bean/CampaignCategoryDynamic;)V
    .registers 3
    .param p2, "campaignCategory"    # Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    .prologue
    .line 294
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    .line 296
    return-void
.end method
