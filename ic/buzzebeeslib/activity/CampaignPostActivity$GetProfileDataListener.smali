.class public Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "CampaignPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignPostActivity;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/CampaignPostActivity;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 354
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$0(Lic/buzzebeeslib/activity/CampaignPostActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response_text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 357
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$1(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_38
    return-void
.end method
