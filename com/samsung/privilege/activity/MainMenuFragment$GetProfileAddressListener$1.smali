.class Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    .line 3299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3302
    iget v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->val$response_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_36

    .line 3304
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3305
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "Address"

    invoke-static {v1, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3306
    .local v2, "strAddress":Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 3307
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_2b

    .line 3315
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "strAddress":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-void

    .line 3309
    :catch_2b
    move-exception v0

    .line 3310
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while load profile data."

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 3313
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can not load check address profile data."

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method
