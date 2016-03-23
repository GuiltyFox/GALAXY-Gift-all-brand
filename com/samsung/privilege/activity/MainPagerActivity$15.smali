.class Lcom/samsung/privilege/activity/MainPagerActivity$15;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogPointTransferConfirm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$activityContext:Landroid/content/Context;

.field final synthetic val$dialogPoint:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->val$dialogPoint:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->val$activityContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 972
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/auth/transfer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transfer_no="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 979
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v3, "token"

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->val$activityContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string/jumbo v3, "isTransfer"

    const-string/jumbo v4, "false"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 983
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$15$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$15$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$15;)V

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 996
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 997
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkAndShowDialogMessagePopup()V

    .line 998
    return-void
.end method
