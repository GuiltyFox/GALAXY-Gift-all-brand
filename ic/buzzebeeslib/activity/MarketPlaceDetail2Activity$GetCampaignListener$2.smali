.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 663
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->pbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$9(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 664
    return-void
.end method
