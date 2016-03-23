.class Lcom/samsung/privilege/activity/CampaignSearchActivity$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignSearchActivity;->doSearch(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignSearchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignSearchActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 94
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignSearchActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->access$000(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(doSearch|onFailure)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    const-string/jumbo v2, "Search Campaign Fail!!!"

    # invokes: Lcom/samsung/privilege/activity/CampaignSearchActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->access$200(Lcom/samsung/privilege/activity/CampaignSearchActivity;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignSearchActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->access$100(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 84
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignSearchActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->access$000(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(doSearch|onComplete)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignSearchActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->access$100(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    return-void
.end method
