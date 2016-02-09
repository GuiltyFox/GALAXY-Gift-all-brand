.class public Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;
.super Ljava/lang/Object;
.source "ListenerUtil.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/ListenerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookDialogListener"
.end annotation


# instance fields
.field gActivityContext:Landroid/content/Context;

.field gHandler:Landroid/os/Handler;

.field gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

.field gObjNFCTagShare:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 5
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;
    .param p3, "objNFCTagShare"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p4, "objNFCTagReDeem"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagShare:Lcom/samsung/privilege/bean/NFCTag;

    .line 64
    iput-object p4, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    .line 65
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const-string v9, "ListenerUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(FacebookDialogListener|onComplete)values:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v6, ""

    .line 72
    .local v6, "post_id":Ljava/lang/String;
    if-eqz p1, :cond_2a

    .line 73
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 74
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_de

    .line 84
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2a
    const-string v9, "ListenerUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "post_id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v6, :cond_b1

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "post_id"

    invoke-direct {v9, v10, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "access_token"

    iget-object v11, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "api/facebook/dialog/feed?token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "strUrl":Ljava/lang/String;
    const-string v9, "ListenerUtil"

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

    .line 92
    new-instance v9, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v10, 0x0

    invoke-static {v8, v5, v9, v10}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 95
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v8    # "strUrl":Ljava/lang/String;
    :cond_b1
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v9, :cond_dd

    .line 108
    if-eqz v6, :cond_fc

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fc

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "campaign_id"

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    iget v10, v10, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v9, "nfc_tag"

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_dd
    :goto_dd
    return-void

    .line 76
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_de
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "post_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 78
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_24

    .line 114
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_fc
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagShare:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v9, v9, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    if-eqz v9, :cond_131

    .line 115
    const-string v7, ""

    .line 117
    .local v7, "strNfc_require_share":Ljava/lang/String;
    :try_start_104
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    const v10, 0x7f0a01bd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10c} :catch_115

    move-result-object v7

    .line 121
    :goto_10d
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v9, v10, v7}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_dd

    .line 118
    :catch_115
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ListenerUtil;->access$0()Ljava/lang/String;

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

    goto :goto_10d

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "strNfc_require_share":Ljava/lang/String;
    :cond_131
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v9, "campaign_id"

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    iget v10, v10, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v9, "nfc_tag"

    iget-object v10, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gObjNFCTagReDeem:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    iget-object v9, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_dd
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .registers 8
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_27

    move-result v2

    if-eqz v2, :cond_a

    .line 156
    const/4 v0, 0x1

    .line 161
    :cond_a
    :goto_a
    if-eqz v0, :cond_26

    .line 162
    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 166
    :cond_26
    return-void

    .line 158
    :catch_27
    move-exception v1

    .line 159
    .local v1, "e2":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ListenerUtil;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .registers 8
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_27

    move-result v2

    if-eqz v2, :cond_a

    .line 138
    const/4 v0, 0x1

    .line 143
    :cond_a
    :goto_a
    if-eqz v0, :cond_26

    .line 144
    iget-object v2, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/ListenerUtil;->access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 149
    :cond_26
    return-void

    .line 140
    :catch_27
    move-exception v1

    .line 141
    .local v1, "e2":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ListenerUtil;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
