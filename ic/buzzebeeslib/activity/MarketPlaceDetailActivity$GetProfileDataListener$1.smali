.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 4225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 4229
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4230
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "ShippingFirstName"

    invoke-static {v3, v5}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4231
    .local v0, "ShippingFirstName":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lic/buzzebeeslib/LibUserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4232
    const-string v5, "ShippingLastName"

    invoke-static {v3, v5}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4233
    .local v1, "ShippingLastName":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lic/buzzebeeslib/LibUserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4234
    const-string v5, "Address"

    invoke-static {v3, v5}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4235
    .local v4, "strAddress":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lic/buzzebeeslib/LibUserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 4239
    .end local v0    # "ShippingFirstName":Ljava/lang/String;
    .end local v1    # "ShippingLastName":Ljava/lang/String;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "strAddress":Ljava/lang/String;
    :goto_40
    return-void

    .line 4236
    :catch_41
    move-exception v2

    .line 4237
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    const-string v6, "Error while load profile data."

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    goto :goto_40
.end method
