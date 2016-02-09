.class Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    iput p2, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 755
    iget v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->val$response_code:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_177

    .line 757
    :try_start_6
    new-instance v8, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 758
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    const-string v10, "Address"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 759
    .local v9, "strAddress":Ljava/lang/String;
    if-eqz v9, :cond_2a

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 760
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 762
    :cond_2a
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ShippingFirstName"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 763
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ShippingLastName"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 764
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Gender"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetGender(Landroid/content/Context;Ljava/lang/String;)Z

    .line 765
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Address"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 766
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "BirthDate"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetBirthday(Landroid/content/Context;Ljava/lang/String;)Z

    .line 768
    const-string v10, "ShippingFirstName"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "FirstName":Ljava/lang/String;
    const-string v10, "ShippingLastName"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "LastName":Ljava/lang/String;
    const-string v10, "Gender"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "Gender":Ljava/lang/String;
    const-string v10, "Address"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "Address":Ljava/lang/String;
    const-string v10, "BirthDate"

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "BirthDate":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Locale"

    invoke-static {v8, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 776
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "campaign_id"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 777
    .local v5, "campaign_id":I
    if-lez v5, :cond_df

    .line 778
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    # invokes: Lcom/samsung/privilege/MainActivity;->gotoCampaignDetail(I)V
    invoke-static {v10, v5}, Lcom/samsung/privilege/MainActivity;->access$7(Lcom/samsung/privilege/MainActivity;I)V

    .line 798
    .end local v0    # "Address":Ljava/lang/String;
    .end local v1    # "BirthDate":Ljava/lang/String;
    .end local v2    # "FirstName":Ljava/lang/String;
    .end local v3    # "Gender":Ljava/lang/String;
    .end local v4    # "LastName":Ljava/lang/String;
    .end local v5    # "campaign_id":I
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "strAddress":Ljava/lang/String;
    :goto_de
    return-void

    .line 780
    .restart local v0    # "Address":Ljava/lang/String;
    .restart local v1    # "BirthDate":Ljava/lang/String;
    .restart local v2    # "FirstName":Ljava/lang/String;
    .restart local v3    # "Gender":Ljava/lang/String;
    .restart local v4    # "LastName":Ljava/lang/String;
    .restart local v5    # "campaign_id":I
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v9    # "strAddress":Ljava/lang/String;
    :cond_df
    if-eqz v2, :cond_e9

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    :cond_e9
    if-eqz v4, :cond_f3

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    :cond_f3
    if-eqz v1, :cond_fd

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    :cond_fd
    if-eqz v3, :cond_14c

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14c

    .line 781
    :cond_107
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v7, "intent":Landroid/content/Intent;
    const-string v10, "msg_newbie"

    iget-object v11, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v11}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v11

    # getter for: Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/privilege/MainActivity;->access$8(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 784
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->finish()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13a} :catch_13b

    goto :goto_de

    .line 792
    .end local v0    # "Address":Ljava/lang/String;
    .end local v1    # "BirthDate":Ljava/lang/String;
    .end local v2    # "FirstName":Ljava/lang/String;
    .end local v3    # "Gender":Ljava/lang/String;
    .end local v4    # "LastName":Ljava/lang/String;
    .end local v5    # "campaign_id":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "strAddress":Ljava/lang/String;
    :catch_13b
    move-exception v6

    .line 793
    .local v6, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error while load profile data."

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    .line 786
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "Address":Ljava/lang/String;
    .restart local v1    # "BirthDate":Ljava/lang/String;
    .restart local v2    # "FirstName":Ljava/lang/String;
    .restart local v3    # "Gender":Ljava/lang/String;
    .restart local v4    # "LastName":Ljava/lang/String;
    .restart local v5    # "campaign_id":I
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v9    # "strAddress":Ljava/lang/String;
    :cond_14c
    :try_start_14c
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/samsung/privilege/activity/RegisterActivity;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v10, "msg_newbie"

    iget-object v11, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v11}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v11

    # getter for: Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/privilege/MainActivity;->access$8(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_175} :catch_13b

    goto/16 :goto_de

    .line 796
    .end local v0    # "Address":Ljava/lang/String;
    .end local v1    # "BirthDate":Ljava/lang/String;
    .end local v2    # "FirstName":Ljava/lang/String;
    .end local v3    # "Gender":Ljava/lang/String;
    .end local v4    # "LastName":Ljava/lang/String;
    .end local v5    # "campaign_id":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "strAddress":Ljava/lang/String;
    :cond_177
    iget-object v10, p0, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;->access$0(Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v10

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Can not load check address profile data."

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_de
.end method
