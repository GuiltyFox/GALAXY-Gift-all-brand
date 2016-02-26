.class Lcom/samsung/privilege/util/NfcUtils$1;
.super Ljava/lang/Object;
.source "NfcUtils.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$objActivityContext:Landroid/content/Context;

.field private final synthetic val$objHandler:Landroid/os/Handler;

.field private final synthetic val$objNFCTag:Lcom/samsung/privilege/bean/NFCTag;

.field private final synthetic val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    iput-object p4, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 15
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v11, 0x0

    .line 149
    if-eqz p2, :cond_1f

    .line 150
    instance-of v9, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v9, :cond_13

    .line 151
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    const-string v10, "feed cancelled"

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 208
    :cond_12
    :goto_12
    return-void

    .line 153
    :cond_13
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    const-string v10, "Network Error"

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 156
    :cond_1f
    const-string v6, ""

    .line 157
    .local v6, "post_id":Ljava/lang/String;
    if-eqz p1, :cond_31

    .line 158
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 159
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_f6

    .line 169
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_31
    # getter for: Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NfcUtils;->access$0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "post_id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz v6, :cond_12

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 173
    :try_start_51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "post_id"

    invoke-direct {v9, v10, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "access_token"

    iget-object v11, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "api/facebook/dialog/feed?token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "strUrl":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NfcUtils;->access$0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(call for point)post_id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v9, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objHandler:Landroid/os/Handler;

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v10, 0x0

    invoke-static {v8, v5, v9, v10}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_c8} :catch_114

    .line 183
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v8    # "strUrl":Ljava/lang/String;
    :goto_c8
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v9, :cond_12

    .line 184
    if-eqz v6, :cond_130

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_130

    .line 185
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "campaign_id"

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    iget v10, v10, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v9, "nfc_tag"

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 161
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "post_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 163
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2b

    .line 179
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_114
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NfcUtils;->access$0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Action_Share|Exception):"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_130
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v9, v9, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    if-eqz v9, :cond_166

    .line 191
    const-string v7, ""

    .line 193
    .local v7, "strNfc_require_share":Ljava/lang/String;
    :try_start_138
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    const v10, 0x7f0901bc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_140} :catch_14a

    move-result-object v7

    .line 197
    :goto_141
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/NfcUtils;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v9, v10, v7}, Lcom/samsung/privilege/util/NfcUtils;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 194
    :catch_14a
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NfcUtils;->access$0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "strNfc_require_share":Ljava/lang/String;
    :cond_166
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v9, "campaign_id"

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    iget v10, v10, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v9, "nfc_tag"

    iget-object v10, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-object v9, p0, Lcom/samsung/privilege/util/NfcUtils$1;->val$objActivityContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_12
.end method
