.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;
.super Landroid/os/CountDownTimer;
.source "CampaignDetailAdBuzzActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->countDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;JJ)V
    .registers 6
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    .line 444
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 453
    const-string v0, "campaign.adbuzz"

    const-string v1, "done!"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    return-void
.end method

.method public onTick(J)V
    .registers 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 448
    const-string v0, "campaign.adbuzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seconds remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method
