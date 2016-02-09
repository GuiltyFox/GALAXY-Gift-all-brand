.class Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    iput p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1612
    iget v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_code:I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4b

    .line 1614
    const-string v1, ""

    .line 1617
    .local v1, "error_message":Ljava/lang/String;
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "HasWinner"

    invoke-static {v2, v8}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1622
    const-string v8, "IsWinner"

    invoke-static {v2, v8}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1624
    const-string v8, "Serial"

    invoke-static {v2, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1625
    .local v6, "strSerial":Ljava/lang/String;
    const-string v8, "WinnerMessage"

    invoke-static {v2, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1627
    .local v7, "strWinnerMessage":Ljava/lang/String;
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v9}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogWinner(Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v8, v7, v6, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$29(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_36

    .line 1654
    .end local v1    # "error_message":Ljava/lang/String;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v6    # "strSerial":Ljava/lang/String;
    .end local v7    # "strWinnerMessage":Ljava/lang/String;
    :goto_35
    return-void

    .line 1629
    .restart local v1    # "error_message":Ljava/lang/String;
    :catch_36
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1631
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v9}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v8, v1, v10, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto :goto_35

    .line 1637
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error_message":Ljava/lang/String;
    :cond_4b
    const-string v5, ""

    .line 1640
    .local v5, "message":Ljava/lang/String;
    :try_start_4d
    new-instance v4, Lorg/json/JSONObject;

    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v4, "json_result":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1642
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-static {v3, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5f} :catch_7a

    move-result-object v5

    .line 1647
    .end local v3    # "json_error":Lorg/json/JSONObject;
    .end local v4    # "json_result":Lorg/json/JSONObject;
    :goto_60
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 1648
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    .line 1651
    :cond_6a
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v9}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v8, v5, v10, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto :goto_35

    .line 1643
    :catch_7a
    move-exception v8

    goto :goto_60
.end method
