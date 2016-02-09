.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 426
    .local v0, "current":I
    add-int/lit8 v0, v0, 0x1

    .line 427
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(I)V

    .line 428
    return-void
.end method
