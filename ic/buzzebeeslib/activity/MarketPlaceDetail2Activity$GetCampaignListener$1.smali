.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V

    .line 649
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 650
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$6(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 651
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 652
    return-void
.end method
