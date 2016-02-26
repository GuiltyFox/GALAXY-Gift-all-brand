.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->val$response_text:Ljava/lang/String;

    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1524
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->val$response_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2c

    .line 1525
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1526
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogSentByPost()V
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$11(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 1546
    :goto_21
    return-void

    .line 1528
    :cond_22
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogDealsGet()V
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$12(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    goto :goto_21

    .line 1531
    :cond_2c
    const-string v2, ""

    .line 1533
    .local v2, "message":Ljava/lang/String;
    :try_start_2e
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v1, "json_result":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1535
    .local v0, "json_error":Lorg/json/JSONObject;
    const-string v3, "message"

    invoke-static {v0, v3}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_56

    move-result-object v2

    .line 1540
    .end local v0    # "json_error":Lorg/json/JSONObject;
    .end local v1    # "json_result":Lorg/json/JSONObject;
    :goto_41
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1541
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->val$response_text:Ljava/lang/String;

    .line 1544
    :cond_4b
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V

    goto :goto_21

    .line 1536
    :catch_56
    move-exception v3

    goto :goto_41
.end method
