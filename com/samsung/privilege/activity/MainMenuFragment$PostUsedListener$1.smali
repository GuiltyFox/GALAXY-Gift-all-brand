.class Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 962
    iget v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_code:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_75

    .line 963
    const-string v1, ""

    .line 965
    .local v1, "error_message":Ljava/lang/String;
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 967
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v9, "PrivilegeMessage"

    invoke-static {v2, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 968
    .local v7, "privilegeMessage":Ljava/lang/String;
    const-string v9, "Serial"

    invoke-static {v2, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 970
    .local v8, "serial":Ljava/lang/String;
    const-string v9, "ExpireIn"

    invoke-static {v2, v9}, Lcom/samsung/privilege/util/JsonUtil;->getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 972
    .local v5, "longExpireIn":Ljava/lang/Long;
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v9, v9, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iput-object v7, v9, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 973
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v9, v9, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iput-object v8, v9, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 975
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v9, v9, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v9, v9, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iput-object v7, v9, Lcom/samsung/privilege/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    .line 976
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v9, v9, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v9, v9, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iput-object v8, v9, Lcom/samsung/privilege/bean/Purchasing;->Serial:Ljava/lang/String;

    .line 977
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v9, v9, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v9, v9, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    .line 979
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    iget-object v10, v10, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v10, v10, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v10, v10, Lcom/samsung/privilege/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->getPurchaseItem(Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v9, v10, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$2(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/Long;)V

    .line 980
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v9

    const/4 v10, 0x1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->getHistory(Z)V
    invoke-static {v9, v10}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$3(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_61} :catch_62

    .line 1030
    .end local v1    # "error_message":Ljava/lang/String;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "longExpireIn":Ljava/lang/Long;
    .end local v7    # "privilegeMessage":Ljava/lang/String;
    .end local v8    # "serial":Ljava/lang/String;
    :goto_61
    return-void

    .line 1009
    .restart local v1    # "error_message":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1011
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_61

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error_message":Ljava/lang/String;
    :cond_75
    const-string v6, ""

    .line 1016
    .local v6, "message":Ljava/lang/String;
    :try_start_77
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v4, "json_result":Lorg/json/JSONObject;
    const-string v9, "error"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1018
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v9, "message"

    invoke-static {v3, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_89} :catch_a2

    move-result-object v6

    .line 1023
    .end local v3    # "json_error":Lorg/json/JSONObject;
    .end local v4    # "json_result":Lorg/json/JSONObject;
    :goto_8a
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1024
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    .line 1027
    :cond_94
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_61

    .line 1019
    :catch_a2
    move-exception v0

    .line 1020
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_8a
.end method
