.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "CampaignDetailAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V
    .registers 3
    .param p2, "pUid"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 420
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 424
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/lang/String;

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

    .line 426
    const-string v1, "onComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " !isFinishing() "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_59

    .line 428
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_5c

    .line 429
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$4(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    :cond_59
    :goto_59
    return-void

    .line 426
    :cond_5a
    const/4 v0, 0x1

    goto :goto_34

    .line 447
    :cond_5c
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v1, "Can not load check address profile data."

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_59
.end method
