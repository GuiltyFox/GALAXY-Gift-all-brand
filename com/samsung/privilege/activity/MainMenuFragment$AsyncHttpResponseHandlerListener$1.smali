.class Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->val$response:Ljava/lang/String;

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1326
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Token"

    invoke-static {v2, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1330
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearCatchFile(Landroid/content/Context;)V

    .line 1332
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.restartActivity();"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1335
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1336
    .local v0, "activity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->restartActivity()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_5f

    .line 1345
    .end local v0    # "activity":Lcom/samsung/privilege/activity/CampaignListActivity;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_52
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_5e

    .line 1348
    :cond_5e
    return-void

    .line 1337
    :catch_5f
    move-exception v1

    .line 1338
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto :goto_52
.end method
