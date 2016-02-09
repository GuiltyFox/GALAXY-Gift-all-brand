.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    .line 4262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 4265
    iget v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_39

    .line 4267
    const-string v1, ""

    .line 4270
    .local v1, "error_message":Ljava/lang/String;
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4274
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "HasWinner"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4275
    const-string v7, "IsWinner"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4276
    const-string v7, "WinnerMessage"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4278
    .local v6, "strWinnerMessage":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogWinner(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$25(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    .line 4305
    .end local v1    # "error_message":Ljava/lang/String;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v6    # "strWinnerMessage":Ljava/lang/String;
    :goto_29
    return-void

    .line 4280
    .restart local v1    # "error_message":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 4281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 4282
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v7, v1, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_29

    .line 4288
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error_message":Ljava/lang/String;
    :cond_39
    const-string v5, ""

    .line 4291
    .local v5, "message":Ljava/lang/String;
    :try_start_3b
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4292
    .local v4, "json_result":Lorg/json/JSONObject;
    const-string v7, "error"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 4293
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v7, "message"

    invoke-static {v3, v7}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4d} :catch_62

    move-result-object v5

    .line 4298
    .end local v3    # "json_error":Lorg/json/JSONObject;
    .end local v4    # "json_result":Lorg/json/JSONObject;
    :goto_4e
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 4299
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->val$response_text:Ljava/lang/String;

    .line 4302
    :cond_58
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v7, v5, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_29

    .line 4294
    :catch_62
    move-exception v7

    goto :goto_4e
.end method
