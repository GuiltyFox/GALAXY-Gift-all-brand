.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$2(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    .line 261
    return-void
.end method
