.class Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    .line 2452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 2455
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    const-string v3, "<"

    const-string v6, "&lt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v6, "&gt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2457
    .local v26, "response_text_final":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_211

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 2462
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2463
    .local v22, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2464
    .local v11, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2465
    .local v13, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 2466
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 2467
    const-string v2, "ExpireIn"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v9

    .line 2469
    .local v9, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v3

    iget v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/samsung/privilege/UserLogin;->SetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v3

    iget v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lcom/samsung/privilege/UserLogin;->SetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$9(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_153

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d5} :catch_1b2

    move-result v2

    if-nez v2, :cond_153

    .line 2476
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ClipboardManager;

    .line 2477
    .local v18, "clipboard":Landroid/content/ClipboardManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    const-string v3, "Your discount code is already in clipboard."

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fe} :catch_32c

    .line 2484
    .end local v18    # "clipboard":Landroid/content/ClipboardManager;
    :goto_fe
    :try_start_fe
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2485
    .local v21, "intent":Landroid/content/Intent;
    const-string v2, "url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2486
    const-string v2, "serial"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2487
    const-string v2, "enable_webview_back"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2488
    const-string v2, "hide_serial"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2537
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v22    # "jsonRoot":Lorg/json/JSONObject;
    .end local v26    # "response_text_final":Ljava/lang/String;
    :cond_152
    :goto_152
    return-void

    .line 2491
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v22    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v26    # "response_text_final":Ljava/lang/String;
    :cond_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v6

    iget v6, v6, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v7}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v8}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v12

    iget-object v12, v12, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v14}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$10(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v15}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v15

    iget-object v15, v15, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_1b1} :catch_1b2

    goto :goto_152

    .line 2528
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v22    # "jsonRoot":Lorg/json/JSONObject;
    .end local v26    # "response_text_final":Ljava/lang/String;
    :catch_1b2
    move-exception v19

    .line 2529
    .local v19, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2532
    .local v25, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1fe

    .line 2533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2535
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_152

    .line 2496
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v25    # "message":Ljava/lang/String;
    .restart local v26    # "response_text_final":Ljava/lang/String;
    :cond_211
    :try_start_211
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2497
    .local v24, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 2498
    .local v23, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2499
    .local v20, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2500
    .restart local v25    # "message":Ljava/lang/String;
    if-eqz v20, :cond_30a

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    .line 2501
    const-string v2, "1411"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d5

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 2505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v3

    const v6, 0x7f0a0333

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_28e} :catch_290

    goto/16 :goto_152

    .line 2521
    .end local v20    # "id":Ljava/lang/String;
    .end local v23    # "json_error":Lorg/json/JSONObject;
    .end local v24    # "json_result":Lorg/json/JSONObject;
    .end local v25    # "message":Ljava/lang/String;
    :catch_290
    move-exception v19

    .line 2522
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2525
    .restart local v25    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2c0} :catch_1b2

    goto/16 :goto_152

    .line 2507
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v20    # "id":Ljava/lang/String;
    .restart local v23    # "json_error":Lorg/json/JSONObject;
    .restart local v24    # "json_result":Lorg/json/JSONObject;
    :cond_2c2
    :try_start_2c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_152

    .line 2512
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v3

    const v6, 0x7f0a0300

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v3

    move-object/from16 v0, v25

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->getLastRedeemCode(Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$11(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V

    goto/16 :goto_152

    .line 2517
    :cond_30a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_32a} :catch_290

    goto/16 :goto_152

    .line 2480
    .end local v20    # "id":Ljava/lang/String;
    .end local v23    # "json_error":Lorg/json/JSONObject;
    .end local v24    # "json_result":Lorg/json/JSONObject;
    .end local v25    # "message":Ljava/lang/String;
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v22    # "jsonRoot":Lorg/json/JSONObject;
    :catch_32c
    move-exception v2

    goto/16 :goto_fe
.end method
