.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 1000
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

    .line 1003
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1004
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1005
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoader(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$25(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    .line 1009
    :goto_3a
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showDialog(I)V

    .line 1010
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1011
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$23(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1016
    :goto_51
    return-void

    .line 1007
    :cond_52
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v1, ""

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoader(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$25(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_3a

    .line 1013
    :cond_5a
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_51
.end method
