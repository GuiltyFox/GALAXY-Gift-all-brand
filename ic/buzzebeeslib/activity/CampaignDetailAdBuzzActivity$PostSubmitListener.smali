.class public Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailAdBuzzActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostSubmitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 2

    .prologue
    .line 1837
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    .registers 2

    .prologue
    .line 1837
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1841
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1842
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->onSuccess(ILjava/lang/String;)V

    .line 1843
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1847
    const-string v0, "campaign.adbuzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostSubmitListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1850
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1851
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1854
    :cond_37
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1978
    :cond_41
    return-void
.end method
