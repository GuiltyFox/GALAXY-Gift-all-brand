.class Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "RequestHelpPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 195
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "ShippingFirstName"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "ShippingFirstName":Ljava/lang/String;
    const-string v5, "ShippingLastName"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "ShippingLastName":Ljava/lang/String;
    const-string v5, "Address"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "strAddress":Ljava/lang/String;
    if-eqz v4, :cond_4a

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 202
    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 203
    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 209
    .end local v0    # "ShippingFirstName":Ljava/lang/String;
    .end local v1    # "ShippingLastName":Ljava/lang/String;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "strAddress":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 206
    :catch_4b
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    move-result-object v5

    const-string v6, "Error while load profile data."

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    goto :goto_4a
.end method
