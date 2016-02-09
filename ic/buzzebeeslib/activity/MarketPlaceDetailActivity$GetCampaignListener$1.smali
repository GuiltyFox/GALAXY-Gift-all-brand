.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 907
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 908
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 909
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 910
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$6(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 911
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->loadGallery()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 912
    return-void
.end method
