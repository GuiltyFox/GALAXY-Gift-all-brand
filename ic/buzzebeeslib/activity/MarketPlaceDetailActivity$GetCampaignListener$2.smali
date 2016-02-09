.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 948
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$9(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 949
    return-void
.end method
