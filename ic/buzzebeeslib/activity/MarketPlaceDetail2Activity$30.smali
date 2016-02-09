.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 3862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 3865
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$71(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3866
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3867
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoader(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$74(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    .line 3871
    :goto_3a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialog(I)V

    .line 3872
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3873
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$65(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3878
    :goto_51
    return-void

    .line 3869
    :cond_52
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v1, ""

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoader(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$74(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_3a

    .line 3875
    :cond_5a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_51
.end method
